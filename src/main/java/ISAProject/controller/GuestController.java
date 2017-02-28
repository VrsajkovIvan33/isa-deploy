package ISAProject.controller;

import ISAProject.model.Message;
import ISAProject.model.Restaurant;
import ISAProject.model.users.Guest;
import ISAProject.service.GuestService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.messaging.handler.annotation.DestinationVariable;
import org.springframework.messaging.handler.annotation.MessageMapping;
import org.springframework.messaging.handler.annotation.SendTo;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by Nole on 2/15/2017.
 */

@RestController
public class GuestController {

    @Autowired
    private GuestService guestService;

    @RequestMapping(value = "/getFriends/{id}", method = RequestMethod.GET)
    public ResponseEntity<List<Guest>> getFriends(@PathVariable("id") Long id){
        Guest guest = guestService.findOne(id);
        List<Guest> ret = guest.getFriendList();
        return new ResponseEntity<List<Guest>>(ret, HttpStatus.OK);
    }

    @MessageMapping("/searchFriends/{id}")
    @SendTo("/topic/searchFriends/{id}")
    public List<Guest> searchFriends(@DestinationVariable Long id, Message person){
        Guest user = guestService.findOne(id);
        List<Guest> friends = new ArrayList<Guest>();
        String[] splitNameSurname = person.getMessage().split(" ");
        if(splitNameSurname.length != 2){
            for (String nameSurname : splitNameSurname){
                for(Guest friend : user.getFriendList()){
                    if(friend.getName().equals(nameSurname) || friend.getSurname().equals(nameSurname))
                        friends.add(friend);
                }
            }
        }else{
            for(Guest friend : user.getFriendList()){
                if((friend.getName().equals(splitNameSurname[0]) && friend.getSurname().equals(splitNameSurname[1])) || (friend.getName().equals(splitNameSurname[1]) && friend.getSurname().equals(splitNameSurname[0]))){
                    friends.add(friend);
                }
            }
        }

        return friends;
    }

    @MessageMapping("/searchPersons/{id}")
    @SendTo("/topic/persons/{id}")
    public List<Guest> searchPersons(@DestinationVariable Long id, Message person){
        List<Guest> guestList = new ArrayList<Guest>();
        Guest user = guestService.findOne(id);
        String[] splitNameSurname = person.getMessage().split(" ");
        if(splitNameSurname.length != 2){
            for(String nameSurname : splitNameSurname){
                ArrayList<Guest> personsByName = (ArrayList<Guest>) guestService.findByName(nameSurname);
                ArrayList<Guest> personsBySurname = (ArrayList<Guest>) guestService.findBySurname(nameSurname);
                for(Guest guest : personsByName){
                    if(!user.getFriendList().contains(guest) && !user.getSentList().contains(guest) && !user.getPendingList().contains(guest) && !guestList.contains(guest) && (user.getId() != guest.getId()))
                        guestList.add(guest);
                }
                for(Guest guest : personsBySurname){
                    if(!user.getFriendList().contains(guest) && !user.getSentList().contains(guest) && !user.getPendingList().contains(guest) && !guestList.contains(guest) && (user.getId() != guest.getId()))
                        guestList.add(guest);
                }
            }
        }else{
            ArrayList<Guest> personsByNameAndSurname = (ArrayList<Guest>) guestService.findByNameAndSurname(splitNameSurname[0], splitNameSurname[1]);
            ArrayList<Guest> personsBySurnameAndName = (ArrayList<Guest>) guestService.findByNameAndSurname(splitNameSurname[1], splitNameSurname[0]);
            for(Guest guest : personsByNameAndSurname){
                if(!user.getFriendList().contains(guest) && !user.getSentList().contains(guest) && !user.getPendingList().contains(guest) && !guestList.contains(guest) && (user.getId() != guest.getId()))
                    guestList.add(guest);
            }
            for(Guest guest : personsBySurnameAndName){
                if(!user.getFriendList().contains(guest) && !user.getSentList().contains(guest) && !user.getPendingList().contains(guest) && !guestList.contains(guest) && (user.getId() != guest.getId()))
                    guestList.add(guest);
            }
        }

        return guestList;
    }

    @MessageMapping("/addFriend/{id}/{friendId}")
    @SendTo("/topic/friendRequest/{friendId}")
    public int addFriend(@DestinationVariable Long id, @DestinationVariable Long friendId){
        Guest user = guestService.findOne(id);
        Guest friend = guestService.findOne(friendId);
        user.getSentList().add(friend);
        friend.getPendingList().add(user);
        guestService.save((Guest)user);
        guestService.save((Guest)friend);

        return friend.getPendingList().size();
    }

    @MessageMapping("/acceptFriendRequest/{friendId}/{id}")
    @SendTo("/topic/friendAcceptedRequest/{id}")
    public Guest acceptFriendRequest(@DestinationVariable Long friendId, @DestinationVariable Long id){
        Guest user = guestService.findOne(id);
        Guest friend = guestService.findOne(friendId);

        user.getSentList().remove(friend);
        user.getFriendList().add(friend);
        friend.getPendingList().remove(user);
        friend.getFriendList().add(user);
        guestService.save((Guest)user);
        guestService.save((Guest)friend);

        return friend;
    }

    @MessageMapping("/deleteFriend/{id}/{friendId}")
    @SendTo("/topic/deleteFriend/{friendId}")
    public Guest deleteFriend(@DestinationVariable Long id, @DestinationVariable Long friendId){
        Guest user = guestService.findOne(id);
        Guest friend = guestService.findOne(friendId);

        user.getFriendList().remove(friend);
        friend.getFriendList().remove(user);
        guestService.save(user);
        guestService.save(friend);

        return user;
    }

    @RequestMapping(value = "/ignoreFriendRequest/{friendId}/{id}")
    public ResponseEntity<Long> ignoreFriendRequest(@PathVariable("friendId") Long friendId, @PathVariable("id") Long id){
        Guest user = guestService.findOne(id);
        Guest friend = guestService.findOne(friendId);

        user.getSentList().remove(friend);
        friend.getPendingList().remove(user);
        guestService.save((Guest)user);
        guestService.save((Guest)friend);

        return new ResponseEntity<Long>(user.getId(), HttpStatus.OK);
    }

    @RequestMapping(value = "/getFriendRequestsNumber/{id}", method = RequestMethod.GET)
    public ResponseEntity<Integer> getFriendRequestsNumber(@PathVariable("id") Long id){
        Guest user = guestService.findOne(id);
        return new ResponseEntity<Integer>(user.getPendingList().size(), HttpStatus.OK);
    }

    @RequestMapping(value = "/getFriendRequests/{id}", method = RequestMethod.GET)
    public ResponseEntity<List<Guest>> getFriendRequests(@PathVariable("id") Long id){
        Guest user = guestService.findOne(id);
        List<Guest> friendRequests = user.getPendingList();
        return new ResponseEntity<List<Guest>>(friendRequests, HttpStatus.OK);
    }
}

/**
 * Created by Nole on 2/17/2017.
 */

angular.module('restaurantApp.GuestFriendRequestsFactory', [])
       .factory('GuestFriendRequestsFactory', function ($http) {
           var factory = [];

           factory.getFriendRequestsNumber = function(id){
               return $http.get('/getFriendRequestsNumber/' + id, {"id":id});
           }

           factory.getFriendRequests = function(id){
               return $http.get('/getFriendRequests/' + id, {"id" : id});
           }

           factory.ignoreFriendRequest = function(friendId, id){
                return $http.get('/ignoreFriendRequest/' + friendId + '/' + id, {"friendId" : friendId, "id" : id});
           }

           return factory;
       });
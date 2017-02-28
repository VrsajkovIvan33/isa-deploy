package ISAProject.service;

import ISAProject.model.Restaurant;
import ISAProject.model.users.Waiter;

import java.util.List;

/**
 * Created by Nole on 11/26/2016.
 */
public interface WaiterService {

    List<Waiter> findAll();

    Waiter findOne(Long id);

    List<Waiter> findByRestaurant(Restaurant restaurant);

    Waiter save(Waiter waiter);

    Waiter delete(Long id);

}

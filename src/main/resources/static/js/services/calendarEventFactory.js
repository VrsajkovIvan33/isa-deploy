/**
 * Created by Verpsychoff on 2/17/2017.
 */

angular.module('restaurantApp.CalendarEventFactory',[])
    .factory('CalendarEventFactory', function ($http) {

        var factory = {};

        factory.getEventsByRestaurant = function(restaurant) {
            return $http.get('/CalendarEventsByRestaurant/' + restaurant.id);
        }

        factory.getEventsByUser = function(user) {
            return $http.get('/CalendarEventsByUser/' + user.id);
        }

        factory.getEventByUserAndShift = function(user) {
            return $http.get('/CalendarEventsByUserAndShift/' + user.id);
        }

        factory.addCalendarEvent = function(unprocessedEvent) {
            return $http.post('/CalendarEvents', unprocessedEvent);
        }

        factory.removeCalendarEvent = function(id) {
            return $http.delete('/CalendarEvents/' + id);
        }

        return factory;

    });
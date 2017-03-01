INSERT INTO restaurantuser (id, uname, surname, password, email, utype, version) VALUES (1, 'Boris', 'Janjic', 'boki', 'cmd3395@yahoo.com', 'GUEST', 0);
INSERT INTO guest(active, id) VALUES (true , (SELECT id FROM restaurantuser WHERE email='cmd3395@yahoo.com' AND password='boki'));

INSERT INTO restaurantuser (id, uname, surname, password, email, utype, version) VALUES (2, 'Marko', 'Markovic', 'marko', 'novicasarenac@gmail.com', 'GUEST', 0);
INSERT INTO guest(active, id) VALUES (true , (SELECT id FROM restaurantuser WHERE email='novicasarenac@gmail.com' AND password='marko'));

INSERT INTO restaurantuser(id, uname, surname, password, email, utype, version) VALUES (3, 'Marko', 'Jankovic', 'janko', 'janko@yahoo.com', 'GUEST', 0);
INSERT INTO guest(active, id) VALUES (true , (SELECT id FROM restaurantuser WHERE email='janko@yahoo.com' AND password='janko'));

INSERT INTO restaurantuser(id, uname, surname, password, email, utype, version) VALUES (4, 'Dejan', 'Jankovic', 'dejan', 'dejan@yahoo.com', 'GUEST', 0);
INSERT INTO guest(active, id) VALUES (true , (SELECT id FROM restaurantuser WHERE email='dejan@yahoo.com' AND password='dejan'));

INSERT INTO restaurantuser(id, uname, surname, password, email, utype, version) VALUES (5, 'admin', 'admin', 'admin', 'admin@gmail.com', 'SYSTEMMANAGER', 0);
INSERT INTO systemmanager(id) VALUES ((SELECT id FROM restaurantuser WHERE email='admin@gmail.com'));

INSERT INTO restaurant(rid, rname, rtype, version, latitude, longitude) VALUES (1, 'Bobs Country Bunker', 'Country', 0, 45.239597, 19.837972);
INSERT INTO restaurant(rid, rname, rtype, version, latitude, longitude) VALUES (2, 'McDonalds', 'Vegan', 0, 45.243963, 19.841126);
INSERT INTO restaurant(rid, rname, rtype, version, latitude, longitude) VALUES (3, 'Atina', 'Italian', 0, 45.251819, 19.836920);

INSERT INTO restaurantuser(id, uname, surname, password, email, utype, version) VALUES (6, 'Marko', 'Vjestica', 'marek', 'm.vjestica94@gmail.com', 'WAITER', 0);
INSERT INTO waiter(date_of_birth, dress_size, shoe_size, review, id, rid, password_changed) VALUES ('1960-10-16 00:00:00', 30, 40, 1, (SELECT id FROM restaurantuser WHERE email='m.vjestica94@gmail.com' AND password='marek'), (SELECT rid FROM restaurant WHERE rname='Bobs Country Bunker'), false);

INSERT INTO restaurantuser(id, uname, surname, password, email, utype, version) VALUES (7, 'Zarko', 'Zarkovic', 'zzarkovic', 'z.zarkovic@gmail.com', 'WAITER', 0);
INSERT INTO waiter(date_of_birth, dress_size, shoe_size, review, id, rid, password_changed) VALUES ('1975-01-05 00:00:00', 30, 40, 1, (SELECT id FROM restaurantuser WHERE email='b.brankovic@gmail.com' AND password='barek'), (SELECT rid FROM restaurant WHERE rname='Bobs Country Bunker'), false);

INSERT INTO restaurantuser(id, uname, surname, password, email, utype, version) VALUES (8, 'Richard', 'Steele', 'BiggusDickus', 'dickeyMoose@gmail.com', 'RESTAURANTMANAGER', 0);
INSERT INTO restaurantmanager(date_of_birth, id, rid) VALUES ('1960-10-16 00:00:00', (SELECT id FROM restaurantuser WHERE email='dickeyMoose@gmail.com'), (SELECT rid FROM restaurant WHERE rname='Bobs Country Bunker'));

INSERT INTO restaurantuser(id, uname, surname, password, email, utype, version) VALUES (9, 'proName', 'proSurname', 'pro', 'pro@gmail.com', 'PROVIDER', 0);
INSERT INTO provider(id, ppasswordchanged) VALUES ((SELECT id FROM restaurantuser WHERE email='pro@gmail.com'), FALSE);

INSERT INTO restaurantuser(id, uname, surname, password, email, utype, version) VALUES (10, 'proName2', 'proSurname2', 'pro2', 'pro2@gmail.com', 'PROVIDER', 0);
INSERT INTO provider(id, ppasswordchanged) VALUES ((SELECT id FROM restaurantuser WHERE email='pro2@gmail.com'), FALSE);

INSERT INTO restaurantuser(id, uname, surname, password, email, utype, version) VALUES (11, 'proName2', 'Prezime', 'pro3', 'pro3@gmail.com', 'PROVIDER', 0);
INSERT INTO provider(id, ppasswordchanged) VALUES ((SELECT id FROM restaurantuser WHERE email='pro3@gmail.com'), FALSE);

INSERT INTO restaurantuser(id, uname, surname, password, email, utype, version) VALUES (12, 'res', 'man', 'res', 'res@gmail.com', 'RESTAURANTMANAGER', 0);
INSERT INTO restaurantmanager(date_of_birth, id, rid) VALUES ('1970-05-16 00:00:00', (SELECT id FROM restaurantuser WHERE email='res@gmail.com'), 1);

INSERT INTO restaurantuser(id, uname, surname, password, email, utype, version) VALUES (13, 'bar', 'man', 'bar', 'bar@gmail.com', 'BARTENDER', 0);
INSERT INTO bartender(date_of_birth, dress_size, shoe_size, id, rid, password_changed) VALUES ('1970-05-16 00:00:00', 56, 43, (SELECT id FROM restaurantuser WHERE email='bar@gmail.com'), 1, false);

INSERT INTO restaurantuser(id, uname, surname, password, email, utype, version) VALUES (14, 'Novica', 'Sarenac', 'nov', 'ns@gmail.com', 'COOK', 0);
INSERT INTO cook(date_of_birth, dress_size, shoe_size, typecook, id, rid, password_changed) VALUES ('1994-08-12 00:00:00', 56, 41, 'Salad', (SELECT id FROM restaurantuser WHERE email='ns@gmail.com'), 1, false);

INSERT INTO restaurantuser(id, uname, surname, password, email, utype, version) VALUES (15, 'Ivan', 'Vrsajkov', 'iva', 'iv@gmail.com', 'COOK', 0);
INSERT INTO cook(date_of_birth, dress_size, shoe_size, typecook, id, rid, password_changed) VALUES ('1994-03-04 00:00:00', 56, 39, 'Grilled Dish', (SELECT id FROM restaurantuser WHERE email='iv@gmail.com'), 1, false);

INSERT INTO restaurantsegment (rsid, version, rsname, rscolor) VALUES (1, 0, 'Indoors', 'blue');
INSERT INTO restaurantsegment (rsid, version, rsname, rscolor) VALUES (2, 0, 'Smoking', 'red');
INSERT INTO restaurantsegment (rsid, version, rsname, rscolor) VALUES (3, 0, 'Garden - open', 'green');
INSERT INTO restaurantsegment (rsid, version, rsname, rscolor) VALUES (4, 0, 'Garden - covered', 'yellow');

INSERT INTO tableregion (trid, version, trmark, trcolor) VALUES (1, 0, 1, 'red');
INSERT INTO tableregion (trid, version, trmark, trcolor) VALUES (2, 0, 2, 'blue');
INSERT INTO tableregion (trid, version, trmark, trcolor) VALUES (3, 0, 3, 'yellow');
INSERT INTO tableregion (trid, version, trmark, trcolor) VALUES (4, 0, 4, 'green');
INSERT INTO tableregion (trid, version, trmark, trcolor) VALUES (5, 0, 5, 'purple');
INSERT INTO tableregion (trid, version, trmark, trcolor) VALUES (6, 0, 6, 'orange');
INSERT INTO tableregion (trid, version, trmark, trcolor) VALUES (7, 0, 7, 'brown');
INSERT INTO tableregion (trid, version, trmark, trcolor) VALUES (8, 0, 8, 'darkblue');
INSERT INTO tableregion (trid, version, trmark, trcolor) VALUES (9, 0, 9, 'lightgreen');
INSERT INTO tableregion (trid, version, trmark, trcolor) VALUES (10, 0, 10, 'maroon');

INSERT INTO restauranttable (rtid, rtnumber, rtposition, rid, rtactive, version, rsid, trid) VALUES (1, 1, 0, (SELECT rid FROM restaurant WHERE rname='Bobs Country Bunker'), True, 0, (SELECT rsid FROM restaurantsegment WHERE rsname='Indoors'), (SELECT trid FROM tableregion WHERE trmark=1));
INSERT INTO restauranttable (rtid, rtnumber, rtposition, rid, rtactive, version, rsid, trid) VALUES (2, 2, 1, (SELECT rid FROM restaurant WHERE rname='Bobs Country Bunker'), True, 0, (SELECT rsid FROM restaurantsegment WHERE rsname='Indoors'), (SELECT trid FROM tableregion WHERE trmark=1));
INSERT INTO restauranttable (rtid, rtnumber, rtposition, rid, rtactive, version, rsid, trid) VALUES (3, 3, 2, (SELECT rid FROM restaurant WHERE rname='Bobs Country Bunker'), True, 0, (SELECT rsid FROM restaurantsegment WHERE rsname='Indoors'), (SELECT trid FROM tableregion WHERE trmark=1));
INSERT INTO restauranttable (rtid, rtnumber, rtposition, rid, rtactive, version, rsid, trid) VALUES (4, 4, 3, (SELECT rid FROM restaurant WHERE rname='Bobs Country Bunker'), True, 0, (SELECT rsid FROM restaurantsegment WHERE rsname='Indoors'), (SELECT trid FROM tableregion WHERE trmark=1));
INSERT INTO restauranttable (rtid, rtnumber, rtposition, rid, rtactive, version, rsid, trid) VALUES (5, 5, 4, (SELECT rid FROM restaurant WHERE rname='Bobs Country Bunker'), True, 0, (SELECT rsid FROM restaurantsegment WHERE rsname='Indoors'), (SELECT trid FROM tableregion WHERE trmark=1));
INSERT INTO restauranttable (rtid, rtnumber, rtposition, rid, rtactive, version, rsid, trid) VALUES (6, 6, 5, (SELECT rid FROM restaurant WHERE rname='Bobs Country Bunker'), True, 0, (SELECT rsid FROM restaurantsegment WHERE rsname='Indoors'), (SELECT trid FROM tableregion WHERE trmark=1));
INSERT INTO restauranttable (rtid, rtnumber, rtposition, rid, rtactive, version, rsid, trid) VALUES (7, 7, 6, (SELECT rid FROM restaurant WHERE rname='Bobs Country Bunker'), True, 0, (SELECT rsid FROM restaurantsegment WHERE rsname='Indoors'), (SELECT trid FROM tableregion WHERE trmark=1));
INSERT INTO restauranttable (rtid, rtnumber, rtposition, rid, rtactive, version, rsid, trid) VALUES (8, 8, 7, (SELECT rid FROM restaurant WHERE rname='Bobs Country Bunker'), False, 0, (SELECT rsid FROM restaurantsegment WHERE rsname='Indoors'), (SELECT trid FROM tableregion WHERE trmark=1));
INSERT INTO restauranttable (rtid, rtnumber, rtposition, rid, rtactive, version, rsid, trid) VALUES (9, 9, 8, (SELECT rid FROM restaurant WHERE rname='Bobs Country Bunker'), True, 0, (SELECT rsid FROM restaurantsegment WHERE rsname='Indoors'), (SELECT trid FROM tableregion WHERE trmark=1));
INSERT INTO restauranttable (rtid, rtnumber, rtposition, rid, rtactive, version, rsid, trid) VALUES (10, 10, 9, (SELECT rid FROM restaurant WHERE rname='Bobs Country Bunker'), True, 0, (SELECT rsid FROM restaurantsegment WHERE rsname='Indoors'), (SELECT trid FROM tableregion WHERE trmark=1));
INSERT INTO restauranttable (rtid, rtnumber, rtposition, rid, rtactive, version, rsid, trid) VALUES (11, 11, 10, (SELECT rid FROM restaurant WHERE rname='Bobs Country Bunker'), True, 0, (SELECT rsid FROM restaurantsegment WHERE rsname='Indoors'), (SELECT trid FROM tableregion WHERE trmark=1));
INSERT INTO restauranttable (rtid, rtnumber, rtposition, rid, rtactive, version, rsid, trid) VALUES (12, 12, 11, (SELECT rid FROM restaurant WHERE rname='Bobs Country Bunker'), True, 0, (SELECT rsid FROM restaurantsegment WHERE rsname='Indoors'), (SELECT trid FROM tableregion WHERE trmark=1));
INSERT INTO restauranttable (rtid, rtnumber, rtposition, rid, rtactive, version, rsid, trid) VALUES (13, 13, 12, (SELECT rid FROM restaurant WHERE rname='Bobs Country Bunker'), True, 0, (SELECT rsid FROM restaurantsegment WHERE rsname='Indoors'), (SELECT trid FROM tableregion WHERE trmark=1));
INSERT INTO restauranttable (rtid, rtnumber, rtposition, rid, rtactive, version, rsid, trid) VALUES (14, 14, 13, (SELECT rid FROM restaurant WHERE rname='Bobs Country Bunker'), True, 0, (SELECT rsid FROM restaurantsegment WHERE rsname='Indoors'), (SELECT trid FROM tableregion WHERE trmark=1));
INSERT INTO restauranttable (rtid, rtnumber, rtposition, rid, rtactive, version, rsid, trid) VALUES (15, 15, 14, (SELECT rid FROM restaurant WHERE rname='Bobs Country Bunker'), True, 0, (SELECT rsid FROM restaurantsegment WHERE rsname='Indoors'), (SELECT trid FROM tableregion WHERE trmark=1));
INSERT INTO restauranttable (rtid, rtnumber, rtposition, rid, rtactive, version, rsid, trid) VALUES (16, 16, 15, (SELECT rid FROM restaurant WHERE rname='Bobs Country Bunker'), True, 0, (SELECT rsid FROM restaurantsegment WHERE rsname='Indoors'), (SELECT trid FROM tableregion WHERE trmark=1));
INSERT INTO restauranttable (rtid, rtnumber, rtposition, rid, rtactive, version, rsid, trid) VALUES (17, 17, 16, (SELECT rid FROM restaurant WHERE rname='Bobs Country Bunker'), False, 0, (SELECT rsid FROM restaurantsegment WHERE rsname='Indoors'), (SELECT trid FROM tableregion WHERE trmark=1));
INSERT INTO restauranttable (rtid, rtnumber, rtposition, rid, rtactive, version, rsid, trid) VALUES (18, 18, 17, (SELECT rid FROM restaurant WHERE rname='Bobs Country Bunker'), True, 0, (SELECT rsid FROM restaurantsegment WHERE rsname='Indoors'), (SELECT trid FROM tableregion WHERE trmark=1));
INSERT INTO restauranttable (rtid, rtnumber, rtposition, rid, rtactive, version, rsid, trid) VALUES (19, 19, 18, (SELECT rid FROM restaurant WHERE rname='Bobs Country Bunker'), True, 0, (SELECT rsid FROM restaurantsegment WHERE rsname='Indoors'), (SELECT trid FROM tableregion WHERE trmark=1));
INSERT INTO restauranttable (rtid, rtnumber, rtposition, rid, rtactive, version, rsid, trid) VALUES (20, 20, 19, (SELECT rid FROM restaurant WHERE rname='Bobs Country Bunker'), True, 0, (SELECT rsid FROM restaurantsegment WHERE rsname='Indoors'), (SELECT trid FROM tableregion WHERE trmark=1));
INSERT INTO restauranttable (rtid, rtnumber, rtposition, rid, rtactive, version, rsid, trid) VALUES (21, 21, 20, (SELECT rid FROM restaurant WHERE rname='Bobs Country Bunker'), True, 0, (SELECT rsid FROM restaurantsegment WHERE rsname='Indoors'), (SELECT trid FROM tableregion WHERE trmark=1));
INSERT INTO restauranttable (rtid, rtnumber, rtposition, rid, rtactive, version, rsid, trid) VALUES (22, 22, 21, (SELECT rid FROM restaurant WHERE rname='Bobs Country Bunker'), True, 0, (SELECT rsid FROM restaurantsegment WHERE rsname='Indoors'), (SELECT trid FROM tableregion WHERE trmark=1));
INSERT INTO restauranttable (rtid, rtnumber, rtposition, rid, rtactive, version, rsid, trid) VALUES (23, 23, 22, (SELECT rid FROM restaurant WHERE rname='Bobs Country Bunker'), True, 0, (SELECT rsid FROM restaurantsegment WHERE rsname='Indoors'), (SELECT trid FROM tableregion WHERE trmark=1));
INSERT INTO restauranttable (rtid, rtnumber, rtposition, rid, rtactive, version, rsid, trid) VALUES (24, 24, 23, (SELECT rid FROM restaurant WHERE rname='Bobs Country Bunker'), True, 0, (SELECT rsid FROM restaurantsegment WHERE rsname='Indoors'), (SELECT trid FROM tableregion WHERE trmark=1));
INSERT INTO restauranttable (rtid, rtnumber, rtposition, rid, rtactive, version, rsid, trid) VALUES (25, 25, 24, (SELECT rid FROM restaurant WHERE rname='Bobs Country Bunker'), True, 0, (SELECT rsid FROM restaurantsegment WHERE rsname='Indoors'), (SELECT trid FROM tableregion WHERE trmark=1));
INSERT INTO restauranttable (rtid, rtnumber, rtposition, rid, rtactive, version, rsid, trid) VALUES (26, 26, 25, (SELECT rid FROM restaurant WHERE rname='Bobs Country Bunker'), True, 0, (SELECT rsid FROM restaurantsegment WHERE rsname='Indoors'), (SELECT trid FROM tableregion WHERE trmark=1));
INSERT INTO restauranttable (rtid, rtnumber, rtposition, rid, rtactive, version, rsid, trid) VALUES (27, 27, 26, (SELECT rid FROM restaurant WHERE rname='Bobs Country Bunker'), True, 0, (SELECT rsid FROM restaurantsegment WHERE rsname='Indoors'), (SELECT trid FROM tableregion WHERE trmark=1));
INSERT INTO restauranttable (rtid, rtnumber, rtposition, rid, rtactive, version, rsid, trid) VALUES (28, 28, 27, (SELECT rid FROM restaurant WHERE rname='Bobs Country Bunker'), True, 0, (SELECT rsid FROM restaurantsegment WHERE rsname='Indoors'), (SELECT trid FROM tableregion WHERE trmark=1));
INSERT INTO restauranttable (rtid, rtnumber, rtposition, rid, rtactive, version, rsid, trid) VALUES (29, 29, 28, (SELECT rid FROM restaurant WHERE rname='Bobs Country Bunker'), True, 0, (SELECT rsid FROM restaurantsegment WHERE rsname='Indoors'), (SELECT trid FROM tableregion WHERE trmark=1));
INSERT INTO restauranttable (rtid, rtnumber, rtposition, rid, rtactive, version, rsid, trid) VALUES (30, 30, 29, (SELECT rid FROM restaurant WHERE rname='Bobs Country Bunker'), True, 0, (SELECT rsid FROM restaurantsegment WHERE rsname='Indoors'), (SELECT trid FROM tableregion WHERE trmark=1));
INSERT INTO restauranttable (rtid, rtnumber, rtposition, rid, rtactive, version, rsid, trid) VALUES (31, 31, 30, (SELECT rid FROM restaurant WHERE rname='Bobs Country Bunker'), False, 0, (SELECT rsid FROM restaurantsegment WHERE rsname='Indoors'), (SELECT trid FROM tableregion WHERE trmark=1));
INSERT INTO restauranttable (rtid, rtnumber, rtposition, rid, rtactive, version, rsid, trid) VALUES (32, 32, 31, (SELECT rid FROM restaurant WHERE rname='Bobs Country Bunker'), True, 0, (SELECT rsid FROM restaurantsegment WHERE rsname='Indoors'), (SELECT trid FROM tableregion WHERE trmark=1));
INSERT INTO restauranttable (rtid, rtnumber, rtposition, rid, rtactive, version, rsid, trid) VALUES (33, 33, 32, (SELECT rid FROM restaurant WHERE rname='Bobs Country Bunker'), True, 0, (SELECT rsid FROM restaurantsegment WHERE rsname='Indoors'), (SELECT trid FROM tableregion WHERE trmark=1));
INSERT INTO restauranttable (rtid, rtnumber, rtposition, rid, rtactive, version, rsid, trid) VALUES (34, 34, 33, (SELECT rid FROM restaurant WHERE rname='Bobs Country Bunker'), True, 0, (SELECT rsid FROM restaurantsegment WHERE rsname='Indoors'), (SELECT trid FROM tableregion WHERE trmark=1));
INSERT INTO restauranttable (rtid, rtnumber, rtposition, rid, rtactive, version, rsid, trid) VALUES (35, 35, 34, (SELECT rid FROM restaurant WHERE rname='Bobs Country Bunker'), False, 0, (SELECT rsid FROM restaurantsegment WHERE rsname='Indoors'), (SELECT trid FROM tableregion WHERE trmark=1));
INSERT INTO restauranttable (rtid, rtnumber, rtposition, rid, rtactive, version, rsid, trid) VALUES (36, 36, 35, (SELECT rid FROM restaurant WHERE rname='Bobs Country Bunker'), True, 0, (SELECT rsid FROM restaurantsegment WHERE rsname='Indoors'), (SELECT trid FROM tableregion WHERE trmark=1));
INSERT INTO restauranttable (rtid, rtnumber, rtposition, rid, rtactive, version, rsid, trid) VALUES (37, 37, 36, (SELECT rid FROM restaurant WHERE rname='Bobs Country Bunker'), True, 0, (SELECT rsid FROM restaurantsegment WHERE rsname='Indoors'), (SELECT trid FROM tableregion WHERE trmark=1));
INSERT INTO restauranttable (rtid, rtnumber, rtposition, rid, rtactive, version, rsid, trid) VALUES (38, 38, 37, (SELECT rid FROM restaurant WHERE rname='Bobs Country Bunker'), True, 0, (SELECT rsid FROM restaurantsegment WHERE rsname='Indoors'), (SELECT trid FROM tableregion WHERE trmark=1));
INSERT INTO restauranttable (rtid, rtnumber, rtposition, rid, rtactive, version, rsid, trid) VALUES (39, 39, 38, (SELECT rid FROM restaurant WHERE rname='Bobs Country Bunker'), True, 0, (SELECT rsid FROM restaurantsegment WHERE rsname='Indoors'), (SELECT trid FROM tableregion WHERE trmark=1));
INSERT INTO restauranttable (rtid, rtnumber, rtposition, rid, rtactive, version, rsid, trid) VALUES (40, 40, 39, (SELECT rid FROM restaurant WHERE rname='Bobs Country Bunker'), True, 0, (SELECT rsid FROM restaurantsegment WHERE rsname='Indoors'), (SELECT trid FROM tableregion WHERE trmark=1));
INSERT INTO restauranttable (rtid, rtnumber, rtposition, rid, rtactive, version, rsid, trid) VALUES (41, 41, 40, (SELECT rid FROM restaurant WHERE rname='Bobs Country Bunker'), True, 0, (SELECT rsid FROM restaurantsegment WHERE rsname='Indoors'), (SELECT trid FROM tableregion WHERE trmark=1));
INSERT INTO restauranttable (rtid, rtnumber, rtposition, rid, rtactive, version, rsid, trid) VALUES (42, 42, 41, (SELECT rid FROM restaurant WHERE rname='Bobs Country Bunker'), True, 0, (SELECT rsid FROM restaurantsegment WHERE rsname='Indoors'), (SELECT trid FROM tableregion WHERE trmark=1));
INSERT INTO restauranttable (rtid, rtnumber, rtposition, rid, rtactive, version, rsid, trid) VALUES (43, 43, 42, (SELECT rid FROM restaurant WHERE rname='Bobs Country Bunker'), True, 0, (SELECT rsid FROM restaurantsegment WHERE rsname='Indoors'), (SELECT trid FROM tableregion WHERE trmark=1));
INSERT INTO restauranttable (rtid, rtnumber, rtposition, rid, rtactive, version, rsid, trid) VALUES (44, 44, 43, (SELECT rid FROM restaurant WHERE rname='Bobs Country Bunker'), True, 0, (SELECT rsid FROM restaurantsegment WHERE rsname='Indoors'), (SELECT trid FROM tableregion WHERE trmark=1));
INSERT INTO restauranttable (rtid, rtnumber, rtposition, rid, rtactive, version, rsid, trid) VALUES (45, 45, 44, (SELECT rid FROM restaurant WHERE rname='Bobs Country Bunker'), True, 0, (SELECT rsid FROM restaurantsegment WHERE rsname='Indoors'), (SELECT trid FROM tableregion WHERE trmark=1));
INSERT INTO restauranttable (rtid, rtnumber, rtposition, rid, rtactive, version, rsid, trid) VALUES (46, 46, 45, (SELECT rid FROM restaurant WHERE rname='Bobs Country Bunker'), True, 0, (SELECT rsid FROM restaurantsegment WHERE rsname='Indoors'), (SELECT trid FROM tableregion WHERE trmark=1));
INSERT INTO restauranttable (rtid, rtnumber, rtposition, rid, rtactive, version, rsid, trid) VALUES (47, 47, 46, (SELECT rid FROM restaurant WHERE rname='Bobs Country Bunker'), True, 0, (SELECT rsid FROM restaurantsegment WHERE rsname='Indoors'), (SELECT trid FROM tableregion WHERE trmark=1));
INSERT INTO restauranttable (rtid, rtnumber, rtposition, rid, rtactive, version, rsid, trid) VALUES (48, 48, 47, (SELECT rid FROM restaurant WHERE rname='Bobs Country Bunker'), True, 0, (SELECT rsid FROM restaurantsegment WHERE rsname='Indoors'), (SELECT trid FROM tableregion WHERE trmark=1));
INSERT INTO restauranttable (rtid, rtnumber, rtposition, rid, rtactive, version, rsid, trid) VALUES (49, 49, 48, (SELECT rid FROM restaurant WHERE rname='Bobs Country Bunker'), True, 0, (SELECT rsid FROM restaurantsegment WHERE rsname='Indoors'), (SELECT trid FROM tableregion WHERE trmark=1));
INSERT INTO restauranttable (rtid, rtnumber, rtposition, rid, rtactive, version, rsid, trid) VALUES (50, 50, 49, (SELECT rid FROM restaurant WHERE rname='Bobs Country Bunker'), True, 0, (SELECT rsid FROM restaurantsegment WHERE rsname='Indoors'), (SELECT trid FROM tableregion WHERE trmark=1));



INSERT INTO menu (menuid, mname, mtype, mdescription, mprice, mreview, rid, version) VALUES (1, 'Whiskey', 'Drink', 'Alcohol', 150, 0, 1, 0);
INSERT INTO menu (menuid, mname, mtype, mdescription, mprice, mreview, rid, version) VALUES (2, 'Juice', 'Drink', 'Orange Juice', 100, 0, 1, 0);
INSERT INTO menu (menuid, mname, mtype, mdescription, mprice, mreview, rid, version) VALUES (3, 'Cabbage', 'Salad', '', 70, 0, 1, 0);
INSERT INTO menu (menuid, mname, mtype, mdescription, mprice, mreview, rid, version) VALUES (4, 'Stew', 'Cooked Meal', 'Stew with chicken meat', 300, 0, 1, 0);
INSERT INTO menu (menuid, mname, mtype, mdescription, mprice, mreview, rid, version) VALUES (5, 'Pljeskavica', 'Grilled Dish', 'Pork', 250, 0, 1, 0);
INSERT INTO menu (menuid, mname, mtype, mdescription, mprice, mreview, rid, version) VALUES (6, 'Cevapi', 'Grilled Dish', 'Pork', 300, 0, 1, 0);

INSERT INTO restaurantreview (rrid, rrreview, rrdate, userid, rid, version) VALUES (1, 5, '2016-05-16 00:00:00', 1, 1, 0);
INSERT INTO restaurantreview (rrid, rrreview, rrdate, userid, rid, version) VALUES (2, 4, '2016-01-25 00:00:00', 2, 1, 0);
INSERT INTO restaurantreview (rrid, rrreview, rrdate, userid, rid, version) VALUES (3, 3, '2016-10-01 00:00:00', 3, 1, 0);
INSERT INTO restaurantreview (rrid, rrreview, rrdate, userid, rid, version) VALUES (4, 5, '2016-11-08 00:00:00', 4, 1, 0);
INSERT INTO restaurantreview (rrid, rrreview, rrdate, userid, rid, version) VALUES (5, 5, '2015-02-14 00:00:00', 5, 1, 0);

INSERT INTO waiterreview (wrid, wrreview, wrdate, wid, rid, version) VALUES (1, 5, '2016-05-16 00:00:00', (SELECT id FROM restaurantuser WHERE email='m.vjestica94@gmail.com'), 1, 0);
INSERT INTO waiterreview (wrid, wrreview, wrdate, wid, rid, version) VALUES (2, 4, '2016-01-25 00:00:00', (SELECT id FROM restaurantuser WHERE email='m.vjestica94@gmail.com'), 1, 0);
INSERT INTO waiterreview (wrid, wrreview, wrdate, wid, rid, version) VALUES (3, 3, '2016-10-01 00:00:00', (SELECT id FROM restaurantuser WHERE email='b.brankovic@gmail.com'), 1, 0);
INSERT INTO waiterreview (wrid, wrreview, wrdate, wid, rid, version) VALUES (4, 3, '2016-11-08 00:00:00', (SELECT id FROM restaurantuser WHERE email='b.brankovic@gmail.com'), 1, 0);
INSERT INTO waiterreview (wrid, wrreview, wrdate, wid, rid, version) VALUES (5, 5, '2015-02-14 00:00:00', (SELECT id FROM restaurantuser WHERE email='b.brankovic@gmail.com'), 1, 0);

INSERT INTO menureview (mrid, mrreview, mrdate, userid, menuid, rid, version) VALUES (1, 5, '2016-05-16 00:00:00', (SELECT id FROM restaurantuser WHERE email='iv@gmail.com'), 5, 1, 0);
INSERT INTO menureview (mrid, mrreview, mrdate, userid, menuid, rid, version) VALUES (2, 2, '2016-01-25 00:00:00', (SELECT id FROM restaurantuser WHERE email='iv@gmail.com'), 6, 1, 0);
INSERT INTO menureview (mrid, mrreview, mrdate, userid, menuid, rid, version) VALUES (3, 3, '2016-10-01 00:00:00', (SELECT id FROM restaurantuser WHERE email='ns@gmail.com'), 3, 1, 0);
INSERT INTO menureview (mrid, mrreview, mrdate, userid, menuid, rid, version) VALUES (4, 2, '2016-11-08 00:00:00', (SELECT id FROM restaurantuser WHERE email='ns@gmail.com'), 3, 1, 0);
INSERT INTO menureview (mrid, mrreview, mrdate, userid, menuid, rid, version) VALUES (5, 5, '2015-02-14 00:00:00', (SELECT id FROM restaurantuser WHERE email='ns@gmail.com'), 3, 1, 0);

INSERT INTO restaurantorder (oid, version, rtid, ostatus, oassigned, oyear, omonth, oday, ohour, ominute, obillcreated) VALUES (1, 0, 1 , 'Waiting for waiter', false, 2017, 2, 2, 16, 0, false);
INSERT INTO orderitem (oiid, version, userid, menuid, oid, oistatus, oireadybyarrival, oihour, oiminute) VALUES (1, 0, 1, 5, 1, 'Waiting for waiter', false, 16, 0);
INSERT INTO orderitem (oiid, version, userid, menuid, oid, oistatus, oireadybyarrival, oihour, oiminute) VALUES (2, 0, 1, 1, 1, 'Waiting for waiter', true, 16, 0);

INSERT INTO restaurantproviders (restaurantid, providerid) VALUES (1, 9);

INSERT INTO tender (tid, tstart, tend, tstatus, rid, version) VALUES (1, '2017-02-02 00:00:00', '2017-02-05 00:00:00', 'Canceled', 1, 1);
INSERT INTO tender (tid, tstart, tend, tstatus, rid, version) VALUES (2, '2017-02-07 00:00:00', '2017-02-11 00:00:00', 'Canceled', 1, 1);
INSERT INTO tender (tid, tstart, tend, tstatus, rid, version) VALUES (3, '2017-02-24 00:00:00', '2017-03-01 00:00:00', 'Active', 1, 0);

INSERT INTO tenderitem (tiid, tiname, titype, tiquantity, tid, version) VALUES (1, 'Pilece belo meso', 'Foodstuff', '20 kg', 1, 0);
INSERT INTO tenderitem (tiid, tiname, titype, tiquantity, tid, version) VALUES (2, 'Coca Cola', 'Drink', '50 kom', 1, 0);
INSERT INTO tenderitem (tiid, tiname, titype, tiquantity, tid, version) VALUES (3, 'Jagnjece meso', 'Foodstuff', '15 kg', 2, 0);
INSERT INTO tenderitem (tiid, tiname, titype, tiquantity, tid, version) VALUES (4, 'Sir', 'Foodstuff', '5 kg', 2, 0);
INSERT INTO tenderitem (tiid, tiname, titype, tiquantity, tid, version) VALUES (5, 'Sok od breskve', 'Drink', '100 kom', 2, 0);
INSERT INTO tenderitem (tiid, tiname, titype, tiquantity, tid, version) VALUES (6, 'Svinjsko meso', 'Foodstuff', '10 kg', 3, 0);
INSERT INTO tenderitem (tiid, tiname, titype, tiquantity, tid, version) VALUES (7, 'Zelena salata', 'Foodstuff', '3 kg', 3, 0);
INSERT INTO tenderitem (tiid, tiname, titype, tiquantity, tid, version) VALUES (8, 'Sok od borovnice', 'Drink', '75 kom', 3, 0);

INSERT INTO restaurant(rid, rname, rtype, version, latitude, longitude) VALUES ('Restaurant 2', 'Italian', 0, 45.261350, 19.850138);
INSERT INTO tender (tid, tstart, tend, tstatus, rid, version) VALUES (4, '2017-02-04 00:00:00', '2017-02-10 00:00:00', 'Canceled', 2, 1);
INSERT INTO tender (tid, tstart, tend, tstatus, rid, version) VALUES (5, '2017-02-22 00:00:00', '2017-03-10 00:00:00', 'Active', 2, 0);
INSERT INTO tenderitem (tiid, tiname, titype, tiquantity, tid, version) VALUES (9, 'Sargarepa', 'Foodstuff', '7 kg', 4, 0);
INSERT INTO tenderitem (tiid, tiname, titype, tiquantity, tid, version) VALUES (10, 'Coca Cola', 'Drink', '30 kom', 5, 0);
INSERT INTO tenderitem (tiid, tiname, titype, tiquantity, tid, version) VALUES (11, 'Jaja', 'Foodstuff', '200 kom', 5, 0);
INSERT INTO restaurantproviders (restaurantid, providerid) VALUES (2, 9);

INSERT INTO restaurantuser(id, uname, surname, password, email, utype, version) VALUES (16, 'WaiterName', 'WaiterSurname', 'waiter', 'w.waiter@gmail.com', 'WAITER', 0);
INSERT INTO waiter(date_of_birth, dress_size, shoe_size, review, id, rid, password_changed) VALUES ('1985-01-05 00:00:00', 30, 40, 1, (SELECT id FROM restaurantuser WHERE email='w.waiter@gmail.com' AND password='waiter'), 2, FALSE);

INSERT INTO bill (blid, bldate, bltotal, version, wid) VALUES (1, '2017-01-02 00:00:00', 150, 0, 6);
INSERT INTO bill (blid, bldate, bltotal, version, wid) VALUES (2, '2017-01-03 00:00:00', 200, 0, 6);
INSERT INTO bill (blid, bldate, bltotal, version, wid) VALUES (3, '2017-02-04 00:00:00', 140, 0, 7);
INSERT INTO bill (blid, bldate, bltotal, version, wid) VALUES (4, '2017-02-03 00:00:00', 150, 0, 6);
INSERT INTO bill (blid, bldate, bltotal, version, wid) VALUES (5, '2017-03-03 00:00:00', 1000, 0, 16);

INSERT INTO bill (blid, bldate, bltotal, version, wid) VALUES (6, '2017-02-26 20:17:00', 150, 0, 6);
INSERT INTO bill (blid, bldate, bltotal, version, wid) VALUES (7, '2017-02-26 16:00:00', 200, 0, 6);
INSERT INTO bill (blid, bldate, bltotal, version, wid) VALUES (8, '2017-02-26 14:00:12', 140, 0, 7);
INSERT INTO bill (blid, bldate, bltotal, version, wid) VALUES (9, '2017-02-25 05:00:00', 150, 0, 6);
INSERT INTO bill (blid, bldate, bltotal, version, wid) VALUES (10, '2017-02-25 22:12:00', 450, 0, 6);
INSERT INTO bill (blid, bldate, bltotal, version, wid) VALUES (11, '2017-02-24 09:00:17', 150, 0, 6);
INSERT INTO bill (blid, bldate, bltotal, version, wid) VALUES (12, '2017-02-24 17:17:00', 750, 0, 6);
INSERT INTO bill (blid, bldate, bltotal, version, wid) VALUES (13, '2017-02-24 09:00:00', 140, 0, 7);
INSERT INTO bill (blid, bldate, bltotal, version, wid) VALUES (14, '2017-02-24 09:00:00', 150, 0, 6);
INSERT INTO bill (blid, bldate, bltotal, version, wid) VALUES (15, '2017-02-24 17:00:00', 220, 0, 7);
INSERT INTO bill (blid, bldate, bltotal, version, wid) VALUES (16, '2017-02-23 17:00:00', 150, 0, 6);
INSERT INTO bill (blid, bldate, bltotal, version, wid) VALUES (17, '2017-03-01 13:00:00', 200, 0, 6);
INSERT INTO bill (blid, bldate, bltotal, version, wid) VALUES (18, '2017-03-01 15:12:00', 140, 0, 7);
INSERT INTO bill (blid, bldate, bltotal, version, wid) VALUES (19, '2017-03-01 17:17:00', 150, 0, 6);
INSERT INTO bill (blid, bldate, bltotal, version, wid) VALUES (20, '2017-02-28 12:00:00', 330, 0, 6);
INSERT INTO bill (blid, bldate, bltotal, version, wid) VALUES (21, '2017-02-28 12:00:00', 150, 0, 6);
INSERT INTO bill (blid, bldate, bltotal, version, wid) VALUES (22, '2017-02-28 17:17:00', 320, 0, 6);
INSERT INTO bill (blid, bldate, bltotal, version, wid) VALUES (23, '2017-02-28 17:00:00', 140, 0, 7);
INSERT INTO bill (blid, bldate, bltotal, version, wid) VALUES (24, '2017-02-27 17:00:00', 150, 0, 6);
INSERT INTO bill (blid, bldate, bltotal, version, wid) VALUES (25, '2017-02-27 17:00:00', 110, 0, 7);


INSERT INTO offer (offid, offstatus, version, pid, tid) VALUES (1, 'On hold', 0, 9, 3);

INSERT INTO offeritem (offiid, offideliverytime, offiprice, version, offid, tiid) VALUES (1, '1 day', 450, 0, 1, 6);
INSERT INTO offeritem (offiid, offideliverytime, offiguarantee, offiprice, version, offid, tiid) VALUES (2, '2 days', '10 days', 300, 0, 1, 7);
INSERT INTO offeritem (offiid, offideliverytime, offiprice, version, offid, tiid) VALUES (3, '1 day', 280, 0, 1, 8);

INSERT INTO restaurantproviders (restaurantid, providerid) VALUES (1, 10);

INSERT INTO calendarevent (ceid, ceyear, cemonth, ceday, cestarthour, cestartminute, ceendhour, ceendminute, userid, trid, version) VALUES (1, 2017, 2, 14, 12, 0, 20, 0, 6, 1, 0);
INSERT INTO calendarevent (ceid, ceyear, cemonth, ceday, cestarthour, cestartminute, ceendhour, ceendminute, userid, trid, version) VALUES (2, 2017, 2, 21, 12, 0, 20, 0, 6, 1, 0);
INSERT INTO calendarevent (ceid, ceyear, cemonth, ceday, cestarthour, cestartminute, ceendhour, ceendminute, userid, trid, version) VALUES (3, 2017, 2, 2, 08, 0, 20, 0, 6, 1, 0);

INSERT INTO restaurantorder (oid, version, rtid, ostatus, oassigned, oyear, omonth, oday, ohour, ominute, obillcreated, wid) VALUES (2, 0, 1 , 'Ready', true, 2017, 1, 15, 16, 0, true, 6);
INSERT INTO orderitem (oiid, version, userid, menuid, oid, oistatus, oireadybyarrival, oihour, oiminute, staffid) VALUES (3, 0, 1, 5, 1, 'Ready', false, 16, 0, 15);
INSERT INTO orderitem (oiid, version, userid, menuid, oid, oistatus, oireadybyarrival, oihour, oiminute, staffid) VALUES (4, 0, 1, 1, 1, 'Ready', true, 16, 0, 13);
INSERT INTO waiterorders (orderid, waiterid) VALUES (2, 6);
INSERT INTO bill (blid, version, wid, bltotal, bldate) VALUES (26, 0, 6, 400, '2017-02-15 17:00:00');
INSERT INTO visithistory (vhid, version, wid, gid, vhrestaurantgrade, vhservicegrade, vhmenugrade, vhdate) VALUES (1, 0, 6, 1, -1, -1, -1, '2017-02-15 17:00:00');
INSERT INTO orderitemsinhistory (vhid, oiid) VALUES (1, 3);
INSERT INTO orderitemsinhistory (vhid, oiid) VALUES (1, 4);

INSERT INTO offer (offid, offstatus, version, pid, tid) VALUES (2, 'Canceled', 1, 9, 2);
INSERT INTO offer (offid, offstatus, version, pid, tid) VALUES (3, 'Canceled', 1, 10, 2);
INSERT INTO offer (offid, offstatus, version, pid, tid) VALUES (4, 'Canceled', 1, 9, 1);
INSERT INTO offer (offid, offstatus, version, pid, tid) VALUES (5, 'Canceled', 1, 10, 1);

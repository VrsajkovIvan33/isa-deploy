INSERT INTO restaurantuser (id, uname, surname, password, email, utype, version) VALUES (1, 'Boris', 'Janjic', 'boki', 'cmd3395@yahoo.com', 'GUEST', 0);
INSERT INTO guest(active, id) VALUES (true , (SELECT id FROM user WHERE email='cmd3395@yahoo.com' AND password='boki'));


INSERT INTO person (id,personnumber,name,city,zip,street)
VALUES
  (1,'019860536304','Yardley Clark','Waiuku','23606','897-1343 Orci, St.'),
  (2,'113883285512','Fitzgerald Burton','Queanbeyan','72274','Ap #715-5474 Pede St.'),
  (3,'260844007603','Freya Turner','Baguio','61974','691-4303 Gravida Road'),
  (4,'679735315520','Quentin Evans','Kon Tum','88963','217-8212 Ipsum Av.'),
  (5,'355673142348','Deacon Lara','Port Pirie','44724','9339 Mauris Avenue'),
  (6,'460283259101','Zia Gaines','Thabazimbi','01738','Ap #734-8610 Sit St.'),
  (7,'916224023282','Demetria Hogan','Townsville','22402','987-9425 Ligula. Road'),
  (8,'144130222661','Iona Kaufman','Olsztyn','13125','6657 Non St.'),
  (9,'474684596367','Lucy Chandler','Chemnitz','45392','Ap #881-2203 Consequat Avenue'),
  (10,'188243537164','Holly Ochoa','Joinville','36227','Ap #227-3390 In St.');

INSERT INTO lessonprice (id,type,level,priceamount,starttime,endtime)
VALUES
  (1,'individual','beginner',517,'Nov 4, 2022','Dec 18, 2022'),
  (2,'individual','beginner',512,'Nov 19, 2022','Dec 22, 2022'),
  (3,'individual','beginner',503,'Nov 12, 2022','Dec 11, 2022'),
  (4,'group','intermediate',497,'Nov 30, 2022','Dec 13, 2022'),
  (5,'group','intermediate',399,'Nov 17, 2022','Dec 4, 2022'),
  (6,'group','intermediate',736,'Nov 27, 2022','Dec 18, 2022'),
  (7,'ensemble','advanced',633,'Nov 12, 2022','Dec 20, 2022'),
  (8,'ensemble','advanced',194,'Nov 7, 2022','Dec 17, 2022'),
  (9,'ensemble','advanced',687,'Nov 4, 2022','Dec 11, 2022'),
  (10,'individual','beginner',697,'Nov 21, 2022','Dec 12, 2022');

INSERT INTO instrument (id,brand,type,quantity)
VALUES
  (1,'Curran','Caleb',8),
  (2,'Duncan','Yoko',10),
  (3,'Basil','Garrison',3),
  (4,'Maryam','Ferdinand',1),
  (5,'Yuli','Reuben',9),
  (6,'Barclay','Carlos',2),
  (7,'Ethan','Nelle',0),
  (8,'Tamara','Elliott',4),
  (9,'Lillian','Isabelle',9),
  (10,'Kylynn','Phelan',2);

INSERT INTO instructor (id,instrumentstaught,person_id)
VALUES
  (1,'suscipit',1),
  (2,'enim',2),
  (3,'augue',3),
  (4,'augue.',4),
  (5,'eget',5),
  (6,'nibh',6),
  (7,'dictum',7),
  (8,'felis',8),
  (9,'Nullam',9),
  (10,'metus.',10);

INSERT INTO student (id,discount,siblinginfo,person_id,contactpersonphone)
VALUES
  (1,0.8,'ultricies ornare, elit elit fermentum risus,',1,'700142335194'),
  (2,0.8,'orci quis',2,'862816876623'),
  (3,1,'dapibus quam quis diam. Pellentesque',3,'834066242681'),
  (4,1,'et arcu imperdiet ullamcorper. Duis at lacus.',4,'901727622753'),
  (5,0.8,'porttitor eros nec tellus.',5,'306441459681'),
  (6,0.8,'',6,'738341901265'),
  (7,1,'nec ligula consectetuer rhoncus.',7,'216497866266'),
  (8,1,'Phasellus in',8,'624667284758'),
  (9,0.8,'vel, vulputate eu,',9,'076570255459'),
  (10,0.8,'fermentum risus, at fringilla purus mauris a nunc. In',10,'406964456164');

INSERT INTO lessonschedule (id,starttime,endtime,lessonpriceid,instructor_id)
VALUES
  (1,'Nov 8, 2022','Dec 20, 2022',7,3),
  (2,'Nov 18, 2022','Dec 15, 2022',8,7),
  (3,'Nov 19, 2022','Dec 31, 2022',6,7),
  (4,'Nov 9, 2022','Dec 30, 2022',5,7),
  (5,'Nov 9, 2022','Dec 31, 2022',5,4),
  (6,'Nov 20, 2022','Dec 6, 2022',5,5),
  (7,'Nov 9, 2022','Dec 10, 2022',3,9),
  (8,'Nov 12, 2022','Dec 8, 2022',6,7),
  (9,'Nov 12, 2022','Dec 19, 2022',2,4),
  (10,'Nov 7, 2022','Dec 16, 2022',7,2);

INSERT INTO lessoncapacity (id,max,min,lessonid)
VALUES
  (1,137,9,1),
  (2,139,9,2),
  (3,102,2,3),
  (4,197,4,4),
  (5,124,5,5),
  (6,154,8,6),
  (7,116,6,7),
  (8,122,4,8),
  (9,105,6,9),
  (10,186,4,10);

INSERT INTO lessongenre (id,genre,lessonid)
VALUES
  (1,'amet',1),
  (2,'mauris',2),
  (3,'mauris',3),
  (4,'semper',4),
  (5,'justo',5),
  (6,'vel,',6),
  (7,'ipsum',7),
  (8,'aliquet,',8),
  (9,'orci,',9),
  (10,'aliquam',10);

INSERT INTO lessoninstrument (id,taughtinstrument,lessonid)
VALUES
  (1,'ridiculus',1),
  (2,'in',2),
  (3,'cubilia',3),
  (4,'luctus',4),
  (5,'diam.',5),
  (6,'a,',6),
  (7,'ultrices.',7),
  (8,'odio',8),
  (9,'tincidunt',9),
  (10,'Integer',10);

INSERT INTO phone (id,phoneno)
VALUES
  (1,'455839225514'),
  (2,'433653452749'),
  (3,'712933633543'),
  (4,'817741525448'),
  (5,'658459469411'),
  (6,'421640197263'),
  (7,'426108508510'),
  (8,'681188813868'),
  (9,'648454262569'),
  (10,'256748677304');

INSERT INTO person_phone (person_id,phone_id)
VALUES
  (1,1),
  (2,2),
  (3,3),
  (4,4),
  (5,5),
  (6,6),
  (7,7),
  (8,8),
  (9,9),
  (10,10);

INSERT INTO student_lessonschedule (lessonid,student_id)
VALUES
  (1,1),
  (2,2),
  (3,3),
  (4,4),
  (5,5),
  (6,6),
  (7,7),
  (8,8),
  (9,9),
  (10,10);

INSERT INTO rental (id,startdate,enddate,instrument_id,student_id)
VALUES
  (1,'Nov 12, 2022','Dec 28, 2022',1,1),
  (2,'Nov 24, 2022','Dec 20, 2022',2,2),
  (3,'Nov 13, 2022','Dec 17, 2022',3,3),
  (4,'Nov 15, 2022','Dec 19, 2022',4,4),
  (5,'Nov 28, 2022','Dec 4, 2022',5,5),
  (6,'Nov 21, 2022','Dec 10, 2022',6,6),
  (7,'Nov 9, 2022','Dec 9, 2022',7,7),
  (8,'Nov 21, 2022','Dec 4, 2022',8,8),
  (9,'Nov 7, 2022','Dec 6, 2022',9,9),
  (10,'Nov 18, 2022','Dec 30, 2022',10,10);


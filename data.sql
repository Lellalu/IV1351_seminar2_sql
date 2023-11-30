INSERT INTO person (id,person_number,name,city,zip,street)
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

INSERT INTO lesson_price (id,type,level,price_amount,start_time,end_time)
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

INSERT INTO instrument_stock (id,brand,type,quantity,rented_price_per_month)
VALUES
  (1,'Curran','Caleb',8,10),
  (2,'Duncan','Yoko',10,12),
  (3,'Basil','Garrison',3,15),
  (4,'Maryam','Ferdinand',1,17),
  (5,'Yuli','Reuben',9,20),
  (6,'Barclay','Carlos',2,18),
  (7,'Ethan','Nelle',0,11),
  (8,'Tamara','Elliott',4,13),
  (9,'Lillian','Isabelle',9,14),
  (10,'Kylynn','Phelan',2,16);

INSERT INTO instructor (id,instruments_taught,person_id)
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

INSERT INTO student (id,person_id,contact_person_phone)
VALUES
  (1,1,'700142335194'),
  (2,2,'862816876623'),
  (3,3,'834066242681'),
  (4,4,'901727622753'),
  (5,5,'306441459681'),
  (6,6,'738341901265'),
  (7,7,'216497866266'),
  (8,8,'624667284758'),
  (9,9,'076570255459'),
  (10,10,'406964456164');

INSERT INTO sibling (student_id,sibling_id)
VALUES
  (1,2),
  (1,3),
  (4,5),
  (7,8);

INSERT INTO lesson_schedule (id,start_time,end_time,instructor_id,price_id)
VALUES
  (1,'Jan 12, 2022','Aug 31, 2022',1,1),
  (2,'Mar 5, 2022','Jul 24, 2022',2,2),
  (3,'Jun 20, 2022','Sep 7, 2022',3,3),
  (4,'Jan 23, 2022','Jul 16, 2022',4,4),
  (5,'May 14, 2022','Jul 2, 2022',5,5),
  (6,'Mar 7, 2022','Nov 28, 2022',6,6),
  (7,'Feb 16, 2022','Nov 6, 2022',7,7),
  (8,'Jun 29, 2022','Dec 21, 2022',8,8),
  (9,'Apr 1, 2022','Aug 23, 2022',9,9),
  (10,'Apr 5, 2022','Sep 27, 2022',10,10);

INSERT INTO lesson_capacity (id,max,min,lesson_id)
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

INSERT INTO lesson_genre (id,genre,lesson_id)
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

INSERT INTO lesson_instrument (id,taught_instrument,lesson_id)
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

INSERT INTO phone (id,phone_no)
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

INSERT INTO student_lesson_schedule (lesson_id,student_id)
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

INSERT INTO rental (id,start_date,end_date,instrument_id,student_id)
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


use health;

-- insertion of data in client table
insert into client(client_id, first_name, Last_name, DOB, age, gender, phone_no, email, nationality)
 values(1001,'john','wick','1993-08-21',30,'M',6055343640,'john@34gmail.com','canadian');
insert into client(client_id, first_name, Last_name, DOB, age, gender, phone_no, email, nationality)
 values(1002,'cristine','perk','1989-08-22',34,'F',3391318520,'cristine@34gmail.com','colombian');
insert into client(client_id, first_name, Last_name, DOB, age, gender, phone_no, email, nationality)
 values(1003,'priya','darshan','1997-01-20',26,'M',6495648160,'priya@34gmail.com','nepali');
insert into client(client_id, first_name, Last_name, DOB, age, gender, phone_no, email, nationality)
 values(1004,'riya','chand','1995-08-21',28,'F',4891668300,'riya@34gmail.com','nepali');
insert into client(client_id, first_name, Last_name, DOB, age, gender, phone_no, email, nationality)
 values(1005,'sita','bist','1959-03-30',64,'F',1263470800,'sita@34gmail.com','indian');
insert into client(client_id, first_name, Last_name, DOB, age, gender, phone_no, email, nationality)
 values(1006,'ram','bohara','1937-11-04',85,'M',5289184870,'ram@34gmail.com','indian');
insert into client(client_id, first_name, Last_name, DOB, age, gender, phone_no, email, nationality)
 values(1007,'aakash','joshi','1972-05-26',51,'M',3590505830,'aakash@34gmail.com','indian');
insert into client(client_id, first_name, Last_name, DOB, age, gender, phone_no, email, nationality)
 values(1008,'karan','karki','1980-08-24',43,'M',1615439610,'karan@34gmail.com','nepali');
insert into client(client_id, first_name, Last_name, DOB, age, gender, phone_no, email, nationality)
 values(1009,'jiya','karki','1987-04-23',36,'F',6281536630,'jiya@34gmail.com','nepali');
insert into client(client_id, first_name, Last_name, DOB, age, gender, phone_no, email, nationality)
 values(1010,'sakshi','karki','2007-08-18',16,'F',2552087640,'sakshi@34gmail.com','nepali');
insert into client(client_id, first_name, Last_name, DOB, age, gender, phone_no, email, nationality)
 values(1011,'priyansu','kunwar','2003-02-03',21,'M',4059542630,'priyansu@34gmail.com','indian');
insert into client(client_id, first_name, Last_name, DOB, age, gender, phone_no, email, nationality)
 values(1012,'diya','rai','1989-02-04',35,'F',4807314010,'diya@34gmail.com','nepali');
insert into client(client_id, first_name, Last_name, DOB, age, gender, phone_no, email, nationality)
 values(1013,'jitesh','kaur','1997-02-14',27,'M',241364045,'jitesh@34gmail.com','nepali');
insert into client(client_id, first_name, Last_name, DOB, age, gender, phone_no, breed)
 values(1014,'george','karki','2021-01-14',2,'F',1615439610,'cat');
insert into client(client_id, first_name, Last_name, DOB, age, gender, phone_no, email, nationality)
 values(1015,'mary','wick','1998-08-20',25,'F',3189404840,'mary@34gmail.com','canadian');
insert into client(client_id, first_name, Last_name, DOB, age, gender, phone_no, breed)
 values(1016,'jojo','darshan','2019-08-15',4,'M',6495648160,'dog');
 insert into client(client_id, first_name, Last_name, DOB, age, gender, phone_no, nationality)
 values(1017,'july','wick','2018-10-20',5,'F',3189404840,'canadian');


-- insertion of data in insurance table
insert into insurance values(001,'adult health insurance',1,120,1680);
insert into insurance values(002,'adult international health insurance',1,140,1800);
insert into insurance values(003,'family health insurance',1,180,2400);
insert into insurance values(004,'family premium health insurance',1,190,3600);
insert into insurance values(005,'senior health insurance',1,150,1440);
insert into insurance values(006,'senior health plan',1,140,1200);
insert into insurance values(007,'maternity health insurance',1,120,1200);
insert into insurance values(008,'unit-linked health insurance',10,200,1440);
insert into insurance values(009,'child health insurance',1,200,960);
insert into insurance values(010,'international student health insurance',1,200,9600);
insert into insurance values(011,'employee group health insurance',0.5,150,500);
insert into insurance values(012,'disability health insurance',1,150,9600);
insert into insurance values(013,'dental coverage',1,100,500);
insert into insurance values(014,'vision coverage',1,100,350);
insert into insurance values(015,'pet health insurance',1,150,330);
insert into insurance values(016,'family international health insurance',1,300,4200);


-- insertion of data in employee table
insert into employee values(111,'sahil','bist','1995-05-30',28,2400,'M','sahil45@gmail.com',6645054968,663605563,'2015-01-03',null,10,601);
insert into employee values(222,'prerak','bhatta','1996-06-12',27,2000,'M','prera45@gmail.com',4772774232,387592430,'2016-02-05',null,12,609);
insert into employee values(333,'gopal','singh','1994-05-01',29,1500,'M','gopal45@gmail.com',7997161718,257942527,'2016-04-03','2020-01-17',17,610);
insert into employee values(444,'utkarsh','rai','1993-06-02',30,3000,'M','utkar45@gmail.com',2663841001,844185426,'2016-01-30','2021-01-30',19,601);
insert into employee values(555,'mahesh','kaur','1990-10-03',33,2500,'M','mahes45@gmail.com',336013397,187080601,'2020-06-03','2022-01-05',10,609);
insert into employee values(666,'mukesh','prajapati','1990-06-04',33,4500,'M','mukes45@gmail.com',3190596654,680071267,'2016-01-03',null,15,610);
insert into employee values(777,'puja','bohara','1999-07-05',24,4400,'F','pujab45@gmail.com',6180128383,506075827,'2015-09-03',null,17,601);
insert into employee values(888,'kulveer','kaur','2003-09-13',20,5000,'F','kulve45@gmail.com',5613794035,239627336,'2023-04-05',null,15,609);
insert into employee values(999,'komal','kaur','2002-08-19',21,6000,'F','komal45@gmail.com',6685098021,323509692,'2023-03-06',null,17,610);
insert into employee values(1110,'raksheya','paneru','1995-06-06',28,2800,'F','raksh45@gmail.com',6419205360,614093287,'2015-01-03',null,10,601);


-- insertion of data in payment table
insert into payment values(901,245,'2023-01-30',1004,002,603);
insert into payment values(902,166,'2023-02-05',1008,004,601);
insert into payment values(903,316,'2022-04-13',1003,015,610);
insert into payment values(904,234,'2022-06-18',1015,009,601);
insert into payment values(905,265,'2023-08-19',1001,007,601);
insert into payment values(906,156,'2023-08-18',1011,001,606);


-- insertion of data in branch table
insert into branch values(601,'toronto','canada','m1l z23');
insert into branch values(602,'oshawa','canada','m2s g34');
insert into branch values(603,'york','canada','m4f y78');
insert into branch values(604,'ottawa','canada','m1l z24');
insert into branch values(605,'richmond hill','canada','m2s g35');
insert into branch values(606,'kathmandu','nepal','m4f y79');
insert into branch values(607,'mumbai','india','m1l z25');
insert into branch values(608,'los angeles','usa','m2s g36');
insert into branch values(609,'chicago','usa','m4f y80');
insert into branch values(610,'markham','usa','m1l z26');


-- insertion of data in department table
insert into department values(10,'claims');
insert into department values(11,'manager');
insert into department values(12,'sales department');
insert into department values(13,'data analyst');
insert into department values(14,'compliance officers');
insert into department values(15,'customer service');
insert into department values(16,'security');
insert into department values(17,'policy administration');
insert into department values(18,'underwriters');
insert into department values(19,'medical professionals');


-- insertion of data in relation table
insert into relation values(401,'spouse',1001,1015,007);
insert into relation values(402,'spouse',1008,1009,004);
insert into relation values(403,'daughter',1008,1010,004);
insert into relation values(404,'pet',1008,1014,015);
insert into relation values(405,'pet',1003,1016,015);
insert into relation values(406,'daughter',1015,1017,009);


-- insertion of data in claim table
insert into claim values(201,50,'2023-05-20','car accident',1006,005,null);
insert into claim values(202,30,'2022-08-20','dog bite',1013,001,555);
insert into claim values(203,45,'2022-10-30','dengue',1010,004,1110);
insert into claim values(204,85,'2023-03-10','corona',1003,004,111);
insert into claim values(205,150,'2023-01-01','pnemonia',1011,002,null);
insert into claim values(206,100,'2023-07-15','typhoid',1011,002,555);


-- insertion of data in client_insurance table
insert into client_insurance values(301,1320,default,'2024-08-14',1001,007);
insert into client_insurance values(302,1160,default,'2024-10-21',1015,009);
insert into client_insurance values(303,2580,'2023-01-01','2024-01-01',1008,003);
insert into client_insurance values(304,480,'2022-09-29','2023-09-29',1008,015);
insert into client_insurance values(305,480,default,'2024-08-14',1003,015);
insert into client_insurance values(306,1590,'2022-12-22','2023-12-22',1006,005);


-- insertion of data in client_employee table
insert into client_employee values(701,'2022-09-29',1008,015,777);
insert into client_employee values(702,default,1003,001,333);
insert into client_employee values(703,default,1003,015,999);
insert into client_employee values(704,'2022-12-22',1006,005,333);
insert into client_employee values(705,default,1008,003,999);
insert into client_employee values(706,'2023-02-14',1002,002,999);


-- insertion of data in insurance_branch table
insert into insurance_branch values(801,013,601);
insert into insurance_branch values(802,007,606);
insert into insurance_branch values(803,010,610);
insert into insurance_branch values(804,009,605);
insert into insurance_branch values(805,011,606);
insert into insurance_branch values(806,012,601);
insert into insurance_branch values(807,005,610);
insert into insurance_branch values(808,002,601);
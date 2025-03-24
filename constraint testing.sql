use health;

-- constraint testing statements

-- constraint testing statements of client table
-- checking all the not null constraints
insert into client(client_id, first_name, Last_name, DOB, age, gender, phone_no, email, nationality)
 values(null,'john','swift','1993-01-02',30,'M',2345678910,'john@34gmail.com','canadian');-- nullifying client_id
insert into client(client_id, first_name, Last_name, DOB, age, gender, phone_no, email, nationality)
 values(1018,null,'swift','1993-01-02',30,'M',2345678910,'johns@34gmail.com','canadian'); -- nullifying first_name
insert into client(client_id, first_name, Last_name, DOB, age, gender, phone_no, email, nationality)
 values(1018,'john',null,'1993-01-02',30,'M',2345678910,'johns@34gmail.com','canadian');-- nullifying last_name
insert into client(client_id, first_name, Last_name, DOB, age, gender, phone_no, email, nationality)
 values(1018,'john','swift',null,30,'M',2345678910,'johns@34gmail.com','canadian');-- nullifying DOB
insert into client(client_id, first_name, Last_name, DOB, age, gender, phone_no, email, nationality)
 values(1018,'john','swift','1993-01-02',null,'M',2345678910,'johns@34gmail.com','canadian');-- nullifying age
insert into client(client_id, first_name, Last_name, DOB, age, gender, phone_no, email, nationality)
 values(1018,'john','swift','1993-01-02',30,null,2345678910,'johns@34gmail.com','canadian');-- nullifying gender
insert into client(client_id, first_name, Last_name, DOB, age, gender, phone_no, email, nationality)
 values(1018,'john','swift','1993-01-02',30,'M',null,'johns@34gmail.com','canadian');-- nullifying phone_no

-- checking primary key
insert into client(client_id, first_name, Last_name, DOB, age, gender, phone_no, email, nationality)
 values(1011,'john','swift','1993-01-02',30,'M',2345678910,'johns@34gmail.com','canadian');-- checking duplicate key entry
 
 -- checking unique key
insert into client(client_id, first_name, Last_name, DOB, age, gender, phone_no, email, nationality)
 values(1018,'john','swift','1993-01-02',30,'M',2345678910,'john@34gmail.com','canadian');-- checking cli_eml_uk
 
-- checking check constraints
insert into client(client_id, first_name, Last_name, DOB, age, gender, phone_no, email, nationality)
 values(1018,'john','swift','1993-01-02',30,'T',2345678910,'johns@34gmail.com','canadian');-- checking cli_gen_ck
insert into client(client_id, first_name, Last_name, DOB, age, gender, phone_no, email)
 values(1018,'john','swift','1993-01-02',30,'M',2345678910,'johns@34gmail.com');-- checking cli_nat_brd_ck
 


-- constraint testing statements of insurance table
-- checking all the not null constraints
insert into insurance values(null,'travel insurance',1,120,600);-- nullifying insurance_id
insert into insurance values(017,null,1,120,600);-- nullifying insurannce_name
insert into insurance values(017,'travel insurance',null,120,600);-- nullifying duration
insert into insurance values(017,'travel insurance',1,null,600);-- nullifying deductible
insert into insurance values(017,'travel insurance',1,120,null);-- nullifying yearly_payment

-- checking the primary key
insert into insurance values(001,'travel insurance',1,120,600);-- duplicate entry in insurance_id

-- checking default constraint
insert into insurance values(017,'travel insurance',default,120,600);-- checking default in duration
select * from insurance where insurance_id=017;



-- constraint testing statements of employee table
-- checking all the not null constraints
insert into employee values(null,'mira','das','1996-03-06',27,3000,'F','mira45@gmail.com',1234567890,987654321,'2015-01-03',null,10,601);-- nullifying employee_id
insert into employee values(1111,null,'das','1996-03-06',27,3000,'F','mira45@gmail.com',1234567890,987654321,'2015-01-03',null,10,601);-- nullifying first_name
insert into employee values(1111,'mira',null,'1996-03-06',27,3000,'F','mira45@gmail.com',1234567890,987654321,'2015-01-03',null,10,601);-- nullifying last_name
insert into employee values(1111,'mira','das',null,27,3000,'F','mira45@gmail.com',1234567890,987654321,'2015-01-03',null,10,601);-- nullifying DOB
insert into employee values(1111,'mira','das','1996-03-06',null,3000,'F','mira45@gmail.com',1234567890,987654321,'2015-01-03',null,10,601);-- nullifying age
insert into employee values(1111,'mira','das','1996-03-06',27,null,'F','mira45@gmail.com',1234567890,987654321,'2015-01-03',null,10,601);-- nullifying salary
insert into employee values(1111,'mira','das','1996-03-06',27,3000,null,'mira45@gmail.com',1234567890,987654321,'2015-01-03',null,10,601);-- nullifying gender
insert into employee values(1111,'mira','das','1996-03-06',27,3000,'F','mira45@gmail.com',null,987654321,'2015-01-03',null,10,601);-- nullifying phone_no
insert into employee values(1111,'mira','das','1996-03-06',27,3000,'F','mira45@gmail.com',1234567890,null,'2015-01-03',null,10,601);-- nullifying soc_sec_no
insert into employee values(1111,'mira','das','1996-03-06',27,3000,'F','mira45@gmail.com',1234567890,987654321,null,null,10,601);-- nullifying hire_date
insert into employee values(1111,'mira','das','1996-03-06',27,3000,'F','mira45@gmail.com',1234567890,987654321,'2015-01-03',null,null,601);-- nullifying department_id
insert into employee values(1111,'mira','das','1996-03-06',27,3000,'F','mira45@gmail.com',1234567890,987654321,'2015-01-03',null,10,null);-- nullifying branch_id

-- checking the primary key
insert into employee values(111,'mira','das','1996-03-06',27,3000,'F','mira45@gmail.com',1234567890,987654321,'2015-01-03',null,10,601);-- checking duplicate entry employee_id

-- checking all the default constraint
insert into employee values(1111,'mira','das','1996-03-06',27,3000,'F','mira45@gmail.com',1234567890,987654321,default,null,10,601);
select * from employee where employee_id=1111;

-- checking the unique key
insert into employee values(1112,'miral','das','1996-02-06',27,3000,'F','komal45@gmail.com',1234567890,987654321,'2015-01-03',null,10,601);-- checking emp_eml_uk
insert into employee values(1112,'miral','das','1996-02-06',27,3000,'F','miral45@gmail.com',1234567890,614093287,'2015-01-03',null,10,601);-- checking emp_ssc_uk

-- checking the check constraint
insert into employee values(1112,'miral','das','1996-02-06',27,3000,'T','mira45@gmail.com',1234567890,987654321,'2015-01-03',null,10,601);-- checking emp_gen_ck

-- checking all the foriegn keys
insert into employee values(1112,'miral','das','1996-02-06',27,3000,'F','mira45@gmail.com',1234567890,987654321,'2015-01-03',null,21,601);-- checking emp_dep_id_fk
insert into employee values(1112,'miral','das','1996-02-06',27,3000,'F','mira45@gmail.com',1234567890,987654321,'2015-01-03',null,10,665);-- checking emp_brn_id_fk



-- constraint testing statements of payment table
-- checking all the not null constraints
insert into payment values(null,166,'2023-02-05',1008,004,601);-- nullifying payment_id
insert into payment values(907,null,'2023-02-05',1008,004,601);-- nullifying payment_amt
insert into payment values(907,166,null,1008,004,601);-- nullifying payment_date
insert into payment values(907,166,'2023-02-05',null,004,601);-- nullifying client_id
insert into payment values(907,166,'2023-02-05',1008,null,601);-- nullifying insurance_id
insert into payment values(907,166,'2023-02-05',1008,004,null);-- nullifying branch_id

-- checking the primary key
insert into payment values(902,166,default,1008,004,601);-- entering the duplicate entry for payment_id

-- checking all the default constraint
insert into payment values(907,166,default,1008,004,601);
select * from payment where payment_id = 907;

-- checking all the foriegn keys
insert into payment values(908,166,default,1020,004,601);-- checking pay_cli_id_fk
insert into payment values(908,166,default,1008,020,601);-- checking pay_ins_id_fk
insert into payment values(908,166,default,1008,004,661);-- checking pay_brn_id_fk



-- constraint testing statements of branch table
-- checking all the not null constraints
insert into branch values(null,'delhi','india','m1a z23');-- nullifying branch_id
insert into branch values(611,null,'india','m1a z23');-- nullifying city
insert into branch values(611,'delhi',null,'m1a z23');-- nullifying country
insert into branch values(611,'delhi','india',null);-- nullifying postal_code

-- checking the primary key
insert into branch values(601,'delhi','india','m1a z23');-- duplicate entry for branch_id

-- checking all the unique keys
insert into branch values(611,'delhi','india','m1l z23');-- checking brn_poc_uk



-- constraint testing statements of department table
-- checking all the not null constraints
insert into department values(null,'IT department');-- nullifying department_id
insert into department values(20,null);-- nullifying department_name

-- checking the primary key
insert into department values(10,'IT department');-- duplicate entry for department_id



-- constraint testing statements of relation table
-- checking all the not null constraints
insert into relation values(null,'brother',1008,1007,004);-- nullifying relation_id
insert into relation values(407,null,1008,1007,004);-- nullifying relation_name
insert into relation values(407,'brother',null,1007,004);-- nullifying client_id
insert into relation values(407,'brother',1008,null,004);-- nullifying insurance_id
insert into relation values(407,'brother',1008,1007,null);-- nullifying relative_id

-- checking the primary key
insert into relation values(401,'brother',1008,1007,004);-- duplicate entry for relation_id

-- checking all the foriegn keys
insert into relation values(408,'brother',1020,1007,004);-- checking rel_cli_id_fk
insert into relation values(408,'brother',1008,1020,004);-- checking rel_rel_id_fk
insert into relation values(408,'brother',1008,1007,020);-- checking rel_ins_id_fk



-- constraint testing statements of claim table
-- checking all the not null constraints
insert into claim values(null,100,default,'typhoid',1007,004,555);-- nullifying claim_id
insert into claim values(207,null,default,'typhoid',1007,004,555);-- nullifying claim_amount
insert into claim values(207,100,null,'typhoid',1007,004,555);-- nullifying claim_date
insert into claim values(207,100,default,null,1007,004,555);-- nullifying reason
insert into claim values(207,100,default,'typhoid',null,004,555);-- nullifying client_id
insert into claim values(207,100,default,'typhoid',1007,null,555);-- nullifying insurance_id

-- checking the primary key
insert into claim values(204,100,default,'typhoid',1007,004,555);-- duplicate entry for claim_id

-- checking all the default constraint
insert into claim values(207,100,default,'typhoid',1007,004,555);
select * from claim where claim_id=207;

-- checking the foreign keys
insert into claim values(208,150,default,'bone broken',1020,004,555);-- checking clm_cli_id_fk
insert into claim values(208,150,default,'bone broken',1009,004,2222);-- checking clm_emp_id_fk
insert into claim values(208,150,default,'bone broken',1004,020,555);-- checking clm_ins_id_fk



-- constraint testing statements of client_insurance table
-- checking all the not null constraints
insert into client_insurance values(null,1800,'2023-02-22','2024-02-22',1003,001);-- nullifying client_insurance_id
insert into client_insurance values(307,null,'2023-02-22','2024-02-22',1003,001);-- nullifying amount_plan
insert into client_insurance values(307,1800,null,'2024-02-22',1003,001);-- nullifying start_date
insert into client_insurance values(307,1800,'2023-02-22',null,1003,001);-- nullifying end_date
insert into client_insurance values(307,1800,'2023-02-22','2024-02-22',null,001);-- nullifying client_id
insert into client_insurance values(307,1800,'2023-02-22','2024-02-22',1003,null);-- nullifying insurance_id

-- checking the primary key
insert into client_insurance values(306,1800,'2023-02-22','2024-02-22',1003,001);-- duplicate entry for client_insurance_id

-- checking the default constraint
insert into client_insurance values(307,1800,default,'2024-02-22',1003,001);
select * from client_insurance where client_insurance_id=307;

-- checking the foreign keys
insert into client_insurance values(308,1800,default,'2024-02-22',1020,001);-- checking cli_ins_cli_id_fk
insert into client_insurance values(308,1800,default,'2024-02-22',1003,020);-- checking cli_ins_ins_id_fk



-- constraint testing statements of client_employee table
-- checking all the not null constraints
insert into client_employee values(null,default,1003,001,777);-- nullifying client_employee_id
insert into client_employee values(707,null,1003,001,777);-- nullifying issue_date
insert into client_employee values(707,default,null,001,777);-- nullifying client_id
insert into client_employee values(707,default,1003,null,777);-- nullifying insurance_id
insert into client_employee values(707,default,1003,001,null);-- nullifying employee_id

-- checking the primary key
insert into client_employee values(706,default,1003,001,777);-- duplicate entry for client_employee_id

-- checking the default constraint
insert into client_employee values(707,default,1003,001,777);
select * from client_employee where client_employee_id=707;

-- checking the foreign keys
insert into client_employee values(708,default,1020,001,777);-- checking cli_emp_cli_id_fk
insert into client_employee values(708,default,1003,020,777);-- checking cli_emp_emp_id_fk
insert into client_employee values(708,default,1003,001,117);-- checking cli_emp_ins_id_fk



-- constraint testing statements of insurance_branch table
-- checking all the not null constraints
insert into insurance_branch values(null,001,601);-- nullifying insurance_branch_id
insert into insurance_branch values(809,null,601);-- nullifying insurance_branch_id
insert into insurance_branch values(809,001,null);-- nullifying insurance_branch_id

-- checking the primary key
insert into insurance_branch values(808,001,601);-- nullifying insurance_branch_id

-- checking the foreign keys
insert into insurance_branch values(810,020,601);-- checking ins_brn_brn_id_fk
insert into insurance_branch values(810,001,701);-- checking ins_brn_ins_id_fk
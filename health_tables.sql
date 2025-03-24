-- creating a schema (DDL statements)
create schema health;

-- using schema
use health;

-- creating table client with not null, default and primary key defined
create table client(
client_id int(8) not null,
first_name varchar(15) not null,
last_name varchar(15) not null,
DOB date not null,
age int(2) not null,
gender char(1) not null,
phone_no bigint(10) not null,
email varchar(20),
nationality char(10),
breed char(10),
constraint cli_cli_id_pk
primary key(client_id));

-- creating table insurance with not null, default and primary key defined
create table insurance(
insurance_id int(4) not null,
insurance_name varchar(50)  not null,
duration decimal(2) not null default(1),
deductible int(6) not null,
yearly_payment int(6) not null,
constraint ins_ins_id_pk
primary key(insurance_id));

-- creating table employee with not null, default and primary key defined
create table employee(
employee_id int(8) not null,
first_name varchar(15) not null,
last_name varchar(15) not null,
DOB date not null,
age int(2) not null,
salary int(8) not null,
gender char(1) not null,
email varchar(20),
phone_no bigint(10) not null,
soc_sec_no bigint(10) not null,
hire_date date not null default(current_date()),
resignation_date date,
department_id int(8) not null,
branch_id int(8) not null,
constraint emp_emp_id_pk
primary key(employee_id));

-- creating table payment with not null, default and primary key defined
create table payment(
payment_id int(5) not null,
payment_amt int(7) not null,
payment_date date not null default(curdate()),
client_id int(8) not null,
insurance_id int(4) not null,
branch_id int(8) not null,
constraint pay_pay_id_pk
primary key(payment_id));

-- creating table branch with not null and primary key defined
create table branch(
branch_id int(8) not null,
city char(30) not null,
country char(10) not null,
postal_code varchar(7) not null,
constraint brn_brn_id_pk
primary key(branch_id));

-- creating table department with not null and primary key defined
create table department(
department_id int(8) not null,
department_name varchar(30) not null,
constraint dep_dep_id_pk
primary key(department_id));

-- creating table relation with not null and primary key defined
create table relation(
relation_id int(8) not null,
relation_name varchar(30) not null,
client_id int(8) not null,
relative_id int(8) not null,
insurance_id int(4) not null,
constraint rel_rel_id_pk
primary key(relation_id));

-- creating table claim with not null, default and primary key defined
create table claim(
claim_id int(8) not null,
claim_amount int(6) not null,
claim_date date not null default(curdate()),
reason varchar(50) not null,
client_id int(8) not null,
insurance_id int(4) not null,
employee_id int(8),
constraint clm_clm_id_pk
primary key(claim_id));

-- creating table client_insurance with not null, default and primary key defined
create table client_insurance(
client_insurance_id int(8) not null,
amount_plan int(6) not null,
start_date date not null default(curdate()),
end_date date not null default(curdate()),
client_id int(8) not null,
insurance_id int(4) not null,
constraint cli_ins_cli_ins_id_pk
primary key(client_insurance_id));

-- creating table client_employee with not null, default and primary key defined
create table client_employee(
client_employee_id int(8) not null, 
issue_date date not null default(curdate()),
client_id int(8) not null,
insurance_id int(4) not null,
employee_id int(8)  not null,
constraint cli_emp_cli_emp_id_pk
primary key(client_employee_id));

-- creating table insurance_branch with not null and primary key defined
create table insurance_branch(
insurance_branch_id int(8) not null,
insurance_id int(4) not null,
branch_id int(8) not null,
constraint ins_brn_ins_brn_id_pk
primary key(insurance_branch_id));
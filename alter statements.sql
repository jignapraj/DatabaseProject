-- DDL statements
use health;

-- declaring all (check, unique,) the constraints of client table
-- declaring check constraint for gender
alter table client
add constraint cli_gen_ck
check (gender in ('M','F'));

-- declaring unique constraint for email
alter table client
add constraint cli_eml_uk
unique (email);

-- declaring optionality between nationality and breed
alter table client
add constraint cli_nat_brd_ck
check ((nationality is null and breed is not null) or (nationality is not null and breed is null));


-- declaring all the constraints of employee table
-- declaring unique constraint for soc_sec_no
alter table employee
add constraint emp_ssc_uk
unique (soc_sec_no);

-- declaring check constraint for gender
alter table employee
add constraint emp_gen_ck
check (gender in ('M','F'));

-- declaring unique constraint for email
alter table employee
add constraint emp_eml_uk
unique (email);


-- declaring all the constraints of branch table
-- declaring unique constraint for postal_code
alter table branch
add constraint brn_poc_uk
unique (postal_code);



-- declaring all the foreign keys of the respective tables

-- declaring foreign keys of employee table
-- declaring department_id's constraint
alter table employee
add constraint emp_dep_id_fk
foreign key(department_id)
references department(department_id);

-- declaring branch_id's constraint
alter table employee
add constraint emp_brn_id_fk
foreign key(branch_id)
references branch(branch_id);


-- declaring foreign keys of payment table
-- declaring client_id's constraint
alter table payment
add constraint pay_cli_id_fk
foreign key(client_id)
references client(client_id);

-- declaring insurance_id's constraint
alter table payment
add constraint pay_ins_id_fk
foreign key(insurance_id)
references insurance(insurance_id);

-- declaring branch_id's constraint
alter table payment
add constraint pay_brn_id_fk
foreign key(branch_id)
references branch(branch_id);


-- declaring foreign keys of relation table
-- declaring client_id's constraint
alter table relation
add constraint rel_cli_id_fk
foreign key(client_id)
references client(client_id);

-- declaring relative_id's constraint
alter table relation
add constraint rel_rel_id_fk
foreign key(relative_id)
references client(client_id);

-- declaring insurance_id's constraint
alter table relation
add constraint rel_ins_id_fk
foreign key(insurance_id)
references insurance(insurance_id);


-- declaring foreign keys of claim table
-- declaring client_id's constraint
alter table claim
add constraint clm_cli_id_fk
foreign key(client_id)
references client(client_id);

-- declaring relative_id's constraint
alter table claim
add constraint clm_emp_id_fk
foreign key(employee_id)
references employee(employee_id);

-- declaring insurance_id's constraint
alter table claim
add constraint clm_ins_id_fk
foreign key(insurance_id)
references insurance(insurance_id);


-- declaring foreign keys of client_insurance table
-- declaring client_id's constraint
alter table client_insurance
add constraint cli_ins_cli_id_fk
foreign key(client_id)
references client(client_id);

-- declaring insurance_id's constraint
alter table client_insurance
add constraint cli_ins_ins_id_fk
foreign key(insurance_id)
references insurance(insurance_id);


-- declaring foreign keys of client_employee table
-- declaring client_id's constraint
alter table client_employee
add constraint cli_emp_cli_id_fk
foreign key(client_id)
references client(client_id);

-- declaring employee_id's constraint
alter table client_employee
add constraint cli_emp_emp_id_fk
foreign key(employee_id)
references employee(employee_id);

-- declaring insurance_id's constraint
alter table client_employee
add constraint cli_emp_ins_id_fk
foreign key(insurance_id)
references insurance(insurance_id);


-- declaring foreign keys of insurance_branch table
-- declaring client_id's constraint
alter table insurance_branch
add constraint ins_brn_brn_id_fk
foreign key(branch_id)
references branch(branch_id);

-- declaring insurance_id's constraint
alter table insurance_branch
add constraint ins_brn_ins_id_fk
foreign key(insurance_id)
references insurance(insurance_id);
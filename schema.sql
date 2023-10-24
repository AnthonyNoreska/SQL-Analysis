CREATE TABLE departments(
    dept_no varchar(4) primary key,
    dept_name varchar(40) NOT NULL
);

CREATE TABLE titles(
    title_id varchar(5) primary key,
    title varchar(40) NOT NULL
);

CREATE TABLE employees(
    emp_no int primary key,
    emp_title_id varchar(5) NOT NULL,
    birth_date varchar(20) NOT NULL,
    first_name varchar(16) NOT NULL,
    last_name varchar(16) NOT NULL,
    sex varchar(1) NOT NULL,
    hire_date varchar(20) NOT NULL,
    foreign key(emp_title_id) references titles(title_id)
);

CREATE TABLE dept_emp(
    emp_no int NOT NULL,
    dept_no varchar(4) NOT NULL,
    primary key(emp_no, dept_no),
    foreign key(emp_no) references employees(emp_no),
    foreign key(dept_no) references departments(dept_no) 
);

CREATE TABLE dept_manager(
    dept_no varchar(4) NOT NULL,
    emp_no int NOT NULL,
    primary key(dept_no, emp_no),
    foreign key(emp_no) references employees(emp_no),
    foreign key(dept_no) references departments(dept_no) 
);

CREATE TABLE salaries(
    emp_no int NOT NULL,
    salary int NOT NULL,
    primary key(emp_no, salary),
    foreign key(emp_no) references employees(emp_no)
);

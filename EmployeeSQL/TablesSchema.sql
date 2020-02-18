CREATE TABLE departments (
  dept_no int,
  dept_name VARCHAR(30) NOT NULL,
	PRIMARY KEY (dept_no)
);
 
select * from departments

CREATE TABLE Employees (
    emp_no int,
    birth_date date   NOT NULL,
    first_name varchar(35)   NOT NULL,
    last_name varchar(35)   NOT NULL,
    gender varchar(1)   NOT NULL,
    hire_date date   NOT NULL,
   PRIMARY KEY (emp_no)
);

select * from Employees

CREATE TABLE titles (
    emp_no int,
    title varchar   NOT NULL,
    from_date date   NOT NULL,
    to_date date   NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

select * from titles

CREATE TABLE dept_emp (
    emp_no int,
    dept_no int,
    from_date date   NOT NULL,
    to_date date   NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

select * from dept_emp

CREATE TABLE salaries (
    emp_no int   NOT NULL,
    salary int   NOT NULL,
    from_date date   NOT NULL,
    to_date date   NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

select * from salaries

CREATE TABLE dept_manager (
    dept_no int,
    emp_no int   NOT NULL,
    from_date date   NOT NULL,
    to_date date   NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

select * from dept_manager
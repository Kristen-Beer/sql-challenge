--table schema

-- Create table departments
DROP TABLE departments

CREATE TABLE departments(
		dept_no VARCHAR(10) 
		,dept_name TEXT NOT NULL
		,PRIMARY KEY (dept_no)
);

select * from departments

--Create table titles
DROP TABLE titles

CREATE TABLE titles(
	title_id VARCHAR(10) NOT NULL
	,title TEXT NOT NULL
	,PRIMARY KEY (title_id)
);
select * from titles

--Create table employees
DROP TABLE employees

CREATE TABLE employees (
	emp_no INT NOT NULL
	,emp_title_id VARCHAR(10) NOT NULL 
	,nbirth_date DATE NOT NULL
	,first_name TEXT NOT NULL
	,last_name TEXT NOT NULL
	,sex VARCHAR(10) NOT NULL
	,hire_date DATE NOT NULL
	,PRIMARY KEY (emp_no)
	,FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
	
);
select * from employees

-- Create table dept_emp
DROP TABLE dept_emp

CREATE TABLE dept_emp (
	emp_no INT NOT NULL
	,dept_no VARCHAR(10) NOT NULL
	,PRIMARY KEY (emp_no, dept_no)
	,FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
	,FOREIGN KEY (dept_no) REFERENCES departments(dept_no)	
);
select * from dept_emp


-- Create table dept_managers
DROP TABLE dept_managers

CREATE TABLE dept_manager(
	dept_no VARCHAR(10) NOT NULL
	,emp_no INT NOT NULL
	,PRIMARY KEY (dept_no, emp_no)
	,FOREIGN KEY(dept_no) REFERENCES departments(dept_no)
	,FOREIGN KEY(emp_no) REFERENCES employees(emp_no)
);
select * from dept_manager

--Create table salaries
DROP TABLE salaries

CREATE TABLE salaries (
	emp_no INT NOT NULL
	,salary INT NOT NULL
	,PRIMARY KEY (emp_no, salary)
	,FOREIGN KEY(emp_no) REFERENCES employees(emp_no)
);
select * from salaries



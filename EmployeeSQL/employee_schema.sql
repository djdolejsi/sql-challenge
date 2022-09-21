-- Schema

-- Create tables for department CSV

DROP TABLE departments

CREATE TABLE departments(
	dept_no VARCHAR(10),
	dept_name VARCHAR(30) NOT NULL,
	PRIMARY KEY (dept_no)
);

SELECT * from departments

-- Create table for employees CSV

DROP TABLE employees

CREATE TABLE employees(
	emp_no INT NOT NULL,
	employee_title_id VARCHAR(10) NOT NULL,
	birth_date Date NOT NULL,
	first_name VARCHAR(30) NOT NULL,
	last_name VARCHAR(30) NOT NULL,
	sex VARCHAR(1) NOT NULL,
	hire_date Date NOT Null,
	PRIMARY KEY (emp_no),
	FOREIGN KEY (employee_title_id) REFERENCES titles(title_id)
);

SELECT * from employees

-- Create table for dept_emp CSV

DROP TABLE dept_emp

CREATE TABLE dept_emp(
	emp_no INT NOT NULL,
	dept_no VARCHAR(10) NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

SELECT * FROM dept_emp

-- Create table for dept_manager CSV

DROP TABLE dept_manager

CREATE TABLE dept_manager(
	emp_no INT NOT NULL,
	dept_no VARCHAR(10) NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

SELECT * FROM dept_manager

-- Create table for salaries CSV

DROP TABLE salaries

CREATE TABLE salaries(
	emp_no INT NOT NULL,
	salary INT NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

SELECT * FROM salaries

-- Create table for titles CSV

DROP TABLE titles

CREATE TABLE titles(
	title_id VARCHAR(10) NOT NULL,
	title VARCHAR(30) NOT NULL,
	PRIMARY KEY (title_id)
);

SELECT * FROM titles
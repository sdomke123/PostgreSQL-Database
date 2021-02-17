CREATE TABLE departments (
	dept_no VARCHAR(20),
	dept_name VARCHAR(50),
	PRIMARY KEY (dept_no)
);

CREATE TABLE dept_manager (
	dept_no VARCHAR (20),
	emp_no INT,
	PRIMARY KEY (emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments (dept_no)
);

CREATE TABLE dept_emp (
	emp_no INT,
	dept_no VARCHAR (20),
	PRIMARY KEY (emp_no, dept_no),
	FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no)
);

CREATE TABLE titles (
	title_id VARCHAR (20),
	title VARCHAR (50),
	PRIMARY KEY (title_id)
);

CREATE TABLE salaries (
	emp_no INT,
	salary INT,
	PRIMARY KEY (emp_no),
	FOREIGN KEY (emp_no) REFERENCES employees
);

CREATE TABLE employees (
	emp_no INT,
	emp_title_id VARCHAR(20),
	birth_date VARCHAR(20),
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	sex CHAR(1),
	hire_date VARCHAR(20),
	PRIMARY KEY (emp_no),
	FOREIGN KEY (emp_title_id) REFERENCES titles (title_id)
);
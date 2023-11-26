CREATE TABLE departments(
dept_no	 VARCHAR(4) NOT NULL PRIMARY KEY,
dept_name VARCHAR(20) NOT NULL
); 

CREATE TABLE titles(
title_id  VARCHAR(5) NOT NULL PRIMARY KEY,
title  VARCHAR(20) NOT NULL 
);

CREATE TABLE employees(
emp_no INT NOT NULL PRIMARY KEY,
emp_title_id  VARCHAR(5) REFERENCES titles(title_id),
birth_date DATE NOT NULL,
first_name VARCHAR(50) NOT NULL,
last_name VARCHAR(50) NOT NULL,
sex	VARCHAR(1) NOT NULL,
hire_date DATE NOT NULL
);

CREATE TABLE dept_emp(
emp_no INT NOT NULL REFERENCES employees(emp_no),
dept_no VARCHAR(4) NOT NULL REFERENCES departments(dept_no)
);

CREATE TABLE dept_manager(
dept_no	VARCHAR(4) NOT NULL REFERENCES departments(dept_no),
emp_no INT NOT NULL REFERENCES employees(emp_no)
);


CREATE TABLE salaries(
emp_no INT NOT NULL REFERENCES employees(emp_no),
salary INT NOT NULL
);


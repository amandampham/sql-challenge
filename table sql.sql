-- Create a new table ( 1/6 "deparments")
CREATE TABLE departments (
  dept_no VARCHAR(10) PRIMARY KEY,
  dept_name VARCHAR(30)
);

-- View table columns and datatypes
SELECT * FROM departments



-- have to create employees before references 
-- Create a new table ( 4/6 "employees")

CREATE TABLE employees (
 emp_no VARCHAR(30) NOT NULL PRIMARY KEY,
 emp_title_id VARCHAR(30),
 birth_date DATE,
 first_name VARCHAR(30), 
 last_name VARCHAR(30),
 sex VARCHAR(30),
 hire_date DATE
);
	-- View table columns and datatypes
	SELECT * FROM employees


-- Create a new table ( 2/6 "dept_emp")
CREATE TABLE dept_emp (
  emp_no VARCHAR(30) NOT NULL,
  dept_no VARCHAR(30),
  FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

		-- View table columns and datatypes
			SELECT * FROM dept_emp

-- Create a new table ( 3/6 "dept_emp")
CREATE TABLE dept_manager (
  dept_no VARCHAR(30),
  emp_no VARCHAR(30) NOT NULL,
FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);


		-- View table columns and datatypes
			SELECT * FROM dept_manager


-- Create a new table ( 5/6 "salaries")
CREATE TABLE salaries (
 emp_no VARCHAR(30),
  salary INT ,
 FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);


		-- View table columns and datatypes
			SELECT * FROM salaries

-- Create a new table ( 6/6 "titles")
CREATE TABLE titles (
 title_id VARCHAR(30) PRIMARY KEY,
 title VARCHAR(30)
);

-- View table columns and datatypes
SELECT * FROM titles




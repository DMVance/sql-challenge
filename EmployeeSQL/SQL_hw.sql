CREATE TABLE "titles" (
    "title_id" VARCHAR(10) NOT NULL PRIMARY KEY,
    "title" VARCHAR(50) NOT NULL
     );

CREATE TABLE "employees" (
    "emp_no" INT NOT NULL PRIMARY KEY,
    "emp_title_id" VARCHAR(6) NOT NULL,
    "birth_date" DATE NOT NULL,
    "first_name" VARCHAR(20) NOT NULL,
    "last_name" VARCHAR(20) NOT NULL,
    "sex" VARCHAR(1) NOT NULL,
    "hire_date" DATE NOT NULL
);

CREATE TABLE "departments" (
    "dept_no" VARCHAR(4) NOT NULL PRIMARY KEY,
    "dept_name" VARCHAR(50) NOT NULL
);

CREATE TABLE "dept_manager" (
    "emp_no" INT NOT NULL PRIMARY KEY,
    "dept_no" VARCHAR(4) NOT NULL
);

CREATE TABLE "dept_emp" (
    "dept_no" VARCHAR(4) NOT NULL,
    "emp_no" INT NOT NULL PRIMARY KEY
);

CREATE TABLE "salaries" (
    "emp_no" INT NOT NULL PRIMARY KEY,
    "salary" INT NOT NULL
);

ALTER TABLE "employees" ADD CONSTRAINT "fk_employees_emp_title_id" FOREIGN KEY("emp_title_id")
REFERENCES "titles" ("title_id");

ALTER TABLE "dept_manager" ADD CONSTRAINT "fk_dept_manager_emp_no" FOREIGN KEY("emp_no")
REFERENCES "employees" ("emp_no");

ALTER TABLE "dept_manager" ADD CONSTRAINT "fk_dept_manager_dept_no" FOREIGN KEY("dept_no")
REFERENCES "departments" ("dept_no");

ALTER TABLE "dept_emp" ADD CONSTRAINT "fk_dept_emp_emp_no" FOREIGN KEY("emp_no")
REFERENCES "employees" ("emp_no");

ALTER TABLE "dept_emp" ADD CONSTRAINT "fk_dept_emp_dept_no" FOREIGN KEY("dept_no")
REFERENCES "departments" ("dept_no");

ALTER TABLE "salaries" ADD CONSTRAINT "fk_salaries_emp_no" FOREIGN KEY("emp_no")
REFERENCES "employees" ("emp_no");

SELECT employees.emp_no, last_name, first_name, sex, salary 
	FROM employees
    INNER JOIN salaries ON employees.emp_no = salaries.emp_no;

SELECT first_name, last_name, hire_date FROM employees
	WHERE hire_date > '1986-01-01' AND hire_date < '1987-01-01';

SELECT e.first_name, e.last_name, dp.dept_name, dp.dept_no, dp.dept_name, dm.emp_no FROM employees AS e
	INNER JOIN dept_manager AS dm ON dm.emp_no = e.emp_no
	INNER JOIN departments AS dp ON dp.dept_no = dm.dept_no;

SELECT e.emp_no, e.last_name, e.first_name, dp.dept_name FROM employees AS e
	INNER JOIN dept_emp AS de ON de.emp_no = e.emp_no
	INNER JOIN departments AS dp ON dp.dept_no = de.dept_no;

SELECT e.first_name, e.last_name, e.sex FROM employees as e
	WHERE e.first_name = 'Hercules' and
	e.last_name LIKE 'B%';




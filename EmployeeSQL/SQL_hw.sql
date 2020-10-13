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


departments
-
dept_no PK VARCHAR(10)
dept_name VARCHAR(25)

employees
-
emp_no PK int
emp_title_id VARCHAR(10) FK >- titles.title_id
birth_date VARCHAR(12)
first_name VARCHAR(25)
last_name VARCHAR(30)
sex VARCHAR(5)
hire_date VARCHAR(12)

-- The dept_emp table is many-many relationship, so two primary keys are needed
dept_emp
-
emp_no PK int FK >- employees.emp_no
dept_no PK VARCHAR(10) FK >- departments.dept_no

-- The dept_manager table is many-many relationship, so two primary keys are needed
dept_manager
-
dept_no PK VARCHAR(10) FK >- departments.dept_no
emp_no PK int FK >- employees.emp_no

salaries
-
emp_no PK int FK - employees.emp_no
salary int

titles
-
title_id PK VARCHAR(10)
title VARCHAR(25)
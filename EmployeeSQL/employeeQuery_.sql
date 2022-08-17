SELECT * FROM "DEPARTMENTS";
SELECT * FROM "DEPT_EMP";
SELECT * FROM "DEPT_MANAGER";
SELECT * FROM "EMPLOYEES";
SELECT * FROM "SALARIES";
SELECT * FROM "TITLES";

-- List the following details of each employee: employee number, last name, first name, sex, and salary.
-- join employee table with emp_no, first_name, last_name, sex info to salaries table with salary
-- PK here is emp_no

SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM "EMPLOYEES" e
JOIN "SALARIES" s ON e.emp_no = s.emp_no;

-- List first name, last name, and hire date for employees who were hired in 1986.
-- reference employee table with first_name, last_name, hire_date

SELECT emp_no, last_name, first_name, hire_date
FROM "EMPLOYEES"
WHERE hire_date BETWEEN '1985-12-31' AND '1987-01-01';

-- List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
-- reference DEPT_MANAGER table with dept_no
-- join DEPT_MANAGER table on dept_no and select dept_name, 
-- join EMPLOYEES table on emp_no and select last_name, first_name

SELECT d.dept_no, d.dept_name, e.emp_no, e.last_name, e.first_name
FROM "EMPLOYEES" e
INNER JOIN "DEPT_MANAGER" m ON e.emp_no = m.emp_no
JOIN "DEPARTMENTS" d ON m.dept_no = d.dept_no;

-- List the department of each employee with the following information: employee number, last name, first name, and department name.
-- reference EMPLOYEES table with emp_no as PK and include last_name, first_name
-- join to DEPT_EMP on emp_no
-- join to DEPARTMENTS table on dept_no

SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM "EMPLOYEES" e
JOIN "DEPT_EMP" de ON e.emp_no = de.emp_no
JOIN "DEPARTMENTS" d ON de.dept_no = d.dept_no;

-- List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
-- reference EMPLOYEES table with emp_no as PK and include first_name, last_name, sex

SELECT first_name, last_name, sex
FROM "EMPLOYEES"
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

-- List all employees in the Sales department, including their employee number, last name, first name, and department name.
-- references EMPLOYEES table with emp_no as PK and include last_name, first_name
-- join to DEPT_EMP on emp_no
-- join to DEPARTMENTS table on dept_no to get info on dept_name = Sales

SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM "EMPLOYEES" e
JOIN "DEPT_EMP" de ON e.emp_no = de.emp_no
JOIN "DEPARTMENTS" d ON de.dept_no = d.dept_no WHERE d.dept_no = 'd007';

-- List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
-- references EMPLOYEES table with emp_no as PK and include last_name, first_name
-- join to DEPT_EMP on emp_no
-- join to DEPARTMENTS table on dept_no to get info on dept_name = Sales, dept_name = Development

SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM "EMPLOYEES" e
JOIN "DEPT_EMP" de ON e.emp_no = de.emp_no
JOIN "DEPARTMENTS" d ON de.dept_no = d.dept_no WHERE d.dept_no = 'd007' OR d.dept_no = 'd005'; 

-- List the frequency count of employee last names (i.e., how many employees share each last name) in descending order.
   
SELECT last_name, COUNT(last_name) AS "Last Name Count"
FROM "EMPLOYEES"
group by last_name
order by "Last Name Count" DESC;




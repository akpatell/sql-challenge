# Unit 9 Homework: Employee Database

## Background

The goal is to do a research project on employees of the corporation from the 1980s and 1990s. All that remains of the database of employees from that period are six CSV files. These six CSV files are named as follows: departments, dept_emp, dept_manager, employees, salaries, and titles.

In this assignment, I have designed the tables to hold data in the CSVs, imported the CSVs into a SQL database, and answered the following questions about the data. In other words, I have performed **data modeling**, **data engineering**, and **data analysis**. 

#### Data Modeling

The CSVs were inspected prior to sketching out an ERD of the tables. The following tool was used to sketch out the ERD of the tables: [http://www.quickdatabasediagrams.com](http://www.quickdatabasediagrams.com).

#### Data Engineering

* The information obtained from the ERD table was used to create a table schema for each of the six CSV files
* Each CSV file was also imported into the corresponding SQL table. 

#### Data Analysis

After completing the database, a query tool was used to write SQL code to answer the following questions:

1. List the following details of each employee: employee number, last name, first name, sex, and salary.

2. List first name, last name, and hire date for employees who were hired in 1986.

3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.

4. List the department of each employee with the following information: employee number, last name, first name, and department name.

5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."

6. List all employees in the Sales department, including their employee number, last name, first name, and department name.

7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

8. List the frequency count of employee last names (i.e., how many employees share each last name) in descending order.

The concepts of **JOINS**, **PRIMARY KEYS**, and **FOREGIN KEYS** was very important to answer the above questions as each CSV file had different information that needed to be used to connect to other information not available in that specific CSV file. For example, in order to answer question 1, employee number, last name, first name, and sex were in the employees table but salary was not. However, since the employee number was in common with both the employees and salaries table, it was used to obtain the salary column information in the salaries table.




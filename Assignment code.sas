/********************************
Name of DS: Mr Ong (TP063332)
Name of SAS program: mysasprog_tp063332.sas
Description:
Date first written: Thu, 23-Sep-2021
Date last updated: Thu, 23-Sep-2021
Folder name: DAP_FT_SEP_2021_TP063332
Library name: LIB07070
/***************************************

/*
QUESTION 1.1
List employee numbers and employee names from the datasets given
*/

TITLE1 'Details of employees';
TITLE2 'At APU';
FOOTNOTE '------End------';

PROC SQL;

SELECT e.emp_no label = 'Employee Number',
	e.emp_name label = 'Employee Name'
FROM LIB07070.EMPLOYEE_DS e;

QUIT;

/*
QUESTION 1.5
List department numbers and department names.
*/

TITLE1 'Details of Departments';
TITLE2 'At APU';
FOOTNOTE '-----End-----';

PROC SQL;

SELECT d.dept_no label = 'Department Number',
     d.dept_name label = 'Name'
FROM LIB07070.DEPARTMENT_DS d;

QUIT;

/*
QUESTION 1.6
List the details of all employees found in the datasets given.
*/

TITLE1 'Details of Employees Working';
TITLE2 'At APU';
FOOTNOTE '-----End------';

PROC SQL;

SELECT *
FROM LIB07070.EMPLOYEE_DS e;

QUIT;

/*
QUESTION 2.1
List the details of the employee whose salary is greater than or equal to 1000.
*/

TITLE1 'Details of APU Employees';
TITLE2 'whose salary is greater or equal to 1000';
FOOTNOTE '-----End------';


PROC SQL;

SELECT *
FROM LIB07070.EMPLOYEE_DS e
WHERE ( e.emp_salary GE 1000 );

QUIT;


/*
QUESTION 2.2
List the details of the employee whose salary is between 1000 and 1500.
*/

TITLE1 'Details of APU Employees';
TITLE2 'whose salary is between 1000 and 1500';
FOOTNOTE '-----End-----';


PROC SQL;

SELECT *
FROM LIB07070.EMPLOYEE_DS e
WHERE ( e.emp_salary BETWEEN 1000 AND 1500 );

QUIT;

/*
QUESTION 2.5
List the details of employees who work in the department number 10 and their salary is greater than 1500.
*/

TITLE1 'Details of APU Employees';
TITLE2 'who work in the department number 10 and their salary is greater than 1500';
FOOTNOTE '-----End-----';

PROC SQL;

SELECT *
FROM LIB07070.EMPLOYEE_DS e
WHERE ( (e.dept_no EQ 10 )AND 
		( e.emp_salary GT 1500 ) );

QUIT;

/*
QUESTION 2.6
List the details of employees who work in the department number 10 and their salary is between 1500 and 3000.
*/

TITLE1 'Details of APU Employees';
TITLE2 'who work in the department number 10 and their salary is between 1500 and 3000.';
FOOTNOTE '-----End-----';

PROC SQL;

SELECT *
FROM LIB07070.EMPLOYEE_DS e
WHERE ( ( e.dept_no EQ 10) AND (e.emp_salary BETWEEN 1500 AND 3000) );

QUIT;

/*
QUESTION 2.7
List the details of all Salesmen. 
*/

TITLE1 'Details of all Salesmen and Managers';
TITLE2 'in APU';
FOOTNOTE '-----End-----';

PROC SQL;

SELECT *
FROM LIB07070.EMPLOYEE_DS e
WHERE ( e.emp_job IN ('SALESMAN','MANAGER') );

QUIT;

/*
QUESTION 2.9
List the employee numbers and names of all salesmen who work in the department number 30 and their salary is greater than or equal to 1500.
*/

TITLE1 'Employee Numbers and names of all salesman';
TITLE2 'who work in the department number 30 and their salary is greater than or equal to 1500.';
FOOTNOTE '-----End-----';

PROC SQL;

SELECT e.emp_no LABEL 'Employee Number',
		e.emp_name LABEL 'Employee Name'
FROM LIB07070.EMPLOYEE_DS e
WHERE ( ( e.dept_no EQ 30) AND
	( e.emp_salary GE 1500) AND 
	(e.emp_job EQ 'SALESMAN') );
	
QUIT;

/*
QUESTION 3.0
List the employee name whose name starts with an alphabet ‘J’
*/

TITLE1 'Names of employees whose name starts with an alphabet 'J'';
FOOTNOTE '-----End-----';

PROC SQL;

SELECT e.emp_name LABEL 'Employee Name'
FROM LIB07070.EMPLOYEE_DS e
WHERE ( e.emp_name LIKE 'J%');

QUIT;

/*
QUESTION 3.1
List the employee name whose name starts with the alphabets ‘JA’
*/

TITLE1 'Names of employees whose name starts with an alphabet 'JA'';
FOOTNOTE '-----End-----';

PROC SQL;

SELECT e.emp_name LABEL 'Employee Name'
FROM LIB07070.EMPLOYEE_DS e
WHERE ( e.emp_name LIKE 'JA%');

QUIT;

/*
QUESTION 3.3
List the employee name whose name ends with the alphabet ‘R’
*/

TITLE1 'Names of employees whose name ends with an alphabet 'R'';
FOOTNOTE '-----End-----';

PROC SQL;

SELECT e.emp_name LABEL 'Employee Name'
FROM LIB07070.EMPLOYEE_DS e
WHERE ( e.emp_name LIKE '%R');

QUIT;

/*
QUESTION 3.6
List the employee name whose name starts with an alphabet ‘M’ and ends with an alphabet ‘N’
*/

TITLE1 'Names of employees whose name starts with an alphabet ‘M’ and ends with an alphabet ‘N’';
FOOTNOTE '-----End-----';

PROC SQL;

SELECT e.emp_name LABEL 'Employee Name'
FROM LIB07070.EMPLOYEE_DS e
WHERE ( e.emp_name LIKE 'M%N');

QUIT;

/*
QUESTION 3.7
List the employee name whose name start with the alphabet either ‘K’ or ‘G’.
*/

TITLE 'Name of Employees whose name start with the alphabet either ‘K’ or ‘G’';
FOOTNOTE '-----End-----';

PROC SQL;

SELECT e.emp_name LABEL 'Employee Name'
FROM LIB07070.EMPLOYEE_DS e
WHERE ( ( e.emp_name LIKE 'K%') OR
		( e.emp_name LIKE 'G%') );
		
QUIT;

/*
QUESTION 3.8
List the employee name whose name has the alphabets ‘IN’ (in anywhere).
*/

TITLE 'Name of Employees whose name has the alphabets ‘IN’ (in anywhere)';
FOOTNOTE '-----End-----';

PROC SQL;

SELECT e.emp_name LABEL 'Employee Name'
FROM LIB07070.EMPLOYEE_DS e
WHERE ( e.emp_name LIKE '%IN%' );

QUIT;

/*
QUESTION 4.0
List the employee details in descending order of their salary.
*/

TITLE 'Details of employees in descending order of their salary';
FOOTNOTE '-----End-----';

PROC SQL;

SELECT *
FROM LIB07070.EMPLOYEE_DS e
ORDER BY e.emp_salary DESC;

QUIT;

/*
QUESTION 4.1
List the employee details in ascending order of their salary.
*/

TITLE 'Details of employees in ascending order of their salary';
FOOTNOTE '-----End-----';

PROC SQL;

SELECT *
FROM LIB07070.EMPLOYEE_DS e
ORDER BY e.emp_salary;

QUIT;

/*
QUESTION 4.2
List the employee details in descending order of their names.
*/

TITLE 'employee details in descending order of their names';
FOOTNOTE '-----End-----';

PROC SQL;

SELECT *
FROM LIB07070.EMPLOYEE_DS e
ORDER BY e.emp_name DESC;

QUIT;

/*
QUESTION 4.3
List the employee details in ascending order of their names. Show employee number, name, and salary
*/

TITLE 'Employee details in ascending order of their names';
FOOTNOTE '-----End-----';

PROC SQL;

SELECT e.emp_no LABEL 'Employee Number',
	 e.emp_name LABEL 'Name',
   e.emp_salary LABEL 'Salary'
FROM LIB07070.EMPLOYEE_DS e
ORDER BY e.emp_name;

QUIT;

/*
QUESTION 5.0

Find out how many managers work there.
*/

TITLE 'Number of managers working';
FOOTNOTE '-----End-----' ;

PROC SQL;

SELECT COUNT(*) LABEL 'Total Number of Managers'
FROM LIB07070.EMPLOYEE_DS e
WHERE ( e.emp_job EQ 'MANAGER' );

QUIT;

/*
QUESTION 5.1

Find out how many salesmen work there.
*/

TITLE 'Number of Salesmen Working';
FOOTNOTE '-----End-----';

PROC SQL;

SELECT COUNT(*) LABEL 'Total Number of Salesmen'
FROM LIB07070.EMPLOYEE_DS e
WHERE ( e.emp_job EQ 'SALESMAN' );

QUIT;

/*
QUESTION 5.2

Find out how many salesmen work there in the department number 30.
*/

TITLE 'Number of Salesmen Working in department 30';
FOOTNOTE '-----End-----';

PROC SQL;

SELECT COUNT(*) LABEL 'Total Number of Salesmen working in department 30'
FROM LIB07070.EMPLOYEE_DS e
WHERE ( ( e.emp_job EQ 'SALESMAN' ) AND
		( e.dept_no EQ 30 ) );

QUIT;

/*
QUESTION 5.3

Find out the highest salary.
*/

TITLE 'Highest Salary of Employees';
FOOTNOTE '-----End-----';

PROC SQL;

SELECT MAX(e.emp_salary) LABEL 'Maximum Salary'
FROM LIB07070.EMPLOYEE_DS e;

QUIT;

/*
QUESTION 5.4

Find out the lowest salary.
*/

TITLE 'Lowest Salary of Employees';
FOOTNOTE '-----End-----';

PROC SQL;

SELECT MIN(e.emp_salary) LABEL 'Minimum Salary'
FROM LIB07070.EMPLOYEE_DS e;

QUIT;

/*
QUESTION 5.5

Find out the sum of salaries of all employees
*/

TITLE 'Lowest Salary of Employees';
FOOTNOTE '-----End-----';

PROC SQL;

SELECT SUM(e.emp_salary) LABEL 'Sum of Salaries'
FROM LIB07070.EMPLOYEE_DS e;

QUIT;

/*
QUESTION 5.7

Find out the sum of salaries of the employees who work in the department number 10
*/

TITLE 'Sum of salaries of the employees who work in the department number 10';
FOOTNOTE '---End---';

PROC SQL;

SELECT SUM(e.emp_salary) LABEL 'Sum of Salaries'
FROM LIB07070.EMPLOYEE_DS e
WHERE ( e.dept_no EQ 10 );

QUIT;

/*
QUESTION 5.8

Find out the sum of salaries of the employees who work in the department number 10 or 20
*/

TITLE 'Sum of salaries of the employees who work in the department number 10 or 20';
FOOTNOTE '---End---';

PROC SQL;

SELECT SUM(e.emp_salary) LABEL 'Sum of Salaries'
FROM LIB07070.EMPLOYEE_DS e
WHERE ( e.dept_no IN ( 10, 20 ) );
		
QUIT;

/*
QUESTION 5.10

Count the number of staff working in the department number 30
*/

TITLE 'number of staff working in the department number 30';
FOOTNOTE '----End----';

PROC SQL;

SELECT COUNT(*) LABEL 'Number of Staff working in department 30'
FROM LIB07070.EMPLOYEE_DS e
WHERE ( e.dept_no EQ 30 );

QUIT;

/*
QUESTION 5.13

Count the number of staff whose salary is greater than or equal to 3000
*/

TITLE 'Number of staff whose salary is greater than or equal to 3000';
FOOTNOTE '----End----';

PROC SQL;

SELECT COUNT(*) LABEL 'Number of Staffs'
FROM LIB07070.EMPLOYEE_DS e
WHERE ( e.emp_salary GE 3000 );

QUIT;

/*
QUESTION 5.14

Count the number of staff whose salary is between 1200 and 1500
*/

TITLE 'Number of staff whose salary is between 1200 and 1500';
FOOTNOTE '----End----';

PROC SQL;

SELECT COUNT(*) LABEL 'Number of Staffs'
FROM LIB07070.EMPLOYEE_DS e
WHERE ( e.emp_salary BETWEEN 1200 AND 1500 );

QUIT;

/*
QUESTION 6.0

Join the datasets DEPARTMENT_DS and EMPLOYEE_DS and then list the observations.
*/

TITLE1 'Join the datasets DEPARTMENT_DS and EMPLOYEE_DS and then list the observations.';
TITLE2 'APU';
FOOTNOTE '-----End-----';

PROC SQL;

SELECT *
FROM LIB07070.EMPLOYEE_DS e, LIB07070.DEPARTMENT_DS d
WHERE ( e.dept_no EQ d.dept_no );

QUIT;

/*
QUESTION 6.1  

Join the datasets DEPPARTMENT and EMPLOYEE and show the observations in ascending order of department number.
*/

TITLE1 'Join the datasets DEPPARTMENT and EMPLOYEE and show the observations in ascending order of department number.';
TITLE2 'APU';
FOOTNOTE '-----End-----';

PROC SQL;

SELECT *
FROM LIB07070.EMPLOYEE_DS e, LIB07070.DEPARTMENT_DS d
WHERE ( e.dept_no EQ d.dept_no )
ORDER BY e.dept_no;

QUIT;

/*
QUESTION 6.2

Join the datasets DEPARTMENT dataset and EMPLOYEE and show the observation in ascending order of salary.
*/

TITLE1 'Join the datasets DEPPARTMENT and EMPLOYEE and show the observations in ascending order of salary.';
TITLE2 'APU';
FOOTNOTE '-----End-----';

PROC SQL;

SELECT *
FROM LIB07070.EMPLOYEE_DS e, LIB07070.DEPARTMENT_DS d
WHERE ( e.dept_no EQ d.dept_no )
ORDER BY e.emp_salary;

QUIT;

/*
QUESTION 6.3
List the details of the employees who work at ‘DALLAS’.
*/

TITLE1 'List the details of the employees who work at ‘DALLAS’.';
TITLE2 'APU';
FOOTNOTE '-----End-----';

PROC SQL;

SELECT *
FROM LIB07070.EMPLOYEE_DS e, LIB07070.DEPARTMENT_DS d
WHERE ( ( e.dept_no EQ d.dept_no ) AND 
	    ( d.dept_loc EQ 'DALLAS' ) );

QUIT;

/*
QUESTION 6.4
Find the name, salary, and department name of employees who work at ‘DALLAS’.
*/

TITLE1 'Find the name, salary, and department name of employees who work at ‘DALLAS’.';
TITLE2 'APU';
FOOTNOTE '-----End-----';

PROC SQL;

SELECT e.emp_name LABEL 'Name',
	 e.emp_salary LABEL 'Salary',
	  d.dept_name LABEL 'Department Name',
	  d.dept_loc LABEL 'Location'
FROM LIB07070.EMPLOYEE_DS e, LIB07070.DEPARTMENT_DS d
WHERE ( ( e.dept_no EQ d.dept_no ) AND 
		(d.dept_loc EQ 'DALLAS') );

QUIT;

/*
QUESTION 6.5
Find the employees (name, number, department name, salary) who earn more than ‘JONES’.
*/

TITLE1 'Find the employees (name, number, department name, salary) who earn more than ‘JONES’.';
TITLE2 'APU';
FOOTNOTE '-----End-----';

PROC SQL;

SELECT e.emp_name LABEL 'Name',
	   e.emp_no LABEL 'Employee Number',
	  d.dept_name LABEL 'Department Name',
		 e.emp_salary LABEL 'Salary'
FROM LIB07070.EMPLOYEE_DS e, LIB07070.DEPARTMENT_DS d
WHERE ( e.dept_no EQ d.dept_no ) AND 
		( e.emp_name NE 'JONES') AND
		(e.emp_salary GT ( SELECT e.emp_salary LABEL 'Salary'
						FROM LIB07070.EMPLOYEE_DS e
						WHERE ( e.emp_name EQ 'JONES' ) ) );
QUIT;

/*
QUESTION 7.0
List the department number and sum of salaries of all staff of each department.
*/

TITLE1 'List the department number and sum of salaries of all staff of each department.';
TITLE2 'APU';
FOOTNOTE '-----End-----';

PROC SQL;

SELECT e.dept_no LABEL 'Department Number',
		SUM(e.emp_salary) LABEL 'Sum of Salaries'
FROM LIB07070.EMPLOYEE_DS e
GROUP BY e.dept_no;

QUIT;

/*
QUESTION 7.1
List the department number and number of employees working in each department.
*/

TITLE1 'List the department number and number of employees working in each department.';
TITLE2 'APU';
FOOTNOTE '-----End-----';

PROC SQL;

SELECT e.dept_no LABEL 'Department Number',
		COUNT (*) LABEL 'Number of Employees'
FROM LIB07070.EMPLOYEE_DS e
GROUP BY e.dept_no;

QUIT;

/*
QUESTION 7.2
List the department number which has a minimum of four employees.
*/

TITLE1 'List the department number which has a minimum of four employees.';
TITLE2 'APU';
FOOTNOTE '-----End-----';

PROC SQL;

SELECT e.dept_no LABEL 'Department Number',
		COUNT (*) LABEL 'Number of Employees'
FROM LIB07070.EMPLOYEE_DS e
GROUP BY e.dept_no
HAVING COUNT(*) GE 4; /*HAVING is used to filter groups while WHERE is used to filter observations */

QUIT;


/*
QUESTION 7.3
List the department number and the average annual salaries of all employees working in each department.
*/

TITLE1 'List the department number and the average annual salaries of all employees working in each department.';
TITLE2 'APU';
FOOTNOTE '-----End-----';

PROC SQL;

SELECT e.dept_no LABEL 'Department Number',
		AVG(e.emp_salary * 12) LABEL 'Average Annual Salary'
FROM LIB07070.EMPLOYEE_DS e
GROUP BY e.dept_no;


QUIT;

/*
QUESTION 7.4
List the department number, which has at least two clerks.
*/

TITLE1 'List the department number, which has at least two clerks.';
TITLE2 'APU';
FOOTNOTE '-----End-----';

PROC SQL;

SELECT e.dept_no LABEL 'Department Number',
		COUNT(*) LABEL 'Number of Clerks'
FROM LIB07070.EMPLOYEE_DS e
WHERE (e.emp_job EQ 'CLERK') /*The WHERE filters observations which relevant to 'Clerks' */
GROUP BY e.dept_no
HAVING COUNT(*) GE 2; /*The HAVING filters groups */

QUIT;

/*
QUESTION 10.0
Increase all staff salary by 10%.
*/

PROC SQL;

TITLE1 'STEP 1: BEFORE INCREMENTATION: ';
SELECT *
FROM LIB07070.EMPLOYEE_DS e;

TITLE2 'STEP 2: INCREASE SALARY BY 10%' ;
UPDATE LIB07070.EMPLOYEE_DS e
SET emp_salary = ( emp_salary * 1.1);

TITLE1 'STEP 3: AFTER INCREASING THE SALARY BY 10%';
FOOTNOTE '-----END-----';

SELECT *
FROM LIB07070.EMPLOYEE_DS e;


/*
QUESTION 10.2 
Increase all staff salary by 10% for those who work in the department number 10.
*/

PROC SQL;

TITLE1 ' STEP 1: BEFORE INCREASE SALARY ';
SELECT *
FROM LIB07070.EMPLOYEE_DS e
WHERE ( e.dept_no EQ 10 );

TITLE2 'STEP 2: INCREASE SALARY BY 10% FOR THOSE WORK IN DEPARTMENT NUMBER 10' ;
UPDATE LIB07070.EMPLOYEE_DS /*MUST NOT use e in UPDATE*/
SET emp_salary = ( emp_salary * 1.1)
WHERE ( dept_no EQ 10 );

TITLE1 'STEP 3: AFTER INCREASING THE SALARY BY 10%';
FOOTNOTE '-----END-----';

SELECT *
FROM LIB07070.EMPLOYEE_DS e
WHERE ( e.dept_no EQ 10 );

QUIT;

/*
QUESTION 10.3
Increase all managers’ salary by 10%.
*/

PROC SQL;

TITLE1 ' STEP 1: BEFORE INCREASE SALARY ';
SELECT *
FROM LIB07070.EMPLOYEE_DS e
WHERE ( e.emp_job EQ 'MANAGER' );

TITLE2 'STEP 2: INCREASE SALARY BY 10% FOR THOSE WORK IN DEPARTMENT NUMBER 10' ;
UPDATE LIB07070.EMPLOYEE_DS /*MUST NOT use e in UPDATE*/
SET emp_salary = ( emp_salary * 1.1)
WHERE ( emp_job EQ 'MANAGER' );

TITLE1 'STEP 3: AFTER INCREASING THE SALARY BY 10%';
FOOTNOTE '-----END-----';

SELECT *
FROM LIB07070.EMPLOYEE_DS e
WHERE ( e.emp_job EQ 'MANAGER' );

QUIT;

/*
QUESTION 10.4
Assign the salary to 5555, if any staff’s salary is equal to 5000.
*/

PROC SQL;

UPDATE LIB07070.EMPLOYEE_DS
SET emp_salary = 5000
WHERE ( emp_name EQ 'KING' );

QUIT;




PROC SQL;
TITLE 'STEP 1: BEFORE ASSIGNING A NEW SALARY';
SELECT *
FROM LIB07070.EMPLOYEE_DS e
WHERE ( e.emp_salary EQ 5000);

TITLE1 'ASSIGN THE SALARY TO 5555, IF ANY STAFF SALARY IS 5000';
UPDATE LIB07070.EMPLOYEE_DS
SET emp_salary = 5555
WHERE ( emp_salary EQ 5000 );

TITLE1 'STEP 3:AFTER ASSIGNING A NEW SALARY';
FOOTNOTE '----END----';
SELECT *
FROM LIB07070.EMPLOYEE_DS e;

QUIT;

/*
QUESTION 10.5

Increase staff salary by 10% for those who work in ‘NEW YORK’.
*/

PROC SQL;

TITLE1 'STEP 1: BEFORE INCREASE SALARY';
SELECT *
FROM LIB07070.EMPLOYEE_DS e
WHERE e.dept_no EQ ( SELECT d.dept_no LABEL 'DEPARTMENT NUMBER'
					  FROM LIB07070.DEPARTMENT_DS d
					  WHERE  ( d.dept_loc EQ 'NEW YORK' ) );

TITLE1 'STEP 2: INCREASE SALARY BY 10% FOR THOSE WORK IN NEW YORK';
UPDATE LIB07070.EMPLOYEE_DS
SET emp_salary = ( emp_salary * 1.1 )
WHERE dept_no EQ ( SELECT d.dept_no
					FROM LIB07070.DEPARTMENT_DS d
					WHERE  ( d.dept_loc EQ 'NEW YORK' ) );


TITLE1 'STEP 3:AFTER INCREASE SALARY';
FOOTNOTE '----END----';
SELECT *
FROM LIB07070.EMPLOYEE_DS e
WHERE e.dept_no EQ ( SELECT d.dept_no LABEL 'DEPARTMENT NUMBER'
					  FROM LIB07070.DEPARTMENT_DS d
					  WHERE  ( d.dept_loc EQ 'NEW YORK' ) );

QUIT;

/*
Question 10.6
Add a new department to the DEPARTMENT_T table (dept_no = 55; dept_name=’Physics55’; 	dept_loc = ‘Kuala Lumpur55’)
*/

PROC SQL;

TITLE1 'STEP 1: BEFORE ADDING A NEW DEPARTMENT TO THE DEPARTMENT_DS TABLE';
SELECT *
FROM LIB07070.DEPARTMENT_DS d;

TITLE1 'STEP 2: Add a new department to DEPARTMENT_DS Table';
INSERT INTO LIB07070.DEPARTMENT_DS
(dept_no,dept_name,dept_loc)
VALUES(55, 'Physics55', 'Kuala Lumpur55' );

TITLE1 'STEP 3: AFTER ADDING A NEW DEPARTMENT TO THE DEPARTMENT_DS TABLE';
FOOTNOTE '-----End-----';
SELECT * 
FROM LIB07070.DEPARTMENT_DS d;

QUIT;

/*
QUESTION 9.0
Delete the employee whose name is ‘JONES’.
*/

PROC SQL;

TITLE 'STEP 1: BEFORE DELETION';
SELECT *
FROM LIB07070.EMPLOYEE_DS e
WHERE ( e.emp_name EQ 'JONES' );

TITLE 'STEP 2: Delete the employee whose name is ‘JONES’ ';
DELETE
FROM LIB07070.EMPLOYEE_DS
WHERE ( emp_name EQ 'JONES' );

TITLE 'STEP 3: AFTER DELETION';
FOOTNOTE '-----End-----';
SELECT *
FROM LIB07070.EMPLOYEE_DS e
WHERE ( e.emp_name EQ 'JONES' );

QUIT;

/*
QUESTION 9.1 
Delete the employee whose employee id is 7934.
*/

PROC SQL;

TITLE 'STEP 1: BEFORE DELETION';
SELECT *
FROM LIB07070.EMPLOYEE_DS e
WHERE ( e.emp_no EQ 7934 );

TITLE 'STEP 2: Delete the employee whose employee id is 7934.';
DELETE
FROM LIB07070.EMPLOYEE_DS
WHERE ( emp_no EQ 7934 );

TITLE 'STEP 3: AFTER DELETION';
FOOTNOTE '-----END-----';
SELECT *
FROM LIB07070.EMPLOYEE_DS e
WHERE ( e.emp_no EQ 7934 );

QUIT;

/*
QUESTION 9.2 
Delete the employees whose salary is greater than 1500.
*/

PROC SQL;

TITLE 'STEP 1: BEFORE DELETION';
SELECT *
FROM LIB07070.EMPLOYEE_DS e
WHERE ( e.emp_salary GT 1500 );

TITLE 'STEP 2: Delete the employees whose salary is greater than 1500.';
DELETE
FROM LIB07070.EMPLOYEE_DS
WHERE ( emp_salary GT 1500 );

TITLE 'STEP 3: AFTER DELETION';
FOOTNOTE '-----END-----';
SELECT *
FROM LIB07070.EMPLOYEE_DS e
WHERE ( e.emp_salary GT 1500 );

QUIT;

/*
QUESTION 9.3
Delete the employees whose salary is between 1200 and 1500.
*/

PROC SQL;

TITLE 'STEP 1: BEFORE DELETION';
SELECT *
FROM LIB07070.EMPLOYEE_DS e
WHERE ( e.emp_salary BETWEEN 1200 AND 1500 );

TITLE 'STEP 2: Delete the employees whose salary is between 1200 and 1500.';
DELETE
FROM LIB07070.EMPLOYEE_DS
WHERE ( emp_salary BETWEEN 1200 AND 1500 );

TITLE 'STEP 3: AFTER DELETION';
FOOTNOTE '-----END-----';
SELECT *
FROM LIB07070.EMPLOYEE_DS e
WHERE ( e.emp_salary BETWEEN 1200 AND 1500 );

QUIT;

/*
QUESTION 9.4
Delete the employees who work in department number 10.
*/

PROC SQL;

TITLE 'STEP 1: BEFORE DELETION';
SELECT *
FROM LIB07070.EMPLOYEE_DS e
WHERE ( e.dept_no EQ 10 );

TITLE 'STEP 2: Delete the employees who work in department number 10.';
DELETE
FROM LIB07070.EMPLOYEE_DS
WHERE ( dept_no EQ 10 );

TITLE 'STEP 3: AFTER DELETION';
FOOTNOTE '-----END-----';
SELECT *
FROM LIB07070.EMPLOYEE_DS e
WHERE ( e.dept_no EQ 10 );

QUIT;

/*
QUESTION 9.6
Delete the employees who work in NEW YORK.
*/

PROC SQL;

TITLE 'STEP 1: BEFORE DELETION';
SELECT *
FROM LIB07070.EMPLOYEE_DS e
WHERE e.dept_no EQ ( SELECT d.dept_no LABEL 'Department Number'
					 FROM LIB07070.DEPARTMENT_DS d
					 WHERE ( d.dept_loc EQ 'NEW YORK' ) );

TITLE 'STEP 2: Delete the employees who work in NEW YORK.';
DELETE
FROM LIB07070.EMPLOYEE_DS
WHERE dept_no EQ ( SELECT d.dept_no LABEL 'Department Number'
				   FROM LIB07070.DEPARTMENT_DS d
				   WHERE ( d.dept_loc EQ 'NEW YORK' ) );

TITLE 'STEP 3: AFTER DELETION';
FOOTNOTE '-----END-----';
SELECT *
FROM LIB07070.EMPLOYEE_DS e
WHERE e.dept_no EQ ( SELECT d.dept_no LABEL 'Department Number'
					 FROM LIB07070.DEPARTMENT_DS d
					 WHERE ( d.dept_loc EQ 'NEW YORK' ) );

QUIT;


/*
QUESTION 9.7 
Delete all employees’ details. 
*/

PROC SQL;

DELETE
FROM LIB07070.EMPLOYEE_DS;


SELECT *
FROM LIB07070.EMPLOYEE_DS;

QUIT;

/*
QUESTION 9.8
Permanently remove the EMPLOYEE_DS dataset. 
*/

PROC SQL;

TITLE 'Permanently remove the EMPLOYEE_DS dataset.';
DROP TABLE LIB07070.EMPLOYEE_DS;
QUIT;
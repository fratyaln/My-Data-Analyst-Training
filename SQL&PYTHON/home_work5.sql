--Write an SQL query that retrieves all employees' first name, last name, and salary information.
SELECT NAME_ ,SURNAME ,SALARY FROM PERSON;
--Write a query that lists only female employees (GENDER = 'K') along with their first name, last name, and date of birth.
SELECT NAME_, SURNAME , BIRTHDATE FROM PERSON;

-- List the names and hiring dates of employees who joined after 2017.
SELECT NAME_ , INDATE FROM PERSON WHERE INDATE>'20171230'

-- Add a new employee (Example: Ali Veli, ID Number: 12345678901, Male, born on 1985-12-05, hired on 2022-01-15, Department: 3, Position: 40, Salary: 6000).

INSERT INTO PERSON(CODE,TCNUMBER,NAME_,SURNAME,GENDER,BIRTHDATE,INDATE,OUTDATE,DEPARTMENTID,POSITIONID,PARENTPOSITIONID,MANAGERID,TELNR,SALARY) VALUES('10001','12345678901','Ali','Veli','E','1985-12-05','2022-01-15',NULL,3,40,28,NULL,'(0222) 25452224',6000);

-- Update Ferhat Cinar’s salary to 6000.
UPDATE PERSON
SET
    SALARY=6000
WHERE NAME_='Ferhat' AND SURNAME='Cinar'
GO

-- Delete Deniz Eravcı from the database.
DELETE FROM PERSON WHERE NAME_ = 'Deniz' AND SURNAME = 'Eravcı';

-- List employees who were born before 1960.
SELECT * FROM PERSON WHERE BIRTHDATE<'19600101';

-- List employees who were born before 1960 and have a salary higher than 5000.
SELECT * FROM PERSON WHERE BIRTHDATE<'1960' AND SALARY>5000;
-- List employees whose Department ID is 4 or whose salary is greater than 5500.
SELECT * FROM PERSON WHERE DEPARTMENTID = 4 OR SALARY>5500;

-- Increase the salaries of employees whose exit date (OUTDATE) is NULL by 10%.
UPDATE PERSON 
SET SALARY = SALARY * 1.1 
WHERE OUTDATE IS NULL;

-- Delete employees who were hired before 2015 and have a salary lower than 5000.
DELETE FROM PERSON 
WHERE INDATE<'2015-01-01' AND SALARY<5000

-- List the number of different departments in the dataset.
SELECT COUNT(DEPARTMENT) FROM DEPARTMENT

-- Sort employees by salary from highest to lowest.
SELECT * FROM PERSON 
ORDER BY SALARY DESC ;

-- List the top 5 highest-paid employees.
SELECT TOP 5 * FROM PERSON 
ORDER BY SALARY DESC ;

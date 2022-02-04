--                  SQL Data Types

-- INT                 -- Whole numbers
-- DECIMAL(M, N)       -- Decimal Numbers - Exact Value
-- VARCHAR(20)         -- String of text of length
-- BLOB                -- Binary Large Object, Stores large data
-- DATE                -- 'YYYY-MM-DD'
-- TIMESTAMP           -- 'YYYY-MM-DD hh:MM:SS' - used for recording

--          Creating Tables

CREATE TABLE student (
    student_id INT,         -- defining student_id as an integer because an ID is a number
    name VARCHAR(20),       -- 20 is the max character count for a name
    major VARCHAR(20),      -- 20 is the max character count for a major
    PRIMARY KEY(student_id)
);
SELECT * FROM student;          -- this is gonna grab all the information from the student table 


-- basically console.logging the table
DESCRIBE student;       

-- delete table
DROP TABLE student;

-- add a column
ALTER TABLE student ADD gpa DECIMAL(3, 2);      -- 3 TOTAl DIGITS WITH 2 OCCURRING DIGITS AFTER THE DECIMAL POINT


-- need to start building schema or all the tables and then put your data in



-- Inserting data in our database tables
        -- full statement
INSERT INTO student VALUES(1, 'Jack', 'Biology');       -- (1, jack, biology) only affects 1 row but if you use SELECT * FROM student it affects all

-- INSERT INTO student(student_id, name) VALUES(2, 'Jack');     -- adding the parentheses to the student table is saying we dont neccessarily need the major (in case theres a case where someone doesnt have a major), will not give an error
    -- will return NULL since their major isn't specified
        -- can't insert duplicate entries




--                      C


CREATE TABLE student (
    student_id INT,
    name VARCHAR(20) NOT NULL,      -- not null and unique are called constraints
    major VARCHAR(20) UNIQUE,
    PRIMARY KEY(student_id)
);

INSERT INTO student(student_id, name) VALUES(1, 'Jack');
INSERT INTO student VALUES(2, 'Kate', 'Sociology');
INSERT INTO student VALUES(3, NULL, 'Chemistry');
INSERT INTO student VALUES(4, 'Jack', 'Biology');
INSERT INTO student VALUES(5, 'Mike', 'Computer Science');


CREATE TABLE student (
    student_id INT,
    name VARCHAR(20),      -- not null and unique are called constraints
    major VARCHAR(20) DEFAULT 'undecided',
    PRIMARY KEY(student_id)
);


-- ADVANCED WAY OF INSERTING INFORMATION TO YOUR DATABASE 

DROP TABLE student;

CREATE TABLE student (
    student_id INT AUTO_INCREMENT,
    name VARCHAR(20),
    major VARCHAR(20),
    PRIMARY KEY(student_id)
);
SELECT * FROM student;

INSERT INTO student(name, major) VALUES('Jack', 'Biology');
INSERT INTO student(name, major) VALUES('Kate', 'Sociology');




--                  Updating and Deleting Tables

        -- in case you wanna change a name from Biology to Bio
UPDATE student          -- calling the table to update
SET major = 'Bio'       -- selecting column and what we want it changed to
WHERE major = 'Biology';    -- selecting which column(s) that will be affected 

-- Other comparison ops:
-- <
-- >
-- =<
-- >=
-- <> = NOT EQUAL TO
-- AND
-- OR

UPDATE student          
SET major = 'Biochemistry'
WHERE major = 'Bio' OR major = 'Chemistry'; 
-- reads = if a student is majoring in biology or chemistry, change the major(s) to Biochemistry
-- where is optional but if not applied in any way, SET will effect all rows

SELECT * FROM student;

DELETE FROM student
WHERE student_id = 5;       -- this query will delete any rows with the student_id of 5

-- another example
DELETE FROM student
WHERE name = 'Tom' AND major = 'undecided';







--                           Basic Queries 

-- Query = basically a block of SQL designed to ask the database management system for a particular piece of information
        -- querying revolves all around what you want to SELECT

SELECT student.name, student.major
FROM student;

-- can also order the information we get back:

SELECT student.name, student.major
FROM student
ORDER BY name;          -- by default, just ORDER BY name will return the table in ASCENDING or and if you want, you can put DESC after name and it will return the table in descending order


SELECT *
FROM student
ORDER BY major, student_id DESC;        -- major column would be in ascending order, student_id column would be in descending


-- you can also limit the amount of results you're getting:

SELECT *
FROM student
LIMIT 2;            -- IF YOU ONLY WANT 2 ROWS BACK FROM THE TABLE, LIMIT 2


SELECT *
FROM student
ORDER BY student_id DESC
LIMIT 2;            -- ordering in descending order and only showing 2 rows of the table



-- how to FILTER

SELECT *
FROM student
WHERE STUDENT_ID < 3;
-- only getting back student_id's 1 and 2

SELECT *
FROM student
WHERE STUDENT_ID <= 3;
-- only getting back student_id's 1 2 and 3

SELECT *
FROM student
WHERE student_id <= 3 AND <> 'Jack';
-- all student_id's less than or equal to 3 and not equal to Jack

SELECT *
FROM student
WHERE name IN ('Claire', 'Kate', 'Mike');
-- way to compare 

SELECT *
FROM student
WHERE name IN ('Claire', 'Kate', 'Mike') AND student_id > 2;




--                          COMPANY DATABASE INTO


-- PDF of Company Database Schema
-- https://www.youtube.com/redirect?event=video_description&redir_token=QUFFLUhqa1hlSThnbE82MHBZMUpBSXlORnU4dHhtY1dDQXxBQ3Jtc0tsb1dUcGJRMzdiVzRfbUd2QmxsTU1pTm13eTNiSDdtbGRuM3JrRXZFSDNlU3ZRbERreHFtSENnclh3aWN0a2FIQVpVNEZrckhFaEdpR3g0N3UwdEJkczFfOXBxVnIwbTRxWFJzU1g5bFV3RmlfUExLSQ&q=https%3A%2F%2Fwww.giraffeacademy.com%2Fdatabases%2Fsql%2Fcreating-company-database%2F




--                   Creating Company Database from scratch

            -- How i did it before he showed me the whole process

CREATE TABLE Employee (
    emp_id INT,
    first_name VARCHAR(20),
    last_name VARCHAR(20),
    birth_date DATE(10),
    sex VARCHAR(1),
    salary INT(9),
    PRIMARY KEY(emp_id),
    FOREIGN KEY(super_id, branch_id)
);
INSERT INTO Employee VALUES(100, 'David', 'Wallace', 1967-11-17, 'M', 250000);
INSERT INTO Employee VALUES(101, 'Jan', 'Levinson', 1961-05-11, 'F', 110000);
INSERT INTO Employee VALUES(102, 'Michael', 'Scott', 1964-03-15, 'M', 75000);
INSERT INTO Employee VALUES(103, 'Angela', 'Martin', 1971-06-25, 'F', 63000);
INSERT INTO Employee VALUES(104, 'Kelly', 'Kapoor', 1980-02-05, 'F', 55000);
INSERT INTO Employee VALUES(105, 'Stanley', 'Hudson', 1958-02-19, 'M', 69000);
INSERT INTO Employee VALUES(106, 'Josh', 'Porter', 1967-09-05, 'M', 78000);
INSERT INTO Employee VALUES(107, 'Andy', 'Bernard', 1973-07-22, 'M', 65000);
INSERT INTO Employee VALUES(108, 'Jim', 'Halpert', 1978-10-01, 'M', 71000);



CREATE TABLE Branch (
    branch_id INT,
    branch_name VARCHAR(10),
    mgr_id INT,
    mgr_start_date DATE(10),
    PRIMARY KEY(branch_id),
    FOREIGN KEY(mgr_id)
);
INSERT INTO Branch VALUES(1, 'Corporate', 100, 2006-02-09);
INSERT INTO Branch VALUES(2, 'Scranton', 102, 1992-04-06);
INSERT INTO Branch VALUES(3, 'Stamford', 106, 1998-02-13);


CREATE TABLE Client (
    client_id INT,
    client_name VARCHAR(25),
    branch_id INT,
    PRIMARY KEY(client_id),
    FOREIGN KEY(branch_id)
);
INSERT INTO Client VALUES(400, 'Dunmore High School', 2);
INSERT INTO Client VALUES(401, 'Lackawana County', 2);
INSERT INTO Client VALUES(402, 'FedEx', 3);
INSERT INTO Client VALUES(403, 'John Daly Law, LLC', 3);
INSERT INTO Client VALUES(404, 'Scranton Whitepages', 2);
INSERT INTO Client VALUES(405, 'Times Newspaper', 3);
INSERT INTO Client VALUES(406, 'Fedex', 2);


CREATE TABLE Works_With (
    emp_id INT,
    client_id INT,
    total_sales INT,
    PRIMARY KEY(emp_id, client_id)
);
INSERT INTO Works_With VALUES(105, 400, 55000);
INSERT INTO Works_With VALUES(102, 401, 267000);
INSERT INTO Works_With VALUES(106, 402, 22500);
INSERT INTO Works_With VALUES(107, 403, 5000);
INSERT INTO Works_With VALUES(108, 403, 12000);
INSERT INTO Works_With VALUES(105, 404, 33000);
INSERT INTO Works_With VALUES(107, 405, 26000);
INSERT INTO Works_With VALUES(102, 406, 55000);
INSERT INTO Works_With VALUES(105, 406, 55000);




CREATE TABLE Branch Supplier (
    branch_id INT,
    supplier_name VARCHAR(25),
    supply_type VARCHAR(25),
    PRIMARY KEY(branch_id, supplier_name)
);
INSERT INTO Branch Supplier VALUES(2, 'Hammer Mill', 'Paper');
INSERT INTO Branch Supplier VALUES(2, 'Uni-ball', 'Writing Utensils');
INSERT INTO Branch Supplier VALUES(3, 'Patriot Paper', 'Paper');
INSERT INTO Branch Supplier VALUES(2, 'Hammer Mill', 'Custom Forms');
INSERT INTO Branch Supplier VALUES(2, 'Uni-ball', 'Writing Utensils');
INSERT INTO Branch Supplier VALUES(2, 'Hammer Mill', 'Paper');
INSERT INTO Branch Supplier VALUES(2, 'Stables', 'Custom Forms');









--                  The way he did it



CREATE TABLE Employee (
    emp_id INT PRIMARY KEY,
    first_name VARCHAR(40),
    last_name VARCHAR(40),
    birth_day DATE,
    sex VARCHAR(1),
    salary INT,
    super_id INT,
    branch_id INT
);

ALTER TABLE Employee
ADD FOREIGN KEY(branch_id)
REFERENCES Branch(branch_id)
ON DELETE SET NULL;

ALTER TABLE Employee
ADD FOREIGN KEY(super_id)
REFERENCES Employee(emp_id)
ON DELETE SET NULL;



-- Coporate branch 
INSERT INTO Employee VALUES(100, 'David', 'Wallace', 1967-11-17, 'M', 250000, NULL, 1);      -- used NULL for FOREIGN KEYS super_id and branch_id because at this point in time, the corporate branch hasnt been created yet

INSERT INTO Branch VALUES(1, 'Corporate', 100, '2006-02-09');

UPDATE Employee
SET branch_id = 1
WHERE emp_id = 100;

INSERT INTO Employee VALUES(101, 'Jan', 'Levinson', 1961-05-11, 'F', 110000, 100, 1);



-- Scranton Branch
INSERT INTO Employee VALUES(102, 'Michael', 'Scott', 1964-03-15, 'M', 75000);

INSERT INTO Branch VALUES(2, 'Scranton', 102, '1992-04-06');

UPDATE Employee
SET branch_id = 2
WHERE emp_id = 102;


INSERT INTO Employee VALUES(103, 'Angela', 'Martin', 1971-06-25, 'F', 63000, 102, 2);
INSERT INTO Employee VALUES(104, 'Kelly', 'Kapoor', 1980-02-05, 'F', 55000, 102, 2);
INSERT INTO Employee VALUES(105, 'Stanley', 'Hudson', 1958-02-19, 'M', 69000, 102, 2);



-- Stamford Branch
INSERT INTO Employee VALUES(106, 'Josh', 'Porter', 1967-09-05, 'M', 78000, 100, 3);

UPDATE Employee
SET branch_id = 3
WHERE emp_id = 106;

INSERT INTO Employee VALUES(107, 'Andy', 'Bernard', 1973-07-22, 'M', 65000, 106, 3);
INSERT INTO Employee VALUES(108, 'Jim', 'Halpert', 1978-10-01, 'M', 71000, 106, 3);




CREATE TABLE Branch (
    branch_id INT PRIMARY KEY,
    branch_name VARCHAR(40),
    mgr_id INT,
    mgr_start_date DATE,
    FOREIGN KEY(mgr_id) REFERENCES employee(emp_id) ON DELETE SET NULL          -- ON DELETE CASECADE, LOOK THIS UP
);


CREATE TABLE Client (
    client_id INT PRIMARY KEY,
    client_name VARCHAR(40),
    branch_id INT,
    FOREIGN KEY(branch_id) REFERENCES Branch(branch_id) ON DELETE SET NULL
);

INSERT INTO Client VALUES(400, 'Dunmore High School', 2);
INSERT INTO Client VALUES(401, 'Lackawana County', 2);
INSERT INTO Client VALUES(402, 'FedEx', 3);
INSERT INTO Client VALUES(403, 'John Daly Law, LLC', 3);
INSERT INTO Client VALUES(404, 'Scranton Whitepages', 2);
INSERT INTO Client VALUES(405, 'Times Newspaper', 3);
INSERT INTO Client VALUES(406, 'Fedex', 2);


CREATE TABLE Works_With (
    emp_id INT,
    client_id INT,
    total_sales INT,
    PRIMARY KEY(emp_id, client_id)
    FOREIGN KEY(emp_id) REFERENCES Employee(emp_id) ON DELETE CASCADE,
    FOREIGN KEY(client_id) REFERENCES Client(client_id) ON DELETE CASCADE
);

INSERT INTO Works_With VALUES(105, 400, 55000);
INSERT INTO Works_With VALUES(102, 401, 267000);
INSERT INTO Works_With VALUES(106, 402, 22500);
INSERT INTO Works_With VALUES(107, 403, 5000);
INSERT INTO Works_With VALUES(108, 403, 12000);
INSERT INTO Works_With VALUES(105, 404, 33000);
INSERT INTO Works_With VALUES(107, 405, 26000);
INSERT INTO Works_With VALUES(102, 406, 15000);
INSERT INTO Works_With VALUES(105, 406, 130000);




CREATE TABLE Branch Supplier (
    branch_id INT,
    supplier_name VARCHAR(40),
    supply_type VARCHAR(40),
    PRIMARY KEY(branch_id, supplier_name),
    FOREIGN KEY(branch_id) REFERENCES Branch(branch_id) ON DELETE SET NULL
);

INSERT INTO Branch Supplier VALUES(2, 'Hammer Mill', 'Paper');
INSERT INTO Branch Supplier VALUES(2, 'Uni-ball', 'Writing Utensils');
INSERT INTO Branch Supplier VALUES(3, 'Patriot Paper', 'Paper');
INSERT INTO Branch Supplier VALUES(2, 'J.T. Forms & Labels', 'Custom Forms');
INSERT INTO Branch Supplier VALUES(3, 'Uni-ball', 'Writing Utensils');
INSERT INTO Branch Supplier VALUES(3, 'Hammer Mill', 'Paper');
INSERT INTO Branch Supplier VALUES(3, 'Stamford Labels', 'Custom Forms');









--                          More Basic Queries

-- Find all Clients
SELECT *
FROM Client;

-- Find all employees ordered by salary
SELECT *
FROM Employee
ORDER BY salary;

-- Find all employees ordered by sex then name
SELECT *
FROM Employee
ORDER BY sex, first_name, last_name;

-- Find the first 5 employees in the table
SELECT *
FROM Employee
LIMIT 5;

-- Find the first and last names
SELECT first_name, last_name
FROM Employee;

-- Find the forename and surname names of all employees
SELECT first_name AS forename, last_name AS surname
FROM Employee;



-- Find out all the different genders               DISTINCT

SELECT DISTINCT sex
FROM Employee;

SELECT DISTINCT branch_id
FROM Employee;










--                              FUNCTIONS



-- Find the number of employees
SELECT COUNT(emp_id)        -- reads: select how many employees inside employee table
FROM Employee;

SELECT COUNT(super_id)      -- reads: select how many supervisors inside employee table
FROM Employee;


SELECT COUNT(emp_id)        -- reads: select how many employees inside employee table
FROM Employee
WHERE sex = 'F' AND birth_date > '1970-01-01';      -- basically saying: select the count amount of employee IDs from the employee table that is a female and born before 1970
-- 2 female employees born before 1970

-- Find the average of all employee's salaries
SELECT AVG(salary)
FROM Employee;
-- 92,880

SELECT AVG(salary)
FROM Employee
WHERE sex = 'M';
-- 101,333

-- Find the sum of all employee's salaries
SELECT SUM(salary)
FROM employee;
-- 836,000

-- Aggregation - where we can use these functions and display the data in a more helpful way
-- Find out how many males and how many females there are
SELECT COUNT(sex)
FROM Employee;
-- 9

-- aggregation example
SELECT COUNT(sex), sex
FROM Employee
GROUP BY sex;
-- shows 3 F's and 6 M's

-- another agg example - find the total sales of each salesman
SELECT SUM(total_sales), emp_id
FROM Works_With
GROUP BY emp_id;






--                          Wildcards and Like Keyword





-- % = any # characters, _ = one character


-- Find any client's who are an LLC
SELECT *
FROM Client
WHERE client_name LIKE '%LLC';                                  -- defining a pattern in the quotations after LIKE
-- if the client's name is like this, we want to return it      -- just %LLC means any number of characters can be before LLC as long as it ends with LLC
-- returns every company ending in LLC which is 1 in our table


-- Find any branch suppliers who are in the label business
SELECT *
FROM branch_supplier
WHERE supplier_name LIKE '% LABEL%';
-- will match if the supplier name has the word label in it

-- Find any employee born in October
SELECT *
FROM Employee 
WHERE birth_date LIKE '____-10%';       
-- this is gonna return every emplyee birthday with whatever year it is, the hyphen and any birthday in october


-- Fidn any clients who are schools
SELECT *
FROM Client
WHERE Client LIKE '____-02%';






--                            Unions




-- basically a special SQL operator to combine the results of multiple select statements

-- Find a list of employee and branch names
SELECT first_name
FROM Employee
UNION
SELECT branch_name
FROM branch;
-- this is combining 2 select statements to return the same data in the same table instead of sperately,
-- but this only stacks them on top of each other in 1 column

SELECT client_name, branch_id
FROM client
UNION
SELECT supplier_name, branch_id
FROM branch_supplier;


-- Find a list of all money spent or earned by the company, combine into a single list
SELECT salary
FROM employee
UNION
SELECT total_sales
FROM Works_With;
-- have to be the same amount of columns for unions to work






--                              Joins





-- 3:00:00 in the freecode camp video


-- used to combine rows from 2 or more tables based on a related column between them

-- find all branches and the names of their managers
SELECT * employee.emp_id, employee.first_name, branch.branch_name
FROM employee
JOIN branch
ON employee.emp_id = branch.mgr_id;
-- emp_id       first_name      branch_name
-- 100          David           Corporate
-- 102          Michael         Scranton
-- 106          Josh            Stamford

-- 4 types of join
LEFT JOIN
JOIN
RIGHT JOIN







--                              Nested Queries




-- using multiple select statements in order to get a specific information
-- we're going to need to use the results from 1 select statement to inform the results of another select statement

-- Find names of all employees who have sold over 30,000 to a single client

-- step 1
-- SELECT works_with.emp_id
-- FROM works_with
-- WHERE works_with.total_sales > 30000; -- then nested this in the where employee.emp_id IN ()

SELECT employee.first_name, employee.last_name
FROM employee
WHERE employee.emp_id IN (
    SELECT works_with.emp_id
    FROM works_with
    WHERE works_with.total_sales > 30000
);


-- Find all clients who are handled by the branch that Michael Scott manages
-- Assume you know Michael's ID
SELECT client.client_name
FROM client
WHERE client.branch_id = (
    SELECT branch.branch_id
    FROM branch                     -- this nested query runs first and then runs whatevers outside of the parentheses
    WHERE branch.mgr_id = 102       -- in other words this netsed query is the parentheses in the math protocol. Starts inside and works outward
);


-- did this first, he's writing what we need first here and then constructing the main query
SELECT branch.branch_id
FROM branch
WHERE branch.mgr_id = 102;


SELECT client.client_name
FROM client
WHERE client.branch_id = (
    SELECT branch.branch_id
    FROM branch
    WHERE branch.mgr_id = 102
    LIMIT 1         -- add LIMIT 1 so it would only return 1 value because it was prone to return more possibly     
);










--                              ON DELETE


-- lets say someone like Michael Scott is deleted from the database. What's gonna happen to the foreing keys associated with that deleted employee?

-- use ON DELETE SET NULL and if an employee with a mgr_id gets deleted, the mgr_id, and the super_id on the employee table, will be set to NULL

CREATE TABLE Branch (
    branch_id INT PRIMARY KEY,
    branch_name VARCHAR(40),
    mgr_id INT,
    mgr_start_date DATE,
    FOREIGN KEY(mgr_id) REFERENCES employee(emp_id) ON DELETE SET NULL          -- ON DELETE CASECADE, LOOK THIS UP
);


-- how cascading works
-- instead of just setting everything to null on delete, we're just eliminating the entire row all together

CREATE TABLE Branch Supplier (
    branch_id INT,
    supplier_name VARCHAR(40),
    supply_type VARCHAR(40),
    PRIMARY KEY(branch_id, supplier_name),
    FOREIGN KEY(branch_id) REFERENCES Branch(branch_id) ON DELETE CASCADE
);


-- *** PRIMARY KEY CANT HAVE A NULL VALUE ***
-- IF PRIMARY KEY AND FOREIGN KEY ARE SAME YOU HAVE TO USE CASCADE















--                             Triggers             3:26:00 freecodecamp video

-- basically a block of sql code that will define a certain action when a certain operation gets performed on the database
-- example: "anytime a row gets deleted I want you to insert this into something else"

-- "Delimitter $$??"
-- delimitter - 

DELIMITTER $$
CREATE
    TRIGGER my_trigger BEFORE INSERT
    ON employee
    FOR EACH ROW BEGIN
        INSERT INTO trigger_test VALUES('added new employee');
    END$$
DELIMITTER ;











--                              ER DIAGRAMS         3:43:00

-- lets say we're working for a school and the boss says we need to design a database schema, or ER diagram, for storing information about students and then maybe the classes those students take

-- an Entity is an object we want to model and store information about


-- ENTITY: STUDENT
-- ATTRIBUTES: name, grade#, gpa
-- PRIMARY KEY: student_id, ***typically underlined***
-- COMPOSITE ATTRIBUTE: "name" would be a bigger attribute and the composite attributes would be first_name and last_name
-- MULTI-VALUED ATTRIBUTE: an attribute that can have more than one value such as clubs, students can only have 1 name, 1 id, 1 gpa but any student could be participating in more than 1 club, which could then have their own composite attributes. ***typically double border lines***
-- DERIVED ATTRIBUTE: an attribute that can be derived from the other attributes, ex. "has_honors" and has ***dotted line border***

-- MULTIPLE ENTITIES: you can define more than one entity in the diagram, ex. CLASS and attributes: class_id ***underlined***
-- RELATIONSHIPS: defines a relationship between 2 entities
-- TOTAL PARTICIPATION: all members must participate in the relationship
-- stopped tking notes at 3:45:00

-- 4:07:50 = entire ER Diagram







--                 Converting ER Diagrams to Schemas


-- Step 1: Mapping of Regular Entity Types
-- such as: employee, client, branch





































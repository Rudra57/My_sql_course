CREATE DATABASE IF NOT EXISTS startersql;
USE startersql;

CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    gender ENUM('Male', 'Female', 'Other'),
    date_of_birth DATE,
    salary DECIMAL(10, 2),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
 
-- select * from users where gender='Female'
-- select * from users where date_of_birth<'1995-09-09'
-- select * from users where id>'10'
-- select * from users where date_of_birth IS NULL;
-- select * from users where date_of_birth between'1990-09-09' AND '1999-09-09'
-- select * from users where gender in ('Male','Female');
-- select * from users where gender='Male' and salary>'70000';
 -- select * from users where gender='Male' or salary>'65000';
  -- select * from users where gender='Male' and salary>'70000' order by date_of_birth asc;
  -- ORDER BY arrangees in ascending or descending order
   -- select * from users where gender='Male' and salary>'60000' ORDER BY id ASC LIMIT 5;
   -- UPDATE users SET salary=45000 WHERE id=1;
   -- SET SQL_SAFE_UPDATES = 0;
   -- update users SET salary= salary+10000 WHERE salary<60000;
   -- Delete from users where salary <=55000;
   -- ALTER TABLE users
-- ADD CONSTRAINT unique_email UNIQUE (email);-- it says all the values in colums should be unique
-- ALTER TABLE users
-- ADD CONSTRAINT chk_dob CHECK (date_of_birth > '1900-01-01'); -- it checks the constraints
     -- select*from users;
    -- SELECT COUNT(*) FROM users; -- 
   -- SELECT COUNT(*) FROM users WHERE gender = 'Female';
   -- SELECT MIN(salary) AS min_salary, MAX(salary) AS max_salary FROM users;-- min gives you minimum salary and as creates new column max gives mximum salary
  -- SELECT SUM(salary) AS total_payroll FROM users;-- For sum
  -- SELECT AVG(salary) AS avg_salary FROM users; -- for average
  -- SELECT gender, AVG(salary) AS avg_salary
-- FROM users
-- GROUP BY gender;-- group by is to form groups
-- SELECT name, LENGTH(name) AS name_length FROM users;
-- SELECT name, LOWER(name) AS lowercase_name FROM users;
-- SELECT name, UPPER(name) AS uppercase_name FROM users;
-- SELECT CONCAT(name, ' <', email, '>') AS user_contact FROM users;
-- SELECT NOW();
-- SELECT name, YEAR(date_of_birth) AS birth_year FROM users;
-- SELECT name, DATEDIFF(CURDATE(), date_of_birth) AS days_lived FROM users;-- to know how much someone has lived curdate is current date
-- SELECT id, MOD(id, 2) AS remainder FROM users;
-- SELECT 
   --  name,
    -- gender,
    -- IF(gender = 'Female', 'Yes', 'No') AS is_female
-- FROM users;
-- select*from users;
-- SELECT *
-- FROM users
-- WHERE id IN (2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25);
-- SELECT id, name, salary
-- FROM users
-- WHERE salary > (
   -- SELECT AVG(salary) FROM users
-- );
-- SELECT name, salary,
  -- (SELECT AVG(salary) FROM users) as avg
-- FROM users;
-- SELECT gender, AVG(salary) AS average_salary
-- FROM users
-- GROUP BY gender;
-- SELECT gender, AVG(salary) AS avg_salary
-- FROM users
-- GROUP BY gender
-- HAVING AVG(salary) > 55000;
-- S-- ELECT gender, COUNT(*) AS total_users
-- FROM users
-- GROUP BY gender WITH ROLLUP;
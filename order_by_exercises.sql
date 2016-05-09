-- Exercise 8.7.4 Order By

SELECT first_name, last_name, gender
FROM employees
WHERE gender = 'M' AND (first_name ='Irena' OR first_name = 'Vidya' OR first_name = 'Maya')
ORDER BY first_name, last_name;

SELECT first_name, last_name, emp_no
FROM employees
WHERE last_name LIKE 'E%' AND last_name LIKE '%E'
ORDER BY emp_no DESC;

-- SELECT first_name, last_name, hire_date
-- FROM employees
-- WHERE hire_date BETWEEN '1990-01-01' AND '1999-01-01';

-- SELECT first_name, last_name, birth_date
-- FROM employees
-- WHERE birth_date LIKE '%-12-25';

SELECT first_name, last_name, hire_date, birth_date
FROM employees
WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31'
    AND birth_date LIKE '%-12-25'
ORDER BY birth_date, hire_date DESC;

SELECT first_name, last_name
FROM employees
WHERE last_name LIKE '%q%' 
 AND last_name NOT LIKE '%qu%';

 -- safer version of above because of join
SELECT first_name, last_name
FROM employees
WHERE last_name LIKE CONCAT('%', 'q' ,'%') 
 AND last_name NOT LIKE CONCAT('%', 'qu' ,'%');
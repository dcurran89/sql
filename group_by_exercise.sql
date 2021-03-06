-- Exercise 8.7.4 Group By

SELECT title
FROM titles
GROUP BY title ASC;

SELECT first_name, last_name, emp_no
FROM employees
WHERE last_name LIKE 'E%' AND last_name LIKE '%E'
GROUP BY first_name ASC;

SELECT first_name, last_name, emp_no
FROM employees
WHERE last_name LIKE 'E%' AND last_name LIKE '%E'
GROUP BY first_name, last_name ASC;

SELECT first_name, last_name
FROM employees
WHERE last_name LIKE '%q%' 
 AND last_name NOT LIKE '%qu%'
GROUP BY last_name;
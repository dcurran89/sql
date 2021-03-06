-- Exercise 8.8 Functions

SELECT COUNT(gender), gender
FROM employees
WHERE (first_name ='Irena' OR first_name = 'Vidya' OR first_name = 'Maya')
GROUP BY gender;

SELECT first_name, last_name, CONCAT(first_name, ' ', last_name) AS full_name, emp_no
FROM employees
WHERE last_name LIKE 'E%' AND last_name LIKE '%E'
ORDER BY emp_no DESC;

SELECT first_name, last_name, hire_date, birth_date, datediff(now(), hire_date) AS days_since_hire
FROM employees
WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31'
    AND birth_date LIKE '%-12-25'
ORDER BY birth_date, hire_date DESC;

SELECT first_name, last_name, COUNT(last_name)
FROM employees
WHERE last_name LIKE CONCAT('%', 'q' ,'%') 
 AND last_name NOT LIKE CONCAT('%', 'qu' ,'%')
GROUP BY first_name, last_name
ORDER BY COUNT(last_name) DESC, last_name, first_name;




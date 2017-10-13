USE employees;

SELECT COUNT(*), gender
FROM employees
 WHERE first_name IN ('Irena', 'Vidya', 'Maya')
  GROUP BY gender;
# ORDER BY last_name ASC, first_name ASC;

SELECT CONCAT(first_name, ' ', last_name) AS 'full_name'
FROM employees
WHERE last_name LIKE 'E%'
      AND last_name LIKE '%E'
ORDER BY emp_no DESC;

SELECT first_name, last_name, birth_date, hire_date, datediff(CURDATE(), hire_date) AS 'employment_time_in_days'
FROM employees
WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31'
      AND birth_date LIKE '%-12-25'
ORDER BY birth_date, hire_date, first_name, last_name, employment_time_in_days DESC;

SELECT count(*) AS 'name_count', first_name, last_name
FROM employees
WHERE last_name LIKE '%q%'
      AND last_name NOT LIKE '%qu%'
GROUP BY 'name_count', last_name, first_name
ORDER BY name_count DESC;
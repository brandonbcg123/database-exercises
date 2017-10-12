USE employees;

-- Updated
SELECT title
FROM titles
GROUP BY title ASC;

-- Original Version
-- SELECT DISTINCT title
-- FROM titles;

-- Updated
SELECT first_name, last_name
FROM employees
WHERE last_name LIKE 'E%'
      AND last_name LIKE '%E'
GROUP BY last_name, first_name;

-- Original Version
-- SELECT last_name
-- FROM employees
-- WHERE last_name LIKE 'E%'
      -- AND last_name LIKE '%E'
-- GROUP BY last_name;

-- Using Distinct
SELECT DISTINCT last_name
FROM employees
WHERE last_name LIKE '%q%'
      AND last_name NOT LIKE '%qu%';

-- Using GROUP BY
SELECT last_name
FROM employees
WHERE last_name LIKE '%q%'
      AND last_name NOT LIKE '%qu%'
GROUP BY last_name;
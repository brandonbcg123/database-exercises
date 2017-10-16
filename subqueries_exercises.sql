USE employees;

-- All the employees with the same hire date as employee 101010 using a sub-query.
SELECT emp_no, first_name, last_name, hire_date
FROM employees
WHERE hire_date IN (
  SELECT hire_date
  FROM employees
  WHERE emp_no = 101010
);

-- Total Titles for employees whose first name is 'Aamod'
SELECT title
FROM titles
WHERE emp_no IN (
  SELECT emp_no
  FROM employees
  WHERE first_name = 'Aamod'
);

-- Unique Titles for employees whose first name is 'Aamod'
SELECT title, count(title) AS 'Count'
FROM titles
WHERE emp_no IN (
  SELECT emp_no
    FROM employees
WHERE first_name = 'Aamod'
)
GROUP BY title;

-- Current department managers that are female.
SELECT first_name, last_name, gender, hire_date
FROM employees
WHERE emp_no IN (
  SELECT emp_no
  FROM dept_manager
  WHERE to_date >= curdate()
) AND gender = 'F';
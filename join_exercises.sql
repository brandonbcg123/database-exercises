USE employees;

SELECT
  d.dept_name AS 'Department Name',
  CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager'
FROM employees AS e
  JOIN dept_manager AS dm
    ON dm.emp_no = e.emp_no
  JOIN departments AS d
    ON d.dept_no = dm.dept_no
WHERE dm.to_date >= curdate()
ORDER BY dept_name;

SELECT
  d.dept_name AS 'Department Name',
  CONCAT(e.first_name, ' ', e.last_name) AS 'Manager Name'
FROM employees AS e
  JOIN dept_manager AS dm
    ON dm.emp_no = e.emp_no
  JOIN departments AS d
    ON d.dept_no = dm.dept_no
WHERE dm.to_date = '9999-01-01'
      AND e.gender = 'F'
ORDER BY dept_name;

SELECT title, count(e.emp_no) AS 'count'
FROM titles AS t
JOIN employees AS e
ON e.emp_no = t.emp_no
JOIN dept_emp AS de
ON de.emp_no = t.emp_no
JOIN departments AS d
ON d.dept_no = de.dept_no
WHERE d.dept_name = 'Customer Service'
AND t.to_date >= curdate() and de.to_date Like '9%'
GROUP BY t.title;

SELECT
  d.dept_name AS 'Department Name',
  CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager', s.salary AS 'Salary'
FROM employees AS e
  JOIN dept_manager AS dm
    ON dm.emp_no = e.emp_no
  JOIN salaries AS s
  ON s.emp_no = e.emp_no
  JOIN departments AS d
    ON d.dept_no = dm.dept_no
WHERE dm.to_date >= curdate() AND s.to_date >= curdate()
ORDER BY dept_name;

-- BONUS
SELECT CONCAT(emp.first_name, ' ', emp.last_name) AS 'Employee Name', d.dept_name AS 'Department Name', CONCAT(mgr.first_name, ' ', mgr.last_name) AS 'Manger Name'
  FROM employees AS emp
  JOIN dept_emp AS de
  ON de.emp_no = emp.emp_no
  JOIN departments AS d
  ON d.dept_no = de.dept_no
  JOIN dept_manager AS dm
  ON dm.dept_no = d.dept_no
  JOIN employees AS mgr
  ON dm.emp_no = mgr.emp_no
  WHERE de.to_date >= curdate() AND dm.to_date >= curdate()
ORDER BY d.dept_name ASC, `Manger Name` DESC;
USE employees;

SELECT 
    t.title,
    COUNT(*) AS number_of_employees
FROM employees e
JOIN titles t
	USING (emp_no)
WHERE e.birth_date > '1965-01-01'
GROUP BY t.title;

SELECT
	t.title,
    ROUND(AVG(s.salary), 2) AS average_salary
FROM salaries s
JOIN titles t
	USING (emp_no)
GROUP BY t.title;

SELECT
	d.dept_name,
    SUM(s.salary) AS total_spent
FROM dept_emp de
JOIN departments d
	USING (dept_no)
JOIN salaries s
	USING (emp_no)
WHERE s.from_date BETWEEN '1990-01-01' AND '1992-12-31' AND d.dept_name = 'Marketing';
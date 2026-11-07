SELECT emp_no, AVG(salary) FROM salaries GROUP BY emp_no;
SELECT emp_no, SUM(salary) FROM salaries GROUP BY emp_no;
SELECT dept_no, MIN(salary) AS min_salary FROM dept_emp JOIN salaries ON dept_emp.emp_no = salaries.emp_no GROUP BY dept_no;
SELECT dept_no, MAX(salary)  AS max_salary FROM dept_emp JOIN salaries ON dept_emp.emp_no = salaries.emp_no GROUP BY dept_no;
SELECT dept_no, SUM(salary) AS total_salary FROM dept_emp JOIN salaries ON dept_emp.emp_no = salaries.emp_no GROUP BY dept_no;
SELECT dept_no, SUM(salary) AS total_salary FROM dept_emp JOIN salaries ON dept_emp.emp_no = salaries.emp_no GROUP BY dept_no HAVING total_salary > 20000000000;
SELECT dept_no, SUM(salary) AS total_salary FROM dept_emp JOIN salaries ON dept_emp.emp_no = salaries.emp_no JOIN employees ON salaries.emp_no = employees.emp_no WHERE gender = "M" GROUP BY dept_no;
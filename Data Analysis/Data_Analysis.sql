SELECT 
	Employees.emp_no, 
	Employees.last_name,
	Employees.first_name,
	Employees.sex,
	salaries.salary
FROM Employees
LEFT JOIN salaries
ON Employees.emp_no = salaries.emp_no
ORDER BY emp_no;

SELECT first_name, last_name, hire_date
FROM Employees
WHERE EXTRACT(YEAR FROM hire_date)=1986
ORDER BY emp_no;

SELECT
	Departments.dept_no,
	Departments.dept_name,
	dept_manager.emp_no,
	Employees.first_name,
	Employees.last_name
FROM Departments
LEFT JOIN dept_manager
ON Departments.dept_no = dept_manager.dept_no
LEFT JOIN Employees
ON dept_manager.emp_no = Employees.emp_no
ORDER BY Departments.dept_no;

SELECT first_name, last_name, sex
FROM Employees
WHERE first_name ='Hercules' AND last_name LIKE 'B%'
ORDER BY last_name;

SELECT
	Departments.dept_name,
	depart_emp.emp_no,
	Employees.first_name,
	Employees.last_name
FROM Departments
LEFT JOIN depart_emp
ON Departments.dept_no = depart_emp.dept_no
LEFT JOIN Employees
ON depart_emp.emp_no = employees.emp_no
WHERE Departments.dept_name = 'Sales'
ORDER BY Departments.dept_name;

SELECT
	Departments.dept_name,
	depart_emp.emp_no,
	Employees.first_name,
	Employees.last_name
FROM Departments
LEFT JOIN depart_emp
ON Departments.dept_no = depart_emp.dept_no
LEFT JOIN Employees
ON depart_emp.emp_no = Employees.emp_no
WHERE Departments.dept_name IN ('Sales', 'Development')
ORDER BY Departments.dept_name;
	
SELECT last_name, COUNT(*) AS frequency
FROM Employees
GROUP BY last_name
ORDER BY frequency DESC;
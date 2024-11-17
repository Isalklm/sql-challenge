----- Task 1: Retrieve basic employee details with salaries
SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM Employees e
JOIN Salaries s ON e.emp_no = s.emp_no;

----- Task 2: Retrieve employees hired in the year 1986
SELECT first_name, last_name, hire_date
FROM Employees
WHERE EXTRACT(YEAR FROM hire_date) = 1986;

----- Task 3: Retrieve department managers with their details
SELECT dm.dept_no, d.dept_name, e.emp_no, e.last_name, e.first_name
FROM Dept_Manager dm
JOIN Employees e ON dm.emp_no = e.emp_no
JOIN Departments d ON dm.dept_no = d.dept_no;

----- Task 4: Retrieve employees with their assigned departments
SELECT de.dept_no, e.emp_no, e.last_name, e.first_name, d.dept_name
FROM Dept_Emp de
JOIN Employees e ON de.emp_no = e.emp_no
JOIN Departments d ON de.dept_no = d.dept_no;

----- Task 5: Retrieve employees named Hercules with last names starting with 'B'
SELECT first_name, last_name, sex
FROM Employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

----- Task 6: Retrieve employees in the Sales department
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM Dept_Emp de
JOIN Employees e ON de.emp_no = e.emp_no
JOIN Departments d ON de.dept_no = d.dept_no
WHERE d.dept_name = 'Sales';

----- Task 7: Retrieve employees in Sales and Development departments
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM Dept_Emp de
JOIN Employees e ON de.emp_no = e.emp_no
JOIN Departments d ON de.dept_no = d.dept_no
WHERE d.dept_name IN ('Sales', 'Development');

----- Task 8: Count occurrences of each employee last name
SELECT last_name, COUNT(*) as count
FROM Employees
GROUP BY last_name
ORDER BY count DESC;

--1. Total Employees
SELECT * FROM Employees_Dataset

--2. Number of Employees
SELECT COUNT (employee_id) FROM Employees_Dataset

--3. Distinct Departments
SELECT DISTINCT department FROM Employees_Dataset

--4. Total Salary Expense
SELECT SUM (salary) AS Total_Salary_of_Employees FROM Employees_Dataset

--5. Average Salary 
SELECT AVG (salary) AS Average_Salary_of_Employees FROM Employees_Dataset

--6. Highest and Lowest Salary
SELECT MAX (salary) AS Maximum_Salary_of_Employees FROM Employees_Dataset
SELECT MIN (salary) AS Minimum_Salary_of_Employees FROM Employees_Dataset

--7. Employees with High Salary
SELECT * FROM Employees_Dataset WHERE salary > 60000

--8. Recent Hires
SELECT name,hire_date FROM Employees_Dataset  WHERE hire_date = '2023-06-01'

--9. Department-Specific Salary Range
SELECT name, salary FROM Employees_Dataset WHERE department = 'Engineering' AND salary BETWEEN 50000 AND 70000

--10. Sorted Employees by Salary
SELECT * FROM Employees_Dataset ORDER BY salary DESC

--11. Employee Count by Department
SELECT department, COUNT(name) AS total_employees FROM Employees_Dataset GROUP BY department ORDER BY department ASC

--12. Null Hire Dates
SELECT name FROM Employees_Dataset Employees_Dataset WHERE hire_date IS NULL










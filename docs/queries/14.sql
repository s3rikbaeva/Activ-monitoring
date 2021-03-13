--How many developers who are very successful work for a particular company?

SELECT companyID, name, count(employeeId) as number_of_employees 
FROM company WHERE employeeID = ANY(SELECT employeeID FROM employee_record WHERE performanceRating = 5) 
GROUP BY name;


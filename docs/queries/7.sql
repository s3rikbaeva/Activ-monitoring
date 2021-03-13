--Which developers have been working for a particular company for more than 5 years? Update information to top10

SELECT e.employeeID, CONCAT(e.firstName,' ',e.lasName) as "fullname", c.name, e.yearsAtCompany
FROM employee e
JOIN company c
JOIN employee_record erd
WHERE e.employeeID = c.employeeID
AND e.employeeID = erd.employeeID
AND e.yearsAtCompany > 5 ORDER BY 4 DESC; 

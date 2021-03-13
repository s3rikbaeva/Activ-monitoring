--Which is the list of developers currently in development for the project specified by the project manager?

SELECT e.employeeID
FROM employee e, project p, employee_record er
WHERE e.employeeID = p.employeeID
AND e.employeeID = er.employeeID
AND e.employeeID = (SELECT employeeID FROM employee WHERE inTime = CURRENT_DATE);
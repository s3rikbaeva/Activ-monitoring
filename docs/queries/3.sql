--How many remaining hours of a particular project are subtracting the hours spent from the total expected?

SELECT er.employeeID, (er.standardHours-er.spentTime) as "remaining_time" 
FROM employee_record er, project p, employee e 
WHERE e.employeeID = er.employeeID AND e.employeeID = p.employeeID AND projectID = 100;
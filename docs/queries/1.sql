--How many specific developers are currently out of work for a given project in a given period?

SELECT COUNT(e.employeeID) FROM employee e, employee_record er, project p 
WHERE e.employeeID = er.employeeID AND  p.employeeID = e.employeeID AND er.spentTime = 0 AND p.projectID = 100;
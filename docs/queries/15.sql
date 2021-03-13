--Which employees have a low level of work in a particular project in a certain period of time?

SELECT e.employeeID, p.projectID, CONCAT(e.firstName,' ',e.lasName) as "fullname" 
FROM employee e, employee_record er, project p 
WHERE e.employeeID = er.employeeID AND e.employeeID = p.employeeID 
AND er.performanceRating < 2;

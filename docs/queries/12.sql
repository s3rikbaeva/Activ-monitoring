--Show the list with the name of the projects that perform employees and the status of this project for the "Employees" page.

SELECT p.projectName, CONCAT(e.firstName,' ',e.lasName) as "fullname", t.status AS "status"
FROM employee e, project p, task t, employee_record ea
WHERE e.employeeID = p.employeeID AND ea.employeeID = e.employeeID AND ea.employeeRecordID = t.employeeRecordID; 

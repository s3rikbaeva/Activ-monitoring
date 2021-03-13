--Specify the full name, activity, role of the work in the project, and the time spent on each employee's task who visited recently.

SELECT e.employeeID, CONCAT(e.firstName,' ',e.lasName) as "fullname", t.taskDescription, j.jobRole, er.spentTime 
FROM employee e, task t, job j, employee_record er WHERE
e.employeeID = er.employeeID AND er.employeeRecordID = t.employeeRecordID AND t.jobID = j.jobID 
AND er.outTime = ANY(SELECT outTime FROM employee_record ORDER BY 1 DESC);

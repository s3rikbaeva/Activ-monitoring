--What is the time of the last login of a particular developer along with its full name job id?

SELECT e.employeeID, CONCAT(e.firstName,' ',e.lasName) as "fullname", er.outTime, t.jobID
FROM employee_record er, employee e, task t, project p
WHERE er.employeeID = e.employeeID
AND er.employeeRecordID = t.employeeRecordID
AND p.employeeID = e.employeeID
AND p.projectID = 100
ORDER BY er.outTime;
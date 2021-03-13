--What reports (and activity descriptions) were made by a particular developer at a particular time?

SELECT e.employeeID, CONCAT(e.firstName,' ',e.lasName) as "fullname", er.spentTime, t.taskDescription 
FROM employee e, employee_record er,task t 
WHERE e.employeeID = er.employeeID AND er.employeeRecordID = t.employeeRecordID;
--What additional information is there for a particular developer, if you enter it in the search?

SELECT e.employeeID, CONCAT(e.firstName,' ',e.lasName) as "fullname", ea.monthlyIncome, 
ea.maritalStatus, ea.environmentSatisfaction, j.jobLevel, j.jobRole 
FROM employee e, employee_additional_info ea, task t, job j, employee_record er 
WHERE e.employeeID = ea.employeeID AND er.employeeID = e.employeeID 
AND er.employeeRecordID = t.employeeRecordID AND j.jobID = t.jobID;

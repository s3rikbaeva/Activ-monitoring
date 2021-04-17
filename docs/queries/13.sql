--Show a description of each task associated with the employee

SELECT t.taskDescription FROM task t, employee_record er, employee e
WHERE e.employee_id = er.employee_id AND er.employeeRecordID = t.employeeRecordID;

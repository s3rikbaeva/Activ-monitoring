--How long a certain developer worked on a certain project over a certain period of time?

SELECT m.managerID, p.projectID, e.employeeID, er.spentTime 
FROM manager m, project p, employee e, employee_record er 
WHERE m.managerID = p.managerID AND p.employeeID = e.employeeID 
AND e.employeeID = er.employeeID AND m.managerID = 100;
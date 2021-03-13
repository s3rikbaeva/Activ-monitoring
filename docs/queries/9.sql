--What is the specific project number, the developer and manager who worked on the specified project?

SELECT p.projectID, e.employeeID, m.managerID, er.spentTime
FROM employee_record er, project p, employee e, manager m
WHERE er.employeeID = e.employeeID AND p.employeeID = e.employeeID 
AND m.managerID = p.managerID;

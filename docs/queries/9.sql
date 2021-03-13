--What is the specific project number, the developer and manager who worked on the specified project, and the amount of time spent on it during the specified time period?

SELECT projectID, employeeID, managerID, spentTime
FROM employee_record
JOIN project p
JOIN employee e
JOIN manager m
WHERE

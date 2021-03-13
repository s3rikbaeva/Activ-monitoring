--What is the education and training time in the past year of a developer and a manager who work on the same project?

SELECT e.employeeID, CONCAT(e.firstName,' ',e.lasName) as "fullname",  ea.trainingTimesLastYear,
(CASE 
    WHEN ea.education = 1 THEN 'Below College'
    WHEN ea.education = 2 THEN 'College'
    WHEN ea.education = 3 THEN 'Bachelor'
    WHEN ea.education = 4 THEN 'Master'
    ELSE 'Doctor'
END) as education
FROM employee e, employee_additional_info ea 
WHERE e.employeeID = ea.employeeID;

--How many developers are involved in a particular project, also specify the project name?

SELECT COUNT(employeeID) AS "number_of_employees", projectName from project GROUP BY projectID;

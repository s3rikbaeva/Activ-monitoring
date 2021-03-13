--What is the number of the manager and the project that he worked on in a certain period of time?

SELECT m.managerID, m.name, p.projectID, p.projectName 
FROM manager m, project p 
WHERE m.managerID = p.managerID;

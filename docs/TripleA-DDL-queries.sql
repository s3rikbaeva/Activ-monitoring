CREATE TABLE employee (  
    employeeID INT(11) NOT NULL PRIMARY KEY,
    companyID INT(11),
    firstName VARCHAR(50),
    lastName VARCHAR(50),
    gender CHAR(2),
    yearsAtCompany INT(2)
);

CREATE TABLE manager (  
    managerID INT(11) NOT NULL PRIMARY KEY,
    name VARCHAR(50)
);

CREATE TABLE company (  
    companyID INT(11) NOT NULL PRIMARY KEY,
    employeeID INT(11) NOT NULL,
    name VARCHAR(50),
    employeeNumber INT(5)
);

CREATE TABLE project (  
    projectID INT(11) NOT NULL PRIMARY KEY,
    employeeID INT(11) NOT NULL,
    managerID INT(11) NOT NULL,
    projectName VARCHAR(50)
);

CREATE TABLE job (  
    jobID INT(11) NOT NULL PRIMARY KEY,
    jobLevel INT(5),
    jobRole VARCHAR(11)
);

CREATE TABLE task (  
    taskID INT(11) NOT NULL PRIMARY KEY,
    jobID INT(11) NOT NULL,
    employeeRecordID  INT(11) NOT NULL,
    taskDescription VARCHAR(50)
);

CREATE TABLE employee_additional_info (  
    employeeAdditionalInfoID INT(11) NOT NULL PRIMARY KEY,
    employeeID INT(11) NOT NULL,
    education INT(2),
    maritalStatus VARCHAR(5),
    monthlyIncome INT(10),
    environmentSatisfaction INT(5),
    trainingTimesLastYear INT(5)
);

CREATE TABLE employee_record (  
    employeeRecordID INT(11) NOT NULL PRIMARY KEY,
    employeeID INT(11) NOT NULL,
    performanceRating INT(5),
    spentTime TIME,
    monthlyIncome INT(10),
    standardHours INT(5),
    inTime DATETIME,
    outTime DATETIME
);

ALTER TABLE employee ADD CONSTRAINT fk_employee_company_id FOREIGN KEY (companyID) REFERENCES company(companyID);

ALTER TABLE employee_record  ADD CONSTRAINT fk_employeeRecord_employee_id FOREIGN KEY (employeeID) REFERENCES employee(employeeID);

ALTER TABLE employee_additional_info ADD CONSTRAINT fk_employeeAdditionalInfo_employee_id FOREIGN KEY (employeeID) REFERENCES employee(employeeID);

ALTER TABLE task ADD CONSTRAINT fk_task_job_id FOREIGN KEY (jobID) REFERENCES job(jobID);

ALTER TABLE project ADD CONSTRAINT fk_project_employee_id FOREIGN KEY (employeeID) REFERENCES employee(employeeID);

ALTER TABLE project ADD CONSTRAINT fk_project_manager_id FOREIGN KEY (managerID) REFERENCES manager(managerID);

CREATE TABLE employee (  
    employeeID INT(11) NOT NULL PRIMARY KEY,
    companyID INT(11),
    firstName VARCHAR(50),
    lastName VARCHAR(50),
    gender CHAR(2),
    yearsAtCompany INT(2)
);

CREATE TABLE manager  (  
    managerID INT(11) NOT NULL PRIMARY KEY,
    name VARCHAR(50)
);
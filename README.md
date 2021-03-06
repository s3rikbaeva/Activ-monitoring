<!-- PROJECT LOGO -->
<br />
<p align="center">
    <img src="https://sun9-55.userapi.com/impg/JfiXoEZ3BMNL3kFwkQGTwGGyYDQhB26mnIOHyA/QCZGdd6tPHg.jpg?size=425x216&quality=96&proxy=1&sign=29e13599e98c5890fd0e3c2a424581bc&type=album" alt="Logo" width="170" height="100">

  <h3 align="center">Activ-Monitoring app</h3>

  <p align="center">
    A web application for monitoring your company's employees
    <br />
  </p>
</p>

<!-- TABLE OF CONTENTS -->
<details open="open">
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#project-description-and-data-preparation">Project description and data preparation</a>
      <ul>
        <li><a href="#goal-of-the-project">Goal of the project</a></li>
        <li><a href="#implementation">Implementation</a></li>
        <li><a href="#built-with">Built with</a></li>
      </ul>
    </li>
    <li>
      <a href="#project-use-case-diagram-and-questions-over-the-data">Project Use-Case diagram and questions over the data</a>
      <ul>
        <li><a href="#questions">Questions</a></li>
        <li><a href="#dataset">Dataset</a></li>
        <li><a href="#uml-diagram">UML diagram </a></li>
      </ul>
    </li>
    <li>
      <a href="#data-modeling-and-database-design">Data modeling and database design</a>
      <ul>
        <li><a href="#er-diagram">ER diagram</a></li>
        <li><a href="#ddl-queries">DDL queries</a></li>
        <li><a href="#dml-queries">DML queries</a></li>
      </ul>
    </li>
  </ol>
</details>

<!-- Project description and data preparation -->
# Project description and data preparation

## Goal of the project
Help developers discover the problem in time, evaluate it, give them the opportunity to suggest a solution, and avoid costly fixes without losing their way. As a result, the main goal is to develop the project in a <b>fixed time</b>, at a price and with a given <b>functionality</b> and <b>quality</b>.

We offer the following solutions:
* Correct calculation of time and effort for each project. :memo:
* Monitoring the performance of each employee of your company :speech_balloon:
* During the quarantine, many of the company's employees work from home, so our web app is up-to-date. :mask:

## Implementation 
* Scope of the project: 3 months
* Type of the user-interface: Web-oriented application
1) User login/authorization
2) The ability for the user to fill in and send the form with the time spent, as well as calculate the remaining time.
3) The administrator should be able to see all employees and their working hours

## Built with
*[MySQL](https://www.mysql.com/downloads/)*

*[PHP](https://www.php.net/)*

We chose PHP for the backend, as we had previously worked with this programming language.
<br />

<!-- Project Use-Case diagram and questions over the data -->
# Project Use-Case diagram and questions over the data

<!--QUESTIONS  -->
## Questions 
1) How many specific developers are currently out of work for a <i>given project</i> in a <i>given period</i>?
2) How long a certain developer worked on a <i>certain project</i> over a <i>certain period</i> of time?
3) How many remaining hours of a particular project are subtracting the hours spent from the total expected?
4) How many reports are made by a certain developer and their description in a certain period of time for the specified project?
5) Which is the list of developers currently in development for the project specified by the project manager?
6) What is the time data of the projects that were changed in a certain period of time, and their description?
7) What types, description, and number of projects a particular developer is working on during a specified time period?
8) What is the time of the last login of a particular developer along with its full name job number?
9) What is the specific project number, the developer and manager who worked on the specified project, and the amount of time spent on it during the specified time period?
10) What is the number and number of employees who work more or less than a certain time in the company?
11) What is the education and training time in the past year of a developer and a manager who work on the same project?
12) What is the marital status of all developers under development of the project?
13) What is the number of the manager and the project that he worked on in a certain period of time?
14) What is the number of the developer, his level and role of work in the specified project with the number of this activity?
15) Which employees had the same level of work in a particular project in a particular time period?
<br />


<!--DATASET  -->
## Dataset 
It was important for us to choose a set of data that we can use in the future. Since there was no information on the Internet about the company's employees and their projects(including each employee's working hours and work efficiency), we decided to generate our own data. Which you can view in the following files:

<a href="/docs/dataset/employee.csv">Employee</a>
<br />
<a href="/docs/dataset/employee_record.csv">Employee record</a>
<br />
<a href="/docs/dataset/employee_additional_info.csv">Employee additional info</a>
<br />
<a href="/docs/dataset/job.csv">Job</a>
<br />
<a href="/docs/dataset/company.csv">Company</a>
<br />
<a href="/docs/dataset/manager.csv">Manager</a>
<br />
<a href="/docs/dataset/project.csv">Project</a>
<br />
<a href="/docs/dataset/task.csv">Task</a>
<br />

<b>The size of each data set takes up almost 6000 data, which have completely different dimensions.</b>
<h4>Initial ER diagram </h4>
<details>
<summary>ER diagram</summary>

![](/docs/TripleA-ERD.png)

</details>

<h3>Structure of tables</h3>

<h3>Employee table</h3> 
<ul>
        <li><a>employeeID - primary key - INT(11) - ID of employee</a></li>
        <li><a>companyID - foreign key - INT(11) - ID of company, in which employee currently working</a></li>
        <li><a>firstName - VARCHAR(50)- first name of employee</a></li>
        <li><a>lasName - VARCHAR(50) - last name of employee</a></li>
        <li><a>gender - CHAR(2) - gender of employee (M/F) </a></li>
        <li><a>yearsAtCompany - INT(2)- Total number of years spent at the company by the employee</a></li>
</ul>
 
<h3>Employee_record table</h3> 
<ul>   
  <li><a>employeeRecordID - primary key - INT(11) - ID of record</a></li>
  <li><a>employeeID - foreign key - INT(11) - ID of employee</a></li>
  <li><a>performanceRating - INT(5) - Performance rating for last year</a></li>
  <li><a>spentTime - TIME - spent time for activity</a></li>
  <li><a>standardHours - INT(5) - Standard hours of work for the employee</a></li>
  <li><a>totalWorkingYears - INT(5) - Total number of years the employee has worked so far</a></li>
  <li><a>inTime - DATETIME - entered time of employee</a></li>
  <li><a>outTime - DATETIME - leaved time of employee</a></li>
</ul>

<h3>Employee_additional_info table</h3> 
<ul>     
  <li><a>employeeAdditionalInfoID - foreign key - INT(11) -  ID of employee</a></li>
  <li><a>employeeID - foreign key - INT(11) - ID of employee</a></li>
  <li><a>education - INT(2)- Education Level (1-'Below College'; 2-'College'; 3-'Bachelor'; 4-'Master'; 5-'Doctor')</a></li>
  <li><a>maritalStatus - VARCHAR(5) - Marital status of the employee</a></li>
  <li><a>monthlyIncome - INT(10) - Monthly income in rupees per month</a></li>
  <li><a>environmentSatisfaction - INT(5) - Work Environment Satisfaction Level</a></li>
  <li><a>trainingTimesLastYear - INT(5) - Number of Times training was conducted for this employee last year</a></li>
</ul>

<h3>Job table</h3> 
<ul>     
  <li><a>jobID - primary key - INT(11) - ID of job</a></li>
  <li><a>jobLevel - INT(5) - Job level at company on a scale of 1 to 5 </a></li>
  <li><a>jobRole - VARCHAR(11) - Name of job role in company</a></li>
</ul>

<h3>Task table</h3> 
<ul>     
  <li><a>taskID - primary key - INT(11) - ID of task</a></li>
  <li><a>jobID - foreign key - INT(11) - ID of job</a></li>
  <li><a>employeeRecordID - foreign key - INT(11) - ID of record</a></li>
  <li><a>taskDescription - VARCHAR(50) - Description of the activity performed by the employee</a></li>
</ul>


<h3>Manager table</h3> 
<ul>   
  <li><a>managerID - primary key - INT(11) - ID of manager</a></li>
  <li><a>name - VARCHAR(50) - Name of manager</a></li>
</ul>

<h3>Project table</h3> 
<ul>   
   
  <li><a>projectID - primary key - INT(11) - ID of manager</a></li>
  <li><a>employeeID - foreign key - INT(11) - ID of employee</a></li>
  <li><a>managerID - foreign key - INT(11) - ID of manager</a></li>
  <li><a>projectName - VARCHAR(50) - project name</a></li>
</ul>

<h3>Company table</h3> 
<ul>   
   
  <li><a>companyID - primary key - INT(11) - ID of company</a></li>
  <li><a>employeeID - foreign key - INT(11) - ID of employee</a></li>
  <li><a>name - VARCHAR(50) - Company name</a></li>
  <li><a>employeeNumber - INT(5) - Employee number</a></li>
</ul>   


<!--UML diagram  -->
## UML diagram 

1. The system outputs the data to the project manager, which will contain developers who do not have a certain amount of working time.
2. The system outputs data to the project manager, which will show the amount of time the developer has worked on the project for a certain amount of time to monitor the number of hours of work.
3. The system makes an estimate of the remaining time of the specified project and outputs the information to the project manager.
4. The manager can find out about the developer's reports and their details by the specified date that the system will issue.
5. The system outputs data to the project manager, which will contain developers who have a certain amount of working time.
6. The manager can find out about certain postponed activity times issued by the system.
7. The manager can learn more about the developer's work using the system.
8. The system can give the developer information about his last login.
9. Employees can get information about the project and the people who worked on it and how much time was spent on this project.
10. The system gives the manager information about the duration of the employee's work in the company.
11. The system can give information to the observer or the manager about the education of an employee.
12. The system displays complete information about the developers to the manager.
13. The system gives information about the project numbers and the manager who worked on it.
14. The system gives out the number of the developer and the project, the level and role of the employee who works on this activity.
15. The system provides information about the level of the employee in a certain period of time and the project.

<br />
<details>
<summary>UML diagram</summary>

![](/docs/TripleA-UseCase-UML.png)

</details>

<br />

<!-- Data modeling and database design -->
# Data modeling and database design

## ER diagram
  When designing our diagram, it was important for us to choose the <b>right attributes</b> for each table and build the <b>right relationships</b> between the tables.We also decided to implement diagrams in two types, `class` and `figure`. The solution was to highlight the following tables, which are given below:
<details>
<summary>ER diagram(figure-shape)</summary>

![](/docs/TripleA-ER.png)

</details>

   The main performer is the Employee and the less important table for recording the Employee_record activity, which is linked by a 1-to-Many relationship, where the Employee can record multiple reports on a particular job. Also, in each Employee_record, there is a specific task that the Employee has done. The task is related to the work(from the part). Therefore, it was decided to build the logic for example,
   
   "The job can be divided into tasks (1-to-Many), and for each task there is a record (1-to-Many), which is performed by an Employee(1-to-Many)"
    Also, there is a certain part with the Project Manager, because the PM can contact the Employee using the Project. And for each Employee's relationship with the PM, there is a specific project (1-to-Many), while for an employee there may be several projects, or vice versa, several Employees are allocated for the project(Many-to-Many). Ultimately, the ratio between a Company and an Employee remains Many-to-Many, since one employee can work in multiple Companies, just as a Company employs multiple employees. Also highlighted is spentTime as a Derived Attribute, since we will count it by the following formula: 
    `spentTime = outTime - inTime`
    
   For our ActivMonitoring application, the following structure was selected, which consists of the following data and types for each column:
<details>
<summary>ER diagram(class)</summary>

![](/docs/TripleA-ERD.png)

</details>


## DDL queries 

We created the user and the database using the phpMyAdmin GUI, as we found it convenient. All privileges were transferred to the main user `root`, which we will use in the future. After configuring PHP and MySQL, it was decided to integrate everything into VSCode for convenience. Therefore, it was not difficult to establish a connection between them. To make it much easier to write queries in the future. For verification, we used the local address and the queries that we sent when creating the tables were successfully displayed.

<img src="https://sun9-52.userapi.com/impg/vLXZvFfx9R144iIiWK6zjI6x1S-Z5gDOsUJgzg/UWlnAmUHYZ8.jpg?size=1280x602&quality=96&sign=11cb92453fb6b0d505c45e86cc30fdd7&type=album">

You can view all the queries that we made in the following file  <a href="/docs/TripleA-DDL-queries.sql">DDL queries</a>

## DML queries

To add 5.5k data, it would be inconvenient to use the `INSERT` function, as it would take a very long time to write and add. Also, we did not consider it necessary to add a GUI via phpMyAdmin, since the process will take some time, and it would not be logical to generate 5.5k lines to each table. To add data to the tables that we created, we decided to use a ready-made script:

```sh
  LOAD DATA INFILE 'employee.csv' 
  INTO TABLE employee 
  FIELDS TERMINATED BY ',' 
  ENCLOSED BY '"'
  LINES TERMINATED BY '\n'
  IGNORE 1 ROWS;
  ```
  
In order for the addition of data to be successful without any errors on the keys that we added to the tables(This can be `Foreign keys` , since we indicated above that they can not have empty values). Be sure to run each script in the following order, which we specified in the file, otherwise an error will occur.

<img src="https://sun9-41.userapi.com/impg/QR2MjCZlKesGMhtDqRvkC2bYbsG4V3p6Oo_fNw/C9kBmjdrXOk.jpg?size=1280x684&quality=96&sign=08a219f566ac01deced405cf844ef397&type=album">


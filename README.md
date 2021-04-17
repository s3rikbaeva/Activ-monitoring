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
      <a href="#project-description-and-data-preparation">Project description and data preparation</a> 💬
      <ul>
        <li><a href="#goal-of-the-project">Goal of the project</a></li>
        <li><a href="#implementation">Implementation</a></li>
        <li><a href="#built-with">Built with</a></li>
      </ul>
    </li>
    <li>
      <a href="#project-use-case-diagram-and-questions-over-the-data">Project Use-Case diagram and questions over the data</a> 👀
      <ul>
        <li><a href="#questions">Questions</a></li>
        <li><a href="#dataset">Dataset</a></li>
        <li><a href="#uml-diagram">UML diagram </a></li>
      </ul>
    </li>
    <li>
      <a href="#data-modeling-and-database-design">Data modeling and database design</a> 🌍
      <ul>
        <li><a href="#er-diagram">ER diagram</a></li>
        <li><a href="#ddl-queries">DDL queries</a></li>
        <li><a href="#dml-queries">DML queries</a></li>
      </ul>
    </li>
      <li>
          <a href="#sql-queries">SQL Queries</a> 📺
      </li>
      <li>
          <a href="#user-interface-implementation-and-connection">User-interface implementation and connection</a> 🎈
          <ul>
            <li><a href="#programming-languages-design-and-frontend-creation">Programming languages, design and frontend creation</a></li>
            <li><a href="#connecting-to-the-database">Connecting to the database</a></li>
            <li><a href="#a-few-words-about-the-backend">A few words about the backend</a></li>
            <li><a href="#sql-queries-in-action">SQL queries in action</a></li>
            <li><a href="#data-visualization">Data visualization</a></li>
          </ul>
      </li>
      <li>
         <a href="#sql-to-relational-algebra-ra-operators">SQL to Relational Algebra (RA) operators</a> 📟
      </li>
      <li>
         <a href="#calculating-true-cardinalities-and-plan-evaluation">Calculating true cardinalities and plan evaluation</a> ⌚
      </li>
      <li>
         <a href="#speed-performance-evaluation">Speed performance evaluation</a> 💫
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
4) What reports (and activity descriptions) were made by a particular developer at a particular time?
5) Which is the list of developers currently in development for the project specified by the project manager?
6) How many developers are involved in a particular project, also specify the project name?
7) Which developers have been working for a particular company for more than 5 years?
8) What is the time of the last login of a particular developer along with its full name job id?
9) What is the specific project ID, the developer and manager who worked on the specified project?
10) Specify the full name, activity, role of the work in the project, and the time spent on each employee's task who visited recently.
11) What is the education and training time in the past year of a developer and a manager who work on the same project?
12) What additional information is there for a particular developer, if you enter it in the search?
13) What is the number of the manager and the project that he worked on in a certain period of time?
14) How many developers who are very successful work for a particular company?
15) Which employees have a low level of work in a particular project in a certain period of time?
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
7. The system allows the project manager to see statistics that indicate how many developers have been working in a particular company for more than 5 years.8. The system can give the developer information about his last login.
9. Employees can get information about the project and the people who worked on it and how much time was spent on this project.
10. The system specifies the full name, activity, role of the work in the project, and the time spent on each employee's task who visited recently.
11. The system can give information to the observer or the manager about the education of an employee.
12. The system will give the manager information about the activities of a particular developer.
13. The system will give the manager information about the status of each task of certain developers.
14. The system allows the project manager to see statistics that indicate how many developers have successfully worked in the company.
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


<!-- SQL queries -->
# SQL queries
There are some points in our queries, like writing elements through the backend. For example, in this query, the projectID may depend on the situation that we will specify in the backend part of the development.

```sh
  SELECT COUNT(e.employeeID) FROM employee e, employee_record er, project p 
  WHERE e.employeeID = er.employeeID AND  p.employeeID = e.employeeID AND er.spentTime = 0 AND p.projectID = 100;
  ```
  
 Using variables in php:
 ```sh
  <?php
  $mysqli = new mysqli("localhost", "user", "pass", "test");

  if( mysqli_connect_errno() )
    die("Connection failed: %s\n", mysqli_connect_error());

  $col = "100";

  $query = "SELECT COUNT(e.employeeID) FROM employee e, employee_record er, project p 
            WHERE e.employeeID = er.employeeID AND  p.employeeID = e.employeeID AND er.spentTime = 0 AND p.projectID = $col; ";

  $result = $mysqli->query($query);

  while($row = $result->fetch_assoc())
  {
    echo "<p>" . $row["$col"] . "</p>\n";
  }

  $result->close();

  $mysqli->close();
?>


  ```
 

All requests are on this <a href="/docs/queries">path</a>.

<!-- User-interface implementation and connection -->
# User-interface implementation and connection
If your computer already has PHP and Composer installed, you may create a new Laravel project by using Composer. After the application has been created, you may start Laravel's local development server using the Artisan CLI's `serve` command. 

1.`php artisan serve` to start the project. Also, if some errors come out here, you can easily fix them by writing the following command on the way to the project : `composer install`
<img src="https://sun9-49.userapi.com/impg/PNprpjniIE5mZ2SmPsq3DbYtU5Fg9lyaAvHsjQ/pYyRGK6LCZc.jpg?size=701x351&quality=96&sign=eef1c4d38ac0c4e651e241b310c4f89a&type=album">

2.`npm run watch` to start the front.Also, if some errors come out here, you can easily fix them by writing the following command on the way to the project : `npm install .`
And after that, a message should be sent about the successful launch of the project
<img src="https://sun9-56.userapi.com/impg/4nCTe9FQ14iSzPsB3QDHcFGRxCJFO9a0pjXj5A/9Q6VUhu5QLg.jpg?size=1093x418&quality=96&sign=4fe8ec099c2d3c592981e0d77a7fb05d&type=album">

3.`php artisan migrate` to create tables locally at home, you will need to open phpMyAdmin, then create a new database 'triplea' and use the following command to create tables in it
<img src="https://sun9-55.userapi.com/impg/mldyKyZ9RduIDa7JJcDODtxpqAsBH5ymbqK29w/yOOtnDRtO7I.jpg?size=1858x489&quality=96&sign=bffe82db2ba34f0fa29cf1254f624d1d&type=album">


4.`php artisan db:seed` To write to the database from our dataset and creates a default user. Each request will take a certain amount of time, as long as the dataset is loaded for each request, and this is 5.5 k of data, it will take a long time.
<img src="https://sun9-18.userapi.com/impg/b0uXFlSgxwkgt6fjeRbh-1A64ZqVqQEcYamW5Q/DEkC6vPGI3M.jpg?size=1632x430&quality=96&sign=58c8dd78155faa98e9d57f7245ca44a3&type=album">

5.Also, when you start the project, you need to generate a keyb using the following command `php artisan key:generate`
<img src="https://sun9-37.userapi.com/impg/uxty49OxsKBlA12ShtY3LW1giJ0fhL5Q7w3xlg/dtL7ekoYRho.jpg?size=660x54&quality=96&sign=dcc1168faad37262a18b90b617242181&type=album">

6.And after all the installations, you can run our web application locally
<img src="https://sun9-69.userapi.com/impg/2cBDNS_ywtw3W4hDtTtAb_B9rd-o1jZxkFLmYw/V9DrP8ztqtg.jpg?size=1723x472&quality=96&sign=b8e0e27c469002ff03bf9592e002b18f&type=album">

7.Login details (Depending on who logs in) The initial pages will be different, so use two login methods)
`login: admin pass: 123456`
`login: manager pass: 123456`


## Programming languages, design and frontend creation
 To begin with, We want to remind you that our project is to monitor the activities of employees, and an important role is played in their perception: the perception of colors, fonts, and the principle of design. Since this design will be seen every day, our designer tried to make everything in warm colors. With such preferences, using the <a href="/docs/TripleA-UseCase-UML.png">UML-diagram</a> of the functions that we described above, we came to the conclusion to make the following pages for the frontend, which you can find at the following <a href="https://www.figma.com/file/jJ3vPhYpjfQd0vBxn3gMIE/Activ-monitoring?node-id=0%3A1">link</a>. I will also attach some parts here:
<br/>
<a style="text-align: center;">Login page</a>
<img src="https://user-images.githubusercontent.com/49391323/112751241-8cebc600-8fd5-11eb-814f-a549ef05838e.png">
<br/>
<a style="text-align: center;">Dashboard page for manager</a>
<img src="https://user-images.githubusercontent.com/49391323/112751455-d4bf1d00-8fd6-11eb-8da1-945ab49e781b.png">
<br/>
<a style="text-align: center;">Dashboard page for developer</a>
<img src="https://user-images.githubusercontent.com/49391323/112751453-d4268680-8fd6-11eb-9cc3-faef88c04c30.png">
<br/>
<a style="text-align: center;">Manager page</a>
<img src="https://user-images.githubusercontent.com/49391323/112751460-d5f04a00-8fd6-11eb-8fab-7dfdb9bc9bff.png">
<br/>
<a style="text-align: center;">Employee page</a>
<img src="https://sun9-64.userapi.com/impg/swb6meiifEQRB-Jz801K8lyRwZHADK8ubfDcQQ/PiZFxVdUUTk.jpg?size=1280x639&quality=96&sign=295f8d25652eb854754b34ca90321e32&type=album">
<br/>
<a style="text-align: center;">Employee page for monitoring</a>
<img src="https://sun9-76.userapi.com/impg/Vguqr2dL_3Q59aP-ZC-neSSvKO2tC5EHsQaMWw/f8zGdDQjtFg.jpg?size=1280x643&quality=96&sign=2ec18d7b0e75a0533012c19753edd6ae&type=album">
<br/>
<a style="text-align: center;">Notifications page</a>
<img src="https://user-images.githubusercontent.com/49391323/112751461-d5f04a00-8fd6-11eb-9a8e-ff5f5a02fbbe.png">
<br/>
<a style="text-align: center;">Settings page</a>
<img src="https://user-images.githubusercontent.com/49391323/112751451-d2f55980-8fd6-11eb-98ed-3c764cbfc0c9.png">
<br/>
<a style="text-align: center;">Help page</a>
<img src="https://user-images.githubusercontent.com/49391323/112751456-d557b380-8fd6-11eb-9661-019e46f6fafa.png">
<br/>
For each page, there are specific functions that it performs, so we tried to make a user-friendly UX interface, as the user should be comfortable working with our web application.
Our stack of technologies fell on this choice:
<ol>   
   <li><a>HTML + CSS + Bootstrap - frontend development. We took many of the templates from bootstrap.
</a></li>
  <li><a>PHP + Laravel - backend development. PHP can interact with many different database languages including MySQL. We work with MySQL since this is also a free language so it makes sense to use PHP</a></li>
  <li><a>MySQL - database. Since MySQL is easy to manage and also most common to use in web databases. It can be used to store anything from a single record of information to a huge amount of information, such as for our website.</a></li>
</ol>


## Connecting to the database
<img src="https://user-images.githubusercontent.com/49391323/112751862-d4278600-8fd8-11eb-84d8-213a1880ca53.jpg">
The values must be specified in the environment. After the Laravel framework creates the connection itself. Create .env file with the next content like in .env.example

## A few words about the backend
The project was written on the laravel framework. The project is launched by the php artisan serve command. (If all dependencies are installed, if not, you need to run the composer install command) after the project will be launched locally.
<ul>   
   <li><a>The project has .env (the environment in the project is written as .env.example, you must copy and paste without .example) which contains the data for connecting to the database. Port, dB, user, password and so on.
</a></li>
  <li><a>For the correct display of the front, you need to run npm by the npm run watch command (if at the end you get errors, try to restart it, the error exits because of not installed dependencies and the running command will try to install all dependencies) if it fails, run npm install.
</a></li>
  <li><a>The project structure is divided so that the business logic and controllers are separate (in the app folder) and the visual (front in the resources folder) part are separate.</a></li>
</ul>
There is a route in the project by which certain pages are displayed depending on the specified url. Routes respond to a method call from the controller. To display the page, the "index" function is used, which returns the generated page.
Routes can be viewed in router / web.php
</br></br>
Controller - contains methods for interacting with the user (displaying, saving, deleting, editing, and so on).
</br></br>
Models - the main business logic is running. Working with the base, subtraction or something else.
</br></br>
For example: displaying the ru / employees page. When you follow this link, a method from the employees controller index is called through the route. The index method refers to the employees model, where your sql queries are written. The model returns the received data to the controller, the controller collects and displays the template we need.
</br></br>
In the index method, it refers to the employees model, where your sql queries are written in turn.
</br></br>
The model returns the received data to the controller, the controller collects it and displays the template we need.

## SQL queries in action
We want to start with the fact that during the implementation of the project, we changed the SQL queries many times, because some queries were not enough to show some data for monitoring. So you can see the updated version of our requests at the following <a href="/docs/queries/">link</a>.
<img src="https://sun9-13.userapi.com/impg/8WpUmFaPa0EEyXNR0PFZnrYaaTAD4YUTStiitg/CCMH6Dxk-6E.jpg?size=1920x1029&quality=96&sign=b3aa0a8488dac91afd76db1a55a76343&type=album">
We wrote SQL queries in the Models in the form of functions that were called in the Controllers. For example, let's take the following function getRemainingTime () in DashboardController (), which is called at the following path App\Models\Employees and if you pay attention to the function itself, you might notice that the SQL query that we wrote on the <a href="/docs/queries/3.sql">3rd query</a>. And as you could see it is returned to us in the following form:
<img src="https://sun9-51.userapi.com/impg/I7ZJSrO3z9CPW8nAYDPwUBLMeb-a0LmolJdbiw/d9GKFivOdIY.jpg?size=1919x909&quality=96&sign=607281a087c81fbfcf83f341e5c3ac57&type=album">


## Data visualization
We decided to use data visualization, showing statistics of employees who are effective in companies. It shows 5 companies with statistics. It is located on the page of the manager who oversees all this.
<img src="https://user-images.githubusercontent.com/49391323/112751460-d5f04a00-8fd6-11eb-8fab-7dfdb9bc9bff.png">
For this visualization, we used the following SQL <a href="/docs/queries/14.sql">14 query</a>. sql, which shows statistics in how many people successfully work in this company.

<!-- SQL to Relational Algebra (RA) operators -->
# SQL to Relational Algebra (RA) operators
In this phase, we converted our <b>SQL queries</b> that we wrote earlier to <b>RA operators</b>. Out of the 15 provided, we selected the queries that we considered to be structurally complicated. Namely, queries that show some statistics, which we indicated in the phase above (User-interface implementation and connection). However, we found that other queries, except for those that we chose, are extremely similar and there is no point in taking and writing the same thing. To your attention we present our conversions at the following link: <a href="/docs/Relational Algebra operators/">RA operators</a>

<!-- Calculating true cardinalities and plan evaluation -->
# Calculating true cardinalities and plan evaluation
This week we dealt with query optimization. And how we were surprised that depending on the spelling of the tables and their <b>joining</b>, the number at which the data is collected changes and can this bypass us for good or bad. For your example, we collected <b>7 queries</b> based on the previous phase and built an optimization. Also, in each file, you can read an <b>analysis</b> of how to connect the tables will be more convenient and practical. You can go to the following link: <a href="/docs/True cardinalities/">Calculating true cardinalities and plan evaluation</a> </br>
<b>Important!</b> We would like to add that in all the tables we have the same amount of data (rows = 5614 approximately), so in some cases, with different query plans, the same number of tuples comes out. So we built a script similiar to <b>Lab3</b> to find out which query is still faster, using seconds. So you can also view the analysis in each txt file in the comments.


<!-- Speed performance evaluation -->
# Speed performance evaluation
In this week we are going to check the runtime of queries, that respond to functionalities and give some feedback about this time given and conclude it with our meaning about optimization. So, first of all we are given <b>7 functionalities</b> that we gonna check: </br> </br>
3. The system makes an estimate of the remaining time of the specified project and outputs the information to the project manager. </br>
5. The system outputs data to the project manager, which will contain developers who have a certain amount of working time. </br>
7. The system allows the project manager to see statistics that indicate how many developers have been working in a particular company for more than 5 years. </br>
10. The system specifies the full name, activity, role of the work in the project, and the time spent on each employee's task who visited recently. </br>
12. The system will give the manager information about the activities of a particular developer. </br>
13. The system will give the manager information about the status of each task of certain developers. </br>
14. The system allows the project manager to see statistics that indicate how many developers have successfully worked in the company.  </br> </br>
Also, we are given to check for 5 times and get some average value from these times. We will upload our solutions to the next <a href="Activ-monitoring/docs/Query optimization/">link</a> but also will summarize the average value and optimizations in this readme. In general, for this task, we are using this script, that our instructor provided for us, but we are a little change some coding and added our database to SQLite. You also can see this script by the <a href="Activ-monitoring/docs/Query optimization/script/test-query/">link</a>.

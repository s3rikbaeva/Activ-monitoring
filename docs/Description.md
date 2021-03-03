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

<a href="/data/dataset/employee.csv">Employee</a>
<br />
<a href="/data/dataset/job.csv">Job</a>
<br />
<a href="/data/dataset/company.csv">Company</a>
<br />
<a href="/data/dataset/employee_activity.csv">Employee activity</a>
<br />
<a href="/data/dataset/employee_additional_info.csv">Employee additional info</a>

<b>The size of each data set takes up almost 6000 data, which have completely different dimensions.</b>

<h3>Structure of tables</h3>

<h3>Employee table</h3> 
<div style="text-align: center">
   
  <i>1) employeeID - primary key - ID of employee</i><br />
  <i>2) fullName - Fullname of employee</i><br />
  <i>3) gender - gender of employee</i><br />
  <i>4) jobID - foreign key - for position in job of employee</i><br />
  <i>5) companyID - foreign key - where employee works</i><br />
  <i>6) distanceFromHome - Distance from home in kms</i><br />
  <i>7) yearsAtCompany - Total number of years spent at the company by the employee</i><br />
  <i>8) yearsSinceLastPromotion - Number of years since last promotion</i><br />
  <i>9) yearsWithCurrManager -Number of years under current manager</i><br />
  
<h3>Employee_activity table</h3> 
<div style="text-align: center">
   
  <i>1) employeeID - foreign key - ID of employee</i><br />
  <i>2) jobID - foreign key - for position in job of employee</i><br />
  <i>3) performanceRating - Performance rating for last year</i><br />
  <i>4) spentTime - spent time for activity</i><br />
  <i>5) standardHours - Standard hours of work for the employee</i><br />
  <i>6) totalWorkingYears - Total number of years the employee has worked so far</i><br />
  <i>7) inTime - entered time of employee</i><br />
  <i>8) outTime - leaved time of employee</i><br />

</div>

<h3>Employee_activity table</h3> 
<div style="text-align: center">
   
  <i>1) employeeID - foreign key - ID of employee</i><br />
  <i>2) jobID - foreign key - for position in job of employee</i><br />
  <i>3) performanceRating - Performance rating for last year</i><br />
  <i>4) spentTime - spent time for activity</i><br />
  <i>5) standardHours - Standard hours of work for the employee</i><br />
  <i>6) totalWorkingYears - Total number of years the employee has worked so far</i><br />
  <i>7) inTime - entered time of employee</i><br />
  <i>8) outTime - leaved time of employee</i><br />

</div>

<h3>Employee_additional_info table</h3> 
<div style="text-align: center">
   
  <i>1) employeeID - foreign key - ID of employee</i><br />
  <i>2) education - Education Level</i><br />
  <i>3) maritalStatus - Marital status of the employee</i><br />
  <i>4) monthlyIncome - Monthly income in rupees per month</i><br />
  <i>5) numCompaniesWorked - Total number of companies the employee has worked for</i><br />
  <i>6) environmentSatisfaction - Work Environment Satisfaction Level</i><br />
  <i>7) trainingTimesLastYear - Number of times training was conducted for this employee last year</i><br />

</div>

<h3>Job table</h3> 
<div style="text-align: center">
   
  <i>1) jobID - primary key - ID of job</i><br />
  <i>2) jobInvolvement - Job Involvement Level</i><br />
  <i>3) jobLevel - Job level at company on a scale of 1 to 5</i><br />
  <i>4) jobRole - Name of job role in company</i><br />
  <i>5) jobSatisfaction - Job Satisfaction Level</i><br />

</div>

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

<details>
<summary>UML diagram</summary>

![](/data/TripleA-UseCase-UML.png)

</details>

<br />



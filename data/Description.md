<!-- Project Use-Case diagram and questions over the data -->
# Project Use-Case diagram and questions over the data

<!--QUESTIONS  -->
## Questions 
1) How many specific developers are currently out of work for a <i>given project</i> in a <i>given period</i>?
2) How long a certain developer worked on a <i>certain project</i> over a <i>certain period</i> of time?
3) 
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
3. Clone the repo
   ```sh
   git clone https://github.com/your_username_/Project-Name.git
   ```
3. Install NPM packages
   ```sh
   npm install
   ```
4. Enter your API in `config.js`
   ```JS
   const API_KEY = 'ENTER YOUR API';
   ```


<!--UML diagram  -->
## UML diagram 

<details>
<summary>UML diagram</summary>

![](/data/TripleA-UseCase-UML.png)

</details>

<br />



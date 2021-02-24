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

1. Employee table 
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



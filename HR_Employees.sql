create database employees;

use employees;

select * from hr_employee_attrition_clean;

alter table hr_employee_attrition_clean
rename to hr;

select * from hr;

alter table hr
drop column MyUnknownColumn;


--- 1. Display the first 10 rows from the table. 
select * from hr
limit 10;

--- 2. Find the total number of employees in the company. 
select count(*) from hr;

--- 3. List all unique departments. 
select distinct department from hr;

--- 4. Show how many employees have left the company and how many are still working. 
select Attrition, count(*) as Total_Employee
from hr
group by Attrition;

--- 5. Retrieve the list of employees who work overtime. 
select EmployeeNumber, OverTime
from hr
where OverTime = 'Yes';

--- 6. Find the average monthly income of all employees.
select avg(MonthlyIncome) 
from hr;

--- 7. Identify employees whose number of companies worked is missing (NULL). 
select EmployeeNumber from hr
where NumCompaniesWorked is null;

--- 8. Find the employee(s) with the maximum monthly income. 
select EmployeeNumber, MonthlyIncome from hr
where MonthlyIncome = (
	select max(MonthlyIncome)
    from hr);
    
--- 9. Count the number of employees by gender. 
select gender, count(*) as total_employee
from hr
group by gender;

--- 10. List all employees who have just joined (YearsAtCompany = 0). 
select EmployeeNumber, YearsAtCompany
from hr
where YearsAtCompany = 0;

--- 11. Calculate the attrition rate (%) by department. 
select Department, 
		round(sum(case when Attrition = 'Yes' then 1 else 0 end)* 100 / count(*),2) as Attrition_Rate
from hr
group by Department;

--- 12. List the top 10 employees with the highest total working years. 
select  EmployeeNumber, TotalWorkingYears 
from hr
order by TotalWorkingYears desc
limit 10;

--- 13. Group employees into tenure categories (<1yr, 1–3yr, 4–6yr, 7+yr) and count employees in each. 
--- 14. Find the average monthly income by job level and attrition status. 
--- 15. Identify the top 5 job roles with the highest number of employees who left. 
--- 16. List employees who left the company within their first year. 
--- 17. Determine the median monthly income of all employees. 
--- 18. Calculate each employee’s approximate new monthly compensation after applying their salary hike percentage. 
--- 19. Count employees grouped by overtime status and attrition. 
--- 20. Display the top 10 employees who attended the most training sessions last year. 
--- 21. Rank employees by total working years (most experienced = rank 1). 
--- 22. For each department, find employees whose monthly income is in the top 25% of that department. 
--- 23. Divide employees into 10 income deciles and find attrition rate for each decile. 
--- 24. Create a simple risk score based on tenure, performance, overtime, and work-life balance — and list the top 50 high-risk employees. 
--- 25. Create a summary view showing, for each department and job level: total employees, number of leavers, attrition rate, and average monthly income.


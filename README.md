# Pewlett-Hackard-Analysis
The aim of this project is to create entity relationship diagrams, perform data modeling, and complete an analysis on an employee database using SQL techniques.


## ERD Schema

The below schema was sused to build up the database:
![ERD Schema](https://github.com/GloriaY007/Pewlett-Hackard-Analysis/blob/main/EmployeeDB.png)


## Problem:
Pewlett Hackard, Humans Resources (HR) Department, is preparing for the *silver tsunami*. The company is preparing for several employee retirements, however they are not sure of how many employees would be retiring or the department that would be affected. Using PostgreSQL and pgAdmin4, we are able to construct tables of information that help us know that:
- **33,118** are [currently eligle for retirement](https://github.com/GloriaY007/Pewlett-Hackard-Analysis/blob/main/Data/current_emp.csv).
- The [Number of Retiring Employees by Title](https://github.com/GloriaY007/Pewlett-Hackard-Analysis/blob/main/Data/unique_titles.csv) are **90,398**. Out of those, there are **29,414** Senior Engineers, **28,254** Senior Staffs, **14,222** Engineers, **12,243** Staffs, **4,502** Technique Leaders, **1,761** Assistant Engineers, and **2** Managers retiring. All these positions would need to be filled overtime. The query can be reviewed [here](https://github.com/GloriaY007/Pewlett-Hackard-Analysis/blob/main/Data/retiring_titles.csv).
- Given the upcoming retirements, HR is considering a mentorship program and wanted to get a better idea of which employees would be good candidates for mentoring. A query helped inform that **1,549** [employees are eligible for the Mentorship Program](https://github.com/GloriaY007/Pewlett-Hackard-Analysis/blob/main/Data/mentorship_eligibility.csv).The table provides a list of these employees and shows how long they have between with Pewlett Hackard as well as their positions in the company.

Other findings that came out of this exercise are related to the fact that:
- [Salaries](https://github.com/GloriaY007/Pewlett-Hackard-Analysis/blob/main/Data/salaries.csv) have not significantly increased in many years.
- There seems to be only 5 (five) [active managers](https://github.com/GloriaY007/Pewlett-Hackard-Analysis/blob/main/Data/manager_info.csv) for 9 (nine) departments. This is a serious resource gap for the company.
- Some employees are [appearing twice](https://github.com/GloriaY007/Pewlett-Hackard-Analysis/blob/main/Data/retirement_title.csv), because they seem to have held roles in other department in the company.

## Summary

A huge portion of the workforce is either going for retirement or mentorship eligible. In essence, there will most likely be many positions to fill over the next 5-10 years.  However, the current state of affairs does not suggest that there would be enough qualified people in the workforce to take care of the tasks or even come close to the amount of experience to fill these roles. Therefore, understanding and learning about the *silver tsunami* sucess/failure, will ensure that we have strategies in place to hire people in the right positions and insentivize them to grow with the company.

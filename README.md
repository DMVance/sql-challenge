# SQL Homework - Employee Database: A Mystery in Two Parts

## Data Modeling
### An ERD was created using Quick DBD. Relationships between the tables were established using this diagram.

## Data Engineering
### The database schema were then created in pgAdmin based on the ERD.

### Once the schema were created, the data from the CSV files were imported into the database. It was noted that there were many (approximately 31,000 out of approximately 300,000 employees) duplicate employee number entries in the dept_emp.csv file with the only difference being the department number assigned to each. This was either one of two things: the duplicates represented an employee that worked in more than one department in the past or concurrently in the present, or many employees were mistakenly entered twice and one of the department assignments was incorrect. Since there were many such instances, and knowing that employees often switch departments or work in more than one department on cross-functional teams, the reasonable solution seemed to be that the duplicate entries were correct. Therefore, I proceeded on that assumption.

## Data Analysis
### Each of the 8 data analysis requirements were met.

## Bonus
### The requirements for the bonus were met using SQLAlchemy and matplotlib's PyPlot for the histogram and bar chart.

## Epilogue
### Based on the suggestion in the Epilogue, I searched for the employee number assigned to me and the results are shown. April Fools. Lol.
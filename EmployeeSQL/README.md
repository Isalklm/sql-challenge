# SQL Data Analysis Challenge

## Project Overview
This project focuses on analyzing employee data using structured SQL queries. The challenge involves creating tables, setting up relationships between them, and running queries to extract meaningful insights. The project is divided into three main tasks:

1. **Data Modeling**: Designing an Entity Relationship Diagram (ERD) based on the provided CSV files.
2. **Data Engineering**: Creating tables in a relational database using SQL scripts.
3. **Data Analysis**: Writing SQL queries to analyze the data and answer specific business questions.

---

## Files Included
- **ERD_diagram.png**: An image file of the Entity Relationship Diagram.
- **queries.sql**: Contains the SQL queries used for data analysis as part of the challenge.
- **QuickDBD-export.png**: An exported image of the ERD from QuickDBD.
- **README.md**: The project documentation file, including instructions and details.
- **schema.sql**: SQL script for creating the tables and defining their relationships.

---

## Instructions for Running the Project
1. **Create Database and Tables**:
   - Use the `schema.sql` file to create the database tables.
   - Open **pgAdmin** and connect to your PostgreSQL server.
   - Execute the `schema.sql` script within **pgAdmin** to set up the tables and relationships.

2. **Load Data**:
   - Import the provided CSV files into their respective tables using **pgAdmin**'s import/export tool.

3. **Run Data Analysis Queries**:
   - Open **pgAdmin** and execute the `queries.sql` file to run the analysis queries.
   - Review the results in the query tool to answer the business questions listed in the challenge.

---

## Breakdown of Queries
The `queries.sql` file includes:
1. **Task 1**: Retrieve employee information along with their salaries.
2. **Task 2**: List employees hired in a specific year.
3. **Task 3**: Retrieve the department manager for each department along with their details.
4. **Task 4**: List employees along with their departments and department managers.
5. Additional queries for data analysis as required.

---

## Attribution and Code Sources
- All the code written in this project was developed independently.
- No code was copied from external sources such as forums, GitHub repositories, or Stack Overflow.
- Assistance was taken from class resources and instructional support provided during the bootcamp program.
- If any external code or solutions were used, they have been explicitly mentioned with proper citations in the code comments.

---

## Commit History
Regular commits have been made throughout the development of this project to document progress. Below are some of the commit messages:
- Initial commit: Set up project structure and added ERD diagram.
- Added table schema script.
- Created queries for data analysis.
- Finalized queries and updated `README.md`.

Student Management System (Console Application)

A menu-driven C# console application that performs CRUD operations (Create, Read, Update, Delete) on student records using SQL Server stored procedures and ADO.NET.

This project demonstrates database connectivity, parameterized queries, exception handling, and object-oriented programming in C#.

📌 Project Description

The Student Management System allows users to manage student information such as Student ID, Name, Grade, and City through a console-based interface.

The application uses a while loop and switch-case menu to continuously accept user input and perform database operations.
All database interactions are handled using stored procedures to ensure security, performance, and maintainability.

🚀 Features

➕ Insert Student

Add new student records

Input validation for ID, name length, and grade range

Uses stored procedure (sp_insert)

✏️ Update Student

Update student name, grade, and city using Student ID

Displays success or invalid ID message

Uses stored procedure (sp_update1)

📄 Read Student Records

View all student details

View specific student details by ID

Uses SqlDataReader for efficient data reading

❌ Delete Student

Delete a student record by Student ID

Displays confirmation or error message

Uses stored procedure (sp_delete1)

🔁 Menu-Driven Interface

Continuous execution using a while loop

Easy navigation with switch-case logic

🧱 Object-Oriented Design

Separate Student model class

Database operations encapsulated in a service class

🛡️ Exception Handling

Handles invalid input and database errors gracefully

Prevents application crashes

🔒 Secure Database Access

Uses SqlParameter to prevent SQL Injection

Uses stored procedures instead of raw SQL queries

🛠️ Technologies Used

Language: C#

Framework: .NET (Console Application)

Database: SQL Server

Data Access: ADO.NET

Concepts:

OOP (Classes, Objects, Constructors)

Exception Handling

Stored Procedures

Parameterized Queries

📂 Project Structure
StudentManagementSystem/
│
├── Program.cs        # Main menu logic
├── A.cs              # CRUD operations using ADO.NET
├── Student.cs        # Student model class
├── SQL/
│   ├── sp_insert.sql
│   ├── sp_update1.sql
│   ├── sp_read.sql
│   ├── sp_delete1.sql
│
└── README.md

🎯 Learning Outcomes

Understand ADO.NET database connectivity

Learn how to use stored procedures

Practice CRUD operations

Apply exception handling

Implement menu-driven console applications

Follow clean code and OOP principles

Future Enhancements

Add login authentication

Implement input validation improvements

Convert to ASP.NET Web Application

Add logging and reporting

Add unit testing

👨‍💻 Author

Rajat Sahu
💻 C# | ASP.NET | SQL Server
📚 Student / Fresher Developer

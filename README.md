# Project-Simple-Task-Tracker-App
Objective: Build a simple full-stack application that includes a database, REST API, and frontend user interface.

Day 1: Database Design
Goal: Create a simple relational database.
Tasks:
· Create a database named TaskTracker
· Create a table called Tasks
· Include fields: Id, Title, Description, Status, Priority, DueDate, CreatedDate
· Insert at least 10 sample records
Deliverable: SQL script to create the database/table and insert sample data.

Day 2: API Basics
Goal: Build a REST API to retrieve task data.
Tasks:
· Create a backend API project
· Connect the API to the database
· Create endpoint: GET /api/tasks
· Return all tasks as JSON
Deliverable: Working API that returns task data from the database.

Day 3: Full CRUD API
Goal: Add create, update, and delete functionality.
Tasks:
· Create endpoints:
· GET /api/tasks/{id}
· POST /api/tasks
· PUT /api/tasks/{id}
· DELETE /api/tasks/{id}
· Add validation for required fields and valid status/priority values
Deliverable: API tested using Swagger or Postman

Day 4: Frontend
Goal: Build a simple frontend interface.
Tasks:
· Create a page to display tasks
· Display Title, Status, Priority, and Due Date
· Add buttons to Add, Edit, and Delete tasks
· Connect frontend to the API
Deliverable: Frontend application displaying live task data.

Day 5: Integration and Polish
Goal: Complete and polish the application.
Tasks:
· Connect all frontend actions to the API
· Add error handling and loading indicators
· Add basic filtering by status or priority
· Clean up code and folder structure
· Prepare a short demo
Deliverable: Fully working application with README documentation

Suggested Tech Stack
· Database: SQL Server or PostgreSQL
· Backend API: .NET Core Web API or Node.js Express
· Frontend: React, Angular, or HTML/JavaScript

Evaluation Criteria
· Clean database design
· RESTful API implementation
· Usable frontend
· Readable and maintainable code
· Ability to explain end-to-end data flow

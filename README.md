# Student Management System

A web-based Student Management System built using Java, Spring Boot, Spring MVC, Spring Data JPA, Hibernate, JSP, and PostgreSQL. This project demonstrates how to develop a web application that collects student information, stores it in a relational database, and displays registered student records through a browser.

## Project Overview

The Student Management System provides a simple interface for registering students and viewing their details. It uses Spring Boot for application development, Spring MVC for handling web requests, JSP for the user interface, and PostgreSQL for persistent data storage.

The application follows a layered architecture, separating student data, database operations, business logic, and request handling.

## Features

- Student registration through a web form
- Collection of student registration number, name, and CGPA
- Storage of student records in PostgreSQL
- Retrieval of registered student records
- Display of student details in an HTML table
- Automatic database table management through Hibernate
- Separation of application logic using a layered architecture

## Technologies Used

| Technology | Purpose |
|---|---|
| Java 17 | Programming language |
| Spring Boot | Application configuration and execution |
| Spring MVC | Handling HTTP requests and responses |
| Spring Data JPA | Database access and repository operations |
| Hibernate | Object-relational mapping |
| JSP | Dynamic web pages |
| PostgreSQL | Relational database |
| Maven | Dependency management and build automation |
| Apache Tomcat | Embedded web server |
| Spring Tool Suite | Development environment |

## Project Structure

```text
StudentManagement/
├── src/
│   ├── main/
│   │   ├── java/
│   │   │   └── com/example/demo/
│   │   │       ├── StudentManagementApplication.java
│   │   │       ├── Student.java
│   │   │       ├── StudentRepository.java
│   │   │       ├── StudentService.java
│   │   │       └── StudentController.java
│   │   ├── resources/
│   │   │   └── application.properties
│   │   └── webapp/
│   │       └── WEB-INF/
│   │           └── views/
│   │               ├── student-form.jsp
│   │               └── student-list.jsp
│   └── test/
├── pom.xml
├── mvnw
├── mvnw.cmd
└── README.md

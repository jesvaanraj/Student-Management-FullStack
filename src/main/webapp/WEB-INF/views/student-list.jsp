<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="java.util.List" %>
<%@ page import="com.example.demo.Student" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Student List</title>
</head>

<body>

    <h2>Registered Students</h2>

    <table border="1" cellpadding="10">

        <tr>
            <th>Registration Number</th>
            <th>Name</th>
            <th>CGPA</th>
        </tr>

        <%
            List<Student> students =
                (List<Student>) request.getAttribute("students");

            if (students != null) {
                for (Student student : students) {
        %>

        <tr>
            <td><%= student.getRegno() %></td>
            <td><%= student.getName() %></td>
            <td><%= student.getCgpa() %></td>
        </tr>

        <%
                }
            }
        %>

    </table>

    <br>

    <a href="/">Add New Student</a>

</body>
</html>
<%@ page import="mvctwo.StudentDataUtil" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="mvctwo.Student" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: default
  Date: 5/24/2023
  Time: 1:47 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
    List<Student> students = new ArrayList<>();
    students.add(new Student("Dang", "Thi", "dangthi@codelean.com"));
    students.add(new Student("Nguyen", "Chien", "nguyenchien@codelean.com"));
    students.add(new Student("Le", "Toan", "letoan@codelean.com"));
    pageContext.setAttribute("student_list", students);
%>
<html>
<head>
    <style>
        table, td, th{
            border: 1px solid;
        }
        table{
            width: 100%;
            border-collapse: collapse;
        }
    </style>
</head>
<body>
    <h2>Student Table Demo</h2>
    <table>
        <tr>
            <th>First Name</th>
            <th>Last Name</th>
            <th>Email Name</th>
        </tr>
        <c:forEach var="tempStudent" items="${student_list}">
          <tr>
            <td>${tempStudent.firstName}</td>
            <td>${tempStudent.lastName}</td>
            <td>${tempStudent.email}</td>
          </tr>
        </c:forEach>
    </table>
</body>
</html>

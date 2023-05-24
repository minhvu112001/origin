<%--
  Created by IntelliJ IDEA.
  User: default
  Date: 5/19/2023
  Time: 3:52 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="tagdemo.Customer" %>
<%@ page import="java.util.*" %>

<%
  List<Customer> data = new ArrayList<>();

  data.add(new Customer("Dang", "Thi", false));
  data.add(new Customer("Nguyen", "Minh", false));
  data.add(new Customer("Chau", "Anh", false));

  pageContext.setAttribute("myCustomer", data);
%>

<html>
<head>
    <style>
      table{
        border-collapse: collapse;
        border: 2px solid #eee;
        width: 100%;
        margin: 20px 0;
        font: 12px/20px sans-serif;
      }
      th, td{
        padding: 8px;
      }
      th{
        background-color: #eee;
        text-align: left;
        font-weight: bold;
      }
      td{
        background-color: #fff;
        text-align: center;
      }
      td.special{
        font-style: italic;
        color: #666;
      }
    </style>
</head>
<body>
<table border="1">
  <tr>
    <th>First Name</th>
    <th>Last Name</th>
    <th>Gold Customer</th>
  </tr>
  <c:forEach var="tempCustomer" items="${myCustomer}">
    <tr>
      <td>${tempCustomer.firstName}</td>
      <td>${tempCustomer.lastName}</td>
      <td>
        <c:choose>
          <c:when test="${tempCustomer.goldCustomer}">
              Special Discount
          </c:when>
          <c:otherwise>
             No discount available
          </c:otherwise>
        </c:choose>
      </td>
    </tr>
  </c:forEach>
</table>
</body>
</html>

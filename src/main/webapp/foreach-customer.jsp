<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: default
  Date: 5/19/2023
  Time: 3:02 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="tagdemo.Customer" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>

<%
    List<Customer> data = new ArrayList<>();

    data.add(new Customer("Dang", "Thi", false));
    data.add(new Customer("Nguyen", "Minh", false));
    data.add(new Customer("Chau", "Anh", false));

    pageContext.setAttribute("myCustomer", data);
%>
<html>
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
                <td>${tempCustomer.goldCustomer}</td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>

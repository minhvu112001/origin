<%--
  Created by IntelliJ IDEA.
  User: default
  Date: 5/19/2023
  Time: 4:09 PM
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
            <c:if test="${tempCustomer.goldCustomer}">
                Special Discount
            </c:if>
            <c:if test="${tempCustomer.goldCustomer}">
                -
            </c:if>
        </td>
    </tr>
  </c:forEach>
</table>
</body>
</html>

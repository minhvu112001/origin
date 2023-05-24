<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: default
  Date: 5/19/2023
  Time: 3:03 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.*" %>
<%
  String[] cities = {"Hanoi", "Singapore", "London"};
  pageContext.setAttribute("myCities", cities);
%>
<html>
<body>
   <c:forEach var="tempCity" items="${myCities}">
        ${tempCity}<br/>
   ></c:forEach>
</body>
</html>

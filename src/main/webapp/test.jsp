<%--
  Created by IntelliJ IDEA.
  User: default
  Date: 5/19/2023
  Time: 2:09 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%%>
<html>
<head>
    <title>Title</title>
</head>
<body>
   <c:set var="stuff" value="<%= new java.util.Date() %>" />
   Time on the server is ${stuff}
</body>
</html>

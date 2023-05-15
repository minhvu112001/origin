<%--
  Created by IntelliJ IDEA.
  User: default
  Date: 5/15/2023
  Time: 3:32 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String userName = request.getParameter("userName");
    String password = request.getParameter("password");
    Cookie theCookieName = new Cookie("myApp.userName", userName);
    Cookie theCookiePassword = new Cookie("myApp.password",password);
    theCookieName.setMaxAge(60*60*24*365);
    theCookiePassword.setMaxAge(60*60*24*365);
    response.addCookie(theCookieName);
    response.addCookie(theCookiePassword);
%>
</body>
   Thanks! Your username is: ${param.userName}
           Your passwords are: ${param.password}
   <br/><br/>
   <a href="login.jsp">Return to homepage</a>
</html>

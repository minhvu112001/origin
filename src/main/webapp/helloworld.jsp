<%--
  Created by IntelliJ IDEA.
  User: default
  Date: 5/10/2023
  Time: 2:02 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>JSP - Hello World of Java !</title>
</head>
<body>
<h1><%= "Hello World!"%>
</h1>
<br/>
<a href="hello-servlet">Hello Servlet</a>
<h2>The time of the server is <%= new java.util.Date() %>></h2>
Converting a string to uppercase: <%= new String("Hello World").toUpperCase() %>
<br/><br/>
25 multiplied by 4 equals: <%= 25*4 %>
<br/><br/>
Is 75 less than 69? <%= 75 < 69 %>
<%
    for (int i=1; i<= 5; i++){
        out.println("<br/>I really code: "+ i);
    }
%>
</body>
</html>

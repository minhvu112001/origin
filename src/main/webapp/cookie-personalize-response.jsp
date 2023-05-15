<%--
  Created by IntelliJ IDEA.
  User: default
  Date: 5/12/2023
  Time: 4:13 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Confirmation</title>
</head>

<%  //
    String favLang = request.getParameter("favoriteLanguage");
    //
    Cookie theCookie = new Cookie("myApp.favoriteLanguage", favLang);
    //
    theCookie.setMaxAge(60*60*24*365);
    //
    response.addCookie(theCookie);
%>
<body>
   Thanks! We set your favorite language to: ${param.favoriteLanguage}
   <br/><br/>
   <a href="cookie-homepage.jsp">Return to homepage</a>
</body>

</html>

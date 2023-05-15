<%--
  Created by IntelliJ IDEA.
  User: default
  Date: 5/12/2023
  Time: 4:23 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Training Portal</title>
</head>
<body>
<%
  //
  String favLang = "Java";
  //
  Cookie[] theCookies = request.getCookies();
  //
  if (theCookies != null) {
    for(Cookie tempCookies : theCookies){
      if("myApp.favoriteLanguage".equals(tempCookies.getName())){
        favLang = tempCookies.getValue();
        break;
      }
    }
  }
%>
<! ---- !>

<! ---- !>

<h4>New Books for <%= favLang %></h4>
<ul>
  <li>blah blah blah</li>
  <li>blah blah blah</li>
</ul>

<h4>Latest News Report for <%= favLang %></h4>
<ul>
  <li>blah blah blah</li>
  <li>blah blah blah</li>
</ul>

<h4>Hot Jobs For <%= favLang %></h4>
<ul>
  <li>blah blah blah</li>
  <li>blah blah blah</li>
</ul>

<hr>
<a href="cookie-personalize-form.html">Personalize this page</a>
</body>

</html>
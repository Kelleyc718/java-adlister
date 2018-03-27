<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title><%= "Cool Website" %></title>
</head>
<body>
    <c:if test="${loggedIn}">
        <a href="login.jsp">Log-In Here!</a>
    </c:if>

    <h1>You are logged in!</h1>
</body>
</html>

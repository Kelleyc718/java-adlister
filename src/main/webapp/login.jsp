<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<c:if test="${ not empty param.username && not empty param.password}">
    <c:if test="${ param.username.equals(\"admin\") &&
    param.password.equals(\"password\")}">
        <c:redirect url="profile.jsp"/>
    </c:if>
</c:if>
<html>
<head>
    <title>Login</title>
</head>
<body>
    <h1>Login Page</h1>
    <form method="post" action="/login.jsp">
        <label for="username">
            Username:
            <input id="username" name="username" type="text" placeholder="Enter your username">
        </label>
        <label for="password">
            Password
            <input id="password" name="password" type="password" placeholder="Enter your password">
        </label>
        <button>Submit</button>
    </form>
</body>
</html>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>

<html>
<head>
    <jsp:include page="/partials/head.jsp">
        <jsp:param name="title" value="Log-In"/>
    </jsp:include>
</head>
<body>
<h1>Login Page</h1>
<form method="post" action="<c:url value="/login"/>">
    <label for="username">
        Username:
        <input id="username" name="username" type="text"
               placeholder="Enter your username">
    </label>
    <label for="password">
        Password
        <input id="password" name="password" type="password"
               placeholder="Enter your password">
    </label>
    <button>Submit</button>
</form>
<jsp:include page="/partials/scripts.jsp"/>
</body>
</html>

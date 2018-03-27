<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    if (request.getMethod().equalsIgnoreCase("POST")) {
    String userName = request.getParameter("username");
    String password = request.getParameter("password");
    if (userName.equals("admin") && password.equals("password")) {
        response.sendRedirect("/profile");
        }
        }
        %>
<html>
<head>
    <title>Login</title>
</head>
<body>
    <h1 id="login">Login Page</h1>
    <c:if test="${loggedIn}">
        res.sendRedirect("/profile.jsp");
    </c:if>

    <form id="login" action="profile.jsp" method="post">
        <label for="userName">
            Username:
            <input id="userName" type="text" placeholder="Enter your username">
        </label>
        <label for="password">
            Password
            <input id="password" type="password" placeholder="Enter your password">
        </label>
        <button>Submit</button>
    </form>
</body>
</html>

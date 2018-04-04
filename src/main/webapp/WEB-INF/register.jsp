<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Register"/>
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp"/>
<div class="form-container" style="background-color: #eee; padding: 3rem; margin: auto;
max-width:75vw;">
    <h1 style="text-align:center; margin: auto; padding: 4rem;">Register Today!</h1>
    <form id="user-reg" method="POST" action="/register">
        <div class="form-group">
            <label for="username">Desired Username</label>
            <input type="username" class="form-control" id="username" placeholder="Enter Username">
        </div>
        <div class="form-group">
            <label for="email">Email address</label>
            <input type="email" class="form-control" id="email"
                   aria-describedby="emailHelp" placeholder="Enter email">
            <small id="emailHelp" class="form-text text-muted">We'll never share your
                email with anyone else.
            </small>
        </div>
        <div class="form-group">
            <label for="password">Password</label>
            <input type="password" class="form-control" id="password" placeholder="Password">
        </div>
        <div class="form-group">
            <label for="ver-password">Verify Password</label>
            <input type="password" class="form-control" id="ver-password"
                   placeholder="Re-type Password">
        </div>
        <button type="submit" class="btn btn-primary">Submit</button>
    </form>
</div>
</body>
</html>

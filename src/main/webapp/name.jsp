<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="partials/head.jsp">
        <jsp:param name="title" value="Name" />
    </jsp:include>
</head>
<body>
    <jsp:include page="partials/navbar.jsp" />
    <div class="name-label">
        <form action="/name" method="POST">
            <h3>Enter your name below and pick a color when you are ready!</h3>
            <input type="text" name="name" placeholder="Enter your name here" />
            <input type="color" name="color" />
        </form>
        <h1 style="${color}">${name}</h1>
    </div>
</body>
</html>

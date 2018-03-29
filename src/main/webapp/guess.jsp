<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="partials/head.jsp">
        <jsp:param name="title" value="Guessing Game"/>
    </jsp:include>
</head>
<body>
    <h1>Guessing game </h1>
    <h3>${count}</h3>
    <h3>${answer}</h3>
    <form method="post" action="/guess">
        <label for="number" id="number">
            Enter a Number:<input name="number" type="text" />
        </label>
    </form>
</body>
</html>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="partials/head.jsp">
        <jsp:param name="title" value="Results"/>
    </jsp:include>
</head>
<body>
    <c:if test="${param.reply != 'exceed'}">
        <c:if test="${param.reply == 'correct'}">
            <h1>Correct!</h1>
            <h3>Start a new game?</h3>
            <button>Yes</button>
            <button>No</button>
        </c:if>
        <c:if test="${param.reply ==  'low'}">
            <h1>Lower</h1>
            <a href="/guess">Guess Again?</a>
        </c:if>
        <c:if test="${param.reply ==  'high'}">
            <h1>Higher</h1>
            <a href="/guess">Guess Again?</a>
        </c:if>
    </c:if>
    <c:if test="${param.reply == 'exceed'}">
        <h1>You have no more tries....</h1>
        <a href="/guess">Reset</a>
    </c:if>
</body>
</html>

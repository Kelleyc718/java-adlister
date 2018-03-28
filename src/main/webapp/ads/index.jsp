<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/partials/head.jsp">
        <jsp:param name="title" value="Ad Listings" />
    </jsp:include>
</head>
<body>
    <jsp:useBean id="ad" scope="application" type="java.util.List"/>
    <c:forEach var="ads" items="${ad}">
        <h1>${ads.title}</h1>
        <p>${ads.body}</p>
    </c:forEach>
</body>
</html>

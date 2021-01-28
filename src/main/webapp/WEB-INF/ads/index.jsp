<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Viewing All The Ads" />
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />

<div class="container">
    <form action="/ads" method="post">
        <input type="hidden" name="item" value="showAll">
        <button>Show all!</button>
    </form>
    <form action="/ads" method="post">
        <input type="text" id="item" name="item" placeholder="Search Here!">
        <button>Let's go!</button>
    </form>

    <c:choose>
        <c:when test="${hasResults}">
            <h1>Here Are all the ads!</h1>
        </c:when>
        <c:otherwise>
            <h1>No Ads match your search. Try Again!</h1>
        </c:otherwise>
    </c:choose>

    <c:forEach var="ad" items="${ads}">
        <div class="col-md-6">
            <h2>${ad.title}</h2>
            <p>${ad.description}</p>
        </div>
    </c:forEach>

</div>

</body>
</html>

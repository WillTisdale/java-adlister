<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Create a new Ad" />
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />
    <div class="container">
        <c:choose>
            <c:when test="${creatingAd}">
                <h1>Create a new Ad</h1>
                <form action="/ads/create" method="post">
                    <div class="form-group">
                        <label for="adTitle">Title</label>
                        <input id="adTitle" name="title" class="form-control" type="text" value="${sessionScope.title}">
                    </div>
                    <div class="form-group">
                        <label for="adDescription">Description</label>
                        <textarea id="adDescription" name="description" class="form-control" type="text">${sessionScope.description}</textarea>
                    </div>
                    <input type="submit" class="btn btn-block btn-primary">
                </form>
            </c:when>
            <c:otherwise>
                <h1>Create a new Ad</h1>
                <form action="/ads/create" method="post">
                    <div class="form-group">
                        <label for="title">Title</label>
                        <input id="title" name="title" class="form-control" type="text">
                    </div>
                    <div class="form-group">
                        <label for="description">Description</label>
                        <textarea id="description" name="description" class="form-control" type="text"></textarea>
                    </div>
                    <input type="submit" class="btn btn-block btn-primary">
                </form>
            </c:otherwise>
        </c:choose>
    </div>
</body>
</html>

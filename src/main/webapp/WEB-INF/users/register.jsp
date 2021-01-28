<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Create a new Ad" />
    </jsp:include>
</head>
<body>
    <c:choose>
        <c:when test="${sessionScope.usernameError}">
            <script>alert("Invalid Username Length...Try Again!")</script>
        </c:when>
        <c:when test="${sessionScope.emailError}">
            <script>alert("Invalid Email...Try Again!")</script>
        </c:when>
        <c:when test="${sessionScope.passwordError}">
            <script>alert("Invalid Password Length...Try Again!")</script>
        </c:when>
        <c:when test="${sessionScope.usernameExists}">
            <script>alert("Username already exists!")</script>
        </c:when>
    </c:choose>
    <div class="container">
        <h1>Register a new User</h1>
        <form action="/register" method="post">
            <div class="form-group">
                <label for="username">Username</label>
                <input id="username" name="username" class="form-control" type="text" aria-describedby="usernameNote">
                <small id="usernameNote" class="form-text text-muted">Must be at least 8 characters</small>
            </div>
            <div class="form-group">
                <label for="email">Email</label>
                <input id="email" name="email" class="form-control" type="email" aria-describedby="emailNote">
                <small id="emailNote" class="form-text text-muted">Must enter valid email address</small>
            </div>
            <div class="form-group">
                <label for="password">Password</label>
                <input id="password" name="password" class="form-control" type="password" aria-describedby="passwordNote">
                <small id="passwordNote" class="form-text text-muted">Must be at least 8 characters</small>
            </div>
            <input type="submit" class="btn btn-block btn-primary">
        </form>
    </div>
</body>
</html>

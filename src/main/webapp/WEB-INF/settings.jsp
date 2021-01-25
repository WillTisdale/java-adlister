<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="partials/head.jsp">
        <jsp:param name="title" value="Settings" />
    </jsp:include>
</head>
<body>

<jsp:include page="partials/navbar.jsp" />

<h1>Here are your Settings</h1>

<form action="/settings" method="post">
    <label for="light">Light Mode (Default)</label>
    <input type="radio" name="theme" id="light" value="light" checked="checked">

    <label for="dark">Dark Mode</label>
    <input type="radio" name="theme" id="dark" value="dark">

    <button type="submit">Make Changes</button>
</form>

<form action="/settings" method="post">
    <h3>Reset your preferences instead?</h3>
    <input type="hidden" name="reset">
    <button type="submit">Reset</button>
</form>
</body>
</html>


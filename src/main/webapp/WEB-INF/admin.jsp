<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="partials/head.jsp">
        <jsp:param name="title" value="ADMIN Dashboard" />
    </jsp:include>
</head>
<body>
    <jsp:include page="partials/navbar.jsp" />

    <div class="container">
        <h1>Viewing ADMIN Dashboard.</h1>
        <p>Is Admin: ${sessionScope.isAdmin}</p>
    </div>

</body>
</html>

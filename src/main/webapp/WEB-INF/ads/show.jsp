<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Ad" />
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />

<div class="container">
    <h1>${sessionScope.ad.title}</h1>
    <hr>
    <p>${sessionScope.ad.description}</p>
</div>

<div class="container">
    <form action="/ads" method="get">
        <button type="submit">Go Back</button>
    </form>

</div>

</body>
</html>

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
    <form action="/ads/create" method="get">
        <input type="submit" class="btn" value="Create Ad Here!">
    </form>
    <h1>Here Are all the ads!</h1>

    <c:forEach var="ad" items="${ads}">
        <div class="col-md-6">
            <div class="card">
                <div class="card-title">
                    <h2>${ad.title}</h2>
                </div>
                <div class="card-body">
                    <p>${ad.description}</p>
                </div>
                <div class="card-footer">
                    <form action="/show" method="post">
                        <input type="hidden" value="${ad.id}" name="adId">
                        <button type="submit">View Ad</button>
                    </form>
                </div>
            </div>



        </div>
    </c:forEach>
</div>

</body>
</html>

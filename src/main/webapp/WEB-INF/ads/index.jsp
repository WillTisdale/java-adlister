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
    <h1>Here Are all the ads!</h1>

    <c:forEach var="ad" items="${ads}">
        <div class="card col-md-6">
          <div class="card-header">
            ${ad.title}
          </div>
          <div class="card-body">
            <blockquote class="blockquote mb-0">
              <p>${ad.description}</p>
<%--              <footer class="blockquote-footer">${ad.userId}</footer>--%>
            </blockquote>
          </div>
        </div>
    </c:forEach>
</div>




</body>
</html>

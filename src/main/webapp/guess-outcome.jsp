<%--
  Created by IntelliJ IDEA.
  User: williamtisdale
  Date: 1/21/21
  Time: 1:33 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Outcome</title>
    <style>
        body {
            background: ${bColor};
        }
    </style>
</head>
<body>
    <h1>${message}</h1>

    <form action="/guess" method="get">
        <input type="submit" value="Try Again?">
    </form>
</body>
</html>

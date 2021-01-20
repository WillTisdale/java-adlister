<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html>
<head>
    <title>Implicit Object Example</title>
</head>
<body>
    <h1>Welcome To The Site!</h1>
    <p>Path: <%= request.getRequestURL() %></p>
    <p>Query String: <%= request.getQueryString() %></p>
    <p>"name" parameter: <%= request.getParameter("name") %></p>
    <p>"method" attribute: <%= request.getMethod() %></p>
    <p>User-Agent header: <%= request.getHeader("user-agent") %></p>

<%-- This assumes we are visiting a page and have ?page_no=5 (or something
     similar) appended to the query string --%>
<p>"page_no" parameter: ${param.page_no}</p>
<p>User-Agent header: ${header["user-agent"]}</p>
</body>
</html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    if (request.getMethod().equalsIgnoreCase("post")) {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        if (username.equals("admin") && password.equals("password")) {
            response.sendRedirect("/profile.jsp");
        }
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="partials/head.jsp"%>
    </head>
    <body>
        <%@include file="partials/navbar.jsp"%>
        <div class="container" style="margin-top: 20px">
            <h1 class="text-center">Login</h1>
             <form action="/login.jsp" method="POST">
              <div class="form-group">
                <label for="username">User Name</label>
                <input type="text" class="form-control" id="username" name="username" placeholder="User name">
              </div>
              <div class="form-group">
                <label for="password">Password</label>
                <input type="password" class="form-control" id="password" name="password" placeholder="Password">
              </div>
                 <input type="submit" class="btn btn-primary" value="Log In">
             </form>
        </div>

    </body>
</html>
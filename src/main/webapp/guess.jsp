<%--
  Created by IntelliJ IDEA.
  User: williamtisdale
  Date: 1/21/21
  Time: 1:32 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Guessing Game</title>
</head>
<body>
    <h1>Guess a number between 1 and 3</h1>
    <form action="/guess" method="post">
        <label for="number">Your pick: </label>
        <input type="text" name="number" id="number">
        <button type="submit">Submit</button>
    </form>

</body>
</html>

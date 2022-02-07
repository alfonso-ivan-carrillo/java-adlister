<%--
  Created by IntelliJ IDEA.
  User: alfonsocarrillo
  Date: 2/6/22
  Time: 10:11 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Guess App</title>
</head>
<body>
    <div>
        <form action="/guesslogic" method="post">
            <label for="guess">Guess a number between 1 and 3.</label>
            <br>
            <input id="guess" name="guess" type="text">
            <br>
            <input type="submit" value="Submit">
        </form>
    </div>

</body>
</html>

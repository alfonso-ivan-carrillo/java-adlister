<%--
  Created by IntelliJ IDEA.
  User: alfonsocarrillo
  Date: 2/6/22
  Time: 9:34 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>ColorPicker</title>
</head>
<body>
<form action="/pickcolor" method="post">
  <label for="color">Color</label>
  <input type="text" name="color" id="color"/>
  <input type="submit" name="Submit">
</form>

</body>
</html>

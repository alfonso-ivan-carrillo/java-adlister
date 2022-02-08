<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: alfonsocarrillo
  Date: 2/7/22
  Time: 2:59 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Index</title>
</head>
<body>

    <h1>Items for Sale</h1>
    <c:forEach var="ad" items="${ads}">
        <div class="ad">
            <h2>Title: ${ad.title}</h2>
            <br>
            <p>Description: ${ad.description}</p>
            <br>
            <h4>Item Id: ${ad.id}</h4>
            <h5>Sold by: ${ad.userId}</h5>
        </div>
    </c:forEach>


</body>
</html>

<%--
  Created by IntelliJ IDEA.
  User: alfonsocarrillo
  Date: 2/6/22
  Time: 6:45 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Comics</title>
</head>
<body>
    <div>
        <jsp:include page="partials/head.jsp"></jsp:include>
        <jsp:include page="partials/navbar.jsp"></jsp:include>

    <form action="/comicform" method="post">
        <div>
            <label for="comic-title">Comics Title</label>
            <br>
            <input id="comic-title" name="comic-title" type="text">
        </div>
        <br>
        <div>
            <select name="hero" name="hero">
                <option value="hero">hero</option>
                <option value="villian">villian</option>
                <option value="anti-hero">anti-hero</option>
            </select>
        </div>
        <br>
            <div>
                <label>ability</label>
                <br>
                <input for="ability" type="checkbox" name="ability" value="physical">physical</input>
                <input for="ability" type="checkbox" name="ability" value="mental">mental</input>
                <input for="ability" type="checkbox" name="ability" value="human">human</input>
            </div>
        <br>
        <div>
        <input type="submit" value="submit">
        </div>
    </form>
    </div>
</body>
</html>

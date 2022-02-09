<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/partials/head.jsp">
        <jsp:param name="title" value="Your Profile" />
    </jsp:include>
</head>
<body>
    <jsp:include page="/partials/navbar.jsp" />
<div>
    <h1>Hello ${username}!</h1>
</div>
    <div class="container">
        <h1>Viewing your profile.</h1>
    </div>

    <div class="container">
        <form action="/logout" method="POST">

            <input id="logout" type="submit" class="btn btn-primary" value="logout">
        </form>
    </div>
</body>
</html>

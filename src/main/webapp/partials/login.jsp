<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: alfonsocarrillo
  Date: 2/3/22
  Time: 9:40 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login JSP</title>
</head>
<body>
<jsp:include page="/partials/header.jsp" />
<form action="login.jsp">
    User Name: <input type="text" name="username">
    <br><br>
    Password: <input type="text" name="password">
    <br><br>
    <input type="submit" value="submit" />
</form>
    <br><br>
    The student is confirmed: ${param.username} ${param.password}

    <c:choose>
        <c:when test="${param.username == 'admin' && param.password.equals('password')}">
            <h1>Test</h1>
            <% response.sendRedirect("/partials/profile.jsp"); %>
        </c:when>
    </c:choose>

    // instructor solution
<%--    <%--%>
<%--        if(request.getMethod().equalsIgnoreCase("POST")){--%>
<%--            if(request.getParameter("username").equals("admin") && request.getParameter("password").equals("password")){--%>
<%--                response.sendRedirect("/partials/profile.jsp");--%>
<%--            } else {--%>
<%--                response.sendRedirect("partials/login.jsp");--%>
<%--            }--%>
<%--        }--%>
<%--    %>--%>
<jsp:include page="/partials/footer.jsp" />

</body>
</html>

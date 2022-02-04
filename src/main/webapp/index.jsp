<%@ page import="java.util.Locale" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title><%= "some title" %></title>
</head>
<body>
    <jsp:include page="partials/header.jsp" />
    <c:if test="true">
        <h1>Variable names should be very descriptive</h1>
    </c:if>
    <c:if test="false">
        <h1>single letter variable names are good</h1>
    </c:if>

        JSP Expression - java express are processed  - examples:
        for loop example:
        <p>The time on the server is <%= new java.util.Date() %>.</p>
        <br>
        <%= new String("Hello World").toUpperCase()%>
        <br>
        25 multipled by 4 is: <%=  4 * 25 %>
        <br>
        Is 75 less than 69? <%= 75 < 69 %>
        <br>
        <br>
        JSP Scriptlet - allows you to insert 1 to many lines of java code - example
        <%
            for (int i = 1; i <+ 5; i++){
                out.println("<br> I really luv2code: " + i);
            }
        %>
        <br>
        <br>
        JSP Declarations - declare a method in the jsp page, then call the method on the same jsp page.
        <br>
        <%!
            String makeItLower(String data){
                return data.toUpperCase();
            }
        %>
        Lower case "Hello World": <%= makeItLower("Hello World")%>
        <br>
        <br>
        <h1>Built-In Server Objects - Most common objects used</h1>
        <ul>
            <li>request: contains HTTP request headers and form data</li>
            <li>response: provides HTTP support for sending response</li>
            <li>Out:  JSP Writer for including content in HTML page</li>
            <li>session:  Unique session for each user of the web applicaton, like a shopping cart</li>
            <li>application: Shared data for all users of the web application</li>
        </ul>


        Request user agent: <%= request.getHeader("User-Agent") %>
        <br><br>
        Request language: <%= request.getLocale() %>


    <jsp:include page="partials/footer.jsp" />

</body>
</html>

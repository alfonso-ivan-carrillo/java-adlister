<%--
  Created by IntelliJ IDEA.
  User: alfonsocarrillo
  Date: 2/4/22
  Time: 11:54 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Pizza Order Form</title>
</head>
<body>
<h1>Pizza Order Form</h1>
<form action="/pizzaForm" method="post">
    <div>
        <label >Pizza Order</label>
        <select for="size" name="size">
            <option value="small">small</option>
            <option value="medium">medium</option>
            <option value="large">large</option>
        </select>
    </div>
    <br>
    <div>
        <label>sauce</label>
        <select for="sauce" name="sauce">
            <option value="marinara">marinara</option>
            <option value="alfredo">alfredo</option>
        </select>
    </div>
    <br>
    <div>
        <label>toppings</label>
        <input for="toppings" type="checkbox" name="toppings" value="pepperoni" >pepperoni</input>
        <input for="toppings" type="checkbox" name="toppings" value="sausage">sausage</input>
        <input for="toppings" type="checkbox" name="toppings" value="mushrooms">mushrooms</input>
    </div>
    <br>
    <div>
        <label for="address">delivery address</label>
        <input type="text" name="address" id="address">
    </div>
    <br>
    <input type="submit" value="Submit" />
</form>
</body>
</html>

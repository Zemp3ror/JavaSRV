<%--
  Created by IntelliJ IDEA.
  User: Stepan
  Date: 02.09.2022
  Time: 19:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>E-library</title>
</head>
<body>
<div align="center">
    <h1>User registration</h1>
<form action="<%= request.getContextPath() %>/register" method="post">
    <table>
        <tr>
            <td>First Name</td>
            <td><input type="text" name="firstName"/></td>
        </tr>
        <tr>
            <td>Last Name</td>
            <td><input type="text" name="lastName"/></td>
        </tr>
        <tr>
            <td>UserName</td>
            <td><input type="text" name="userName"/></td>
        </tr>
        <tr>
            <td>Email</td>
            <td><input type="text" name="email"/></td>
        </tr>
        <tr>
            <td>Password</td>
            <td><input type="text" name="password"/></td>
        </tr>
        <tr>
            <td>PhoneNumber</td>
            <td><input type="text" name="phoneNumber"/></td>
        </tr>
        <tr>
            <td>Book</td>
            <td><input type="text" name="book"/></td>
        </tr>
    </table>
    <input type="submit" value="Submit"/>

</form>
</div>
</body>
</html>

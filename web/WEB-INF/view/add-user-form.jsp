<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: People
  Date: 11/29/2019
  Time: 11:26 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add User</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css" type="text/css">


</head>
<body>
<div id="wrapper" style="text-align: center;">
    <div id="header">
        <h2>New User</h2>
    </div>
</div>

<div id="container" style="justify-content: center;">
    <div id="content">
        <form:form action="save" modelAttribute="aUser">
            <form:hidden path="id" value="${aUser.id}"></form:hidden>
            <table>
                <tr>
                    <td><label style="color: white; font-size: 1.5em;">First Name: </label></td>
                    <td><form:input path="firstName"></form:input></td>
                </tr>
                <tr>
                    <td><label style="color: white; font-size: 1.5em;">Last Name: </label></td>
                <td><form:input path="lastName"></form:input></td>
                </tr>
                <tr>
                    <td><label style="color: white; font-size: 1.5em;">Email: </Label></td>
                    <td><form:input path="email"></form:input></td>
                </tr>
                <tr>
                    <td><input type="submit" value="Save"></td>
                </tr>
            </table>
        </form:form>
    </div>
</div>
</body>
</html>

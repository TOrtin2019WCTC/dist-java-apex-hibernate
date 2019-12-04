<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: People
  Date: 11/29/2019
  Time: 11:26 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<c:set var="cp" value="${pageContext.request.contextPath}"/>

<html>
<div class="wrapper">
    <header>
        <img src="${cp}/resources/img/ApexLogo1.jpeg" height="150" width="200" alt="circled A logo"/>
        <h1>Apex Legends Guide</h1>
        <img src="${cp}/resources/img/ApexLogo1.jpeg" height="150" width="200" alt="circled A logo"/>
        <link rel="stylesheet" href="${cp}/resources/css/style.css" type="text/css">


    </header>
    <br>
    <nav class="navigation">
        <ul>
            <c:url var="home" value="/"></c:url>
            <p class="nav-item"><a href="${home}">Home</a></p>
        </ul>
    </nav>
<body>
<div id="wrapper" style="text-align: center;">
    <div id="header">
        <h2>New User/Edit User</h2>
    </div>
</div>

<div id="container" style="justify-content: center;">
    <div id="content">
        <form:form action="save" modelAttribute="aUser">
            <form:hidden path="id" value="${aUser.id}"></form:hidden>
            <table>
                <tr>
                    <td><label style="color: white; font-size: 1.5em;">First Name: </label></td>
                    <td><form:input path="firstName"></form:input>
                    <form:errors path="firstName" cssClass="errors"></form:errors></td>
                </tr>
                <tr>
                    <td><label style="color: white; font-size: 1.5em;">Last Name: </label></td>
                <td><form:input path="lastName"></form:input>
                <form:errors path="lastName" cssClass="errors"></form:errors></td>
                </tr>
                <tr>
                    <td><label style="color: white; font-size: 1.5em;">Email: </Label></td>
                    <td><form:input path="email"></form:input>
                    <form:errors path="email" cssClass="errors"></form:errors></td>
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

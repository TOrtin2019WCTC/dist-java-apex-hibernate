<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: People
  Date: 12/1/2019
  Time: 6:16 PM
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
    </header>
    <br>
    <nav class="navigation">
        <ul>
            <c:url var="home" value=""></c:url>
            <p class="nav-item"><a href="${home}">Home</a></p>
        </ul>
    </nav>
</div>
<body>
<div id="header">
    <h1>Sorry, You've Encountered a Legendary Error</h1>
</div>
<div id="container">
    <div id="content">
        <p>${errorMessage}</p>
    </div>
</div>

</body>
</html>

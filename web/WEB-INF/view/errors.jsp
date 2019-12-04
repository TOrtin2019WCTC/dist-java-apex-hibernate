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
<head>
    <title>Apex Legends</title>
    <meta name="description" content="Website that offers information about Apex Legends game">
    <link rel="stylesheet" href="${cp}/resources/css/style.css" type="text/css">
</head>
<body>
<div class="wrapper">
    <header>
        <img src="${cp}/resources/img/ApexLogo1.jpeg" height="150" width="200" alt="circled A logo"/>
        <h1>Apex Legends Guide</h1>
        <img src="${cp}/resources/img/ApexLogo1.jpeg" height="150" width="200" alt="circled A logo"/>
    </header>
    <br>
    <nav class="navigation">
        <ul style="justify-content: center;">
            <p class="nav-item"><a href="home">Home</a></p>
        </ul>
    </nav>

    <h1 style="text-align: center;">Sorry, You've Encountered a Legendary Error</h1>
<div id="container" style="margin-top: 0;">
    <div id="content">
        <p style="text-align: center;">${errorMessage}</p>
    </div>
</div>
</div>


</body>
</html>

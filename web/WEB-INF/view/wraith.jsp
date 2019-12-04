<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: People
  Date: 12/4/2019
  Time: 9:38 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<c:set var="cp" value="${pageContext.request.contextPath}"/>

<html lang="en">
<head>
    <meta charset="UTF-8">

    <title>Apex Legends::Wraith</title>
    <meta name="viewport"
          content="width=device-width,
        initial-scale=1.0">
    <meta name="description" content = "Website that offers information about Apex Legends game">
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
        <ul>
            <p class="nav-item"><a href="home">Home</a></p>
            <p class="nav-item"> <a href="map">Map</a></p>
            <p class="nav-item"><a href ="legends">Legends</a></p>
            <c:url var="addUser" value="/users/list"></c:url>
            <p class="nav-item"><a href ="${addUser}">Users</a></p></ul>
        </ul>
    </nav>
    <br>
    <div class="legend-info">
        <h1>Wraith</h1>
        <div class="legend-photo"><img src="${cp}/resources/img/Wraith2.jpeg" height="168" width="300" alt="photo of character Wraith"/>
        </div>
        <p>Passive Ability: Voices from the Void<br><br>
            Tactical Ability: Into the Void<br><br>
            Ultimate Ability: Dimensional Rift</p>
    </div>
    <footer>Tim Ortin 2019</footer>
</div>


</body>

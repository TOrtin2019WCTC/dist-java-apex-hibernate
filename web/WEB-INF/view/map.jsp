<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: People
  Date: 12/1/2019
  Time: 6:33 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<c:set var="cp" value="${pageContext.request.contextPath}"/>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="${cp}/resources/css/style.css" type="text/css">
    <title>Apex Legends::Map</title>
    <meta name="viewport"
          content="width=device-width,
        initial-scale=1.0">
    <meta name="description" content = "Website that offers information about Apex Legends game">

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
            <p class="nav-item"><a href ="${addUser}">Users</a></p>
        </ul>
    </nav>
    <br>
    <h1>King's Canyon</h1>
    <div id="map-photo">
        <img src="${cp}/resources/img/map.jpg" height= "800" width = "800" alt="Photo of map"/>
    </div>
    <footer>Tim Ortin 2019</footer>
</div>

</body>
</html>

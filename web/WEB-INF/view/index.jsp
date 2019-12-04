<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" language="java"%>
<c:set var="cp" value="${pageContext.request.contextPath}"/>

<html lang="en">
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
        <ul>
            <p class="nav-item"><a href="home">Home</a></p>
            <p class="nav-item"><a href="map">Map</a></p>
            <p class="nav-item"><a href="legends">Legends</a></p>
            <c:url var="addUser" value="/users/list"></c:url>
            <p class="nav-item"><a href ="${addUser}">Users</a></p>
        </ul>
    </nav>
    <br>
    <div id="main-page-photo">
        <img src="resources/img/ApexPhoto.jpg" height="300" width="900" alt="apex legends characters photo"/>

    </div>
    <footer>Tim Ortin 2019</footer>
</div>
</body>
</html>
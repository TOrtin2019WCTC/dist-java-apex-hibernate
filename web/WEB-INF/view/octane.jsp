<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="resources/css/style.css" type="text/css">
    <title>Apex Legends::Octane</title>
    <meta name="viewport"
          content="width=device-width,
        initial-scale=1.0">
    <meta name="description" content = "Website that offers information about Apex Legends game">
    <c:set var="cp" value="${pageContext.request.contextPath}"/>

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
        </ul>
    </nav>
    <br>
    <p> Nothing here yet</p>

    <footer>Tim Ortin 2019</footer>
</div>


</body>

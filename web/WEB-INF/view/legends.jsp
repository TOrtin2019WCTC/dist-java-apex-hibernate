<%--
  Created by IntelliJ IDEA.
  User: People
  Date: 12/1/2019
  Time: 6:28 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<c:set var="cp" value="${pageContext.request.contextPath}"/>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="${cp}/resources/css/style.css" type="text/css">
    <title>Apex Legends :: Legends</title>
    <meta name="viewport"
          content="width=device-width,
        initial-scale=1.0">
    <meta name="description" content = "Website that offers information about Apex Legends game">

</head>
<body>
<div class="wrapper">
    <header>
        <img src="${cp}/resources/img/ApexLogo1.jpeg" height="205" width="246" alt="circled A logo"/>
        <h1>Apex Legends Guide</h1>
        <img src="${cp}/resources/img/ApexLogo1.jpeg" height="205" width="246" alt="circled A logo"/>
    </header>
    <br>
    <nav class="navigation">
        <ul>
            <p class="nav-item"><a href="index.jsp">Home</a></p>
            <p class="nav-item"> <a href="map.html">Map</a></p>
            <p class="nav-item"><a href ="legends.jsp">Legends</a></p>
            <p class="nav-item"><a href ="new-legend.html">New Legend Notification</a></p>
        </ul>
        </ul>
    </nav>
    <br>
    <div id="wraith">
        <a href ="wraith.html"> <img src="${cp}}/resources/img/Wraith.jpeg" height="168" width="300" alt="photo of character wraith"/></a>
    </div>
    <div id="octane">
        <a href = "octane.html"><img src="${cp}/resources/img/octane.jpg" height="168" width="300" alt="photo of character octane"/></a>
    </div>
    <footer>Tim Ortin 2019</footer>
</div>

</body>
</html>
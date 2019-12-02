<%--
  Created by IntelliJ IDEA.
  User: People
  Date: 12/1/2019
  Time: 6:16 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Error</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/style.css">
</head>
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

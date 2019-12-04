<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<c:set var="cp" value="${pageContext.request.contextPath}"/>


<html>
<head>
    <title>Users</title>
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
            <ul>
                <c:url var="home" value="/"></c:url>
                <p class="nav-item"><a href="${home}">Home</a></p>
            </ul>
        </ul>
        </ul>
    </nav>

    <div id="header">
     <h1>USERS</h1>
     <button onClick="window.location.href='add-user-form'; return false;">Add User</button>
    </div>

<form:form method="Get" action="search">
    Search Users By Last Name <input type="search" name="searchTerm">
    <input type="submit" value="search">
    <button onClick="window.location.href = 'list'; return false;" style="background-color: white; color: black; border: 2px solid red;">All Users</button>
</form:form>

<div id="container" style="text-align: center;">
    <div id="content">
        <table>
            <tr>
                <th></th>
                <th>First Name</th>
                <th>Last Name</th>
                <th>Email</th>
            </tr>
            <c:forEach var="tempUser" items="${users}">
                <c:url var="updateLink" value="/users/showUpdateUserForm">
                    <c:param name="userId" value="${tempUser.id}"></c:param>
                </c:url>
                <c:url var="deleteLink" value="/users/delete">
                    <c:param name="userId" value="${tempUser.id}"></c:param>
                </c:url>

                <tr>
                    <td> ${tempUser.firstName}</td>
                    <td>${tempUser.lastName}</td>
                    <td>${tempUser.email}</td>
                    <td>
                        <a href="${updateLink}">Update</a>
                        &nbsp;|&nbsp;
                        <a href="${deleteLink}"
                        onClick="if(!confirm('Are you sure?')) return false">Delete</a>
                    </td>

                </tr>
            </c:forEach>

        </table>
    </div>
</div>

</body>
</html>

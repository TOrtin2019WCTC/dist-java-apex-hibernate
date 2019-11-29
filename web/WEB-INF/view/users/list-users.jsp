<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: People
  Date: 11/29/2019
  Time: 11:18 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Users</title>
</head>
<body>
<div id="wrapper">
    <div id="header">
     <h2>USERS</h2>
     <button onClick="window.location.href='showAddUserForm'; return false;">Add User</button>
    </div>
</div>
<form:form method="Get" action="search">
    Search Users <input type="search" name="searchTerm">
    <input type="submit" value="search">
</form:form>

<div id="container">
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
                    <td>${tempUser.LastName}</td>
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

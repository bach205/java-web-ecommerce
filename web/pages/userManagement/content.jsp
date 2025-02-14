<%-- 
    Document   : content
    Created on : Feb 14, 2025, 2:26:19 PM
    Author     : HOME PC
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="<c:out value ="${pageContext.request.contextPath}"/>/CSS/userManagement/content.css"/>
        <c:set var="listUser" value="${requestScope.data}"></c:set>
        </head>
        <body>
            <h1>List user</h1>
            <button type="button" class="btn btn-primary"style="margin-bottom: 10px">Create +</button>

            <table>
                <tr>
                    <th>First Name</th>
                    <th>Last Name</th>
                    <th>Email</th>
                    <th>Gender</th>
                    <th>Address</th>
                    <th>Role</th>
                    <th style="width:10em">Action</th>
                </tr>

            <c:if test="${userList.size()!=0}">
                    <c:forEach var="item" items="${listUser}">
                    <tr>
                        <td>${item.getFirstName()}</td>
                        <td>${item.getLastName()}</td>
                        <td>${item.getEmail()}</td>
                        <td>${item.getGender()}</td>
                        <td>${item.getAddress()}</td>
                        <td>${item.getRole()}</td>
                        <td style="display: flex; gap:5px">
                            <span class="btn btn-primary">update</span>
                            <span class="btn btn-danger">delete</span>
                        </td>
                    </tr>
                </c:forEach>
            </c:if>
            <c:if test="${userList.size()==0}">
                <p>No user yet</p>
            </c:if>
        </table>
    </body>
</html>

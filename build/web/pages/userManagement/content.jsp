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
        <c:set var="list" value="${requestScope.data}"></c:set>
        </head>
        <body>
            <h1>List user</h1>
            <button type="button" class="btn btn-primary" style="margin-bottom: 10px" onclick = "window.location.href='CreateUser'">Create +</button>

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

            <c:if test="${list.size()!=0}">
                <c:forEach var="item" items="${list}">
                    <tr>
                        <td>${item.getFirstName()}</td>
                        <td>${item.getLastName()}</td>
                        <td>${item.getEmail()}</td>
                        <td>
                            <c:if test="${item.getGender() == 0}">Male</c:if>
                            <c:if test="${item.getGender()==1}">Female</c:if>
                            <c:if test="${item.getGender() == 2}">Unknown</c:if>
                            
                        </td>
                        <td>${item.getAddress()}</td>
                        <td>
                            <c:if test="${item.getRole() == 0}">Member</c:if>
                            <c:if test="${item.getRole()==1}">Admin</c:if>
                        </td>
                        <td style="display: flex; gap:5px">
                            <div class="btn btn-primary"><a href="UpdateUser?id=${item.getId()}">update</a></div>
                            <div class="btn btn-danger">
                                <form action="DeleteUser" method="post">
                                    
                                    <input type="text" style="display: none" name="id" value="${item.getId()}"/>
                                    <button style="padding:0;margin: 0;background-color: inherit;color: white;border:0" type="submit">delete</button>
                                </form>
                            </div>
                        </td>
                    </tr>
                </c:forEach>
            </c:if>
            <c:if test="${list.size()==0}">
                <p>No user yet</p>
            </c:if>
        </table>
    </body>
</html>

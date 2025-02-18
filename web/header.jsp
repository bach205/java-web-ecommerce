<%-- 
    Document   : header
    Created on : Feb 7, 2025, 2:07:44 AM
    Author     : HOME PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>PRJ</title>
        <link rel="stylesheet" href="./CSS/header.css"/>
        <!-- Bootstrap CSS -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
        <!-- Bootstrap JS (tùy chọn, nếu cần dùng JS của Bootstrap) -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.2/css/all.min.css">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

    </head>
    <body>
        <c:set var="userData" value="${userData}"/>
        <div id ="header-container" class = "container-fluid">
            <div class ="row main-header">
                <div class="col-3">
                    <h1><a href="home.jsp">PRJ</a></h1>
                </div>
                <div class="col-6 flex-row">
                    <p class="a text-center"><a href="topList.jsp">topList</a></p>
                    <input class="form-control form-control-sm search" type="text" placeholder="tim kiem" name="finding"/>
                </div>
                <div class ="col-3 flex-row">
                    <c:if test="${userData == null}">
                        <div class="btn btn-primary"><a href="login.jsp">Login</a></div>
                        <div class="btn btn-secondary"><a href="register.jsp">Register</a></div>
                    </c:if>

                    <div id="shopping-icon"><i class="fa-solid fa-cart-shopping"></i></div>
                        <c:if test="${userData != null}">
                        <div>hi ${userData.getFirstName()}</div>
                        <div onclick="avatarOnClick()" id="avatar"></div>
                        <!--                        <ul id="menu">
                                                    <li>item</li>
                                                    <li>item</li>
                                                    <li>item</li>
                                                    <li><a href="getAllUser">User management</a></li>
                                                    <li><a href="">Create product</a></li>
                                                    <li><a href="home.jsp">log out</a></li>
                                                </ul>-->
                    </c:if>
                    <ul id="menu" style="display: block">
                        <li>item</li>
                        <li>item</li>
                        <li>item</li>
                        <li><a href="getAllUser">User management</a></li>
                        <li><a href="">Create product</a></li>
                        <li><a href="home.jsp">log out</a></li>
                    </ul>
                </div>
            </div>
            <div class="line"></div>
            <ul class ="row flex-row" id="sub-header">
                <li class="text-center col-2 a"><a href="#">type</a></li>
                <li class="text-center col-2 a"><a href="#">type</a></li>
                <li class="text-center col-2 a"><a href="#">type</a></li>
                <li class="text-center col-2 a"><a href="#">type</a></li>
                <li class="text-center col-2 a"><a href="#">type</a></li>
            </ul>
        </div>
        <script src="<%= request.getContextPath()%>/JS/header.js" ></script>
    </body>
</html>

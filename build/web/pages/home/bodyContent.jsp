<%-- 
    Document   : bodyContent
    Created on : Feb 12, 2025, 5:28:49 PM
    Author     : HOME PC
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="<%= request.getContextPath() %>/CSS/bodyContent.css"/>
    </head>
    <body>
        <div class = "container-fluid">
            <div class="row text-center">
                <h1 class="h1">Featured Product</h1>
                <p>
                    Reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.
                    Excepteur sint occaecat cupidatat non proident.
                </p>
            </div>
            <div class="row">
                <c:forEach var="item" items="${[0,0,0,0]}">
                <div class="card col-4">
                    <a href="shop-single.html">
                        <img src="<%= request.getContextPath() %>/assets/item.jpg" height="100%" width="100%" class="card-img-top" alt="...">
                    </a>
                    <div class="card-body">
                        <ul class="list-unstyled d-flex justify-content-between">
                            <li>
                                <i class="text-warning fa fa-star"></i>
                                <i class="text-warning fa fa-star"></i>
                                <i class="text-warning fa fa-star"></i>
                                <i class="text-muted fa fa-star"></i>
                                <i class="text-muted fa fa-star"></i>
                            </li>
                            <li class="text-muted text-right">$240.00</li>
                        </ul>
                        <a href="shop-single.html" class="h2 text-decoration-none text-dark">Gym Weight</a>
                        <p class="card-text">
                            Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sunt in culpa qui officia deserunt.
                        </p>
                        <p class="text-muted">Reviews (24)</p>
                    </div>
                </div>
                </c:forEach>
            </div>
        </div>
    </body>
</html>

<%-- 
    Document   : bodyContent
    Created on : Feb 12, 2025, 5:28:49 PM
    Author     : HOME PC
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
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
                <c:forEach var="item" items="${productList}">
                <div class="card col-3">
                    <a href="shop-single.html">
                        <img src="<%= request.getContextPath() %>/assets/products/${item.getImageURL()}" height="100%" width="100%" class="card-img-top" alt="...">
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
                            <li class="text-muted text-right">${item.getPrice()}</li>
                        </ul>
                        <a href="shop-single.html" class="h2 text-decoration-none text-dark">${item.getTitle()}</a>
                        <p class="card-text">
                            ${item.getDescription()}
                        </p>
                    </div>
                </div>
                </c:forEach>
            </div>
        </div>
    </body>
</html>

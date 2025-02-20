<%-- 
    Document   : displayList
    Created on : Feb 20, 2025, 3:35:06 PM
    Author     : HOME PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="<%=request.getContextPath()%>/CSS/displayList.css" />
    </head>
    <body>
        <div class="display-product-container">
            <c:forEach var="item" items="${productList}">
                <a href="ProductDetail?id=${item.getId()}" style="cursor: pointer;display: block">
                    <div class="card">
                        <div class ="product-image">
                            <img src="<%= request.getContextPath() %>/assets/products/${item.getImageURL()}" alt="...">
                        </div>
                        <div class="card-body">
                            <ul class="list-unstyled d-flex justify-content-between">
                                <li>ReleaseDate ${item.getReleaseDate()}</li>
                                <li class="text-muted text-right">${item.getPrice()}</li>
                            </ul>
                            <p class="h2 text-decoration-none text-dark">${item.getTitle()}</p>
                            <p >
                                ${item.getDescription()}
                            </p>
                        </div>
                    </div>
                </a>
                            
            </c:forEach>
        </div>
    </body>
</html>

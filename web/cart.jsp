<%-- 
    Document   : cart
    Created on : Feb 21, 2025, 1:58:54 AM
    Author     : HOME PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="<%=request.getContextPath()%>/CSS/displayList.css" />
    </head>
    <body>
        <header><%@include file="header.jsp" %></header>
        <main>
            <img src="<%=request.getContextPath()%>/assets/banner.jpg" width="100%" height="auto" alt="alt"/>
            <c:if test="${productList== null || productList.size() == 0}">
                <div style="height: 70vh;">
                    <h1>chua co product nao het</h1>
                </div>
            </c:if>
            <div class="display-product-container my-4">

                <c:forEach var="item" items="${productList}">
                    <div class="d-flex flex-column" style="position: relative">
                        <a href="ProductDetail?id=${item.getId()}" style="cursor: pointer;display: block">
                            <div class="card">
                                <div class ="product-image">
                                    <img src="<%= request.getContextPath() %>/assets/products/${item.getImageURL()}" alt="...">
                                </div>
                                <div class="card-body">
                                    <ul class="list-unstyled d-flex justify-content-between">
                                        <li>${item.getReleaseDate()}</li>
                                        <li class="text-danger text-right">${item.getPrice()} Đồng</li>
                                    </ul>
                                    <p class="h2 text-decoration-none text-dark">${item.getTitle()}</p>
                                    <p >
                                        ${item.getDescription()}
                                    </p>
                                </div>
                            </div>
                        </a>
                        <form action="Cart?id=${item.getId()}" method="post" style="position: absolute;right:0;top:0">
                            <button class="btn btn-danger" type="submit" >X</button>
                        </form>
                    </div>
                </c:forEach>
            </div>
            <img src="<%=request.getContextPath()%>/assets/banner.jpg" width="100%" height="auto" alt="alt"/>
        </main>
        <footer>
            <%@include file="footer.jsp" %>
        </footer>
    </body>
</html>

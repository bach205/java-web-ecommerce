<%-- 
    Document   : productDetail
    Created on : Feb 20, 2025, 6:31:07 PM
    Author     : HOME PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="<%=request.getContextPath()%>/CSS/productDetail.css"/>
    </head>
    <body>
        <header><%@include file="header.jsp" %></header>
        <section class="container-fluid">
            <c:set var="product" value="${product}"/>
            <div class="row d-flex justify-content-center flex-row my-4">
                <div class="col-3">
                    <img class="product-image" src="<%=request.getContextPath()%>/assets/products/${product.getImageURL()}" alt="product image"/>
                </div>
                <div class="col-4 d-flex flex-column gap-3">
                    <div class="detail">
                        <span><strong>Tên: </strong></span><span>${product.getTitle()}</span>
                    </div>
                    <div class="detail">
                        <span><strong>Brand: </strong></span><span>${product.getBrand()}</span>
                    </div>
                    <div class="detail">
                        <span><strong>Color: </strong></span><span>${product.getColor()}</span>
                    </div>
                    <div class="detail">
                        <span><strong>Size: </strong></span><span>${product.getSize()}</span>
                    </div>
                    <div class="detail">
                        <span><strong>Type: </strong></span><span>${product.getType()}</span>
                    </div>

                    <div class="detail">
                        <span><strong>Release Date: </strong></span><span>${product.getReleaseDate()}</span>
                    </div>
                    <div class="detail" style="color:red">
                        <span><strong>Price: </strong></span><span>${product.getPrice()}</span>
                    </div>
                    <button class="btn btn-primary" type="button">Thêm vào giỏ</button>
                </div>
            </div>
        </section>
        <footer><%@include file="footer.jsp" %></footer>
    </body>
</html>

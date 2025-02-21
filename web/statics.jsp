<%-- 
    Document   : statics
    Created on : Feb 21, 2025, 11:57:36 PM
    Author     : HOME PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <header><%@include file="header.jsp" %></header>
        <main style="height: 80vh">
            <div><strong>Tổng lượng sản phẩm:</strong> ${numProducts} </div>
            <div><strong>Tổng lượng người dùng:</strong> ${numUsers} </div>
            <div><strong>Tổng lượng đặt hàng:</strong> ${numCarts}</div>
        </main>
        <footer>
            <%@include file="footer.jsp" %>
        </footer>
    </body>
</html>

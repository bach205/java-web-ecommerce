<%-- 
    Document   : bodyBanner
    Created on : Feb 12, 2025, 4:54:16 PM
    Author     : HOME PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="<%= request.getContextPath() %>/CSS/bodyBanner.css" rel="stylesheet"/>
    </head>
    <body>
        <div id="container">
            <img src="<%= request.getContextPath() %>/assets/banner.jpg" width="100%" alt="banner" style="height: 100vh"/>
            <div class="detail-box">
                <h1>
                    Best Jewellery
                    <br> Collection
                </h1>
                <p>
                    It is a long established fact that a reader will be distracted by the readable content of a page when
                    looking at its layout. The point of using Lorem
                </p>
                <div class="btn btn-warning">
                    <a href="" class="slider-link">
                        Shop Now
                    </a>
                </div>
            </div>
        </div>
    </body>
</html>

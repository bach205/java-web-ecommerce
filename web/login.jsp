<%-- 
    Document   : login
    Created on : Feb 16, 2025, 1:20:02 AM
    Author     : HOME PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="<%=request.getContextPath()%>/CSS/login/login.css"/>
    </head>
    <body>
        <header><%@include file="header.jsp" %></header>
        <main>
            <section>
                <div class="login-container">
                    <h2>Đăng nhập</h2>
                    <form class="login-wrapper" action="LoginServlet" method="post">
                        <label>
                            Email
                            <input type="text" name="email" placeholder="abc@examle.com" required>
                        </label>
                        <label>
                            Password
                            <input type="password" name="password" placeholder="Mật khẩu" required>
                        </label>
                        <div style="display: flex; flex-direction: row; justify-content: flex-end">
                            <a style = "color: black !important;cursor:pointer" href="resetPassword.jsp">Quên mật khẩu?</a>
                        </div>
                        <button type="submit">Đăng nhập</button>
                        <button type="button" onclick="window.location.href='register.jsp'">Đăng kí</button>  
                    </form>
                </div>
            </section>
        </main>
        <footer><%@include file="footer.jsp" %></footer>
    </body>
</html>

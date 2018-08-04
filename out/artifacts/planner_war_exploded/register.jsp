<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>Регистрация</title>
    </head>
    <body>
        <%
            String error = "";
            if(request.getAttribute("error") != null) {
                error = (String) request.getAttribute("error");
            }
        %>
        <form action="register" method="POST">
            <p><label for="username">Потребителско име:</label><input type="text" id="username" name="username"/></p>
            <p><label for="firstName">Име: </label><input type="text" id="firstName" name="firstName"/></p>
            <p><label for="lastName">Фамилия: </label><input type="text" id="lastName" name="lastName"/></p>
            <p><label for="email">Email</label><input type="email" id="email" name="email"></p>
            <p><label for="password">Парола</label><input type="password" id="password" name="password"/></p>
            <p><label for="repassword">Повтори паролата</label><input type="password" id="repassword" name="repassword">
            </p>
            <p id="error"><%= error%></p>
            <input type="submit" value="Регистрация">
        </form>
    </body>
</html>

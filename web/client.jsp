<%@ page import="utils.Database" %>
<%@ page import="entities.Client" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>Title</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="css/index.css">
        <link rel="stylesheet" type="text/css" href="css/querrys.css">
        <script src="js/vendor/jquery/jquery-3.1.1.js" type="text/javascript" charset="utf-8"></script>
        <script src="js/vendor/bootstrap/bootstrap.min.js" type="text/javascript" charset="utf-8"></script>
        <script src="js/custom.js" type="text/javascript" charset="utf-8"></script>
    </head>
    <body>
        <%
            Client client = new Client(null, "", "", "", "", "");
            boolean isUsernameAvailable = true;
            boolean isEmailAvailable = true;
            if(request.getAttribute("username") != null) {
                isUsernameAvailable = (boolean) request.getAttribute("username");
            }
            if(request.getAttribute("email") != null) {
                isEmailAvailable = (boolean) request.getAttribute("email");
            }
            if(request.getAttribute("client") != null){
                client = (Client)request.getAttribute("client");
            }
        %>
        <div class="container" style="background: transparent">
            <form action="register" method="POST" class="form-horizontal" style="margin-top: 20px;" id="clientForm">
                <input type="hidden" value="client" name="userType">
                <div class="form-group">
                    <label for="username" class="col-sm-2 control-label">Потребителско име</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" value="<%=client.getUsername()%>" id="username" name="username" required>
                    </div>
                </div>
                <div class="form-group" id="usernameError" hidden>
                    <div class="col-sm-2"></div>
                    <div class="col-sm-10">
                        <div class="alert alert-danger" role="alert">
                            <span class="glyphicon glyphicon-exclamation-sign" aria-hidden="true"></span>
                            <span class="sr-only">Грешка:</span>
                            Потребителското име е заето
                        </div>
                    </div>
                </div>
                <% if(!isUsernameAvailable) {%>
                <script>$("#usernameError").show()</script>
                <%} else { %>
                <script>$("#usernameError").hide()</script>
                <% }%>
                <div class="form-group">
                    <label for="firstName" class="col-sm-2 control-label">Собствено име</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" value="<%=client.getFirstName()%>" id="firstName" name="firstName" required>
                    </div>
                </div>
                <div class="form-group">
                    <label for="lastName" class="col-sm-2 control-label">Фамилия</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" value="<%=client.getLastName()%>" id="lastName" name="lastName" required>
                    </div>
                </div>
                <div class="form-group">
                    <label for="email" class="col-sm-2 control-label">Електронна поща</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" value="<%=client.getEmail()%>" id="email" name="email" required>
                    </div>
                </div>
                <div class="form-group" id="emailError" hidden>
                    <div class="col-sm-2"></div>
                    <div class="col-sm-10">
                        <div class="alert alert-danger" role="alert">
                            <span class="glyphicon glyphicon-exclamation-sign" aria-hidden="true"></span>
                            <span class="sr-only">Грешка:</span>
                            Пощата е заета
                        </div>
                    </div>
                </div>
                <% if(!isEmailAvailable) {%>
                <script>$("#emailError").show()</script>
                <%} else { %>
                <script>$("#emailError").hide()</script>
                <% }%>
                <div class="form-group">
                    <label for="client-password" class="col-sm-2 control-label">Парола</label>
                    <div class="col-sm-10">
                        <input type="password" class="form-control" id="client-password" name="password" required>
                    </div>
                </div>
                <div class="form-group">
                    <label for="client-repassword" class="col-sm-2 control-label">Повтори парола</label>
                    <div class="col-sm-10">
                        <input type="password" class="form-control" id="client-repassword" name="repassword" required>
                    </div>
                </div>
                <div class="form-group" id="client-passwordError" hidden>
                    <div class="col-sm-2"></div>
                    <div class="col-sm-10">
                        <div class="alert alert-danger" role="alert">
                            <span class="glyphicon glyphicon-exclamation-sign" aria-hidden="true"></span>
                            <span class="sr-only">Грешка:</span>
                            Паролите не съвпадат
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-10">
                        <button type="submit" class="btn btn-default" onclick="checkClientPassword()">Регистрация</button>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-10">
                        <a type="submit" class="btn btn-default" href="index.jsp">Отказ</a>
                    </div>
                </div>

            </form>
        </div>
    </body>
</html>

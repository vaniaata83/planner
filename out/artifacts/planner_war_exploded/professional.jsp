<%@ page import="utils.Database" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="entities.City" %>
<%@ page import="entities.Service" %>
<%@ page import="entities.Professional" %>
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
        <% Database database = new Database();
            Professional professional = new Professional(null, "", "", "", "", 1, 1, "", "", "", "");
            boolean isUserAvailable = true;
            if(request.getAttribute("username") != null) {
                isUserAvailable = (boolean) request.getAttribute("username");
            }
            if(request.getAttribute("professional") != null) {
                professional = (Professional) request.getAttribute("professional");
            }
            ArrayList<City> cities = database.getCities();
            ArrayList<Service> services = database.getServices();
            database.close();

        %>
        <div class="container" style="background: transparent">
            <form action="register" method="POST" class="form-horizontal" style="margin-top: 20px;"
                  id="professionalForm">
                <input type="hidden" value="professional" name="userType">
                <div class="form-group">
                    <label for="username" class="col-sm-2 control-label">Потребителско име</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" value="<%=professional.getUsername()%>" id="username"
                               name="username" required>
                    </div>
                </div>
                <div class="form-group" id="usernameError">
                    <div class="col-sm-2"></div>
                    <div class="col-sm-10">
                        <div class="alert alert-danger" role="alert">
                            <span class="glyphicon glyphicon-exclamation-sign" aria-hidden="true"></span>
                            <span class="sr-only">Грешка:</span>
                            Потребителското име е заето
                        </div>
                    </div>
                </div>
                <% if(!isUserAvailable) {%>
                <script>$("#usernameError").show()</script>
                <%} else { %>
                <script>$("#usernameError").hide()</script>
               <% }%>

                <div class="form-group">
                    <label for="firstName" class="col-sm-2 control-label">Собствено име</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="firstName" value="<%=professional.getFirstName()%>"
                               name="firstName" required>
                    </div>
                </div>
                <div class="form-group">
                    <label for="lastName" class="col-sm-2 control-label">Фамилия</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="lastName" value="<%=professional.getFamily()%>"
                               name="lastName" required>
                    </div>
                </div>
                <div class="form-group">
                    <label for="businessName" class="col-sm-2 control-label">Име на фирма или заведение</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="businessName"
                               value="<%=professional.getBusinessName()%>" name="businessName" required>
                    </div>
                </div>
                <div class="form-group">
                    <label for="qualification" class="col-sm-2 control-label">Квалификация</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="qualification"
                               value="<%=professional.getQualification()%>" name="qualification" required>
                    </div>
                </div>
                <div class="form-group">
                    <label for="service" class="col-sm-2 control-label">Услуга</label>
                    <div class="col-sm-10">
                        <select class="form-control" id="service" name="service">
                            <% for(Service service : services) { %>
                            <option value="<%= service.getId()%>"><%= service.getServiceName() %>
                            </option>
                            <%}%>
                        </select>
                    </div>
                </div>
                <div class="form-group">
                    <label for="city" class="col-sm-2 control-label">Град</label>
                    <div class="col-sm-10">
                        <select class="form-control" id="city" name="city">
                            <% for(City city : cities) { %>
                            <option value="<%= city.getId()%>"><%= city.getName() %>
                            </option>
                            <%}%>
                        </select>
                    </div>
                </div>
                <div class="form-group">
                    <label for="address" class="col-sm-2 control-label">Адрес</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="address"
                               value="<%=professional.getQualification()%>" name="address" required>
                    </div>
                </div>
                <div class="form-group">
                    <label for="phone" class="col-sm-2 control-label">Телефон</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="phone" value="<%=professional.getQualification()%>"
                               name="phone" required>
                    </div>
                </div>
                <div class="form-group">
                    <label for="pro-password" class="col-sm-2 control-label">Парола</label>
                    <div class="col-sm-10">
                        <input type="password" class="form-control" id="pro-password" name="password" required>
                    </div>
                </div>
                <div class="form-group">
                    <label for="pro-repassword" class="col-sm-2 control-label">Повтори парола</label>
                    <div class="col-sm-10">
                        <input type="password" class="form-control" id="pro-repassword" name="repassword" required>
                    </div>
                </div>
                <div class="form-group" id="pro-passwordError" hidden>
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
                        <button type="submit" class="btn btn-default" onclick="checkProPassword()">Регистрация</button>
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

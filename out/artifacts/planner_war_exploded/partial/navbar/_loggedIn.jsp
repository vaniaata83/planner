<%@ page import="entities.User" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    User user = (User) request.getSession().getAttribute("user");
%>
<header class="row" id="header">
    <h1>TIME MANAGEMENT</h1>
    <h2>ЗАПАЗИ ОНЛАЙН ЧАС</h2>
    <h3>БЕЗПЛАТНО за лекар, зъболекар, фризьор, масажист, фитнес...</h3>
    <ul class="row">
        <li class="col-xs-6 col-sm-3 col-md-2 col-lg-2"><a href="#">НАЧАЛО</a></li>
        <li class="col-xs-6 col-sm-3 col-md-2 col-lg-2"><a href="#">КОНТАКТИ</a></li>

        <div>
            <li class="col-xs-6 col-sm-3 col-md-2 col-lg-2">
                <span style="font-weight: bolder;">Здравейте, <%=user.getFirstName() + " " + user.getLastName()%></span></li>
            <li class="col-xs-6 col-sm-3 col-md-2 col-lg-2"><a href="logout">Изход</a></li>
        </div>
    </ul>
</header>

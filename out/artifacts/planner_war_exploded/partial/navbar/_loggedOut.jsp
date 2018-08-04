<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="row" id="header">
    <header>
        <h1>TIME MANAGEMENT</h1>
        <h2>ЗАПАЗИ ОНЛАЙН ЧАС</h2>
        <h3>БЕЗПЛАТНО за лекар, зъболекар, фризьор, масажист, фитнес...</h3>
        <ul class="row">
            <li class="col-xs-6 col-sm-3 col-md-2 col-lg-2"><a href="#">НАЧАЛО</a></li>
            <li class="col-xs-6 col-sm-3 col-md-2 col-lg-2">
                <button data-toggle="modal" data-target="#loginModal">ВХОД</button>
            </li>
            <div class="modal fade" id="loginModal" tabindex="-1" rol="dialog"
                 aria-labelledby="myLargeModalLabel"
                 aria-hidden="true">
                <div class="modal-dialog modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                                ×
                            </button>
                            <h4 class="modal-title">
                                Вход
                            </h4>
                        </div>
                        <div class="modal-body">
                                <form action="login" method="POST">
                                    <div class="form-group">
                                        <label for="username" class="pull-left">Потребител</label>
                                        <input type="text" class="form-control" id="username"
                                               name="username">
                                    </div>
                                    <div class="form-group">
                                        <label for="password" class="pull-left">Парола</label>
                                        <input type="password" class="form-control" id="password"
                                               name="password">
                                    </div>
                                    <button type="submit" class="btn btn-default">Вход</button>
                                </form>
                            </div>
                    </div>
                </div>
            </div>
            <li class="col-xs-6 col-sm-3 col-md-2 col-lg-2">

                <!-----------------           бутон регистрация          ------------>

                <button data-toggle="modal" data-target="#registerModal">
                    РЕГИСТРАЦИЯ
                </button>
            </li>

            <div class="modal fade" id="registerModal" tabindex="-1" rol="dialog"
                 aria-labelledby="myLargeModalLabel"
                 aria-hidden="true">
                <div class="modal-dialog modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                                ×
                            </button>
                            <h4 class="modal-title">
                                Регистрация
                            </h4>
                        </div>
                        <div class="modal-body">
                            <div class="row">
                                <!-- Tab panes -->
                                <div class="tab-content">
                                    <div class="form-group">
                                        <a class="btn btn-success col-md-5" style="margin-left:25px"
                                           href="client.jsp">Клиент</a>
                                        <div class="col-md-1"></div>
                                        <a class="btn btn-success col-md-5"
                                           href="professional.jsp">Професионалист</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <li class="col-xs-6 col-sm-3 col-md-2 col-lg-2"><a href="#">КОНТАКТИ</a></li>
        </ul>
        <div class="menue hide">МЕНЮ</div>
    </header>
</div>
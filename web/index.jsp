<%@ page import="entities.User" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>

    <head>
        <title>timemanagement</title>
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
        <div class="container">
            <%  //login check
                boolean loginFailure = false;
                if(request.getAttribute("loginFailure") != null) {
                    loginFailure = (boolean) request.getAttribute("loginFailure");
                }
                if(loginFailure) { %>
                    <script>alert("Грешно потребителско име или парола")</script>
                <%}
                //check if we are logged or not and render navbar
                if(request.getSession().getAttribute("user") != null) {
                    User user = (User) request.getSession().getAttribute("user");
                    pageContext.setAttribute("user", user);
            %>
            <jsp:include page="partial/navbar/_loggedIn.jsp"/>
            <%} else {%>
            <jsp:include page="partial/navbar/_loggedOut.jsp"/>
            <%}%>
            <div id="main" class="row">
                <div id="content" class="col col-md-8">
                    <h1>За платформата...</h1>
                    <p>Time management е онлайн платформа за запазване на часове за различни услуги предостaвяни от
                        професионалисти - лекари, зъболекари, фризьори, масажисти, фитнес интруктори и други, през
                        компютър, таблет или мобилен телефон, по което и да е време на деня.
                    </p>


                    <div class="row">
                        <div class="foto col col-xs-6 col-md-4 col-lg-3">
                            <img src="images/1.jpg" alt="call">
                            <div class="banner">
                                Запази онлайн час безплатно
                            </div>
                        </div>
                        <div class="foto col col-xs-6 col-md-4 col-lg-3">
                            <img src="images/medical.jpg" alt="medical">
                            <div class="banner">
                                за лекар
                            </div>
                        </div>
                        <div class="foto col col-xs-6 col-md-4 col-lg-3">
                            <img src="images/beauty.jpg" alt="beauty">
                            <div class="banner">
                                фризьор
                            </div>
                        </div>
                        <div class="foto col col-xs-6 col-md-4 col-lg-3">
                            <img src="images/fit (1).jpg" alt="bla">
                            <div class="banner">
                                фитнес интруктор...
                            </div>
                        </div>
                    </div>

                    <h1>За клиенти...</h1>
                    <p>Регистрирайте се и поддържайте собствен профил в платформата на Time Management. Търсете
                        Професионалист по избрани критерии и разглеждайте профила му. Запишете свободен час от
                        профила
                        на избрания от Вас Професионалист, чрез използване на услугата „Запази час”, ще получите
                        нотификации в платформата и/или по e-mail.
                        За да запазите час за професионалист не е задължително да сте регистриран потребител.
                        Нерегистрираните потребители също могат да търсят Професионалист по избрани критерии
                        (ключова
                        дума, услуга, град), да разглеждане на профила му и записват свободен час от профила на
                        избрания
                        от тях Професионалист, чрез използване на услугата „Запази час”.
                    </p>
                    <div class="foto">
                        <img src="images/1.jpg" alt="blaaa">
                        <div class="banner">
                            ЗАПАЗИ ОНЛАЙН ЧАС БЕЗПЛАТНО за лекар, зъболекар, фризьор, масажист, фитнес...
                        </div>
                    </div>

                    <p class="noMarginTop">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do
                        eiusmod
                        tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis
                        nostrud
                        exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure
                        dolor
                        in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.
                        Excepteur
                        sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id
                        est
                        laborum.</p>
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor
                        incididunt ut
                        labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation
                        ullamco
                        laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit
                        in
                        voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat
                        cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est
                        laborum.</p>
                </div>


                <div id="aside" class="col col-md-4">
                    <h1>Новини, статии, здравна информация</h1>
                    <h3>Изследвания и прегледи, задължителни поне веднъж в годината</h3>
                    <p>
                        Профилактиката винаги е била най-добрият начин да останем здрави и да се излекуваме
                        по-успешно!

                        Когато сме млади и в добра кондиция, профилактичните прегледи и медицинските изследвания са
                        последната ни грижа. Не искаме да мислим за потенциалните рискове, свързани със здравето ни,
                        когато имаме целия живот пред себе си, тичаме три пъти седмично и се стараем да живеем
                        здравословно. Ако навиците ни пък не са дотам добри, още по-малко искаме да мислим за
                        възможните
                        болести</p>
                    <div class="row">
                        <img src="images/Hypertension.jpg" class="col col-sm-6" alt="bla2">
                        <img src="images/diabetes-2.jpg" class="col col-sm-6" alt="bla2">
                    </div>
                    <h4>1. Кръвно налягане</h4>
                    <p>

                        Кръвното налягане е един от най-важните здравни параметри, които трябва да проверяваме на
                        всеки
                        две години. Високото кръвно налягане може да доведе до сърдечна недостатъчност, удар,
                        бъбречна
                        недостатъчност, атеросклероза и други подобни артериални или аортни състояние като аортни
                        аневризми.
                    <h4>2. Холестерол</h4>

                    Холестеролът е един от най-масовите убийци на модерната епоха. Макар че е необходима част от
                    диетата
                    ни и липопротеините с висока плътност, или т.нар. HDL холестерол, са полезни за сърцето,
                    повечето от
                    холестерола е LDL – липопротеини с ниска плътност, който се натрупва по стените на артериите,
                    стеснява ги и причинява атеросклероза.

                    Важно е да проверяваме нивата на холестерола си поне веднъж на две години – още докато сме
                    млади, за
                    да избегнем риска. Лекарят ще ни препоръча какво да правим, ако нещо с резултатите не е наред.

                    <h4>3. Диабет</h4>
                    Диабетът е нарастваща като лавина заплаха, особено тип 2 диабет, който се свързва със
                    затлъстяването
                    и навиците за консумиране най-вече на нездравословни храни. Изследванията на кръвната захар са и
                    бързи, и лесни – вече има и съвсем достъпни като цена глюкомери - уреди за самостоятелно
                    измерване
                    на този параметър. Хората, които не са изложени на директен риск, все пак трябва да си правят
                    това
                    изследване поне веднъж на две години, най-често като част от пълната кръвна картина.
                    </p>
                </div>
            </div>

        </div>
        <footer>
            Copyright Time management © 2017 Всички права запазени.
        </footer>
    </body>

</html>

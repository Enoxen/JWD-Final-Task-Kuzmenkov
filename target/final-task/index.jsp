<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%--<html>--%>
<%--<style>--%>
    <%--.form{--%>
        <%--display: flex;--%>
        <%--justify-content: center;--%>
        <%--align-items: center;--%>
        <%--margin-top:200px;--%>
    <%--}--%>
    <%--body{--%>
        <%--width: 100%;--%>
        <%--margin: 0;--%>
        <%--padding: 0;--%>
    <%--}--%>
<%--</style>--%>
<%--<head>--%>
    <%--<title>Input page</title>--%>
    <%--<fmt:setLocale value="${sessionScope.locale}"/>--%>
    <%--<fmt:setBundle basename="localization.launch" var="loc"/>--%>
    <%--<fmt:message bundle="${loc}" key="launch.greeting" var="greeting"/>--%>
    <%--<fmt:message bundle="${loc}" key="launch.auth" var="auth"/>--%>
    <%--<fmt:message bundle="${loc}" key="launch.reg" var="reg"/>--%>

<%--</head>--%>
    <%--<body>--%>
        <%--<div class="form">--%>
            <%--<h1>${greeting}</h1>--%>
            <%--<br>--%>
            <%--<form action="FrontController">--%>
                <%--<input type="hidden" name="command" value="sign">--%>
                <%--<input type="hidden" name="page" value="WEB-INF/jsp/authPage.jsp">--%>
                <%--<input type="submit" name="auth" value="${auth}">--%>
            <%--</form>--%>
            <%--<br>--%>
            <%--<form action="FrontController">--%>
                <%--<input type="hidden" name="command" value="sign">--%>
                <%--<input type="hidden" name="page" value="WEB-INF/jsp/regPage.jsp">--%>
                <%--<input type="submit" name="reg" value="${reg}">--%>
            <%--</form>--%>
        <%--</div>--%>
        <%--&lt;%&ndash;<footer>&ndash;%&gt;--%>
            <%--&lt;%&ndash;<a href="/FrontController?command=change_locale&locale=ru">Русский</a>&ndash;%&gt;--%>
            <%--&lt;%&ndash;<a href="/FrontController?command=change_locale&locale=en">English</a>&ndash;%&gt;--%>
        <%--&lt;%&ndash;</footer>&ndash;%&gt;--%>
<%--</body>--%>
<%--</html>--%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Home</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.3/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.0.7/css/swiper.min.css">
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Pacifico|Pontano+Sans" rel="stylesheet">
    <link rel="stylesheet" href="assets/css/style.css">
</head>
<body>

<section id="navbar">
    <div class="container">
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <div class="logo">
                <a href="#" class="logo_name">CinemaScore</a>
                <div class="logo_image">
                    <div class="circles">
                        <div class="move-circle1"><img src="assets/img/move_circle1.png"></div>
                        <div class="move-circle2"><img src="assets/img/move_circle1.png"></div>
                    </div>
                    <div class="babina"><img src="assets/img/babina.png" alt=""></div>
                </div>
            </div>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item active">
                        <a class="nav-link" href="#">Top</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Search</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Rating</a>
                    </li>
                </ul>
                <form class="form-inline my-2 my-lg-0">
                    <input class="form-control mr-sm-2" type="text" name="search" placeholder="Search" aria-label="Search" value="">
                </form>
                <button class="btn btn-outline-success my-2 my-sm-0" type="submit" data-toggle="modal" data-target="#loginModal">Login</button>
                <div class="lang"><a href="">RU</a> | <a class="active" href="">EN</a></div>
            </div>
        </nav>
    </div>
</section>

<section id="slider">
    <form action="">
        <input type="hidden" name="command" value="film">
        <div class="container">
            <h3 class="title">Recently Added Films</h3>
            <div class="row">
                <div class="swiper-container">
                    <div class="swiper-wrapper">
                        <div class="swiper-slide">
                            <input type="submit" style="background-image: url(https://st.kp.yandex.net/images/film_iphone/iphone360_326.jpg); background-size: cover;" class="poster" value="1" name="filmpage">
                        </div>


                    </div>

                    <div class="swiper-pagination"></div>

                    <div class="swiper-button-next"></div>
                    <div class="swiper-button-prev"></div>
                </div>
            </div>
        </div>
    </form>
</section>

<section id="most">
    <form action="">
        <div class="container">
            <h3 class="title">Most Viewed</h3>
            <div class="row">
                <div class="col">
                    <div class="film">
                        <img src="https://i.pinimg.com/736x/e5/d4/f8/e5d4f864017f90e64e212be62eb5ff78--i-am-number-four-number-number.jpg" alt="">
                        <div class="about">
                            <p class="name">Film name</p>
                            <p class="views"><i class="fa fa-eye" aria-hidden="true"></i> Views: 12345</p>
                            <p class="rating"><i class="fa fa-star-o" aria-hidden="true"></i> Rating: 8.1</p>
                        </div>
                    </div>
                </div>
                <div class="col">
                    <div class="film">
                        <img src="https://i.pinimg.com/736x/6f/d0/b3/6fd0b37cfcfb0d20b7ab86a913d10ebd--theatre-posters-music-posters.jpg" alt="">
                        <div class="about">
                            <p class="name">Film name</p>
                            <p class="views"><i class="fa fa-eye" aria-hidden="true"></i> Views: 12345</p>
                            <p class="rating"><i class="fa fa-star-o" aria-hidden="true"></i> Rating: 8.1</p>
                        </div>
                    </div>
                </div>
                <div class="col">
                    <div class="film">
                        <img src="http://moviehole.net/img/avengers7.jpg" alt="">
                        <div class="about">
                            <p class="name">Film name</p>
                            <p class="views"><i class="fa fa-eye" aria-hidden="true"></i> Views: 12345</p>
                            <p class="rating"><i class="fa fa-star-o" aria-hidden="true"></i> Rating: 8.1</p>
                        </div>
                    </div>
                </div>
                <div class="col">
                    <div class="film">
                        <img src="https://s-media-cache-ak0.pinimg.com/originals/58/ab/f9/58abf96947a92aa79eeaa53060b66ab8.jpg" alt="">
                        <div class="about">
                            <p class="name">Film name</p>
                            <p class="views"><i class="fa fa-eye" aria-hidden="true"></i> Views: 12345</p>
                            <p class="rating"><i class="fa fa-star-o" aria-hidden="true"></i> Rating: 8.1</p>
                        </div>
                    </div>
                </div>
                <div class="col">
                    <div class="film">
                        <img src="https://i.pinimg.com/736x/66/a3/b6/66a3b679e7bfe6af0cef91d5beb0f245--style-movie-film-poster.jpg" alt="">
                        <div class="about">
                            <p class="name">Film name</p>
                            <p class="views"><i class="fa fa-eye" aria-hidden="true"></i> Views: 12345</p>
                            <p class="rating"><i class="fa fa-star-o" aria-hidden="true"></i> Rating: 8.1</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</section>

<section id="random">
    <form action="">
        <div class="container">
            <h3 class="title">Random Film</h3>
            <div class="row">
                <div class="col-3">
                    <div class="film"><img src="https://upload.wikimedia.org/wikipedia/en/thumb/a/a1/Brokeback_mountain.jpg/220px-Brokeback_mountain.jpg" alt=""></div>
                </div>
                <div class="col-9">
                    <h3>Brokeback Mountain</h3>
                    <p>Brokeback Mountain is a 2005 American neo-Western romantic drama film directed by Ang Lee and produced by Diana Ossana and James Schamus. Adapted from the 1997 short story of the same name by Annie Proulx, the screenplay was written by Ossana and Larry McMurtry. The film stars Heath Ledger, Jake Gyllenhaal, Anne Hathaway, and Michelle Williams, and depicts the complex emotional and sexual relationship between Ennis Del Mar and Jack Twist in the American West from 1963 to 1983.</p>
                    <p>The film received critical acclaim and commercial success. It won the Golden Lion at the Venice Film Festival, Best Picture and Best Director at the British Academy Film Awards, Golden Globe Awards, Producers Guild of America Awards, Critics' Choice Movie Awards, and Independent Spirit Awards, among others. The film was nominated for eight Academy Awards, the most nominations at the 78th Academy Awards, where it won three—Best Director, Best Adapted Screenplay, and Best Original Score—though it lost the Best Picture award to Crash in a controversial Oscars upset.</p>
                    <div class="about">
                        <p class="actors"><i class="fa fa-user-o" aria-hidden="true"></i> Starring: Heath Ledger, Jake Gyllenhaal, Anne Hathaway, Michelle Williams</p>
                        <p class="genre"><i class="fa fa-film" aria-hidden="true"></i> Genres: western. romantic, drama</p>
                        <p class="views"><i class="fa fa-eye" aria-hidden="true"></i> Views: 12345</p>
                        <p class="rating"><i class="fa fa-star-o" aria-hidden="true"></i> Rating: 8.1</p>
                    </div>
                </div>
                <div class="button">
                    <button type="submit" class="btn btn-outline-primary">Random</button>
                </div>
            </div>
        </div>
    </form>
</section>

<footer>
    <p>2018 © Cinema</p>
</footer>

<div class="modal fade" id="loginModal" tabindex="-1" role="dialog" aria-labelledby="loginModalTitle" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLongTitle">Login</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <div class="input-group">
                    <div class="row">
                        <div class="col-12"><input type="text" class="form-control" placeholder="Username" aria-label="Username" aria-describedby="basic-addon1"></div>
                        <div class="col-12"><input type="password" class="form-control" placeholder="Password" aria-label="Password" aria-describedby="basic-addon1"></div>
                    </div>
                </div>
                <a href="" data-dismiss="modal" data-toggle="modal" data-target="#regModal">Don't have an account? CLICK HERE!!!</a>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal" data-toggle="modal" data-target="#forgotPassword">Forgot Passoword?</button>
                <button type="button" class="btn btn-primary">Login</button>
            </div>
        </div>
    </div>
</div>

<div class="modal fade" id="regModal" tabindex="-1" role="dialog" aria-labelledby="regModalTitle" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLongTitle1">Registration</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <div class="input-group">
                    <div class="row">
                        <div class="col-12"><input type="text" class="form-control" placeholder="Username" aria-label="Username" aria-describedby="basic-addon1"></div>
                        <div class="col-12"><input type="password" class="form-control" placeholder="Password" aria-label="Password" aria-describedby="basic-addon1"></div>
                        <div class="col-12"><input type="password" class="form-control" placeholder="Password" aria-label="Password" aria-describedby="basic-addon1"></div>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-primary">REG ME!</button>
            </div>
        </div>
    </div>
</div>

<div class="modal fade" id="forgotPassword" tabindex="-1" role="dialog" aria-labelledby="loginModalTitle" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="forgotPasswordTitle">Forgot Password</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <div class="input-group mb-3">
                    <input type="email" class="form-control" placeholder="Email" aria-label="Email" aria-describedby="basic-addon1">
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-primary">Send me</button>
            </div>
        </div>
    </div>
</div>

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.3/js/bootstrap.min.js" integrity="sha384-a5N7Y/aK3qNeh15eJKGWxsqtnX/wWdSZSKp+81YjTmS15nvnvxKHuzaWwXHDli+4" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.0.7/js/swiper.min.js"></script>
<script src="assets/js/main.js"></script>
</body>
</html>
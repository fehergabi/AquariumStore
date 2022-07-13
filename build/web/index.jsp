

<%@page import="umanager.User"%>
<%@page import="umanager.UserDataService"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <!-- basic -->
        <%@page contentType="text/html" pageEncoding="UTF-8"%>
        <!--<meta charset="ISO-8859-1">-->
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <!-- mobile metas -->
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="viewport" content="initial-scale=1, maximum-scale=1">
        <!-- site metas -->
        <title>AquariumStore</title>
        <meta name="keywords" content="">
        <meta name="description" content="">
        <meta name="author" content="">
        <!-- bootstrap css -->
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <!-- style css -->
        <link rel="stylesheet" href="css/style.css">
        <!-- Responsive-->
        <link rel="stylesheet" href="css/responsive.css">
        <!-- fevicon -->
        <link rel="icon" href="images/fevicon.png" type="image/gif" />
        <!-- Scrollbar Custom CSS -->
        <link rel="stylesheet" href="css/jquery.mCustomScrollbar.min.css">
        <!-- Tweaks for older IEs-->
        <link rel="stylesheet" href="https://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.css" media="screen">
        <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
    </head>
    <!-- body -->
    <body class="main-layout">
        <!-- loader  -->
        <div class="loader_bg">
            <div class="loader"><img src="images/loading.gif" alt="#" /></div>
        </div>
        <!-- end loader -->
        <!-- header -->
        <header>
            <!-- header inner -->
            <div class="header">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-xl-3 col-lg-3 col-md-3 col-sm-3 col logo_section">
                            <div class="full">
                                <div class="center-desk">
                                    <div class="logo">
                                        <a href="index.html"><img src="images/logo1.png" height="110px" width="110px" alt="#" /></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-9 col-lg-9 col-md-9 col-sm-9">
                            <nav class="navigation navbar navbar-expand-md navbar-dark ">
                                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExample04" aria-controls="navbarsExample04" aria-expanded="false" aria-label="Toggle navigation">
                                    <span class="navbar-toggler-icon"></span>
                                </button>
                                <div class="collapse navbar-collapse" id="navbarsExample04">
                                    <ul class="navbar-nav mr-auto">
                                        <li class="nav-item">
                                            <a class="nav-link active" href="index.jsp">Kezdőlap</a>
                                        </li>
                                        <li class="nav-item ">
                                            <a class="nav-link" href="about.jsp">Rólunk</a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" href="product.jsp">Termékek</a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" href="contact.jsp">Kapcsolat</a>
                                        </li>
                                        <li class="felhasznalo">
                                            <!--<a class="nav-link" href="login.jsp">Bejelentkezés</a>-->
                                            <% UserDataService uService = new UserDataService();
                                                session = request.getSession();
                                                String uID = request.getRemoteUser();
                                                User user = uService.findUser(uID);
                                                session.setAttribute("user", user);
                                                out.println(user.getName());
                                            %>
                                        </li>
                                       <!-- <li class="nav-item">                                            
                                            <a class="nav-link" href="basket.html"><i class="fa fa-cart-arrow-down"></i></a>
                                        </li>-->
                                        <!--<li class="nav-item d_none">
                                            <a class="nav-link" href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
                                        </li>-->
                                        <li>
                                            <form class="logout" action = 'logout.html'>
                                                <input class="btn" type='submit' value='Kijelentkezés'>
                                            </form>
                                        </li>

                                    </ul>
                                </div>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
        </header>
        <!-- end header inner -->
        <!-- end header -->
        <!-- banner -->
        <section class="banner_main">
            <div id="banner1" class="carousel slide" data-ride="carousel">
                <ol class="carousel-indicators">
                    <li data-target="#banner1" data-slide-to="0" class="active"></li>
                    <li data-target="#banner1" data-slide-to="1"></li>
                    <li data-target="#banner1" data-slide-to="2"></li>
                    <li data-target="#banner1" data-slide-to="3"></li>
                    <li data-target="#banner1" data-slide-to="4"></li>
                </ol>
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <div class="container">
                            <div class="carousel-caption">
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="text-bg">
                                            <span></span>
                                            <h1>AquariumStore</h1>
                                            <p>Gyere ússz velünk!</p>
                                            <a href="product.jsp">Vásárolj most! </a><a href="contact.jsp">Kapcsolat: aquariumstore@netbeans.com </a>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="text_img">
                                            <figure><img src="images/fishinaquarium.png" alt="#"/></figure>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="carousel-item">
                        <div class="container">
                            <div class="carousel-caption">
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="text-bg">
                                            <span>Nálunk talál haleledelt!</span>
                                            <h1>Haltáp</h1>
                                            <p>Nagy választék és kiváló minőség, megfizethető áron</p>
                                            <a href="product.jsp">Vásárolj most! </a><a href="contact.jsp">Kapcsolat: aquariumstore@netbeans.com </a>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="text_img">
                                            <figure><img src="images/food(1).png" alt="#"/></figure>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <div class="container">
                            <div class="carousel-caption">
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="text-bg">
                                            <span>Bárminemű felszerelést</span>
                                            <h1>Akváriumok és tartozékok</h1>
                                            <p>Akvárium szettek is kínálunk ,de külön-külön is beszerezhetőek nálunk akváriumok, aljzatok, takarító felszerelések, illetve minden más, ami egy akváriumhoz, illetve fenntartásához szükséges</p>
                                            <a href="product.jsp">Vásárolj most! </a><a href="contact.jsp">Kapcsolat: aquariumstore@netbeans.com </a>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="text_img">
                                            <figure><img src="images/Aquarium (1).png" alt="#"/></figure>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <div class="container">
                            <div class="carousel-caption">
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="text-bg">
                                            <span> És apróságokat is</span>
                                            <h1>Kiegészítők</h1>
                                            <p>Akváriumba való díszektől kezdve egészen a háttérposzterekig, mindent megtalál nálunk.</p>
                                            <a href="product.jsp">Vásárolj most! </a><a href="contact.jsp">Kapcsolat: aquariumstore@netbeans.com </a>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="text_img">
                                            <figure><img src="images/kieg.png" alt="#"/></figure>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <div class="container">
                            <div class="carousel-caption">
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="text-bg">
                                            <span>Ússz velük</span>
                                            <h1>Élőlények</h1>
                                            <p>Halak, teknősök, növények és minden más előlény (kizárólag személyes átvétellel)</p>
                                            <a href="product.jsp">Vásárolj most! </a><a href="contact.jsp">Kapcsolat: aquariumstore@netbeans.com </a>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="text_img">
                                            <figure><img src="images/fishes.png" alt="#"/></figure>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>



            </div>
            <a class="carousel-control-prev" href="#banner1" role="button" data-slide="prev">
                <i class="fa fa-chevron-left" aria-hidden="true"></i>
            </a>
            <a class="carousel-control-next" href="#banner1" role="button" data-slide="next">
                <i class="fa fa-chevron-right" aria-hidden="true"></i>
            </a>
        </div>
    </section>
    <!-- end banner -->
    <!-- three_box -->
    <div class="three_box">
        <div class="container">
            <div class="row">
                <div class="col-md-4">
                    <div class="box_text">
                        <i><img src="images/f93b0eb81efd2e2d34b922f01827ea94.jpg" height="300px" width="300px" alt="#"/></i>
                        <h3>Élőlények</h3>
                        <p>Számos faj közül választhatsz nálunk! Nem csak halakat, hanem rákokat, növényeket és teknősöket is találsz az oldalon! </p>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="box_text">
                        <i><img src="images/output-onlinegiftools.gif" height="233px" width="233px" alt="#"/></i>
                        <h3>Tápok</h3>
                        <p>Igyekszünk, hogy minél többféle eledelt forgalmazzunk, problémás diéta hozzávalókat is találsz! Egyedi tápokat is össze tudunk állítani!</p>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="box_text">
                        <i><img src="images/tumblr_n5f3tvrsy01rmt86ao1_250.gif" height="225px" width="225px" alt="#"/></i>
                        <h3>Felszerelések</h3>
                        <p>Bátran nézz szét  felszereléseink között, minden akváriumhoz szükséges eszköz helyet kapott kínálatunkban! </p>
                    </div>
                </div>
            </div>
        </div>
        <br>
        <br>
        <br>
    </div>
    <div class="laptop">
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <div class="titlepage">
                        <p>Magyarország legnagyobb vízi webshopja</p>
                        <h2>Megfizethető árakkal</h2>
                        <a class="read_more" href="product.jsp">Vásárolj most!</a>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="laptop_box">
                        <figure><img src="images/warehouse.jpg" alt="#"/></figure>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- end laptop  section -->
<!-- customer -->
<div class="customer">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="titlepage">
                    <h2>Vásárlói értékelések</h2>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <div id="myCarousel" class="carousel slide customer_Carousel " data-ride="carousel">
                    <ol class="carousel-indicators">
                        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                        <li data-target="#myCarousel" data-slide-to="1"></li>
                        <li data-target="#myCarousel" data-slide-to="2"></li>
                    </ol>
                    <div class="carousel-inner">
                        <div class="carousel-item active">
                            <div class="container">
                                <div class="carousel-caption ">
                                    <div class="row">
                                        <div class="col-md-9 offset-md-3">
                                            <div class="test_box">
                                                <i><img src="images/cos.png" alt="#"/></i>
                                                <h4>Anonymus</h4>
                                                <p>Rövid szállítási idő, hibátlan termékek</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="carousel-item">
                            <div class="container">
                                <div class="carousel-caption">
                                    <div class="row">
                                        <div class="col-md-9 offset-md-3">
                                            <div class="test_box">
                                                <i><img src="images/cos.png" alt="#"/></i>
                                                <h4>Nagy Izabella</h4>
                                                <p>Tökéletes minőség, rendkívüli segítőkész ügyfélszolgálati munkatársak</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="carousel-item">
                            <div class="container">
                                <div class="carousel-caption">
                                    <div class="row">
                                        <div class="col-md-9 offset-md-3">
                                            <div class="test_box">
                                                <i><img src="images/cos.png" alt="#"/></i>
                                                <h4>Kovács Zénó</h4>
                                                <p>Minden sértetlenül érkezett, legközelebb is innen fogok rendelni</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <a class="carousel-control-prev" href="#myCarousel" role="button" data-slide="prev">
                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                        <span class="sr-only">Előző</span>
                    </a>
                    <a class="carousel-control-next" href="#myCarousel" role="button" data-slide="next">
                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                        <span class="sr-only">Következő</span>
                    </a>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- end customer -->
<!--  footer -->
<footer>
    <div class="footer">
        <div class="container">
            <div class="row">
                <div class="col-xl-3 col-lg-3 col-md-6 col-sm-6">
                    <img class="logo1" src="images/logo1.png" alt="#"/>
                </div>
                <div>
                    <ul class="about_us">
                        <h3>Rólunk</h3>
                        <li>Elhivatottan végezzük munkánkat, <br>hogy a legjobb minőséget nyújtsuk <br> rövid idő alatt.</li>
                    </ul>
                </div>
                <div>
                    <ul class="conta">
                        <h3>Lépj kapcsolatba velünk!</h3>
                        <li>Bármilyen kérdésed van<br>mi szívesen segítünk!</li>
                    </ul>
                </div>
                </footer>
                <!-- end footer -->
                <!-- Javascript files-->
                <script src="js/jquery.min.js"></script>
                <script src="js/popper.min.js"></script>
                <script src="js/bootstrap.bundle.min.js"></script>
                <script src="js/jquery-3.0.0.min.js"></script>
                <!-- sidebar -->
                <script src="js/jquery.mCustomScrollbar.concat.min.js"></script>
                <script src="js/custom.js"></script>
                </body>
                </html>


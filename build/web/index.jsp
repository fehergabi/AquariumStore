

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
                                            <a class="nav-link active" href="index.jsp">Kezd??lap</a>
                                        </li>
                                        <li class="nav-item ">
                                            <a class="nav-link" href="about.jsp">R??lunk</a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" href="product.jsp">Term??kek</a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" href="contact.jsp">Kapcsolat</a>
                                        </li>
                                        <li class="felhasznalo">
                                            <!--<a class="nav-link" href="login.jsp">Bejelentkez??s</a>-->
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
                                                <input class="btn" type='submit' value='Kijelentkez??s'>
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
                                            <p>Gyere ??ssz vel??nk!</p>
                                            <a href="product.jsp">V??s??rolj most! </a><a href="contact.jsp">Kapcsolat: aquariumstore@netbeans.com </a>
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
                                            <span>N??lunk tal??l haleledelt!</span>
                                            <h1>Halt??p</h1>
                                            <p>Nagy v??laszt??k ??s kiv??l?? min??s??g, megfizethet?? ??ron</p>
                                            <a href="product.jsp">V??s??rolj most! </a><a href="contact.jsp">Kapcsolat: aquariumstore@netbeans.com </a>
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
                                            <span>B??rminem?? felszerel??st</span>
                                            <h1>Akv??riumok ??s tartoz??kok</h1>
                                            <p>Akv??rium szettek is k??n??lunk ,de k??l??n-k??l??n is beszerezhet??ek n??lunk akv??riumok, aljzatok, takar??t?? felszerel??sek, illetve minden m??s, ami egy akv??riumhoz, illetve fenntart??s??hoz sz??ks??ges</p>
                                            <a href="product.jsp">V??s??rolj most! </a><a href="contact.jsp">Kapcsolat: aquariumstore@netbeans.com </a>
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
                                            <span> ??s apr??s??gokat is</span>
                                            <h1>Kieg??sz??t??k</h1>
                                            <p>Akv??riumba val?? d??szekt??l kezdve eg??szen a h??tt??rposzterekig, mindent megtal??l n??lunk.</p>
                                            <a href="product.jsp">V??s??rolj most! </a><a href="contact.jsp">Kapcsolat: aquariumstore@netbeans.com </a>
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
                                            <span>??ssz vel??k</span>
                                            <h1>??l??l??nyek</h1>
                                            <p>Halak, tekn??s??k, n??v??nyek ??s minden m??s el??l??ny (kiz??r??lag szem??lyes ??tv??tellel)</p>
                                            <a href="product.jsp">V??s??rolj most! </a><a href="contact.jsp">Kapcsolat: aquariumstore@netbeans.com </a>
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
                        <h3>??l??l??nyek</h3>
                        <p>Sz??mos faj k??z??l v??laszthatsz n??lunk! Nem csak halakat, hanem r??kokat, n??v??nyeket ??s tekn??s??ket is tal??lsz az oldalon! </p>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="box_text">
                        <i><img src="images/output-onlinegiftools.gif" height="233px" width="233px" alt="#"/></i>
                        <h3>T??pok</h3>
                        <p>Igyeksz??nk, hogy min??l t??bbf??le eledelt forgalmazzunk, probl??m??s di??ta hozz??val??kat is tal??lsz! Egyedi t??pokat is ??ssze tudunk ??ll??tani!</p>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="box_text">
                        <i><img src="images/tumblr_n5f3tvrsy01rmt86ao1_250.gif" height="225px" width="225px" alt="#"/></i>
                        <h3>Felszerel??sek</h3>
                        <p>B??tran n??zz sz??t  felszerel??seink k??z??tt, minden akv??riumhoz sz??ks??ges eszk??z helyet kapott k??n??latunkban! </p>
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
                        <p>Magyarorsz??g legnagyobb v??zi webshopja</p>
                        <h2>Megfizethet?? ??rakkal</h2>
                        <a class="read_more" href="product.jsp">V??s??rolj most!</a>
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
                    <h2>V??s??rl??i ??rt??kel??sek</h2>
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
                                                <p>R??vid sz??ll??t??si id??, hib??tlan term??kek</p>
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
                                                <p>T??k??letes min??s??g, rendk??v??li seg??t??k??sz ??gyf??lszolg??lati munkat??rsak</p>
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
                                                <h4>Kov??cs Z??n??</h4>
                                                <p>Minden s??rtetlen??l ??rkezett, legk??zelebb is innen fogok rendelni</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <a class="carousel-control-prev" href="#myCarousel" role="button" data-slide="prev">
                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                        <span class="sr-only">El??z??</span>
                    </a>
                    <a class="carousel-control-next" href="#myCarousel" role="button" data-slide="next">
                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                        <span class="sr-only">K??vetkez??</span>
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
                        <h3>R??lunk</h3>
                        <li>Elhivatottan v??gezz??k munk??nkat, <br>hogy a legjobb min??s??get ny??jtsuk <br> r??vid id?? alatt.</li>
                    </ul>
                </div>
                <div>
                    <ul class="conta">
                        <h3>L??pj kapcsolatba vel??nk!</h3>
                        <li>B??rmilyen k??rd??sed van<br>mi sz??vesen seg??t??nk!</li>
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




<!DOCTYPE html>
<html lang="en">
    <head>
        <!-- basic -->
        <%@page contentType="text/html" pageEncoding="UTF-8"%>
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
    <body class="main-layout inner_posituong computer_page">
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
                            <!--<nav class="navigation navbar navbar-expand-md navbar-dark ">
                                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExample04" aria-controls="navbarsExample04" aria-expanded="false" aria-label="Toggle navigation">
                                    <span class="navbar-toggler-icon"></span>
                                </button>
                                <div class="collapse navbar-collapse" id="navbarsExample04">
                                    <ul class="navbar-nav mr-auto">
                                        <li class="nav-item">
                                            <a class="nav-link" href="index.jsp">Kezdőlap</a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" href="about.jsp">Rólunk</a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" href="product.jsp">Termékek</a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" href="contact.jsp">Kapcsolat</a>
                                        </li>
                                        <li class="nav-item d_none">
                                            <a class="nav-link" href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
                                        </li>
                                        <li class="nav-item active">
                                            <a class="nav-link" href="login.jsp">Bejelentkezés</a>
                                        </li>
                                    </ul>
                                </div>
                            </nav>-->
                        </div>
                    </div>
                </div>
            </div>
        </header>
        <!-- end header inner -->
        <!-- end header -->
        <!-- login section -->
        <div class="login">
            <div class="container">

                <div class="main">
                    <form  action="j_security_check"  method="POST" onsubmit="window.open('index.jsp')">
                        <span>
                            <i class="fa fa-user"></i>
                            <input type="text" placeholder="Felhasználónév" name="j_username"/>
                        </span><br>
                        <span>
                            <i class="fa fa-lock"></i>
                            <input type="text" placeholder="Jelszó" name="j_password"/>
                        </span><br>                                
                        <input class="btn" type="submit" value="Bejelentkezés"/>
                    </form>   
                    
                </div>
            </div>
            <!--<div class="col-md-7">
                <div class="about_img">
            <!--<figure><img src="images/bottlenose-dolphins-group-playing-underwater-14172766-removebg-preview.png"  alt="#"/></figure>
        </div>
    </div>-->
        </div>
        <!-- end about section -->
        <!--  footer -->
        <!--<footer>
            <div class="footer">
                <div class="container">
                    <div class="row">
                        <div class="col-xl-3 col-lg-3 col-md-6 col-sm-6">
                            <img class="logo1" src="images/logo1.png" alt="#"/>
        <!--<ul class="social_icon">
            <li><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
            <li><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
            <li><a href="#"><i class="fa fa-linkedin-square" aria-hidden="true"></i></a></li>
            <li><a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a></li>
        </ul>
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
        <!--<div class="col-xl-3 col-lg-3 col-md-6 col-sm-6">
            <form class="bottom_form">
                <h3>Newsletter</h3>
                <input class="enter" placeholder="Enter your email" type="text" name="Enter your email">
                <button class="sub_btn">subscribe</button>
            </form>
        </div>
    </div>
</div>
<div class="copyright">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <p>Â© 2019 All Rights Reserved. Design by<a href="https://html.design/"> Free Html Templates</a></p>
            </div>
        </div>
    </div>
</div>
</div>
        </footer>-->
        <!-- end footer -->
        <!-- Javascript files-->
        <script src="js/jquery.min.js"></script>
        <script src="js/popper.min.js"></script>
        <script src="js/bootstrap.bundle.min.js"></script>
        <script src="js/jquery-3.0.0.min.js"></script>
        <!-- sidebar -->
        <script src="js/jquery.mCustomScrollbar.concat.min.js"></script>
        <script src="js/custom.js"></script>
        <script 
    </body>
</html>



<!DOCTYPE html>
<html lang="en">
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<head>

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap"
          rel="stylesheet">

    <title>Fitners</title>

    <!-- Bootstrap core CSS -->
    <link href="/resources/main/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">


    <!-- Additional CSS Files -->
    <link rel="stylesheet" href="/resources/main/assets/css/fontawesome.css">
    <link rel="stylesheet" href="/resources/main/assets/css/templatemo-digimedia-v3.css">
    <link rel="stylesheet" href="/resources/main/assets/css/animated.css">
    <link rel="stylesheet" href="/resources/main/assets/css/owl.css">
    <!--

    TemplateMo 568 DigiMedia

    https://templatemo.com/tm-568-digimedia

    -->

    <style>
        .p {
            font-family: "Georgia";
        }
    </style>

</head>

<body>

<!-- ***** Preloader Start ***** -->
<div id="js-preloader" class="js-preloader">
    <div class="preloader-inner">
        <span class="dot"></span>
        <div class="dots">
            <span></span>
            <span></span>
            <span></span>
        </div>
    </div>
</div>
<!-- ***** Preloader End ***** -->

<!-- Pre-header Starts -->
<div class="pre-header">
    <div class="container">
        <div class="row">
            <div class="col-lg-8 col-sm-8 col-7">
                <ul class="info">
                    <li><a href="#"><i class="fa fa-envelope"></i>fitners@company.com</a></li>
                    <li><a href="#"><i class="fa fa-phone"></i>010-0000-0000</a></li>
                </ul>
            </div>
            <%--<div class="col-lg-4 col-sm-4 col-5">
                <ul class="social-media">
                    <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                    <li><a href="#"><i class="fa fa-behance"></i></a></li>
                    <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                    <li><a href="#"><i class="fa fa-dribbble"></i></a></li>
                </ul>
            </div>--%>
        </div>
    </div>
</div>
<!-- Pre-header End -->

<!-- ***** Header Area Start ***** -->
<header class="header-area header-sticky wow slideInDown" data-wow-duration="0.75s" data-wow-delay="0s">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <nav class="main-nav">
                    <!-- ***** Logo Start ***** -->
                    <a href="/main" class="logo">
                        <img src="/resources/images/fitnerslogo.png" alt="" style="max-width: 60%; height: auto;">
                    </a>
                    <!-- ***** Logo End ***** -->
                    <!-- ***** Menu Start ***** -->
                    <ul class="nav">
                        <li class="scroll-to-section"><a href="/main" class="active">Home</a></li>
                        <li class="scroll-to-section"><a href="/main">About</a></li>
                        <li class="scroll-to-section"><a href="/auction/list">matching</a></li>
                        <li class="scroll-to-section"><a href="/fboard/list">Review</a></li>
                        <li class="scroll-to-section"><a href="/auction/register">Join PT</a></li>
                        <li class="scroll-to-section"><a href="#contact">Q&A</a></li>
                        <li class="scroll-to-section">
                            <sec:authorize access="isAnonymous()">
                            <div class="border-first-button"><a href="/customLogin">Login</a></div>
                            </sec:authorize>
                            <sec:authorize access="isAuthenticated()">
                                <div class="border-first-button"><a href="/logout">Logout</a></div>
                            </sec:authorize>
                        </li>
                    </ul>
                    <a class='menu-trigger'>
                        <span>Menu</span>
                    </a>
                    <!-- ***** Menu End ***** -->
                </nav>
            </div>
        </div>
    </div>
</header>
<!-- ***** Header Area End ***** -->

<div class="main-banner wow fadeIn" id="top" data-wow-duration="1s" data-wow-delay="0.5s">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="row">
                    <div class="col-lg-6 align-self-center">
                        <div class="left-content show-up header-text wow fadeInLeft" data-wow-duration="1s"
                             data-wow-delay="1s">
                            <div class="row">
                                <div class="col-lg-12">
                                    <h5><em>Personal Training Matching Serivce</em></h5>
                                    <h2>We are Fitners</h2>
                                    <p>??? ?????? ????????? ???????????? ??????????????? ?????????????????????<br>
                                        ?????? ?????? ??? ????????? ?????? ???????????????</p>
                                </div>
                                <div class="col-lg-12">
                                    <div class="border-first-button scroll-to-section">
                                        <a href="#contact">Start</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="right-image wow fadeInRight" data-wow-duration="1s" data-wow-delay="0.5s">
                            <img src="/resources/main/assets/images/running.png" alt="">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>


<%@page contentType="text/html"  pageEncoding="UTF-8" autoFlush="true"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<html lang="en">

    <head>

        <title>Medendx - Login</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="description" content="Billing Automation with latest innovations in technology and building" />
        <meta name="keywords" content="Medendx,Medical,Billing,automation solutions, Eligibility verification, ebill,Revenue Management,Denial Management,e-Consent Forms,Prior Auth Management,Claim Tracker">
        <meta name="author" content="Medendx" />


        <script src="assets/js/vendor-all.min.js"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.10.3/jquery-ui.min.js"></script>
        <script src="assets/plugins/bootstrap/js/bootstrap.min.js"></script>
        <script src="assets/js/plugins/jquery.bootstrap.wizard.min.js"></script>
        <script src="assets/js/plugins/bootstrap-select.min.js"></script>

        <!-- Favicon icon -->
        <link rel="icon" href="assets/images/AD-AmeriDenti Int Quare No BG (Small).png" type="image/x-icon">
        <!-- fontawesome icon -->
        <link rel="stylesheet" href="assets/fonts/fontawesome/css/fontawesome-all.min.css">
        <!-- animation css -->
        <link rel="stylesheet" href="assets/plugins/animation/css/animate.min.css">

        <!-- vendor css -->
        <link rel="stylesheet" href="assets/css/style.css">
        <link rel="stylesheet" href="assets/css/evd_landing_style.css">
        <link rel="stylesheet" href="assets/css/plugins/bootstrap-select.min.css">
        <script src='https://cdnjs.cloudflare.com/ajax/libs/gsap/1.20.2/TweenMax.min.js'></script>
        <style>
            .container {
                width: 100%;
                /*height: 480px;*/
            }

            #learn-more {
                fill-opacity: 0;
                fill: #fff;
                stroke: #fff;
                stroke-width: 2;
                border-radius: 5px;
                stroke-linejoin: round;
                -webkit-transition: all 250ms ease-in;
                transition: all 250ms ease-in;
                cursor: pointer;
            }
            #learn-more:hover {
                fill-opacity: 1;
            }
            #learn-more:hover ~ .learn-more-text {
                fill: #ea3636;
            }

            .learn-more-text {
                font-family: 'Roboto';
                fill: #fff;
                pointer-events: none;
                font-size: 14px;
                -webkit-transition: all 250ms ease-in;
                transition: all 250ms ease-in;
            }
            .auth-prod-slider
            {
                background: #fefefe !important;
            }
            .center {
                fill: #a4a0a0;
                /*fill: #9ab7f5;*/
            }

            .card {
                border-radius: 2px;
                box-shadow: 0 0 0 0px #e2e5e8;
                border: none;
                margin-bottom: 30px;
                transition: all 0.5s ease-in-out;
            }

            .pointer {
                /*                fill: #eff0f2;
                                stroke: #17977e;
                                stroke-width: 2px;*/
                display:none;
            }

            .nav-copy {
                font-family: 'Roboto';
                fill: #fff;
                fill-opacity: 1;
                -webkit-transition: all 250ms ease-in;
                transition: all 250ms ease-in;
            }
            .nav-copy.changing {
                fill-opacity: 0;
            }

            /*            .service {
                            cursor: pointer;
                        }*/
            .service text {
                font-size: 14px;
                font-family: 'Roboto';
                text-anchor: middle;
            }
            .service .icon-wrapper {
                -webkit-transform-origin: 50% 50%;
                transform-origin: 50% 50%;
            }
            .service .icon-wrapper, .service .icon-wrapper > * {
                -webkit-transition: all 250ms ease-in;
                transition: all 250ms ease-in;
            }
            .service circle {
                /*                fill: #17977e;*/
                /*fill: #97176d;*/
                fill:#E5E5E5;
            }
            /*            .service circle.shadow {
                            fill-opacity: 0;
                            -webkit-filter: url(#service-shadow);
                            filter: url(#service-shadow);
                        }*/
            .service use {
                fill: #fff;
            }
            .service text {
                fill: #E5E5E5;
                /*                fill: #215327;
                                fill: #4d4d4d;*/
            }
            /*            .service.active .icon-wrapper, .service:hover .icon-wrapper {
                            -webkit-transform: scale(1.15) translateY(-5px);
                            transform: scale(1.15) translateY(-5px);
                        }
                        .service.active .icon-wrapper, .service.active .icon-wrapper > *, .service:hover .icon-wrapper, .service:hover .icon-wrapper > * {
                            -webkit-transition: all 250ms ease-out;
                            transition: all 250ms ease-out;
                        }
                        .service.active .icon-wrapper circle.shadow, .service:hover .icon-wrapper circle.shadow {
                            fill-opacity: 0.4;
                        }
                        .service.active text, .service:hover text {
                            fill: #215327;
                            font-weight: bold;
                        }*/



            .cls-1 {
                font-size: 28px;
                font-family: Roboto-Bold, Roboto;
                font-weight: 700;
            }

            .cls-2 {
                letter-spacing: -0.02em;
            }

            .cls-3 {
                letter-spacing: -0.01em;
            }

            .cls-4 {
                letter-spacing: -0.01em;
            }

            .cls-5 {
                font-size: 16px;
                font-family: Roboto-Regular, Roboto;
            }

            .cls-6 {
                letter-spacing: -0.01em;
            }

            .cls-7 {
                letter-spacing: -0.01em;
            }

            .cls-8 {
                letter-spacing: -0.02em;
            }

            .cls-9 {
                letter-spacing: -0.01em;
            }

            .cls-10 {
                letter-spacing: 0.01em;
            }

            .cls-11 {
                letter-spacing: -0.01em;
            }

            .cls-12 {
                letter-spacing: -0.04em;
            }

            .cls-13 {
                letter-spacing: -0.02em;
            }

            .cls-14 {
                letter-spacing: 0.01em;
            }

            .cls-15 {
                letter-spacing: -0.01em;
            }

            .cls-16 {
                letter-spacing: -0.06em;
            }

            .cls-17 {
                letter-spacing: -0.02em;
            }

            .cls-18 {
                letter-spacing: 0.01em;
            }

            .cls-19 {
                letter-spacing: 0.02em;
            }

            .cls-20 {
                letter-spacing: -0.01em;
            }

            .cls-21 {
                letter-spacing: -0.03em;
            }
            .logoheight{
                height:100px;
            }
            @media (min-width:250px) and (max-width:820px){
                .circletop{
                    margin-top:-200px;
                    position: fixed;
                }
                .card{
                    min-height:800px;
                }
                svg{
                    display:none;
                }
                .logowidth{
                    width:35%;
                    margin-top:0;
                    position:fixed;
                }
                .login-form{
                    margin-top:100px;
                    position:fixed;
                }
                .login-btn{
                    display:block!important;
                }
                #loginForm{
                    display:none;
                }
                .logoheight{
                    height:50px;
                }
            }
            @media (min-width:821px){
                #loginForm{
                    display: block!important;
                }
            }
            @media (min-width:1180px){
                .logowidth{
                    width:100%;
                }
                 .logoheight{
                    height:80px;
                }
            }
            @media (min-width:821px) and (max-width:991px){
                .logowidth{
                    width:50%;
                }
                #loginForm{
                    margin-left:31%;
                }
                .login-form{
                    width:43%;
                }
            }
        </style>

    </head>


    <!-- [ signin-img-slider2 ] start -->

    <body class="auth-prod-slider" style="background: #39465C!important;">
        <div class="blur-bg-images"></div>

        <div class="auth-wrapper circletop">
            <div class="auth-content container">
                <div class="card" style="background: #ffffff !important;">
                    <div class="row align-items-center">
                        <div class="col-xl-12">
                            <div class="card-body">

                                <form id="loginForm" action="login" autocomplete="off" modelAttribute="login" method="post" class="d-sm-none d-md-none d-lg-block d-xl-none login formtop offset-lg-4 offset-sm-0 col-lg-5 offset-md-0 col-sm-10 col-md-10" style="top:190px;">
                                    <div class="logoheight col-sm-10 col-md-10">
                                        <img src="assets/images/MedenDx_green-slogan.png" class="logowidth">
                                    </div>
                                    <div class="col-lg-10 col-sm-10 col-md-8 login-form">
                                        <div class="form-group mb-6">

                                            <div class="input-group">
                                                <div class="input-group-prepend" style="background: #edf1f4">
                                                    <span class="input-group-text">
                                                        <i class="fas fa-user"></i>
                                                    </span>
                                                </div>
                                                <input type="email"  name="username" id="username" autocomplete="off" class="form-control" required="true" placeholder="name@sitename.com" />
                                            </div>


                                        </div>
                                        <div class="form-group mb-6">

                                            <div class="input-group">
                                                <div class="input-group-prepend" style="background: #edf1f4">
                                                    <span class="input-group-text">
                                                        <i class="fas fa-unlock"></i>
                                                    </span>
                                                </div>
                                                <input type="password"  name="password" id="password"  class="form-control" required = "true" placeholder="*********" />
                                            </div>
                                            <input id="redirectid" type="hidden" name="targetUrl"/>

                                        </div>  
                                        <div class="col-12 offset-1">
                                            <button class="btn btn-gradient-success d-sm-block  login-btn col-sm-12 col-md-8" id="login" name="login" >Login</button>
                                        </div>
                                        <c:set var="errorKey" value="sessionDuplicateLogin"/>
                                        <c:set var="errorLoginFailed" value="true"/>
                                        <c:set var="errorSessionExpired" value="sessionexpired"/>
                                        <p class="text-center para_pad" style=""><a href="forgetPassword" class="f-w-400">Forgot password?</a></p> <br> 

                                        <c:choose>
                                            <c:when  test="${not empty SPRING_SECURITY_LAST_EXCEPTION}">
                                                <div  class="alert alert-danger" >
                                                    <c:out value="${SPRING_SECURITY_LAST_EXCEPTION}" />
                                                </div>
                                            </c:when >
                                            <c:when  test="${errorLoginFailed eq param.error}">
                                                <div class="alert alert-danger" role="alert" >
                                                    <a href="#!" class="alert-link">The username or password you entered was incorrect. Please try again.</a>
                                                </div>
                                            </c:when >
                                            <c:when  test="${errorKey  eq  param.error}">
                                                <div class="card-body" style="background-color: #f07502;color: #FFFFFF;margin:0 0 10px 0;">
                                                    This session has expired (possibly due to multiple concurrent logins being attempted as the same user).
                                                </div>
                                            </c:when >
                                            <c:when  test="${errorSessionExpired  eq  param.error}">
                                                <div class="card-body" style="background-color: #f07502;color: #FFFFFF;margin:0 0 10px 0;">
                                                    This session has expired.
                                                </div>
                                            </c:when >
                                        </c:choose>
                                        <%--c:if test="${errorSessionExpired==param.error}">
                                           <div class="card-body" style="background-color: #fbeed5;margin:0 0 10px 0;">
                                               Due to inactivity, your session has timed out. Please sign in again.
                                           </div>
                                       </c:if--%>
                                        <button class="btn btn-gradient-success mb-4 d-md-none d-sm-block d-lg-none login-btn col-sm-12 col-md-12" id="login" name="login" >Login</button>

                                        <a href="#!" class="alert-link alert-danger">${message}</a>
                                    </div>
                                </form>


                                <!--========================================================================-->
                                <div class="container12 d-sm-none d-md-block ">
                                    <svg id="circle-nav-services" width="100%" height="100%" viewBox="0 0 650 550">
                                    <defs>
                                    <filter id="service-shadow" height="2" width="2" y="-.5" x="-.5">
                                        <feOffset result="offOut" in="SourceGraphic" dx="0" dy="5" />
                                        <feGaussianBlur result="blurOut" in="offOut" stdDeviation="12" />
                                        <feBlend in="SourceGraphic" in2="blurOut" mode="normal" />
                                    </filter>
                                    </defs>

                                    <symbol id="circle-nav-copy" viewBox="0 0 300 300">
                                        <defs>

                                        </defs>

                                    </symbol>
                                    <symbol id="industries" viewBox="0 0 512 512" width="0.5in" height="0.5in">
                                        <path id="Layer" fill-rule="evenodd" class="s0" d="m249.5 105.1c192.4-0.1 186.5-0.2 195.5 4.4 11.4 5.7 20.3 16.2 24 28.2 1.9 6.2 2 9.3 2 59.7v53.3l3.8 1.1c8.4 2.6 15.2 11.6 15.2 20.3 0 2.5-2.4 28.4-5.4 57.6-5.9 57.1-6 57.5-12.3 63.5-5.9 5.6-58 45.1-61.8 46.9-4.8 2.2-12.3 2.4-17.1 0.4-2-0.8-13-8.7-24.4-17.5l-20.9-16h-140c-134.5 0-140.2-0.1-146-1.9-15.5-4.8-27.4-17.5-31.6-33.8-2.2-8.6-2.2-222 0-230.6 4.2-16.1 16-28.9 31.3-33.8 5.4-1.7 14-1.8 187.7-1.8zm182.2 23.4l-180.1-0.2c-151.4-0.2-180.7 0-184 1.2-4.7 1.6-10 6.6-12.9 12l-2.2 4v110.5c0 105.9 0.1 110.6 1.9 114 2.6 4.9 6.4 8.8 11.1 11.3l4 2.2 127.3 0.3 127.3 0.2-0.6-4.2c-1.5-10.9-10.5-102.9-10.5-107.4 0-6.2 3.1-12.5 8.2-16.7 5.2-4.2 76.4-26.1 82.3-25.3 2.2 0.3 12.8 3.3 23.5 6.6 10.7 3.3 19.9 6 20.3 6 0.4 0 0.6-22.2 0.5-49.3l-0.3-49.4-3-4.9c-1.9-3-4.9-6-7.9-7.9zm-30.7 125.6c-1.1 0-53.5 16-63.8 19.5-1 0.3-1.2 1.5-0.8 4.2 0.3 2 2.7 24.8 5.2 50.7 4.3 43 4.8 47.2 6.8 49.2 1.1 1.2 13.6 10.9 27.6 21.6 21.3 16.4 25.7 19.3 27 18.4 0.9-0.7 13.4-10.4 27.8-21.6 19.4-15 26.2-20.9 26.2-22.5 0.1-1.1 2.2-23.9 4.9-50.6 2.6-26.7 4.7-48.7 4.5-48.9-0.2-0.2-14.6-4.8-32.1-10.2-17.5-5.4-32.5-9.9-33.3-9.8z"/>
                                        <path id="Layer" fill-rule="evenodd" class="s0" d="m209.8 163.4c31.3 21.3 36.4 66.2 10.6 93.6l-6.2 6.5 6.7 3.7c26.1 14.4 45.3 45.5 46.3 75.4 0.2 5.6-0.1 8.9-1.2 10.8-3.7 7-15.2 7.5-19.6 0.9-0.9-1.5-1.9-6.3-2.5-11.9-1.7-18-8.2-31.9-20.9-44.5-22.1-22-56.6-26.1-84-10.2-9.8 5.7-20.7 17.1-25.8 27-4.9 9.4-8.2 21.2-8.2 29.1 0 9.7-4.5 15.2-12.4 15.2-4.3 0-9.2-3.9-10.4-8.3-1.3-4.9 0.5-20.6 3.4-29.9 4.9-15.5 12.5-28.1 23.6-39.1 6.5-6.4 19.6-15.9 23.9-17.2 1.8-0.6 1.3-1.4-3.9-7-7-7.4-11.2-14.4-14.4-24-3.2-9.8-3.3-26.9-0.1-37 7.1-22.5 26.3-39.2 50.1-43.5 13.8-2.5 32.3 1.7 45 10.4zm-33.8 12.9c-25.5-1.3-45.8 23.2-39.6 47.8 4.2 16.2 16.1 27.3 32.4 29.8 31.3 4.9 55-28.1 40.5-56.7-3.6-7.2-12.6-15.4-20-18.2-3.4-1.4-8.9-2.4-13.3-2.7z"/>
                                        <path id="Layer" class="s0" d="m372.3 163.1c27.6-0.1 29.7 0.2 33.1 5.1 2.7 3.8 2.1 10.3-1.3 14l-2.9 3.3-28 0.3-27.9 0.3-3.2-2.6c-6.6-5.6-5.3-16.4 2.4-19.6 1.1-0.4 13.6-0.8 27.8-0.8z"/>
                                        <path id="Layer" class="s0" d="m448.3 313.5c-0.4 2.2-5.9 8.4-20.2 22.8-10.8 10.9-20.8 20.5-22.3 21.3-1.5 0.8-4.6 1.4-6.9 1.4-3.9 0-4.7-0.6-14.1-9.8-5.5-5.3-10.6-10.9-11.4-12.4-4.1-7.9 1.2-16.8 10.1-16.8 4.3 0 5.1 0.4 10.6 5.7l6 5.7 15.2-15.1c8.4-8.3 16.1-15.6 17.2-16.2 7.6-4.1 17.4 4.3 15.8 13.4z"/>
                                    </symbol>
                                    <symbol id="validation" viewBox="0 0 512 512">
                                        <path id="Layer" fill-rule="evenodd" class="s0" d="m251.1 47c173.6 0 196.1 0.1 198.2 1.1 5.1 2.3 4.8-5.8 4.8 117.3 0 124.2 0.4 115.2-5.2 117.3-4.2 1.5-391 1.5-395.2 0-5.6-2.1-5.2 6.9-5.2-117.3 0-122.7-0.3-114.9 4.6-117.3 2-0.9 26.4-1 198-1.1zm184.9 15.9l-184.4-0.1c-101.4-0.1-184.7 0-184.9 0.3-0.7 0.5-0.7 202.3-0.2 203.7 0.3 0.8 34.2 0.9 185 0.6l184.5-0.3z"/>
                                        <path id="Layer" class="s0" d="m210.7 83.6c1.1 0.4 1.3 8.3 1.3 81.8 0 73.3-0.2 81.3-1.3 81.7-0.6 0.2-1.9 0.1-2.8-0.2-1.5-0.8-1.5-2.5-1.5-81.5 0-76.2 0.1-80.8 1.4-81.5 1.7-0.9 1.4-0.8 2.9-0.3z"/>
                                        <path id="Layer" class="s0" d="m264.3 83.1c10.7 0 11.2 0.1 13 1.8 2 1.6 2 2.1 2 10.3v8.5h9.6c13.4 0 13.2-0.1 13.5 12 0.5 15.1 0.6 14.9-13.1 14.9h-10v8.5c0 7.4-0.1 8.5-1.7 10.2-1.6 1.9-1.6 1.9-13.5 1.9-15.7 0-15.1 0.4-15.4-11.4l-0.2-8.8-10.3-0.4c-9-0.3-10.4-0.5-11.5-1.7-0.8-1-1.1-3.9-1.1-11.7 0-5.6 0.3-10.7 0.7-11.1 1.3-1.8 4.5-2.4 13.3-2.4h9.3v-8.7c0-9 0.1-9.7 2.8-11 0.9-0.5 5.9-0.9 12.6-0.9z"/>
                                        <path id="Layer" class="s0" d="m141.1 84.6c1.7 0.4 3.4 0.6 3.7 0.7 1.5 0 7.4 5.5 8.4 7.6 2.5 5.1 0.7 12.6-3.9 16.2-3.7 3-7 4-12.3 3.7-3.8-0.2-5.7-0.7-8.1-2.2-11.7-7.2-8-23.3 5.8-25.9 1.7-0.3 4.6-0.4 6.4-0.1z"/>
                                        <path id="Layer" class="s0" d="m338.2 88.2c0.8 0.2 1.7 0.8 1.9 1.3 0.2 1.4-8.3 10.7-9.9 10.7-1.5 0-6.8-4.2-6.8-5.4 0-0.5 0.5-1.2 1.1-1.7 0.8-0.5 1.6-0.4 3.2 0.7 1.1 0.8 2.1 1.4 2.3 1.4 0.2 0 1.7-1.6 3.4-3.6 2.2-2.6 3.6-3.5 4.8-3.4z"/>
                                        <path id="Layer" class="s0" d="m382.5 90.2c26.9 0 30.3 0.2 31.7 1.2 1.7 1.5 1.8 3.6 0 5.4-1.2 1.2-3.2 1.2-31.1 1.2-26.1 0-30.1-0.1-31.1-1.1-1.5-1.3-1.6-3.3-0.5-5.3 0.8-1.3 2-1.4 31-1.4z"/>
                                        <path id="Layer" class="s0" d="m340.1 112.9c0.2 1.4-8.4 10.6-9.9 10.6-2.1 0-7.1-4.6-6.5-5.8 0.6-1.5 3.2-1.6 4.5-0.2 0.6 0.6 1.2 1.1 1.6 1.1 0.2 0 1.9-1.7 3.6-3.6 3.2-3.6 6.1-4.5 6.7-2.1z"/>
                                        <path id="Layer" class="s0" d="m382.9 113.6c26.6 0 29.9 0.2 31.3 1.2 1.7 1.4 1.8 3.6 0 5.3-1.2 1.2-3.2 1.3-30.8 1.3-18.9 0-30.2-0.3-31.2-0.7-1.8-0.9-2.1-4.4-0.2-5.9 1-1 4.9-1.2 30.9-1.2z"/>
                                        <path id="Layer" class="s0" d="m138.1 118.6c19.2 0 22.1 0.4 24.4 3.7 1.6 2 18.2 49.1 18.2 51.4 0 4-4.4 8-9 8-1.1 0-3.1-0.8-4.7-1.7-2.2-1.3-3.1-2.6-4.9-7.2l-2-5.7-0.1 36.7c-0.1 24.7-0.4 37.2-1 38.3-1.9 3.7-9.7 5.3-13.2 2.8-3.5-2.4-3.5-3.3-3.5-30 0-22.9-0.2-25.8-1.4-27-1.6-1.6-3.7-1.6-5.4-0.2-1.1 1-1.3 4.4-1.3 27.4v26.2l-2.7 2.4c-2.3 2.1-3.3 2.4-6.3 2.4-2.7 0-4.3-0.4-5.9-1.7l-2.3-1.7-0.4-37.8-0.4-37.8-1.4 4.3c-2.2 6.1-3.6 8.1-6.5 9.3-5.8 2.4-12.5-1.2-12.5-6.7 0-3.2 16.6-50.4 18.3-52.2 0.8-0.7 2.4-1.7 3.7-2.2 1.8-0.7 7.2-1 20.3-1z"/>
                                        <path id="Layer" class="s0" d="m338.2 134.9c1.3 0 2.3 2 1.5 3-1.8 2.7-8.7 9-9.9 9-1.9 0-6.7-4.6-6.1-5.9 0.6-1.5 2.8-1.4 4.7 0 1.4 1.2 1.7 1 5.1-2.4 2-2.1 4.1-3.7 4.7-3.7z"/>
                                        <path id="Layer" class="s0" d="m383 137c26.5 0 29.8 0.1 31.2 1.2 1.7 1.4 1.8 3.6 0 5.3-1.2 1.2-3.3 1.3-31.5 1.3-22.3 0-30.3-0.2-31.1-0.9-1.3-1.2-1.2-4.1 0.4-5.6 1.2-1.2 3.2-1.3 31-1.3z"/>
                                        <path id="Layer" fill-rule="evenodd" class="s0" d="m341 156.4c0.6 0.7 0.9 3.6 0.7 8.7l-0.2 7.7h-19.3l-0.2-8.1c-0.2-6 0.1-8.3 0.8-8.7 1.8-1 17.1-0.7 18.2 0.4zm-4 3.3h-11.3l0.3 4.7 0.2 4.9 5.5 0.2 5.3 0.2z"/>
                                        <path id="Layer" class="s0" d="m383.1 160.4c24.9 0 29.2 0.1 30.7 1.1 2 1.2 2.3 3.1 1 5.3-0.8 1.3-2 1.4-31.5 1.4-22.9 0-30.9-0.2-31.7-0.9-1.6-1.4-1.1-4.6 0.8-5.8 1.6-1 5.9-1.1 30.7-1.1z"/>
                                        <path id="Layer" class="s0" d="m339.9 182.7c0.6 1.3-8.1 11-9.7 11-1.7 0-6.8-4.3-6.8-5.7 0-1.7 2.9-1.9 4.9-0.3 1.4 1.1 1.6 1 3.7-1.1 1.2-1.3 2.7-3 3.3-3.7 1.3-1.5 4-1.7 4.6-0.2z"/>
                                        <path id="Layer" class="s0" d="m265.2 183.8c40.6 0 39.2-0.2 39.2 4 0 3.8 0.1 3.8-39.6 3.8-39.8 0-39.2 0-39.2-3.9 0-0.9 0.6-2.2 1.3-2.8 1.1-1 5.7-1.1 38.3-1.1z"/>
                                        <path id="Layer" class="s0" d="m382.8 183.8c26.5 0 30.5 0.1 31.5 1.1 1.7 1.4 1.6 3.8-0.1 5.4-1.2 1.2-3.2 1.3-31.1 1.3-26.1 0-30.1-0.2-31.1-1.2-1.6-1.2-1.7-4.6-0.4-5.8 0.8-0.6 8.8-0.8 31.2-0.8z"/>
                                        <path id="Layer" fill-rule="evenodd" class="s0" d="m340.5 202.4c1.2 0.8 1.4 1.9 1.2 8.7l-0.2 7.8h-19.3l-0.2-8.1c-0.2-6 0.1-8.3 0.8-8.7 1.7-1 16.2-0.7 17.7 0.3zm-3.5 3.3h-11.3l0.3 4.8 0.2 4.8 5.5 0.2 5.3 0.2z"/>
                                        <path id="Layer" class="s0" d="m265.1 206.5h36l1.9 1.7c1.1 0.9 2 2.1 2 2.5 0 0.4-0.9 1.6-2 2.5l-1.9 1.8h-35.6c-26.9 0-35.9-0.3-37.5-1-2.8-1.2-3.2-4.9-0.6-6.4 1.6-1 6.1-1.1 37.7-1.1z"/>
                                        <path id="Layer" class="s0" d="m383.8 206.6c28.2 0.2 29.6 0.3 30.7 1.6 1.4 1.7 1.4 3.3 0 5.1-1.1 1.2-2.5 1.3-30.3 1.5-32.2 0.2-33 0.1-33.4-3.9-0.1-1.6 0.3-2.5 1.6-3.3 1.6-1.1 5.2-1.1 31.4-1z"/>
                                        <path id="Layer" fill-rule="evenodd" class="s0" d="m332 225l9.5 0.2v17h-19.3l-0.2-7.7c-0.1-4.3 0-8.2 0.1-8.7 0.4-0.8 2.6-0.9 9.9-0.8zm5.1 4.1h-5.1c-2.8 0-5.4 0.2-5.6 0.5-0.8 0.7-0.7 7.9 0.1 8.3 0.3 0.2 2.7 0.4 5.3 0.5l4.8 0.2z"/>
                                        <path id="Layer" class="s0" d="m264.8 229.8c39.7 0 39.6 0 39.6 3.8 0 4.2 1.4 4-39.2 4-40.3 0-39.6 0.1-39.6-3.9 0-0.9 0.6-2.2 1.3-2.7 1.1-1 5.6-1.2 37.9-1.2z"/>
                                        <path id="Layer" class="s0" d="m382.9 229.8c26.6 0 29.9 0.2 31.3 1.2 1.7 1.5 1.8 4 0.1 5.5-1 1-5 1.1-31.6 1.1-29.2 0-30.4 0-31.2-1.3-1.1-2-1-4 0.5-5.3 1-1 4.9-1.2 30.9-1.2z"/>
                                        <path id="Layer" fill-rule="evenodd" class="s0" d="m100.2 302.8h87.4l13.6 5 13.5 5h76.3l15.5-5 15.5-5h83.7c91.9 0 87-0.2 89.7 4.3 1.6 2.8 1.6 20.5 0 26.9-4 14.6-16.9 26-33.4 29.4-4.5 1-29.6 1.1-210.7 1.1-227.4 0-210.1 0.4-221.3-4.7-7.6-3.3-15.4-10.3-19-16.8-3.9-7.1-5-12.2-5-23.7 0-11.1 0.7-13.5 4.6-15.3 1.9-0.9 13.8-1.1 89.6-1.2zm82.7 15.6h-79.3c-70.2 0-79.2 0.2-79.6 1.1-0.4 0.6-0.3 3.5 0 6.4 1.2 11.9 9.6 20.1 22.5 22.2 3.5 0.7 58.4 0.8 208 0.7l203.2-0.2 4.8-2c10.2-4.3 15.6-11.8 15.9-22l0.1-5.8-76.3-0.2-76.3-0.2-7.9 2.6c-4.3 1.4-11.2 3.6-15.3 4.9l-7.3 2.5h-84.8l-13.9-5z"/>
                                    </symbol>
                                    <symbol id="engineering" viewBox="0 0 512 512">
                                        <path id="Layer" class="s0" d="m396 60.9c11.5 10.9 15.1 17.5 15.1 26.7 0 9.3-4.4 16.8-17.1 29.3l-10.9 10.9-25.6-25.6-25.6-25.6 11.2-11.3c6.2-6.3 14.1-12.8 17.6-14.4 12.3-5.8 21.7-3.1 35.3 10z"/>
                                        <path id="Layer" class="s0" d="m170.8 63.8h104.3v16 16h-102.3c-99.5 0-102.4 0.2-104 3-1.1 2.1-1.6 51.7-1.6 149.6v146.3l3.5 2.4c3.2 2.3 14.4 2.6 90.2 2.6h86.5l3.1 6.6c1.6 3.6 5.6 10.5 8.9 15.3 3.4 4.8 6.1 9 6.1 9.4 0 0.5-45.1 0.5-100.3 0.4-99.6-0.5-100.4-0.5-107-4-8-4.4-15.5-12-19.3-19.5-2.7-5.5-2.9-14.9-2.9-160.9v-155.2l3.5-6.4c4.5-8.3 10.9-14.2 19.7-18.2 7-3.2 10.1-3.4 111.6-3.4z"/>
                                        <path id="Layer" class="s0" d="m324.7 84.6c0.5 0 12.3 11.5 26.4 25.6l25.6 25.6-71.7 71.6-71.5 71.5-25.9-26-26.1-25.9 71.2-71.2c39.2-39.2 71.5-71.2 72-71.2z"/>
                                        <path id="Layer" class="s0" d="m342.3 198l15.7 0.5 15.5 0.5 0.5 10c0.3 7.1-0.2 10.3-1.6 10.8-1.2 0.3-8.4 0.8-16.2 1.1l-13.9 0.5v-11.7z"/>
                                        <path id="Layer" fill-rule="evenodd" class="s0" d="m392.7 235.8c40 10.4 72.1 42 83.3 82.3 4 14.3 4 44.8 0 59.2-15 55.3-69.6 92.6-124.6 85.1-27.8-3.7-48.9-14.1-68.3-33.8-13.9-14.2-22.4-27.8-28.3-45.7-3.8-11.4-4.3-15.2-4.3-35.2 0-20 0.5-23.8 4.3-35.2 10.7-32.1 35.3-58.8 65.9-71.6 8.5-3.5 17.1-5.8 31.2-8.2 7.2-1.3 31 0.5 40.8 3.1zm-89.8 49.5c-22.3 22.1-31 52.8-23.8 83.8 3.7 15.4 11.2 28.4 24 41 27.4 27.2 66.2 33.7 100.6 16.8 19.5-9.8 35.7-27.8 44-49.6 3.4-9 4-13 4-29.6 0-16.6-0.6-20.6-4-29.6-11-28.9-35.8-50.7-64.9-56.8-29.6-6.2-57.8 2.3-79.9 24z"/>
                                        <path id="Layer" class="s0" d="m412.2 310.1c1.6 0 5.6 2.6 8.6 5.8l5.5 5.6-3.2 5.1c-1.8 2.9-15.6 17.1-30.6 31.8-22.1 21.8-28.1 26.9-31.8 26.9-3.4 0-7.7-3.2-18.6-13.8-16.9-16.6-22.8-24.7-21.4-29.2 1.3-4.5 13-14.6 16.6-14.6 2 0 7.4 4.7 13.3 11.2 7 7.9 11.2 11.2 13.9 11.2 2.7 0 9.6-5.6 24.2-20 11.8-11.7 21.6-20 23.5-20z"/>
                                        <path id="Layer" class="s0" d="m166.4 244.6c0.4 0 11.5 10.7 24.7 23.9 16.2 16.2 23.1 24.2 21.5 24.7-6.6 2.5-62.7 15.3-63.4 14.7-0.4-0.5 2.9-14.9 7.6-32.2 4.8-17.1 8.9-31.1 9.6-31.1z"/>
                                    </symbol>
                                    <symbol id="management" viewBox="0 0 512 512">
                                        <path id="Layer" fill-rule="evenodd" class="s0" d="m254.6 2c69.5 0 68.6-0.1 78 6.3 5.9 3.9 11.8 11.5 14.1 18.2 2.6 7.4 2.2 20.3-0.7 28-3.2 8.2-12.2 17.3-20.5 20.6l-6 2.4-57.8 0.3c-36 0.2-61.1-0.1-66.3-0.7-14.6-1.8-24.4-8.7-30.2-21.1-3.4-7.2-4.2-20.1-1.8-28.2 3-10.3 12.6-20.4 22.9-24 4.8-1.6 10.4-1.7 68.3-1.8zm0.7 28.1c-31.8 0-58.8 0.4-59.9 0.9-6.7 2.7-7.2 14-0.7 16.9 1.7 0.8 20.3 1.1 61.4 1.1h59l2.4-2.5c1.8-1.7 2.5-3.5 2.5-6.4 0-5.3-0.7-6.9-4.1-8.6-2.4-1.3-11.7-1.5-60.6-1.4z"/>
                                        <path id="Layer" class="s0" d="m107.9 28.1l27.3-0.1 3.9 3.9c3.5 3.5 3.9 4.4 3.9 9 0 4.4-0.5 5.6-3.4 8.9l-3.4 3.7-26.9 0.6c-30.2 0.6-32.9 1.1-40.6 7.9-5.1 4.5-10 13.3-11.6 20.8-1.5 7.4-1.6 365.3 0 373.7 2.2 11.7 9.3 21.5 19.2 26.1l5.2 2.4h82.3 82.2v13.5 13.5h-81.7c-90.1 0-88.2 0.1-101.2-6.3-9.5-4.6-21.5-16.8-26.3-26.7-7.3-15.2-6.8 0.4-6.8-208.6 0-207.9-0.4-194.6 6.6-209.2 7-14.7 23.3-28 38.7-31.8 3.5-0.8 14.2-1.3 32.6-1.3z"/>
                                        <path id="Layer" class="s0" d="m403 28c29.7 0 33.6 0.6 44.9 6.5 17.7 9.3 29.3 26.8 32.1 48.2 0.7 5 1 43.2 0.8 105.8l-0.3 98-13.2 0.3-13.3 0.3-0.2-103.3-0.3-103.3-2.7-5.7c-3.5-7.6-9.8-14.2-16.7-17.5l-5.6-2.8-27.1-0.5c-25.4-0.5-27.3-0.6-29.4-2.5-7.1-6.4-6.4-16.8 1.3-21.5 3-1.8 5.2-2 29.7-2z"/>
                                        <path id="Layer" class="s0" d="m256.6 211h116.1l3.4 2.3c6.9 4.6 8.5 13.1 3.7 19.2-4.5 5.7 1.1 5.5-123.9 5.5-127.5 0-119.9 0.4-124-6.4-4-6.5-1.2-16.3 5.4-19.1 2.7-1.2 21.9-1.4 119.3-1.5z"/>
                                        <path id="1500" class="s0" aria-label="1500"  d="m148.5 109.4v53.6q8.7-0.2 12.9-0.4v18.4h-51.5v-18.4q10.5 0.4 15.9 0.4v-33.6q-3.5 7.7-14.3 9.9-0.3-11.4-2.1-20.9 7.7-1 10.8-2.6 3.1-1.7 4.7-3.6 1.8-1.9 2.4-2.6v-0.2zm-2.6 0v53.6q8.7-0.2 12.9-0.4v18.4h-51.4v-18.4q10.5 0.4 15.8 0.4v-33.6q-3.5 7.7-14.3 9.9-0.3-11.4-2.1-20.9 7.8-1 10.8-2.6 3.1-1.7 4.7-3.6 1.8-1.9 2.4-2.6v-0.2zm67.8 21.9q11.1 0 18.6 3.1 7.6 3 11.3 8.3 3.8 5.1 3.8 11.5 0 14.6-10.2 21.3-10.1 6.5-27.2 6.5-14.3 0-25.2-4.8-10.8-4.9-15.6-16.2 5.3-0.8 11.6-2.6 6.5-1.7 11.6-3.6 2.1 4.2 5.8 6.2 3.7 1.8 9.9 1.8 6.6 0 10.9-2.1 4.4-2.2 4.4-6 0-3.9-3.8-6.5-3.8-2.6-11.6-2.6-5.1 0-9.2 1.8-4.2 1.8-6.1 5.1h-22.5q2.4-10 4.1-21.6 1.9-11.6 2.3-20.5h68.3v18.8q-10.8-0.7-20.5-0.7-9.5-0.2-26.7-0.2l-1 5.4q7.4-2.4 17-2.4zm-2.5 0q11.1 0 18.6 3.1 7.6 3 11.2 8.3 3.8 5.1 3.8 11.5 0 14.6-10.2 21.3-10.1 6.5-27.1 6.5-14.3 0-25.2-4.8-10.8-4.9-15.7-16.2 5.4-0.8 11.7-2.6 6.4-1.7 11.6-3.6 2 4.2 5.7 6.2 3.7 1.8 9.9 1.8 6.6 0 10.9-2.1 4.4-2.2 4.4-6 0-3.9-3.8-6.5-3.8-2.6-11.6-2.6-5 0-9.2 1.8-4.2 1.8-6 5.1h-22.5q2.3-10 4.1-21.6 1.8-11.6 2.2-20.5h68.3v18.8q-10.8-0.7-20.4-0.7-9.6-0.2-26.8-0.2l-1 5.4q7.4-2.4 17.1-2.4zm87.4 50.7q-20.9 0-30.9-9.7-9.9-9.6-9.9-26.7 0-17.1 9.9-26.6 10.1-9.6 30.9-9.6 20.8 0 30.7 9.6 10 9.5 10 26.6 0 17.1-10 26.7-9.9 9.7-30.7 9.7zm0.1-17.1q8.9 0 13-5.4 4.1-5.6 4.1-13.9 0-8.3-4.1-13.7-4.1-5.6-13-5.6-9.3 0-13.4 5.6-4.1 5.4-4.1 13.7 0 8.2 4.1 13.8 4.1 5.5 13.4 5.5zm-2.7 17.1q-20.9 0-30.8-9.7-9.9-9.6-9.9-26.7 0-17.1 9.9-26.6 10-9.6 30.8-9.6 20.9 0 30.8 9.6 9.9 9.5 9.9 26.6 0 17.1-9.9 26.7-9.9 9.7-30.8 9.7zm0.1-17.1q9 0 13.1-5.4 4.1-5.6 4.1-13.9 0-8.3-4.1-13.7-4.1-5.6-13.1-5.6-9.2 0-13.4 5.6-4.1 5.4-4.1 13.7 0 8.2 4.1 13.8 4.2 5.5 13.4 5.5zm94.4 17.1q-21 0-30.9-9.7-9.9-9.6-9.9-26.7 0-17.1 9.9-26.6 10-9.6 30.9-9.6 20.8 0 30.7 9.6 9.9 9.5 9.9 26.6 0 17.1-9.9 26.7-9.9 9.7-30.7 9.7zm0.1-17.1q8.9 0 13-5.4 4.1-5.6 4.1-13.9 0-8.3-4.1-13.7-4.1-5.6-13-5.6-9.3 0-13.5 5.6-4.1 5.4-4.1 13.7 0 8.2 4.1 13.8 4.2 5.5 13.5 5.5zm-2.7 17.1q-20.9 0-30.9-9.7-9.9-9.6-9.9-26.7 0-17.1 9.9-26.6 10.1-9.6 30.9-9.6 20.8 0 30.7 9.6 10 9.5 10 26.6 0 17.1-10 26.7-9.9 9.7-30.7 9.7zm0.1-17.1q8.9 0 13-5.4 4.1-5.6 4.1-13.9 0-8.3-4.1-13.7-4.1-5.6-13-5.6-9.3 0-13.4 5.6-4.1 5.4-4.1 13.7 0 8.2 4.1 13.8 4.1 5.5 13.4 5.5z"/>
                                        <path id="Layer" class="s0" d="m255.8 282c131.1 0 121.3-0.6 125.3 7.6 4.3 8.9-0.8 17.6-11.2 18.9-2.9 0.3-56 0.5-117.9 0.3-105.3-0.3-112.7-0.4-115.7-2.1-4.1-2.2-6.3-6.4-6.3-11.9 0-5 1.9-8.1 6.4-10.9 3-1.8 6.7-1.9 119.4-1.9z"/>
                                        <path id="Layer" fill-rule="evenodd" class="s0" d="m455.6 370.7c8.5 14.3 11.7 26.2 11.7 42.8-0.1 15-2.3 24.1-9.3 38l-5 10 12.9 13c7.1 7.1 13.4 14 14 15.2 0.6 1.2 1.1 4.2 1.1 6.7 0 3.8-0.6 5.3-3.2 8.2-2 2.1-4.8 3.8-6.9 4.3-6.6 1.5-10.2-0.7-24.4-14.9l-13.1-13.1-9.6 5.1c-13.4 7-22.3 9.2-37.8 9.3-14.7 0.1-22.2-1.5-35-7.5-17-7.8-30.7-21.2-39-38.1-6-12.3-8.2-21.8-8.2-36.2 0-14.6 2.2-24 8.6-37 11.4-23 33-39.4 58.1-44 33.6-6.2 67.8 9.1 85.1 38.2zm-108.7 4.2c-21.3 21.3-21.3 55.7 0.1 77.1 10.8 10.8 23.4 16 38.7 16 15.1 0 27.5-5.2 38.3-16 10.8-10.8 16-23.4 16-38.7 0-15.4-5.2-27.6-16.5-38.8-7.5-7.5-16-12.4-25-14.3-20-4.3-37.6 0.7-51.6 14.7z"/>
                                        <path id="Layer" class="s0" d="m136.8 363h54.6 54.6v13 13h-54.6-54.6l-3.9-3.9c-3.5-3.5-3.9-4.4-3.9-9.1 0-4.7 0.4-5.6 3.9-9.1z"/>
                                    </symbol>
                                    <symbol id="manufacturing" viewBox="0 0 512 512">
                                        <path id="Layer" fill-rule="evenodd" class="s0" d="m305.2 72.3l180.7 0.2 2.7 2.1c1.5 1.1 3.7 3.3 4.8 4.8 2.1 2.7 2.1 3.3 2.1 104.6 0 101.3 0 101.9-2.1 104.6-1.1 1.5-3.3 3.7-4.8 4.8l-2.7 2.1h-363.8l-2.7-2.1c-1.5-1.1-3.7-3.3-4.8-4.8-2.1-2.7-2.1-3.5-2.4-101.9-0.1-54.6 0-100.6 0.3-102.4 0.7-4 4.9-9.1 9-10.9 2.5-1.1 35-1.3 183.7-1.1zm174.8 15.7h-352v192h352z"/>
                                        <path id="Layer" fill-rule="evenodd" class="s0" d="m431.1 105.3c0.9 0.7 3.1 4.1 4.8 7.5 4.4 8.7 9.9 14.3 18.4 18.8 3.9 2 7.7 4.5 8.4 5.3 1.8 2.3 1.8 91.9 0 94.2-0.7 0.8-4.5 3.3-8.4 5.3-8.5 4.5-14 10.1-18.4 18.8-1.7 3.4-3.9 6.8-4.8 7.5-2.3 1.8-251.9 1.8-254.2 0-0.9-0.7-3.1-4.1-4.8-7.5-4.4-8.7-9.9-14.3-18.4-18.8-3.9-2-7.7-4.5-8.4-5.3-1.8-2.3-1.8-91.9 0-94.2 0.7-0.9 4.1-3.1 7.5-4.8 8.7-4.4 14.3-9.9 18.8-18.4 2-3.9 4.5-7.7 5.3-8.4 2.3-1.8 251.9-1.8 254.2 0zm-9.6 14.7h-235l-2.4 4.5c-3.1 5.8-13.8 16.5-19.6 19.6l-4.5 2.4v75l4.5 2.4c5.8 3.1 16.5 13.8 19.6 19.6l2.4 4.5h235l2.4-4.5c3.1-5.8 13-15.7 19.2-19.2l4.9-2.8v-75l-4.9-2.8c-6.2-3.5-16.1-13.4-19.2-19.2z"/>
                                        <path id="Layer" class="s0" d="m304 128c1.9 0 4 0.9 5.5 2.5 2.1 2 2.5 3.4 2.5 8.3v5.9l4.3 1.2c7.5 2.2 14.2 7.4 17.1 13.2 3.3 6.8 3.4 11.2 0.1 14.4-4.7 4.8-12 2.3-13.4-4.5-1.3-6.3-10.3-10.1-20.5-8.6-5.3 0.8-11 4.4-11.4 7.2-0.6 4.2 7.4 8.3 16.4 8.4 6.9 0 16.9 3.2 22.1 7 4.9 3.6 9.3 11.7 9.3 17 0 2-1.2 6-2.6 8.9-2.9 5.8-9.6 11-17.1 13.2l-4.3 1.2v5.9c0 4.9-0.4 6.3-2.5 8.3-1.5 1.6-3.6 2.5-5.5 2.5-1.9 0-4-0.9-5.5-2.5-2.1-2-2.5-3.4-2.5-8.3v-5.9l-4.2-1.2c-7.6-2.2-14.3-7.4-17.2-13.2-3.3-6.8-3.4-11.2-0.1-14.4 4.7-4.8 12-2.3 13.4 4.5 1.3 6.3 10.3 10.1 20.5 8.6 5.3-0.8 11-4.4 11.4-7.2 0.6-4.2-7.4-8.3-16.4-8.4-6.9 0-16.9-3.2-22.1-7-4.9-3.6-9.3-11.7-9.3-17 0-2 1.2-6 2.6-8.9 2.9-5.8 9.6-11 17.2-13.2l4.2-1.2v-5.9c0-4.9 0.4-6.3 2.5-8.3 1.5-1.6 3.6-2.5 5.5-2.5z"/>
                                        <path id="Layer" class="s0" d="m216 176c10.4 0 11.2 0.1 13.5 2.5 1.6 1.5 2.5 3.6 2.5 5.5 0 1.9-0.9 4-2.5 5.5-2.3 2.4-3.1 2.5-13.5 2.5-10.4 0-11.2-0.1-13.5-2.5-1.6-1.5-2.5-3.6-2.5-5.5 0-1.9 0.9-4 2.5-5.5 2.3-2.4 3.1-2.5 13.5-2.5z"/>
                                        <path id="Layer" class="s0" d="m392 176c10.4 0 11.2 0.1 13.5 2.5 1.6 1.5 2.5 3.6 2.5 5.5 0 1.9-0.9 4-2.5 5.5-2.3 2.4-3.1 2.5-13.5 2.5-10.4 0-11.2-0.1-13.5-2.5-1.6-1.5-2.5-3.6-2.5-5.5 0-1.9 0.9-4 2.5-5.5 2.3-2.4 3.1-2.5 13.5-2.5z"/>
                                        <path id="Layer" fill-rule="evenodd" class="s0" d="m481.7 315c11.8 5.8 17.8 16.5 17.1 30-0.8 12.6-6.2 20.5-19.8 28.7-3.6 2.2-40.7 25.3-82.5 51.3-41.8 26-81.1 50.4-87.3 54.3-17 10.5-29 14.6-43 14.7-3.5 0-37.8-3.2-76.2-7-38.4-3.9-71.7-7-73.9-7h-4.1v5.5c0 4.6-0.4 6-2.5 8l-2.4 2.5h-86.2l-2.4-2.5-2.5-2.4v-158.2l2.5-2.4 2.4-2.5h86.2l2.4 2.5c2.3 2.2 2.5 3.2 2.5 12v9.5h3.1c1.8 0 16.7-5.4 33.3-11.9 16.9-6.7 33.4-12.6 37.6-13.5 11.2-2.2 23.5-2.9 32.6-1.7 12.3 1.5 121.2 26.8 126.8 29.3 2.9 1.4 6.9 4.6 10 8l5.2 5.7 46-26.6c25.2-14.6 48.4-27.4 51.4-28.4 7.5-2.6 15.5-1.9 23.7 2.1zm-22.2 14.4c-2.7 1.4-25.5 14.3-50.5 28.8l-45.5 26.4-0.7 4.2c-1.5 9-9 18.7-17.5 22.7-1.8 0.9-6 2.1-9.1 2.7-5.3 0.9-8.8 0.4-47.2-7.1-22.8-4.5-42.7-8.6-44.2-9.2-5.6-2.3-5.9-10.8-0.5-13.9 2.4-1.3 6-0.8 45.4 6.8 38 7.4 43.2 8.2 46.3 7.1 7-2.4 11-8 11-15.4 0-5.6-1.9-9.6-6-12.5-2.2-1.5-18.4-5.7-59.2-15-31-7.2-59.9-13.5-64.3-14.1-17.4-2.4-28.7 0.2-66.1 15.1-19.6 7.9-29.2 11.2-33.5 11.7l-5.9 0.6v95.7h4.5c2.5 0 35.8 3.1 74.1 7 38.2 3.8 71.9 7 74.9 7 7 0 14.6-1.7 21.3-4.6 9.4-4.1 191.9-118.3 193.8-121.2 1-1.5 2-5.2 2.2-8.2 0.4-6-1.7-10.4-6.9-14.3-4.2-3.1-10.5-3.2-16.4-0.3zm-363.5 14.6h-64v136h64z"/>
                                        <path id="Layer" class="s0" d="m64 360c1.9 0 4 0.9 5.5 2.5 2.2 2.1 2.5 3.3 2.5 9.5 0 6.2-0.3 7.4-2.5 9.5-1.5 1.6-3.6 2.5-5.5 2.5-1.9 0-4-0.9-5.5-2.5-2.2-2.1-2.5-3.3-2.5-9.5 0-6.2 0.3-7.4 2.5-9.5 1.5-1.6 3.6-2.5 5.5-2.5z"/>

                                    </symbol>
                                    <symbol id="technical" viewBox="0 0 512 512">
                                        <path id="Layer" fill-rule="evenodd" class="s0" d="m64.3 59h78.3c75.8 0 78.4 0.3 84 5.6l5.6 5.3v169.1c0 153.8-0.2 169.1-3.6 172.3-2.8 2.9-22.3 3.7-105.9 3.7-99 0-102.6-0.3-105.7-5-2.6-4.5-3-28.6-3-146.1 0-90.3 0.9-143.5 2.2-148.2 2.1-6.7 23.5-32.6 40.6-49.3zm145.2 27.8l-69.2-0.8c-79-0.5-73.4-2.1-93.5 24.1l-11.3 14.8 0.5 133.2 0.6 133.1h172.9z"/>
                                        <path id="Layer" class="s0" d="m192.3 130.8c0.8 0.8 1 3 0.4 4.9-1.3 2.8-9.9 3.3-67.2 3.3-36.1 0-67.2-0.7-69.1-1.3-5.9-2.4-3.9-7.2 3.6-8 11.5-1.5 130.7-0.7 132.3 1.1z"/>
                                        <path id="Layer" class="s0" d="m192.9 150.6c0.4 0.7 0.4 2.6-0.4 4.6-1.1 2.8-9.3 3.2-69.8 2.8-62-0.7-68.7-1.1-69.4-4.3-0.4-2 0.9-3.9 3.1-4.4 5.8-1 135.2 0.3 136.5 1.3z"/>
                                        <path id="Layer" class="s0" d="m105.8 169.9c46.1 0.4 47.6 0.6 47.6 4.7 0 4.1-1.8 4.3-49.3 5-43.6 0.4-49.3 0.2-50.6-3-0.6-2 0-4.4 1.8-5.4 1.7-1.1 24.4-1.8 50.5-1.3z"/>
                                        <path id="Layer" class="s0" d="m147.4 204.3c1.1 2.6 2.7 19.9 3.2 38.1l1.3 32.9h11.5c9 0 11.6 1.7 11.6 6.8 0 10.6-55.7 98.9-62.1 98.9-6.1 0-63.2-92.1-61.9-99.3 0.5-2.6 5-4.7 10.1-5.5 13.8-2.1 15.7-6.8 15.7-41 0-16.5 0.8-31.7 1.8-33 3.2-5.5 66.7-3.4 68.8 2.1z"/>
                                        <path id="Layer" fill-rule="evenodd" class="s0" d="m308.3 58.9h160.1l5.2 6.5 5.4 6.3v165.1c0 146.5-0.4 165.3-3.5 169-3 3.7-15.5 4.2-106.5 4.2-77.3 0-103.7-0.8-105.6-3.1-2-2.4-2.6-38.6-2.6-146.5 0-78.9 0.6-145.2 1.3-147.3 0.6-2.3 11.4-15.4 23.7-29.1zm148 27.5l-70.6-0.7-70.7-0.6-12.5 13.4c-22.3 23.8-20.1 6.3-20.1 155.9v132.1h175l-0.4-149.9z"/>
                                        <path id="Layer" class="s0" d="m443.5 130.5c2 0.6 3.5 2.6 3.5 4.1 0 3.6-19.4 5.4-63.7 5.4-49.3 0-76.8-2-76.8-5.6 0-1.6 1.3-3.3 2.9-3.7 3.8-1.7 130-1.7 134.1-0.2z"/>
                                        <path id="Layer" class="s0" d="m376.8 149.8c60.5 0 68.3 0.4 69.5 3.4 0.7 2 0 4.3-1.7 5.4-3.9 2.4-131.8 2.4-135.7 0-1.7-1.1-2.4-3.4-1.7-5.4 1.3-3 9.1-3.4 69.6-3.4z"/>
                                        <path id="Layer" class="s0" d="m362.3 174.1c47.5 0 49.3 0.2 49.3 4.3 0.1 4.1-1.4 4.3-47.5 5.4-26.1 0.8-48.8 0.4-50.5-0.6-1.8-1.1-2.5-3.4-1.8-5.4 1.2-3.3 6.8-3.5 50.5-3.7z"/>
                                        <path id="Layer" class="s0" d="m368.7 201c4.9 0 60 84.4 60.2 92.1 0 2.4-5.1 5.9-11.6 7.4-13.2 2.8-13.7 4.3-14.7 42.4l-0.8 23.3-32 1.2c-21.2 0.8-33.1-0.4-35.5-3.5-2.5-3.1-3.6-13.6-3.6-35v-30.7h-10.3c-18.1 0-15.8-7.8 15.2-54.4 15.8-23.4 30.5-42.8 33.1-42.8z"/>
                                        <path id="Layer" class="s0" d="m104.8 424.2c-1.2 0-2.2-1.5-2.2-3.3 0-1.8 1-3.2 2.2-3.2 1.1 0 2.1 1.4 2.1 3.2 0 1.8-1 3.3-2.1 3.3z"/>

                                    </symbol>
                                    <symbol id="process" viewBox="0 0 512 512">
                                        <path id="Layer" class="s0" d="m379.1 104.9c-62.2-13.4-124-26.8-186.2-40.2-17.7 61.8-35.3 123.5-53 185.7-1.8-4.1-3.5-7.6-5.1-11.2-5-10.9-10-21.9-14.8-32.8-0.5-1.2-0.7-2.8-0.3-4q27.6-89.2 55.2-178.3c0.3-0.9 0.6-1.8 1-2.8 84.3 16.7 168.6 33.3 253.1 49.9-1.1 3.5-2.1 6.9-3.2 10.2-24.5 75.7-48.9 151.6-73.8 227.2-9.7 29.9-20.5 59.5-30.9 89.2-1.6 4.4-3.3 8.8-5.4 13-1.2 2.6-3.2 4.9-5.2 7-3.9 4-7.7 8.1-12 11.6-10.2 8-22.2 11.1-35 11.5-19.4 0.6-37.8-4.3-55.9-10.5-19.6-6.9-38.1-16.1-56.7-25.3-20.4-10-40.8-20-61-30.5-7.9-4-15.9-8.4-22.6-14.2-11.8-10.1-19.4-23-20.7-39.1-1.4-16.5-0.6-32.8 1.5-49.1 0.1-0.4 0.3-0.8 0.4-1.3 6.1 2.7 12 5.4 18 8.1q72.5 33.1 145.1 66.1c2 0.9 2.6 1.7 2.1 4.1-2.4 10.8-3.4 21.7-1.9 32.8 1.1 8.5 3.6 16.6 10.5 22.1 6.9 5.5 15 9 23.6 10.9 8.9 2 16.1-1.5 22.3-7.7 6.1-6 10.7-13.2 14.8-20.6 11.5-20.7 19.8-42.6 27.8-64.7 18.7-51.6 35.2-103.9 50.7-156.4 5.8-19.7 11.4-39.5 17.1-59.2 0.2-0.3 0.2-0.7 0.5-1.5z"/>
                                        <path id="Layer" class="s0" d="m33.3 44.7c5.1 10.6 10.1 21 15.1 31.3 28.7 59.9 57.4 119.8 86.2 179.7 1.1 2.2 0.7 3.5-0.8 5-6.9 6.8-15.4 10.3-24.9 11.3-0.6 0.1-1.5-0.9-1.8-1.5q-8-16.6-15.8-33.2c-26.9-56.8-53.7-113.5-80.7-170.3-1-2.2-0.8-3.4 1.2-4.9 7.2-5.6 14.2-11.5 21.5-17.4z"/>
                                        <path id="Layer" class="s0" d="m314.7 201.7c-1 4.7-1.8 8.6-2.6 12.6-1.4 6.6-0.8 6.1-7.2 4.5-29.7-7.8-59.5-15.6-89.2-23.4-3-0.8-3.3-1.3-2.7-4.3 0.9-4.4 1.8-8.7 2.7-13.1 0.6-2.6 1.2-2.9 3.8-2.3q46.1 12.1 92.1 24.3c1.2 0.2 2.2 1.1 3.1 1.7z"/>
                                        <path id="Layer" class="s0" d="m329.1 159.5c-0.7 3.5-1.6 7.8-2.5 12.2-1 4.7-1.1 4.7-5.6 3.5-30.1-7.9-60.1-15.7-90.2-23.6-3.5-0.9-3.7-1.2-3-4.7 0.9-4.3 1.9-8.6 2.8-13.1 0.4-2.1 1.5-2.6 3.5-2 30.9 8.1 61.7 16.2 92.6 24.3 1.3 0.3 2.6 0.7 2.4 3.4z"/>
                                        <path id="Layer" class="s0" d="m195.5 248.2c1-5.1 2.1-10.5 3.4-15.8 0.3-1.6 1.7-1.4 3-1 13.6 3.6 27.2 7.1 40.8 10.7q25.7 6.7 51.5 13.5c3.2 0.8 3.4 1.2 2.7 4.4q-1.3 6.5-2.6 13.1c-0.4 2-1.2 2.8-3.6 2.2-30.8-8.1-61.6-16.1-92.4-24.2-1.4-0.4-2.9-0.7-2.8-2.9z"/>
                                        <path id="Layer" class="s0" d="m193.9 197.3c-12.1 0-20.1-13.8-14.6-25.1 5-10.6 17.3-13.2 25.7-5.3 5 4.7 6.7 13 4 19.7-2.5 6.5-8.5 10.7-15.1 10.7z"/>
                                        <path id="Layer" class="s0" d="m210 150.7c-9.1 0-16.4-7.8-16.4-17.5 0-9.7 7.3-17.6 16.4-17.6 9 0 16.3 7.9 16.3 17.6 0 9.7-7.3 17.5-16.3 17.5z"/>
                                        <path id="Layer" class="s0" d="m174.4 254.8c-8.9-0.3-15.8-7.6-16.2-17.2-0.3-9.9 7.7-19.2 18.6-17.8 6.1 0.8 11.7 5.8 13.5 12.9 2.5 9.1-2.7 18.7-11.7 21.3-1.3 0.5-2.8 0.5-4.2 0.8z"/>
                                        <path id="Layer" class="s0" d="m141.3 278.6c1.8 9.5 3.5 19.4 5.3 30-9.3-7.6-18.3-14.9-27.3-22.2 4-0.9 7.9-1.4 11.5-2.7 3.6-1.2 7-3.3 10.5-5.1z"/>

                                    </symbol>
                                    <symbol id="reports" viewBox="0 0 512 512">
                                        <g transform="matrix(4.0676752932 0 0 4.0676752845 250 250)" id="r-R1TKRsGEKGcC2MxnWfe"  >
                                        <path style="stroke: none; stroke-width: 1; stroke-dasharray: none; stroke-linecap: butt; stroke-dashoffset: 0; stroke-linejoin: miter; stroke-miterlimit: 4; fill: rgb(255,255,255); fill-rule: evenodd; opacity: 1;" vector-effect="non-scaling-stroke"  transform=" translate(-52.7799672975, -61.459833562)" d="M 98.66 87 L 101.5 89.85 C 101.86340556414045 90.20721198766178 102.06809347174811 90.69542762223848 102.06809347174811 91.20499999999998 C 102.06809347174811 91.7145723777615 101.86340556414045 92.2027880123382 101.5 92.55999999999999 L 99.22 94.85 C 99.8573671677032 96.04565031718244 100.3347905633298 97.31990008438302 100.64 98.64 L 103.64 98.64 C 104.14921566049192 98.64 104.63757517325794 98.8422851335016 104.99764501987818 99.20235498012183 C 105.3577148664984 99.56242482674206 105.56 100.05078433950807 105.56 100.56 L 105.56 104.56 C 105.560014255733 105.62201650527024 104.70200224963293 106.48449732390208 103.64 106.49000000000001 L 100.41 106.49000000000001 C 100.01658041175652 107.78123596069867 99.45510234820281 109.01514284287958 98.74 110.16000000000001 L 100.83 112.25000000000001 C 101.57744542147601 113.00262034550342 101.57744542147601 114.21737965449661 100.83 114.97000000000001 L 98 117.86 C 97.2473796544966 118.60744542147602 96.0326203455034 118.60744542147602 95.28 117.86 L 93 115.58 C 91.78663466312172 116.2170448725699 90.49591019022128 116.6943440266112 89.16 117 L 89.16 120 C 89.1545316045586 121.05811335871694 88.29811335871693 121.9145316045586 87.24 121.92 L 83.24 121.92 C 82.17798349472976 121.920014255733 81.31550267609792 121.06200224963293 81.31 120 L 81.31 116.77 C 80.0144652651003 116.37512844996601 78.77701310740032 115.81020463884211 77.63 115.08999999999999 L 75.53999999999999 117.18999999999998 C 74.78737965449659 117.937445421476 73.5726203455034 117.937445421476 72.82 117.18999999999998 L 70 114.3 C 69.63909012242146 113.94145179107639 69.43613335149234 113.45373643260149 69.43613335149234 112.945 C 69.43613335149234 112.43626356739851 69.63909012242146 111.94854820892361 70 111.59 L 72.28 109.3 C 71.64695432861991 108.10240297823465 71.16974617789285 106.82872770270252 70.86 105.50999999999999 L 67.86 105.50999999999999 C 66.82538756670948 105.47246109830161 66.00468342452005 104.62528262894479 66 103.59 L 66 99.59 C 66.00540663258776 98.53022872672861 66.86027111234003 97.67091182781097 67.92 97.66 L 71.1 97.66 C 71.49770454156996 96.37184624914781 72.06251387917423 95.1413687636528 72.78 94 L 70.68 91.91 C 69.93255457852399 91.1573796544966 69.93255457852399 89.9426203455034 70.68 89.19 L 73.53 86.35 C 73.88854820892361 85.98909012242146 74.37626356739851 85.78613335149234 74.88499999999999 85.78613335149234 C 75.39373643260149 85.78613335149234 75.88145179107639 85.98909012242146 76.24 86.35 L 78.53 88.63 C 79.72737115464423 87.99645189078645 81.00111240593806 87.51921902090855 82.32 87.21 L 82.32000000000001 84.21 C 82.3254683954414 83.15188664128306 83.18188664128307 82.29546839544139 84.24000000000001 82.28999999999999 L 88.24000000000001 82.28999999999999 C 89.29811335871695 82.29546839544139 90.15453160455861 83.15188664128306 90.16000000000001 84.21 L 90.16000000000001 87.44 C 91.45343400678976 87.83210171989863 92.68794074863878 88.3972165227069 93.83 89.11999999999999 L 95.94 87 C 96.69484249370284 86.25796518458894 97.90515750629716 86.25796518458894 98.66 87 Z M 60.26 117 C 61.7088304523435 117.2389895877608 62.77173777537065 118.49159075775997 62.77173777537065 119.96 C 62.77173777537065 121.42840924224004 61.7088304523435 122.6810104122392 60.26 122.92 L 6.89 122.92 C 5.0574486561158505 122.92001737129873 3.300388419173917 122.18999204695992 2.0073969251544215 120.89137069157313 C 0.7144054311349262 119.59274933618636 -0.007979178648225727 117.83253397266776 -8.881784197001252e-16 116 L 0 6.85 C -0.0066717616228687115 5.031332333755152 0.7133290147540197 3.285330451041199 1.9999999999999991 2.000000000000001 C 3.2907350443296473 0.703027230269629 5.050298517045045 -0.01810534051537127 6.879999999999996 -8.881784197001252e-16 L 91.52 0 C 95.32295828766257 0.005507551436519428 98.40449244856347 3.0870417123374274 98.41 6.889999999999999 L 98.41 68.23 C 98.41 68.29 98.41 68.35000000000001 98.41 68.41000000000001 C 98.19933585380602 69.88842495267973 96.93335853806032 70.98679792061003 95.44 70.98679792061003 C 93.94664146193968 70.98679792061003 92.68066414619398 69.88842495267973 92.47 68.41000000000001 L 92.47 6.89 L 92.47 6.89 C 92.46642408415804 6.635997004542716 92.36631506839278 6.392875109112827 92.19 6.21 C 92.00869667571374 6.030023925477359 91.76538812693362 5.9262599855564275 91.50999999999999 5.92 L 6.89 5.92 C 6.6196970395237 5.902118060319567 6.3548202418020185 6.001718547185599 6.163269394493808 6.193269394493809 C 5.971718547185598 6.38482024180202 5.872118060319567 6.649697039523701 5.89 6.920000000000001 L 5.89 116 L 5.89 116 C 5.896084564781361 116.25052819794354 5.9960120451035035 116.4896403830001 6.17 116.67 C 6.3537887258478545 116.85234076460958 6.601131819833787 116.9562965577341 6.859999999999999 116.96000000000001 L 60.26 116.96000000000001 Z M 19 102.66 L 19 96 L 47.83 96 L 47.83 102.63 L 19.009999999999998 102.63 Z M 74.3 59.76 L 74.3 65.87 L 65.62 65.87 L 65.62 59.76 Z M 58.77 54.38 L 58.77 65.87 L 50.08 65.87 L 50.08 54.38 Z M 43.24 37.92 L 43.24 65.92 L 34.55 65.92 L 34.55 37.92 Z M 27.7 26.41 L 27.7 65.87 L 19 65.87 L 19 26.41 Z M 69 29.31 L 82.11 29.36 C 82.09338136119804 32.853299776421686 80.68641484527717 36.19619464417229 78.2 38.65 C 77.61207546022457 39.22697633305678 76.97276168135706 39.74913837234124 76.29 40.21 L 69 29.31 Z M 67.66 26.709999999999997 L 67 12.7 C 66.98861948317892 12.421969273027612 67.2022046743927 12.186135624395732 67.48 12.17 L 68 12.17 C 75.69480648106787 12.080909081706645 82.13027936268723 17.995060470533154 82.69 25.66999999999999 C 82.70189605754162 25.946357254084695 82.49535608476407 26.183658499403588 82.22 26.21 L 68.22 27.21 C 68.08832692642909 27.221006821562053 67.95778935613443 27.178369372770785 67.85800055771884 27.091760226976124 C 67.75821175930325 27.005151081181463 67.69763049300468 26.88191180387294 67.69 26.75 Z M 68.49 13.159999999999997 L 69.14 25.669999999999995 L 80.9 24.61 C 80.6450552870257 21.56794703836881 79.20925619629429 18.74660182508158 76.9 16.75 C 74.44000000000001 14.48 72.16000000000001 13.129999999999999 68.58000000000001 13.17 Z M 66.1 28.7 L 73.1 40.87 C 68.1978778722361 43.70323812601575 62.07412848257124 43.31714027787026 57.56667848526206 39.89063562210528 C 53.059228487952886 36.46413096634029 51.04897672298762 30.66686730343713 52.46753333678893 25.185468141939936 C 53.88608995059025 19.704068980442738 58.456223941970954 15.609773749686902 64.06 14.800000000000004 L 66.06 28.700000000000003 Z M 19 84.83 L 19 78.15 L 59.86 78.15 L 59.86 84.78 L 19 84.83 Z M 85.73 94.21 C 90.08752667616497 94.21 93.62 97.74247332383503 93.62 102.1 C 93.62 106.45752667616495 90.08752667616497 109.99 85.73 109.99 C 81.37247332383504 109.99 77.84 106.45752667616496 77.84 102.1 C 77.84 97.74247332383503 81.37247332383504 94.21 85.73 94.21 Z" stroke-linecap="round" />
                                        </g>
                                    </symbol>
                                    <symbol id="estimate" viewBox="0 0 512 512">
                                        <g transform="matrix(4.1530263654 0 0 3.9858341886 250 254.2250747757)" id="MMsTRwUm63j3moy-MsRJV"  >
                                        <path style="stroke: none; stroke-width: 1; stroke-dasharray: none; stroke-linecap: butt; stroke-dashoffset: 0; stroke-linejoin: miter; stroke-miterlimit: 4; fill: rgb(255,255,255); fill-rule: evenodd; opacity: 1;" vector-effect="non-scaling-stroke"  transform=" translate(-53.845, -61.435)" d="M 88.17 91.59 C 88.17 91.17 88.17 90.74000000000001 88.17 90.32000000000001 C 88.17 89.9 88.17 89.47000000000001 88.18 89.04 C 88.75 89.01 89.22000000000001 88.83000000000001 89.58000000000001 88.49000000000001 C 89.94000000000001 88.16000000000001 90.13000000000001 87.76 90.17000000000002 87.29 C 90.21000000000002 86.76 90.04000000000002 86.30000000000001 89.67000000000002 85.89 C 89.30000000000001 85.49 88.70000000000002 85.26 87.90000000000002 85.2 C 87.14000000000001 85.14 86.55000000000003 85.28 86.12000000000002 85.62 C 85.69000000000001 85.96000000000001 85.42000000000002 86.41000000000001 85.33000000000001 87 C 85.22000000000001 87.73 85.43 88.41 85.98000000000002 89.03 C 85.78000000000002 89.71000000000001 85.58000000000001 90.39 85.38000000000002 91.07000000000001 C 84.24000000000002 90.77000000000001 83.11000000000003 90.47000000000001 81.99000000000002 90.17 C 80.88000000000002 89.87 79.78000000000003 89.57000000000001 78.68000000000002 89.27 C 78.96000000000002 88.14999999999999 79.24000000000002 87.03 79.52000000000002 85.91 C 79.80000000000003 84.78999999999999 80.08000000000003 83.67 80.35000000000002 82.55 C 81.06000000000002 82.6 81.76000000000002 82.66 82.47000000000003 82.72 C 82.30000000000003 83.52 82.13000000000002 84.32 81.96000000000002 85.12 C 81.79000000000002 85.92 81.62000000000002 86.72 81.45000000000002 87.52000000000001 C 82.15000000000002 87.71000000000001 82.85000000000002 87.89000000000001 83.56000000000002 88.08000000000001 C 83.39000000000001 87.49000000000001 83.36000000000001 86.91000000000001 83.47000000000001 86.31000000000002 C 83.57000000000001 85.75000000000001 83.77000000000001 85.23000000000002 84.04 84.77000000000001 C 84.31 84.31000000000002 84.67 83.9 85.10000000000001 83.53000000000002 C 85.96000000000001 82.81000000000002 86.97000000000001 82.49000000000001 88.13000000000001 82.59000000000002 C 89.10000000000001 82.67000000000002 89.94000000000001 83.05000000000001 90.67000000000002 83.75000000000001 C 91.17000000000002 84.22000000000001 91.55000000000001 84.77000000000001 91.79000000000002 85.39000000000001 C 92.03000000000002 86.01000000000002 92.14000000000001 86.70000000000002 92.11000000000001 87.47000000000001 C 92.08000000000001 88.08000000000001 91.97000000000001 88.63000000000001 91.79000000000002 89.12000000000002 C 91.60000000000002 89.61000000000001 91.33000000000003 90.03000000000002 90.98000000000002 90.40000000000002 C 90.27 91.12 89.33 91.52 88.17 91.59 L 88.17 91.59 L 88.17 91.59 z M 6.31 0 L 82.83 0 C 84.56 0 86.14 0.71 87.28999999999999 1.85 C 87.33 1.8900000000000001 87.36999999999999 1.9300000000000002 87.39999999999999 1.98 C 88.46999999999998 3.11 89.13999999999999 4.640000000000001 89.13999999999999 6.3100000000000005 L 89.13999999999999 69.49 C 88.19999999999999 69.42999999999999 87.25999999999999 69.41 86.32999999999998 69.41 C 86.00999999999999 69.41 85.68999999999998 69.42 85.36999999999999 69.42 L 85.36999999999999 6.31 C 85.36999999999999 5.6499999999999995 85.11999999999999 5.05 84.69999999999999 4.6 L 84.61999999999999 4.529999999999999 C 84.16 4.069999999999999 83.52999999999999 3.7799999999999994 82.82999999999998 3.7799999999999994 L 6.31 3.7799999999999994 C 5.609999999999999 3.7799999999999994 4.9799999999999995 4.06 4.52 4.52 L 4.51 4.52 C 4.06 4.98 3.78 5.61 3.78 6.31 L 3.78 109.79 C 3.78 110.45 4.029999999999999 111.05000000000001 4.45 111.5 L 4.53 111.57 C 4.99 112.02999999999999 5.62 112.32 6.32 112.32 L 57.8 112.32 L 57.8 113.02999999999999 C 57.8 114.07999999999998 57.9 115.09999999999998 58.089999999999996 116.08999999999999 L 6.31 116.08999999999999 C 4.58 116.08999999999999 2.9999999999999996 115.38 1.8499999999999996 114.24 C 1.8099999999999996 114.19999999999999 1.7699999999999996 114.16 1.7399999999999995 114.11 C 0.66 112.98 0 111.46 0 109.79 L 0 6.31 C 0 4.58 0.71 3 1.85 1.86 L 1.86 1.85 C 3.01 0.71 4.58 0 6.31 0 L 6.31 0 z M 67.1 19.3 L 69.28 19.3 L 69.28 31.060000000000002 L 67.1 31.060000000000002 L 67.1 19.3 L 67.1 19.3 L 67.1 19.3 z M 15.53 48.97 L 26.229999999999997 48.97 C 27.139999999999997 48.97 27.9 49.72 27.9 50.64 L 27.9 59.67 C 27.9 60.58 27.15 61.34 26.229999999999997 61.34 L 15.529999999999998 61.34 C 14.619999999999997 61.34 13.859999999999998 60.59 13.859999999999998 59.67 L 13.859999999999998 50.64 C 13.87 49.71 14.62 48.97 15.53 48.97 L 15.53 48.97 L 15.53 48.97 z M 15.53 91.88 L 26.229999999999997 91.88 C 27.139999999999997 91.88 27.9 92.63 27.9 93.55 L 27.9 102.58 C 27.9 103.5 27.15 104.25 26.229999999999997 104.25 L 15.529999999999998 104.25 C 14.619999999999997 104.25 13.859999999999998 103.5 13.859999999999998 102.58 L 13.859999999999998 93.55 C 13.87 92.63 14.62 91.88 15.53 91.88 L 15.53 91.88 L 15.53 91.88 L 15.53 91.88 z M 15.53 70.42 L 26.229999999999997 70.42 C 27.139999999999997 70.42 27.9 71.17 27.9 72.09 L 27.9 81.12 C 27.9 82.03 27.15 82.79 26.229999999999997 82.79 L 15.529999999999998 82.79 C 14.619999999999997 82.79 13.859999999999998 82.04 13.859999999999998 81.12 L 13.859999999999998 72.09 C 13.87 71.17 14.62 70.42 15.53 70.42 L 15.53 70.42 L 15.53 70.42 z M 62.93 48.97 L 73.62 48.97 C 74.53 48.97 75.28 49.72 75.28 50.64 L 75.28 59.67 C 75.28 60.58 74.53 61.34 73.62 61.34 L 62.93 61.34 C 62.02 61.34 61.26 60.59 61.26 59.67 L 61.26 50.64 C 61.26 49.71 62.01 48.97 62.93 48.97 L 62.93 48.97 L 62.93 48.97 z M 62.93 70.42 L 73.62 70.42 C 74.09 70.42 74.52000000000001 70.62 74.83 70.94 C 69.21 72.50999999999999 64.34 75.25 61.269999999999996 79.1 L 61.269999999999996 72.08999999999999 C 61.26 71.17 62.01 70.42 62.93 70.42 L 62.93 70.42 L 62.93 70.42 z M 39.23 48.97 L 49.92999999999999 48.97 C 50.83999999999999 48.97 51.599999999999994 49.72 51.599999999999994 50.64 L 51.599999999999994 59.67 C 51.599999999999994 60.58 50.849999999999994 61.34 49.92999999999999 61.34 L 39.22999999999999 61.34 C 38.31999999999999 61.34 37.55999999999999 60.59 37.55999999999999 59.67 L 37.55999999999999 50.64 C 37.56 49.71 38.31 48.97 39.23 48.97 L 39.23 48.97 L 39.23 48.97 z M 39.23 91.88 L 49.92999999999999 91.88 C 50.83999999999999 91.88 51.599999999999994 92.63 51.599999999999994 93.55 L 51.599999999999994 102.58 C 51.599999999999994 103.5 50.849999999999994 104.25 49.92999999999999 104.25 L 39.22999999999999 104.25 C 38.31999999999999 104.25 37.55999999999999 103.5 37.55999999999999 102.58 L 37.55999999999999 93.55 C 37.56 92.63 38.31 91.88 39.23 91.88 L 39.23 91.88 L 39.23 91.88 z M 39.23 70.42 L 49.92999999999999 70.42 C 50.83999999999999 70.42 51.599999999999994 71.17 51.599999999999994 72.09 L 51.599999999999994 81.12 C 51.599999999999994 82.03 50.849999999999994 82.79 49.92999999999999 82.79 L 39.22999999999999 82.79 C 38.31999999999999 82.79 37.55999999999999 82.04 37.55999999999999 81.12 L 37.55999999999999 72.09 C 37.56 71.17 38.31 70.42 39.23 70.42 L 39.23 70.42 L 39.23 70.42 z M 14.12 12.32 L 75.01 12.32 C 75.93 12.32 76.77000000000001 12.700000000000001 77.37 13.3 C 77.42 13.350000000000001 77.46000000000001 13.4 77.51 13.450000000000001 C 78.03 14.040000000000001 78.35000000000001 14.82 78.35000000000001 15.66 L 78.35000000000001 34.69 C 78.35000000000001 35.61 77.98 36.44 77.37 37.05 L 77.36 37.059999999999995 C 76.76 37.66 75.92 38.03999999999999 75 38.03999999999999 L 14.12 38.03999999999999 C 13.2 38.03999999999999 12.36 37.65999999999999 11.76 37.059999999999995 C 11.709999999999999 37.01 11.66 36.959999999999994 11.62 36.91 C 11.1 36.31999999999999 10.78 35.54 10.78 34.699999999999996 L 10.78 15.66 C 10.78 14.75 11.16 13.92 11.76 13.31 L 11.77 13.3 C 12.38 12.7 13.21 12.32 14.12 12.32 L 14.12 12.32 z M 74.58 16.1 L 14.56 16.1 L 14.56 34.260000000000005 L 74.58 34.260000000000005 L 74.58 16.1 L 74.58 16.1 z M 106.7 108.08 C 107.34 109.16 107.69 110.3 107.69 111.48 C 107.69 117.77000000000001 97.96 122.87 85.96 122.87 C 73.96 122.87 64.22999999999999 117.77000000000001 64.22999999999999 111.48 C 64.22999999999999 110.3 64.57999999999998 109.15 65.21999999999998 108.08 C 67.97999999999999 112.71 76.22999999999999 116.07 85.95999999999998 116.07 C 95.7 116.07 103.94 112.72 106.7 108.08 L 106.7 108.08 L 106.7 108.08 z M 85.96 80.11 C 95.82 80.11 103.82 83.25 103.82 87.11 C 103.82 90.98 95.82 94.11 85.96 94.11 C 76.1 94.11 68.1 90.99 68.1 87.12 C 68.1 83.25 76.1 80.11 85.96 80.11 L 85.96 80.11 L 85.96 80.11 L 85.96 80.11 z M 85.96 77.79 C 97.96 77.79 107.69 82.89 107.69 89.18 C 107.69 95.47000000000001 97.96 100.57000000000001 85.96 100.57000000000001 C 73.96 100.56 64.22999999999999 95.46000000000001 64.22999999999999 89.18 C 64.23 82.89 73.96 77.79 85.96 77.79 L 85.96 77.79 L 85.96 77.79 z M 106.77 96.77 C 107.36 97.8 107.67999999999999 98.91 107.67999999999999 100.03999999999999 C 107.67999999999999 106.33 97.94999999999999 111.42999999999999 85.94999999999999 111.42999999999999 C 73.94999999999999 111.42999999999999 64.21999999999998 106.33 64.21999999999998 100.03999999999999 C 64.21999999999998 98.89999999999999 64.53999999999998 97.80999999999999 65.12999999999998 96.77 C 67.81999999999998 101.46 76.11999999999998 104.89 85.94999999999999 104.89 C 95.79 104.89 104.1 101.47 106.77 96.77 L 106.77 96.77 L 106.77 96.77 L 106.77 96.77 z" stroke-linecap="round" />
                                        </g>
                                    </symbol>

                                    <!-- arc travelled by the pointer -->
                                    <svg x="150" y="0" width="350" height="350" viewBox="0 0 500 500">
                                    <linearGradient id="a" gradientUnits="userSpaceOnUse" x1="250.2542" y1="496.283" x2="250.2542" y2="-.2102">
                                    <stop offset="0" stop-color="#0F68A9"/>
                                    <stop offset="1" stop-color="#3DDEED" stop-opacity="0"/>
                                    </linearGradient>
                                    <path fill="url(#a)" d="M250.3 0c137 0 248.1 111.1 248.1 248.1S387.3 496.2 250.3 496.2 2.2 385.1 2.2 248.1 113.2 0 250.3 0C112.5 0 .8 111.7.8 249.5S112.5 499 250.3 499s249.5-111.7 249.5-249.5S388 0 250.3 0z"/>
                                    </svg>

                                    <g id="service-collection">
                                    <!-- this gets filled dynamically -->
                                    </g>
                                    <circle cx="325" cy="170" r="140" class="center"/>

                                    </svg>
                                </div>

                                <!--============================================================================================-->


                            </div>
                        </div>
                        <!-- Mobie view login page starts-->

                        <div class="card-body col-12 d-lg-none d-xl-none d-md-block" style="top:150px;">
                            <form action="login" autocomplete="off" modelAttribute="login" method="post" >
                                <div class="col-sm-12 d-lg-none d-md-block d-sm-block m-b-35 text-center">
                                    <img src="assets/images/MedenDx_green-slogan.png" class="" style="width:300px;">
                                </div>
                                <div class="form-group mb-6">
                                    <label class="form-label">Enter Email</label>
                                    <div class="input-group">
                                        <div class="input-group-prepend" style="background: #edf1f4">
                                            <span class="input-group-text">
                                                <i class="fas fa-user"></i>
                                            </span>
                                        </div>
                                        <input type="email"  name="username"  autocomplete="off" class="form-control" required="true" placeholder="name@sitename.com" />
                                    </div>
                                </div>
                                <div class="form-group mb-6">
                                    <label class="form-label">Enter Password</label>
                                    <div class="input-group">
                                        <div class="input-group-prepend" style="background: #edf1f4">
                                            <span class="input-group-text">
                                                <i class="fas fa-unlock"></i>
                                            </span>
                                        </div>
                                        <input type="password"  name="password"   class="form-control" required = "true" placeholder="*********" />
                                    </div>
                                    <input  type="hidden" name="targetUrl"/>
                                </div>

                                <c:set var="errorKey" value="sessionDuplicateLogin"/>
                                <c:set var="errorLoginFailed" value="true"/>
                                <c:set var="errorSessionExpired" value="sessionexpired"/>
                                <p class="text-right para_pad" style=""><a href="forgetPassword" class="f-w-400">Forgot password?</a></p> <br> 

                                <c:choose>
                                    <c:when  test="${not empty SPRING_SECURITY_LAST_EXCEPTION}">
                                        <div  class="alert alert-danger" >
                                            <c:out value="${SPRING_SECURITY_LAST_EXCEPTION}" />
                                        </div>
                                    </c:when >
                                    <c:when  test="${errorLoginFailed eq param.error}">
                                        <div class="alert alert-danger" role="alert" >
                                            <a href="#!" class="alert-link">The username or password you entered was incorrect. Please try again.</a>
                                        </div>
                                    </c:when >
                                    <c:when  test="${errorKey  eq  param.error}">
                                        <div class="card-body" style="background-color: #f07502;color: #FFFFFF;margin:0 0 10px 0;">
                                            This session has been expired (possibly due to multiple concurrent logins being attempted as the same user).
                                        </div>
                                    </c:when >
                                    <c:when  test="${errorSessionExpired  eq  param.error}">
                                        <div class="card-body" style="background-color: #f07502;color: #FFFFFF;margin:0 0 10px 0;">
                                            This session has expired.
                                        </div>
                                    </c:when >
                                </c:choose>
                                <%--c:if test="${errorSessionExpired==param.error}">
                                   <div class="card-body" style="background-color: #fbeed5;margin:0 0 10px 0;">
                                       Due to inactivity, your session has timed out. Please sign in again.
                                   </div>
                               </c:if--%>
                                <button class="btn btn-gradient-success mb-4 d-md-none d-sm-block d-lg-none login-btn col-sm-12 col-md-12" id="login" name="login" >Login</button>

                                <a href="#!" class="alert-link alert-danger">${message}</a>
                            </form>
                        </div>

                        <!-- Mobie view login page Ends-->

                    </div>
                </div>
            </div>
        </div>


        <!-- [ signin-img-slider2 ] end -->
        <div class="modal fade" id="forgetModal" role="dialog" data-backdrop="static" data-keyboard="false">
            <div class="modal-dialog">
                <!-- Modal content-->
                <div class="modal-content">
                    <div class="modal-header">
                        <h4 class="modal-title">Forget Password</h4> 
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                    </div>
                    <div class="modal-body">
                        <div class="row">
                            <div class="col-12">
                                <form method="post" action="forgetpassword" modelAttribute="forgetpassword">
                                    <div class="form-group">
                                        <label for="exampleInputEmail1">Email address</label>
                                        <input pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" name="emailid"  type="email" class="form-control" id="emailid" aria-describedby="emailHelp" placeholder="Enter email">
                                        <!--<small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>-->
                                    </div>
                                    <button type="submit" class="btn btn-primary">Submit</button>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>  

        <script >"use strict";



            $(function () {
                $('[data-toggle="tooltip"]').tooltip();

                try {
                    localStorage.clear();
                    sessionStorage.clear();
                } catch (err) {
                    console.log("fail to clear session and local storage");
                }


            });
            var center = {x: 325, y: 175};
            var serv_dist = 250;
            var pointer_dist = 172;
            var pointer_time = 2;
            var icon_size = 38;
            var circle_radius = 32;
            var text_top_margin = 15;
            var tspan_delta = 16;

            //name is used as the title for the bubble
            //icon is the id of the corresponding svg symbol
            var services_data = [{name: "Eligibility Verification", icon: "industries", endpoint: ""},
                {name: "Patient Portal", icon: "validation", endpoint: ""},
                {name: "E-Consent", icon: "process", endpoint: ""},
                {name: "TX-Estimate", icon: "estimate", endpoint: ""},
                {name: "Create Visit", icon: "engineering", endpoint: ""},
                {name: "Claims Status", icon: "management", endpoint: ""},
                {name: "ERA/EOB", icon: "manufacturing", endpoint: ""},
                {name: "Reports", icon: "reports", endpoint: ""},
                {name: "Documents Portal", icon: "technical", endpoint: ""}

            ];
            var services = document.getElementById("service-collection");
            var nav_container = document.getElementById("circle-nav-services");
            var symbol_copy = document.getElementById("circle-nav-copy");
            var use_copy = document.querySelector("use.nav-copy");

            //Keeps code DRY avoiding namespace for element creation
            function createSVGElement(el) {
                return document.createElementNS("http://www.w3.org/2000/svg", el);
            }

            //Quick setup for multiple attributes
            function setAttributes(el, options) {
                Object.keys(options).forEach(function (attr) {
                    el.setAttribute(attr, options[attr]);
                });
            }

            //Service bubbles are created dynamically
            function addService(serv, index) {
                var group = createSVGElement("g");
                group.setAttribute("class", "service serv-" + index);
                // group.setAttribute("data-toggle", "tooltip");
                // group.setAttribute("data-placement", "top");
                // group.setAttribute("data-original-title", "EVT");

                if (index === 0)
                {
//                    group.setAttribute("data-toggle", "tooltip");
//                    group.setAttribute("data-placement", "top");
//                    group.setAttribute("data-original-title", "Check Patient's insurance eligibility");
                    //group.setAttribute("data-original-title", "(Benefits - new)");
                }
                if (index === 1)
                {
//                    group.setAttribute("data-toggle", "tooltip");
//                    group.setAttribute("data-placement", "top");
//                    //  group.setAttribute("data-original-title", "The centralized database of patient demographics and insurance details for helps auto populating Benefits forms, E-Superbills, E-Consents etc.,");
//                    group.setAttribute("data-original-title", "Automate and Simplify patient's relationship for your clinic success");
                }
                if (index === 2)
                {
//                    group.setAttribute("data-toggle", "tooltip");
//                    group.setAttribute("data-placement", "top");
//                    // group.setAttribute("data-original-title", "Reduce the clumsy paperwork of patients and the difficulties in storing, retrieving, sharing of these vital documents via electronic form filling, signatures and storage. ");
//                    group.setAttribute("data-original-title", "Autofill practice's information and patient's demographic to minimize time organizing charts");

                }
                if (index === 3)
                {
//                    group.setAttribute("data-toggle", "tooltip");
//                    group.setAttribute("data-placement", "top");
//                    // group.setAttribute("data-original-title", "Creating Visits or superbills have become even more easier by simple clicking. Many fields are auto populated to reduce repetition and the inclusive workflow eases the communication and improves efficiency.");
//                    group.setAttribute("data-original-title", "Less time consuming and quick communication between AmeriDenti and your practice");
                }
                if (index === 4)
                {
//                    group.setAttribute("data-toggle", "tooltip");
//                    group.setAttribute("data-placement", "top");
//                    //   group.setAttribute("data-original-title", "Track your claims that are sent out to Payors; and watch it getting paid. Not a single claim slips through, this transparent tracker.");
//                    group.setAttribute("data-original-title", "24-hours access to view insurance's claim submissions anytime and anywhere");
                }
                if (index === 5)
                {
//                    group.setAttribute("data-toggle", "tooltip");
//                    group.setAttribute("data-placement", "top");
//                    //   group.setAttribute("data-original-title", "Proof of AmeriDenti's adherences to best practices; Improved transparency in billing, helping you keep track of the Incoming remittances, and the details of every Procedure that is paid or denied.");
//                    group.setAttribute("data-original-title", "24-hours access to view insurance's payment anytime and anywhere");
                }
                if (index === 6) {
//                    group.setAttribute("data-toggle", "tooltip");
//                    group.setAttribute("data-placement", "top");
//                    //   group.setAttribute("data-original-title", "Proof of AmeriDenti's adherences to best practices; Improved transparency in billing, helping you keep track of the Incoming remittances, and the details of every Procedure that is paid or denied.");
//                    group.setAttribute("data-original-title", "24-hours access to view Reports");
                }
                if (index === 7)
                {
//                    group.setAttribute("data-toggle", "tooltip");
//                    group.setAttribute("data-placement", "top");
//                    // group.setAttribute("data-original-title", "Store all relevant docs in an easily retrievable and secure location, for billing or auditing purposes. ");
//                    group.setAttribute("data-original-title", "Unlimited Cloud Storage and efficient time used by utilizing our 3 ways of transcriptions/dictations service - which will help you to meet the insurance's requirements");
                }



                /* This group is needed to apply animations in
                 the icon and its background at the same time */
                var icon_group = createSVGElement("g");
                icon_group.setAttribute("class", "icon-wrapper");

                var circle = createSVGElement("circle");
                setAttributes(circle, {
                    r: circle_radius,
                    cx: center.x,
                    cy: center.y
                });
                var circle_shadow = circle.cloneNode();
                setAttributes(circle, {
                    class: 'shadow'
                });
                icon_group.appendChild(circle_shadow);
                icon_group.appendChild(circle);

                var symbol = createSVGElement("use");
                setAttributes(symbol, {
                    'x': center.x - icon_size / 2,
                    'y': center.y - icon_size / 2,
                    'width': icon_size,
                    'height': icon_size
                });
                symbol.setAttributeNS("http://www.w3.org/1999/xlink", "xlink:href", "#" + serv.icon);
                icon_group.appendChild(symbol);

                group.appendChild(icon_group);

                var text = createSVGElement("text");
                setAttributes(text, {
                    x: center.x,
                    y: center.y + circle_radius + text_top_margin
                });

                var tspan = createSVGElement("tspan");
                if (serv.name.indexOf('\n') >= 0) {

                    var tspan2 = tspan.cloneNode();
                    var name = serv.name.split('\n');
                    jQuery(tspan).text(name[0]);
                    jQuery(tspan2).text(name[1]);

                    setAttributes(tspan2, {
                        x: center.x,
                        dy: tspan_delta
                    });

                    text.appendChild(tspan);
                    text.appendChild(tspan2);
                } else {
                    jQuery(tspan).text(serv.name);
                    text.appendChild(tspan);
                }

                group.appendChild(text);
                services.appendChild(group);

                var service_bubble = jQuery(".serv-" + index);


                //Uses tween to look for right position
                twn_pivot_path.seek(index);
                TweenLite.set(service_bubble, {
                    x: pivot_path.x,
                    y: pivot_path.y,
                    transformOrigin: "center center"
                });

                // service_bubble.click(serviceClick);
            }

            //Creates pointer
            function createPointer() {
                var service_pointer = createSVGElement("circle");

                setAttributes(service_pointer, {
                    cx: center.x - pointer_dist,
                    cy: center.y,
                    r: 10,
                    class: "pointer"
                });

                nav_container.appendChild(service_pointer);

                service_pointer = document.querySelector("svg .pointer");

                var pointer_circle = [{x: 0, y: 0}, {x: pointer_dist, y: pointer_dist}, {x: pointer_dist * 2, y: 0}, {x: pointer_dist, y: -pointer_dist}, {x: 0, y: 0}];

                twn_pointer_path.to(service_pointer, pointer_time, {
                    bezier: {
                        values: pointer_circle,
                        curviness: 1.6},
                    ease: Power0.easeNone,
                    transformOrigin: "center center"
                });
            }

            //Defines behavior for service bubbles
            /*function serviceClick(ev) {
             
             
             //There's always an active service
             jQuery(".service.active").removeClass("active");
             
             var current = jQuery(ev.currentTarget);
             current.addClass("active");
             
             //There's a "serv-*" class for each bubble
             //   alert(current.attr("class"))
             var current_class = current.attr("class").split(" ")[1];
             var class_index = current_class.split('-')[1];
             
             $('#redirectid').val(services_data[class_index].endpoint);
             //  alert($('#redirectid').val());
             //  alert($('#errortxt').val());
             if ($('#errortxt').val() !== '' && typeof ($('#errortxt').val()) !== 'undefined')
             {
             $('#redirectid').val('');
             }
             $('#login').click();
             //Hides current text of the main bubble
             jQuery(use_copy).addClass("changing");
             
             //Sets pointer to the right position
             twn_pointer_path.tweenTo(class_index * (pointer_time / (2 * 6)));
             
             //After it's completely hidden, the text changes and becomes visible
             setTimeout(function () {
             var viewBoxY = 300 * class_index;
             symbol_copy.setAttribute("viewBox", "0 " + viewBoxY + " 300 300");
             jQuery(use_copy).removeClass("changing");
             }, 250);
             }*/

            //Array describes points for a whole circle in order to get
            //the right curve
            var half_circle = [{x: -serv_dist, y: 0}, {x: 0, y: serv_dist}, {x: serv_dist, y: 0}, {x: 0, y: -serv_dist}, {x: -serv_dist, y: 0}];

            //A simple object is used in the tween to retrieve its values
            var pivot_path = {x: half_circle[0].x, y: half_circle[0].y};

            //The object is animated with a duration based on how many bubbles
            //should be placed
            var twn_pivot_path = TweenMax.to(pivot_path, 16, {
                bezier: {
                    values: half_circle,
                    curviness: 1.5
                },
                ease: Linear.easeNone
            });

            services_data.reduce(function (count, serv) {
                addService(serv, count);
                return ++count;
            }, 0);

            //The variable is modified inside the function
            //but its also used later to toggle its class
            var twn_pointer_path = new TimelineMax({paused: true});
            createPointer();


            $(document).ready(function () {
                localStorage.setItem("passnotify", 'N');
                var gb = localStorage.getItem("passnotify");
                console.log(gb);

            <%
                session.setAttribute("UT", 0);
            %>


            });
        </script>  

</html>

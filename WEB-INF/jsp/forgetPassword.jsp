<%@page contentType="text/html"  pageEncoding="UTF-8" autoFlush="true"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html lang="en">

    <head>

        <title>AmeriDenti - Forget password</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="description" content="Billing Automation with latest innovations in technology and building" />
        <meta name="keywords" content="HealthOmation,Medical,Billing,automation solutions, Eligibility verification, ebill,Revenue Management,Denial Management,e-Consent Forms,Prior Auth Management,Claim Tracker">
        <meta name="author" content="Healthomation" />

        <!-- Favicon icon -->
        <link rel="icon" href="assets/images/AD-AmeriDenti Int Quare No BG (Small).png" type="image/x-icon">
        <!-- fontawesome icon -->
        <link rel="stylesheet" href="assets/fonts/fontawesome/css/fontawesome-all.min.css">
        <!-- animation css -->
        <link rel="stylesheet" href="assets/plugins/animation/css/animate.min.css">

        <!-- vendor css -->
        <link rel="stylesheet" href="assets/css/style.css">
        <script src="assets/js/vendor-all.min.js"></script>
        <script src="assets/plugins/bootstrap/js/bootstrap.min.js"></script>

    </head>
    <style>
        .center {
            display: block;
            margin-left: auto;
            margin-right: auto;
            width: 50%;
        }
    </style>

    <!-- [ signin-img-slider2 ] start -->

    <body class="auth-prod-slider">
        <div class="blur-bg-images"></div>
        <div class="auth-wrapper">
            <div class="auth-content container">
                <div class="card">
                    <div class="row align-items-center">
                        <div class="col-md-6">
                            <div class="card-body">

                                <form  action="#" >
                                    <img src="assets/images/AD-Logo-AmeriDenti Initial (SM).png" height="90" width="180"   class="img-fluid mb-4 center"  />
                                    <h4 class="mb-3 f-w-400"></h4>

                                    <c:set var="errorKey" value="sessionDuplicateLogin"/>
                                    <c:set var="errorLoginFailed" value="true"/>
                                    <c:set var="errorSessionExpired" value="sessionexpired"/>


                                    <div class="form-group mb-2">
                                        <label class="form-label">Enter Email</label>
                                        <input type="email"  name="email" id="email" autocomplete="off" class="form-control" required="true" placeholder="name@sitename.com" />
                                    </div>

                                    <c:choose>
                                        <c:when  test="${not empty SPRING_SECURITY_LAST_EXCEPTION}">
                                            <div class="alert alert-danger" role="alert">
                                                <c:out value="${SPRING_SECURITY_LAST_EXCEPTION}" />
                                            </div>
                                            <c:remove var = "SPRING_SECURITY_LAST_EXCEPTION" scope = "session" />
                                        </c:when >
                                        <c:when  test="${errorLoginFailed==param.error}">
                                            <div class="alert alert-danger" role="alert" >
                                                <a href="#!" class="alert-link">The username or password you entered was incorrect. Please try again.</a>
                                            </div>
                                        </c:when >
                                        <c:when  test="${errorKey==param.error}">
                                            <div class="card-body" style="background-color: #fbeed5;margin:0 0 10px 0;">
                                                This session has expired (possibly due to multiple concurrent logins being attempted as the same user).
                                            </div>
                                        </c:when >
                                    </c:choose>

                                    <button class="btn btn-primary mb-4" id="login" name="login" type="submit">Reset Password</button>

                                    <div class="alert alert-danger" role="alert" id="emailError"> 
                                    </div> 
                                    <br>
                                    <a href="#!" class="alert-link alert-danger">${message}</a>
                                    <br> 
                                    <p class="mb-2 text-muted"><a href="login" class="f-w-400">Back to Login</a></p> 
                                    <!--  <p class="mb-2 text-muted"><a href="#" data-toggle="modal" data-target="#forgetModal" class="mb-2 text-muted" style="font-weight:400">Forgot password?</a></p> -->
                                </form>
                            </div>
                        </div>
                        <div class="col-md-6 d-none d-md-block">
                            <div id="carouselExampleCaptions" class="carousel slide auth-slider" data-ride="carousel">

                                <ol class="carousel-indicators">
                                    <li data-target="#carouselExampleCaptions" data-slide-to="0" class="active"></li>
                                    <li data-target="#carouselExampleCaptions" data-slide-to="1"></li>
                                    <li data-target="#carouselExampleCaptions" data-slide-to="2"></li>
                                    <li data-target="#carouselExampleCaptions" data-slide-to="3"></li>
                                    <li data-target="#carouselExampleCaptions" data-slide-to="4"></li>
                                </ol>
                                <div class="carousel-inner">
                                    <div class="carousel-item active">
                                        <div class="auth-prod-slidebg bg-1"></div>
                                        <div class="carousel-caption d-none d-md-block">
                                            <img src="assets/images/AmeriDenti-Logo by Lianne (LG).png" alt="product images" class="img-fluid mb-5">
                                            <h5>Eligibility In-depth</h5>
                                            <p class="mb-5">AmeriDenti a market leading solution provider now provides an easy tool to check Patient’s insurance eligibility, and be aware of Deductibles, Co-Payments, Co-Insurances, OOPS and any Limitations upfront. Avoid surprises or Denied Claims.</p>
                                        </div>
                                    </div>
                                    <div class="carousel-item">
                                        <div class="auth-prod-slidebg bg-2"></div>
                                        <div class="carousel-caption d-none d-md-block">
                                            <img src="assets/images/product/ERA_List.jpg" alt="product images" class="img-fluid mb-5">
                                            <h5>Improved Transparency</h5>
                                            <p class="mb-5">Proof of AmeriDenti’s adherences to best practices; Improved transparency in billing, helping you keep track of the Incoming remittances, and the details of every Procedure that is paid or denied.</p>
                                        </div>
                                    </div>
                                    <div class="carousel-item">
                                        <div class="auth-prod-slidebg bg-3"></div>
                                        <div class="carousel-caption d-none d-md-block">
                                            <img src="assets/images/product/Reports.jpg" alt="product images" class="img-fluid mb-5">
                                            <h5>Dictations and Medical Records</h5>
                                            <p class="mb-5">Dictating and downloading medical records have never been easier. Search with any patient demo or file attribute and download records singularly or in multiples. Another feather in the cap of AmeriDenti’s Services.</p>
                                        </div>
                                    </div>
                                    <div class="carousel-item">
                                        <div class="auth-prod-slidebg bg-4"></div>
                                        <div class="carousel-caption d-none d-md-block">
                                            <img src="assets/images/product/Analytics.jpg" alt="product images" class="img-fluid mb-5">
                                            <h5>Management Information Systems</h5>
                                            <p class="mb-5">Useful Insights and Analytics from AmeriDenti helps you comprehend the trends in your Practice, and helps you take control and steer it in the right direction.</p>
                                        </div>
                                    </div>
                                    <div class="carousel-item">
                                        <div class="auth-prod-slidebg bg-4"></div>
                                        <div class="carousel-caption d-none d-md-block">
                                            <img src="assets/images/AmeriDenti-Logo by Lianne (LG).png" alt="product images" class="img-fluid mb-5">
                                            <h5>Become a Client</h5>
                                            <p class="mb-5">To use AmeriDenti’s professional services and world class training,<br> write to lianne@ameridenti.com or Call 1(866) 508-9491.</p>
                                        </div>
                                    </div>
                                </div>
                                <a class="carousel-control-prev" href="#carouselExampleCaptions" role="button" data-slide="prev"><span class="carousel-control-prev-icon" aria-hidden="true"></span></a>
                                <a class="carousel-control-next" href="#carouselExampleCaptions" role="button" data-slide="next"><span class="carousel-control-next-icon" aria-hidden="true"></span></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Required Js -->
        <script src="assets/js/vendor-all.min.js"></script>
        <script src="assets/plugins/bootstrap/js/bootstrap.min.js"></script> 


    </body>

    <script>
        //  var serverContext = [[@{/}]];

        $(document).ready(function () {
            $("#emailError").hide();
            $('form').submit(function (event) {
                $("#emailError").hide();
                resetPass(event);
            });
        });

        function resetPass(event) {
            event.preventDefault();
            var email = $("#email").val();
            $.post("resetPassword", {email: email}, function (data) {
                window.location.href = "login?message=" + data.message;
                $("title").html("Forget Password");
            }).fail(function (data) {
                $("#emailError").show();
                $("#emailError").html("Server facing issue in sending reset password email at preset. Try later. If the problem persists contact support");
                if (data.responseJSON.error.indexOf("MailError") > -1 || data.responseJSON.error.indexOf("InternalError") > -1)
                {
                    $("#emailError").show();
                    $("#emailError").html("Server facing issue in sending reset password email at preset. Try later. If the problem persists contact support");
                    // window.location.href =  "emailError.html";
                } else {
                    window.location.href = "login?message=" + data.responseJSON.message;
                }
                $("title").html("Forget Password");
            });
        }

        $(document).ajaxStart(function () {
            $("title").html("LOADING ...");
        });
    </script> 

</html>


<%@page contentType="text/html"  pageEncoding="UTF-8" autoFlush="true"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html lang="en">

    <head>

        <title>AmeriDenti - Update password</title>
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

        .password-verdict{
            color:#000;
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
                                <!--<h1>Reset Password</h1>-->
                                <form  action="#"  onsubmit="resetPass(event); return false;">
                                    <img src="assets/images/AD-Logo-AmeriDenti Initial (SM).png" height="90" width="180"   class="img-fluid mb-4 center"  />
                                    <h4 class="mb-3 f-w-400"></h4>

                                    <c:set var="errorKey" value="sessionDuplicateLogin"/>
                                    <c:set var="errorLoginFailed" value="true"/>
                                    <c:set var="errorSessionExpired" value="sessionexpired"/>


                                    <div class="form-group mb-2">
                                        <label class="form-label">New Password</label>
                                        <input id="password" name="newPassword" type="password" value="" autocomplete="off" class="form-control" required="true" placeholder="*********" />
                                    </div>
                                    <div class="form-group mb-2">
                                        <label class="form-label">Confirm Password</label>
                                        <input id="matchPassword" type="password" value="" autocomplete="off" class="form-control" required="true" placeholder="*********" />
                                    </div>
                                    <input  type="hidden" id="token" name="token" value='${param["token"]}' />
                                    <div id="globalError" class="col-sm-12 alert alert-danger" style="display:none" >Password does not match!</div>
                                    <c:choose>
                                        <c:when  test="${not empty SPRING_SECURITY_LAST_EXCEPTION}">
                                            <div class="alert alert-danger" role="alert">
                                                <c:out value="${SPRING_SECURITY_LAST_EXCEPTION}" />
                                            </div>
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

                                    <button class="btn btn-primary mb-4" id="login" name="login" type="submit"  onclick="savePass()" >Save Password</button>
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
        <script src="resources/pwstrength.js"></script>

    </body>

    <script th:inline="javascript">
                                        // var serverContext = [[@{/}]];

                                        $(document).ready(function () {
                                            $('form').submit(function (event) {
                                                savePass(event);
                                            });
                                            $(":password").keyup(function () {
                                                if ($("#password").val() != $("#matchPassword").val()) {
                                                    $("#globalError").show().html("Password does not match!");
                                                } else {
                                                    $("#globalError").html("").hide();
                                                }
                                            });
                                            options = {
                                                common: {minChar: 8},
                                                ui: {
                                                    showVerdictsInsideProgressBar: true,
                                                    showErrors: true,
                                                    errorMessages: {
                                                        wordLength: "Your password is too short",
                                                        wordNotEmail: "Do not use your email as your password",
                                                        wordSequences: "Your password contains sequences",
                                                        wordLowercase: "Use lower case characters",
                                                        wordUppercase: "Use upper case characters",
                                                        wordOneNumber: "Include numbers",
                                                        wordOneSpecialChar: "Include special characters"
                                                    }
                                                }
                                            };
                                            $('#password').pwstrength(options);
                                        });
                                        function savePass(event) {
                                            event.preventDefault();
                                            $(".alert").html("").hide();
                                            $(".error-list").html("");
                                            if ($("#password").val() != $("#matchPassword").val()) {
                                                $("#globalError").show().html("Password does not match!");
                                                return;
                                            }
                                            var formData = $('form').serialize();
                                            $.post("savePassword", formData, function (data) {
                                                window.location.href = "login?message=" + data.message;
                                            })
                                                    .fail(function (data) {
                                                        if (data.responseJSON.error.indexOf("InternalError") > -1) {
                                                            window.location.href = "login?message=" + data.responseJSON.message;
                                                        } else {
                                                            var errors = $.parseJSON(data.responseJSON.message);
                                                            $.each(errors, function (index, item) {
                                                                $("#globalError").show().html(item.defaultMessage);
                                                            });
                                                            errors = $.parseJSON(data.responseJSON.error);
                                                            $.each(errors, function (index, item) {
                                                                $("#globalError").show().append(item.defaultMessage + "<br/>");
                                                            });
                                                        }
                                                    });
                                        }

    </script>

</html>


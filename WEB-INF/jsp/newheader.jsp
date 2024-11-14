<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<!-- HTML5 Shim and Respond.js IE11 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 11]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
<!-- Meta -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />


<!-- Favicon icon -->
<link rel="icon" href="http://www.ameridenti.com/content/images/logo-1.png" type="image/x-icon">
<!-- fontawesome icon -->
<link rel="stylesheet" href="assets/fonts/fontawesome/css/fontawesome-all.min.css">
<!-- animation css -->
<link rel="stylesheet" href="assets/plugins/animation/css/animate.min.css">
<link rel="stylesheet" href="assets/plugins/data-tables/css/datatables.min.css">
<link rel="stylesheet" href="assets/plugins/notification/css/notification.min.css">
<link rel="stylesheet" href="assets/plugins/data-tables/css/select.dataTables.min.css">
<!-- vendor css -->
<link rel="stylesheet" href="assets/css/style.css">
<!-- select2 css -->
<link rel="stylesheet" href="assets/css/plugins/bootstrap-select.min.css">
<link rel="stylesheet" href="assets/css/plugins/select2.min.css">
<link rel="stylesheet" href="assets/css/pages/pages.css">
<link rel="stylesheet" href="assets/plugins/modal-window-effects/css/md-modal.css">

<style>
    h1, h2, h3, h4, h5 {
        color: #39465C !important;
        font-weight: 500;
    }


    .table-striped tbody tr:nth-of-type(2n+1) {
        background-color: rgb(243 243 240) !important;
    }

    .table.dataTable[class*="table-"] thead th {
        background: #79838b !important;
    }

    .table thead th {
        border-bottom: 1px solid #e2e5e8;
        font-size: 13px;
        color: #e7e6e6 !important;
        background: #0e0f0f;
        text-transform: uppercase;
    }
    .form-group {
        margin-bottom: 0.25rem !important;
    }

    .table td, .table th {
        border-top: 1px solid #e2e5e8;
        white-space: nowrap;
        padding: 0.25rem 0.5rem !important;
    }

    .table {
        width: 100%;
        margin-bottom: -1rem !important;
        color: #212529;
    }

    .model-bg-custom
    {
        background: linear-gradient(229deg, #cfd5db, #79838b) !important;
        color: #39465C !important;
        font-weight: 500;
    }

    .card {
        box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
    }

    .row {
        display: -ms-flexbox;
        display: flex;
        -ms-flex-wrap: wrap;
        flex-wrap: wrap;
        margin-right: -15px;
        margin-left: -15px;

    }
    
    .pcoded-navbar .header-logo {
    position: relative;
    align-items: center;
    display: inline-flex;
    float: left;
    background: #39465C !important;
    height: 64px;
    text-align: center;
    width: 264px;
    margin-right: 0;
    padding: 10px 25px;
    transition: all 0.3s ease-in-out;
    box-shadow: 0 1px 0 0 rgb(181 189 202 / 20%), 7px 0 15px 0 rgb(69 90 100 / 9%);
}

</style>

</head>
<body class="layout-1">
    <!-- [ Pre-loader ] start -->
    <div class="loader-bg">
        <div class="loader-track">
            <div class="loader-fill"></div>
        </div>
    </div>
    <!-- [ Pre-loader ] End -->
    <!-- [ navigation menu ] start -->
    <nav class="pcoded-navbar menupos-fixed navbar-gradient-blue brand-blue">
        <div class="navbar-wrapper ">
            <div class="navbar-brand header-logo">
                <a href="index.html" class="b-brand">
                    <img src="http://www.ameridenti.com/content/images/logo_white.png" style="height:60px !important; width:160px !important;" alt="" class="logo images">
                    <img src="" alt="" class="logo-thumb images">
                </a>
                <a class="mobile-menu" id="mobile-collapse" href="#!"><span></span></a>
            </div>
            <div class="navbar-content scroll-div" >



                <ul class="nav pcoded-inner-navbar ">

                    <!--<li data-username="animations" class="nav-item"><a href="landing.html" class="nav-link"><span class="pcoded-micon"><i class="feather icon-aperture"></i></span><span class="pcoded-mtext">New front</span></a></li>-->
                    <li data-username="dashboard default ecommerce sales Helpdesk ticket CRM analytics project" class="nav-item pcoded-hasmenu">
                        <a href="#!" class="nav-link"><span class="pcoded-micon"><i class="feather icon-home"></i></span><span class="pcoded-mtext">Dashboard</span></a>

                    </li>

                    <li data-username="vertical horizontal box layout RTL fixed static collapse menu color icon dark background image" class="nav-item pcoded-hasmenu" id="benefits">
                        <a href="#!" class="nav-link"><span class="pcoded-micon"><i class="feather icon-layout"></i></span><span class="pcoded-mtext">Benefits</span></a>
                        <ul class="pcoded-submenu">
                            <li class="pcoded-hasmenu"><a href="request" class="">New</a></li>
                            <li class="pcoded-hasmenu"><a href="evlist" class="">View</a></li>
                          
                        </ul>
                    </li>

                    <li data-username="vertical horizontal box layout RTL fixed static collapse menu color icon dark background image" class="nav-item pcoded-hasmenu" id="ERA">
                        <a href="#!" class="nav-link"><span class="pcoded-micon"><i class="fas fa-dollar-sign m-r-5"></i></span><span class="pcoded-mtext">ERA / EOB</span></a>
                        <ul class="pcoded-submenu">
                            <li class="pcoded-hasmenu"><a href="eobwise" class="">ERA List</a></li>
                            <li class="pcoded-hasmenu"><a href="#" class="">Claim</a>
                                <ul class="pcoded-submenu">
                                    <li class="pcoded-hasmenu"><a href="claimwise" class="">Claim List</a>
                                    <li class="pcoded-hasmenu"><a href="patientdetails" class="">Claim Detailed View</a></li>
                                </ul>
                            </li>
                        </ul>
                    </li>

                    <li data-username="vertical horizontal box layout RTL fixed static collapse menu color icon dark background image" class="nav-item pcoded-hasmenu" id="Notes">
                        <a href="#!" class="nav-link"><span class="pcoded-micon"><i class="fas fa-notes-medical m-r-5"></i></span><span class="pcoded-mtext">Notes Archive</span></a>
                        <ul class="pcoded-submenu">
                            <li class="pcoded-hasmenu"><a href="addnotes" class="">Upload</a></li>
                            <li class="pcoded-hasmenu"><a href="viewnotes" class="">View Notes</a></li>

                        </ul>
                    </li>

                    <li data-username="widget statistic data chart" class="nav-item pcoded-hasmenu" id="patient">
                        <a href="#!" class="nav-link"><span class="pcoded-micon"><i class="fas fa-id-card m-r-5"></i></span><span class="pcoded-mtext">Patient Demo</span></a>
                        <ul class="pcoded-submenu">
                            <li class=""><a href="patientdemography" class="">Demography</a></li>
                            <li class=""><a href="patientinsurance" class="">Insurance</a></li>
                            <li class=""><a href="patientsmokinghistory" class="">Smoking History</a></li>
                            <li class=""><a href="#" class="">Allergy</a></li>
                            <li class=""><a href="viewpatient" class="">View Patient</a></li>
                        </ul>


                    </li>
                    <li data-username="form elements advance component validation masking wizard picker select" class="nav-item pcoded-hasmenu" id ="practice">
                        <a href="#!" class="nav-link"><span class="pcoded-micon"><i class="fas fa-building m-r-5"></i></span><span class="pcoded-mtext">Practice</span></a>
                        <ul class="pcoded-submenu">
                            <li class="pcoded-hasmenu"><a href="practicemaster" class="">New</a></li>
                            <li class="pcoded-hasmenu"><a href="viewpractice" class="">View</a></li>
                        </ul>
                    </li>

                    <li data-username="basic components button alert badges breadcrumb pagination progress tooltip popovers carousel cards collapse tabs pills modal spinner grid system toasts typography extra shadows embeds" class="nav-item pcoded-hasmenu" id ="provider">
                        <a href="#!" class="nav-link"><span class="pcoded-micon"><i class="fas fa-stethoscope m-r-5"></i></span><span class="pcoded-mtext">Provider</span></a>
                        <ul class="pcoded-submenu">
                            <li class="pcoded-hasmenu"><a href="providermaster" class="">New</a></li>
                            <li class="pcoded-hasmenu"><a href="viewprovider" class="">View</a></li>
                        </ul>
                    </li>
                    <li data-username="advance components alert gridstack lightbox modal notification pnotify rating rangeslider slider syntax highlighter tour User card Timeline tree view nestable toolbar" class="nav-item pcoded-hasmenu" id ="payor">
                        <a href="#!" class="nav-link"><span class="pcoded-micon"><i class="fas fa-dollar-sign m-r-5"></i></span><span class="pcoded-mtext">Payor</span></a>
                        <ul class="pcoded-submenu">
                            <li class="pcoded-hasmenu"><a href="payormaster" class="">New</a></li>
                            <li class="pcoded-hasmenu"><a href="viewpayor" class="">View</a></li>
                        </ul>
                    </li>
                    <li data-username="extra components session timeout session idle timeout offline" class="nav-item pcoded-hasmenu" id="clearinghouse">
                        <a href="#!" class="nav-link"><span class="pcoded-micon"><i class="fas fa-tasks m-r-5"></i></span><span class="pcoded-mtext">Clearing House</span></a>
                        <ul class="pcoded-submenu">
                            <li class="pcoded-hasmenu"><a href="clearinghouse" class="">New</a></li>
                            <li class="pcoded-hasmenu"><a href="viewclearinghouse" class="">View</a></li>
                        </ul>
                    </li>

                    <li data-username="icons feather fontawsome flag material simple line themify" class="nav-item pcoded-hasmenu" id="entity">
                        <a href="#!" class="nav-link"><span class="pcoded-micon"><i class="feather icon-feather"></i></span><span class="pcoded-mtext">Entity</span></a>
                        <ul class="pcoded-submenu">
                            <li class="pcoded-hasmenu"><a href="entity" class="">New</a></li>
                            <li class="pcoded-hasmenu"><a href="viewentity" class="">View</a></li>
                        </ul>
                    </li>

                    <li data-username="form elements advance component validation masking wizard picker select" class="nav-item pcoded-hasmenu" id="master">
                        <a href="#!" class="nav-link"><span class="pcoded-micon"><i class="feather icon-file-text"></i></span><span class="pcoded-mtext">Master Forms</span></a>
                        <ul class="pcoded-submenu">
                            <li class=""><a href="benefitstatus" class="">Benefit Status</a></li>
                            <li class=""><a href="benefittype" class="">Benefit Type</a></li>
                            <li class=""><a href="employmentstatus" class="">Employment Status</a></li>
                            <li class=""><a href="ethnicity" class="">Ethnicity</a></li>
                            <!--   <li class=""><a href="#" class="">Frequency</a></li> -->
                            <li class=""><a href="maritalstatus" class="">Marital Status</a></li>
                            <li class=""><a href="preferredlanguage" class="">Preferred Language</a></li>
                            <li class=""><a href="race" class="">Race</a></li>
                            <li class=""><a href="religion" class="">Religion</a></li>
                            <li class=""><a href="usermas" class="">User Master</a></li>
                            <li class=""><a href="usertype" class="">User Type</a></li>
                            <li class=""><a href="sexorientation" class="">Sexual Orientation</a></li>
                            <li class=""><a href="smoking" class="">Smoking</a></li>
                            <li class=""><a href="othertobacco" class="">Other Tobacco</a></li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    <!-- [ navigation menu ] end -->



    <!-- [ Header ] start -->
    <header class="navbar pcoded-header navbar-expand-lg navbar-light headerpos-fixed header-blue">

        <div class="m-header">
            <a class="mobile-menu" id="mobile-collapse1" href="#!"><span></span></a>
            <a href="index.jsp" class="b-brand">
                <!-- <div class="b-bg">
                        <i class="fas fa-bolt"></i>
                </div>
                <span class="b-title">Dasho</span> -->
                <img src="http://www.ameridenti.com/content/images/logo-1.png" style="height:60px !important; width:160px !important;" alt="" class="logo images">
                <img alt="" class="logo-thumb images">
            </a>
        </div>
        <a class="mobile-menu" id="mobile-header" href="#!">
            <i class="feather icon-more-horizontal"></i>
        </a>
        <div class="collapse navbar-collapse">
            <a href="#!" class="mob-toggler"></a>
            <ul class="navbar-nav mr-auto">
                <li class="nav-item">
                    <div class="main-search open">
                        <h3 id = "Pagetitle"></h3>
                    </div>
                </li>
            </ul>
            <ul class="navbar-nav ml-auto">
                <li>
                    <!--<div class="dropdown">
                            <a class="dropdown-toggle" href="#" data-toggle="dropdown"><i class="icon feather icon-bell"></i></a>
                            <div class="dropdown-menu dropdown-menu-right notification">
                                    <div class="noti-head">
                                            <h6 class="d-inline-block m-b-0">Notifications</h6>
                                            <div class="float-right">
                                                    <a href="#!" class="m-r-10">mark as read</a>
                                                    <a href="#!">clear all</a>
                                            </div>
                                    </div>
                                    <ul class="noti-body">
                                            <li class="n-title">
                                                    <p class="m-b-0">NEW</p>
                                            </li>
                                            <li class="notification">
                                                    <div class="media">
                                                            <img class="img-radius" src="assets/images/user/avatar-1.jpg" alt="Generic placeholder image">
                                                            <div class="media-body">
                                                                    <p><strong>John Doe</strong><span class="n-time text-muted"><i class="icon feather icon-clock m-r-10"></i>5 min</span></p>
                                                                    <p>New ticket Added</p>
                                                            </div>
                                                    </div>
                                            </li>
                                            <li class="n-title">
                                                    <p class="m-b-0">EARLIER</p>
                                            </li>
                                            <li class="notification">
                                                    <div class="media">
                                                            <img class="img-radius" src="assets/images/user/avatar-2.jpg" alt="Generic placeholder image">
                                                            <div class="media-body">
                                                                    <p><strong>Joseph William</strong><span class="n-time text-muted"><i class="icon feather icon-clock m-r-10"></i>10 min</span></p>
                                                                    <p>Prchace New Theme and make payment</p>
                                                            </div>
                                                    </div>
                                            </li>
                                            <li class="notification">
                                                    <div class="media">
                                                            <img class="img-radius" src="assets/images/user/avatar-3.jpg" alt="Generic placeholder image">
                                                            <div class="media-body">
                                                                    <p><strong>Sara Soudein</strong><span class="n-time text-muted"><i class="icon feather icon-clock m-r-10"></i>12 min</span></p>
                                                                    <p>currently login</p>
                                                            </div>
                                                    </div>
                                            </li>
                                            <li class="notification">
                                                    <div class="media">
                                                            <img class="img-radius" src="assets/images/user/avatar-1.jpg" alt="Generic placeholder image">
                                                            <div class="media-body">
                                                                    <p><strong>Joseph William</strong><span class="n-time text-muted"><i class="icon feather icon-clock m-r-10"></i>30 min</span></p>
                                                                    <p>Prchace New Theme and make payment</p>
                                                            </div>
                                                    </div>
                                            </li>
                                            <li class="notification">
                                                    <div class="media">
                                                            <img class="img-radius" src="assets/images/user/avatar-3.jpg" alt="Generic placeholder image">
                                                            <div class="media-body">
                                                                    <p><strong>Sara Soudein</strong><span class="n-time text-muted"><i class="icon feather icon-clock m-r-10"></i>1 hour</span></p>
                                                                    <p>currently login</p>
                                                            </div>
                                                    </div>
                                            </li>
                                            <li class="notification">
                                                    <div class="media">
                                                            <img class="img-radius" src="assets/images/user/avatar-1.jpg" alt="Generic placeholder image">
                                                            <div class="media-body">
                                                                    <p><strong>Joseph William</strong><span class="n-time text-muted"><i class="icon feather icon-clock m-r-10"></i>2 hour</span></p>
                                                                    <p>Prchace New Theme and make payment</p>
                                                            </div>
                                                    </div>
                                            </li>
                                    </ul>
                                    <div class="noti-footer">
                                            <a href="#!">show all</a>
                                    </div>
                            </div>
                    </div> -->
                </li>
                <!--<li><a href="#!" class="displayChatbox"><i class="icon feather icon-mail"></i></a></li>-->
                <li>
                    <div class="dropdown drp-user">
                        <a href="#" class="dropdown" data-toggle="dropdown">
                            <i class="icon feather icon-settings"></i>
                        </a>
                        <div class="dropdown-menu dropdown-menu-right profile-notification">
                            <div class="pro-head">
                                <img src="http://www.ameridenti.com/content/images/logo_white.png" class="img-radius" alt="User-Profile-Image">
                                <span>
                                    <span class="text-muted">Ameridenti</span>
                                    <span class="h6">Lianne</span>
                                </span>
                            </div>
                            <ul class="pro-body">
                                <!--<li><a href="#!" class="dropdown-item"><i class="feather icon-settings"></i> Settings</a></li>
                                <li><a href="#!" class="dropdown-item"><i class="feather icon-user"></i> Profile</a></li>
                                <li><a href="message.html" class="dropdown-item"><i class="feather icon-mail"></i> My Messages</a></li>
                                <li><a href="auth-signin.html" class="dropdown-item"><i class="feather icon-lock"></i> Lock Screen</a></li> -->
                                <li><a href="../Ameridenti/" class="dropdown-item"><i class="feather icon-power text-danger"></i> Logout</a></li>
                            </ul>
                        </div>
                    </div> 
                </li>
            </ul>
        </div>

    </header>
    <!-- [ Header ] end -->


    <!-- [ chat user list ] start -->
    <section class="header-user-list">
        <a href="#!" class="h-close-text"><i class="feather icon-x"></i></a>
        <ul class="nav nav-tabs" id="chatTab" role="tablist">
            <li class="nav-item">
                <a class="nav-link active text-uppercase" id="chat-tab" data-toggle="tab" href="#chat" role="tab" aria-controls="chat" aria-selected="true"><i class="feather icon-message-circle mr-2"></i>Chat</a>
            </li>
            <li class="nav-item">
                <a class="nav-link text-uppercase" id="user-tab" data-toggle="tab" href="#user" role="tab" aria-controls="user" aria-selected="false"><i class="feather icon-users mr-2"></i>User</a>
            </li>
            <li class="nav-item">
                <a class="nav-link text-uppercase" id="setting-tab" data-toggle="tab" href="#setting" role="tab" aria-controls="setting" aria-selected="false"><i class="feather icon-settings mr-2"></i>Setting</a>
            </li>
        </ul>
        <div class="tab-content" id="chatTabContent">
            <div class="tab-pane fade show active" id="chat" role="tabpanel" aria-labelledby="chat-tab">
                <div class="h-list-header">
                    <div class="input-group">
                        <input type="text" id="search-friends" class="form-control" placeholder="Search Friend . . .">
                    </div>
                </div>
                <div class="h-list-body">
                    <div class="main-friend-cont scroll-div">
                        <div class="main-friend-list">
                            <div class="media userlist-box" data-id="1" data-status="online" data-username="Josephin Doe">
                                <a class="media-left" href="#!"><img class="media-object img-radius" src="assets/images/user/avatar-1.jpg" alt="Generic placeholder image ">
                                    <div class="live-status">3</div>
                                </a>
                                <div class="media-body">
                                    <h6 class="chat-header">Josephin Doe<small class="d-block text-c-green">Typing . . </small></h6>
                                </div>
                            </div>
                            <div class="media userlist-box" data-id="2" data-status="online" data-username="Lary Doe">
                                <a class="media-left" href="#!"><img class="media-object img-radius" src="assets/images/user/avatar-2.jpg" alt="Generic placeholder image">
                                    <div class="live-status">1</div>
                                </a>
                                <div class="media-body">
                                    <h6 class="chat-header">Lary Doe<small class="d-block text-c-green">online</small></h6>
                                </div>
                            </div>
                            <div class="media userlist-box" data-id="3" data-status="online" data-username="Alice">
                                <a class="media-left" href="#!"><img class="media-object img-radius" src="assets/images/user/avatar-3.jpg" alt="Generic placeholder image"></a>
                                <div class="media-body">
                                    <h6 class="chat-header">Alice<small class="d-block text-c-green">online</small></h6>
                                </div>
                            </div>
                            <div class="media userlist-box" data-id="4" data-status="offline" data-username="Alia">
                                <a class="media-left" href="#!"><img class="media-object img-radius" src="assets/images/user/avatar-1.jpg" alt="Generic placeholder image">
                                    <div class="live-status">1</div>
                                </a>
                                <div class="media-body">
                                    <h6 class="chat-header">Alia<small class="d-block text-muted">10 min ago</small></h6>
                                </div>
                            </div>
                            <div class="media userlist-box" data-id="5" data-status="offline" data-username="Suzen">
                                <a class="media-left" href="#!"><img class="media-object img-radius" src="assets/images/user/avatar-4.jpg" alt="Generic placeholder image"></a>
                                <div class="media-body">
                                    <h6 class="chat-header">Suzen<small class="d-block text-muted">15 min ago</small></h6>
                                </div>
                            </div>
                            <div class="media userlist-box" data-id="1" data-status="online" data-username="Josephin Doe">
                                <a class="media-left" href="#!"><img class="media-object img-radius" src="assets/images/user/avatar-1.jpg" alt="Generic placeholder image ">
                                    <div class="live-status">3</div>
                                </a>
                                <div class="media-body">
                                    <h6 class="chat-header">Josephin Doe<small class="d-block text-c-green">Typing . . </small></h6>
                                </div>
                            </div>
                            <div class="media userlist-box" data-id="2" data-status="online" data-username="Lary Doe">
                                <a class="media-left" href="#!"><img class="media-object img-radius" src="assets/images/user/avatar-2.jpg" alt="Generic placeholder image">
                                    <div class="live-status">1</div>
                                </a>
                                <div class="media-body">
                                    <h6 class="chat-header">Lary Doe<small class="d-block text-c-green">online</small></h6>
                                </div>
                            </div>
                            <div class="media userlist-box" data-id="3" data-status="online" data-username="Alice">
                                <a class="media-left" href="#!"><img class="media-object img-radius" src="assets/images/user/avatar-3.jpg" alt="Generic placeholder image"></a>
                                <div class="media-body">
                                    <h6 class="chat-header">Alice<small class="d-block text-c-green">online</small></h6>
                                </div>
                            </div>
                            <div class="media userlist-box" data-id="4" data-status="offline" data-username="Alia">
                                <a class="media-left" href="#!"><img class="media-object img-radius" src="assets/images/user/avatar-1.jpg" alt="Generic placeholder image">
                                    <div class="live-status">1</div>
                                </a>
                                <div class="media-body">
                                    <h6 class="chat-header">Alia<small class="d-block text-muted">10 min ago</small></h6>
                                </div>
                            </div>
                            <div class="media userlist-box" data-id="5" data-status="offline" data-username="Suzen">
                                <a class="media-left" href="#!"><img class="media-object img-radius" src="assets/images/user/avatar-4.jpg" alt="Generic placeholder image"></a>
                                <div class="media-body">
                                    <h6 class="chat-header">Suzen<small class="d-block text-muted">15 min ago</small></h6>
                                </div>
                            </div>
                            <div class="media userlist-box" data-id="1" data-status="online" data-username="Josephin Doe">
                                <a class="media-left" href="#!"><img class="media-object img-radius" src="assets/images/user/avatar-1.jpg" alt="Generic placeholder image ">
                                    <div class="live-status">3</div>
                                </a>
                                <div class="media-body">
                                    <h6 class="chat-header">Josephin Doe<small class="d-block text-c-green">Typing . . </small></h6>
                                </div>
                            </div>
                            <div class="media userlist-box" data-id="2" data-status="online" data-username="Lary Doe">
                                <a class="media-left" href="#!"><img class="media-object img-radius" src="assets/images/user/avatar-2.jpg" alt="Generic placeholder image">
                                    <div class="live-status">1</div>
                                </a>
                                <div class="media-body">
                                    <h6 class="chat-header">Lary Doe<small class="d-block text-c-green">online</small></h6>
                                </div>
                            </div>
                            <div class="media userlist-box" data-id="3" data-status="online" data-username="Alice">
                                <a class="media-left" href="#!"><img class="media-object img-radius" src="assets/images/user/avatar-3.jpg" alt="Generic placeholder image"></a>
                                <div class="media-body">
                                    <h6 class="chat-header">Alice<small class="d-block text-c-green">online</small></h6>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="tab-pane fade" id="user" role="tabpanel" aria-labelledby="user-tab">
                <div class="h-list-body">
                    <div class="main-friend-cont scroll-div">
                        <div class="main-friend-list">
                            <div class="media px-3 d-flex align-items-center mt-3">
                                <a class="media-left m-r-15" href="#!">
                                    <div class="hei-50 wid-50 bg-primary img-radius d-flex text-white f-22 align-items-center justify-content-center"><i class="icon feather icon-users"></i></div>
                                </a>
                                <div class="media-body">
                                    <p class="chat-header f-w-600 mb-0">New Group</p>
                                </div>
                            </div>
                            <div class="media p-3 d-flex align-items-center">
                                <a class="media-left m-r-15" href="#!">
                                    <div class="hei-50 wid-50 bg-primary img-radius d-flex text-white f-22 align-items-center justify-content-center"><i class="icon feather icon-user-plus"></i></div>
                                </a>
                                <div class="media-body">
                                    <p class="chat-header f-w-600 mb-0">New Contact</p>
                                </div>
                            </div>
                            <div class="media userlist-box" data-id="1" data-status="online" data-username="Josephin Doe">
                                <a class="media-left" href="#!"><img class="media-object img-radius" src="assets/images/user/avatar-1.jpg" alt="Generic placeholder image "></a>
                                <div class="media-body">
                                    <p class="chat-header">Josephin Doe<small class="d-block">i am not what happened . .</small></p>
                                </div>
                            </div>
                            <div class="media userlist-box" data-id="2" data-status="online" data-username="Lary Doe">
                                <a class="media-left" href="#!"><img class="media-object img-radius" src="assets/images/user/avatar-2.jpg" alt="Generic placeholder image"></a>
                                <div class="media-body">
                                    <h6 class="chat-header">Lary Doe<small class="d-block">Avalable</small></h6>
                                </div>
                            </div>
                            <div class="media userlist-box" data-id="3" data-status="online" data-username="Alice">
                                <a class="media-left" href="#!"><img class="media-object img-radius" src="assets/images/user/avatar-3.jpg" alt="Generic placeholder image"></a>
                                <div class="media-body">
                                    <h6 class="chat-header">Alice<small class="d-block">hear using Dasho</small></h6>
                                </div>
                            </div>
                            <div class="media userlist-box" data-id="4" data-status="offline" data-username="Alia">
                                <a class="media-left" href="#!">
                                    <div class="hei-50 wid-50 img-radius bg-success d-flex text-white f-22 align-items-center justify-content-center">A</div>
                                </a>
                                <div class="media-body">
                                    <h6 class="chat-header">Alia<small class="d-block text-muted">Avalable</small></h6>
                                </div>
                            </div>
                            <div class="media userlist-box" data-id="5" data-status="offline" data-username="Suzen">
                                <a class="media-left" href="#!"><img class="media-object img-radius" src="assets/images/user/avatar-4.jpg" alt="Generic placeholder image"></a>
                                <div class="media-body">
                                    <h6 class="chat-header">Suzen<small class="d-block text-muted">Avalable</small></h6>
                                </div>
                            </div>
                            <div class="media userlist-box" data-id="1" data-status="online" data-username="Josephin Doe">
                                <a class="media-left" href="#!">
                                    <div class="hei-50 wid-50 bg-danger img-radius d-flex text-white f-22 align-items-center justify-content-center">JD</div>
                                </a>
                                <div class="media-body">
                                    <h6 class="chat-header">Josephin Doe<small class="d-block text-muted">Don't send me image</small></h6>
                                </div>
                            </div>
                            <div class="media userlist-box" data-id="2" data-status="online" data-username="Lary Doe">
                                <a class="media-left" href="#!"><img class="media-object img-radius" src="assets/images/user/avatar-2.jpg" alt="Generic placeholder image"></a>
                                <div class="media-body">
                                    <h6 class="chat-header">Lary Doe<small class="d-block text-muted">not send free msg</small></h6>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="tab-pane fade" id="setting" role="tabpanel" aria-labelledby="setting-tab">
                <div class="p-4 main-friend-cont scroll-div">
                    <h6 class="mt-2"><i class="feather icon-monitor mr-2"></i>Desktop settings</h6>
                    <hr>
                    <div class="form-group mb-0">
                        <div class="switch switch-primary d-inline m-r-10">
                            <input type="checkbox" id="cn-p-1" checked>
                            <label for="cn-p-1" class="cr"></label>
                        </div>
                        <label class="f-w-600">Allow desktop notification</label>
                    </div>
                    <p class="text-muted ml-5">You get latest content at a time when data will updated</p>
                    <div class="form-group mb-0">
                        <div class="switch switch-primary d-inline m-r-10">
                            <input type="checkbox" id="cn-p-5">
                            <label for="cn-p-5" class="cr"></label>
                        </div>
                        <label class="f-w-600">Store Cookie</label>
                    </div>
                    <h6 class="mb-0 mt-5"><i class="feather icon-layout mr-2"></i>Application settings</h6>
                    <hr>
                    <div class="form-group mb-0">
                        <div class="switch switch-primary d-inline m-r-10">
                            <input type="checkbox" id="cn-p-3" checked>
                            <label for="cn-p-3" class="cr"></label>
                        </div>
                        <label class="f-w-600">Backup Storage</label>
                    </div>
                    <p class="text-muted mb-0 ml-5">Automaticaly take backup as par schedule</p>
                    <div class="form-group mb-4">
                        <div class="switch switch-primary d-inline m-r-10">
                            <input type="checkbox" id="cn-p-4" checked>
                            <label for="cn-p-4" class="cr"></label>
                        </div>
                        <label class="f-w-600">Allow guest to print file</label>
                    </div>
                    <h6 class="mb-0 mt-5"><i class="feather icon-globe mr-2"></i>System settings</h6>
                    <hr>
                    <div class="form-group mb-0">
                        <div class="switch switch-primary d-inline m-r-10">
                            <input type="checkbox" id="cn-p-2">
                            <label for="cn-p-2" class="cr"></label>
                        </div>
                        <label class="f-w-600">View other user chat</label>
                    </div>
                    <p class="text-muted ml-5">Allow to show public user message</p>
                </div>
            </div>
        </div>
    </section>
    <!-- [ chat user list ] end -->

    <!-- [ chat message ] start -->
    <section class="header-chat">
        <div class="h-list-header">
            <h6>Josephin Doe</h6>
            <a href="#!" class="h-back-user-list"><i class="feather icon-chevron-left"></i></a>
        </div>
        <div class="h-list-body">
            <div class="main-chat-cont scroll-div">
                <div class="main-friend-chat">
                    <div class="media chat-messages">
                        <a class="media-left photo-table" href="#!"><img class="media-object img-radius img-radius m-t-5" src="assets/images/user/avatar-2.jpg" alt="Generic placeholder image"></a>
                        <div class="media-body chat-menu-content">
                            <div class="">
                                <p class="chat-cont">hello tell me something</p>
                                <p class="chat-cont">about yourself?</p>
                            </div>
                            <p class="chat-time">8:20 a.m.</p>
                        </div>
                    </div>
                    <div class="media chat-messages">
                        <div class="media-body chat-menu-reply">
                            <div class="">
                                <p class="chat-cont">Ohh! very nice</p>
                            </div>
                            <p class="chat-time">8:22 a.m.</p>
                        </div>
                        <a class="media-right photo-table" href="#!"><img class="media-object img-radius img-radius m-t-5" src="assets/images/user/avatar-1.jpg" alt="Generic placeholder image"></a>
                    </div>
                    <div class="media chat-messages">
                        <a class="media-left photo-table" href="#!"><img class="media-object img-radius img-radius m-t-5" src="assets/images/user/avatar-2.jpg" alt="Generic placeholder image"></a>
                        <div class="media-body chat-menu-content">
                            <div class="">
                                <p class="chat-cont">can you help me?</p>
                            </div>
                            <p class="chat-time">8:20 a.m.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="h-list-footer">
            <div class="input-group">
                <input type="file" class="chat-attach" style="display:none">
                <a href="#!" class="input-group-prepend btn btn-success btn-attach">
                    <i class="feather icon-paperclip"></i>
                </a>
                <input type="text" name="h-chat-text" class="form-control h-send-chat" placeholder="Write hear . . ">
                <button type="submit" class="input-group-append btn-send btn btn-primary">
                    <i class="feather icon-message-circle"></i>
                </button>
            </div>
        </div>
    </section>




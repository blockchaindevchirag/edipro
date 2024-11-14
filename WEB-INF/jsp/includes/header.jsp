<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

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
<link rel="icon" href="assets/images/AD-AmeriDenti Int Quare No BG (Small).png" type="image/x-icon">
<!-- fontawesome icon -->
<link rel="stylesheet" href="assets/fonts/fontawesome/css/fontawesome-all.min.css">
<!-- animation css -->
<link rel="stylesheet" href="assets/plugins/animation/css/animate.min.css">
<link rel="stylesheet" href="assets/plugins/data-tables/css/datatables.min.css">
<link rel="stylesheet" href="assets/plugins/notification/css/notification.min.css">
<link rel="stylesheet" href="assets/plugins/data-tables/css/select.dataTables.min.css">
<link rel="stylesheet" href="assets/css/pages/fileupload.css">
<!-- vendor css -->
<link rel="stylesheet" href="assets/css/style.css">
<link rel="stylesheet" href="assets/css/evd_style.css">
<!-- select2 css -->
<link rel="stylesheet" href="assets/css/plugins/bootstrap-select.min.css">
<link rel="stylesheet" href="assets/css/plugins/select2.min.css">
<link rel="stylesheet" href="assets/css/pages/pages.css">
<link rel="stylesheet" href="assets/plugins/modal-window-effects/css/md-modal.css">
<!-- Rating css -->
<link rel="stylesheet" href="assets/plugins/ratting/css/bars-1to10.css">
<link rel="stylesheet" href="assets/css/plugins/daterangepicker.css">
<link rel="stylesheet" href="assets/js/plugins/summernote/summernote-bs4.min.css">
<!-- material datetimepicker css -->
<link rel="stylesheet" href="assets/plugins/material-datetimepicker/css/bootstrap-material-datetimepicker.css">
<!-- Bootstrap datetimepicker css -->
<link rel="stylesheet" href="assets/plugins/bootstrap-datetimepicker/css/bootstrap-datepicker3.min.css">
<link rel="stylesheet" href="assets/fonts/material/css/materialdesignicons.min.css">
<link rel="stylesheet" href="assets/css/layouts/layout-horizontal.css">

<!-- pnotify css -->
<link rel="stylesheet" href="assets/plugins/pnotify/css/pnotify.custom.min.css">
<!-- pnotify-custom css -->
<link rel="stylesheet" href="assets/css/pages/pnotify.css">
<link href="assets/css/bootstrap-duallistbox.css" rel="stylesheet" type="text/css"/>

<!-- Smart Wizard css -->
<link rel="stylesheet" href="assets/plugins/smart-wizard/css/smart_wizard.min.css">
<link rel="stylesheet" href="assets/plugins/smart-wizard/css/smart_wizard_theme_arrows.min.css">
<link rel="stylesheet" href="assets/plugins/smart-wizard/css/smart_wizard_theme_circles.min.css">
<link rel="stylesheet" href="assets/plugins/smart-wizard/css/smart_wizard_theme_dots.min.css">
<link href="assets/plugins/data-tables/css/fixedHeader.css" rel="stylesheet" type="text/css"/>
<link rel="stylesheet" href="assets/css/plugins/jquery.bootstrap-touchspin.min.css">
<link rel="stylesheet" href="assets/css/plugins/microtip.css">
<link rel="stylesheet" href="assets/css/plugins/bootstrap-timepicker.min.css">
<style>
    /* Notification Bar Starts */

    .notification-bar {
        height: 36px;
        padding: 9px 0px 19px;
        color: white;
        background-color: #eb8b00;
        border-bottom: 1px solid #bc6067;
        position: fixed;
        z-index: 30000;
        width: 100%;
        top: 0;
    }
    .notification-bar.timeout {
        background-color: #C95300;
    }
    .notification-bar a, .notification-bar a:visited,.notification-bar a:hover,.notification-bar a:focus {
        color: white;
        text-decoration: underline;
    }
    .notification-bar .inner {
        max-width: 1180px;
        margin: 0 auto;
    }
    .notification-bar .message {
        text-align: center;
        font-size: 13px; 
    }

    /*Notification Bar Ends*/
    .q-view{z-index:1;}
    .modal-backdrop.show {
        opacity: 0.5 !important;
    }
    .select2-container{
        z-index:1;
    }

    .select2-dropdown{
        z-index:1;

    }
    .select2-container--default .select2-selection--single {
        height:36px;
        border-color: #ced4da!important;
    }
    .select2-container--default .select2-selection--single .select2-selection__rendered {
        color: #444;
        line-height: 30px;
    }
    .select2-container--default .select2-selection--single .select2-selection__arrow {
        height: 30px;
    }
    .line-hgt,.custom-checkbox label{line-height:1.8;}
    
    .dataTables_scrollBody thead tr[role="row"]{
        visibility: collapse !important;
    }
    
    .dataTables_processing {z-index:1;}

    
</style>
<!--    <link rel="stylesheet" href="assets/css/plugins/select2.min.css">-->
</head>
<body class="layout-1">
    <!-- [ Pre-loader ] start -->
    <div class="loader-bg">
        <div class="loader-track">
            <div class="loader-fill"></div>
        </div>
    </div>
    <!-- [ Pre-loader ] End -->
    <div id="notification-bar" class="notification-bar timeout clear"  style="display: none;">
        <div class="inner">
            <div class="message"><strong>Hey!</strong> You will be logged off in <span id="countdown">600 seconds</span> due to inactivity. <a href="#" id="keepAlive">Click here to stay logged into Medendx.</a>
                <input type="hidden" id="countdownVal" value="600"/></div>
        </div>
    </div>
    <form id="timeouttrackeventId" name="timeouttrackeventname" action="timeouttrackevent" method="post" style="display:none;">
        <input type="hidden" name="userform.userid" value="" id="timeouttrackeventId_userform_userid"/>   
        <input type="hidden" name="userform.username" value="" id="timeouttrackeventId_userform_username"/>
        <input type="hidden" name="redirectflag" value="timeout" id="timeouttrackeventId_redirectflag"/>
        <input type="submit" value="Submit" id="eventlogId" formIds="timeouttrackeventId"/> 
    </form>

    <!-- [ navigation menu ] start -->
    <nav class="pcoded-navbar menupos-fixed menu-dark menu-item-icon-style6 icon-colored printdisable">
        <div class="navbar-wrapper ">
            <div class="navbar-brand header-logo">
                <a href="#" class="b-brand">
                    <img src="assets/images/AmeriDenti-Logo-header2.png"  alt="" class="logo images center">
                    <img src="assets/images/AD-Logo-AmeriDenti-Initial.png" style="height:60px !important; width:60px !important; margin-left: -15px;" alt="" class="logo-thumb images">
                </a>
                <a class="mobile-menu" id="mobile-collapse" href="#!"><span></span></a>
            </div>
            <div class="navbar-content scroll-div " id="menuid">
                <sec:authorize access="isAuthenticated()">
                    <ul class="nav pcoded-inner-navbar">
                        <!-- ROLE_ADMIN,ROLE_USER,ROLE_ENTITY_ADMIN,ROLE_ENTITY_STAFF,ROLE_CORP_PRACTICE,ROLE_CORP_ADMIN,ROLE_CORP_STAFF,ROLE_CORP_PROVIDER,
                                                ROLE_GROUPCLINIC_PROVIDER,ROLE_GROUPCLINIC_ADMIN,ROLE_GROUPCLINIC_STAFF,ROLE_BILLING_ADMIN,ROLE_BILLING_STAFF,ROLE_TRANSCRIBER,
                                                ROLE_EDITOR,ROLE_PROOFER,ROLE_PRACTICE_ADMIN,ROLE_PRACTICE_PROVIDER,ROLE_PRACTICE_STAFF,ROLE_REFERING_PROVIDER,ROLE_PATIENT-->
                        <!--<li data-username="animations" class="nav-item"><a href="landing.html" class="nav-link"><span class="pcoded-micon"><i class="feather icon-aperture"></i></span><span class="pcoded-mtext">New front</span></a></li>-->
                       
                        <sec:authorize access="hasAnyRole('ROLE_ADMIN,ROLE_USER,ROLE_ENTITY_ADMIN,ROLE_ENTITY_STAFF,ROLE_CORP_PRACTICE,ROLE_CORP_ADMIN,ROLE_CORP_STAFF,ROLE_CORP_PROVIDER,
                                       ROLE_GROUPCLINIC_PROVIDER,ROLE_GROUPCLINIC_ADMIN,ROLE_GROUPCLINIC_STAFF,ROLE_BILLING_ADMIN,ROLE_BILLING_STAFF,
                                       ROLE_PRACTICE_ADMIN,ROLE_PRACTICE_PROVIDER,ROLE_PRACTICE_STAFF,ROLE_REFERING_PROVIDER')"> 

                            <sec:authorize access="hasAnyAuthority('NEW_BENEFIT_PRIVILEGE','VIEW_BENEFIT_PRIVILEGE','BULK_BENEFIT_PRIVILEGE','JOBLIST_BENEFIT_PRIVILEGE')">
                                <li data-username="vertical horizontal box layout RTL fixed static collapse menu color icon dark background image" class="nav-item pcoded-hasmenu" id="benefits">
                                    <a href="#!" class="nav-link"><span class="pcoded-micon"><i class="feather icon-check-square"></i></span><span class="pcoded-mtext">Benefits</span></a>
                                    <ul class="pcoded-submenu">
                                        <sec:authorize access="hasAuthority('NEW_BENEFIT_PRIVILEGE')">
                                            <li class=""><a href="request" class="">New</a></li>
                                            </sec:authorize>
                                            <sec:authorize access="hasAuthority('VIEW_BENEFIT_PRIVILEGE')">
                                            <li class=""><a href="evlist" class="">View List</a></li>
                                            </sec:authorize>
                                            <sec:authorize access="hasAuthority('BULK_BENEFIT_PRIVILEGE')">
                                            <li class=""><a href="uploadbenefit" class="">Bulk EV</a></li>
                                            </sec:authorize>
                                            <sec:authorize access="hasAuthority('JOBLIST_BENEFIT_PRIVILEGE')">
                                            <li class=""><a href="joblist" class="">EV Job List</a></li>
                                            </sec:authorize>
                                    </ul>
                                </li> 
                            </sec:authorize>
                        </sec:authorize>
                        <sec:authorize access="hasAnyRole('ROLE_ADMIN,ROLE_USER,ROLE_ENTITY_ADMIN,ROLE_ENTITY_STAFF,ROLE_CORP_PRACTICE,ROLE_CORP_ADMIN,ROLE_CORP_STAFF,ROLE_CORP_PROVIDER,
                                       ROLE_GROUPCLINIC_PROVIDER,ROLE_GROUPCLINIC_ADMIN,ROLE_GROUPCLINIC_STAFF,ROLE_BILLING_ADMIN,ROLE_BILLING_STAFF,
                                       ROLE_EDITOR,ROLE_PROOFER,ROLE_PRACTICE_ADMIN,ROLE_PRACTICE_PROVIDER,ROLE_PRACTICE_STAFF,ROLE_REFERING_PROVIDER')"> 
                            <sec:authorize access="hasAuthority('VIEW_PATIENT_INFO')">
                                <li data-username="widget statistic data chart" class="nav-item pcoded-hasmenu" id="patient">
                                    <a href="#!" class="nav-link"><span class="pcoded-micon"><i class="fas fa-id-card m-r-5"></i></span><span class="pcoded-mtext">Patient Info</span></a>
                                    <ul class="pcoded-submenu">
                                        <li class=""><a href="patientdemography" class="">Demography</a></li>
                                        <li class=""><a href="patientinsurance" class="">Insurance</a></li>
                                        <li class=""><a href="patientsmokinghistory" class="">Smoking History</a></li>
                                        <li class=""><a href="viewpatient" class="">View Patient</a></li>
                                            <sec:authorize access="hasAnyRole('ROLE_ADMIN,ROLE_USER,ROLE_ENTITY_ADMIN,ROLE_ENTITY_STAFF,ROLE_CORP_PRACTICE,ROLE_CORP_ADMIN,ROLE_CORP_STAFF,ROLE_CORP_PROVIDER,
                                                           ROLE_GROUPCLINIC_PROVIDER,ROLE_GROUPCLINIC_ADMIN,ROLE_GROUPCLINIC_STAFF,ROLE_BILLING_ADMIN,ROLE_BILLING_STAFF,
                                                           ROLE_EDITOR,ROLE_PROOFER,ROLE_PRACTICE_ADMIN,ROLE_PRACTICE_PROVIDER,ROLE_PRACTICE_STAFF,ROLE_REFERING_PROVIDER')"> 
                                            <li class=""><a href="patient_checklist" class="">Patient Checklist</a></li>
                                            </sec:authorize>
                                        <li class=""><a href="surgicaltraysheet" class="">Surgical Tray Sheet</a></li> 
                                    </ul>  
                                </li>
                            </sec:authorize>
                        </sec:authorize>
                        <sec:authorize access="hasAnyRole('ROLE_ADMIN,ROLE_USER,ROLE_ENTITY_ADMIN,ROLE_ENTITY_STAFF,ROLE_CORP_PRACTICE,ROLE_CORP_ADMIN,ROLE_CORP_STAFF,ROLE_CORP_PROVIDER,
                                       ROLE_GROUPCLINIC_PROVIDER,ROLE_GROUPCLINIC_ADMIN,ROLE_GROUPCLINIC_STAFF,ROLE_BILLING_ADMIN,ROLE_BILLING_STAFF,
                                       ROLE_EDITOR,ROLE_PROOFER,ROLE_PRACTICE_ADMIN,ROLE_PRACTICE_PROVIDER,ROLE_PRACTICE_STAFF,ROLE_REFERING_PROVIDER')"> 
                            <sec:authorize access="hasAuthority('VIEW_SUPERBILL_PRIVILEGE')">
                                <li data-username="vertical horizontal box layout RTL fixed static collapse menu color icon dark background image" class="" id="ebill">
                                    <a href="ebill" class="nav-link"><span class="pcoded-micon"><i class="fas fa-stethoscope m-r-5" style="color:#FF4793;"></i></span><span class="pcoded-mtext">E-Superbill</span></a>
                                </li>
                            </sec:authorize>
                        </sec:authorize>


                        <%--sec:authorize access="hasAnyRole('ROLE_ADMIN,ROLE_USER,ROLE_ENTITY_ADMIN,ROLE_ENTITY_STAFF,ROLE_CORP_PRACTICE,ROLE_CORP_ADMIN,ROLE_CORP_STAFF,ROLE_CORP_PROVIDER,
                              ROLE_GROUPCLINIC_PROVIDER,ROLE_GROUPCLINIC_ADMIN,ROLE_GROUPCLINIC_STAFF,ROLE_BILLING_ADMIN,ROLE_BILLING_STAFF,
                              ROLE_EDITOR,ROLE_PROOFER,ROLE_PRACTICE_ADMIN,ROLE_PRACTICE_PROVIDER,ROLE_PRACTICE_STAFF,ROLE_REFERING_PROVIDER')"> 
                   
                          <!--  <li data-username="vertical horizontal box layout RTL fixed static collapse menu color icon dark background image" class="" id="ruleengine">
                                <a href="ruleengine" class="nav-link"><span class="pcoded-micon"><i class="fas fa-dot-circle m-r-5"></i></span><span class="pcoded-mtext">Rule Engine</span></a>
                            </li>  -->
                  
               </sec:authorize --%>


                        <sec:authorize access="hasAnyRole('ROLE_ADMIN,ROLE_USER,ROLE_ENTITY_ADMIN,ROLE_ENTITY_STAFF,ROLE_CORP_PRACTICE,ROLE_CORP_ADMIN,ROLE_CORP_STAFF,ROLE_CORP_PROVIDER,
                                       ROLE_GROUPCLINIC_PROVIDER,ROLE_GROUPCLINIC_ADMIN,ROLE_GROUPCLINIC_STAFF,ROLE_BILLING_ADMIN,ROLE_BILLING_STAFF,
                                       ROLE_EDITOR,ROLE_PROOFER,ROLE_PRACTICE_ADMIN,ROLE_PRACTICE_PROVIDER,ROLE_PRACTICE_STAFF,ROLE_REFERING_PROVIDER')"> 
                            <sec:authorize access="hasAuthority('NEW_PREESTIMATE_PRIVILEGE')">
                                <li data-username="vertical horizontal box layout RTL fixed static collapse menu color icon dark background image" class="" id="preestimate">
                                    <a href="preestimate" class="nav-link"><span class="pcoded-micon"><i class="fas fa-dot-circle m-r-5"></i></span><span class="pcoded-mtext">Pre-Estimate</span></a>
                                </li> 
                            </sec:authorize>
                        </sec:authorize>

                        <sec:authorize access="hasAnyRole('ROLE_ADMIN,ROLE_USER,ROLE_ENTITY_ADMIN,ROLE_ENTITY_STAFF,ROLE_CORP_PRACTICE,ROLE_CORP_ADMIN,ROLE_CORP_STAFF,ROLE_CORP_PROVIDER,
                                       ROLE_GROUPCLINIC_PROVIDER,ROLE_GROUPCLINIC_ADMIN,ROLE_GROUPCLINIC_STAFF,ROLE_BILLING_ADMIN,ROLE_BILLING_STAFF,
                                       ROLE_EDITOR,ROLE_PROOFER,ROLE_PRACTICE_ADMIN,ROLE_PRACTICE_PROVIDER,ROLE_PRACTICE_STAFF,ROLE_REFERING_PROVIDER')"> 
                            <sec:authorize access="hasAuthority('NEW_PREAUTHORIZATION_PRIVILEGE')">
                                <li data-username="vertical horizontal box layout RTL fixed static collapse menu color icon dark background image" class="" id="preauthorization">
                                    <a href="preauthorization" class="nav-link"><span class="pcoded-micon"><i class="fas fa-desktop m-r-5"></i></span><span class="pcoded-mtext">Pre-Auth Request</span></a>
                                </li>
                            </sec:authorize>
                        </sec:authorize>  

                        <sec:authorize access="hasAnyRole('ROLE_ADMIN,ROLE_USER,ROLE_ENTITY_ADMIN,ROLE_ENTITY_STAFF,ROLE_CORP_PRACTICE,ROLE_CORP_ADMIN,ROLE_CORP_STAFF,ROLE_CORP_PROVIDER,
                                       ROLE_GROUPCLINIC_PROVIDER,ROLE_GROUPCLINIC_ADMIN,ROLE_GROUPCLINIC_STAFF,ROLE_BILLING_ADMIN,ROLE_BILLING_STAFF,
                                       ROLE_EDITOR,ROLE_PROOFER,ROLE_PRACTICE_ADMIN,ROLE_PRACTICE_PROVIDER,ROLE_PRACTICE_STAFF,ROLE_REFERING_PROVIDER')"> 
                            <sec:authorize access="hasAuthority('NEW_PREAUTHORIZATION_PRIVILEGE')">
                                <li data-username="vertical horizontal box layout RTL fixed static collapse menu color icon dark background image" class="" id="radiology">
                                    <a href="radiology" class="nav-link"><span class="pcoded-micon"><i class="fas fa-sticky-note m-r-5"></i></span><span class="pcoded-mtext">Radiology Portal</span></a>
                                </li> 
                            </sec:authorize>
                        </sec:authorize>          

                        <sec:authorize access="hasAnyRole('ROLE_ADMIN,ROLE_USER,ROLE_ENTITY_ADMIN,ROLE_ENTITY_STAFF,ROLE_CORP_PRACTICE,ROLE_CORP_ADMIN,ROLE_CORP_STAFF,ROLE_CORP_PROVIDER,
                                       ROLE_GROUPCLINIC_PROVIDER,ROLE_GROUPCLINIC_ADMIN,ROLE_GROUPCLINIC_STAFF,ROLE_BILLING_ADMIN,ROLE_BILLING_STAFF,
                                       ROLE_EDITOR,ROLE_PROOFER,ROLE_PRACTICE_ADMIN,ROLE_PRACTICE_PROVIDER,ROLE_PRACTICE_STAFF,ROLE_REFERING_PROVIDER')"> 
                            <sec:authorize access="hasAuthority('LIST_CLAIM_PRIVILEGE')">
                                <li data-username="vertical horizontal box layout RTL fixed static collapse menu color icon dark background image" class="" id="claimtracker">
                                    <a href="claimtracking" class="nav-link"><span class="pcoded-micon"><i class="fas fa-dollar-sign m-r-5"></i></span><span class="pcoded-mtext">Claim Tracker</span></a>
                                </li> 
                            </sec:authorize>
                        </sec:authorize>
                        <sec:authorize access="hasAnyRole('ROLE_ADMIN,ROLE_ENTITY_ADMIN,
                                       ROLE_CORP_PROVIDER,
                                       ROLE_CORP_ADMIN,
                                       ROLE_GROUPCLINIC_ADMIN,
                                       ROLE_GROUPCLINIC_STAFF,
                                       ROLE_ENTITY_STAFF,
                                       ROLE_PRACTICE_STAFF,
                                       ROLE_PRACTICE_PROVIDER,
                                       ROLE_REFERING_PROVIDER,
                                       ROLE_GROUPCLINIC_PROVIDER,
                                       ROLE_CORP_STAFF,
                                       ROLE_PRACTICE_ADMIN,
                                       ROLE_BILLING_ADMIN,
                                       ROLE_BILLING_STAFF')">                                
                            <sec:authorize access="hasAnyAuthority('ROLE_LIST_ERA_PRIVILEGE','LIST_ALL_CLAIMS_PRIVILEGE','LIST_DENIED_CLAIM_PRIVILEGE','LIST_PARTLY_CLAIM_PRIVILEGE','LIST_UNDERPAID_CLAIM_PRIVILEGE','LIST_PAPER_EOB_PRIVILEGE','LIST_VIEW_PAPER_EOB_PRIVILEGE')">
                                <li data-username="vertical horizontal box layout RTL fixed static collapse menu color icon dark background image" class="nav-item pcoded-hasmenu" id="ERA">
                                    <a href="#!" class="nav-link"><span class="pcoded-micon"><i class="fas fa-dollar-sign m-r-5"></i></span><span class="pcoded-mtext">ERA / EOB</span></a>
                                    <ul class="pcoded-submenu">
                                        <sec:authorize access="hasAuthority('LIST_ERA_PRIVILEGE')">
                                            <li class=""><a href="eobwise" class="">ERA List</a></li>
                                            </sec:authorize>
                                            <sec:authorize access="hasAnyRole('ROLE_ADMIN,ROLE_USER,ROLE_ENTITY_ADMIN,ROLE_ENTITY_STAFF,ROLE_CORP_PRACTICE,ROLE_CORP_ADMIN,
                                                           ROLE_CORP_STAFF,ROLE_CORP_PROVIDER,ROLE_GROUPCLINIC_PROVIDER,ROLE_GROUPCLINIC_ADMIN,
                                                           ROLE_GROUPCLINIC_STAFF,ROLE_BILLING_ADMIN,ROLE_BILLING_STAFF,ROLE_EDITOR,
                                                           ROLE_PROOFER,ROLE_PRACTICE_ADMIN,ROLE_PRACTICE_PROVIDER,ROLE_PRACTICE_STAFF,ROLE_REFERING_PROVIDER')"> 
                                                <sec:authorize access="hasAuthority('LIST_ALL_CLAIMS_PRIVILEGE')">
                                                <li class="" id="claimwise"><a href="claimwise" class="">All Claim List</a></li>
                                                </sec:authorize>
                                            </sec:authorize>
                                            <sec:authorize access="hasAnyRole('ROLE_ADMIN,ROLE_USER,ROLE_ENTITY_ADMIN,ROLE_ENTITY_STAFF,ROLE_CORP_PRACTICE,
                                                           ROLE_CORP_ADMIN,ROLE_CORP_STAFF,ROLE_CORP_PROVIDER,ROLE_GROUPCLINIC_PROVIDER,ROLE_GROUPCLINIC_ADMIN,
                                                           ROLE_GROUPCLINIC_STAFF,ROLE_BILLING_ADMIN,ROLE_BILLING_STAFF,ROLE_EDITOR,
                                                           ROLE_PROOFER,ROLE_PRACTICE_ADMIN,ROLE_PRACTICE_PROVIDER,ROLE_PRACTICE_STAFF,ROLE_REFERING_PROVIDER')"> 
                                                <sec:authorize access="hasAuthority('LIST_DENIED_CLAIM_PRIVILEGE')">
                                                <li id="Denial" class=""  ><a href="denialwise" class="">Denied Claims</a></li>
                                                </sec:authorize>
                                            </sec:authorize>
                                            <sec:authorize access="hasAnyRole('ROLE_ADMIN,ROLE_USER,ROLE_ENTITY_ADMIN,ROLE_ENTITY_STAFF,ROLE_CORP_PRACTICE,
                                                           ROLE_CORP_ADMIN,ROLE_CORP_STAFF,ROLE_CORP_PROVIDER,ROLE_GROUPCLINIC_PROVIDER,ROLE_GROUPCLINIC_ADMIN,
                                                           ROLE_GROUPCLINIC_STAFF,ROLE_BILLING_ADMIN,ROLE_BILLING_STAFF,ROLE_EDITOR,
                                                           ROLE_PROOFER,ROLE_PRACTICE_ADMIN,ROLE_PRACTICE_PROVIDER,ROLE_PRACTICE_STAFF,
                                                           ROLE_REFERING_PROVIDER')"> 
                                                <sec:authorize access="hasAuthority('LIST_PARTLY_CLAIM_PRIVILEGE')">
                                                <li id="Party_Denial" class="" ><a href="partydenialwise" class="">Partly Paid Claims</a></li>
                                                </sec:authorize>
                                            </sec:authorize>
                                            <sec:authorize access="hasAnyRole('ROLE_ADMIN,ROLE_USER,ROLE_ENTITY_ADMIN,ROLE_ENTITY_STAFF,ROLE_CORP_PRACTICE,
                                                           ROLE_CORP_ADMIN,ROLE_CORP_STAFF,ROLE_CORP_PROVIDER,ROLE_GROUPCLINIC_PROVIDER,
                                                           ROLE_GROUPCLINIC_ADMIN,ROLE_GROUPCLINIC_STAFF,ROLE_BILLING_ADMIN,
                                                           ROLE_BILLING_STAFF,ROLE_EDITOR,ROLE_PROOFER,ROLE_PRACTICE_ADMIN,ROLE_PRACTICE_PROVIDER,
                                                           ROLE_PRACTICE_STAFF,ROLE_REFERING_PROVIDER')"> 
                                                <sec:authorize access="hasAuthority('LIST_UNDERPAID_CLAIM_PRIVILEGE')">
                                                <li id="Under_Denial" class="" ><a href="#" class="">Underpaid Claims</a></li>
                                                </sec:authorize>
                                            </sec:authorize>

                                        <li class=""><a href="adjustmentwise" class="" >Provider Adjustments</a></li>

                                        <!--   <sec:authorize access="hasAnyRole('ROLE_ADMIN,ROLE_USER,ROLE_ENTITY_ADMIN,ROLE_ENTITY_STAFF,ROLE_CORP_PRACTICE,
                                                       ROLE_CORP_ADMIN,ROLE_CORP_STAFF,ROLE_CORP_PROVIDER,ROLE_GROUPCLINIC_PROVIDER,
                                                       ROLE_GROUPCLINIC_ADMIN,ROLE_GROUPCLINIC_STAFF,ROLE_BILLING_ADMIN,
                                                       ROLE_BILLING_STAFF,ROLE_EDITOR,ROLE_PROOFER,ROLE_PRACTICE_ADMIN,ROLE_PRACTICE_PROVIDER,
                                                       ROLE_PRACTICE_STAFF,ROLE_REFERING_PROVIDER')"> 
                                            <sec:authorize access="hasAuthority('LIST_PAPER_EOB_PRIVILEGE')">
                                                <li id="papereob" class="" ><a href="uploadeob" class="">Paper EOB</a></li>
                                            </sec:authorize>
                                        </sec:authorize>
                                        <sec:authorize access="hasAnyRole('ROLE_ADMIN,ROLE_USER,ROLE_ENTITY_ADMIN,ROLE_ENTITY_STAFF,ROLE_CORP_PRACTICE,ROLE_CORP_ADMIN,
                                                       ROLE_CORP_STAFF,ROLE_CORP_PROVIDER,ROLE_GROUPCLINIC_PROVIDER,ROLE_GROUPCLINIC_ADMIN,
                                                       ROLE_GROUPCLINIC_STAFF,ROLE_BILLING_ADMIN,ROLE_BILLING_STAFF,
                                                       ROLE_EDITOR,ROLE_PROOFER,ROLE_PRACTICE_ADMIN,ROLE_PRACTICE_PROVIDER,ROLE_PRACTICE_STAFF,
                                                       ROLE_REFERING_PROVIDER')"> 
                                            <sec:authorize access="hasAuthority('LIST_VIEW_PAPER_EOB_PRIVILEGE')">
                                            <li id="viewpapereob" class=""  ><a href="vieweob" class="">View EOB</a></li>
                                            </sec:authorize>
                                        </sec:authorize> -->

                                    </ul>
                                </li>
                            </sec:authorize>

                        </sec:authorize>
                        <!--                    <li data-username="vertical horizontal box layout RTL fixed static collapse menu color icon dark background image" class="nav-item pcoded-hasmenu" id="ebill">
                                                <a href="#!" class="nav-link"><span class="pcoded-micon"><i class="fas fa-dollar-sign m-r-5"></i></span><span class="pcoded-mtext">E Super Bill</span></a>
                                                <ul class="pcoded-submenu">
                                                    <li class=""><a href="ebill" class="">E Super Bill</a></li>
                                                    <li id="esuperpm" class=""><a href="proceduremas" class="">Procedure Master</a></li>
                                                    <li id="esuperpc" class=""><a href="procedurecategory" class="">Procedure Category Master</a></li>
                                                    <li id="esupercpt" class=""><a href="noncpt" class="">NON - CPT Master</a></li>
                                                    <li id ="esupermod" class=""><a href="modifiermas" class="">Modifier Master</a></li>
                                                </ul>
                                            </li>-->


                        <sec:authorize access="hasAnyRole('ROLE_ADMIN,ROLE_USER,ROLE_ENTITY_ADMIN,ROLE_ENTITY_STAFF,ROLE_CORP_PRACTICE,ROLE_CORP_ADMIN,ROLE_CORP_PROVIDER,
                                       ROLE_GROUPCLINIC_PROVIDER,ROLE_GROUPCLINIC_ADMIN,ROLE_BILLING_ADMIN,
                                       ROLE_PRACTICE_ADMIN,ROLE_PRACTICE_PROVIDER,ROLE_REFERING_PROVIDER')"> 
                            <li data-username="vertical horizontal box layout RTL fixed static collapse menu color icon dark background image" class="nav-item pcoded-hasmenu" id="invportal">
                                <a href="#!" class="nav-link"><span class="pcoded-micon"><i class="fas fa-upload m-r-5"></i></span><span class="pcoded-mtext">Invoice Portal</span></a>
                                <ul class="pcoded-submenu">
                                    <sec:authorize access="hasAuthority('NEW_INVOICE_PRIVILEGE')">
                                        <li>
                                            <a href="invoice" class="nav-link"><span class="pcoded-micon"><i class="fas fa-tasks m-r-5"></i></span><span class="pcoded-mtext">Service Invoice</span></a>
                                        </li>

                                    </sec:authorize>
                                    <sec:authorize access="hasAuthority('VIEW_SUBSCRIPTION_INVOICE_PRIVILEGE')">
                                        <li>
                                            <a href="subscriptioninvoice" class="nav-link"><span class="pcoded-micon"><i class="fas fa-tasks m-r-5"></i></span><span class="pcoded-mtext">Subscription Invoice</span></a>
                                        </li>
                                    </sec:authorize>       
                                </ul>
                            </li>

                        </sec:authorize> 
                            
                        <li class="">
                            <a href="reports" class="nav-link"><span class="pcoded-micon"><i class="fas fa-file-invoice m-r-5"></i></span><span class="pcoded-mtext">Reports</span></a>
                        </li>

                        <sec:authorize access="hasAnyRole('ROLE_ADMIN,ROLE_ENTITY_ADMIN,ROLE_PRACTICE_ADMIN,ROLE_CORP_PROVIDER,
                                       ROLE_GROUPCLINIC_PROVIDER,ROLE_GROUPCLINIC_ADMIN,ROLE_GROUPCLINIC_STAFF,ROLE_ENTITY_STAFF,
                                       ROLE_PRACTICE_STAFF,ROLE_PRACTICE_PROVIDER,ROLE_REFERING_PROVIDER,
                                       ROLE_CORP_ADMIN,ROLE_CORP_STAFF,ROLE_CORP_PRACTICE,ROLE_BILLING_ADMIN,
                                       ROLE_BILLING_STAFF,ROLE_PROVIDER')">  

                            <sec:authorize access="hasAnyAuthority('UPLOAD_DOCUMENT_PRIVILEGE','LIST_DOCUMENT_PRIVILEGE')">

                                <li data-username="vertical horizontal box layout RTL fixed static collapse menu color icon dark background image" class="nav-item pcoded-hasmenu" id="docportal">
                                    <a href="#!" class="nav-link"><span class="pcoded-micon"><i class="fas fa-upload m-r-5" style="color: #FF4793;"></i></span><span class="pcoded-mtext">Document Portal</span></a>
                                    <ul class="pcoded-submenu">
                                        <sec:authorize access="hasAnyRole('ROLE_USER,ROLE_ENTITY_ADMIN,ROLE_ENTITY_STAFF,ROLE_CORP_PRACTICE,ROLE_CORP_ADMIN,
                                                       ROLE_CORP_STAFF,ROLE_CORP_PROVIDER,ROLE_GROUPCLINIC_PROVIDER,ROLE_GROUPCLINIC_ADMIN,
                                                       ROLE_GROUPCLINIC_STAFF,ROLE_BILLING_ADMIN,ROLE_BILLING_STAFF,ROLE_PRACTICE_ADMIN,
                                                       ROLE_PRACTICE_PROVIDER,ROLE_PRACTICE_STAFF,ROLE_REFERING_PROVIDER')"> 
                                            <sec:authorize access="hasAuthority('UPLOAD_DOCUMENT_PRIVILEGE')">
                                                <li class="" id="uploaddocument"><a href="uploaddocument" class="">Upload Document</a></li>
                                                </sec:authorize>
                                            </sec:authorize>
                                            <sec:authorize access="hasAnyRole('ROLE_ADMIN,ROLE_USER,ROLE_ENTITY_ADMIN,ROLE_ENTITY_STAFF,ROLE_CORP_PRACTICE,
                                                           ROLE_CORP_ADMIN,ROLE_CORP_STAFF,ROLE_CORP_PROVIDER,ROLE_GROUPCLINIC_PROVIDER,
                                                           ROLE_GROUPCLINIC_ADMIN,ROLE_GROUPCLINIC_STAFF,ROLE_BILLING_ADMIN,ROLE_BILLING_STAFF,
                                                           ROLE_PRACTICE_ADMIN,ROLE_PRACTICE_PROVIDER,ROLE_PRACTICE_STAFF,
                                                           ROLE_REFERING_PROVIDER')"> 
                                                <sec:authorize access="hasAuthority('LIST_DOCUMENT_PRIVILEGE')">
                                                <li class="" id="viewdocument"><a href="viewdocument" class="">View Document</a></li>
                                                </sec:authorize>
                                            </sec:authorize>

                                    </ul>
                                </li>
                            </sec:authorize>
                        </sec:authorize>
                        <%--sec:authorize access="hasAnyRole('ROLE_ENTITY_ADMIN,ROLE_PROOFER,ROLE_PRACTICE_ADMIN,ROLE_GROUPCLINIC_PROVIDER,
                                       ROLE_GROUPCLINIC_ADMIN,ROLE_GROUPCLINIC_STAFF,ROLE_ENTITY_STAFF,ROLE_PRACTICE_STAFF,
                                       ROLE_PRACTICE_PROVIDER,ROLE_REFERING_PROVIDER,ROLE_EDITOR,
                                       ROLE_TRANSCRIBER,ROLE_PROOFER,ROLE_PROFER_STAFF,ROLE_CORP_ADMIN,ROLE_CORP_PROVIDER,
                                       ROLE_BILLING_ADMIN,ROLE_BILLING_STAFF')"--%>  
                        <sec:authorize access="hasAnyRole('ROLE_USER,ROLE_ENTITY_ADMIN,ROLE_CORP_PRACTICE,ROLE_CORP_ADMIN,ROLE_CORP_STAFF,
                                       ROLE_CORP_PROVIDER,ROLE_BILLING_ADMIN,ROLE_BILLING_STAFF,ROLE_PRACTICE_PROVIDER,
                                       ROLE_REFERING_PROVIDER,ROLE_GROUPCLINIC_PROVIDER,ROLE_EDITOR,ROLE_TRANSCRIBER,ROLE_PROOFER')"> 
                            <sec:authorize access="hasAnyAuthority('NEW_NOTE_PRIVILEGE','VIEW_NOTE_PRIVILEGE','VIEW_ADMIN_NOTE_PRIVILEGE','ROLE_GROUPCLINIC_ADMIN','ROLE_GROUPCLINIC_STAFF')">
                                <li data-username="vertical horizontal box layout RTL fixed static collapse menu color icon dark background image" class="nav-item pcoded-hasmenu" id="Notes">
                                    <a href="#!" class="nav-link"><span class="pcoded-micon"><i class="fas fa-notes-medical m-r-5" style="color:#BBD536;"></i></span><span class="pcoded-mtext">Notes</span></a>
                                    <ul class="pcoded-submenu">
                                        <sec:authorize access="hasAnyRole('ROLE_USER,ROLE_CORP_PRACTICE,ROLE_CORP_ADMIN,ROLE_CORP_STAFF,
                                                       ROLE_CORP_PROVIDER,ROLE_BILLING_ADMIN,ROLE_BILLING_STAFF,ROLE_PRACTICE_PROVIDER,
                                                       ROLE_REFERING_PROVIDER,ROLE_GROUPCLINIC_PROVIDER')">
                                            <!-- <li id="createnotes" class=""><a href="createnotes" class="">Create Trans Notes</a></li> -->
                                            <sec:authorize access="hasAuthority('NEW_NOTE_PRIVILEGE')">
                                                <li id="createnotes" class=""><a href="createtransnotes" class="">Create Notes</a></li>
                                                </sec:authorize>
                                            </sec:authorize>
                                            <sec:authorize access="hasAnyRole('ROLE_GROUPCLINIC_PROVIDER,ROLE_CORP_PROVIDER,
                                                           ROLE_PRACTICE_PROVIDER, ROLE_REFERING_PROVIDER,ROLE_EDITOR,ROLE_TRANSCRIBER,ROLE_PROOFER')">
                                            <!--   <li class="viewnotes"><a href="viewtransnotes" class="">View Trans Notes</a></li> -->
                                            <sec:authorize access="hasAuthority('VIEW_NOTE_PRIVILEGE')">
                                                <li id="viewnotes" class=""><a href="viewdictanotes" class="">View Notes</a></li>
                                                </sec:authorize>
                                            </sec:authorize>
                                            <sec:authorize access="hasAnyRole('ROLE_USER,ROLE_ENTITY_ADMIN,ROLE_CORP_PRACTICE,ROLE_CORP_ADMIN,ROLE_CORP_STAFF,
                                                           ROLE_GROUPCLINIC_ADMIN,ROLE_GROUPCLINIC_STAFF,
                                                           ROLE_BILLING_ADMIN,ROLE_BILLING_STAFF')">
                                                <sec:authorize access="hasAuthority('VIEW_ADMIN_NOTE_PRIVILEGE')">
                                                <li id="viewdictanotesadmin" class=""><a href="viewdictanotesadmin" class="">View Notes</a></li>
                                                </sec:authorize>
                                            </sec:authorize>

                                    </ul>
                                </li>
                            </sec:authorize>
                        </sec:authorize>
                        <!-- Practice -->

                        <!--Provider -->

                        <!--Payor-->

                        <!-- Ticket -->
                        <sec:authorize access="hasAnyRole('ROLE_ADMIN,ROLE_ENTITY_ADMIN,ROLE_PRACTICE_ADMIN,ROLE_GROUPCLINIC_PROVIDER,
                                       ROLE_GROUPCLINIC_ADMIN,ROLE_GROUPCLINIC_STAFF,ROLE_ENTITY_STAFF,ROLE_PRACTICE_STAFF,
                                       ROLE_PRACTICE_PROVIDER,ROLE_REFERING_PROVIDER,ROLE_CORP_ADMIN,ROLE_CORP_STAFF,ROLE_CORP_PRACTICE,
                                       ROLE_CORP_PROVIDER,ROLE_PROVIDER,ROLE_REFERING_PROVIDER,ROLE_BILLING_ADMIN,ROLE_BILLING_STAFF')"> 
                            <sec:authorize access="hasAnyAuthority('NEW_TICKET_PRIVILEGE','VIEW_TICKET_PRIVILEGE')">
                                <li class="nav-item pcoded-hasmenu" id="ticket">
                                    <a href="#!" class="nav-link"><span class="pcoded-micon"><i class="fas fa-ticket-alt m-r-5"></i></span><span class="pcoded-mtext">Ticketing System</span></a>
                                    <ul class="pcoded-submenu">
                                        <%--sec:authorize access="hasAnyRole('ROLE_USER,ROLE_ENTITY_ADMIN,ROLE_ENTITY_STAFF,ROLE_CORP_PRACTICE,ROLE_CORP_ADMIN,ROLE_CORP_STAFF,
                                                       ROLE_CORP_PROVIDER,ROLE_GROUPCLINIC_PROVIDER,ROLE_GROUPCLINIC_ADMIN,ROLE_GROUPCLINIC_STAFF,
                                                       ROLE_BILLING_ADMIN,ROLE_BILLING_STAFF,ROLE_EDITOR,ROLE_PROOFER,ROLE_PRACTICE_ADMIN,
                                                       ROLE_PRACTICE_PROVIDER,ROLE_PRACTICE_STAFF,ROLE_REFERING_PROVIDER')"--%>
                                        <sec:authorize access="hasAuthority('NEW_TICKET_PRIVILEGE')">
                                            <li id="master22" class=""><a href="raiseticket" class="">Raise Ticket </a></li>
                                            </sec:authorize>
                                            <%--</sec:authorize>--%>
                                            <%--sec:authorize access="hasAnyRole('ROLE_USER,ROLE_ENTITY_ADMIN,ROLE_ENTITY_STAFF,ROLE_CORP_PRACTICE,
                                                           ROLE_CORP_ADMIN,ROLE_CORP_STAFF,ROLE_CORP_PROVIDER,ROLE_GROUPCLINIC_PROVIDER,
                                                           ROLE_GROUPCLINIC_ADMIN,ROLE_GROUPCLINIC_STAFF,ROLE_BILLING_ADMIN,ROLE_BILLING_STAFF,
                                                           ROLE_EDITOR,ROLE_PROOFER,ROLE_PRACTICE_ADMIN,ROLE_PRACTICE_PROVIDER,ROLE_PRACTICE_STAFF,
                                                           ROLE_REFERING_PROVIDER')"--%>
                                            <sec:authorize access="hasAuthority('VIEW_TICKET_PRIVILEGE')">
                                            <li id="master23" class=""><a href="viewticket" class="">View Ticket </a></li>
                                            </sec:authorize>
                                            <%--/sec:authorize--%>

                                    </ul>
                                </li> 
                            </sec:authorize>
                        </sec:authorize>
                        <sec:authorize access="hasAnyRole('ROLE_ADMIN,ROLE_ENTITY_ADMIN,ROLE_ENTITY_STAFF,
                                       ROLE_PRACTICE_ADMIN,ROLE_GROUPCLINIC_PROVIDER,ROLE_CORP_ADMIN,ROLE_BILLING_ADMIN,
                                       ROLE_GROUPCLINIC_ADMIN')"> 
                            <sec:authorize access="hasAnyAuthority('NEW_FEE_SCHEDULE_PRIVILEGE','UPLOAD_FEE_SCHEDULE_PRIVILEGE','VIEW_FEE_SCHEDULE_PRIVILEGE')">
                                <li data-username="vertical horizontal box layout RTL fixed static collapse menu color icon dark background image" class="nav-item pcoded-hasmenu" id="fee">
                                    <a href="#!" class="nav-link"><span class="pcoded-micon"><i class="fas fa-dollar-sign m-r-5"></i></span><span class="pcoded-mtext">Fee Schedule</span></a>
                                    <ul class="pcoded-submenu">
                                        <sec:authorize access="hasAuthority('UPLOAD_FEE_SCHEDULE_PRIVILEGE')">
                                            <li class=""><a href="fee_preestimate" class="">Entry</a></li> 
                                            </sec:authorize>

                                        <!--   <sec:authorize access="hasAuthority('NEW_FEE_SCHEDULE_PRIVILEGE')">
                                             <li class=""><a href="feeschedule" class="">Entry</a></li>
                                        </sec:authorize>
                                        <sec:authorize access="hasAuthority('UPLOAD_FEE_SCHEDULE_PRIVILEGE')">
                                    <li class=""><a href="uploadfeeschedule" class="">Upload</a></li> 
                                        </sec:authorize>
                                        <sec:authorize access="hasAuthority('VIEW_FEE_SCHEDULE_PRIVILEGE')">
                               <li class=""><a href="viewfee" class="">View</a></li> 
                                        </sec:authorize>-->
                                    </ul>
                                </li>
                            </sec:authorize>
                        </sec:authorize>
                        <sec:authorize access="hasAnyAuthority('NEW_PRACTICE_PRIVILEGE','VIEW_PRACTICE_PRIVILEGE','NEW_PROVIDER_PRIVILEGE','VIEW_PROVIDER_PRIVILEGE','NEW_PAYOR_PRIVILEGE','VIEW_PAYOR_PRIVILEGE',
                                       'NEW_CLEARINGHOUSE_PRIVILEGE','VIEW_CLEARINGHOUSE_PRIVILEGE','NEW_ENTITY_PRIVILEGE','VIEW_ENTITY_PRIVILEGE','NEW_GROUP_CLINIC','VIEW_GROUP_CLINIC',
                                       'NEW_CORPORATION','VIEW_CORPORATION','VIEW_BENEFIT_STATUS_PRIVILEGE','VIEW_BENEFIT_TYPE_PRIVILEGE','VIEW_GROUP_PRIVILEGE','VIEW_PROCEDURE_CODE_PRIVILEGE','VIEW_DIAGNOSTIC_CODE_PRIVILEGE',
                                       'VIEW_DOCUMENT_TYPE_PRIVILEGE','VIEW_EMPLOYEMENT_STATUS_PRIVILEGE','VIEW_ETHNICITY_PRIVILEGE','VIEW_MARITAL_STATUS_PRIVILEGE','VIEW_PREFERRED_LANG_PRIVILEGE',
                                       'VIEW_RACE_PRIVILEGE','VIEW_RELIGION_PRIVILEGE','VIEW_USER_MASTER_PRIVILEGE','VIEW_USER_TYPE_PRIVILEGE','VIEW_SEXUAL_ORIENT_PRIVILEGE','VIEW_SMOKING_PRIVILEGE',
                                       'VIEW_OTHER_TOBACCO_PRIVILEGE','VIEW_TEMPLATE_PRIVILEGE','VIEW_EVQUERY_PRIVILEGE','VIEW_EVRESULT_PRIVILEGE','VIEW_ALIAS_PRIVILEGE','VIEW_ALIAS_PRIVILEGE','VIEW_FAVORITES_PRIVILEGE',
                                       'VIEW_TICKET_STATUS_PRIVILEGE','VIEW_TICKET_PRIORITY_PRIVILEGE','VIEW_TICKET_TYPE_PRIVILEGE','VIEW_TICKET_SOURCE_PRIVILEGE','VIEW_AUTO_CONFIG_PRIVILEGE','VIEW_DOC_UPLOAD_ALERT_PRIVILEGE','VIEW_TICKET_ASSIGNEE_CONFIG_PRIVILEGE')">
                            <li data-username="vertical horizontal box layout RTL fixed static collapse menu color icon dark background image" class="nav-item pcoded-hasmenu" id="Config">
                                <a href="#!" class="nav-link"><span class="pcoded-micon"><i class="fas fa-tools m-r-5"></i></span><span class="pcoded-mtext">Configurations</span></a>
                                <ul class="pcoded-submenu">
                                    <sec:authorize access="hasAnyRole('ROLE_ADMIN,ROLE_ENTITY_ADMIN,ROLE_ENTITY_STAFF')">
                                        <sec:authorize access="hasAnyAuthority('NEW_PRACTICE_PRIVILEGE','VIEW_PRACTICE_PRIVILEGE')">
                                            <li class="pcoded-hasmenu" id ="headpractice">
                                                <a href="#!" class="nav-link"><span class="pcoded-micon"><i class="fas fa-building m-r-5"></i></span><span class="pcoded-mtext">Practice</span></a>
                                                <ul class="pcoded-submenu">
                                                    <sec:authorize access="hasAuthority('NEW_PRACTICE_PRIVILEGE')">
                                                        <li class=""><a href="practicemaster" class="">New</a></li>
                                                        </sec:authorize>
                                                        <sec:authorize access="hasAuthority('VIEW_PRACTICE_PRIVILEGE')">
                                                        <li class=""><a href="viewpractice" class="">View</a></li>
                                                        </sec:authorize>
                                                </ul>
                                            </li>
                                        </sec:authorize>
                                    </sec:authorize>
                                    <sec:authorize access="hasAnyRole('ROLE_ADMIN,ROLE_ENTITY_ADMIN')">
                                        <sec:authorize access="hasAnyAuthority('NEW_PROVIDER_PRIVILEGE','VIEW_PROVIDER_PRIVILEGE')">
                                            <li  class="pcoded-hasmenu" id ="provider">
                                                <a href="#!" class="nav-link"><span class="pcoded-micon"><i class="fas fa-stethoscope m-r-5"></i></span><span class="pcoded-mtext">Provider</span></a>
                                                <ul class="pcoded-submenu">
                                                    <sec:authorize access="hasAuthority('NEW_PROVIDER_PRIVILEGE')">
                                                        <li class=""><a href="providermaster" class="">New</a></li>
                                                        </sec:authorize>
                                                        <sec:authorize access="hasAuthority('VIEW_PROVIDER_PRIVILEGE')">
                                                        <li class=""><a href="viewprovider" class="">View</a></li>
                                                        </sec:authorize>

                                                </ul>
                                            </li>
                                        </sec:authorize>
                                    </sec:authorize>
                                    <%--</sec:authorize>--%>
                                    <sec:authorize access="hasAnyRole('ROLE_ADMIN')">
                                        <sec:authorize access="hasAnyAuthority('NEW_PAYOR_PRIVILEGE','VIEW_PAYOR_PRIVILEGE')">
                                            <li class="nav-item pcoded-hasmenu" id ="payor">
                                                <a href="#!" class="nav-link"><span class="pcoded-micon"><i class="fas fa-dollar-sign m-r-5"></i></span><span class="pcoded-mtext">Payor</span></a>
                                                <ul class="pcoded-submenu">
                                                    <sec:authorize access="hasAuthority('NEW_PAYOR_PRIVILEGE')">
                                                        <li class=""><a href="payormaster" class="">New</a></li>
                                                        </sec:authorize>
                                                        <sec:authorize access="hasAuthority('VIEW_PAYOR_PRIVILEGE')">
                                                        <li class=""><a href="viewpayor" class="">View</a></li>
                                                        </sec:authorize>
                                                </ul>
                                            </li>
                                        </sec:authorize>
                                    </sec:authorize>
                                    <sec:authorize access="hasAnyRole('ROLE_ADMIN,ROLE_ENTITY_ADMIN,ROLE_ENTITY_STAFF')">
                                        <sec:authorize access="hasAnyAuthority('NEW_CLEARINGHOUSE_PRIVILEGE','VIEW_CLEARINGHOUSE_PRIVILEGE')">
                                            <li  class="nav-item pcoded-hasmenu" id="clearinghouse">
                                                <a href="#!" class="nav-link"><span class="pcoded-micon"><i class="fas fa-tasks m-r-5"></i></span><span class="pcoded-mtext">Clearing House</span></a>
                                                <ul class="pcoded-submenu">
                                                    <sec:authorize access="hasAuthority('NEW_CLEARINGHOUSE_PRIVILEGE')">
                                                        <li class=""><a href="clearinghouse" class="">New</a></li>
                                                        </sec:authorize>
                                                        <sec:authorize access="hasAuthority('VIEW_CLEARINGHOUSE_PRIVILEGE')">
                                                        <li class=""><a href="viewclearinghouse" class="">View</a></li>
                                                        </sec:authorize>
                                                </ul>
                                            </li>
                                        </sec:authorize>
                                    </sec:authorize>
                                    <sec:authorize access="hasAnyRole('ROLE_ADMIN')">
                                        <sec:authorize access="hasAnyAuthority('NEW_ENTITY_PRIVILEGE','VIEW_ENTITY_PRIVILEGE')">
                                            <li class="nav-item pcoded-hasmenu" id="entity">
                                                <a href="#!" class="nav-link"><span class="pcoded-micon"><i class="feather icon-feather"></i></span><span class="pcoded-mtext">Entity</span></a>
                                                <ul class="pcoded-submenu">
                                                    <sec:authorize access="hasAuthority('NEW_ENTITY_PRIVILEGE')">
                                                        <li class=""><a href="entity" class="">New</a></li>
                                                        </sec:authorize>
                                                        <sec:authorize access="hasAuthority('VIEW_ENTITY_PRIVILEGE')">
                                                        <li class=""><a href="viewentity" class="">View</a></li>
                                                        </sec:authorize> 
                                                </ul>
                                            </li>
                                        </sec:authorize>
                                    </sec:authorize>
                                    <sec:authorize access="hasAnyRole('ROLE_ADMIN,ROLE_ENTITY_ADMIN')">
                                        <sec:authorize access="hasAnyAuthority('NEW_GROUP_CLINIC','VIEW_GROUP_CLINIC')">
                                            <li id="group_master" class="nav-item pcoded-hasmenu">
                                                <a href="#!" class="nav-link"><span class="pcoded-micon"><i class="fas fa-tasks m-r-5"></i></span><span class="pcoded-mtext">Group Clinic</span></a>
                                                <ul class="pcoded-submenu">
                                                    <sec:authorize access="hasAuthority('NEW_GROUP_CLINIC')">
                                                        <li class=""><a href="groupmaster" class="">New</a></li>
                                                        </sec:authorize>
                                                        <sec:authorize access="hasAuthority('VIEW_GROUP_CLINIC')">
                                                        <li class=""><a href="viewgroupmaster" class="">View</a></li>
                                                        </sec:authorize>  
                                                </ul>
                                            </li>
                                        </sec:authorize>
                                    </sec:authorize>
                                    <sec:authorize access="hasAnyRole('ROLE_ADMIN,ROLE_ENTITY_ADMIN')">
                                        <sec:authorize access="hasAnyAuthority('NEW_CORPORATION','VIEW_CORPORATION')">
                                            <li class="pcoded-hasmenu" id ="corppractice">
                                                <a href="#!" class="nav-link"><span class="pcoded-micon"><i class="fas fa-building m-r-5"></i></span><span class="pcoded-mtext">Corporation</span></a>
                                                <ul class="pcoded-submenu">
                                                    <sec:authorize access="hasAuthority('NEW_CORPORATION')">
                                                        <li class=""><a href="corpmaster" class="">New</a></li>
                                                        </sec:authorize> 
                                                        <sec:authorize access="hasAuthority('VIEW_CORPORATION')">
                                                        <li class=""><a href="viewcorp" class="">View</a></li>
                                                        </sec:authorize> 
                                                </ul>
                                            </li>
                                        </sec:authorize> 
                                    </sec:authorize>

                                    <sec:authorize access="hasAnyRole('ROLE_ADMIN,ROLE_ENTITY_ADMIN')">

                                        <li class="pcoded-hasmenu" id ="subscription">
                                            <a href="#!" class="nav-link"><span class="pcoded-micon"><i class="fas fa-building m-r-5"></i></span><span class="pcoded-mtext">Client Master</span></a>
                                            <ul class="pcoded-submenu">
                                                <li class=""><a href="subscription_master" class="">Add Client</a></li>
                                                <li class=""><a href="viewsubscription" class="">View Client</a></li>

                                            </ul>
                                        </li>

                                    </sec:authorize> 


                                        

                                    <sec:authorize access="hasAnyRole('ROLE_ADMIN,ROLE_ENTITY_ADMIN,ROLE_PRACTICE_ADMIN,ROLE_GROUPCLINIC_PROVIDER,
                                       ROLE_GROUPCLINIC_ADMIN,ROLE_GROUPCLINIC_STAFF,ROLE_ENTITY_STAFF,ROLE_PRACTICE_STAFF,
                                       ROLE_PRACTICE_PROVIDER,ROLE_REFERING_PROVIDER,ROLE_CORP_ADMIN,ROLE_CORP_STAFF,ROLE_CORP_PRACTICE,
                                       ROLE_CORP_PROVIDER,ROLE_BILLING_ADMIN,ROLE_BILLING_STAFF')">
                                        <sec:authorize access="hasAnyAuthority('VIEW_BENEFIT_STATUS_PRIVILEGE','VIEW_BENEFIT_TYPE_PRIVILEGE','VIEW_GROUP_PRIVILEGE','VIEW_PROCEDURE_CODE_PRIVILEGE','VIEW_DIAGNOSTIC_CODE_PRIVILEGE',
                                                       'VIEW_DOCUMENT_TYPE_PRIVILEGE','VIEW_EMPLOYEMENT_STATUS_PRIVILEGE','VIEW_ETHNICITY_PRIVILEGE','VIEW_MARITAL_STATUS_PRIVILEGE','VIEW_PREFERRED_LANG_PRIVILEGE',
                                                       'VIEW_RACE_PRIVILEGE','VIEW_RELIGION_PRIVILEGE','VIEW_USER_MASTER_PRIVILEGE','VIEW_USER_TYPE_PRIVILEGE','VIEW_SEXUAL_ORIENT_PRIVILEGE','VIEW_SMOKING_PRIVILEGE',
                                                       'VIEW_OTHER_TOBACCO_PRIVILEGE','VIEW_TEMPLATE_PRIVILEGE')">
                                            <li  class="pcoded-hasmenu" id="master">
                                                <a href="#!" class="nav-link"><span class="pcoded-micon"><i class="feather icon-file-text"></i></span><span class="pcoded-mtext">Master Forms</span></a>
                                                <ul class="pcoded-submenu">
                                                    <sec:authorize access="hasAnyRole('ROLE_ADMIN,ROLE_USER')"> 
                                                        <sec:authorize access="hasAuthority('VIEW_BENEFIT_STATUS_PRIVILEGE')">
                                                            <li id="master1" class=""><a href="benefitstatus" class="">Benefit Status</a></li>                                                
                                                            </sec:authorize>
                                                        </sec:authorize>
                                                        <sec:authorize access="hasAnyRole('ROLE_ADMIN,ROLE_USER')">
                                                            <sec:authorize access="hasAuthority('VIEW_BENEFIT_TYPE_PRIVILEGE')">
                                                            <li id="master2" class=""><a href="benefittype" class="">Benefit Type</a></li>
                                                            </sec:authorize>
                                                        </sec:authorize>
                                                        <sec:authorize access="hasAnyRole('ROLE_ADMIN,ROLE_USER')">
                                                            <sec:authorize access="hasAuthority('VIEW_GROUP_PRIVILEGE')">
                                                            <li id="master13" class=""><a href="group" class="">Group</a></li>
                                                            </sec:authorize>
                                                        </sec:authorize>
                                                        <sec:authorize access="hasAnyRole('ROLE_ADMIN,ROLE_USER')">
                                                            <sec:authorize access="hasAuthority('VIEW_PROCEDURE_CODE_PRIVILEGE')">
                                                            <!--  <li id="master14" class=""><a href="Codemaster" class="">Procedure Code</a></li> -->
                                                        </sec:authorize>
                                                    </sec:authorize>
                                                    <sec:authorize access="hasAnyRole('ROLE_ADMIN,ROLE_USER')">
                                                        <sec:authorize access="hasAuthority('VIEW_DIAGNOSTIC_CODE_PRIVILEGE')">
                                                            <li id="master15" class=""><a href="diagnosismaster" class="">Diagnostic Code</a></li>
                                                            </sec:authorize> 
                                                        </sec:authorize>
                                                        <sec:authorize access="hasAnyRole('ROLE_ADMIN,ROLE_USER,ROLE_ENTITY_ADMIN')">
                                                            <sec:authorize access="hasAuthority('VIEW_DOCUMENT_TYPE_PRIVILEGE')">
                                                            <li id="master16" class=""><a href="documentType" class="">Document Type</a></li>
                                                            </sec:authorize>

                                                    </sec:authorize>
                                                    <sec:authorize access="hasAnyRole('ROLE_ADMIN,ROLE_USER')">
                                                        <sec:authorize access="hasAuthority('VIEW_EMPLOYEMENT_STATUS_PRIVILEGE')">
                                                            <li id="master3" class=""><a href="employmentstatus" class="">Employment Status</a></li>
                                                            </sec:authorize>                                                
                                                        </sec:authorize>
                                                        <sec:authorize access="hasAnyRole('ROLE_ADMIN,ROLE_USER')">
                                                            <sec:authorize access="hasAuthority('VIEW_ETHNICITY_PRIVILEGE')">
                                                            <li id="master4" class=""><a href="ethnicity" class="">Ethnicity</a></li>
                                                            </sec:authorize>

                                                    </sec:authorize>
                                                    <sec:authorize access="hasAnyRole('ROLE_ADMIN,ROLE_USER')">
                                                        <!--   <li class=""><a href="#" class="">Frequency</a></li> -->
                                                        <sec:authorize access="hasAuthority('VIEW_MARITAL_STATUS_PRIVILEGE')">
                                                            <li id="master5" class=""><a href="maritalstatus" class="">Marital Status</a></li>
                                                            </sec:authorize>

                                                    </sec:authorize>
                                                    <sec:authorize access="hasAnyRole('ROLE_ADMIN,ROLE_USER')">
                                                        <sec:authorize access="hasAuthority('VIEW_PREFERRED_LANG_PRIVILEGE')">
                                                            <li id="master6" class=""><a href="preferredlanguage" class="">Preferred Language</a></li>
                                                            </sec:authorize>

                                                    </sec:authorize>
                                                    <sec:authorize access="hasAnyRole('ROLE_ADMIN,ROLE_USER')">
                                                        <sec:authorize access="hasAuthority('VIEW_RACE_PRIVILEGE')">
                                                            <li id="master7" class=""><a href="race" class="">Race</a></li>
                                                            </sec:authorize>
                                                        </sec:authorize>
                                                        <sec:authorize access="hasAnyRole('ROLE_ADMIN,ROLE_USER')">
                                                            <sec:authorize access="hasAuthority('VIEW_RELIGION_PRIVILEGE')">
                                                            <li id="master8" class=""><a href="religion" class="">Religion</a></li>
                                                            </sec:authorize>

                                                    </sec:authorize>
                                                    <sec:authorize access="hasAnyRole('ROLE_ADMIN,ROLE_USER,ROLE_ENTITY_ADMIN')">
                                                        <sec:authorize access="hasAuthority('VIEW_USER_MASTER_PRIVILEGE')">
                                                            <li id="user_master" class=""><a href="usermas" class="">User Master</a></li>
                                                            </sec:authorize>

                                                    </sec:authorize>

                                                    <sec:authorize access="hasAnyRole('ROLE_ADMIN,ROLE_USER')">
                                                        <sec:authorize access="hasAuthority('VIEW_USER_TYPE_PRIVILEGE')">
                                                            <li id="master9" class=""><a href="usertype" class="">User Type</a></li>
                                                            </sec:authorize>

                                                    </sec:authorize>
                                                    <sec:authorize access="hasAnyRole('ROLE_ADMIN,ROLE_USER')">
                                                        <sec:authorize access="hasAuthority('VIEW_SEXUAL_ORIENT_PRIVILEGE')">
                                                            <li id="master10" class=""><a href="sexorientation" class="">Sexual Orientation</a></li>   
                                                            </sec:authorize>

                                                    </sec:authorize>
                                                    <sec:authorize access="hasAnyRole('ROLE_ADMIN,ROLE_USER')">
                                                        <sec:authorize access="hasAuthority('VIEW_SMOKING_PRIVILEGE')">
                                                            <li id="master11" class=""><a href="smoking" class="">Smoking</a></li>
                                                            </sec:authorize>

                                                    </sec:authorize>
                                                    <sec:authorize access="hasAnyRole('ROLE_ADMIN,ROLE_USER')">
                                                        <sec:authorize access="hasAuthority('VIEW_OTHER_TOBACCO_PRIVILEGE')">
                                                            <li id="master12" class=""><a href="othertobacco" class="">Other Tobacco</a></li>
                                                            </sec:authorize>
                                                        </sec:authorize>
                                                        <sec:authorize access="hasAnyRole('ROLE_USER,ROLE_CORP_PRACTICE,ROLE_CORP_ADMIN,ROLE_CORP_STAFF,
                                                                       ROLE_CORP_PROVIDER,ROLE_BILLING_ADMIN,ROLE_BILLING_STAFF,ROLE_PATIENT')">
                                                        <li id="master24" class=""><a href="templatemap" class="">Trans Mapping</a></li>
                                                        </sec:authorize>
                                                        <sec:authorize access="hasAnyRole('ROLE_USER,ROLE_CORP_PRACTICE,ROLE_CORP_ADMIN,
                                                                       ROLE_CORP_STAFF,ROLE_CORP_PROVIDER,ROLE_BILLING_ADMIN,ROLE_BILLING_STAFF,
                                                                       ROLE_PATIENT')">
                                                        <li id="master25" class=""><a href="viewmapping" class="">View Mapping</a></li>
                                                        </sec:authorize>

                                                    <sec:authorize access="hasAnyRole('ROLE_ADMIN,ROLE_USER,ROLE_ENTITY_ADMIN,ROLE_ENTITY_STAFF')">
                                                        <sec:authorize access="hasAuthority('NEW_RADIOLOGY_CONFIG_PRIVILEGE')">
                                                            <li id="radiologyconfig" class=""><a href="radiologyconfig" class="">Radiology Config</a></li>
                                                            </sec:authorize> 
                                                        </sec:authorize>
                                                        <sec:authorize access="hasAnyRole('ROLE_ADMIN,ROLE_USER,ROLE_ENTITY_ADMIN,ROLE_ENTITY_STAFF')">
                                                            <sec:authorize access="hasAuthority('VIEW_RADIOLOGY_CONFIG_PRIVILEGE')">
                                                            <li id="viewradiologyconfig" class=""><a href="viewradiologyconfig" class="">View Radiology Config</a></li>
                                                            </sec:authorize> 
                                                        </sec:authorize>
                                                        <sec:authorize access="hasAnyRole('ROLE_ADMIN,ROLE_USER,ROLE_ENTITY_ADMIN,ROLE_ENTITY_STAFF')">                                                          
                                                        <li id="viewvisitreason" class=""><a href="visitreasonmaster" class="">Visit Reason</a></li>                                                           
                                                        </sec:authorize>    

                                                    <sec:authorize access="hasAnyRole('ROLE_USER,ROLE_CORP_PRACTICE,ROLE_CORP_ADMIN,ROLE_CORP_STAFF,
                                                                   ROLE_CORP_PROVIDER,ROLE_GROUPCLINIC_PROVIDER,ROLE_GROUPCLINIC_ADMIN,
                                                                   ROLE_GROUPCLINIC_STAFF,ROLE_BILLING_ADMIN,ROLE_BILLING_STAFF,
                                                                   ROLE_PROOFER,ROLE_PRACTICE_ADMIN,ROLE_PRACTICE_PROVIDER,ROLE_PRACTICE_STAFF,
                                                                   ROLE_REFERING_PROVIDER')">
                                                        <!-- <li id="master27" class=""><a href="templatemaster" class="">Template</a></li> -->
                                                        <sec:authorize access="hasAuthority('VIEW_TEMPLATE_PRIVILEGE')">
                                                            <li id="master27" class=""><a href="trans_templatemaster" class="">Template</a></li>
                                                            </sec:authorize> 
                                                        </sec:authorize> 
                                                </ul>
                                            </li>
                                        </sec:authorize>
                                    </sec:authorize>
                                    <sec:authorize access="hasAnyRole('ROLE_ADMIN,ROLE_ENTITY_ADMIN,ROLE_PRACTICE_ADMIN,
                                                   ROLE_GROUPCLINIC_ADMIN,ROLE_BILLING_ADMIN,ROLE_CORP_ADMIN')">
                                        <sec:authorize access="hasAnyAuthority('VIEW_EVQUERY_PRIVILEGE','VIEW_EVRESULT_PRIVILEGE','VIEW_ALIAS_PRIVILEGE','VIEW_ALIAS_PRIVILEGE','VIEW_FAVORITES_PRIVILEGE')">
                                            <li  class="pcoded-hasmenu" id="Setting">
                                                <a href="#!" class="nav-link"><span class="pcoded-micon"><i class="feather icon-file-plus"></i></span><span class="pcoded-mtext">EV</span></a>
                                                <ul class="pcoded-submenu">
                                                    <sec:authorize access="hasAuthority('VIEW_EVQUERY_PRIVILEGE')">
                                                        <li class=""><a href="viewevquery" class="">EV Query</a></li>
                                                        </sec:authorize>
                                                        <sec:authorize access="hasAuthority('VIEW_EVRESULT_PRIVILEGE')">
                                                        <li class=""><a href="viewevresult" class="">EV Result</a></li>
                                                        </sec:authorize>
                                                        <sec:authorize access="hasAuthority('VIEW_ALIAS_PRIVILEGE')">
                                                        <li class=""><a href="viewalias" class="">Alias</a></li> 
                                                        </sec:authorize>
                                                        <sec:authorize access="hasAuthority('VIEW_FAVORITES_PRIVILEGE')">
                                                        <li class=""><a href="favorites" class="">Favorites</a></li>   
                                                        </sec:authorize>

                                                </ul>
                                            </li>
                                        </sec:authorize>
                                    </sec:authorize>


                                    <%--<sec:authorize access="hasAnyRole('ROLE_ADMIN,ROLE_ENTITY_ADMIN')">--%>
                                    <sec:authorize access="hasAnyRole('ROLE_ADMIN,ROLE_USER,ROLE_ENTITY_ADMIN')">
                                        <sec:authorize access="hasAnyAuthority('VIEW_TICKET_STATUS_PRIVILEGE','VIEW_TICKET_PRIORITY_PRIVILEGE','VIEW_TICKET_TYPE_PRIVILEGE','VIEW_TICKET_SOURCE_PRIVILEGE','VIEW_AUTO_CONFIG_PRIVILEGE','VIEW_DOC_UPLOAD_ALERT_PRIVILEGE','VIEW_TICKET_ASSIGNEE_CONFIG_PRIVILEGE')">
                                            <li class="pcoded-hasmenu" id="ticketconfig">
                                                <a href="#!" class="nav-link"><span class="pcoded-micon"><i class="fas fa-ticket-alt m-r-5"></i></span><span class="pcoded-mtext">Ticketing Config</span></a>
                                                <ul class="pcoded-submenu">
                                                    <%--</sec:authorize>--%>

                                                    <sec:authorize access="hasAuthority('VIEW_TICKET_STATUS_PRIVILEGE')">
                                                        <li id="master17" class=""><a href="ticketstatusmaster" class="">Ticket Status </a></li>
                                                        </sec:authorize>

                                                    <sec:authorize access="hasAnyRole('ROLE_ADMIN,ROLE_USER,ROLE_ENTITY_ADMIN')">
                                                        <sec:authorize access="hasAuthority('VIEW_TICKET_PRIORITY_PRIVILEGE')">
                                                            <li id="master18" class=""><a href="ticketpriority" class="">Ticket Priority</a></li>
                                                            </sec:authorize>

                                                    </sec:authorize>
                                                    <sec:authorize access="hasAnyRole('ROLE_ADMIN,ROLE_USER,ROLE_ENTITY_ADMIN')">
                                                        <sec:authorize access="hasAuthority('VIEW_TICKET_TYPE_PRIVILEGE')">
                                                            <li id="master19" class=""><a href="tickettypemaster" class="">Ticket Type </a></li>
                                                            </sec:authorize>

                                                    </sec:authorize>
                                                    <sec:authorize access="hasAnyRole('ROLE_ADMIN,ROLE_USER,ROLE_ENTITY_ADMIN')">
                                                        <sec:authorize access="hasAuthority('VIEW_TICKET_SOURCE_PRIVILEGE')">
                                                            <li id="master20" class=""><a href="ticketsourcemaster" class="">Ticket Source </a></li>
                                                            </sec:authorize>

                                                    </sec:authorize>
                                                    <sec:authorize access="hasAnyRole('ROLE_ADMIN,ROLE_USER,ROLE_ENTITY_ADMIN')">
                                                        <sec:authorize access="hasAuthority('VIEW_AUTO_CONFIG_PRIVILEGE')">
                                                            <li id="master21" class=""><a href="autodescription" class="">Auto Desc </a></li>
                                                            </sec:authorize>

                                                    </sec:authorize>
                                                    <sec:authorize access="hasAnyRole('ROLE_USER,ROLE_ENTITY_ADMIN')">
                                                        <sec:authorize access="hasAuthority('VIEW_DOC_UPLOAD_ALERT_PRIVILEGE')">
                                                            <li class="" id="documentconfig"><a href="documentconfig" class="">Doc Upload Alert</a></li>
                                                            </sec:authorize>

                                                    </sec:authorize>
                                                    <sec:authorize access="hasAnyRole('ROLE_USER,ROLE_ENTITY_ADMIN')">
                                                        <sec:authorize access="hasAuthority('VIEW_TICKET_ASSIGNEE_CONFIG_PRIVILEGE')">
                                                            <li class="" id="ticketconfig"><a href="ticketconfig" class="">Ticket Assignee Config</a></li>
                                                            </sec:authorize>
                                                        </sec:authorize>

                                                </ul>
                                            </li>
                                        </sec:authorize>
                                    </sec:authorize>

                                    <sec:authorize access="hasAnyRole('ROLE_ADMIN')">
                                        <li class="nav-item pcoded-hasmenu" id="audiotest">
                                            <!-- <a href="audiotest" class="nav-link"><span class="pcoded-micon"><i class="feather icon-feather"></i></span><span class="pcoded-mtext">Audio</span></a> -->

                                        </li>
                                    </sec:authorize>

                                </ul>
                            </li> 
                        </sec:authorize>
                        <!-- ROLE_ADMIN,ROLE_USER,ROLE_ENTITY_ADMIN,ROLE_ENTITY_STAFF,ROLE_CORP_PRACTICE,ROLE_CORP_ADMIN,ROLE_CORP_STAFF,ROLE_CORP_PROVIDER,
                                                   ROLE_GROUPCLINIC_PROVIDER,ROLE_GROUPCLINIC_ADMIN,ROLE_GROUPCLINIC_STAFF,ROLE_BILLING_ADMIN,ROLE_BILLING_STAFF,ROLE_TRANSCRIBER,
                                                   ROLE_EDITOR,ROLE_PROOFER,ROLE_PRACTICE_ADMIN,ROLE_PRACTICE_PROVIDER,ROLE_PRACTICE_STAFF,ROLE_REFERING_PROVIDER,ROLE_PATIENT-->
                        <sec:authorize access="hasAnyRole('ROLE_ADMIN,ROLE_USER,ROLE_ENTITY_ADMIN,ROLE_CORP_ADMIN,
                                       ROLE_GROUPCLINIC_ADMIN,ROLE_PRACTICE_ADMIN')">
                            <!--------------Access  Privilege------------------>
                            <li data-username="vertical horizontal box layout RTL fixed static collapse menu color icon dark background image" class="nav-item pcoded-hasmenu" id="Accessprivilege">
                                <a href="#!" class="nav-link"><span class="pcoded-micon"><i class="fas fa-lock m-r-5"></i></span><span class="pcoded-mtext">Access  Privilege</span></a>
                                <ul class="pcoded-submenu">
                                    <li id="addprivilege" class=""><a href="access_privilege" class="">Access Privilege</a></li>
                                </ul>
                            </li>
                        </sec:authorize>
                    </ul>
                </sec:authorize>

            </div>

        </div>
    </nav>
    <!-- [ navigation menu ] end -->



    <!-- [ Header ] start -->
    <header class="navbar pcoded-header navbar-expand-lg navbar-light headerpos-fixed" style ="background-color: #17977e;">

        <div class="m-header">
            <a class="mobile-menu" id="mobile-collapse1" href="#!"><span></span></a>
            <a href="#" class="b-brand">
                <!-- <div class="b-bg">
                        <i class="fas fa-bolt"></i>
                </div>
                <span class="b-title">Dasho</span> -->
                <img src="assets/images/AmeriDenti-Logo-header2.png" style="height:60px !important; width:160px !important;" alt="" class="logo images">
                <img alt="" class="logo-thumb images">
            </a>
        </div>
        <a class="mobile-menu" id="mobile-header" href="#!">
            <i class="feather icon-more-horizontal"></i>
        </a>
        <div class="collapse navbar-collapse">
            <a href="#!" class="mob-toggler">


            </a>



            <ul class="navbar-nav mr-auto">
                <li class="nav-item">
                    <div class="main-search open">
                        <h3 id = "Pagetitle" style="color: white !important;"></h3>

                    </div>
                </li>
            </ul>

            <ul class="navbar-nav ml-auto">
                <li>
                    <a class="displayChatbox head-iconcolor" title="Manual Invoice" href="#"  id="manualinvoice"><i class="fa fa-dollar-sign"></i></a>
                </li>

                <li>
                    <a class="displayChatbox head-iconcolor" title="Raise Ticket" href="#"  id="raiseticket"><i class="icon feather icon-file-plus"></i></a>
                </li>
                <!--<li><a href="#!" class=""><i class="icon feather icon-mail"></i></a></li>-->
                <li>
                    <div class="dropdown">
                        <a class="dropdown-toggle head-iconcolor" href="#" data-toggle="dropdown"><i class="icon feather icon-bell"></i></a>
                        <span id="ticketbadge" class="pcoded-badge label label-danger" style="border-radius: 10px; padding: 1px 6px !important;"></span>
                        <div class="dropdown-menu dropdown-menu-right notification">
                            <div class="noti-head">
                                <h6 class="d-inline-block m-b-0">Notifications</h6>
                                <!--									<div class="float-right">
                                                                                                                <a href="#!" class="m-r-10">mark as read</a>
                                                                                                                <a href="#!">clear all</a>
                                                                                                        </div>-->
                            </div>
                            <ul class="noti-body">
                                <div id="newtag"></div>
                                <div id="eariertag"></div>
                            </ul>
                            <div class="noti-footer">
                                <a href="viewticket?para=2">show all</a>
                            </div>
                        </div>
                    </div>
                </li>                
                <li>
                    <div class="dropdown drp-user">
                        <a href="#" class="dropdown-toggle head-iconcolor" data-toggle="dropdown">
                            <i class="icon feather icon-settings"></i>
                        </a>
                        <div class="dropdown-menu dropdown-menu-right profile-notification">
                            <div class="pro-head">
                                <!--<img src="http://www.ameridenti.com/content/images/logo_white.png" class="img-radius" alt="User-Profile-Image">-->
                                <img src="assets/images/logo_white.png" class="img-radius" alt="User-Profile-Image">
                                <span>
                                    <span class="text-muted"><%=session.getAttribute("EntityName")%></span>
                                    <span class="h6"><%=session.getAttribute("LoginPra")%></span>
                                    <span class="h6"><%=session.getAttribute("LoginUsername")%></span>
                                </span>
                            </div>
                            <ul class="pro-body">
                                <li><a href="profilesetting" class="dropdown-item"><i class="feather icon-user"></i> Profile</a></li>
                                <li><a href="logout" class="dropdown-item"><i class="feather icon-power text-danger"></i> Logout</a></li>
                            </ul>
                        </div>
                    </div>
                </li>
            </ul>
        </div>

    </header>
    <!-- [ Header ] end -->

    

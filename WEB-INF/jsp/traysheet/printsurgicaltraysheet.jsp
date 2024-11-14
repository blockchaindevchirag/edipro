<%-- 
    Document   : printsurgicaltrayshhet
    Created on : Dec 23, 2022, 3:55:30 PM
    Author     : karth
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
     <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />


        <title>Surgical Tray Sheet</title>
        <jsp:include page="../includes/header.jsp"></jsp:include>
            <style>
                .table td, .table th {
                    border-top: 1px solid #e2e5e8;
                    white-space: nowrap;
                    padding: 1.05rem 0.75rem;
                }
                @media print {
                    @page {
                        size: auto;
                        margin: 40px 10px 35px;
                    }
                }
                @media print {
                    .printcss {
                        background-color: #E6E7E9 !important;
                        -webkit-print-color-adjust: exact; 
                    }
                    .pcoded-navbar {
                        display:  none;
                    }
                    .pcoded-navbar.navbar-collapsed{
                        width: 70px;
                    }
                }
                .printcss{
                    page-break-after: always;

                }
                .ulidigimgchk{
                    margin-right: 4px;
                    /*    margin-top: 2px;
                        margin-bottom: 5px;*/
                    margin-left:25px;
                }
                .ulliimg{
                    /*list-style-image: url(assets/images/chkbullet.png) !important;*/
                    margin:0px -13px !important;
                }
                .ulliimglbl{
                    display: inline-block !important;
                    vertical-align: top;
                    margin-top: -4px !important;
                    margin-left: 0px !important;
                }
            </style>
            <script>


            </script>
            <!-- [ Main Content ] start -->
        <div class="pcoded-main-container">
            <div class="pcoded-wrapper">
                <div class="pcoded-content">
                    <div class="pcoded-inner-content">
                        <div class="main-body">
                            <div class="page-wrapper">
                                <div class="row printcss" id="printareas">
                                    <div class="col-lg-12">                                        
                                        <div class="card statustic-card">
                                            <div style="padding: 10px 15px;" class="card-header bg-success border-0 ">
                                                <h5 class="text-white m-b-0">Visit Information</h5>

                                            </div>

                                        
                                    </div>


                                    
                                   


                                </div>
                            </div>
                            <!-- [ form-element ] end -->

                        </div>
                        <!-- [ Main Content ] end -->
                    </div>
                </div>
            </div>
        </div>
    </div>






    <!-- Required Js -->
    <jsp:include page="../includes/footer.jsp"></jsp:include>

<!--        <script src="assets/js/plugins/jquery.bootstrap.wizard.min.js"></script>
        <script src="assets/js/plugins/jquery.steps.min.js"></script>-->

        <script>


                                                $(document).ready(function () {

                                                                                                 });


    </script>

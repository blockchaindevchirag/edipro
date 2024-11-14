<%@page contentType="text/html"  pageEncoding="UTF-8" autoFlush="true"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Benefit Response</title>
        <jsp:include page="includes/header.jsp"></jsp:include>
           
       <script src="assets/js/vendor-all.min.js"></script>
        
        <script src="https://cdn.jsdelivr.net/npm/underscore@latest/underscore-umd-min.js" type="text/javascript"></script>
        <script src="assets/js/ev_response.js" type="text/javascript"></script>
        <style>
            .invoice-table th{
                width: 230px!important;
            }
            .invoice-table td{word-wrap: break-word!important; white-space: normal!important;}
            .table td, .table th {
/*                width: 450px !important;
                white-space: nowrap;*/
                border-top: 1px solid #e2e5e8;
                padding: 0.25rem 0.5rem !important;
            }
            .loader{
                position: fixed;
                left: 0px;
                top: 0px;
                width: 100%;
                height: 100%;
                z-index: 9999;
                background: url("data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='40' height='40' viewBox='0 0 50 50'%3E%3Cpath d='M28.43 6.378C18.27 4.586 8.58 11.37 6.788 21.533c-1.791 10.161 4.994 19.851 15.155 21.643l.707-4.006C14.7 37.768 9.392 30.189 10.794 22.24c1.401-7.95 8.981-13.258 16.93-11.856l.707-4.006z'%3E%3CanimateTransform attributeType='xml' attributeName='transform' type='rotate' from='0 25 25' to='360 25 25' dur='0.6s' repeatCount='indefinite'/%3E%3C/path%3E%3C/svg%3E") center / 50px no-repeat;
            }
            .card .card-header {
                background-color: transparent;
                border-bottom: 1px solid #e2e5e8;
                padding: 10px 25px !important;
                position: relative;
            }
            .card-body {
                -ms-flex: 1 1 auto;
                flex: 1 1 auto;
                padding: 0.85rem !important;
            }
            .table-responsive {
                /* display: inline-table !important;*/
                width: 100%;
                overflow-x: auto;
                -webkit-overflow-scrolling: touch;
            }
            .accordion {
                width: -webkit-fill-available !important;

            }

            body{
                line-height: 1.1 !important;
            }
            .card {
                border-radius: 15px;
                box-shadow: 0 0 0 1px #e2e5e8;
                border: none;
                margin-bottom: 12px !important;
                transition: all 0.5s ease-in-out;
            }

            #loopsegment1 .accordion .card .card-header  a:not(.collapsed) .rotate-icon {
                -webkit-transform: rotate(
                    180deg
                    );
                transform: rotate(
                    180deg
                    );
            }


            #loopsegmentop .accordion .card .card-header  a:not(.collapsed) .rotate-icon {
                -webkit-transform: rotate(
                    180deg
                    );
                transform: rotate(
                    180deg
                    );
            }

            #loopsegment5 .accordion .card .card-header  a:not(.collapsed) .rotate-icon {
                -webkit-transform: rotate(
                    180deg
                    );
                transform: rotate(
                    180deg
                    );
            }


            #accordionExample .card .card-header  a:not(.collapsed) .rotate-icon {
                -webkit-transform: rotate(
                    360deg
                    );
                transform: rotate(
                    360deg
                    );
            }



            a {
                color: #39465c;
            }

            .footer-fab {
                position: fixed;
                bottom: 70px;
                right: 30px !important;
                z-index: 1028;
            }


            .label-success1 {
                background: #ffffff !important;
                /* color: #fff; */
            }

            .label.label-success1 {
                /* background: #bd1313; */
                color: #0e1c1b !important;
            }

            .card .card-header h5 {
                margin-bottom: 0;
                color: #111;
                font-size: 16px;
                font-weight: 500;
                display: inline-block;
                margin-right: 10px;
                line-height: 1.1;
                position: relative;
                font-family: system-ui !important;
                text-align: justify !important;
            }

            /* .card .card-header h5 span
            //  {
                //  background-color: #3d505e !important;
                //  color: white !important;
                //  font-family: cursive !important;
               //   font-size: 15px !important;
             // } */

            /* Style the input */
            .on-page-search {
                width: 100%;
                font-size: 13px;
                line-height: 26px;
                color: #787d85;
                background-color: #fcfcfc;
                border: 1px solid #e0e1e1;
                padding: 5px 15px;
            }

            .on-page-search-other {
                width: 100%;
                font-size: 13px;
                line-height: 20px;
                color: #787d85;
                background-color: #fcfcfc;
                border: 1px solid #e0e1e1;
                padding: 5px 15px;
                margin: auto;
            }

            /* Style the list */
            .demo-links {
                border-bottom: none;
                padding: 5px 5px;
                line-height: 36px;
            }

            /* Style the results */
            .results {
                background: #de1919;
                color: white;
            }
            .results:hover {
                background: #333;
                color: white;
            }

            .card .card-header {
                background-color: transparent;
                border-bottom: 1px solid #e2e5e8;
                padding: 6px 25px !important;
                position: relative;
            }

        </style>

        
        <!-- [ Main Content ] start -->
    <section class="pcoded-main-container" id ="pagesection">
        <div class="pcoded-wrapper">
            <div class="pcoded-content">
                <div class="pcoded-inner-content">
                    <div class="main-body" style="padding: 15px;background: #E9ECEF; box-shadow: 0 4px 8px 0 rgb(0 0 0 / 20%), 0 6px 20px 0 rgb(0 0 0 / 65%); border-radius: 11px;">
                        <div class="page-wrapper">
                            <!-- [ breadcrumb ] start -->
                            <div class="page-header" style="margin-bottom: 6px !important;">
                                <div class="page-block">
                                    <div class="row align-items-center">
                                        <div class="col-md-12">
                                            <div class="page-header-title">

                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- [ breadcrumb ] end -->
                            <!-- [ Main Content ] start -->
                            <div class="row">
                                <!-- [ task-detail-left ] start -->
                                <div class="col-sm-6">
                                    <div class="card">
                                        <div class="card-header">
                                            <h6><i class="fas fa-id-card m-r-5"></i> Subscriber Details</h6>
                                        </div>
                                        <div class="card-body">
                                            <table class="table table-responsive invoice-table invoice-order table-borderless">
                                                <tbody>
                                                    <tr id="ptnamerow">
                                                        <th>Name</th>
                                                        <td class="text-left"><span id="ptname" ></span> &nbsp; <span style="font-style: italic;"  id="gender"> </span></td>
                                                    </tr>
                                                    <tr id="dobrow">
                                                        <th>DOB</th>
                                                        <td class="text-left"><span id="dob" /></td>
                                                    </tr>
                                                    <tr id="genderrow">
                                                        <th>Gender</th>
                                                        <td class="text-left"></td>
                                                    </tr>
                                                    <tr id="contactrow">
                                                        <th>Contact</th>
                                                        <td class="text-left"><span id="contact"  /></td>
                                                    </tr>
                                                    <tr id="addressrow">
                                                        <th>Address</th>
                                                        <td class="text-left"><p class="card-text" style="word-break: break-word; "><span id="address"   /></p></td>
                                                    </tr>
                                                    <tr id="patmemidrow">
                                                        <th>Member ID</th>
                                                        <td class="text-left"><span id="patmemid"   /></td>
                                                    </tr>
                                                    <tr id="statusrow">
                                                        <th>Status</th>
                                                        <td class="text-left"><span class="float-left"><span id="status" /></span></td>
                                                    </tr>
                                                    <tr id="efdaterow">
                                                        <th>Effect Date</th>
                                                        <td class="text-left"><span class="float-left"><span id="efdate"  /></span></td>
                                                    </tr>
                                                    <tr id="patdosrow">
                                                        <th>DOS</th>
                                                        <td class="text-left"><span id="patdos"   /></td>
                                                    </tr>

                                                    <tr id="subinsuredhead">
                                                        <th id="subinsured">Insured</th>
                                                        <td class="text-left"><span class="float-left"><span id="subinsuredval" style="word-break: break-word; " /></span></td>
                                                    </tr>

                                                    <tr id="subinsuredrelhead">
                                                        <th id="subinsuredrel">Relationship</th>
                                                        <td class="text-left"><span class="float-left"><span id="subinsuredrelval" style="word-break: break-word; " /></span></td>
                                                    </tr>

                                                    <tr id="subchangehead">
                                                        <th id="subchangerel">Change</th>
                                                        <td class="text-left"><span class="float-left"><span id="subchangeval" style="word-break: break-word; " /></span></td>
                                                    </tr>


                                                </tbody>
                                            </table>

                                            <hr><!-- comment -->
                                        </div>
                                        <div id="depentsegment">
                                            <div class="card-header">
                                                <h6><i class="fas fa-id-card m-r-5"></i> Dependent Details</h6>
                                            </div>
                                            <div class="card-body">
                                                <table class="table table-responsive invoice-table invoice-order table-borderless">
                                                    <tbody>
                                                        <tr id="depnamerow">
                                                            <th>Name</th>
                                                            <td class="text-left"><span id="depname" ></span> &nbsp; | <span style="font-style: italic;"  id="depgender"> </span></td>
                                                        </tr>
                                                        <tr id="depdobrow">
                                                            <th>DOB</th>
                                                            <td class="text-left"><span id="depdob" /></td>
                                                        </tr>
                                                        <!-- <tr id="depgenderrow">
                                                             <th>Gender</th>
                                                             <td class="text-left"><span id="depgender"   /></td>
                                                         </tr> -->
                                                        <tr id="depaddressrow">
                                                            <th>Address</th>
                                                            <td class="text-left"><p class="card-text" style="word-break: break-word; "><span id="depaddress"   /></p></td>
                                                        </tr>


                                                        <tr id="depref1">
                                                            <th><span id="deprefheader1"/></span></th>
                                                            <td class="text-left"><p class="card-text" style="word-break: break-word; "><span class="float-left"><span id="deprefval1"  /></span></p></td>
                                                        </tr>

                                                        <tr id="depref1de">
                                                            <th id="ref1dh">Desc</th>
                                                            <td class="text-left"><span class="float-left"><span id="deprefval1des" style="word-break: break-word; " /></span></td>
                                                        </tr>

                                                        <tr id="depref2">
                                                            <th><span id="deprefheader2"/></span></th>
                                                            <td class="text-left"><p class="card-text" style="word-break: break-word; "><span class="float-left"><span id="deprefval2"  /></span></p></td>
                                                        </tr>

                                                        <tr id="depref2de">
                                                            <th id="depref2dh">Desc</th>
                                                            <td class="text-left"><span class="float-left"><span id="deprefval2des" style="word-break: break-word; " /></span></td>
                                                        </tr>


                                                        <tr id="depref3">
                                                            <th><span id="deprefheader3"/></span></th>
                                                            <td class="text-left"><p class="card-text" style="word-break: break-word; "><span class="float-left"><span id="deprefval3"  /></span></p></td>
                                                        </tr>

                                                        <tr id="depref3de">
                                                            <th id="depref3dh">Desc</th>
                                                            <td class="text-left"><span class="float-left"><span id="deprefval3des" style="word-break: break-word; " /></span></td>
                                                        </tr>

                                                        <tr id="depinsuredhead">
                                                            <th id="depinsured">Insured</th>
                                                            <td class="text-left"><span class="float-left"><span id="depinsuredval" style="word-break: break-word; " /></span></td>
                                                        </tr>

                                                        <tr id="depinsuredrelhead">
                                                            <th id="depinsuredrel">Relationship</th>
                                                            <td class="text-left"><span class="float-left"><span id="depinsuredrelval" style="word-break: break-word; " /></span></td>
                                                        </tr>

                                                        <tr id="depchangehead">
                                                            <th id="depchangerel">Change</th>
                                                            <td class="text-left"><span class="float-left"><span id="depchangeval" style="word-break: break-word; " /></span></td>
                                                        </tr>


                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                        <hr>
                                        <jsp:include page="Provider.jsp"></jsp:include>
                                        </div>
                                    </div>

                                    <!-- Family Deduction-->
                                <jsp:include page="Payor.jsp"></jsp:include>

                                    <!--  <div id="ShowAllTabs"><a><span class="float-right">SHOW ALL</span> <i class="fa fa-chevron-down"></i></a></div>
                                      <div id="HideAllTabs"><a><span class="float-right">Hide ALL</span> <i class="fa fa-chevron-up"></i></a></div>-->
                                    <div class="card-body">
                                        <nav id="nestable-menu">
                                            <button id="showcollepse" class="btn btn-success m-b-10 m-r-10"   type="button" data-action="expand-all">Expand All</button>
                                            <button id="hidecollepse" class="btn btn-success m-b-10"  type="button" data-action="collapse-all" >Shrink All</button>
                                            <button id="btnedit"  class="btn btn-success m-b-10">Edit / Resubmit</button>
                                            <button id="export" class="btn btn-success m-b-10"  type="button" >Print</button>
                                            <a class="btn btn-danger m-b-10" href="javascript:window.history.back();"> Back </a> 
                                            <!-- <input class="form-control" id="mySearch" type="text"  placeholder="Search.."> -->
                                            <input class="on-page-search" placeholder="Search.."/>
                                        </nav></div>

                                    <div class="footer-fab">
                                        <div class="b-bg">
                                            <i class="fas fa-sort"></i>
                                        </div>
                                        <div class="fab-hover">
                                            <ul class="list-unstyled">
                                                <div id="ShowAllTabs">  <li><a href="#" id="showallancher" data-text="Expand All" class="btn btn-icon btn-rounded btn-info m-0"><i class="feather icon-layers"></i></a></li> </div>
                                                <div id="HideAllTabs"> <li><a href="#"  id="hideallancher" data-text="Shrink All" class="btn btn-icon btn-rounded btn-primary m-0"><i class="feather icon feather icon-book"></i></a></li> </div>
                                            </ul>
                                        </div>
                                    </div>


                                <jsp:include page="Healthbenefits.jsp"></jsp:include>


                                    <div class="col-xl-12 col-lg-12 task-detail-right" style= "padding-right: 15px; padding-left: 15px;" id="Otherpayer">

                                        <div class="card card-border-c-blue">
                                            <div class="card-header" style="background-color: #3d505e !important; text-align: center;">

                                                <h5><span  style="color: #fcfcfc  !important;">Other Payor</span></h5>
                                            </div>
                                        </div>

                                    <div id="loopsegmentop" style="width: -webkit-fill-available;">
                                    </div>
                                        </div>


                                    <div class="col-xl-12 col-lg-12 task-detail-right"  style= "padding-right: 15px; padding-left: 15px;" id="generallimitation">

                                        <div class="card card-border-c-blue">

                                            <div class="card-header" style="background-color: #3d505e !important; text-align: center;">

                                                <h5><span   style="color: #fcfcfc  !important;">General Limitations</span></h5>
                                            </div>
                                        </div>

                                    <div id="loopsegment1" style="width: -webkit-fill-available;">
                                    </div>
                                        </div>

                                    <!--  <button id="expand-collapse">Expand All</button> -->


                                <jsp:include page="Otherbenefits.jsp"></jsp:include>


                                    <div class="col-xl-12 col-lg-12 task-detail-right" style= "padding-right: 15px; padding-left: 15px;" id ="Uncoveredservices">
                                        <div class="card card-border-c-blue">
                                            <div class="card-header" style="background-color: #3d505e !important; text-align: center;">
                                                <h5><span   style="color: #fcfcfc  !important;">Uncovered Services</span></h5>
                                            </div>
                                        </div> 
                                    <div id="loopsegment5" style="width: -webkit-fill-available;">
                                    </div>
                                        </div>
                                    <div class="col-xl-12 col-lg-12 task-detail-right" style= "padding-right: 15px; padding-left: 15px;" id ="Errorhandling">
                                        <div class="card card-border-c-blue">
                                            <div class="card-header" style="background-color: #3d505e !important; text-align: center;">
                                                <h5><span   style="color: #fcfcfc  !important;">Error Message</span></h5>
                                            </div>
                                        </div> 
                                    </div>

                                    <!-- Error Handling-->
                                <jsp:include page="ErrorMsg.jsp"></jsp:include>

                                    <!-- [ task-detail-right ] end -->
                                </div>
                                <!-- [ Main Content ] end -->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div id="flading" class="loader">

            </div>
        </section>

        <!-- Required Js -->
    <jsp:include page="includes/footer.jsp"></jsp:include>





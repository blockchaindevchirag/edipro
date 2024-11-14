<%-- 
    Document   : viewsurgicaltraysheet
    Created on : Dec 23, 2022, 4:25:35 PM
    Author     : karth
--%>
<%@page contentType="text/html"  pageEncoding="UTF-8" autoFlush="true"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<html lang="en">

    <head>
        <title>Surgical Tray Sheet</title>
        <jsp:include page="../includes/header.jsp"></jsp:include>
            <style>
                a:hover {
                    color: #ffffff !important;
                    outline: none;
                    text-decoration: none;
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
                .font-style-label{
                    font-weight: bold;
                }
                .mb-0 a{
                    color: #17977e !important;
                }
                .mb-0 a:hover{
                    color: #17977e !important;
                }
                .card {
                    margin-bottom: 0px;
                }
                .mb-0 span{
                    margin-left: 24px;
                }
                .card-header {
                    padding: 10px 15px;
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
                function printDiv(printareas) {
                    var printContents = document.getElementById(printareas).innerHTML;
                    var originalContents = document.body.innerHTML;
                    document.body.innerHTML = printContents;

                    document.title = $('#patname').text() + "_eSB";
                    window.print();
                    document.body.innerHTML = originalContents;
                    window.location.reload();
                }
            </script>
            <!-- [ Main Content ] start -->
        <div class="pcoded-main-container">
            <div class="pcoded-wrapper">
                <div class="pcoded-content">
                    <div class="pcoded-inner-content">
                        <div class="main-body">
                            <div class="page-wrapper">
                                <div class="row1">
                                    <div class="col-md-121 col-sm-121">
                                        <div class="card1 card-border-c-blue1">
                                            <div class="card-header1">

                                                <a class="btn btn-sm btn-primary sm-btm-size" title="Print" onclick="printDiv('printareas')">
                                                    Print
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row printcss" id="printareas">


                                    <div class="col-lg-12">

                                        <div class="card statustic-card">
                                            <div style="padding: 10px 15px;" class="card-header bg-success border-0 ">
                                                <h5 class="text-white m-b-0">Visit Information</h5>
                                            </div>


                                            <div class="card-body">
                                                <div class="row">
                                                    <div class="col-sm" >  
                                                        <div class="form-group row">
                                                            <label class="col-sm-4 col-form-label font-style-label"  for="ddlpractice">Patient</label>
                                                            <div class="col-sm-8">
                                                                <label class="col-form-label " id="patname"  for="ddlpractice">${surgicaldetail.ddlpatientid} </label>
                                                        </div>
                                                    </div> 
                                                    <div class="form-group row">
                                                        <label class="col-sm-4 col-form-label font-style-label"  for="ddlpractice">Full Name</label>
                                                        <div class="col-sm-8">
                                                            <label class="col-form-label " id="patgender"  for="ddlpractice"></label>
                                                        </div>


                                                    </div> 
                                                    <div class="form-group row">
                                                        <label class="col-sm-4 col-form-label font-style-label"  for="ddlpractice">Email</label>
                                                        <div class="col-sm-8">
                                                            <label class="col-form-label " id="patdob"  for="ddlpractice"></label>
                                                        </div>                                                                   

                                                    </div> 
                                                    <div class="form-group row">
                                                        <label class="col-sm-4 col-form-label font-style-label"  for="ddlpractice">Insurance</label>
                                                        <div class="col-sm-8">
                                                            <label class="col-form-label " id="insurance"  for="ddlpractice"></label>
                                                        </div>                                                                   

                                                    </div> 
                                                    <div class="form-group row">
                                                        <label class="col-sm-4 col-form-label font-style-label"  for="ddlpractice">Gender</label>
                                                        <div class="col-sm-8">
                                                            <label class="col-form-label " id="insurance"  for="ddlpractice"></label>
                                                        </div>                                                                   

                                                    </div> 
                                                    <div class="form-group row">
                                                        <label class="col-sm-4 col-form-label font-style-label"  for="ddlpractice">DOB</label>
                                                        <div class="col-sm-8">
                                                            <label class="col-form-label " id="insurance"  for="ddlpractice"></label>
                                                        </div>                                                                   

                                                    </div> 
                                                    <div class="form-group row">
                                                        <label class="col-sm-4 col-form-label font-style-label"  for="ddlpractice">Address</label>
                                                        <div class="col-sm-8">
                                                            <label class="col-form-label " id="insurance"  for="ddlpractice"></label>
                                                        </div>                                                                   

                                                    </div> 
                                                </div> 
                                                <div class="col-sm" >  
                                                    <div class="form-group row">
                                                        <label class="col-sm-4 col-form-label font-style-label"  for="ddlpractice">Practice</label>
                                                        <div class="col-sm-8">
                                                            <label class=" col-form-label "  id="practice">${surgicaldetail.practice}</label>
                                                        </div>
                                                    </div> 
                                                    <div class="form-group row">
                                                        <label class="col-sm-4 col-form-label font-style-label"  for="ddlpractice">City</label>
                                                        <div class="col-sm-8">
                                                            <label class=" col-form-label "  id="practice"></label>
                                                        </div>
                                                    </div> 
                                                    <div class="form-group row">
                                                        <label class="col-sm-4 col-form-label font-style-label"  for="ddlpractice">State</label>
                                                        <div class="col-sm-8">
                                                            <label class="col-form-label "  id="prid"></label>
                                                        </div>
                                                    </div> 
                                                    <div class="form-group row">
                                                        <label class="col-sm-4 col-form-label font-style-label"  for="ddlpractice">Zip Code</label>
                                                        <div class="col-sm-8">
                                                            <label class="col-form-label "  id="memid"></label>
                                                        </div>
                                                    </div> 
                                                    <div class="form-group row">
                                                        <label class="col-sm-4 col-form-label font-style-label"  for="ddlpractice"></label>
                                                        <div class="col-sm-8">
                                                            <label class="col-form-label "  id="memid"></label>
                                                        </div>
                                                    </div> 
                                                    <div class="form-group row">
                                                        <label class="col-sm-4 col-form-label font-style-label"  for="ddlpractice">Phone Number</label>
                                                        <div class="col-sm-8">
                                                            <label class="col-form-label "  id="memid"></label>
                                                        </div>
                                                    </div> 
                                                    <div class="form-group row">
                                                        <label class="col-sm-4 col-form-label font-style-label"  for="ddlpractice">Driver License</label>
                                                        <div class="col-sm-8">
                                                            <label class="col-form-label "  id="memid"></label>
                                                        </div>
                                                    </div> 
                                                    <div class="form-group row">
                                                        <label class="col-sm-4 col-form-label font-style-label"  for="ddlpractice">SSN</label>
                                                        <div class="col-sm-8">
                                                            <label class="col-form-label "  id="memid"></label>
                                                        </div>
                                                    </div> 
                                                </div> 
                                            </div> 
                                        </div>  
                                    </div>
                                    <div class="card statustic-card">
                                        <div style="padding: 10px 15px;" class="card-header bg-success border-0 ">
                                            <h5 class="text-white m-b-0">Surgical Tray Sheet</h5>
                                        </div>

                                        <div  class="card-body">
                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label font-style-label" >Date of service</label>
                                                <div class="col-sm-8">
                                                    <label class="col-form-label "  id="rdos">${surgicaldetail.dateOfService}</label>
                                                </div>
                                            </div>

                                            <div class="form-group row" style="margin-top:20px">
                                                <label class="col-sm-4 col-form-label font-style-label" >Vital</label>
                                                <div class="col-sm-8">
                                                    <label class="col-form-label "  id="rdos"></label>
                                                </div>
                                            </div>
                                            <div class="form-group row" style="margin-top:20px">
                                                <label class="col-sm-4 col-form-label font-style-label" >Anesthesia (I.V) Sedation & Oral Sedation</label>
                                                <div class="col-sm-8">
                                                    <label class="col-form-label "  id="rdos"></label>
                                                </div>
                                            </div>
                                            <div class="form-group row" style="margin-top:20px">
                                                <label class="col-sm-4 col-form-label font-style-label" >Oral Anesthesia</label>
                                                <div class="col-sm-8">
                                                    <label class="col-form-label "  id="rdos"></label>
                                                </div>
                                            </div>
                                            <div class="form-group row" style="margin-top:20px">
                                                <label class="col-sm-4 col-form-label font-style-label" >Rx</label>
                                                <div class="col-sm-8">
                                                    <label class="col-form-label "  id="rdos"></label>
                                                </div>
                                            </div>
                                            <div class="form-group row" style="margin-top:20px">
                                                <label class="col-sm-4 col-form-label font-style-label" >Suture type</label>
                                                <div class="col-sm-8">
                                                    <label class="col-form-label "  id="rdos"></label>
                                                </div>
                                            </div>
                                            <div class="form-group row" style="margin-top:20px">
                                                <label class="col-sm-4 col-form-label font-style-label" >Suture Length</label>
                                                <div class="col-sm-8">
                                                    <label class="col-form-label "  id="rdos"></label>
                                                </div>
                                            </div>

                                            <div class="form-group row" style="margin-top:20px">
                                                <label class="col-sm-4 col-form-label font-style-label" >Bone Graft Material</label>
                                                <div class="col-sm-8">
                                                    <label class="col-form-label "  id="rdos"></label>
                                                </div>
                                            </div>
                                            <div class="form-group row" style="margin-top:20px">
                                                <label class="col-sm-4 col-form-label font-style-label" >Tissue Graft Material</label>
                                                <div class="col-sm-8">
                                                    <label class="col-form-label "  id="rdos"></label>
                                                </div>
                                            </div>
                                            <div class="form-group row" style="margin-top:20px">
                                                <label class="col-sm-4 col-form-label font-style-label" >Membrane</label>
                                                <div class="col-sm-8">
                                                    <label class="col-form-label "  id="rdos"></label>
                                                </div>
                                            </div>
                                            <div class="form-group row" style="margin-top:20px">
                                                <label class="col-sm-4 col-form-label font-style-label" >Phlebotomy Taken</label>
                                                <div class="col-sm-8">
                                                    <label class="col-form-label "  id="rdos"></label>
                                                </div>
                                            </div>
                                            <div class="form-group row" style="margin-top:20px">
                                                <label class="col-sm-4 col-form-label font-style-label" >Vaccutube</label>
                                                <div class="col-sm-8">
                                                    <label class="col-form-label "  id="rdos"></label>
                                                </div>
                                            </div>
                                            <div class="form-group row" style="margin-top:20px">
                                                <label class="col-sm-4 col-form-label font-style-label" >Surgical Fixation Screw</label>
                                                <div class="col-sm-8">
                                                    <label class="col-form-label "  id="rdos">${surgicaldetail.fixationScrewType}</label>
                                                </div>
                                            </div>
                                            <div class="form-group row" style="margin-top:20px">
                                                <label class="col-sm-4 col-form-label font-style-label" >Surgical screw</label>
                                                <div class="col-sm-8">
                                                    <label class="col-form-label "  id="rdos"></label>
                                                </div>
                                            </div>
                                            <div class="form-group row" style="margin-top:20px">
                                                <label class="col-sm-4 col-form-label font-style-label" >Surgical Plate</label>
                                                <div class="col-sm-8">
                                                    <label class="col-form-label "  id="rdos"></label>
                                                </div>
                                            </div>
                                        </div>
                                    </div> 
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>






    <!-- Required Js -->
    <jsp:include page="../includes/footer.jsp"></jsp:include>

    <script src="assets/js/plugins/jquery.bootstrap.wizard.min.js"></script>
    <script src="assets/js/plugins/jquery.steps.min.js"></script>


    <script>
                                                    $(document).ready(function () {


                                                    });
    </script>
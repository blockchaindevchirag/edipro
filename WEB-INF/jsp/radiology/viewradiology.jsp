<%@page contentType="text/html"  pageEncoding="UTF-8" autoFlush="true"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="en">

    <head>
        <title>View Study Request</title>
        <jsp:include page="../includes/header.jsp"></jsp:include>
            <style>
                a:hover {
                    color: #39465c !important;
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
                .select2-container .select2-selection--single {
                    box-sizing: border-box;
                    cursor: pointer;
                    display: block;
                    height: 33px !important;
                    user-select: none;
                    -webkit-user-select: none;
                }

                .select2-container--default .select2-selection--single {
                    background-color: #fff;
                    border: 2px solid #ced4da;
                    border-radius: 4px;
                }

                .custom-control-input {
                    position: absolute;
                    z-index: 1 !important;
                    opacity: 0;
                }
            </style>
            <script>
                var page = {
                    bootstrap: 3
                };

                function swap_bs() {
                    page.bootstrap = 3;
                }
            </script>
            <style>
                .datepicker>.datepicker-days {
                    display: block;
                }

                ol.linenums {
                    margin: 0 0 0 -8px;
                }

                .form-control.is-valid, .was-validated .form-control:valid{
                    background-position: center right calc(0.975em + 0.1875rem) !important;
                }

                .form-control.is-invalid, .was-validated .form-control:invalid{
                    background-position: center right calc(0.975em + 0.1875rem) !important;
                }
                @media print
                {

                    #printareas { display: block; }
                    .printdisable{display: none;height:0;width:100%;padding:0;margin:0;}
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


            </style>

            <!-- [ Main Content ] start -->
        <div class="pcoded-main-container ">
            <div class="pcoded-wrapper">
                <div class="pcoded-content">
                    <div class="pcoded-inner-content">
                        <div class="main-body">
                            <div class="page-wrapper">
                              <a class="btn btn-sm btn-danger sm-btm-size" title="Back" href="javascript:window.history.back();">
                                                      Back
                                                  </a>

                                <div class="row printcss" id="printareas">
                                    <!-- [ form-element ] start -->

                                    <div class="col-lg-12">

                                        <div class="card statustic-card">
                                            <div style="padding: 10px 15px;" class="card-header bg-success border-0 ">
                                                <h5 class="text-white m-b-0">Patient Information</h5>
                                            </div>

                                        <c:forEach var="radiologydata" items="${radiologydata}">
                                            <div class="card-body">
                                                <div class="row">
                                                    <div class="col-sm" >  
                                                        <div class="form-group row">
                                                            <label class="col-sm-4 col-form-label font-style-label"  for="ddlpractice">Patient</label>
                                                            <div class="col-sm-8">
                                                                <label class="col-form-label " id="patname"  for="ddlpractice">${radiologydata.patient}</label>
                                                            </div>
                                                        </div> 
                                                        <div class="form-group row">
                                                            <label class="col-sm-4 col-form-label font-style-label"  for="ddlpractice">Gender</label>
                                                            <div class="col-sm-8">
                                                                <label class="col-form-label " id="patgender"  for="ddlpractice">${radiologydata.gender}</label>
                                                            </div>


                                                        </div> 
                                                        <div class="form-group row">
                                                            <label class="col-sm-4 col-form-label font-style-label"  for="ddlpractice">DOB</label>
                                                            <div class="col-sm-8">
                                                                <label class="col-form-label " id="patdob"  for="ddlpractice">${radiologydata.dob}</label>
                                                            </div>                                                                   

                                                        </div> 
                                                        <div class="form-group row">
                                                            <label class="col-sm-4 col-form-label font-style-label"  for="ddlpractice">Insurance</label>
                                                            <div class="col-sm-8">
                                                                <label class="col-form-label " id="insurance"  for="ddlpractice">${radiologydata.ddlinsurance}</label>
                                                            </div>                                                                   

                                                        </div> 

                                                        <div class="form-group row">
                                                            <label class="col-sm-4 col-form-label font-style-label"  for="ddlpractice">Study</label>
                                                            <div class="col-sm-8">
                                                                <label class="col-form-label " id="insurance"  for="ddlpractice">${radiologydata.study}</label>
                                                            </div>                                                                   

                                                        </div> 

                                                        <div class="form-group row">
                                                            <label class="col-sm-4 col-form-label font-style-label" >DOT</label>
                                                            <div class="col-sm-8">
                                                                <label class="col-form-label " id="rdos">${radiologydata.dos}</label>
                                                            </div>
                                                        </div>


                                                    </div>
                                                    <div class="col-sm" >  

                                                        <div class="form-group row">
                                                            <label class="col-sm-4 col-form-label font-style-label"  for="ddlpractice">Practice</label>
                                                            <div class="col-sm-8">
                                                                <label class=" col-form-label "  id="practice">${radiologydata.practicename}</label>
                                                            </div>
                                                        </div> 
                                                        <div class="form-group row">
                                                            <label class="col-sm-4 col-form-label font-style-label"  for="ddlpractice">Treating Surgeon</label>
                                                            <div class="col-sm-8">
                                                                <label class=" col-form-label "  id="practice">${radiologydata.providername}</label>
                                                            </div>
                                                        </div> 
                                                        <div class="form-group row" style="display:none;">
                                                            <label class="col-sm-4 col-form-label font-style-label"  for="ddlpractice">Payor ID:</label>
                                                            <div class="col-sm-8">
                                                                <label class="col-form-label "  id="prid">${radiologydata.payor}</label>
                                                            </div>
                                                        </div> 
                                                        <div class="form-group row">
                                                            <label class="col-sm-4 col-form-label font-style-label"  for="ddlpractice">Member ID:</label>
                                                            <div class="col-sm-8">
                                                                <label class="col-form-label "  id="memid">${radiologydata.mid}</label>
                                                            </div>
                                                        </div> 
                                                        <div class="form-group row">
                                                            <label class="col-sm-4 col-form-label font-style-label"  for="ddlradiologist">Radiologist:</label>
                                                            <div class="col-sm-8">
                                                                <label class="col-form-label "  id="memid">${radiologydata.radiologist}</label>
                                                            </div>
                                                        </div>  

                                                        <div class="form-group row">
                                                            <label class="col-sm-4 col-form-label font-style-label"  for="ddlradiology">Provider :</label>
                                                            <div class="col-sm-8">
                                                                <label class="col-form-label "  id="memid">${radiologydata.radiology_provider_name}</label>
                                                            </div>
                                                        </div>  




                                                    </div> 


                                                </div> 
                                            </div>  


                                        </c:forEach>
                                    </div>
                                </div>

                                <div class="col-lg-12">
                                    <div class="card statustic-card">
                                        <div style="padding: 10px 15px;" class="card-header bg-success border-0 ">
                                            <h5 class="text-white m-b-0">Diagnosis</h5>
                                        </div>

                                        <div  class="card-body">

                                            <c:forEach var="diagnosisdata" items="${diagnosislist}">
                                                <div class="row m-b-0">
                                                    <div id="diagnoisis1divt"   >
                                                        <label class="font-style-label">${diagnosisdata.diagnosiscategory} :</label>
                                                    </div> 
                                                </div>   
                                                <div class="row m-b-15 m-t-0" >  
                                                    <div id="diagnoisis1div" >
                                                        <c:forTokens items="${diagnosisdata.diagnosiscodedesc}" delims="~" var="mySplit">
                                                            <ul class="ulliimg" style="list-style: none !important;"><li>
                                                                    <span class="ulidigimgchk">
                                                                        <span style='width:12px; height:12px;line-height:12px; font-size:12px;display: inline-block;margin-right: 5px;border:1px solid #333;'> </span>${mySplit}</span>
                                                                </li></ul>                                                                    
                                                            </c:forTokens>

                                                    </div> 
                                                </div>  
                                            </c:forEach>

                                        </div>
                                    </div> 
                                </div>
                                <div class="col-lg-12">
                                    <div id="notessection" class="card statustic-card">
                                        <div style="padding: 10px 15px;" class="card-header bg-success border-0 ">
                                            <h5 class="text-white m-b-0">Notes</h5>
                                        </div>

                                        <div class="card-body">
                                            <c:forEach var="notes" items="${notes}">
                                                <h7 class="font-style-label">Clinical History: </h7>
                                                <label class="col-form-label m-10" id="notes"><c:out value="${notes.notes}"  escapeXml="false"/></label><hr>
                                                <h7 class="font-style-label">Relevant medical History: </h7>
                                                <label class="col-form-label m-10" id="notes1"><c:out value="${notes.notes1}"  escapeXml="false"/></label><hr>
                                                <h7 class="font-style-label">Surgical/Dental History: </h7>
                                                <label class="col-form-label m-10" id="notes2"><c:out value="${notes.notes2}"  escapeXml="false"/></label><hr>
                                            </c:forEach>
                                        </div>
                                    </div> 
                                </div>


                                <jsp:include page="radio_teeth.jsp"></jsp:include>


                                    <div class="col-lg-12">
                                        <div id="filesection" class="card statustic-card">
                                            <div style="padding: 10px 15px;" class="card-header bg-success border-0 ">
                                                <h5 class="text-white m-b-0">Files</h5>
                                            </div>

                                            <div class="card-body">

                                            <c:forEach var="filesdata" items="${filesdata}">

                                                <c:if test = "${filesdata.file1 ne ''}">

                                                    Files:  <a data-toggle="tooltip" data-placement="top" class="singledownbutton" id="singledown" title=""  data-original-title="Download" target="_blank"   href="../Upload/Radiology/${filesdata.file1}">${filesdata.file1} <i class="fas fa-download m-r-5"></i></a> <br>

                                                </c:if>


                                            </c:forEach> 

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


                    if ($.trim($('#notes').text()) === "") {
                        $('#notes').text("No Notes");
                    }
                    if ($.trim($('#notes1').text()) === "") {
                        $('#notes1').text("No Notes");
                    }
                    if ($.trim($('#notes2').text()) === "") {
                        $('#notes2').text("No Notes");
                    }


        <c:forEach var="toothdata" items="${toothdata}">
                    $(':checkbox').each(function (key, value) {
                        var tagname = $(this).attr("name");
                        //  console.log(tagname);
                        if ("${toothdata.teethval}" === tagname.replaceAll('teeth', '')) {
                            // $("#pathologist_view").hide();
                            $(this).prop('checked', true);
                        }
                    });

        </c:forEach>


                     $("#toothdiv :input").attr("disabled", true);
                    // $('#toothdiv').find('input, textarea, select').attr('readonly', 'readonly');

                });
    </script>
<%@page contentType="text/html"  pageEncoding="UTF-8" autoFlush="true"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="en">

    <head>
        <title>Pre-Authorization Request</title>
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
            </style>
            <script>
                function printDiv(printareas) {
                    var printContents = document.getElementById(printareas).innerHTML;
                    var originalContents = document.body.innerHTML;
                    document.body.innerHTML = printContents;

                    var cdVal = '<c:out value="${cd}" escapeXml="true" />';

                    document.title = $('#patname').text() + "_Pre_auth_Req_" + cdVal.replaceAll('/', '_');
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
                                              <a class="btn btn-sm btn-danger sm-btm-size" title="Back" href="javascript:window.history.back();">
                                                  Back
                                              </a> 
                                            <!--                                                 <a class="col border-right" title="Back" href="javascript:window.history.back();">
                                                                                            <img src="assets/images/backbtnicon.png">
                                                                                        </a>-->
                                            <a class="btn btn-sm btn-primary sm-btm-size" title="Print" onclick="printDiv('printareas')">
                                                Print
                                            </a>
                                            <!--                                                <a class="col border-right" title="Print" href="#!" onclick="printDiv('printareas')">
                                                                                            <img src="assets/images/printicon.png">
                                                                                        </a>-->

                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row printcss" id="printareas">
                                <!-- [ form-element ] start -->

                                <div class="col-lg-12">

                                    <div class="card statustic-card">
                                        <div style="padding: 10px 15px;" class="card-header bg-success border-0 ">
                                            <h5 class="text-white m-b-0">Visit Information</h5>
                                        </div>

                                        <c:forEach var="preauthdata" items="${preauthdata}">
                                            <div class="card-body">
                                                <div class="row">
                                                    <div class="col-sm" >  
                                                        <div class="form-group row">
                                                            <label class="col-sm-4 col-form-label font-style-label"  for="ddlpractice">Patient</label>
                                                            <div class="col-sm-8">
                                                                <label class="col-form-label " id="patname"  for="ddlpractice">${preauthdata.patient}</label>
                                                            </div>
                                                        </div> 
                                                        <div class="form-group row">
                                                            <label class="col-sm-4 col-form-label font-style-label"  for="ddlpractice">Gender</label>
                                                            <div class="col-sm-8">
                                                                <label class="col-form-label " id="patgender"  for="ddlpractice">${preauthdata.gender}</label>
                                                            </div>


                                                        </div> 
                                                        <div class="form-group row">
                                                            <label class="col-sm-4 col-form-label font-style-label"  for="ddlpractice">DOB</label>
                                                            <div class="col-sm-8">
                                                                <label class="col-form-label " id="patdob"  for="ddlpractice">${preauthdata.dob}</label>
                                                            </div>                                                                   

                                                        </div> 
                                                        <div class="form-group row">
                                                            <label class="col-sm-4 col-form-label font-style-label"  for="ddlpractice">Insurance</label>
                                                            <div class="col-sm-8">
                                                                <label class="col-form-label " id="insurance"  for="ddlpractice">${preauthdata.ddlinsurance}</label>
                                                            </div>                                                                   

                                                        </div> 



                                                        <div id="trmaxilla" style="display:none;" class="form-group row">
                                                            <label class="col-sm-4 col-form-label font-style-label"  for="ddlpractice">Maxilla</label>
                                                            <div class="col-sm-8">
                                                                <label class="col-form-label " id="trmaxilla_data"  ></label>
                                                            </div>


                                                        </div> 
                                                        <div id="trmandible" style="display:none;" class="form-group row">
                                                            <label class="col-sm-4 col-form-label font-style-label"  for="ddlpractice">Mandible</label>
                                                            <div class="col-sm-8">
                                                                <label class="col-form-label " id="trmandible_data"  ></label>
                                                            </div>                                                                   

                                                        </div> 
                                                        <div id="trarch" style="display:none;" class="form-group row">
                                                            <label class="col-sm-4 col-form-label font-style-label"  for="ddlpractice">Arch</label>
                                                            <div class="col-sm-8">
                                                                <label class="col-form-label " id="trarch_data"  ></label>
                                                            </div>                                                                   

                                                        </div> 
                                                    </div>
                                                    <div class="col-sm" >  

                                                        <div class="form-group row">
                                                            <label class="col-sm-4 col-form-label font-style-label"  for="ddlpractice">Practice</label>
                                                            <div class="col-sm-8">
                                                                <label class=" col-form-label "  id="practice">${preauthdata.practicename}</label>
                                                            </div>
                                                        </div> 
                                                        <div class="form-group row">
                                                            <label class="col-sm-4 col-form-label font-style-label"  for="ddlpractice">Treating Surgeon</label>
                                                            <div class="col-sm-8">
                                                                <label class=" col-form-label "  id="practice">${preauthdata.providername}</label>
                                                            </div>
                                                        </div> 
                                                        <div class="form-group row" style="display:none;">
                                                            <label class="col-sm-4 col-form-label font-style-label"  for="ddlpractice">Payor ID:</label>
                                                            <div class="col-sm-8">
                                                                <label class="col-form-label "  id="prid">${preauthdata.payor}</label>
                                                            </div>
                                                        </div> 
                                                        <div class="form-group row">
                                                            <label class="col-sm-4 col-form-label font-style-label"  for="ddlpractice">Member ID:</label>
                                                            <div class="col-sm-8">
                                                                <label class="col-form-label "  id="memid">${preauthdata.mid}</label>
                                                            </div>
                                                        </div> 
                                                        <div class="form-group row" style="display:none;">
                                                            <label class="col-sm-4 col-form-label font-style-label" >DOS</label>
                                                            <div class="col-sm-8">
                                                                <label class="col-form-label "  id="rdos">${preauthdata.dateofbenefit}</label>
                                                            </div>
                                                        </div>
                                                    </div> 


                                                    <div class="col-sm" >   
                                                        <div id="refdoc_view"  class="form-group row">
                                                            <label class="col-sm-4 col-form-label font-style-label"  for="ddlpractice">Referring Doctor</label>
                                                            <div class="col-sm-8">
                                                                <label class=" col-form-label "  id="practice">${preauthdata.refdoc} ${preauthdata.refdocnpi}</label>
                                                            </div>
                                                        </div> 
                                                        <div id="radiologist_view" class="form-group row">
                                                            <label class="col-sm-4 col-form-label font-style-label"  for="ddlpractice">Radiologist</label>
                                                            <div class="col-sm-8">
                                                                <label class="col-form-label "  id="prid">${preauthdata.radiologist} ${preauthdata.radiologistnpi}</label>
                                                            </div>
                                                        </div> 
                                                        <div id="pathologist_view" class="form-group row">
                                                            <label class="col-sm-4 col-form-label font-style-label"  for="ddlpractice">Pathologist</label>
                                                            <div class="col-sm-8">
                                                                <label class="col-form-label "  id="memid">${preauthdata.pathologist}  ${preauthdata.pathologistnpi}</label>
                                                            </div>
                                                        </div> 
                                                    </div> 
                                                </div> 
                                            </div>  


                                        </c:forEach>
                                    </div>

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



                                    <div id="proceduresection" class="card statustic-card">
                                        <div style="padding: 10px 15px;" class="card-header bg-success border-0 ">
                                            <h5 class="text-white m-b-0">Procedure Code</h5>
                                        </div>

                                        <div class="card-body">
                                            <c:forEach var="preauthdata" items="${preauthdata}">
                                                ${preauthdata.path}
                                            </c:forEach>
                                        </div>
                                    </div> 

                                    <div id="notessection" class="card statustic-card">
                                        <div style="padding: 10px 15px;" class="card-header bg-success border-0 ">
                                            <h5 class="text-white m-b-0">Notes</h5>
                                        </div>

                                        <div class="card-body">
                                            <label class="col-form-label " id="notes"><c:out value="${notes}"  escapeXml="false"/></label>
                                        </div>
                                    </div> 


                                    <div id="filesection" class="card statustic-card">
                                        <div style="padding: 10px 15px;" class="card-header bg-success border-0 ">
                                            <h5 class="text-white m-b-0">Files</h5>
                                        </div>

                                        <div class="card-body">

                                            <c:forEach var="preauthdata" items="${preauthdata}">

                                                <c:if test = "${preauthdata.file1 ne ''}">

                                                    File1:  <a data-toggle="tooltip" data-placement="top" class="singledownbutton" id="singledown" title=""  data-original-title="Download" target="_blank"   href="../Upload/Pre_auth/${preauthdata.file1}">${preauthdata.file1} <i class="fas fa-download m-r-5"></i></a> 
                                                    <label class="col-form-label " id="notes"  > DOS:   ${preauthdata.dateofbenefit}</label> <hr> 
                                                </c:if>

                                                <c:if test = "${preauthdata.file2 ne ''}">

                                                    File2:  <a data-toggle="tooltip" data-placement="top" class="singledownbutton" id="singledown" title=""  data-original-title="Download" target="_blank"   href="../Upload/Pre_auth/${preauthdata.file2}">${preauthdata.file2} <i class="fas fa-download m-r-5"></i></a> 
                                                    <label class="col-form-label " id="notes"  > DOS:   ${preauthdata.dos1}</label>
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

        <c:forEach var="preauthdata" items="${preauthdata}">
                                                    //alert(${preauthdata.pathologist})
                                                    if ("${preauthdata.pathologist}" == "") {
                                                        //$("#refdoc").hide();
                                                        $("#pathologist_view").hide();
                                                    }
                                                    if ("${preauthdata.radiologist}" == "") {
                                                        //$("#radiogts").hide();
                                                        $("#radiologist_view").hide();
                                                    }
                                                    if ("${preauthdata.refdoc}" == "") {
                                                        $("#refdoc_view").hide();
                                                        //$("#pathgts").hide();
                                                    }
                                                    var proc = '${preauthdata.procedurecodes}';

                                                    var proc_arr = proc.split(",");
                                                    //alert(proc_arr[1]);
                                                    if (proc_arr.includes("temp1trmaxright")) {
                                                        $('#trmaxilla').show();
                                                        $('#trmaxilla_data').append('Right ');
                                                    }
                                                    if (proc_arr.includes("temp1trmaxleft")) {
                                                        $('#trmaxilla').show();
                                                        $('#trmaxilla_data').append('Left');
                                                    }
                                                    if (proc_arr.includes("temp1trmanright")) {
                                                        $('#trmandible').show();
                                                        $('#trmandible_data').append('Right ');

                                                    }
                                                    if (proc_arr.includes("temp1trmanleft")) {
                                                        $('#trmandible').show();
                                                        $('#trmandible_data').append('Left ');

                                                    }
                                                    if (proc_arr.includes("temp1trarchright")) {
                                                        $('#trarch').show();
                                                        $('#trarch_data').append('Right ');

                                                    }
                                                    if (proc_arr.includes("temp1trarchleft")) {
                                                        $('#trarch').show();
                                                        $('#trarch_data').append('Left ');

                                                    }

        </c:forEach>
                                                });
    </script>
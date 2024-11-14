<%@page contentType="text/html"  pageEncoding="UTF-8" autoFlush="true"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="en">

    <head>
        <title>E Super Bill</title>
        <jsp:include page="../includes/header.jsp"></jsp:include>
            <style>
                .table td, .table th {
                    border-top: 1px solid #e2e5e8;
                    white-space: nowrap;
                    padding: 1.05rem 0.75rem;
                }
                /*                a:hover {
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
                                }*/
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
                function printDiv(printareas) {
                    var printContents = document.getElementById(printareas).innerHTML;
                    var originalContents = document.body.innerHTML;
                    document.body.innerHTML = printContents;
                    /*   var filename = $('#patname').text().split(',');
                     // alert(filename.length);
                     if (filename.length > 1)
                     {
                     document.title = filename[1].trim() + "_" + filename[0].trim() + "_eSB";
                     } else
                     {
                     document.title = filename[0].trim() + "_eSB";
                     }*/
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
                                <!--<a href="javascript:window.history.back();">Back</a>-->
                                <!--<button class="btn btn-default" onclick="printDiv('printareas')"><i class="fa fa-print" aria-hidden="true" style="    font-size: 17px;"> Print</i></button>-->
                                <div class="row printcss" id="printareas">
                                    <div class="col-lg-12">                                        
                                        <div class="card statustic-card">
                                            <div style="padding: 10px 15px;" class="card-header bg-success border-0 ">
                                                <h5 class="text-white m-b-0">Visit Information</h5>

                                            </div>
                                            <input type="hidden" name="ebillid" id="ebillid" value="${id}">
                                        <input type="hidden" name="eflag" id="eflag" value="${flag}">
                                        <c:forEach var="ebilldata" items="${ebilldata}">
                                            <div class="card-body">
                                                <div class="row">
                                                    <div class="col-sm" >  
                                                        <div class="form-group row">
                                                            <label class="col-sm-4 col-form-label font-style-label"  for="ddlpractice">Patient</label>
                                                            <div class="col-sm-8">
                                                                <label class="col-form-label " id="patname"  for="ddlpractice">${ebilldata.patient}</label>
                                                            </div>
                                                        </div> 
                                                        <div class="form-group row">
                                                            <label class="col-sm-4 col-form-label font-style-label"  for="ddlpractice">Gender</label>
                                                            <div class="col-sm-8">
                                                                <label class="col-form-label " id="patgender"  for="ddlpractice">${ebilldata.gender}</label>
                                                            </div>
                                                        </div> 
                                                        <div class="form-group row">
                                                            <label class="col-sm-4 col-form-label font-style-label"  for="ddlpractice">DOB</label>
                                                            <div class="col-sm-8">
                                                                <label class="col-form-label " id="patdob"  for="ddlpractice">${ebilldata.dob}</label>
                                                            </div>  
                                                        </div> 
                                                        <div class="form-group row">
                                                            <label class="col-sm-4 col-form-label font-style-label"  for="ddlpractice">Insurance</label>
                                                            <div class="col-sm-8">
                                                                <label class="col-form-label " id="insurance"  for="ddlpractice">${ebilldata.ddlinsurance}</label>
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


                                                        <div id="visit_reason_view" class="form-group row">
                                                            <label class="col-sm-4 col-form-label font-style-label" >Visit Reason</label>
                                                            <div class="col-sm-8">
                                                                <label class="col-form-label "  id="visitreason">${ebilldata.visit_desc}</label>
                                                            </div>
                                                        </div>

                                                        <div id="visit_others_view" class="form-group row">
                                                            <label class="col-sm-4 col-form-label font-style-label" ></label>
                                                            <div class="col-sm-8">
                                                                <label class="col-form-label "  id="visitother">${ebilldata.visit_others}</label>
                                                            </div>
                                                        </div>    



                                                    </div> 
                                                    <div class="col-sm" >   
                                                        <div class="form-group row">
                                                            <label class="col-sm-4 col-form-label font-style-label"  for="ddlpractice">Treating Surgeon</label>
                                                            <div class="col-sm-8">
                                                                <label class=" col-form-label "  id="practice">${ebilldata.providername}</label>
                                                            </div>
                                                        </div> 
                                                        <div class="form-group row">
                                                            <label class="col-sm-4 col-form-label font-style-label"  for="ddlpractice">Practice</label>
                                                            <div class="col-sm-8">
                                                                <label class=" col-form-label "  id="practice">${ebilldata.practicename}</label>
                                                            </div>
                                                        </div> 
                                                        <div class="form-group row">
                                                            <label class="col-sm-4 col-form-label font-style-label"  for="ddlpractice">Payor ID:</label>
                                                            <div class="col-sm-8">
                                                                <label class="col-form-label "  id="prid">${ebilldata.payor}</label>
                                                            </div>
                                                        </div> 
                                                        <div class="form-group row">
                                                            <label class="col-sm-4 col-form-label font-style-label"  for="ddlpractice">Member ID:</label>
                                                            <div class="col-sm-8">
                                                                <label class="col-form-label "  id="memid">${ebilldata.mid}</label>
                                                            </div>
                                                        </div> 
                                                        <div class="form-group row">
                                                            <label class="col-sm-4 col-form-label font-style-label">DOS</label>
                                                            <div class="col-sm-8">
                                                                <label class="col-form-label "  id="rdos">${ebilldata.dateofbenefit}</label>
                                                            </div>
                                                        </div>



                                                    </div> 
                                                    <div class="col-sm" >

                                                        <div id="refdoc_view"  class="form-group row">
                                                            <label class="col-sm-4 col-form-label font-style-label"  for="ddlpractice">Referring Doctor</label>
                                                            <div class="col-sm-8">
                                                                <label class=" col-form-label "  id="practice">${ebilldata.refdoc} ${ebilldata.refdocnpi}</label>
                                                            </div>
                                                        </div> 

                                                        <div id="radiologist_view" class="form-group row">
                                                            <label class="col-sm-4 col-form-label font-style-label"  for="ddlpractice">Radiologist</label>
                                                            <div class="col-sm-8">
                                                                <label class="col-form-label "  id="prid">${ebilldata.radiologist} ${ebilldata.radiologistnpi}</label>
                                                            </div>
                                                        </div> 

                                                        <div id="pathologist_view" class="form-group row">
                                                            <label class="col-sm-4 col-form-label font-style-label"  for="ddlpractice">Pathologist</label>
                                                            <div class="col-sm-8">
                                                                <label class="col-form-label "  id="memid">${ebilldata.pathologist}  ${ebilldata.pathologistnpi}</label>
                                                            </div>
                                                        </div> 

                                                    </div> 


                                                </div> 
                                                <!--                                               <div class="row">
                                                                                                    <div class="col-sm" >  
                                                                                                        <div class="form-group row">
                                                                                                            <label class="col-sm col-form-label font-style-label" >Treatment</label> 
                                                                                                        </div>
                                                                                                        <div class="col-sm" >   
                                                                                                            <div id="headrevtemp1trmax"  class="form-group row">
                                                                                                                <label class="col-form-label font-style-label"  for="ddlpractice">Maxilla - </label>
                                                                                                                
                                                                                                                    <label class="col-form-label "  id="temp2trmaxright">Right </label> 
                                                                                                                    <label class="col-form-label "  id="temp2trmaxleft">Left</label> 
                                                                                                               
                                                                                                            </div> 
                                                                                                            <div id="headrevtemp1trmax"  class="form-group row">
                                                                                                                <label class="col-form-label font-style-label"  for="ddlpractice">Mandible - </label>
                                                                                                                
                                                                                                                    <label class="col-form-label "  id="temp2trmanright">Right </label> 
                                                                                                                    <label class="col-form-label "  id="temp2trmanleft">Left</label> 
                                                                                                               
                                                                                                            </div> 
                                                                                                            <div  id="headrevtemp1trarch"  class="form-group row">
                                                                                                                <label class="col-form-label font-style-label"  for="ddlpractice">Arch - </label>
                                                                                                                
                                                                                                                    <label class="col-form-label "  id="temp2trarchright">Right </label> 
                                                                                                                    <label class="col-form-label "  id="temp2trarchleft">Left</label> 
                                                                                                                
                                                                                                            </div> 
                                                                                                        </div> 
                                                                                                    </div>
                                                                                                </div> -->
                                            </div>  
                                            <script>
                                                // $(document).ready(function() {
                                                var diagnosiscode =${ebilldata.usertype};
                                                var procedurecode =${ebilldata.spatient};

                                            </script>
                                        </c:forEach>
                                    </div>
                                    <div id="diagonsissection" class="card statustic-card">
                                        <div style="padding: 10px 15px;" class="card-header bg-success border-0 ">
                                            <h5 class="text-white m-b-0">Diagnosis</h5>
                                        </div>

                                        <div class="card-body">

                                            <c:forEach var="diagnosisdata" items="${diagnosislist}" varStatus="loopCounter" >
                                                <div class="row">    
                                                    <div id="diagnoisis1divt">
                                                        <label class="font-style-label"><u>${diagnosisdata.diagnosiscategory} :</u></label>
                                                    </div> 
                                                </div>   
                                                <div class="row">  
                                                    <div id="diagnoisis1div" >
                                                        <c:forTokens items="${diagnosisdata.diagnosiscodedesc}" delims="~" var="mySplit">
                                                            <ul class="ulliimg" style="list-style: none !important;"><li>
                                                                    <span class="ulidigimgchk">
                                                                        <span style='width:12px; height:12px;line-height:12px; font-size:12px;display: inline-block;margin-right: 5px;border:1px solid #333;'> </span> ${mySplit};</span>
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
                                            <c:forEach var="ebilldata" items="${ebilldata}">
                                                ${ebilldata.errormsg}
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
        <script src="assets/js/plugins/jquery.bootstrap.wizard.min.js"></script>
        <script src="assets/js/plugins/jquery.steps.min.js"></script>

        <script>
                                                $(document).ready(function () {

                                                    $('#visit_others_view').hide();

                                                    if ($('#eflag').val() === 'N')
                                                    {
                                                        $.ajax({
                                                            url: "ebillflagupdate",
                                                            type: "get", //send it through get method
                                                            data: {
                                                                noty_ebill_id: $('#ebillid').val()
                                                            },
                                                            success: function (response) {
                                                                console.log(response);

                                                            },
                                                            error: function (err) {
                                                                console.log(err);

                                                            }
                                                        });
                                                    }


                                                    if ($.trim($('#notes').text()) === "") {
                                                        $('#notes').text("No Notes");
                                                    }




        <c:forEach var="ebilldata" items="${ebilldata}">
                                                    //alert(${ebilldata.pathologist})
                                                    if ("${ebilldata.pathologist}" === "") {
                                                        //$("#refdoc").hide();
                                                        $("#pathologist_view").hide();
                                                    }
                                                    if ("${ebilldata.radiologist}" === "") {
                                                        //$("#radiogts").hide();
                                                        $("#radiologist_view").hide();
                                                    }
                                                    if ("${ebilldata.refdoc}" === "") {
                                                        $("#refdoc_view").hide();
                                                        //$("#pathgts").hide();
                                                    }

                                                    if ("${ebilldata.visit_reason}" === "10") {
                                                        $('#visit_others_view').show();
                                                        //$("#pathgts").hide();
                                                    }

                                                    var proc = '${ebilldata.procedurecodes}';

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
<%@page contentType="text/html"  pageEncoding="UTF-8" autoFlush="true"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />


        <title>Study Request</title>
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
                        /*margin: 40px 10px 35px;*/
                        margin:0.5in;
                    }
                }
                @media print
                {
                    #printareas { display: block; }
                    .printdisable{display: none;height:0;width:0;padding:0;margin:0;}
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
                     #filesection{display:none;}
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

                                        </c:forEach>
                                    </div>


                                    <div id="diagonsissection" class="card statustic-card">
                                        <div style="padding: 10px 15px;" class="card-header bg-success border-0 ">
                                            <h5 class="text-white m-b-0">Diagnosis</h5>
                                        </div>

                                        <div class="card-body">

                                            <c:forEach var="diagnosisdata" items="${diagnosislist}">
                                                <div class="row">    
                                                    <div id="diagnoisis1divt">
                                                        <label class="font-style-label">${diagnosisdata.diagnosiscategory} :</label>
                                                    </div> 
                                                </div>   
                                                <div class="row">  
                                                    <div id="diagnoisis1div" >
                                                        <c:forTokens items="${diagnosisdata.diagnosisdesc}" delims="~" var="mySplit">
                                                            <ul class="ulliimg" style="list-style: none !important;"><li>
                                                                    <span class="ulidigimgchk">
                                                                        <span style='width:12px; height:12px;line-height:12px; font-size:12px;display: inline-block;margin-right: 5px;border:1px solid #333;'> </span>${mySplit};</span>
                                                                </li></ul>                                                                    
                                                            </c:forTokens>
                                                    </div> 
                                                </div>  
                                            </c:forEach>


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
                                                    <label class="col-form-label m-t-5" id="notes"> <c:out value="${notes.notes}"  escapeXml="false"/></label><hr class="m-t-10 m-b-10">
                                                    <h7 class="font-style-label">Relevant medical History: </h7>
                                                    <label class="col-form-label m-0" id="notes1"> <c:out value="${notes.notes1}"  escapeXml="false"/></label><hr class="m-t-10 m-b-10">
                                                    <h7 class="font-style-label">Surgical/Dental History: </h7>
                                                    <label class="col-form-label m-0" id="notes2"> <c:out value="${notes.notes2}"  escapeXml="false"/></label><hr class="m-t-10 m-b-10">
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


                    var originalContents = document.body.innerHTML;
                    setTimeout(function () {
                        yourfunction();
                    }, 2000);

                    setTimeout(function () {
                        var cdVal = '<c:out value="${cd}" escapeXml="true" />';
                        document.title = $('#patname').text() + "_Radiology_" + cdVal.replaceAll('/', '_');
                        window.print();


                    }, 5000);


                    function printDiv(printareas) {
                        var printContents = document.getElementById(printareas).innerHTML;
                        //  var originalContents = document.body.innerHTML;
                        document.body.innerHTML = printContents;
                        var cdVal = '<c:out value="${cd}" escapeXml="true" />';

                        document.title = $('#patname').text() + "_Radiology_" + cdVal;
                        window.print();
                        // document.body.innerHTML = originalContents;
                        window.onafterprint = function (event) {
                            history.go(-1);
                            //    window.location.href = 'index.php'
                        };
                    }

                    function yourfunction() {
                        $('.pcoded-navbar').removeClass('pcoded-navbar menupos-fixed menu-dark menu-item-icon-style6').addClass('pcoded-navbar menupos-fixed menu-dark menu-item-icon-style6 navbar-collapsed');
                        $('#mobile-collapse').removeClass('mobile-menu').addClass('mobile-menu on');
                        $(".pcoded-main-container").css({"margin-left": "1px", "top": "-60px"});
                        $(".pcoded-header").css({"display": "none"});
                        $(".page-footer").css({"display": "none"});
                        $('.printdisable').css({"display": "none"});

                    }


                });


    </script>
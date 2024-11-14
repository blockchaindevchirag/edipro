<%@page contentType="text/html"  pageEncoding="UTF-8" autoFlush="true"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />


        <title>E Super Bill</title>
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

                                            <c:forEach var="diagnosisdata" items="${diagnosislist}">
                                                <div class="row">    
                                                    <div id="diagnoisis1divt">
                                                        <label class="font-style-label">${diagnosisdata.diagnosiscategory} :</label>
                                                    </div> 
                                                </div>   
                                                <div class="row">  
                                                    <div id="diagnoisis1div" >
                                                        <sec:authorize access="hasAnyRole('ROLE_ADMIN,ROLE_ENTITY_ADMIN')">
                                                            <c:forTokens items="${diagnosisdata.diagnosiscodedesc}" delims="~" var="mySplit">
                                                                <ul class="ulliimg" style="list-style: none !important;"><li>
                                                                        <span class="ulidigimgchk">
                                                                            <span style='width:12px; height:12px;line-height:12px; font-size:12px;display: inline-block;margin-right: 5px;border:1px solid #333;'> </span>${mySplit};</span>
                                                                    </li></ul>                                                                    
                                                                </c:forTokens>
                                                            </sec:authorize>
                                                            <sec:authorize access="hasAnyRole('ROLE_ADMIN,ROLE_USER,ROLE_CORP_PRACTICE,ROLE_CORP_ADMIN,ROLE_CORP_STAFF,
                                                                           ROLE_GROUPCLINIC_ADMIN,ROLE_GROUPCLINIC_STAFF,ROLE_BILLING_ADMIN,ROLE_BILLING_STAFF,
                                                                           ROLE_CORP_PROVIDER,ROLE_GROUPCLINIC_PROVIDER,
                                                                           ROLE_PRACTICE_ADMIN,ROLE_PRACTICE_STAFF, ROLE_PRACTICE_PROVIDER,ROLE_REFERING_PROVIDER')">
                                                                <c:forTokens items="${diagnosisdata.diagnosiscodedesc}" delims="~" var="mySplit">
                                                                <ul class="ulliimg" style="list-style: none !important;"><li>
                                                                        <span class="ulidigimgchk">
                                                                            <span style='width:12px; height:12px;line-height:12px; font-size:12px;display: inline-block;margin-right: 5px;border:1px solid #333;'> </span>${mySplit};</span>
                                                                    </li></ul>                                                                    
                                                                </c:forTokens>
                                                            </sec:authorize>
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
                                            <sec:authorize access="hasAnyRole('ROLE_ADMIN,ROLE_USER,ROLE_CORP_PRACTICE,ROLE_CORP_ADMIN,ROLE_CORP_STAFF,
                                                           ROLE_GROUPCLINIC_ADMIN,ROLE_GROUPCLINIC_STAFF,ROLE_BILLING_ADMIN,ROLE_BILLING_STAFF,
                                                           ROLE_CORP_PROVIDER,ROLE_GROUPCLINIC_PROVIDER,
                                                           ROLE_PRACTICE_ADMIN,ROLE_PRACTICE_STAFF, ROLE_PRACTICE_PROVIDER,ROLE_REFERING_PROVIDER')">
                                                <c:forEach var="ebilldata" items="${ebilldata}">
                                                    ${ebilldata.errormsg}
                                                </c:forEach>
                                            </sec:authorize>

                                            <sec:authorize access="hasAnyRole('ROLE_ENTITY_ADMIN,ROLE_ENTITY_STAFF')">
                                                <c:forEach var="ebilldata" items="${ebilldata}">
                                                    ${ebilldata.path}
                                                </c:forEach>
                                            </sec:authorize>

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



                                                    /*  if ($.trim($('#visitreason').text()) === "Others") {
                                                     $('#visit_others_view').show();
                                                     } else
                                                     {
                                                     $('#visit_others_view').hide();
                                                     }
                                                     */

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



                                                    if ($.trim($('#notes').text()) === "") {
                                                        $('#notes').text("No Notes");
                                                        yourfunction();
                                                    } else
                                                    {
                                                        yourfunction();
                                                    }

                                                    function printDiv(printareas) {
                                                        var printContents = document.getElementById(printareas).innerHTML;
                                                        //  var originalContents = document.body.innerHTML;
                                                        document.body.innerHTML = printContents;
                                                        /* var filename = $('#patname').text().split(',');
                                                         if (filename.length > 1)
                                                         {
                                                         document.title = filename[1].trim() + "_" + filename[0].trim() + "_eSB";
                                                         } else
                                                         {
                                                         document.title = filename[0].trim() + "_eSB";
                                                         } */
                                                        document.title = $('#patname').text() + "_eSB";
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

                                                        var printareas = $('#printareas').attr('id');
                                                        var printContents = document.getElementById(printareas).innerHTML;
                                                        document.body.innerHTML = printContents;
                                                        /*  var filename = $('#patname').text().split(',');
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

                                                        //     window.location.reload();
                                                        window.onafterprint = function (event) {
                                                            history.go(-1);
                                                            /* var filename = $('#patname').text().split(',');
                                                             if (filename.length > 1)
                                                             {
                                                             document.title = filename[1].trim() + "_" + filename[0].trim() + "_eSB";
                                                             } else
                                                             {
                                                             document.title = filename[0].trim() + "_eSB";
                                                             }*/
                                                            document.title = $('#patname').text() + "_eSB";

                                                            //    window.location.href = 'index.php'
                                                        };
                                                    }

                                                    //   window.onload = yourfunction;



                                                });


    </script>
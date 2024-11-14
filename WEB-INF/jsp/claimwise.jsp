<%-- 
    Document   : view_eligibility_request
    Created on : 07-Mar-2021, 1:55:15 pm
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>All Claim List </title>
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
            .datepicker tbody tr > td.day.range {
                background: #c0b5b5 !important;
            }
            ol.linenums {
                margin: 0 0 0 -8px;
            }
            #para_file, #para_payor, #para_chk, #ddlSearchPractice, #para_npi{
                display: none;
            }

        </style>

        <jsp:include page="includes/header.jsp"></jsp:include>

        <section class="pcoded-main-container">
            <div class="pcoded-wrapper">
                <div class="pcoded-content">
                    <div class="pcoded-inner-content">
                        <div class="main-body">
                            <div class="page-wrapper">
                                <div class="row">
                                    <!-- Zero config table start -->
                                    <div class="col-sm-12">
                                        <div class="card">
                                            <div class="card-body">
                                                <div class="row">
                                                    <div class="col-md-3 col-md-3 p-l-0">
                                                        <div class="form-group">
                                                            <label class="col-form-label col col-30px">Filter By Received Date</label>
                                                            <div class='input-group pull-right' id='pc-daterangepicker-6' style="width: 230px;height: 33px;">
                                                                <input type='text' readonly="" class="form-control" placeholder="Select date range" />
                                                                <div class='input-group-append'>
                                                                    <span class="input-group-text"><i class="feather icon-calendar"></i></span>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-3 p-l-15">
                                                        <div class="form-group">
                                                            <label class="col-form-label col col-30px">Search For</label>
                                                            <select class="form-control js-example-placeholder-multiple"  name="ddlsearch" id="ddlsearch" >
                                                                <option value = "0">select</option> 
                                                                <option value = "1">Patient Firstname</option> 
                                                                <option value = "2">Patient Lastname</option> 
                                                                <option value = "3">File #</option> 
                                                                <option value = "4">EFT</option> 
                                                                <option value = "5">Claim #</option> 
                                                                <option value = "6">Payor ICN</option>
                                                                <option value = "7">Payor</option> 
                                                                <option value = "8">Practice</option> 
                                                                <option value = "9">Billing NPI</option> 
                                                            </select>

                                                        </div>
                                                    </div>

                                                    <div class="col-md-3 p-l-0">
                                                        <div class="form-group">
                                                            <label class="col-form-label col col-30px" style="color:white;" id="paraid">Parameter</label>                                                             
                                                            <input type='text' id="para_Firstname" class="form-control" style="display:none;" placeholder="First Name" />
                                                            <input type='text' id="para_Lastname" class="form-control" placeholder="Last Name" style="display:none;" />
                                                            <input type='text' id="para_File" class="form-control" placeholder="File" style="display:none;" />
                                                            <input type='text' id="para_Eft" class="form-control" placeholder="EFT" style="display:none;" />
                                                            <input type='text' id="para_Claim" class="form-control" placeholder="Claim" style="display:none;" />
                                                            <input type='text' id="para_PayorIcn" class="form-control" placeholder="Payor ICN" style="display:none;" />
                                                            <input type='text' id="para_Payor" class="form-control" placeholder="Payor" style="display:none;" />
                                                            <input type="text" class="form-control" id="ddlSearchPractice" placeholder="Practice"  name="ddlSearchPractice" style="display:none;" />
                                                            <input type='text' id="para_BillingNPI" class="form-control" placeholder="Billing NPI" style="display:none;" />
                                                        </div>
                                                    </div>

                                                    <div class="col-md-3">
                                                        <div class="row form-group m-t-30" style="margin-top:31px;">   
                                                            <button id="search" class="btn btn-success" style="padding:5px 20px!important;">Search</button>
                                                            <button id="showall" class="btn btn-primary" style="padding:5px 20px!important;">Reset</button>
                                                        </div>
                                                    </div>
                                                    <hr>


                                                    <div class="col col-30px">
                                                        <div class="card support-bar clawise-boxes">
                                                            <div class="card-footer bg-warning text-white" style="padding: 0 25px !important;height: 33px;">
                                                                <div class="row text-center">
                                                                    <div class="col" title="Total Charge" data-toggle="tooltip" data-placement="top" style="padding-top: 7px">
                                                                        <h5 class="m-0 text-white" id="totalcharge" title="Total Charge" style="font-size: 15px"></h5>
                                                                        <!--<span>Screen Total</span>-->
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="card support-bar">
                                                            <div class="card-footer bg-c-blue text-white" style="padding: 0 25px !important;height: 33px;">
                                                                <div class="row text-center">
                                                                    <div class="col" title="Screen Charge" data-toggle="tooltip" data-placement="bottom" style="padding-top: 7px">
                                                                        <h5 class="m-0 text-white" id="screencharge" title="Screen Charge" style="font-size: 15px"></h5>
                                                                        <!--<span>Screen Total</span>-->
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col col-30px">
                                                        <div class="card support-bar clawise-boxes">
                                                            <div class="card-footer bg-c-purple text-white" style="padding: 0 25px !important;height: 33px;">
                                                                <div class="row text-center">
                                                                    <div class="col" title="Total Paid" data-toggle="tooltip" data-placement="top" style="padding-top: 7px">
                                                                        <h5 class="m-0 text-white" id="totalpaid" title="Total Paid" style="font-size: 15px"></h5>
                                                                        <!--<span>Screen Total</span>-->
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="card support-bar">
                                                            <div class="card-footer bg-c-green text-white" style="padding: 0 25px !important;height: 33px;">
                                                                <div class="row text-center">
                                                                    <div class="col" title="Screen Paid" data-toggle="tooltip" data-placement="bottom" style="padding-top: 7px">
                                                                        <h5 class="m-0 text-white" id="screenpaid" title="Screen Paid" style="font-size: 15px"></h5>
                                                                        <!--<span>Screen Total</span>-->
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col col-30px">
                                                        <div class="card support-bar clawise-boxes">
                                                            <div class="card-footer text-white" style="padding: 0 25px !important;height: 33px;background: #52064a">
                                                                <div class="row text-center">
                                                                    <div class="col" title="Total PR" data-toggle="tooltip" data-placement="top" style="padding-top: 7px">
                                                                        <h5 class="m-0 text-white" id="totalpr" title="Total PR" style="font-size: 15px"></h5>
                                                                        <!--<span>Screen Total</span>-->
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="card support-bar">
                                                            <div class="card-footer bg-c-red text-white" style="padding: 0 25px !important;height: 33px;">
                                                                <div class="row text-center">
                                                                    <div class="col" title="Screen PR" data-toggle="tooltip" data-placement="bottom" style="padding-top: 7px">
                                                                        <h5 class="m-0 text-white" id="screenpr" title="Screen PR" style="font-size: 15px"></h5>
                                                                        <!--<span>Screen Total</span>-->
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>  
                                                <br>
                                                <hr class="hrtopbtm">
                                                <br><br>
                                                <hr class="hrtopbtm">
                                                <div class="dt-responsive table-responsive tablehide" >
                                                    <div class="tableFixHead_claim1">
                                                        <table id="simpletable" width="98%" class="table table-striped table-bordered nowrap">
                                                            <!--<table id="simpletable" class="table table-striped table-bordered nowrap">-->
                                                            <thead>
                                                                <tr>
                                                                    <th><input id="headercheck" type="checkbox"> </th> 
                                                                    <th>File #</th>
                                                                    <th>EFT #</th>
                                                                    <th>Claim #</th>
                                                                    <th>Payor ICN</th>
                                                                    <th>CHK-Date</th>
                                                                    <th>Status </th>
                                                                    <th>Payor</th>
                                                                    <th>Payee</th>
                                                                    <th>Charge</th>
                                                                    <th>Paid</th>
                                                                    <th>PR</th>
                                                                    <th>CR-Date</th>
                                                                    <th>CFI</th>
                                                                    <th>Patient</th>
                                                                    <th>Covered</th>
                                                                    <th>SUBSCRIBER ID</th>
                                                                    <th>SUBSCRIBER Name</th>
                                                                    <th>PROVIDER NPI</th>
                                                                    <th>PROVIDER Name</th>
                                                                    <th>CR Date</th>
                                                                    <th>tid</th>
                                                                    <th>Desc</th>
                                                                    <th>Payor</th>
                                                                    <th>Payee</th>
                                                                    <th>CHK-Date</th>
                                                                </tr>
                                                            </thead>
                                                            <tbody>


                                                            </tbody>
                                                        </table>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- [ Main Content ] end -->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>    

        <div id="flading" class="loader">

        </div>

        <div id="modalConfirmYesNo" class="modal fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" 
                                class="close" data-dismiss="modal" aria-label="Close">

                        </button>
                        <h4 id="lblTitleConfirmYesNo" class="modal-title">Confirmation</h4>
                    </div>
                    <div class="modal-body">
                        <p id="lblMsgConfirmYesNo"></p>
                    </div>
                    <div class="modal-footer">
                        <button id="btnYesConfirmYesNo" 
                                type="button" class="btn btn-primary">Yes</button>
                        <button id="btnNoConfirmYesNo" 
                                type="button" class="btn btn-default">No</button>
                    </div>
                </div>
            </div>
        </div>

        <div class="q-view">
            <div class="overlay"></div>
            <div class="content">
                <div class="card-body">
                    <h4>Raise Ticket</h4>
                    <div class="border-bottom pb-3 pt-3">
                        <div class="row">
                            <div class="col-md-7">

                                <p class="list-inline-item mb-0">By <label class="mb-0" id="raiseduser" ></label></p>
                            </div>
                            <div class="col-md-5 text-right">
                                <p class="d-inline-block mb-0"><i class="feather icon-calendar mr-1"></i><label class="mb-0" id="currentdate" ></label></p>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- [ tinymce editor ] start -->
                <div class="col-sm-12">
                    <div class="card border-0 shadow-none">
                        <div class="card-body pr-0 pl-0 pt-0">

                            <!--   <h3 class="model-bg-custom">Raise Ticket <button type="button" id="model_close1" class="close" style="font-size:12px; padding-left:20px" data-dismiss="modal" aria-hidden="true">X</button></h3> -->


                            <div>
                            <form:form method="POST" action="uploadticketatt" modelAttribute="uploadticketatt" enctype="multipart/form-data">

                                <div class="form-group row">
                                    <div class="col-lg-6">
                                        <label class="form-label" for="ticket_type_id">Type <span class="text-danger">*</span></label>
                                        <select class="form-control" required id="ticket_type_id" name ="ticket_type_id">
                                            <option value = "" >--Select--</option>
                                            <c:forEach var="ticket" items="${tickettypelist}">
                                                <option value = ${ticket.tid} >${ticket.ticket_type}</option>
                                            </c:forEach>
                                        </select>
                                    </div>

                                    <div class="col-lg-6">
                                        <label class="form-label" for="ticket_priority_id">Priority <span class="text-danger">*</span></label>
                                        <select class="form-control" required id="ticket_priority_id" name ="ticket_priority_id">
                                            <c:forEach var="ticket" items="${ticketprioritylist}">
                                                <option value = ${ticket.tid}>${ticket.ticket_priority}</option>
                                            </c:forEach>
                                        </select>

                                    </div>


                                </div>									
                                <div class="form-group row">

                                    <div class="col-lg-6">
                                        <label class="form-label">Browse </label>

                                        <input class="form-control" type="file" name="file" id="attachment_id" multiple accept="application/pdf, image/jpeg">  


                                        <div class="preview"></div>
                                        <div class="progress1" style="display:none">
                                            <div class="progress-bar1"  id="ticketprogress" role="progressbar" aria-valuenow="0"
                                                 aria-valuemin="0" aria-valuemax="100" style="width:0%">
                                                0%
                                            </div>
                                        </div>
                                    </div>	

                                    <div class="col-lg-6">
                                        <label class="form-label"  for="assigned_to">Assign To</label>

                                        <select class="form-control js-example-placeholder-multiple" id="assigned_to"  name="assigned_to">
                                            <option value = "0" >--Select--</option>
                                            <c:forEach var="ticket" items="${assignuserlist}">
                                                <option value = ${ticket.user_id}>${ticket.username}</option>
                                            </c:forEach>
                                        </select>
                                    </div>

                                </div>

                                <div class="form-group row">
                                    <div class="col-lg-12">

                                        <!-- <input type="text" name="description" class="required form-control" id="description" required placeholder="Enter description" > -->
                                        <div class="card-body">

                                            <div id="summernote">

                                                <p>
                                                </p>

                                            </div>
                                        </div>
                                    </div><!-- comment -->

                                </div>


                                <div class="form-group row">                                               
                                    <div class="col-lg-4">
                                        <button type="submit"  id="btnsubmit" class="btn btn-rounded btn-greenadd btn-block">Submit</button>
                                    </div>
                                </div>
                            </form:form>

                        </div>

                    </div>



                </div>
            </div>
            <!-- [ tinymce editor ] end -->
        </div>

    </div>    

    <jsp:include page="includes/footer.jsp"></jsp:include>


        <script src="assets/js/plugins/select2.full.min.js"></script>
        <script src="assets/js/pages/form-select-custom.js"></script>

        <script type="text/javascript">
            $(document).ready(function () {
                var practiceid = '<%=session.getAttribute("practiceid")%>';
                $('#para_Firstname').hide();
                $('#para_Lastname').hide();
                $('#para_File').hide();
                $('#para_Eft').hide();
                $('#para_Claim').hide();
                $('#para_PayorIcn').hide();
                $('#para_Payor').hide();
                $('#ddlSearchPractice').hide();
                $('#para_BillingNPI').hide();
                var claimdt = localStorage.getItem("claimdate");
                var start, end, para = '', paraVal = '';
                if (claimdt === null) {
                    start = moment().subtract(10, 'year');
                    end = moment();
                    $('#pc-daterangepicker-6 .form-control').val(start.format('MM/DD/YYYY') + ' / ' + end.format('MM/DD/YYYY'));
                } else {
                    var currentVal = claimdt;
                    start = currentVal.split(" / ")[0];
                    end = currentVal.split(" / ")[1];
                    $('#pc-daterangepicker-6 .form-control').val(moment(start).format("MM/DD/YYYY") + ' / ' + moment(end).format("MM/DD/YYYY"));
                    localStorage.setItem("claimdate", moment(start).format("MM/DD/YYYY") + ' / ' + moment(end).format("MM/DD/YYYY"));
                }


                $(".table-responsive").removeClass("tablehide");
                $(".table-responsive").addClass("tableshow");
                var checked = 0;
                var notflag = 'N';
                var now = new Date();
                var year = now.getFullYear();
                var myyearSelect = $('#yearid');
                myyearSelect.find('option').remove();
                $('<option>').val(0).text('').appendTo(myyearSelect);
                for (var i = year - 20; i < year + 1; i++) {
                    $('<option>').val(i).text(i).appendTo(myyearSelect);
                    // $('<option></option>').val(i).html(i).appendTo(myyearSelect);
                }

                function callTotalClaimValue(startDate, endDate, para, paraVal) {
                    $.ajax({
                        url: "getClaimValueList",
                        type: "get", //send it through get method
                        data: {
                            "startDate": startDate,
                            "endDate": endDate,
                            "para": para,
                            "paraVal": paraVal
                        },
                        success: function (response) {
                            var chargeamt = parseFloat(checkNaN(response.data[0].chargeamt));
                            var paidamt = parseFloat(checkNaN(response.data[0].paidamt));
                            var patientres = parseFloat(checkNaN(response.data[0].patientres));
                            $('#totalcharge').html('$ ' + chargeamt.toFixed(2));
                            $('#totalpaid').html('$ ' + paidamt.toFixed(2));
                            $('#totalpr').html('$ ' + patientres.toFixed(2));
                        }
                    });
                }

                function ShowConfirmYesNo() {
                    AsyncConfirmYesNo(
                            "Confirmation Box",
                            "You are about to create multiple tickets, Do you wish to continue?",
                            MyYesFunction,
                            MyNoFunction
                            );
                }

                function MyYesFunction() {
                    // alert("Time to get off your workstation!");
                    // $("#lblTestResult").html("You are hungry");
                    $(".q-view").addClass("active");
                }
                var selected = [];
                var isAllSelected = 0;
                function MyNoFunction() {
                    $(".overlay").click();
                    // $("#lblTestResult").html("You are not hungry");
                    $('#headercheck').prop('checked', false);
                    $('#simpletable tbody input[type=checkbox]').each(function () {
                        $(this).prop('checked', false);
                        if (checked > 0)
                        {
                            checked--;
                        }
                    });
                    selected = [];
                    isAllSelected = 0;
                }

                function AsyncConfirmYesNo(title, msg, yesFn, noFn) {
                    var $confirm = $("#modalConfirmYesNo");
                    $confirm.modal('show');
                    $("#lblTitleConfirmYesNo").html(title);
                    $("#lblMsgConfirmYesNo").html(msg);
                    $("#btnYesConfirmYesNo").off('click').click(function () {
                        yesFn();
                        $confirm.modal("hide");
                    });
                    $("#btnNoConfirmYesNo").off('click').click(function () {
                        noFn();
                        $confirm.modal("hide");
                    });
                }
                $('#headercheck').prop('checked', false);
                var entity = '<%= session.getAttribute("Entityid")%>';
                var entity_user = '';
                var entity_user_to = '';
                var entity_user_cc = '';
                var entity_user_bcc = '';
                var now = new Date();
                var day = '';
                var month = '';
                var hr = '';
                var min = '';
                var sec = '';
                if (now.getDate() < 10) {
                    day = '0' + now.getDate();
                } else {
                    day = now.getDate();
                }
                if ((now.getMonth() + 1) < 10) {
                    month = '0' + parseInt(now.getMonth() + 1);
                } else {
                    month = parseInt(now.getMonth() + 1);
                }
                if ((now.getHours()) < 10) {
                    hr = '0' + parseInt(now.getHours());
                } else {
                    hr = parseInt(now.getHours());
                }
                if (now.getMinutes() < 10) {
                    min = '0' + parseInt(now.getMinutes());
                } else {
                    min = parseInt(now.getMinutes());
                }
                if (now.getSeconds() < 10) {
                    sec = '0' + parseInt(now.getSeconds());
                } else {
                    sec = parseInt(now.getSeconds());
                }
                var today = now.getFullYear() + '-' + (month) + '-' + day + "T" + hr + ":" + min + ":" + sec;
                var today1 = (month) + '/' + day + '/' + now.getFullYear() + " " + hr + ":" + min + ":" + sec;
                $('#monthid').val('');
                $('#yearid').val('0');
                $('#currentdate').text(today1);
                var LoginUsername = '<%= session.getAttribute("LoginUsername")%>';
                $('#raiseduser').text(LoginUsername);
                $('#flading').hide();
                $(".overlay").click(function () {
                    $(".q-view").removeClass("active");
                });
                $('#ddlsearch').change(function (event) {

                    if ($('#ddlsearch').val() === '1') {
                        $('#para_Firstname').show();
                        $('#para_Lastname').hide();
                        $('#para_File').hide();
                        $('#para_Eft').hide();
                        $('#para_Claim').hide();
                        $('#para_PayorIcn').hide();
                        $('#para_Payor').hide();
                        $('#ddlSearchPractice').hide();
                        $('#para_BillingNPI').hide();
                        $('#para_Firstname').val('');
                    } else if ($('#ddlsearch').val() === '2') {
                        $('#para_Firstname').hide();
                        $('#para_Lastname').show();
                        $('#para_File').hide();
                        $('#para_Eft').hide();
                        $('#para_Claim').hide();
                        $('#para_PayorIcn').hide();
                        $('#para_Payor').hide();
                        $('#ddlSearchPractice').hide();
                        $('#para_BillingNPI').hide();
                        $('#para_Lastname').val('');
                    } else if ($('#ddlsearch').val() === '3') {
                        $('#para_Firstname').hide();
                        $('#para_Lastname').hide();
                        $('#para_File').show();
                        $('#para_Eft').hide();
                        $('#para_Claim').hide();
                        $('#para_PayorIcn').hide();
                        $('#para_Payor').hide();
                        $('#ddlSearchPractice').hide();
                        $('#para_BillingNPI').hide();
                        $('#para_File').val('');
                    } else if ($('#ddlsearch').val() === '4') {
                        $('#para_Firstname').hide();
                        $('#para_Lastname').hide();
                        $('#para_File').hide();
                        $('#para_Eft').show();
                        $('#para_Claim').hide();
                        $('#para_PayorIcn').hide();
                        $('#para_Payor').hide();
                        $('#ddlSearchPractice').hide();
                        $('#para_BillingNPI').hide();
                        $('#para_Eft').val('');
                    } else if ($('#ddlsearch').val() === '5') {
                        $('#para_Firstname').hide();
                        $('#para_Lastname').hide();
                        $('#para_File').hide();
                        $('#para_Eft').hide();
                        $('#para_Claim').show();
                        $('#para_PayorIcn').hide();
                        $('#para_Payor').hide();
                        $('#ddlSearchPractice').hide();
                        $('#para_BillingNPI').hide();
                        $('#para_Claim').val('');
                    } else if ($('#ddlsearch').val() === '6') {
                        $('#para_Firstname').hide();
                        $('#para_Lastname').hide();
                        $('#para_File').hide();
                        $('#para_Eft').hide();
                        $('#para_Claim').hide();
                        $('#para_PayorIcn').show();
                        $('#para_Payor').hide();
                        $('#ddlSearchPractice').hide();
                        $('#para_BillingNPI').hide();
                        $('#para_PayorIcn').val('');
                    } else if ($('#ddlsearch').val() === '7') {
                        $('#para_Firstname').hide();
                        $('#para_Lastname').hide();
                        $('#para_File').hide();
                        $('#para_Eft').hide();
                        $('#para_Claim').hide();
                        $('#para_PayorIcn').hide();
                        $('#para_Payor').show();
                        $('#ddlSearchPractice').hide();
                        $('#para_BillingNPI').hide();
                        $('#para_Payor').val('');
                    } else if ($('#ddlsearch').val() === '8') {
                        $('#para_Firstname').hide();
                        $('#para_Lastname').hide();
                        $('#para_File').hide();
                        $('#para_Eft').hide();
                        $('#para_Claim').hide();
                        $('#para_PayorIcn').hide();
                        $('#para_Payor').hide();
                        $('#ddlSearchPractice').show();
                        $('#para_BillingNPI').hide();
                        $('#ddlSearchPractice').val('');
                    } else if ($('#ddlsearch').val() === '9') {
                        $('#para_Firstname').hide();
                        $('#para_Lastname').hide();
                        $('#para_File').hide();
                        $('#para_Eft').hide();
                        $('#para_Claim').hide();
                        $('#para_PayorIcn').hide();
                        $('#para_Payor').hide();
                        $('#ddlSearchPractice').hide();
                        $('#para_BillingNPI').show();
                        $('#para_BillingNPI').val('');
                    } else {
                        $('#para_Firstname').hide();
                        $('#para_Lastname').hide();
                        $('#para_File').hide();
                        $('#para_Eft').hide();
                        $('#para_Claim').hide();
                        $('#para_PayorIcn').hide();
                        $('#para_Payor').hide();
                        $('#ddlSearchPractice').hide();
                        $('#para_BillingNPI').hide();
                    }

                });
                $('#ddlsearch').val(0).change();
                var searchColumn = '';
                var searchValue = '';
                function exportOption() {
                    var innerSearchValue = table.search();
                    // alert(innerSearchValue);
                    $.ajax({
                        url: 'claimdata',
                        type: 'POST',
                        contentType: 'application/json',
                        dataType: 'json',
                        data: JSON.stringify({
                            "startDate": moment(start).format("YYYY-MM-DD"),
                            "endDate": moment(end).format("YYYY-MM-DD"),
                            "searchColumn": searchColumn,
                            "searchValue": searchValue,
                            "innerSearchValue": innerSearchValue
                        }),
                        success: function (data) {
                            var csvContent = "data:text/csv;charset=utf-8,";
                            csvContent += "File,EFT,Claim,PayorICN,CHK-Date,Status,Payor,Payee,Charge,Paid,PR,CRDate,Patient,NPI\n";
                            var obj = jQuery.parseJSON(data.exportData);
                            $.each(obj, function (key, value) {
                                var row = [
                                    value.fn,
                                    value.eft,
                                    value.claimno,
                                    value.payericn,
                                    value.eftdate,
                                    value.status,
                                    value.payer,
                                    value.payee,
                                    value.chargeamt,
                                    value.paidamt,
                                    value.patientres,
                                    value.recdate,
                                    (decodeURI(value.lname) + ' ' + decodeURI(value.fname)),
                                    value.billingNPI
                                ];
                                var escapedRow = row.map(function (field) {
                                    return '"' + field + '"';
                                });
                                csvContent += escapedRow.join(",") + "\n";
                            });
                            var link = document.createElement("a");
                            link.setAttribute("href", encodeURI(csvContent));
                            link.setAttribute("download", "AllClaimList.csv");
                            link.style.display = "none";
                            document.body.appendChild(link);
                            link.click();
                            document.body.removeChild(link);
                            $('#flading').hide();
                            msgbox("Success", "", "success");
                            MyNoFunction();
                        },
                        error: function (xhr, status, error) {
                            console.error(xhr, status, error);
                            $('#flading').hide();
                            msgbox("Failed", "", "error");
                            MyNoFunction();
                        }
                    });
                    return data.exportData;
                }   

                $('[id*=simpletable] tbody').on('click', 'td:first-child', function () {
                    var id = $(this).closest('tr').index();
                    if (selected.length > 0 && selected.includes(id)) {
                        var index = selected.indexOf(id);
                        if (index !== -1) {
                            selected.splice(index, 1);
                        }
                    } else {
                        selected.push(id);
                    }
                });

                $('[id*=simpletable] thead').on('click', 'th:first-child', function () {
                    if (isAllSelected > 0) {
                        selected = [];
                        isAllSelected = 0;
                    } else {
                        selected = [];
                        isAllSelected++;
                    }
                });
                
                function exportAllSelection() {
                  //  alert("isAllSelected: " + isAllSelected);
                 //   alert("selected.length: " + selected.length);
                  //  console.log("selected: " + selected);

                    if (isAllSelected > 0) {
                        exportCurrentTableAsXl();
                        isAllSelected = 0;
                        selected = [];
                    } else if (selected.length > 0) {
                        exportSelection();
                        isAllSelected = 0;
                        selected = [];
                    } else {
                        exportOption();
                        isAllSelected = 0;
                        selected = [];
                    }
                }

                var selectedRecords = [];
                function exportSelection() {
                    selectedRecords = [];
                    for (var i = 0; i < selected.length; i++) {
                        selectedRecords.push(Object.values(currentTableResponse)[selected[i]]);
                    }
                    var csvContent = "data:text/csv;charset=utf-8,";
                    csvContent += "File,EFT,Claim,PayorICN,CHK-Date,Status,Payor,Payee,Charge,Paid,PR,CR-Date,Patient,NPI\n";
                    $.each(selectedRecords, function (key, value) {
                        var row = [
                            value.fn,
                            value.eft,
                            value.claimno,
                            value.payericn,
                            value.eftdate,
                            value.status,
                            value.payer,
                            value.payee,
                            value.chargeamt,
                            value.paidamt,
                            value.patientres,
                            value.recdate,
                            (decodeURI(value.lname) + ' ' + decodeURI(value.fname)),
                            value.billingNPI
                        ];
                        var escapedRow = row.map(function (field) {
                            return '"' + field + '"';
                        });
                        csvContent += escapedRow.join(",") + "\n";
                    });
                    var link = document.createElement("a");
                    link.setAttribute("href", encodeURI(csvContent));
                    link.setAttribute("download", "AllClaimList.csv");
                    link.style.display = "none";
                    document.body.appendChild(link);
                    link.click();
                    document.body.removeChild(link);
                    $('#flading').hide();
                    msgbox("Success", "", "success");
                    MyNoFunction();
                    return data.exportData;
                }
                var currentTableResponse = '';
                function exportCurrentTableAsXl() {
                    var csvContent = "data:text/csv;charset=utf-8,";
                    csvContent += "File,EFT,Claim,PayorICN,CHK-Date,Status,Payor,Payee,Charge,Paid,PR,CR-Date,Patient,NPI\n";
                    $.each(currentTableResponse, function (key, value) {
                        var row = [
                            value.fn,
                            value.eft,
                            value.claimno,
                            value.payericn,
                            value.eftdate,
                            value.status,
                            value.payer,
                            value.payee,
                            value.chargeamt,
                            value.paidamt,
                            value.patientres,
                            value.recdate,
                            (decodeURI(value.lname) + ' ' + decodeURI(value.fname)),
                            value.billingNPI
                        ];
                        var escapedRow = row.map(function (field) {
                            return '"' + field + '"';
                        });
                        csvContent += escapedRow.join(",") + "\n";
                    });
                    var link = document.createElement("a");
                    link.setAttribute("href", encodeURI(csvContent));
                    link.setAttribute("download", "AllClaimList.csv");
                    link.style.display = "none";
                    document.body.appendChild(link);
                    link.click();
                    document.body.removeChild(link);
                    $('#flading').hide();
                    msgbox("Success", "", "success");
                    MyNoFunction();
                    return data.exportData;
                }
                var table = $('#simpletable').DataTable({
                    "aaSorting": [], // Sort by first column descending [11, "desc"]
                    "lengthMenu": [10, 30, 50, 100, 200, 500, 1000],
                    "pageLength": 100,
                    stateSave: true,
                    scrollY: "300px",
                    scrollX: true,
                    scrollCollapse: true,
                    paging: true,
                    fixedHeader: true,
                    "oLanguage": {
                        "sEmptyTable": "No Data..."
                    },
                    "columnDefs": [
                        {'visible': false, 'targets': [13, 15, 16, 17, 18, 19, 20, 22, 23, 24, 25, 26]}
                    ],
                    drawCallback: function (settings, json) {

                        $('[data-toggle="tooltip"]').tooltip('update');
                    },
                    processing: true,
                    serverSide: true,
                    "ajax": {
                        "type": "POST",
                        "url": 'claimdata',
                        "contentType": 'application/json',
                        "dataType": "json",
                        "data": function (d) {
                            return JSON.stringify($.extend({}, d, {
                                "startDate": moment(start).format("YYYY-MM-DD"),
                                "endDate": moment(end).format("YYYY-MM-DD")
                            }));
                        }
                        , dataSrc: function (data) {
                            currentTableResponse = jQuery.parseJSON(data.exportData);
                            return  data.data;
                        }
                    },
                    "columns": [
                        {"data": function (data) {
                                return '<input type="checkbox" class = "check">';
                            }, "orderable": false, "searchable": false, "name": "check"},
                        {"data": "fn", "orderable": true, "searchable": true, "name": "fn"},
                        {"data": function (data) {
                                return "<a class='vu-idbole' target='_blank' href= 'eobwise?eft=" + data.eft + "'>" + data.eft + "</a>";
                            },
                            "orderable": true, "searchable": true, "name": "eft"},
                        {"data": function (data) {
                                return "<a class='vu-idbole' target='_blank' href= 'patientwise?rid=" + data.claimno + "&pr=" + data.patientres + "&icn=" + data.payericn + "&payer=" + data.payer + "&file=" + data.fn + "&payee=" + data.payee + "~" + data.lname + "," + data.fname + "~" + data.fn + "~" + data.chargeamt + "~" + data.paidamt + "~" + data.insid + "~" + data.inslname + ", " + data.insfname + "~" + data.rendproid + "~" + data.rendprolname + ", " + data.rendprofname + "'>" + data.claimno + "</a>";
                            },
                            "orderable": true, "searchable": true, "name": "claimno"},
                        {"data": "payericn", "orderable": true, "searchable": true, "name": "payericn"},
                        {"data": "seftdate", "orderable": true, "searchable": true, "name": "seftdate"},
                        {"data": "status", "orderable": true, "searchable": true, "name": "status"},
                        {"data": "spayer", "orderable": true, "searchable": true, "name": "payer"},
                        {"data": "spayee", "orderable": true, "searchable": true, "name": "payee"},
                        {"data": "chargeamt", "orderable": true, "searchable": true, "name": "chargeamt"},
                        {"data": "paidamt", "orderable": true, "searchable": true, "name": "paidamt"},
                        {"data": "patientres", "orderable": true, "searchable": true, "name": "patientres"},
                        {"data": "rrecdate", "orderable": true, "searchable": true, "name": "rrecdate"},
                        {"data": "scfi", "orderable": true, "searchable": true, "name": "cfi"},
                        {"data": function (data) {
                                //  return  data.lname + ", " + data.fname;
                                return "<a href= '#'>" + data.lname + ", " + data.fname + "</a>";
                            },
                            "orderable": true, "searchable": true, "name": "patient"},
                        {"data": "coveramt", "orderable": true, "searchable": true, "name": "coveramt"},
                        {"data": "insid", "orderable": true, "searchable": true, "name": "insid"},
                        {"data": function (data) {
                                return  data.inslname + ", " + data.insfname;
                            },
                            "orderable": true, "searchable": true, "name": "inslname"},
                        {"data": "rendproid", "orderable": true, "searchable": true, "name": "rendproid"},
                        {"data": function (data) {
                                return  data.rendprolname + ", " + data.rendprofname;
                            },
                            "orderable": true, "searchable": true, "name": "rendprolname"},
                        {"data": "recdate", "orderable": true, "searchable": true, "name": "recdate"},
                        {"data": "tid", "orderable": true, "searchable": true, "name": "tid"},
                        {"data": "desc", "orderable": true, "searchable": true, "name": "desc"},
                        {"data": "payer", "orderable": true, "searchable": true, "name": "payer"},
                        {"data": "payee", "orderable": true, "searchable": true, "name": "payee"},
                        {"data": "eftdate", "orderable": true, "searchable": true, "name": "eftdate"},
                        {"data": "billingNPI", "orderable": true, "searchable": true, "name": "billingNPI"}
                    ],
                    dom: 'fBrtipl',
                    buttons: [
                        {
                            extend: 'csv',
                            text: '<img src="assets/images/excelicon.png">',
                            className: 'dt-pdf-btn',
                            titleAttr: 'Download list in excel Format',
                            exportOptions: {
                                columns: [1, 3, 4, 2, 25, 6, 23, 24, 9, 10, 11, 20, 14, 26]
                            }, action: function (e, dt, button, config) {
                                $('#flading').show();
                                // Retrieve the start and end date values
                                exportAllSelection();

                            }
                        },
//                        'csv',
                        {
                            extend: 'pdfHtml5',
                            orientation: 'landscape',
                            text: '<img src="assets/images/pdficon.png">',
                            className: 'dt-pdf-btn',
                            titleAttr: 'Download list in PDF Format',
                            pageSize: 'LEGAL',
                            exportOptions: {
                                columns: [1, 3, 4, 2, 25, 6, 23, 24, 9, 10, 11, 20, 14, 26]
                            },
                            action: function (e, dt, button, config) {
                                $('#flading').show();
                                // Retrieve the start and end date values
                                exportOptionPDF();
                            }
                        }
                    ],
                    //  buttons: ['copy', 'csv', 'excel', 'pdf', 'print'],
                    createdRow: function (row, data, dataIndex) {
                        // add tooltip when row is created
                        $(row).find('td:eq(6)').attr('data-toggle', "tooltip");
                        $(row).find('td:eq(6)').attr('data-placement', "left");
                        $(row).find('td:eq(6)').attr('data-original-title', data["desc"]);
                        $(row).find('td:eq(12)').text(data["recdate"].toString());
                        $(row).find('td:eq(7)').attr('data-toggle', "tooltip");
                        $(row).find('td:eq(7)').attr('data-placement', "left");
                        $(row).find('td:eq(7)').attr('data-original-title', data["payer"]);
                        $(row).find('td:eq(8)').attr('data-toggle', "tooltip");
                        $(row).find('td:eq(8)').attr('data-placement', "left");
                        $(row).find('td:eq(8)').attr('data-original-title', data["payee"]);
                        $(row).find('td:eq(5)').text(data["eftdate"].toString());

                    },
                    footerCallback: function (tfoot, data, start, end, display) {
                        var api = this.api(), data;
                        // Remove the formatting to get integer data for summation
                        var intVal = function (i) {
                            return typeof i === 'string' ?
                                    i.replace(/[\$,]/g, '') * 1 :
                                    typeof i === 'number' ?
                                    i : 0;
                        };
                        // Total Charge
                        /* var charge = api
                         .column(9, {filter: 'applied'})
                         .data()
                         .reduce(function (a, b) {
                         return intVal(a) + intVal(b);
                         }, 0); */
                        // Total charge over this page
                        var pagecharge = api
                                .column(9, {page: 'current'})
                                .data()
                                .reduce(function (a, b) {
                                    return intVal(a) + intVal(b);
                                }, 0);
                        // Total Paid       
                        /*  var paid = api
                         .column(10, {filter: 'applied'})
                         .data()
                         .reduce(function (a, b) {
                         return intVal(a) + intVal(b);
                         }, 0);  */
                        // Total Paid over this page
                        var pagepaid = api
                                .column(10, {page: 'current'})
                                .data()
                                .reduce(function (a, b) {
                                    return intVal(a) + intVal(b);
                                }, 0);
                        // Total PR       
                        /*  var pr = api
                         .column(11, {filter: 'applied'})
                         .data()
                         .reduce(function (a, b) {
                         return intVal(a) + intVal(b);
                         }, 0); */
                        // Total PR over this page
                        var pagepr = api
                                .column(11, {page: 'current'})
                                .data()
                                .reduce(function (a, b) {
                                    return intVal(a) + intVal(b);
                                }, 0);
                        /*    $(api.column(0).footer()).html(
                         "Total Charge " + charge.toFixed(2) + "   | Total Paid: " + paid.toFixed(2) + "   | Total PR: " + pr.toFixed(2) + "<br>" +
                         "Screen Charge " + pagecharge.toFixed(2) + "   | Screen Paid: " + pagepaid.toFixed(2) + "   | Screen PR: " + pagepr.toFixed(2)
                         // '$' + pageTotal + ' ( $' + total + ' total)'
                         ); */
//                        $('#totalcharge').html('$ ' + charge.toFixed(2));
//                        $('#totalpaid').html('$ ' + paid.toFixed(2));
//                        $('#totalpr').html('$ ' + pr.toFixed(2));
                        $('#screencharge').html('$ ' + pagecharge.toFixed(2));
                        $('#screenpaid').html('$ ' + pagepaid.toFixed(2));
                        $('#screenpr').html('$ ' + pagepr.toFixed(2));
                        $('#flading').hide();
                    }

                });

                table.on('page.dt', function () {
                    $('.dataTables_scrollBody').scrollTop(0);
                });

                table.on('length.dt', function () {
                    $('.dataTables_scrollBody').scrollTop(0);
                });

                function exportOptionPDF() {
                    $('#flading').show();
                    var startDate = moment(start).format("YYYY-MM-DD");
                    var endDate = moment(end).format("YYYY-MM-DD");
                    location.href = "exportClaimPdf?startDate=" + startDate + "&endDate=" + endDate;
                    $('#flading').hide();
                }

                // Initial
                callTotalClaimValue(moment(start).format("YYYY-MM-DD"), moment(end).format("YYYY-MM-DD"), '', '');
                //         }
                //        loadClaimDataTable();
                $('#pc-daterangepicker-6').daterangepicker({
                    buttonClasses: ' btn',
                    applyClass: 'btn-primary',
                    cancelClass: 'btn-secondary',
                    startDate: start,
                    endDate: end,
                    showDropdowns: true,
                    minDate: moment().subtract(10, 'year'),
                    maxDate: moment().add(2, 'year'),
                    ranges: {
                        'Today': [moment(), moment()],
                        'Yesterday': [moment().subtract(1, 'days'), moment().subtract(1, 'days')],
                        'Last 7 Days': [moment().subtract(6, 'days'), moment()],
                        'Last 30 Days': [moment().subtract(29, 'days'), moment()],
                        'This Month': [moment().startOf('month'), moment().endOf('month')],
                        'Last Month': [moment().subtract(1, 'month').startOf('month'), moment().subtract(1, 'month').endOf('month')],
                        'This Year': [moment().startOf('year'), moment().endOf('year')],
                        'Last Year': [moment().subtract(1, 'year').startOf('year'), moment().subtract(1, 'year').endOf('year')],
                        'All Days': [moment().subtract(10, 'year').endOf('year'), moment().endOf('year')]
                    }
                }, function (startVal, endVal, label) {
                    $('#flading').show();
                    $('#pc-daterangepicker-6 .form-control').val(startVal.format('MM/DD/YYYY') + ' / ' + endVal.format('MM/DD/YYYY'));
                    start = startVal.format('YYYY-MM-DD');
                    end = endVal.format('YYYY-MM-DD');
                    localStorage.setItem("claimdate", startVal.format("MM/DD/YYYY") + ' / ' + endVal.format("MM/DD/YYYY"));
                    table.ajax.url("claimdata?startDate=" + start + "&endDate=" + end).load();
                    callTotalClaimValue(moment(start).format("YYYY-MM-DD"), moment(end).format("YYYY-MM-DD"), para, paraVal);
                });

                $('#simpletable tbody').on('click', 'td', function () {
                    var index = table.cell(this).index().columnVisible;
                    if (index === 13) {
                        // alert(table.cell(this).data().replaceAll("\\<[\s]*tag[^>]*>",""));
                        var str = table.cell(this).data().toString();
                        str = str.replace("</a>", "");
                        str = str.substring(13, 150);
                        table.search(str).draw();
                        //alert(str);
                    }
                    //console.log(table.row(this).data().tid);
                });

                var searchOption = '';
                $('#showall').click(function () {
                    searchOption = '0';
                    searchOption = '0';
                    searchColumn = '';
                    searchValue = '';
                    table.search('').columns().search('').draw();
                    // table.ajax.url("claimdata?startDate=" + moment(start).format("YYYY-MM-DD") + "&endDate=" + moment(end).format("YYYY-MM-DD")).load();
                    $('#ddlsearch').val(0).change();
                    $('#para_Firstname').val('');
                    $('#para_Lastname').val('');
                    $('#para_File').val('');
                    $('#para_Eft').val('');
                    $('#para_Claim').val('');
                    $('#para_PayorIcn').val('');
                    $('#para_Payor').val('');
                    $('#ddlSearchPractice').val('');
                    $('#para_BillingNPI').val('');
                    callTotalClaimValue(moment(start).format("YYYY-MM-DD"), moment(end).format("YYYY-MM-DD"), '', '');
                });

                function clearFields() {
                    table.search('').columns().search('').draw();
                    $('#para_Firstname').val('');
                    $('#para_Lastname').val('');
                    $('#para_File').val('');
                    $('#para_Eft').val('');
                    $('#para_Claim').val('');
                    $('#para_PayorIcn').val('');
                    $('#para_Payor').val('');
                    $('#ddlSearchPractice').val('');
                    $('#para_BillingNPI').val('');
                }


                $('#search').click(function () {
                    //  $('#flading').show();
                    //  var table = $('#simpletable').DataTable();
                    table.search('').columns().search('');
                    searchOption = $('#ddlsearch').val();
                    if (searchOption === '0') {
                        msgbox("Select the Search option..!", "All Claim Portal", "error");
                        table.search(' ').draw();
                        $('#flading').hide();
                    } else if (searchOption === '1') {
                        var lenFirstName = $('#para_Firstname').val().length;
                        if (lenFirstName !== 0) {
                            var firstVal = $('#para_Firstname').val();
                            clearFields();
                            $('#para_Firstname').val(firstVal);
                            //alert(lenFirstName);
                            table.columns(14).search('').search($('#para_Firstname').val()).draw();
                            para = 'fname';
                            paraVal = $('#para_Firstname').val();
                            searchColumn = 'patient';
                            searchValue = $('#para_Firstname').val();
                            //table.ajax.url("claimSearchData?para=fname&paraVal=" + $('#para_Firstname').val()).load();
                        } else {
                            msgbox("Enter patient first name..!", "ERA Portal", "error");
                            $('#flading').hide();
                        }
                    } else if (searchOption === '2') {
                        var lenLastName = $('#para_Lastname').val().length;
                        if (lenLastName !== 0) {
                            var lastVal = $('#para_Lastname').val();
                            clearFields();
                            $('#para_Lastname').val(lastVal);
                            table.columns(14).search('').search($('#para_Lastname').val()).draw();
                            //table.ajax.url("claimSearchData?para=lname&paraVal=" + $('#para_Lastname').val()).load();
                            para = 'lname';
                            paraVal = $('#para_Lastname').val();
                            searchColumn = 'patient';
                            searchValue = $('#para_Lastname').val();
                        } else {
                            msgbox("Enter patient last name..!", "All Claim Portal", "error");
                            $('#flading').hide();
                        }
                    } else if (searchOption === '3') {
                        var lenFile = $('#para_File').val().length;
                        if (lenFile !== 0) {
                            var fileVal = $('#para_File').val();
                            clearFields();
                            $('#para_File').val(fileVal);
                            table.columns(1).search('').search($('#para_File').val()).draw();
                            //table.ajax.url("claimSearchData?para=eob.fn&paraVal=" + $('#para_File').val()).load();
                            para = 'eob.fn';
                            paraVal = $('#para_File').val();
                            searchColumn = 'fn';
                            searchValue = $('#para_File').val();
                        } else {
                            msgbox("Enter file..!", "All Claim Portal", "error"); // ==
                            $('#flading').hide();
                        }
                    } else if (searchOption === '4') {
                        var lenEft = $('#para_Eft').val().length;
                        if (lenEft !== 0) {
                            var eftVal = $('#para_Eft').val();
                            clearFields();
                            $('#para_Eft').val(eftVal);
                            table.columns(2).search('').search($('#para_Eft').val()).draw();
                            //table.ajax.url("claimSearchData?para=eob.eft&paraVal=" + $('#para_Eft').val()).load();
                            para = 'eob.eft';
                            paraVal = $('#para_Eft').val();
                            searchColumn = 'eft';
                            searchValue = $('#para_Eft').val();
                        } else {
                            msgbox("Enter EFT..!", "All Claim Portal", "error"); // ==
                            $('#flading').hide();
                        }
                    } else if (searchOption === '5') {
                        var lenClaim = $('#para_Claim').val().length;
                        if (lenClaim !== 0) {
                            var claimVal = $('#para_Claim').val();
                            clearFields();
                            $('#para_Claim').val(claimVal);
                            table.columns(3).search('').search($('#para_Claim').val()).draw();
                            //table.ajax.url("claimSearchData?para=claimno&paraVal=" + $('#para_Claim').val()).load();
                            para = 'claimno';
                            paraVal = $('#para_Claim').val();
                            searchColumn = 'claimno';
                            searchValue = $('#para_Claim').val();
                        } else {
                            msgbox("Enter Cliam..!", "All Claim Portal", "error"); // ==
                            $('#flading').hide();
                        }
                    } else if (searchOption === '6') {
                        var lenPayorIcn = $('#para_PayorIcn').val().length;
                        if (lenPayorIcn !== 0) {
                            var icnVal = $('#para_PayorIcn').val();
                            clearFields();
                            $('#para_PayorIcn').val(icnVal);
                            table.columns(4).search('').search($('#para_PayorIcn').val()).draw();
                            //table.ajax.url("claimSearchData?para=payericn&paraVal=" + $('#para_PayorIcn').val()).load();
                            para = 'payericn';
                            paraVal = $('#para_PayorIcn').val();
                            searchColumn = 'payericn';
                            searchValue = $('#para_PayorIcn').val();
                        } else {
                            msgbox("Enter Payor Icn..!", "All Claim Portal", "error"); // ==
                            $('#flading').hide();
                        }
                    } else if (searchOption === '7') {
                        var lenPayor = $('#para_Payor').val().length;
                        if (lenPayor !== 0) {
                            var payorVal = $('#para_Payor').val();
                            clearFields();
                            $('#para_Payor').val(payorVal);
                            table.columns(7).search('').search($('#para_Payor').val()).draw();
                            //table.ajax.url("claimSearchData?para=payer&paraVal=" + $('#para_Payor').val()).load();
                            para = 'payer';
                            paraVal = $('#para_Payor').val();
                            searchColumn = 'payer';
                            searchValue = $('#para_Payor').val();
                        } else {
                            msgbox("Enter Payor..!", "All Claim Portal", "error"); // ==
                            $('#flading').hide();
                        }
                    } else if (searchOption === '8') {
                        var lenLastNameDob = $('#ddlSearchPractice').val().length;
                        if (lenLastNameDob !== 0) {
                            var practiceVal = $('#ddlSearchPractice').val();
                            clearFields();
                            $('#ddlSearchPractice').val(practiceVal);
                            table.columns(8).search('').search($('#ddlSearchPractice').val()).draw();
                            //table.ajax.url("claimSearchData?para=payee&paraVal=" + ($('#ddlSearchPractice').val())).load();
                            para = 'payee';
                            paraVal = $('#ddlSearchPractice').val();
                            searchColumn = 'payee';
                            searchValue = $('#ddlSearchPractice').val();
                        } else {
                            msgbox("Select practice..!", "All Claim Portal", "error");
                            $('#flading').hide();
                        }
                    } else if (searchOption === '9') {
                        var lenDos = $('#para_BillingNPI').val().length;
                        if (lenDos !== 0) {
                            var npiVal = $('#para_BillingNPI').val();
                            clearFields();
                            $('#para_BillingNPI').val(npiVal);
                            table.columns(26).search('').search($('#para_BillingNPI').val()).draw();
                            //table.ajax.url("claimSearchData?para=eob.billing_npi&paraVal=" + ($('#para_BillingNPI').val())).load();
                            para = 'eob.billing_npi';
                            paraVal = $('#para_BillingNPI').val();
                            searchColumn = 'billingNPI';
                            searchValue = $('#para_BillingNPI').val();
                        } else {
                            msgbox("Enter NPI..!", "All Claim Portal", "error");
                            $('#flading').hide();
                        }
                    }
                    callTotalClaimValue(moment(start).format("YYYY-MM-DD"), moment(end).format("YYYY-MM-DD"), para, paraVal);
                });
                var claimno = GetParameterValues('claimno');
                if (typeof (claimno) !== 'undefined') {
                    table.columns(3).search('').search(claimno).draw();
                } else {
                    table.columns(3).search('').search('').draw();
                }

                var not_tid = GetParameterValues('tid');
                if (typeof (not_tid) !== 'undefined') {
                    table.columns(21).search('').search(not_tid).draw();
                } else {
                    table.columns(21).search('').search('').draw();
                }


                var total = 0;
                $('#simpletable').on('click', 'tbody input[type="checkbox"]', function () {

                    var table = $('#simpletable').DataTable();
                    total = table.column(3, {
                        page: 'current'
                    }).data().count();
                    //alert(count);

                    var isSelected = $(this).is(':checked');
                    if (isSelected) {
                        checked++;
                    } else {
                        checked--;
                    }
                    // console.log(checked);
                    if (checked === total) {
                        $('#headercheck').prop('checked', true);
                        if (checked > 1) {
                            notflag = 'Y';
                        }
                    } else {
                        $('#headercheck').prop('checked', false);
                        if (checked > 1) {
                            notflag = 'Y';
                        } else {
                            notflag = 'N';
                        }
                    }

                });

                $('#headercheck').change(function () {

                    var table = $('#simpletable').DataTable();
                    total = table.column(3, {
                        page: 'current'
                    }).data().count();
                    checked = 0;
                    var isSelected = $(this).is(':checked');
                    if (isSelected) {
                        $('#simpletable tbody input[type=checkbox]').each(function () {
                            $(this).prop('checked', true);
                            if (checked <= total) {
                                checked++;
                            }
                        });
                        if (checked > 1) {
                            notflag = 'Y';
                        }
                        //   $('#raiseticket').show();
                    } else {
                        $('#simpletable tbody input[type=checkbox]').each(function () {
                            $(this).prop('checked', false);
                            if (checked > 0)
                            {
                                checked--;
                            }
                        });
                        notflag = 'N';
                        //   $('#raiseticket').hide();
                    }
                });
                var brid = '';
                $('#brid').hide();
                $('#raiseticket').click(function () {
                    brid = '';
                    var table = $('#simpletable').DataTable();
                    table.$('input[type="checkbox"]').each(function () {
                        // If checkbox doesn't exist in DOM                    
                        // If checkbox is checked
                        if (this.checked) {
                            // Create a hidden element
                            let tr = $(this).closest('tr');
                            brid = tr.find('td:eq(14)').text() + ',' + brid;
                            // alert(tr.find('td:eq(14)').text());
                        }

                    });
                    brid = brid.substring(0, brid.length - 1);
                    // alert(brid);
                    // console.log(brid);
                    if (brid !== '') {
                        if (notflag === 'Y') {
                            ShowConfirmYesNo();
                        } else {
                            $(".q-view").addClass("active");
                        }

                        $('#ticket_type_id').val("1");
                        var ticket_type_id = $("select#ticket_type_id").val();
                        $('#ticket_type_id').attr('disabled', "true");
                        $('#flading').show();
                        //Payor

                        $.ajax({
                            url: "tickettypedescdetails",
                            type: "get", //send it through get method
                            data: {
                                ticket_type_id: ticket_type_id
                            },
                            success: function (response) {
                                console.log(response);
                                if (response.length > 0) {
                                    var txt = response;
                                    var obj = jQuery.parseJSON(txt);
                                    console.log(obj.length);
                                    if (obj.length > 0) {
                                        $(".note-editable").html(obj[0].auto_desc);
                                        $('#flading').hide();
                                    }
                                } else {
                                    $(".note-editable").html('');
                                    $('#flading').hide();
                                }
                            },
                            error: function (err) {
                                console.log(err);
                                $(".note-editable").html('');
                                $('#flading').hide();
                            }
                        });
                        $.ajax({
                            url: "ticketdefaultuserdetails",
                            type: "get", //send it through get method
                            data: {
                                def_ticket_type_id: ticket_type_id,
                                entity_id: entity
                            },
                            success: function (response) {
                                var txt = response;
                                var obj = jQuery.parseJSON(txt);
                                if (obj.length > 0) {
                                    $.each(obj, function (index, value) {
                                        entity_user = obj[index].assigned_to;
                                        entity_user_to = obj[index].to;
                                        entity_user_cc = obj[index].cc;
                                        entity_user_bcc = obj[index].bcc;
                                        console.log(entity_user);
                                        console.log(entity_user_to);
                                    });
                                    $("select#assigned_to").val(entity_user);
                                    $('#assigned_to').trigger('change');
                                    $('#flading').hide();
                                } else {
                                    $('#flading').hide();
                                }
                            }
                        });
                    } else {
                        msgbox("Select atleast one claim(s).", "Ticket Portal", "warning");
                    }

                });
                $(function () {
                    $('#summernote').summernote({
                        height: 250,
                        codemirror: {
                            mode: 'text/html',
                            htmlMode: true,
                            lineNumbers: true,
                            theme: 'monokai'
                        }
                    });
                });
                var ticketsource = '<%=session.getAttribute("source")%>';
                var files = '';
                var progressbar = $('.progress-bar1');
                $("#btnsubmit").click(function () {
                    $('#flading').show();
                    $("form").ajaxForm(
                            {
                                beforeSend: function () {
                                    $(".progress1").css("display", "block");
                                    progressbar.width('0%');
                                    progressbar.text('0%');
                                },
                                uploadProgress: function (event, position, total, percentComplete) {
                                    if (percentComplete <= 100)
                                    {
                                        progressbar.width(percentComplete + '%');
                                        progressbar.text(percentComplete + '%');
                                    }
                                },
                                complete: function (xhr) {
                                    $('#attachment_id').val('');
                                    $(".progress1").css("display", "block");
                                    progressbar.width('0%');
                                    progressbar.text('0%');
                                    $('#flading').hide();
                                }
                            });
                    // }
                });
                var mulfilename = '';
                // var filesize = '';
                // var filetype = ''
                $('#attachment_id').change(function (e) {
                    mulfilename = e.target.files.name;
                });
                $("form").submit(function () {
                    $('#flading').show();
                    files = $('#attachment_id').prop("files");
                    var names = $.map(files, function (val) {
                        // var fn = val.name;
                        // return fn.replaceAll(',', '');
                        return val.name;
                    });
                    var size = $.map(files, function (val) {
                        return val.size;
                    });
                    let namestext = names.toString();
                    let sizetext = size.toString();
                    var fns = '';
                    for (let i = 0; i < names.length; i++) {
                        fns += names[i].replaceAll(',', '').replaceAll('#', '') + ",";
                    }

                    fns = fns.substring(0, fns.length - 1);
                    //  namestext = namestext.replaceAll('#', '');
                    var ticketstatus = 1;
                    var tstatus = '';
                    if ($("select#assigned_to").val() === "0") {
                        ticketstatus = 1;
                        tstatus = 'Created';
                    } else {
                        ticketstatus = 2;
                        tstatus = 'Assigned';
                    }

                    var tsource = '';
                    if (ticketsource === 1) {
                        tsource = 'Practice';
                    } else if (ticketsource === 2) {
                        tsource = 'Entity';
                    } else {
                        tsource = 'Practice';
                    }
                    var tickettype = $("#ticket_type_id option:selected").text();
                    var ticketpriority = $("#ticket_priority_id option:selected").text();
                    var assignto = $("#assigned_to option:selected").text();
                    $.ajax({
                        url: "create_bulk_ticket",
                        type: "get", //send it through get method
                        data: {
                            type_of_ticket: "1",
                            descriptions: $(".note-editable").html(),
                            ticket_status: ticketstatus,
                            assigned_to: $("select#assigned_to").val(),
                            attachmentfile: fns,
                            attachmentfilesize: sizetext,
                            ticket_source: ticketsource,
                            ticket_priority: $("select#ticket_priority_id").val(),
                            segment: "N",
                            currentdt: today,
                            request_id: brid
                        },
                        success: function (response) {
                            console.log(response);
                            $("select#ticket_type_id").val('1');
                            $("select#assigned_to").val('0');
                            $(".note-editable").html('');
                            // swal("Record Saved", "", "success");
                            msgbox("Ticket Saved", "Ticket Form", "success");
                            table.ajax.reload(null, false);
                            MyNoFunction();
                            //  window.location.reload();
                            $('#flading').hide();
                            $(".overlay").click();
                        },
                        error: function (err) {
                            console.log(err);
                            msgbox("Ticket Not Saved", "Ticket Form", "error");
                            table.ajax.reload(null, false);
                            MyNoFunction();
                            $('#flading').hide();
                            $(".overlay").click();
                        }
                    });
                    if ($("select#assigned_to").val() !== "0") {
                        var strcontent = "Hi " + assignto + ", <br><br>" + "Type: " + tickettype + "<br>Source: " + tsource + "<br>Priority: " + ticketpriority + "<br> Assign To: " + assignto + "<br>Segment: Claim List [N]" + "<br><br>" + $(".note-editable").html();
                        // Email Config
                        $.post('eMail', {
                            recipient: entity_user_to,
                            subject: 'Ticket Raised from [Claim List] Form: ' + tickettype + ' : ' + tstatus + ' to ' + assignto,
                            content: strcontent,
                            cc: entity_user_cc,
                            bcc: entity_user_bcc

                        }, function (response) {
                            console.log(response);
                        });
                    }


                });
                $('#assigned_to').change(function (event) {
                    var user_id = $("select#assigned_to").val();
                    if (user_id !== "0") {
                        $('#flading').show();
                        //Payor

                        $.ajax({
                            url: "ticketentityuserdetails",
                            type: "get", //send it through get method
                            data: {
                                user_id: user_id,
                                def_ticket_type_id: $('#ticket_type_id').val()
                            },
                            success: function (response) {
                                // console.log(response);
                                // console.log(response.length);
                                var txt = response;
                                var obj = jQuery.parseJSON(txt);
                                if (obj.length > 0) {
                                    $.each(obj, function (index, value) {
                                        entity_user_to = obj[index].username;
                                        entity_user_cc = obj[index].assigned_to;
                                        console.log(entity_user_to);
                                        console.log(entity_user_cc);
                                        $('#flading').hide();
                                    });
                                } else {
                                    $('#flading').hide();
                                }
                            }
                        });
                    }
                });
            });

    </script>     
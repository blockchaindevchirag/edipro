<%--
    Document   : view_eligibility_request
    Created on : 07-Mar-2021, 1:55:15 pm
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Denied Claims</title>
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

                                                    <div class="form-group">
                                                        <label class="col-form-label col col-30px">Filter By Received Date</label>
                                                        <div class='input-group pull-right' id='pc-daterangepicker-6' style="width: 250px;height: 33px;">
                                                            <input type='text' readonly="" class="form-control" placeholder="Select date range" />
                                                            <div class='input-group-append'>
                                                                <span class="input-group-text"><i class="feather icon-calendar"></i></span>
                                                            </div>
                                                        </div>
                                                    </div>

                                                    <div class="col-md-3">
                                                        <div class="form-group">
                                                            <label class="col-form-label col col-30px">Search For</label>
                                                            <select class="form-control  js-example-placeholder-multiple" name="ddlsearch" id="ddlsearch" >
                                                                <option value = "0">Select</option>
                                                                <option value = "1">File #</option>
                                                                <option value = "2">Claim #</option>
                                                                <option value = "3">Payor ICN</option>
                                                                <option value = "4">Payor</option>
                                                                <option value = "5">Practice</option>
                                                                <option value = "6">Patient First Name</option>
                                                                <option value = "7">Patient Last Name</option>
                                                                <option value = "8">NPI</option>
                                                            </select>

                                                        </div>
                                                    </div>

                                                    <div class="col-md-3 p-l-0">
                                                        <div class="form-group">
                                                            <label class="col-form-label col col-30px" style="color:white;">Parameter</label>
                                                            <input type='text' id="para_file" class="form-control" placeholder="File#" style="display:none;" />
                                                            <input type='text' id="para_claim" class="form-control" placeholder="Claim#" style="display:none;" />
                                                            <input type='text' id="para_icn" class="form-control" placeholder="Payor ICN#" style="display:none;" />
                                                            <input type='text' id="para_payor" class="form-control" placeholder="Payor" style="display:none;" />
                                                            <input type='text' id="para_practice" class="form-control" placeholder="Practice" style="display:none;" />
                                                            <!--  <select class="form-control js-example-placeholder-multiple col-sm-12" id="ddlpractice" data-placeholder="Select Practice"  name="ddlpractice"></select>   -->
                                                            <input type='text' id="para_Firstname" class="form-control" placeholder="First Name" style="display:none;" />
                                                            <input type='text' id="para_Lastname" class="form-control" placeholder="Last Name" style="display:none;" />
                                                            <input type='text' id="para_npi" class="form-control" placeholder="Billing NPI" style="display:none;" />
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
                                                                    <div class="col" title="Total PR" data-toggle="tooltip" data-placement="top" style="padding-top: 7px">
                                                                        <h5 class="m-0 text-white" id="totalpr" title="Total PR" style="font-size: 15px"></h5>
                                                                        <!--<span>Screen Total</span>-->
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="card support-bar">
                                                            <div class="card-footer bg-c-green text-white" style="padding: 0 25px !important;height: 33px;">
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
                                                <br><br><br>
                                                <hr class="hrtopbtm">

                                                <div class="dt-responsive table-responsive tablehide">
                                                    <table class="table table-striped table-bordered nowrap" style="display:none;">
                                                        <thead>
                                                            <tr>
                                                                <th  style="background: antiquewhite !important; color: black !important; width:50px;">Suggestion : </th>
                                                                <th  style="background: antiquewhite !important; color: black !important; width:250px;"><select class="form-control" required id="ddlsuggestion" tabindex="2"  name="ddlsuggestion"></th>
                                                                <th  style="background: antiquewhite !important; color: black !important; width:50px;">Action : </th>
                                                                <th  style="background: antiquewhite !important; color: black !important; width:250px;"><select class="form-control" required id="ddlaction" tabindex="2"  name="ddlaction"></th>
                                                                <th  style="background: antiquewhite !important; color: black !important; width:50px;"><button type="submit"  class="btn btn-greenadd btn-block">Submit</button></th>

                                                            </tr>

                                                        </thead></table>

                                                    <table id="simpletable" width="96%" cellspacing="0" class="table table-striped table-bordered nowrap display compact">
                                                        <thead>
                                                            <tr>
                                                                <th><input id="headercheck" type="checkbox"> </th>
                                                                <th>File #</th>
                                                                <th>Claim #</th>
                                                                <th>Payor ICN</th>
                                                                <th>Status </th>
                                                                <th>Payor</th>
                                                                <th>Payee</th>
                                                                <th>Charge</th>
                                                                <th>PR</th>
                                                                <th>CR-Date</th>
                                                                <th>Patient</th>
                                                                <th>D-Status</th>
                                                                <th>Suggestion</th>
                                                                <th>Sug_By</th>
                                                                <th>Action_Taken</th>
                                                                <th>Acted_By</th>
                                                                <th>Tid</th>
                                                                <th>SUBSCRIBER ID</th>
                                                                <th>SUBSCRIBER Name</th>
                                                                <th>PROVIDER NPI</th>
                                                                <th>PROVIDER Name</th>
                                                                <th>CR-Date</th>
                                                                <th>tid</th>
                                                                <th>Payor</th>
                                                                <th>Payee</th>
                                                                <th>Elapsed</th>
                                                                <th>Tkt#</th>
                                                                <th>Action By</th>
                                                                <th>Action</th>
                                                                <th></th>
                                                                <th>Filename</th>
                                                                <th>Patient</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody></tbody>
                                                    </table>
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

        <div class="q-view" id="qv1">
            <div class="overlay" id="ov1"></div>
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


    <div class="q-view" id="qv2">
        <div class="overlay" id="ov2"></div>
        <div class="content">
            <div class="col-sm-12">
                <div>
                    <div class="row">
                        <div class="col">
                            <div class="card">
                                <div class="bg-c-blue p-4">
                                    <h5 class="text-white mb-0"><i class="feather icon-lock mr-1"></i>Ticket #<span id="ticketid"></span></h5>
                                </div>
                                <div class="card-body topic-name">
                                    <div class="row align-items-center">
                                        <div class="col-md-8">
                                            <h3 class="d-inline-block mb-0"><span id="tickettype"></span></h3>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="btn-star">
                                                <!--   <a href="#!" class="btn btn-primary btn-sm">Mark as unread</a>
                                                   <a href="#!"><i class="feather icon-star f-20 text-muted"></i></a> -->
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="bg-light p-3">
                                    <div class="row align-items-center">
                                        <div class="col-md-12">
                                            <!--    <button type="button" class="btn btn-secondary text-uppercase"><i class="fas fa-comment-alt"></i>Post a reply <span class="badge badge-light m-l-10">R</span></button>
                                                <button type="button" class="btn btn-secondary text-uppercase"><i class="fas fa-pen"></i>Post a Note <span class="badge badge-light m-l-10">N</span></button>
                                                <button type="button" class="btn btn-secondary text-uppercase"><i class="fas fas fa-address-book"></i>Customer Notes</button> -->
                                        </div>
                                    </div>
                                </div>

                                <div id="card1">

                                </div>

                            </div>
                        </div>

                    </div>

                </div>

            </div>

        </div>

    </div>


    <jsp:include page="includes/footer.jsp"></jsp:include>
        <script src="assets/js/plugins/select2.full.min.js"></script>
        <script src="assets/js/pages/form-select-custom.js"></script>

        <script type="text/javascript">


            $(document).ready(function () {

                $('#para_Firstname').hide();
                $('#para_Lastname').hide();
                $('#para_file').hide();
                $('#para_claim').hide();
                $('#para_icn').hide();
                $('#para_payor').hide();
                $('#para_npi').hide();
                $('#para_practice').hide();


                $('#ddlsearch').change(function (event) {

                    if ($('#ddlsearch').val() === '1') {
                        $('#para_Firstname').hide();
                        $('#para_Lastname').hide();
                        $('#para_file').show();
                        $('#para_claim').hide();
                        $('#para_icn').hide();
                        $('#para_payor').hide();
                        $('#para_npi').hide();
                        // $('#ddlpractice').next(".select2-container").hide();
                        $('#para_practice').hide();
                        $('#para_file').val('');

                    } else if ($('#ddlsearch').val() === '2') {
                        $('#para_Firstname').hide();
                        $('#para_Lastname').hide();
                        $('#para_file').hide();
                        $('#para_claim').show();
                        $('#para_icn').hide();
                        $('#para_payor').hide();
                        $('#para_npi').hide();
                        // $('#ddlpractice').next(".select2-container").hide();
                        $('#para_practice').hide();
                        $('#para_claim').val('');

                    } else if ($('#ddlsearch').val() === '3') {
                        $('#para_Firstname').hide();
                        $('#para_Lastname').hide();
                        $('#para_file').hide();
                        $('#para_claim').hide();
                        $('#para_icn').show();
                        $('#para_payor').hide();
                        $('#para_npi').hide();
                        //  $('#ddlpractice').next(".select2-container").hide();
                        $('#para_practice').hide();
                        $('#para_icn').val('');

                    } else if ($('#ddlsearch').val() === '4') {
                        $('#para_Firstname').hide();
                        $('#para_Lastname').hide();
                        $('#para_file').hide();
                        $('#para_claim').hide();
                        $('#para_icn').hide();
                        $('#para_payor').show();
                        $('#para_npi').hide();
                        // $('#ddlpractice').next(".select2-container").hide();
                        $('#para_practice').hide();
                        $('#para_payor').val('');
                    } else if ($('#ddlsearch').val() === '5') {
                        $('#para_Firstname').hide();
                        $('#para_Lastname').hide();
                        $('#para_file').hide();
                        $('#para_claim').hide();
                        $('#para_icn').hide();
                        $('#para_payor').hide();
                        $('#para_npi').hide();
                        $('#para_practice').show();
                        $('#para_practice').val('');

                    } else if ($('#ddlsearch').val() === '6') {
                        $('#para_Firstname').show();
                        $('#para_Lastname').hide();
                        $('#para_file').hide();
                        $('#para_claim').hide();
                        $('#para_icn').hide();
                        $('#para_payor').hide();
                        $('#para_npi').hide();
                        //  $('#ddlpractice').next(".select2-container").hide();
                        $('#para_practice').hide();
                        $('#para_Firstname').val('');
                    } else if ($('#ddlsearch').val() === '7') {
                        $('#para_Firstname').hide();
                        $('#para_Lastname').show();
                        $('#para_file').hide();
                        $('#para_claim').hide();
                        $('#para_icn').hide();
                        $('#para_payor').hide();
                        $('#para_npi').hide();
                        $('#para_practice').hide();
                        // $('#ddlpractice').next(".select2-container").hide();
                        $('#para_Lastname').val('');
                    } else if ($('#ddlsearch').val() === '8') {
                        $('#para_Firstname').hide();
                        $('#para_Lastname').hide();
                        $('#para_file').hide();
                        $('#para_claim').hide();
                        $('#para_icn').hide();
                        $('#para_payor').hide();
                        $('#para_npi').show();
                        //  $('#ddlpractice').next(".select2-container").hide();
                        $('#para_practice').hide();
                        $('#para_npi').val('');
                    } else {
                        $('#para_Firstname').hide();
                        $('#para_Lastname').hide();
                        $('#para_file').hide();
                        $('#para_claim').hide();
                        $('#para_icn').hide();
                        $('#para_payor').hide();
                        $('#para_npi').hide();
                        $('#para_practice').hide();
                    }

                });
                $('#ddlsearch').val(0).change();

                var denialdt = localStorage.getItem("denialdate");
                var start, end, para = '', paraVal = '';

                if (denialdt === null) {
                    start = moment().subtract(10, 'year');
                    end = moment();
                    $('#pc-daterangepicker-6 .form-control').val(start.format('MM/DD/YYYY') + ' / ' + end.format('MM/DD/YYYY'));

                } else {
                    var currentVal = denialdt;
                    start = currentVal.split(" / ")[0];
                    end = currentVal.split(" / ")[1];
                    $('#pc-daterangepicker-6 .form-control').val(moment(start).format("MM/DD/YYYY") + ' / ' + moment(end).format("MM/DD/YYYY"));
                    localStorage.setItem("denialdate", moment(start).format("MM/DD/YYYY") + ' / ' + moment(end).format("MM/DD/YYYY"));
                }


                $(".table-responsive").removeClass("tablehide");
                $(".table-responsive").addClass("tableshow");
                var checked = 0;
                var notflag = 'N';

                var now = new Date();
                var year = now.getFullYear();
                function callTotalDenialValue(startDate, endDate, para, paraVal) {
                    $.ajax({
                        url: "total-denial-value",
                        type: "get", //send it through get method
                        data: {
                            "startDate": startDate,
                            "endDate": endDate,
                            "para": para,
                            "paraVal": paraVal
                        },
                        success: function (response) {
                            var chargeamt = parseFloat(checkNaN(response.data[0].chargeamt));
                            var patientres = parseFloat(checkNaN(response.data[0].patientres));
                            $('#totalcharge').html('$ ' + chargeamt.toFixed(2));
                            $('#totalpr').html('$ ' + patientres.toFixed(2));
                        }
                    });
                }
                // alert(year -20 );
                // document.getElementById("yearid").min = year - 20;
                //  document.getElementById("yearid").max = year + 5;
                var myyearSelect = $('#yearid');
                myyearSelect.find('option').remove();
                $('<option>').val(0).text('').appendTo(myyearSelect);
                for (var i = year - 20; i < year + 1; i++) {
                    $('<option>').val(i).text(i).appendTo(myyearSelect);
                    // $('<option></option>').val(i).html(i).appendTo(myyearSelect);
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
                    $("#qv1").addClass("active");
                }
                var isAllSelected = 0;
                var selected = [];
                function MyNoFunction() {
                    $("#ov1").click();
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

                $("#ov1").click(function () {
                    $("#qv1").removeClass("active");
                });
                $("#ov2").click(function () {
                    $("#qv2").removeClass("active");
                });



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


                var searchColumn = '';
                var searchValue = '';
                var innerSearchValue = '';
                function exportOption() {
                    innerSearchValue = table.search();
                    $.ajax({
                        url: 'denialdata',
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
                            csvContent += "File,CR-Date,Claim,Payor ICN,Status,Payor,Payee,Charge,PR,Patient,D-Status,Elapsed,Action_Taken\n";
                            var obj = jQuery.parseJSON(data.exportData);
                            $.each(obj, function (key, value) {
                                var row = [
                                    value.fn,
                                    value.recdate,
                                    value.claimno,
                                    value.payericn,
                                    value.status,
                                    value.payer,
                                    value.payee,
                                    value.chargeamt,
                                    value.patientres,
                                    decodeURI(value.patient),
                                    value.denialstatus,
                                    value.difference,
                                    value.action_taken
                                ];
                                var escapedRow = row.map(function (field) {
                                    return '"' + field + '"';
                                });
                                csvContent += escapedRow.join(",") + "\n";
                            });
                            var link = document.createElement("a");
                            link.setAttribute("href", encodeURI(csvContent));
                            link.setAttribute("download", "DenialClaims.csv");
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
                ;
                var selectedRecords = [];
                function exportSelection() {
                    selectedRecords = [];
                    for (var i = 0; i < selected.length; i++) {
                        selectedRecords.push(Object.values(currentTableResponse)[selected[i]]);
                    }
                    var csvContent = "data:text/csv;charset=utf-8,";
                    csvContent += "File,CR-Date,Claim,Payor ICN,Status,Payor,Payee,Charge,PR,Patient,D-Status,Elapsed,Action_Taken\n";
                    $.each(selectedRecords, function (key, value) {
                        var row = [
                            value.fn,
                            value.recdate,
                            value.claimno,
                            value.payericn,
                            value.status,
                            value.payer,
                            value.payee,
                            value.chargeamt,
                            value.patientres,
                            value.patient,
                            value.denialstatus,
                            value.difference,
                            value.action_taken
                        ];
                        var escapedRow = row.map(function (field) {
                            return '"' + field + '"';
                        });
                        csvContent += escapedRow.join(",") + "\n";
                    });
                    var link = document.createElement("a");
                    link.setAttribute("href", encodeURI(csvContent));
                    link.setAttribute("download", "DenialClaims.csv");
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
                    csvContent += "File,CR-Date,Claim,Payor ICN,Status,Payor,Payee,Charge,PR,Patient,D-Status,Elapsed,Action_Taken\n";
                    $.each(currentTableResponse, function (key, value) {
                        var row = [
                            value.fn,
                            value.recdate,
                            value.claimno,
                            value.payericn,
                            value.status,
                            value.payer,
                            value.payee,
                            value.chargeamt,
                            value.patientres,
                            value.patient,
                            value.denialstatus,
                            value.difference,
                            value.action_taken
                        ];
                        var escapedRow = row.map(function (field) {
                            return '"' + field + '"';
                        });
                        csvContent += escapedRow.join(",") + "\n";
                    });
                    var link = document.createElement("a");
                    link.setAttribute("href", encodeURI(csvContent));
                    link.setAttribute("download", "DenialClaims.csv");
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
                    "aaSorting": [], // Sort by first column descending   [9, "desc"]
                    "lengthMenu": [10, 30, 50, 100, 200, 500, 1000],
                    "pageLength": 100,
                    stateSave: false,
                    scrollY: "300px",
                    scrollX: true,
                    scrollCollapse: false,
                    paging: true,
                    fixedHeader: true,
                    "oLanguage": {
                        "sEmptyTable": "No Data..."
                    },
                    "columnDefs": [
                        {'visible': false, 'targets': [12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 23, 24, 27, 30, 31], 'className': 'dt-body-center'}
                    ],
                    drawCallback: function (settings, json) {

                        $('[data-toggle="tooltip"]').tooltip('update');
                    },
                    processing: true,
                    serverSide: true,
                    "ajax": {
                        "type": "POST",
                        "url": 'denialdata',
                        "contentType": 'application/json',
                        "dataType": "json",
                        "data": function (d) {
                            return JSON.stringify($.extend({}, d, {
                                "startDate": moment(start).format("YYYY-MM-DD"),
                                "endDate": moment(end).format("YYYY-MM-DD")
                            }));
                        }, dataSrc: function (data) {
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
                                //   var url = "patientwise?rid=" + data.claimno + "&payer=" + data.payer + "&file=" + data.fn + "&payee=" + data.payee + "~" + data.lname + "," + data.fname + "~" + data.fn + "~" + data.chargeamt + "~" + 0 + "~" + data.insid + "~" + data.inslname + ", " + data.insfname + "~" + data.rendproid + "~" + data.rendprolname + ", " + data.rendprofname;
                                //    return "<a  href='#' " + data.claimno + "</a>"; brid.substring(0, brid.length - 1);
                                return "<a class='vu-idbole' target='_blank' href= 'patientwise?rid=" + data.claimno + "&pr=" + data.patientres + "&icn=" + data.payericn + "&payer=" + data.payer + "&file=" + data.fn + "&payee=" + data.payee + "~" + data.lname + "" + "" + "~" + data.fn + "~" + data.chargeamt + "~" + 0 + "~" + data.insid + "~" + data.inslname + ", " + data.insfname + "~" + data.rendproid + "~" + data.rendprolname + ", " + data.rendprofname + "'>" + data.claimno + "</a>";
                            },
                            "orderable": true, "searchable": true, "name": "claimno"},
                        {"data": "payericn", "orderable": true, "searchable": true, "name": "payericn"},
                        {"data": "status", "orderable": true, "searchable": true, "name": "status"},
                        {"data": "spayer", "orderable": true, "searchable": true, "name": "payer"},
                        {"data": "spayee", "orderable": true, "searchable": true, "name": "payee"},
                        {"data": "chargeamt", "orderable": true, "searchable": true, "name": "chargeamt"},
                        {"data": "patientres", "orderable": true, "searchable": true, "name": "patientres"},
                        {"data": "rrecdate", "orderable": true, "searchable": true, "name": "rrecdate"},
                        {"data": function (data) {
                                var patname = data.patient;
                                return  patname.substring(0, 10);
                            },
                            "orderable": true, "searchable": true, "name": "patient"},
                        {"data": "denialstatus", "orderable": true, "searchable": true, "name": "denialstatus"},
                        {"data": "suggestion", "orderable": true, "searchable": true, "name": "suggestion"},
                        {"data": "suggby", "orderable": true, "searchable": true, "name": "suggby"},
                        {"data": "actiontaken", "orderable": true, "searchable": true, "name": "actiontaken"},
                        {"data": "actedby", "orderable": true, "searchable": true, "name": "actedby"},
                        {"data": "actedby", "orderable": true, "searchable": true, "name": "actedby"},
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
                        {"data": "payer", "orderable": true, "searchable": true, "name": "payer"},
                        {"data": "payee", "orderable": true, "searchable": true, "name": "payee"},
                        {"data": "difference", "orderable": true, "searchable": true, "name": "difference"},
                        {"data": function (data) {
                                if (data.ticket_id !== '0')
                                {
                                    return "<span><a target= '_blank' href= 'viewticket?ticketid=" + data.ticket_id + "'><span style='color: green; font-weight: bold;'>" + data.ticket_id + "</span></a></span>";
                                }

                            },
                            "orderable": true, "searchable": true, "name": "ticket_id"},
                        {"data": "action_taken_by", "orderable": true, "searchable": true, "name": "action_taken_by"},
                        {"data": "action_taken", "orderable": true, "searchable": true, "name": "action_taken"},
                        {"data": function (data) {
                                return "<a  class= 'badge f-16 historybutton' data-toggle='tooltip' data-placement='top' title='view history'><span class='feather icon-file-plus'></span></a>";
                            }, "orderable": false, "searchable": false, "name": "action_taken_by "},
                        {"data": "filename", "orderable": true, "searchable": true, "name": "filename"},
                        {"data": "patient", "orderable": true, "searchable": true, "name": "patient"}
                    ],

                    dom: 'fBrtipl',
                    buttons: [
                        {
                            extend: 'csv',
                            text: '<img src="assets/images/excelicon.png">',
                            className: 'dt-pdf-btn',
                            titleAttr: 'Download list in excel Format',
                            exportOptions: {
                                columns: [1, 21, 2, 3, 4, 23, 24, 7, 8, 31, 11, 25, 14]
                            },
                            action: function (e, dt, button, config) {
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
                                columns: [1, 21, 2, 3, 4, 23, 24, 7, 8, 31, 11, 25, 14]
                            }, action: function (e, dt, button, config) {
                                $('#flading').show();
                                // Retrieve the start and end date values
                                exportOptionPDF();
                            }
                        }
                    ],
                    createdRow: function (row, data, dataIndex) {
                        // add tooltip when row is created
                        $(row).find('td:eq(4)').attr('data-toggle', "tooltip");
                        $(row).find('td:eq(4)').attr('data-placement', "left");
                        $(row).find('td:eq(4)').attr('data-original-title', data["desc"]);
                        $(row).find('td:eq(9)').text(data["recdate"].toString());
                        $(row).find('td:eq(5)').attr('data-toggle', "tooltip");
                        $(row).find('td:eq(5)').attr('data-placement', "left");
                        $(row).find('td:eq(5)').attr('data-original-title', data["payer"]);
                        $(row).find('td:eq(6)').attr('data-toggle', "tooltip");
                        $(row).find('td:eq(6)').attr('data-placement', "left");
                        $(row).find('td:eq(6)').attr('data-original-title', data["payee"]);
                        $(row).find('td:eq(10)').attr('data-toggle', "tooltip");
                        $(row).find('td:eq(10)').attr('data-placement', "left");
                        $(row).find('td:eq(10)').attr('data-original-title', data["patient"]);
                        var ticket_id = $(row).find('td:eq(14)').find('span').find('span').text();
                        if (ticket_id !== "0") {
                            $(row).find('td:eq(0)').find('input').attr('disabled', "true");
                            $(row).find('td:eq(14)').attr('data-toggle', "tooltip");
                            $(row).find('td:eq(14)').attr('data-placement', "left");
                            $(row).find('td:eq(14)').attr('data-original-title', "By: " + data["action_taken_by"] + " | " + "To: " + data["assign_to"]);
                        } else {
                            $(row).find('td:eq(14)').find('span').find('a').removeAttr('target');
                            $(row).find('td:eq(14)').find('span').find('a').removeAttr('href');
                        }

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
                         .column(7, {filter: 'applied'})
                         .data()
                         .reduce(function (a, b) {
                         
                         return intVal(a) + intVal(b);
                         }, 0); */
                        // Total charge over this page
                        var pagecharge = api
                                .column(7, {page: 'current'})
                                .data()
                                .reduce(function (a, b) {
                                    return intVal(a) + intVal(b);
                                }, 0);
                        // Total PR
                        /*   var pr = api
                         .column(8, {filter: 'applied'})
                         .data()
                         .reduce(function (a, b) {
                         
                         return intVal(a) + intVal(b);
                         }, 0); */
                        // Total PR over this page
                        var pagepr = api
                                .column(8, {page: 'current'})
                                .data()
                                .reduce(function (a, b) {
                                    return intVal(a) + intVal(b);
                                }, 0);
                        // Update footer
                        /*   $(api.column(0).footer()).html(
                         "Total Charge " + charge.toFixed(2) + "   | Total PR: " + pr.toFixed(2) + "<br>" +
                         "Screen Charge " + pagecharge.toFixed(2) + "   | Screen PR: " + pagepr.toFixed(2)
                         // '$' + pageTotal + ' ( $' + total + ' total)'
                         ); */
//                        $('#totalcharge').html('$ ' + charge.toFixed(2));
                        $('#screencharge').html('$ ' + pagecharge.toFixed(2));
//                        $('#totalpr').html('$ ' + pr.toFixed(2));
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

                // Initial
                callTotalDenialValue(moment(start).format("YYYY-MM-DD"), moment(end).format("YYYY-MM-DD"), '', '');

                function exportOptionPDF() {
                    $('#flading').show();
                    var startDate = moment(start).format("YYYY-MM-DD");
                    var endDate = moment(end).format("YYYY-MM-DD");
                    location.href = "exportDenialPdf?startDate=" + startDate + "&endDate=" + endDate;
                    $('#flading').hide();
                }

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
                    //$('#flading').show();
                    $('#pc-daterangepicker-6 .form-control').val(startVal.format('MM/DD/YYYY') + ' / ' + endVal.format('MM/DD/YYYY'));
                    start = startVal.format('YYYY-MM-DD');
                    end = endVal.format('YYYY-MM-DD');
                    localStorage.setItem("denialdate", startVal.format("MM/DD/YYYY") + ' / ' + endVal.format("MM/DD/YYYY"));
                    table.ajax.url("denialdata?startDate=" + start + "&endDate=" + end).load();
                    callTotalDenialValue(moment(start).format("YYYY-MM-DD"), moment(end).format("YYYY-MM-DD"), para, paraVal);

                });


                var searchOption = '';
                $('#showall').click(function () {
                    searchOption = '0';
                    searchColumn = '';
                    searchValue = '';
                    innerSearchValue = '';
                    table.search('').columns().search('').draw();
                    $('#ddlsearch').val(0).change();
                    $('#para_file').val('');
                    $('#para_claim').val('');
                    $('#para_icn').val('');
                    $('#para_payor').val('');
                    $('#para_practice').val('');
                    $('#para_Firstname').val('');
                    $('#para_Lastname').val('');
                    $('#para_npi').val('');
                    callTotalDenialValue(moment(start).format("YYYY-MM-DD"), moment(end).format("YYYY-MM-DD"), '', '');
                });

                function clearFields() {
                    table.search('').columns().search('').draw();
                    $('#para_file').val('');
                    $('#para_claim').val('');
                    $('#para_icn').val('');
                    $('#para_payor').val('');
                    $('#para_practice').val('');
                    $('#para_Firstname').val('');
                    $('#para_Lastname').val('');
                    $('#para_npi').val('');
                }


                $('#search').click(function () {
                    table.search('').columns().search('');
                    searchOption = $('#ddlsearch').val();
                    if (searchOption === '0') {
                        msgbox("Select the Search option..!", "Denial Portal", "error");
                        table.search('').columns().search('').draw();
                        $('#flading').hide();
                    } else if (searchOption === '1') {
                        var lenFirstName = $('#para_file').val().length;
                        if (lenFirstName !== 0) {
                            var fileVal = $('#para_file').val();
                            clearFields();
                            $('#para_file').val(fileVal);
                            table.columns(1).search('').search($('#para_file').val()).draw();
                            para = 'cd.fn';
                            paraVal = $('#para_file').val();
                            searchColumn = 'fn';
                            searchValue = $('#para_file').val();
                            //table.ajax.url("denialsearchdata?para=cd.fn&paraVal=" + $('#para_file').val()).load();
                        } else {
                            msgbox("Enter File Name..!", "Denial Portal", "error");
                            $('#flading').hide();
                        }

                    } else if (searchOption === '2') {
                        var lenClaim = $('#para_claim').val().length;
                        if (lenClaim !== 0) {
                            var claimVal = $('#para_claim').val();
                            clearFields();
                            $('#para_claim').val(claimVal);
                            table.columns(2).search('').search($('#para_claim').val()).draw();
                            para = 'cd.claimno';
                            paraVal = $('#para_claim').val();
                            searchColumn = 'claimno';
                            searchValue = $('#para_claim').val();
                            // table.ajax.url("denialsearchdata?para=cd.claimno&paraVal=" + $('#para_claim').val()).load();
                        } else {
                            msgbox("Enter Claim..!", "Denial Portal", "error");
                            $('#flading').hide();
                        }

                    } else if (searchOption === '3') {
                        var lenIcn = $('#para_icn').val().length;
                        if (lenIcn !== 0) {
                            var icnVal = $('#para_icn').val();
                            clearFields();
                            $('#para_icn').val(icnVal);
                            table.columns(3).search('').search($('#para_icn').val()).draw();
                            para = 'cd.payericn';
                            paraVal = $('#para_icn').val();
                            searchColumn = 'payericn';
                            searchValue = $('#para_icn').val();
                            //table.ajax.url("denialsearchdata?para=cd.payericn&paraVal=" + $('#para_icn').val()).load();
                        } else {
                            msgbox("Enter Payor ICN..!", "Denial Portal", "error");
                            $('#flading').hide();
                        }

                    } else if (searchOption === '4') {
                        var lenPayor = $('#para_payor').val().length;
                        if (lenPayor !== 0) {
                            var payorVal = $('#para_payor').val();
                            clearFields();
                            $('#para_payor').val(payorVal);
                            table.columns(5).search('').search($('#para_payor').val()).draw();
                            para = 'eob.payer';
                            paraVal = $('#para_payor').val();
                            searchColumn = 'payer';
                            searchValue = $('#para_payor').val();
                            //table.ajax.url("denialsearchdata?para=eob.payer&paraVal=" + $('#para_payor').val()).load();
                        } else {
                            msgbox("Enter Payor..!", "Denial Portal", "error");
                            $('#flading').hide();
                        }

                    } else if (searchOption === '5') {
                        var lenPractice = $('#para_practice').val().length;
                        if (lenPractice !== 0) {
                            var practiceVal = $('#para_practice').val();
                            clearFields();
                            $('#para_practice').val(practiceVal);
                            table.columns(24).search('').search($('#para_practice').val()).draw();
                            para = 'eob.payee';
                            paraVal = $('#para_practice').val();
                            searchColumn = 'payee';
                            searchValue = $('#para_practice').val();
                            // table.ajax.url("denialsearchdata?para=eob.payee&paraVal=" + $('#para_practice').val()).load();
                        } else {
                            msgbox("Enter Practice..!", "Denial Portal", "error");
                            $('#flading').hide();
                        }

                    } else if (searchOption === '6') {
                        var lenFirstName = $('#para_Firstname').val().length;
                        if (lenFirstName !== 0) {
                            var firstVal = $('#para_Firstname').val();
                            clearFields();
                            $('#para_Firstname').val(firstVal);
                            table.columns(10).search('').search($('#para_Firstname').val()).draw();
                            para = 'cd.patient';
                            paraVal = $('#para_Firstname').val();
                            searchColumn = 'patient';
                            searchValue = $('#para_Firstname').val();
                            // table.ajax.url("denialsearchdata?para=cd.patient&paraVal=" + $('#para_Firstname').val()).load();
                        } else {
                            msgbox("Enter First Name..!", "Denial Portal", "error");
                            $('#flading').hide();
                        }

                    } else if (searchOption === '7') {
                        var lenLastName = $('#para_Lastname').val().length;
                        if (lenLastName !== 0) {
                            var lastVal = $('#para_Lastname').val();
                            clearFields();
                            $('#para_Lastname').val(lastVal);
                            table.columns(10).search('').search($('#para_Lastname').val()).draw();
                            para = 'cd.patient';
                            paraVal = $('#para_Lastname').val();
                            searchColumn = 'patient';
                            searchValue = $('#para_Lastname').val();
                            //table.ajax.url("denialsearchdata?para=cd.patient&paraVal=" + $('#para_Lastname').val()).load();
                        } else {
                            msgbox("Enter Last Name..!", "Denial Portal", "error");
                            $('#flading').hide();
                        }

                    } else if (searchOption === '8') {
                        var lenNpi = $('#para_npi').val().length;
                        if (lenNpi !== 0) {
                            var npiVal = $('#para_npi').val();
                            clearFields();
                            $('#para_npi').val(npiVal);
                            table.columns(19).search('').search($('#para_npi').val()).draw();
                            para = 'eob.billing_npi';
                            paraVal = $('#para_npi').val();
                            searchColumn = 'billing_npi';
                            searchValue = $('#para_npi').val();
                            //table.ajax.url("denialsearchdata?para=eob.billing_npi&paraVal=" + $('#para_npi').val()).load();
                        } else {
                            msgbox("Enter Billing NPI..!", "Denial Portal", "error");
                            $('#flading').hide();
                        }

                    }
                    callTotalDenialValue(moment(start).format("YYYY-MM-DD"), moment(end).format("YYYY-MM-DD"), para, paraVal);
                });

                var not_tid = GetParameterValues('tid');
                if (typeof (not_tid) !== 'undefined') {
                    table.columns(22).search('').search(not_tid).draw();
                    $('#qv2').find('#card1').html('');
                } else {
                    table.columns(22).search('').search('').draw();
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
                            if (checked > 0) {
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
                        if (this.checked) {
                            let tr = $(this).closest('tr');
                            brid = tr.find('td:eq(12)').text() + ',' + brid;
                        }
                    });
                    brid = brid.substring(0, brid.length - 1);

                    if (brid !== '') {
                        if (notflag === 'Y') {
                            ShowConfirmYesNo();
                        } else {
                            $("#qv1").addClass("active");
                            //  $(".q-view").addClass("active");
                        }

                        $('#ticket_type_id').val("5");
                        var ticket_type_id = $("select#ticket_type_id").val();
                        $('#ticket_type_id').attr('disabled', "true");
                        $('#flading').show();

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
                var userid = '<%= session.getAttribute("Userid")%>';
                var ticketsource = '<%=session.getAttribute("source")%>';
                var files = '';
                var progressbar = $('.progress-bar1');
                $("#btnsubmit").click(function () {
                    $('#flading').show();
                    $("form").ajaxForm({
                        beforeSend: function () {
                            $(".progress1").css("display", "block");
                            progressbar.width('0%');
                            progressbar.text('0%');
                        },
                        uploadProgress: function (event, position, total, percentComplete) {
                            if (percentComplete <= 100) {
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
                            type_of_ticket: "5",
                            descriptions: $(".note-editable").html(),
                            ticket_status: ticketstatus,
                            assigned_to: $("select#assigned_to").val(),
                            attachmentfile: fns,
                            attachmentfilesize: sizetext,
                            ticket_source: ticketsource,
                            ticket_priority: $("select#ticket_priority_id").val(),
                            segment: "O",
                            currentdt: today,
                            request_id: brid
                        },
                        success: function (response) {
                            console.log(response);
                            $("select#ticket_type_id").val('5');
                            $("select#assigned_to").val('0');
                            $(".note-editable").html('');
                            // swal("Record Saved", "", "success");
                            msgbox("Ticket Saved", "Ticket Form", "success");
                            table.ajax.reload(null, false);
                            MyNoFunction();
                            //  window.location.reload();
                            start = start.format('YYYY-MM-DD');
                            end = end.format('YYYY-MM-DD');
                            $('#flading').show();
                            $("#ov1").click();
                        },
                        error: function (err) {
                            console.log(err);
                            msgbox("Ticket Not Saved", "Ticket Form", "error");
                            table.ajax.reload(null, false);
                            MyNoFunction();
                            $('#flading').hide();
                            $("#ov1").click();
                        }
                    });

                    if ($("select#assigned_to").val() !== "0") {
                        var strcontent = "Hi " + assignto + ", <br><br>" + "Type: " + tickettype + "<br>Source: " + tsource + "<br>Priority: " + ticketpriority + "<br> Assign To: " + assignto + "<br>Segment: Fully Denial Claims [O]" + "<br><br>" + $(".note-editable").html();
                        // Email Config
                        $.post('eMail', {
                            recipient: entity_user_to,
                            subject: 'Ticket Raised from Fully Denial Claims Form: ' + tickettype + ' : ' + tstatus + ' to ' + assignto,
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


                $(document).on("click", "#simpletable a.historybutton", function () {
                    $('#flading').show();
                    $('#qv2').find('#card1').html('');
                    let tr = $(this).closest('tr');
                    let ticket_id = tr.find('td:eq(26)').find('span').find('span').text();
                    // $(row).find('td:eq(26)').find('span').find('span').text();
                    $('#ticket_type_id').val("5");
                    $('#tickettype').text($("#ticket_type_id option:selected").text());
                    $('#ticketid').text(ticket_id);
                    var htmltag = '';

                    $.ajax({
                        url: "ticketHistoryDetails",
                        type: "get", //send it through get method
                        data: {
                            ticket_history_id: ticket_id
                        },
                        success: function (response) {
                            // console.log(response);
                            if (response.length > 0) {
                                var txt = response;
                                var obj = jQuery.parseJSON(txt);
                                $.each(obj, function (index, value) {

                                    var path = "";
                                    if (obj[index].picture === "null" || obj[index].picture === "") {
                                        path = "assets/images/user/picture1.png";
                                    } else {
                                        path = "../Profile/" + obj[index].picture;
                                    }

                                    if (index % 2 === 0) {

                                        var user = '';
                                        if (userid === obj[index].created_by) {
                                            user = 'You';
                                        } else {
                                            user = obj[index].assigned_to;
                                        }
                                        var priority = ' Priority : ' + obj[index].ticket_priority;
                                        var link = obj[index].auto_desc.replaceAll('^', '~');

                                        htmltag = htmltag + '<div class="card-body hd-detail hdd-admin border-bottom"><div class="row"><div class="col-auto text-center">' +
                                                '<img class="media-object wid-60 img-radius mb-2" src="' + path + '" alt="">' +
                                                '<p>' + obj[index].ticket_status + '</p></div>' +
                                                '<div class="col"><div class="comment-top"><h3>' + user + ' <small class="text-muted f-w-400">replied </small></h3><p>' + convertLocalDateToUTCDate(obj[index].assigned_timestamp) + '</p>' + priority + '</div>' +
                                                '<div class="comment-content" style="overflow:auto !important;"><p>' + link +
                                                '</p></div>' +
                                                '</div>' +
                                                '<div class="col-auto pl-0 col-right"><div class="card-body text-center"><ul class="list-unstyled mb-0 edit-del">' +
                                                '</div></div> </div></div>';
                                    } else {

                                        var user = '';
                                        if (userid === obj[index].created_by) {
                                            user = 'You';
                                        } else {
                                            user = obj[index].assigned_to;
                                        }
                                        var priority = ' Priority : ' + obj[index].ticket_priority;
                                        var link = obj[index].auto_desc.replaceAll('^', '~');
                                        htmltag = htmltag + '<div class="card-body hd-detail hdd-user border-bottom bg-light"> <div class="row"><div class="col-auto text-center">' +
                                                '<img class="media-object wid-60 img-radius mb-2" src="' + path + '" alt="">' +
                                                '<p>' + obj[index].ticket_status + '</p></div>' +
                                                '<div class="col"><div class="comment-top"><h3>' + user + ' <small class="text-muted f-w-400">replied </small></h3><p>' + convertLocalDateToUTCDate(obj[index].assigned_timestamp) + '</p>' + priority + '</div>' +
                                                '<div class="comment-content" style="overflow:auto !important;">' + link +
                                                '</div>' +
                                                '</div>' +
                                                '<div class="col-auto pl-0 col-right"><div class="card-body text-center"></div></div></div></div>';
                                    }


                                });

                                setTimeout(function () {
                                    var attach = '<b><i><center>Attachments</center></i></b><hr>';
                                    var footertag = '';
                                    // <a target='_blank' href= '..//${Document.fn}' class='btn-icon singledownbutton' id="singledown"><i class='fas fa-file-export m-r-5'></i></a>

                                    $.ajax({
                                        url: "ticketAttDetails",
                                        type: "get", //send it through get method
                                        data: {
                                            ticket_att_id: ticket_id
                                        },
                                        success: function (response1) {

                                            if (response1.length > 0) {
                                                var txt = response1;
                                                var obj = jQuery.parseJSON(txt);
                                                if (obj.length > 0) {
                                                    $.each(obj, function (index, value) {
                                                        // var sv = value.split('~');
                                                        var wtspace = obj[index].fileName.replaceAll(' ', '%20');
                                                        footertag = footertag + '<div class="row text-center mb-2"><div class="col-lg-12"><a href=../Ticketatt/' + wtspace + ' target="_blank" data-toggle="lightbox" data-gallery="example-gallery">' + obj[index].fileName + ' (' + obj[index].fileSize + ')' + '</a></div></div>';
                                                    });
                                                }

                                                $('#qv2').find('#card1').append(htmltag + attach + footertag);
                                                $('#flading').hide();
                                                $("#qv2").addClass("active");
                                            } else {
                                                $('#flading').hide();
                                            }
                                        }
                                    });

                                }, 3000);

                            } else {
                                $('#flading').hide();
                            }
                        }
                    });
                });
            });

    </script>
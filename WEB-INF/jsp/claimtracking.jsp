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
        <title>Claim Tracker</title>
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
                                                        <label class="col-form-label col col-30px">Filter By CR Date</label>
                                                        <div class='input-group pull-right' id='pc-daterangepicker-6' style="width: 250px;height: 33px;">
                                                            <input type='text' readonly="" class="form-control" placeholder="Select date range" />
                                                            <div class='input-group-append'>
                                                                <span class="input-group-text"><i class="feather icon-calendar"></i></span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-3 p-1-0">
                                                        <div class="form-group">
                                                            <label class="col-form-label col col-30px">Search For</label>
                                                            <select class="form-control js-example-placeholder-multiple" name="ddlsearch" id="ddlsearch" >
                                                                <option value = "0">Select</option>                                                                
                                                                <option value = "1">File #</option> 
                                                                <option value = "2">Payor</option> 
                                                                <option value = "3">Patient Account</option> 
                                                                <option value = "4">TAX ID</option>                                                       
                                                            </select>
                                                        </div>
                                                    </div>

                                                    <div class="col-md-3 p-l-0">
                                                        <div class="form-group">
                                                            <label class="col-form-label col col-30px" style="color:white;">Parameter</label>    
                                                            <input type='text' id="para_file" class="form-control" placeholder="File#" style="display:none" />
                                                            <input type='text' id="payorid" class="form-control" placeholder="Payor" style="display:none" />
                                                            <input type='text' id="para_accnt" class="form-control" placeholder="Patient Account" style="display:none" />
                                                            <input type='text' id="para_taxid" class="form-control" placeholder="TAX ID" style="display:none" />
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
                                                        <!--<label for="exampleInputEmail1">Total Amount</label>-->
                                                        <label for="exampleInputEmail1">Total Amount</label>
                                                        <div class="card support-bar">
                                                            <div class="card-footer bg-c-info text-white" style="padding: 0 25px !important;height: 33px;">
                                                                <div class="row text-center">
                                                                    <div class="col" title="Total Charge" data-toggle="tooltip" data-placement="top" style="padding-top: 7px">
                                                                        <h5 class="m-0 text-white" title="Total Charge" style="font-size:15px;"><span id="totalamt"></span></h5>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col col-30px">
                                                        <label for="exampleInputEmail1">Screen Total</label>
                                                        <!--<label for="exampleInputEmail1">Screen Total</label>-->
                                                        <div class="card support-bar">
                                                            <div class="card-footer bg-c-yellow text-white" style="padding: 0 25px !important;height: 33px;">
                                                                <div class="row text-center">
                                                                    <div class="col" title="Screen Charge" data-toggle="tooltip" data-placement="top" style="padding-top: 7px">
                                                                        <h5 class="m-0 text-white" title="Screen Charge" style="font-size: 15px"> <span id="screentotoal"></span></h5>
                                                                        <!--<span>Screen Total</span>-->
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <br><br>
                                                <hr class="hrtopbtm">
                                                <div class="dt-responsive table-responsive tablehide">
                                                    <div class="tableFixHead_claim1">
                                                        <table id="simpletable" width="98%" class="display compact table table-striped table-bordered nowrap">
                                                            <thead>
                                                                <tr>
                                                                    <th style="position: sticky; top: 0; z-index: 1;"><input id="headercheck" type="checkbox"></th>
                                                                    <th style="position: sticky; top: 0; z-index: 1;">File #</th>
                                                                    <th style="position: sticky; top: 0; z-index: 1;">Claim #</th>
                                                                    <th style="position: sticky; top: 0; z-index: 1;">Payor ID</th>
                                                                    <th style="position: sticky; top: 0; z-index: 1;">Date</th>
                                                                    <th style="position: sticky; top: 0; z-index: 1;">Patient</th>
                                                                    <th style="position: sticky; top: 0; z-index: 1;">Pat Acc #</th>
                                                                    <th style="position: sticky; top: 0; z-index: 1;">Fm DOS</th>
                                                                    <th style="position: sticky; top: 0; z-index: 1;">To DOS</th>
                                                                    <th style="position: sticky; top: 0; z-index: 1;">Charge</th>
                                                                    <th style="position: sticky; top: 0; z-index: 1;">Tax ID</th>
                                                                    <th style="position: sticky; top: 0; z-index: 1;">StateLicenseID</th>
                                                                    <th style="position: sticky; top: 0; z-index: 1;">Insured ID</th>
                                                                    <th style="position: sticky; top: 0; z-index: 1;">Print</th>
                                                                    <th style="position: sticky; top: 0; z-index: 1;">Err Des</th>
                                                                    <th style="position: sticky; top: 0; z-index: 1;">Status</th>
                                                                    <th style="position: sticky; top: 0; z-index: 1;">Tid</th>
                                                                    <th style="position: sticky; top: 0; z-index: 1;">Count</th><!-- comment -->
                                                                    <th style="position: sticky; top: 0; z-index: 1;">Paid</th>
                                                                    <th style="position: sticky; top: 0; z-index: 1;">PR</th>
                                                                    <th style="position: sticky; top: 0; z-index: 1;">EFT</th>
                                                                    <th style="position: sticky; top: 0; z-index: 1;">EFT_Date</th>
                                                                    <th style="position: sticky; top: 0; z-index: 1;">Rec_Date</th>
                                                                    <th style="position: sticky; top: 0; z-index: 1;">Serv NPI</th> 
                                                                    <th style="position: sticky; top: 0; z-index: 1;">Facility</th>

                                                                </tr>
                                                            </thead>
                                                            <tbody>
                                                                <!--    <c:forEach var="Claim" items="${claimlist}">
                                                                        <tr>
                                                                            <td>${Claim.fn}</td>
                                                                            <td>${Claim.claimno}</td>
                                                                            <td>${Claim.payericn}</td>
                                                                            <td>${Claim.status}</td>
                                                                            <td  data-toggle="tooltip" data-placement="top" title="${Claim.payer}" data-original-title="${Claim.payer}"> ${Claim.spayer} ..</td>
                                                                            <td  data-toggle="tooltip" data-placement="top" title="${Claim.payee}" data-original-title="${Claim.payee}"> ${Claim.spayee} ..</td>
                                                                            <td>${Claim.chargeamt}</td>
                                                                            <td>${Claim.paidamt}</td>
                                                                            <td>${Claim.patientres}</td>
                                                                            <td>${Claim.recdate}</td>
                                                                            <td  data-toggle="tooltip" data-placement="top" title="" data-original-title="${Claim.cfi}"> ${Claim.scfi} </td>
                                                                            <td>${Claim.lname}, ${Claim.fname}</td>
                                                                            <td>${Claim.coveramt}</td>
                                                                            <td>${Claim.insid}</td>
                                                                            <td>${Claim.inslname}, ${Claim.insfname}</td>
                                                                            <td>${Claim.rendproid}</td>
                                                                            <td>${Claim.rendprolname}, ${Claim.rendprofname}</td>
            
            
                                                                        </tr>
                                                            </c:forEach> -->

                                                        </tbody>

                                                        <!--                                                        <tfoot style="background: antiquewhite;">
                                                                                                                    <tr>
                                                                                                                        <th rowspan="1" colspan="17"></th>
                                                        
                                                                                                                    </tr>
                                                        
                                                                                                                </tfoot> -->
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
    </div><!-- comment -->
    <div id="flading" class="loader">

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
                $('#para_file').hide();
                $('#payorid').hide();
                $('#para_accnt').hide();
                $('#para_taxid').hide();

                var ctdt = localStorage.getItem("ctdate");
                var start, end;
                if (ctdt === null) {
                    start = moment().subtract(10, 'year');
                    end = moment();
                    $('#pc-daterangepicker-6 .form-control').val(start.format('MM/DD/YYYY') + ' / ' + end.format('MM/DD/YYYY'));
                } else {
                    var currentVal = ctdt;
                    start = currentVal.split(" / ")[0];
                    end = currentVal.split(" / ")[1];
                    $('#pc-daterangepicker-6 .form-control').val(moment(start).format("MM/DD/YYYY") + ' / ' + moment(end).format("MM/DD/YYYY"));
                    localStorage.setItem("ctdate", moment(start).format("MM/DD/YYYY") + ' / ' + moment(end).format("MM/DD/YYYY"));
                }

                $(".table-responsive").removeClass("tablehide");
                $(".table-responsive").addClass("tableshow");
                var checked = 0;
                var notflag = 'N';
                var now = new Date();
                var year = now.getFullYear();
                function callTotalClaimTrackerValue(startDate, endDate) {
                    $.ajax({
                        url: "total-claim-tracker-value",
                        type: "get", //send it through get method
                        data: {
                            "startDate": startDate,
                            "endDate": endDate
                        },
                        success: function (response) {
                            console.log(response);
                            var chargeamt = parseFloat(checkNaN(response.data[0].chargeamt));
                            $('#totalamt').html('$ ' + chargeamt.toFixed(2));
                        }
                    });
                }

                var myyearSelect = $('#yearid');
                myyearSelect.find('option').remove();
                $('<option>').val(0).text('').appendTo(myyearSelect);
                for (var i = year - 20; i < year + 1; i++) {
                    $('<option>').val(i).text(i).appendTo(myyearSelect);
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
                $('#currentdate').text(today1);
                var LoginUsername = '<%= session.getAttribute("LoginUsername")%>';
                $('#raiseduser').text(LoginUsername);
                $('#flading').hide();
                $(".overlay").click(function () {
                    $(".q-view").removeClass("active");
                });

                $('#ddlsearch').change(function (event) {
                    if ($('#ddlsearch').val() === '1') {
                        $('#para_file').show();
                        $('#payorid').hide();
                        $('#para_accnt').hide();
                        $('#para_taxid').hide();
                        $('#para_file').val('');

                    } else if ($('#ddlsearch').val() === '2') {
                        $('#para_file').hide();
                        $('#payorid').show();
                        $('#para_accnt').hide();
                        $('#para_taxid').hide();
                        ;
                        $('#payorid').val('');
                    } else if ($('#ddlsearch').val() === '3') {
                        $('#para_file').hide();
                        $('#payorid').hide();
                        $('#para_accnt').show();
                        $('#para_taxid').hide();
                        $('#para_accnt').val('');
                    } else if ($('#ddlsearch').val() === '4') {
                        $('#para_file').hide();
                        $('#payorid').hide();
                        $('#para_accnt').hide();
                        $('#para_taxid').show();
                        $('#para_taxid').val('');
                    } else {
                        $('#para_file').hide();
                        $('#payorid').hide();
                        $('#para_accnt').hide();
                        $('#para_taxid').hide();
                    }

                });
                var searchColumn = '';
                var searchValue = '';
                var innerSearchValue = '';
                function exportOption() {
                    innerSearchValue = table.search();
                    $.ajax({
                        url: 'claimtrackingdata',
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
                            csvContent += "File,Claim,Payor ID,Patient,Pat Acc,Fm DOS,To DOS,Charge,Tax ID,Status,Count,Paid,PR,EFT,EFT_Date\n";
                            var obj = jQuery.parseJSON(data.exportData);
                            $.each(obj, function (key, record) {
                                var row = [
                                    record.fn,
                                    record.claimno,
                                    record.payer,
                                    (decodeURI(record.lname) + ' ' + decodeURI(record.fname)),
                                    record.pataccno,
                                    record.fromdos,
                                    record.todos,
                                    record.chargeamt,
                                    record.taxid,
                                    record.status,
                                    record.claimcount,
                                    record.paid,
                                    record.pr,
                                    record.eft,
                                    record.eftdate
                                ];
                                var escapedRow = row.map(function (field) {
                                    return '"' + field + '"';
                                });
                                csvContent += escapedRow.join(",") + "\n";
                            });
                            var link = document.createElement("a");
                            link.setAttribute("href", encodeURI(csvContent));
                            link.setAttribute("download", "ClaimTrackingdata.csv");
                            link.style.display = "none";
                            document.body.appendChild(link);
                            link.click();
                            document.body.removeChild(link);
                            $('#flading').hide();
                        },
                        error: function (xhr, status, error) {
                            console.error(xhr, status, error);
                            $('#flading').hide();
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


                var selectedRecords = [];
                function exportSelection() {
                    selectedRecords = [];
                    for (var i = 0; i < selected.length; i++) {
                        selectedRecords.push(Object.values(currentTableResponse)[selected[i]]);
                    }
                    var csvContent = "data:text/csv;charset=utf-8,";
                    csvContent += "File,Claim,Payor ID,Patient,Pat Acc,Fm DOS,To DOS,Charge,Tax ID,Status,Count,Paid,PR,EFT,EFT_Date\n";
                    $.each(selectedRecords, function (key, record) {
                        var row = [
                            record.fn,
                            record.claimno,
                            record.payer,
                            (decodeURI(record.lname) + ' ' + decodeURI(record.fname)),
                            record.pataccno,
                            record.fromdos,
                            record.todos,
                            record.chargeamt,
                            record.taxid,
                            record.status,
                            record.claimcount,
                            record.paid,
                            record.pr,
                            record.eft,
                            record.eftdate
                        ];
                        var escapedRow = row.map(function (field) {
                            return '"' + field + '"';
                        });
                        csvContent += escapedRow.join(",") + "\n";
                    });
                    var link = document.createElement("a");
                    link.setAttribute("href", encodeURI(csvContent));
                    link.setAttribute("download", "ClaimTrackingdata.csv");
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
                    csvContent += "File,Claim,Payor ID,Patient,Pat Acc,Fm DOS,To DOS,Charge,Tax ID,Status,Count,Paid,PR,EFT,EFT_Date\n";
                    $.each(currentTableResponse, function (key, record) {
                        var row = [
                            record.fn,
                            record.claimno,
                            record.payer,
                            (decodeURI(record.lname) + ' ' + decodeURI(record.fname)),
                            record.pataccno,
                            record.fromdos,
                            record.todos,
                            record.chargeamt,
                            record.taxid,
                            record.status,
                            record.claimcount,
                            record.paid,
                            record.pr,
                            record.eft,
                            record.eftdate
                        ];
                        var escapedRow = row.map(function (field) {
                            return '"' + field + '"';
                        });
                        csvContent += escapedRow.join(",") + "\n";
                    });
                    var link = document.createElement("a");
                    link.setAttribute("href", encodeURI(csvContent));
                    link.setAttribute("download", "ClaimTrackingdata.csv");
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
                    "aaSorting": [], // Sort by first column descending [12, "desc"]
                    "lengthMenu": [10, 30, 50, 100, 200, 500, 1000],
                    "pageLength": 100,
                    stateSave: true,
                    scrollY: "300px",
                    scrollX: true,
                    scrollCollapse: false,
                    paging: true,
                    fixedHeader: true,
                    "oLanguage": {
                        "sEmptyTable": "No Data..."
                    },
                    "columnDefs": [
                        {'visible': false, 'targets': [11, 12, 13, 14, 22, 23, 24], 'className': 'dt-body-center'}
                    ],
                    dom: 'fBrtipl',
                    buttons: [
                        {
                            extend: 'csv',
                            text: '<img src="assets/images/excelicon.png">',
                            className: 'dt-pdf-btn',
                            titleAttr: 'Download list in excel Format',
                            exportOptions: {
                                columns: [1, 2, 3, 5, 6, 7, 8, 9, 10, 15, 17, 18, 19, 20, 21]
                            }, action: function (e, dt, button, config) {
                                $('#flading').show();
                                exportAllSelection();
                            }
                        },
//                        'csv',
                        {
                            extend: 'pdfHtml5',
                            orientation: 'landscape',
                            text: '<img src="assets/images/pdficon.png">',
                            className: 'dt-pdf-btn',
                            // sTooltip: 'Download list in PDF Format',
                            titleAttr: 'Download list in PDF Format',
                            pageSize: 'LEGAL',
                            exportOptions: {
                                columns: [1, 2, 3, 5, 6, 7, 8, 9, 10, 15, 17, 18, 19, 20, 21]
                            },
                            action: function (e, dt, button, config) {
                                $('#flading').show();
                                // Retrieve the start and end date values
                                exportOptionPDF();
                            }
                        }
                    ],
                    drawCallback: function (settings, json) {
                        $('[data-toggle="tooltip"]').tooltip('update');
                    },
                    processing: true,
                    serverSide: true,
                    "ajax": {
                        "type": "POST",
                        "url": 'claimtrackingdata',
                        "contentType": 'application/json',
                        dataType: "json",
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
                        {"data": "fn", "orderable": true, "searchable": true, "name": "fn"}, //1
                        {"data": function (data) {
                                //if ('1' == usertype || '2' == usertype || '10' == usertype) {
                                var returntxt = data.claimno;
        <sec:authorize access="hasAnyRole('ROLE_ADMIN')">
            <sec:authorize access="hasAuthority('VIEW_CLAIM_PRIVILEGE')">
                                returntxt = "<a class='vu-idbole' href='claimtrackerdetail?claimno=" + data.claimno + "'>" + data.claimno + "</a>";
            </sec:authorize>
        </sec:authorize>
                                //} else {
                                return  returntxt;
                                //}
                            }, "orderable": true, "searchable": true, "name": "claimno"}, //2
                        {"data": "payer", "orderable": true, "searchable": true, "name": "payer"}, // 3
                        {"data": "rrecdate", "orderable": true, "searchable": true, "name": "recdate"}, // 4
                        {"data": function (data) {
                                //  return  data.lname + ", " + data.fname;
                                return "<a href= '#'>" + data.lname + "</a>"; //+ ", " + data.fname 
                            },
                            "orderable": true, "searchable": true, "name": "lname"}, //5
                        {"data": "pataccno", "orderable": true, "searchable": true, "name": "pataccno"}, //6
                        {"data": "fromdos", "orderable": true, "searchable": true, "name": "fromdos"},
                        {"data": "todos", "orderable": true, "searchable": true, "name": "todos"},
                        {"data": "chargeamt", "orderable": true, "searchable": true, "name": "chargeamt"},
                        {"data": "taxid", "orderable": true, "searchable": true, "name": "taxid"},
                        {"data": "stalinid", "orderable": true, "searchable": true, "name": "stalinid"},
                        {"data": "insid", "orderable": true, "searchable": true, "name": "insid"},
                        {"data": "printclaim", "orderable": true, "searchable": true, "name": "printclaim"},
                        {"data": "errdes", "orderable": true, "searchable": true, "name": "errdes"},
                        {"data": function (data) {
                                if (data.claimstatus === "") {
                                    return data.status;
                                } else {
                                    return data.claimstatus;
                                }
                                //return "<a  href= 'claimwise?claimno=" + data.claimno + "'>" + data.claimcount + "</a>";

                            }, "orderable": true, "searchable": true, "name": "status"},
                        {"data": "tid", "orderable": true, "searchable": true, "name": "tid"},
                        {"data": function (data) {
                                return "<a  href= 'claimwise?claimno=" + data.claimno + "'>" + data.claimcount + "</a>";
                            }, "orderable": true, "searchable": true, "name": "claimcount"},
                        {"data": "paid", "orderable": true, "searchable": true, "name": "paid"},
                        {"data": "pr", "orderable": true, "searchable": true, "name": "pr"},
                        {"data": "eft", "orderable": true, "searchable": true, "name": "eft"},
                        {"data": "eftdate", "orderable": true, "searchable": true, "name": "eftdate"},
                        {"data": "recdate", "orderable": true, "searchable": true, "name": "recdate"},
                        {"data": "service_facility_npi", "orderable": true, "searchable": true, "name": "service_facility_npi"},
                        {"data": "facilityname", "orderable": true, "searchable": true, "name": "facilityname"}
                    ],
                    createdRow: function (row, data, dataIndex) {
                        // add tooltip when row is created
                        $(row).find('td:eq(11)').attr('data-toggle', "tooltip");
                        $(row).find('td:eq(11)').attr('data-placement', "left");
                        $(row).find('td:eq(11)').attr('data-original-title', data["statusdes"].toString());
                        $(row).find('td:eq(4)').text(data["recdate"].toString());
                        $(row).find('td:eq(2)').attr('data-placement', "left");
                        $(row).find('td:eq(2)').attr('data-toggle', "tooltip");
                        $(row).find('td:eq(2)').attr('data-original-title', data["facilityname"].toString() + " | " + data["service_facility_npi"].toString());
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
                        /*  var charge = api
                         .column(9)
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

                        // Update footer
                        /* $(api.column(0).footer()).html(
                         "Total Charge " + charge.toFixed(2) + "<br>" +
                         "Screen Charge " + pagecharge.toFixed(2)
                         // '$' + pageTotal + ' ( $' + total + ' total)'
                         ); */
//                        $('#totoalamt').html(charge.toFixed(2));
                        $('#screentotoal').html('$ ' + pagecharge.toFixed(2));
                        $('#flading').hide();
                    }
                });
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
                    localStorage.setItem("ctdate", startVal.format("MM/DD/YYYY") + ' / ' + endVal.format("MM/DD/YYYY"));
                    table.ajax.url("claimtrackingdata?startDate=" + start + "&endDate=" + end).load();
                    callTotalClaimTrackerValue(moment(start).format("YYYY-MM-DD"), moment(end).format("YYYY-MM-DD"), para, paraVal);
                });

                var searchOption = '';
                $('#showall').click(function () {
                    $('#flading').show();
                    table.search('').columns().search('').draw();
                    searchOption = '0';
                    searchColumn = '';
                    searchValue = '';
                    innerSearchValue = '';
                    $('#para_file').val('');
                    $('#para_payor').val('');
                    $('#para_accnt').val('');
                    $('#para_taxid').val('');
                    $('#ddlsearch').val(0).change();
                    callTotalClaimTrackerValue(moment(start).format("YYYY-MM-DD"), moment(end).format("YYYY-MM-DD"), '', '');
                });

                function clearFields() {
                    table.search('').columns().search('').draw();
                    $('#para_file').val('');
                    $('#para_payor').val('');
                    $('#para_accnt').val('');
                    $('#para_taxid').val('');
                }

                $('#search').click(function () {
                    //   $('#flading').show();
                    //  var table = $('#simpletable').DataTable();
                    table.search('').columns().search('');
                    searchOption = $('#ddlsearch').val();
                    if (searchOption === '0') {
                        msgbox("Select the Search option..!", "Claim Tracker Portal", "error");
                        table.search(' ').draw();
                        $('#flading').hide();
                    } else if (searchOption === '1') {
                        var lenFirstName = $('#para_file').val().length;
                        if (lenFirstName !== 0) {
                            var fileVal = $('#para_file').val();
                            clearFields();
                            $('#para_file').val(fileVal);
                            searchColumn = 'fn';
                            searchValue = $('#para_file').val();
                            table.columns(1).search('').search($('#para_file').val()).draw();
                            para = 'fileid';
                            paraVal = $('#para_file').val();
                        } else {
                            msgbox("Enter File..!", "Claim Tracker Portal", "error");
                            $('#flading').hide();
                        }
                    } else if (searchOption === '2') {
                        var lenPayor = $('#payorid').val().length;
                        if (lenPayor !== 0) {
                            var payorVal = $('#payorid').val();
                            clearFields();
                            $('#payorid').val(payorVal);
                            searchColumn = 'payer';
                            searchValue = $('#payorid').val();
                            table.columns(3).search('').search($('#payorid').val()).draw();
                            para = 'payer';
                            paraVal = $('#payorid').val();
                            //table.ajax.url("eraSearchData?para=payer&paraVal=" + $('#para_payor').val()).load();
                        } else {
                            msgbox("Enter Insurance..!", "Claim Tracker Portal", "error");
                            $('#flading').hide();
                        }
                    } else if (searchOption === '3') {
                        var lenChk = $('#para_accnt').val().length;
                        if (lenChk !== 0) {
                            var chkVal = $('#para_accnt').val();
                            clearFields();
                            $('#para_accnt').val(chkVal);
                            table.columns(6).search('').search($('#para_accnt').val()).draw();
                            para = '';
                            paraVal = $('#para_accnt').val();
                            searchColumn = 'pataccno';
                            searchValue = $('#para_accnt').val();
                            //table.ajax.url("eraSearchData?para=eob.eft&paraVal=" + $('#para_chk').val()).load();
                        } else {
                            msgbox("Enter CHK..!", "Claim Tracker Portal", "error"); // ==
                            $('#flading').hide();
                        }
                    } else if (searchOption === '4') {
                        var lenLastNameDob = $('#para_taxid').val().length;
                        if (lenLastNameDob !== 0) {
                            var practiceVal = $('#para_taxid').val();
                            clearFields();
                            $('#para_taxid').val(practiceVal);
                            table.columns(10).search('').search($('#para_taxid').val()).draw();
                            //table.ajax.url("eraSearchData?para=payee&paraVal=" + ($('#ddlSearchPractice').val())).load();
                            para = 'taxid';
                            paraVal = $('#para_taxid').val();
                            searchColumn = 'taxid';
                            searchValue = $('#para_taxid').val();
                        } else {
                            msgbox("Select practice..!", "Claim Tracker Portal", "error");
                            $('#flading').hide();
                        }
                    }
                    // alert(para);
                    // alert(paraVal);
                    callTotalClaimTrackerValue(moment(start).format("YYYY-MM-DD"), moment(end).format("YYYY-MM-DD"), para, paraVal);
                });



                // Initial
                callTotalClaimTrackerValue(moment(start).format("YYYY-MM-DD"), moment(end).format("YYYY-MM-DD"));
                function exportOptionPDF() {
                    $('#flading').show();
                    var startDate = moment(start).format("YYYY-MM-DD");
                    var endDate = moment(end).format("YYYY-MM-DD");
                    location.href = "exportClaimTrackerPdf?startDate=" + startDate + "&endDate=" + endDate;
                    $('#flading').hide();
                }

                table.on('page.dt', function () {
                    $('.dataTables_scrollBody').scrollTop(0);
                });
                table.on('length.dt', function () {
                    $('.dataTables_scrollBody').scrollTop(0);
                });
                var not_tid = GetParameterValues('tid');
                if (typeof (not_tid) !== 'undefined') {
                    //  alert(not_tid);
                    table.columns(16).search('').search(not_tid).draw();
                } else {
                    table.columns(16).search('').search('').draw();
                }

                $('#simpletable tbody').on('click', 'td', function () {
                    var index = table.cell(this).index().columnVisible;
                    if (index === 5) {
                        var str = table.cell(this).data().toString();
                        str = str.replace("</a>", "");
                        str = str.substring(13, 150);
                        table.search(str).draw();
                    }
                });
                var total = 0;
                $('#simpletable tbody').on('change', 'input[type="checkbox"]', function () {
                    var table = $('#simpletable').DataTable();
                    total = table.column(3, {
                        page: 'current'
                    }).data().count();
                    var isSelected = $(this).is(':checked');
                    if (isSelected) {
                        checked++;
                    } else {
                        checked--;
                    }
                    // console.log(checked);
                    if (checked === total) {
                        $('#headercheck').pronotflagp('checked', true);
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
                    } else {
                        $('#simpletable tbody input[type=checkbox]').each(function () {
                            $(this).prop('checked', false);
                            if (checked > 0) {
                                checked--;
                            }
                        });
                        notflag = 'N';
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
                            $(".q-view").addClass("active");
                        }
                        $('#ticket_type_id').val("1");
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
                            type_of_ticket: "1",
                            descriptions: $(".note-editable").html(),
                            ticket_status: ticketstatus,
                            assigned_to: $("select#assigned_to").val(),
                            attachmentfile: fns,
                            attachmentfilesize: sizetext,
                            ticket_source: ticketsource,
                            ticket_priority: $("select#ticket_priority_id").val(),
                            segment: "G",
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
                        var strcontent = "Hi " + assignto + ", <br><br>" + "Type: " + tickettype + "<br>Source: " + tsource + "<br>Priority: " + ticketpriority + "<br> Assign To: " + assignto + "<br>Segment: ClaimTraking [G]" + "<br><br>" + $(".note-editable").html();
                        // Email Config
                        // alert(entity_user_to);
                        $.post('eMail', {
                            recipient: entity_user_to,
                            subject: 'Ticket Raised from [Claim Tracking] Form: ' + tickettype + ' : ' + tstatus + ' to ' + assignto,
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
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
        <title>Adjustment List</title>
        <jsp:include page="includes/header.jsp"></jsp:include>
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
                                                    <div class="col-md-3 p-l-0">
                                                        <div class="form-group">
                                                            <label class="col-form-label col col-30px">Filter By EFT Date</label>
                                                            <div class='input-group pull-right' id='pc-daterangepicker-6' style="width: 250px;height: 33px;">
                                                                <input type='text' readonly="" class="form-control" placeholder="Select date range" />
                                                                <div class='input-group-append'>
                                                                    <span class="input-group-text"><i class="feather icon-calendar"></i></span>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>

                                                    <div class="col-md-3 p-1-0">
                                                        <div class="form-group">
                                                            <label class="col-form-label col col-30px">Search For</label>
                                                            <select class="form-control js-example-placeholder-multiple" name="ddlsearch" id="ddlsearch" >
                                                                <option value = "0">Select</option>
                                                                <option value = "1">File #</option> 
                                                                <option value = "2">Chk/EFT #</option>
                                                                <option value = "3">Payor</option> 
                                                                <option value = "4">Practice</option> 
                                                                <option value = "5">Billing NPI</option> 

                                                            </select>

                                                        </div>
                                                    </div>

                                                    <div class="col-md-3 p-l-0">
                                                        <div class="form-group">
                                                            <label class="col-form-label col col-30px" style="color:white;">Parameter</label>    
                                                            <input type='text' id="para_file" class="form-control" style="display:none;" placeholder="File#" />
                                                            <input type='text' id="para_chk" class="form-control" style="display:none;" placeholder="Chk/EFT" />
                                                            <input type='text' id="para_payor" class="form-control" style="display:none;" placeholder="Payor" />
                                                            <input type="text" class="form-control" id="ddlSearchPractice" placeholder="Practice" style="display:none;" name="ddlSearchPractice" />
                                                            <input type='text' id="para_npi" class="form-control" style="display:none;" placeholder="Billing NPI" />
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
                                                        <label for="exampleInputEmail1">Total Amount</label>
                                                        <div class="card support-bar">
                                                            <div class="card-footer bg-c-info text-white" style="padding: 0 25px !important;height: 33px;">
                                                                <div class="row text-center">
                                                                    <div class="col" title="Total Amount" data-toggle="tooltip" data-placement="top" style="padding-top: 7px">
                                                                        <h5 class="m-0 text-white" id="totoalamt" title="Total Amount" style="font-size:15px;"></h5>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col col-30px">
                                                        <label for="exampleInputEmail1">Screen Total</label>
                                                        <div class="card support-bar">
                                                            <div class="card-footer bg-c-yellow text-white" style="padding: 0 25px !important;height: 33px;">
                                                                <div class="row text-center">
                                                                    <div class="col" title="Screen Total" data-toggle="tooltip" data-placement="top" style="padding-top: 7px">
                                                                        <h5 class="m-0 text-white" id="screentotoal" title="Screen Total" style="font-size: 15px"></h5>
                                                                        <!--<span>Screen Total</span>-->
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>  

                                                <hr class="hrtopbtm">
                                                <br><br>
                                                <hr class="hrtopbtm">

                                                <div class="dt-responsive table-responsive">
                                                    <div class="tableFixHead1 tablehide">
                                                        <table id="simpletable" width="95%" class="display compact table table-striped table-bordered nowrap dataTable">
                                                            <thead>
                                                                <tr>
                                                                    <th style="position: sticky; top: 0; z-index: 1;"><input id="headercheck" type="checkbox"></th>
                                                                    <th style="position: sticky; top: 0; z-index: 1;">File#</th>
                                                                    <th style="position: sticky; top: 0; z-index: 1;">DOR</th>
                                                                    <th style="position: sticky; top: 0; z-index: 1;">Fas_Per</th>
                                                                    <th style="position: sticky; top: 0; z-index: 1;">Amt</th>
                                                                    <th style="position: sticky; top: 0; z-index: 1;">Mode</th>
                                                                    <th style="position: sticky; top: 0; z-index: 1;">Payor</th>
                                                                    <th style="position: sticky; top: 0; z-index: 1;">Practice</th>
                                                                    <th style="position: sticky; top: 0; z-index: 1;">CHK/EFT#</th>
                                                                    <th style="position: sticky; top: 0; z-index: 1;">Reason</th>
                                                                    <th style="position: sticky; top: 0; z-index: 1;">Identifier</th>
                                                                    <th style="position: sticky; top: 0; z-index: 1;">Type</th>
                                                                    <th style="position: sticky; top: 0; z-index: 1;">C/D</th>
                                                                    <th style="position: sticky; top: 0; z-index: 1;">Ref</th>
                                                                    <th style="position: sticky; top: 0; z-index: 1;">Bill_NPI</th>
                                                                    <th style="position: sticky; top: 0; z-index: 1;">DORR</th>
                                                                    <th style="position: sticky; top: 0; z-index: 1;">tid</th>
                                                                    <th style="position: sticky; top: 0; z-index: 1;">Payor</th>
                                                                    <th style="position: sticky; top: 0; z-index: 1;">Practice</th>
                                                                    <th style="position: sticky; top: 0; z-index: 1;">Bill_NPI</th>
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
                    $('#para_file').hide();
                    $('#para_chk').hide();
                    $('#para_payor').hide();
                    $('#ddlSearchPractice').hide();
                    $('#para_npi').hide();
                    var selected = [];
                    var isAllSelected = 0;
                    var adjustmentdt = localStorage.getItem("adjustmentdate");
                    var start, end, para = '', paraVal = '';
                    if (adjustmentdt === null) {
                        start = moment().subtract(10, 'year');
                        end = moment();
                        $('#pc-daterangepicker-6 .form-control').val(start.format('MM/DD/YYYY') + ' / ' + end.format('MM/DD/YYYY'));
                    } else {
                        var currentVal = adjustmentdt;
                        start = currentVal.split(" / ")[0];
                        end = currentVal.split(" / ")[1];
                        $('#pc-daterangepicker-6 .form-control').val(moment(start).format("MM/DD/YYYY") + ' / ' + moment(end).format("MM/DD/YYYY"));
                        localStorage.setItem("adjustmentdate", moment(start).format("MM/DD/YYYY") + ' / ' + moment(end).format("MM/DD/YYYY"));
                    }

                    $(".tableFixHead1").removeClass("tablehide");
                    $(".tableFixHead1").addClass("tableshow");
                    var checked = 0;
                    var notflag = 'N';
                    var now = new Date();
                    var year = now.getFullYear();
                    var myyearSelect = $('#yearid');
                    myyearSelect.find('option').remove();
                    $('<option>').val(0).text('').appendTo(myyearSelect);
                    for (var i = year - 20; i < year + 1; i++) {
                        $('<option>').val(i).text(i).appendTo(myyearSelect);
                    }
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
                            $('#para_file').show();
                            $('#para_payor').hide();
                            $('#para_chk').hide();
                            $('#ddlSearchPractice').hide();
                            $('#para_npi').hide();
                            $('#para_file').val('');
                        } else if ($('#ddlsearch').val() === '2') {
                            $('#para_file').hide();
                            $('#para_chk').show();
                            $('#para_payor').hide();
                            $('#ddlSearchPractice').hide();
                            $('#para_npi').hide();
                            $('#para_chk').val('');
                        } else if ($('#ddlsearch').val() === '3') {
                            $('#para_file').hide();
                            $('#para_chk').hide();
                            $('#para_payor').show();
                            $('#ddlSearchPractice').hide();
                            $('#para_npi').hide();
                            $('#para_payor').val('');
                        } else if ($('#ddlsearch').val() === '4') {
                            $('#para_file').hide();
                            $('#para_payor').hide();
                            $('#para_chk').hide();
                            $('#ddlSearchPractice').show();
                            $('#para_npi').hide();
                            $('#ddlSearchPractice').val('');
                        } else if ($('#ddlsearch').val() === '5') {
                            $('#para_file').hide();
                            $('#para_payor').hide();
                            $('#para_chk').hide();
                            $('#ddlSearchPractice').hide();
                            $('#para_npi').show();
                            $('#para_npi').val('');
                        } else {
                            $('#para_file').hide();
                            $('#para_payor').hide();
                            $('#para_chk').hide();
                            $('#ddlSearchPractice').hide();
                            $('#para_npi').hide();
                        }
                    });
                    $('#ddlsearch').val(0).change();

                    function callTotalAdjustmentValue(startDate, endDate, para, paraVal) {
                        $.ajax({
                            url: "total-adjustment-value",
                            type: "get", //send it through get method
                            data: {
                                "startDate": startDate,
                                "endDate": endDate,
                                "para": para,
                                "paraVal": paraVal
                            },
                            success: function (response) {
                                var amount = parseFloat(checkNaN(response.data[0].amount));
                                $('#totoalamt').html('$ ' + amount.toFixed(2));
                            }
                        });
                    }
                    var searchColumn = '';
                    var searchValue = '';
                    var innerSearchValue = '';
                    function exportOption() {
                        innerSearchValue = table.search();
                        $.ajax({
                            url: 'adjustmentdata',
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
                                csvContent += "File,DORR,Fas_Per,Amt,Mode,Payor,Practice,CHK/EFT,Reason,Identifier,Type,C/D,Bill_NPI\n";
                                var obj = jQuery.parseJSON(data.exportData);
                                $.each(obj, function (key, value) {
                                    var row = [
                                        value.fn,
                                        value.dor,
                                        value.fiscal_period,
                                        value.amount,
                                        value.mode,
                                        value.payor,
                                        value.payee,
                                        value.eft,
                                        value.segment,
                                        value.adj_identifier,
                                        value.type,
                                        value.cd,
                                        value.billingnpi
                                    ];
                                    var escapedRow = row.map(function (field) {
                                        return '"' + field + '"';
                                    });
                                    csvContent += escapedRow.join(",") + "\n";
                                });
                                var link = document.createElement("a");
                                link.setAttribute("href", encodeURI(csvContent));
                                link.setAttribute("download", "AdjustmentList.csv");
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
                    
                    var selectedRecords = [];
                    function exportSelection() {
                        selectedRecords = [];
                        for (var i = 0; i < selected.length; i++) {
                            selectedRecords.push(Object.values(currentTableResponse)[selected[i]]);
                        }
                        var csvContent = "data:text/csv;charset=utf-8,";
                        csvContent += "File,DORR,Fas_Per,Amt,Mode,Payor,Practice,CHK/EFT,Reason,Identifier,Type,C/D,Bill_NPI\n";
                        $.each(selectedRecords, function (key, value) {
                            var row = [
                                value.fn,
                                value.dor,
                                value.fiscal_period,
                                value.amount,
                                value.mode,
                                value.payor,
                                value.payee,
                                value.eft,
                                value.segment,
                                value.adj_identifier,
                                value.type,
                                value.cd,
                                value.billingnpi
                            ];
                            var escapedRow = row.map(function (field) {
                                return '"' + field + '"';
                            });
                            csvContent += escapedRow.join(",") + "\n";
                        });
                        var link = document.createElement("a");
                        link.setAttribute("href", encodeURI(csvContent));
                        link.setAttribute("download", "AdjustmentList.csv");
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
                        csvContent += "File,DORR,Fas_Per,Amt,Mode,Payor,Practice,CHK/EFT,Reason,Identifier,Type,C/D,Bill_NPI\n";
                        $.each(currentTableResponse, function (key, value) {
                            var row = [
                                value.fn,
                                value.dor,
                                value.fiscal_period,
                                value.amount,
                                value.mode,
                                value.payor,
                                value.payee,
                                value.eft,
                                value.segment,
                                value.adj_identifier,
                                value.type,
                                value.cd,
                                value.billingnpi
                            ];
                            var escapedRow = row.map(function (field) {
                                return '"' + field + '"';
                            });
                            csvContent += escapedRow.join(",") + "\n";
                        });
                        var link = document.createElement("a");
                        link.setAttribute("href", encodeURI(csvContent));
                        link.setAttribute("download", "AdjustmentList.csv");
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
                        "aaSorting": [], // Sort by first column descending
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
                            {'visible': false, 'targets': [15, 17, 18, 19], 'className': 'dt-body-center'}
                        ],
                        drawCallback: function (settings, json) {
                            $('[role="tooltip"]').tooltip('update');
                        },
                        processing: true,
                        serverSide: true,
                        "ajax": {
                            "type": "POST",
                            "url": 'adjustmentdata',
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
                            {"data": "dorr", "orderable": true, "searchable": true, "name": "dorr"},
                            {"data": "fiscal_period", "orderable": true, "searchable": true, "name": "fiscal_period"},
                            {"data": "amount", "orderable": true, "searchable": true, "name": "amount"},
                            {"data": "mode", "orderable": true, "searchable": true, "name": "mode"},
                            {"data": "spayor", "orderable": true, "searchable": true, "name": "spayor"},
                            {"data": "spayee", "orderable": true, "searchable": true, "name": "spayee"},
                            {"data": function (data) {
                                    return "<a target='_blank' href= 'claimsinera?rid=" + data.eft + "&payer=" + data.payor + "&payee=" + data.payee + "~" + data.dor + "~" + data.amount + "~" + data.fn + "~" + data.mode + "~" + data.type + "~" + data.cd + "' class='vu-idbole'>" + data.eft + "</a>";
                                },
                                "orderable": true, "searchable": true, "name": "eft"},
                            {"data": "segment", "orderable": true, "searchable": true, "name": "segment"},
                            {"data": "adj_identifier", "orderable": true, "searchable": true, "name": "adj_identifier"},
                            {"data": "type", "orderable": true, "searchable": true, "name": "type"},
                            {"data": "cd", "orderable": true, "searchable": true, "name": "cd"},
                            {"data": "ref", "orderable": true, "searchable": true, "name": "ref"},
                            {"data": "sbillingnpi", "orderable": true, "searchable": true, "name": "sbillingnpi"},
                            {"data": "dor", "orderable": true, "searchable": true, "name": "dor"},
                            {"data": "tid", "orderable": true, "searchable": true, "name": "tid"},
                            {"data": "payor", "orderable": true, "searchable": true, "name": "payor"},
                            {"data": "payee", "orderable": true, "searchable": true, "name": "payee"},
                            {"data": "billingnpi", "orderable": true, "searchable": true, "name": "billingnpi"}
                        ],
                        dom: 'fBrtipl',
                        buttons: [
                            {
                                extend: 'csv',
                                text: '<img src="assets/images/excelicon.png">',
                                className: 'dt-pdf-btn',
                                titleAttr: 'Download list in excel Format',
                                exportOptions: {
                                    columns: [1, 15, 3, 4, 5, 17, 18, 8, 9, 10, 11, 12, 19]
                                },
                                action: function (e, dt, button, config) {
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
                                titleAttr: 'Download list in PDF Format',
                                pageSize: 'LEGAL',
                                exportOptions: {
                                    columns: [1, 15, 3, 4, 5, 17, 18, 8, 9, 10, 11, 12, 19]
                                }, action: function (e, dt, button, config) {
                                    $('#flading').show();
                                    // Retrieve the start and end date values
                                    exportOptionPDF();
                                }
                            }
                        ],
                        createdRow: function (row, data, dataIndex) {
                            // add tooltip when row is created
                            $(row).find('td:eq(2)').text(data["dor"].toString());
                            if (data["payor"].toString() !== '') {
                                $(row).find('td:eq(6)').attr('role', "tooltip");
                                $(row).find('td:eq(6)').attr('data-microtip-position', "left");
                                $(row).find('td:eq(6)').attr('data-microtip-size', "medium");
                                $(row).find('td:eq(6)').attr('aria-label', data["payor"].toString());
                            }
                            if (data["payee"].toString() !== '') {
                                $(row).find('td:eq(7)').attr('role', "tooltip");
                                $(row).find('td:eq(7)').attr('data-microtip-position', "left");
                                $(row).find('td:eq(7)').attr('data-microtip-size', "medium");
                                $(row).find('td:eq(7)').attr('aria-label', data["payee"].toString());
                            }
                            if (data["desc"].toString() !== '') {
                                $(row).find('td:eq(9)').attr('role', "tooltip");
                                $(row).find('td:eq(9)').attr('data-microtip-position', "left");
                                $(row).find('td:eq(9)').attr('data-microtip-size', "medium");
                                $(row).find('td:eq(9)').attr('aria-label', data["desc"].toString());
                            }
                            if (data["billingnpi"].toString() !== '') {
                                $(row).find('td:eq(14)').attr('role', "tooltip");
                                $(row).find('td:eq(14)').attr('data-microtip-position', "left");
                                $(row).find('td:eq(14)').attr('data-microtip-size', "medium");
                                $(row).find('td:eq(14)').attr('aria-label', data["billingnpi"].toString());
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
                            // Total over all pages
                            /* var total = api
                             .column(4, {filter: 'applied'})
                             .data()
                             .reduce(function (a, b) {
                             return intVal(a) + intVal(b);
                             }, 0); */
                            // Total over this page
                            var pageTotal = api
                                    .column(4, {page: 'current'})
                                    .data()
                                    .reduce(function (a, b) {
                                        return intVal(a) + intVal(b);
                                    }, 0);
                            // Update footer
                            /*    $(api.column(0).footer()).html(
                             "Total Amount: " + total.toFixed(2) + "   | Screen Total: " + pageTotal.toFixed(2)
                             ); */
//                            $('#totoalamt').html('$ ' + total.toFixed(2));
                            $('#screentotoal').html('$ ' + pageTotal.toFixed(2));
                            $('#flading').hide();
                            //  $('tr:eq(1) th:eq(0)', api.table().footer()).html("Total Amount: " + total.toFixed(2) + "   | Screen Total: " + pageTotal.toFixed(2));
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
                        maxDate: moment().add(1, 'days'),
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
                        localStorage.setItem("adjustmentdate", startVal.format("MM/DD/YYYY") + ' / ' + endVal.format("MM/DD/YYYY"));
                        table.ajax.url("adjustmentdata?startDate=" + start + "&endDate=" + end).load();
                        callTotalAdjustmentValue(moment(start).format("YYYY-MM-DD"), moment(end).format("YYYY-MM-DD"), para, paraVal);
                    });

                    table.on('page.dt', function () {
                        $('.dataTables_scrollBody').scrollTop(0);
                    });

                    table.on('length.dt', function () {
                        $('.dataTables_scrollBody').scrollTop(0);
                    });

                    // Initial
                    callTotalAdjustmentValue(moment(start).format("YYYY-MM-DD"), moment(end).format("YYYY-MM-DD"), '', '');

                    function exportOptionPDF() {
                        $('#flading').show();
                        var startDate = moment(start).format("YYYY-MM-DD");
                        var endDate = moment(end).format("YYYY-MM-DD");
                        location.href = "exportProviderAdjustmentPdf?startDate=" + startDate + "&endDate=" + endDate;
                        $('#flading').hide();
                    }


                    var eft = GetParameterValues('eft');
                    if (typeof (eft) !== 'undefined') {
                        table.columns(8).search('').search(eft).draw();
                    } else {
                        table.columns(8).search('').search('').draw();
                    }
                    var not_tid = GetParameterValues('tid');
                    if (typeof (not_tid) !== 'undefined') {
                        table.columns(16).search('').search(not_tid).draw();
                    } else {
                        table.columns(16).search('').search('').draw();
                    }

                    var searchOption = '';
                    $('#showall').click(function () {
                        $('#flading').hide();
                        table.search('').columns().search('').draw();
                        searchOption = '0';
                        searchColumn = '';
                        searchValue = '';
                        innerSearchValue = '';
                        $('#ddlsearch').val(0).change();
                        $('#para_file').val('');
                        $('#para_chk').val('');
                        $('#para_payor').val('');
                        $('#ddlSearchPractice').val('');
                        $('#para_npi').val('');
                        callTotalAdjustmentValue(moment(start).format("YYYY-MM-DD"), moment(end).format("YYYY-MM-DD"), '', '');
                    });

                    function clearFields() {
                        table.search('').columns().search('').draw();
                        $('#para_file').val('');
                        $('#para_chk').val('');
                        $('#para_payor').val('');
                        $('#ddlSearchPractice').val('');
                        $('#para_npi').val('');
                    }


                    $('#search').click(function () {
                        table.search('').columns().search('');
                        searchOption = $('#ddlsearch').val();
                        if (searchOption === '0') {
                            msgbox("Select the Search option..!", "Adjusment wise Portal", "error");
                            table.search('').columns().search('').draw();
                            $('#flading').hide();
                        } else if (searchOption === '1') {
                            var lenFile = $('#para_file').val().length;
                            if (lenFile !== 0) {
                                var fileVal = $('#para_file').val();
                                clearFields();
                                $('#para_file').val(fileVal);
                                table.columns(1).search('').search($('#para_file').val()).draw();
                                // table.ajax.url("adjusmentSearchData?para=pro.fn&paraVal=" + $('#para_file').val()).load();
                                para = 'pro.fn';
                                paraVal = $('#para_file').val();
                                searchColumn = 'fn';
                                searchValue = $('#para_file').val();
                            } else {
                                msgbox("Enter File Name..!", "Adjusment wise Portal", "error");
                                $('#flading').hide();
                            }
                        } else if (searchOption === '2') {
                            var lenChk = $('#para_chk').val().length;
                            if (lenChk !== 0) {
                                var chkVal = $('#para_chk').val();
                                clearFields();
                                $('#para_chk').val(chkVal);
                                table.columns(8).search('').search($('#para_chk').val()).draw();
                                // table.ajax.url("adjusmentSearchData?para=pro.eft&paraVal=" + $('#para_chk').val()).load();
                                para = 'pro.eft';
                                paraVal = $('#para_chk').val();
                                searchColumn = 'eft';
                                searchValue = $('#para_chk').val();
                            } else {
                                msgbox("Enter CHK..!", "Adjusment wise Portal", "error");
                                $('#flading').hide();
                            }
                        } else if (searchOption === '3') {
                            var lenPayor = $('#para_payor').val().length;
                            if (lenPayor !== 0) {
                                var payorVal = $('#para_payor').val();
                                clearFields();
                                $('#para_payor').val(payorVal);
                                table.columns(17).search('').search($('#para_payor').val()).draw();
                                // table.ajax.url("adjusmentSearchData?para=pro.payor&paraVal=" + $('#para_payor').val()).load();
                                para = 'pro.payor';
                                paraVal = $('#para_payor').val();
                                searchColumn = 'payor';
                                searchValue = $('#para_payor').val();
                            } else {
                                msgbox("Enter Payor..!", "Adjusment wise Portal", "error");
                                $('#flading').hide();
                            }
                        } else if (searchOption === '4') {
                            var lenPractice = $('#ddlSearchPractice').val().length;
                            if (lenPractice !== 0) {
                                var practiceVal = $('#ddlSearchPractice').val();
                                clearFields();
                                $('#ddlSearchPractice').val(practiceVal);
                                table.columns(18).search('').search($('#ddlSearchPractice').val()).draw();
                                //table.ajax.url("adjusmentSearchData?para=pro.payee&paraVal=" + ($('#ddlSearchPractice').val())).load();
                                para = 'pro.payee';
                                paraVal = $('#ddlSearchPractice').val();
                                searchColumn = 'payee';
                                searchValue = $('#ddlSearchPractice').val();
                            } else {
                                msgbox("Select practice..!", "Adjusment wise Portal", "error");
                                $('#flading').hide();
                            }
                        } else if (searchOption === '5') {
                            var lenNpi = $('#para_npi').val().length;
                            if (lenNpi !== 0) {
                                var npiVal = $('#para_npi').val();
                                clearFields();
                                $('#para_npi').val(npiVal);
                                table.columns(19).search('').search($('#para_npi').val()).draw();
                                // table.ajax.url("adjusmentSearchData?para=billing_npi&paraVal=" + ($('#para_npi').val())).load();
                                para = 'billing_npi';
                                paraVal = $('#para_npi').val();
                                searchColumn = 'billing_npi';
                                searchValue = $('#para_npi').val();
                            } else {
                                msgbox("Enter Billing NPI..!", "Adjusment wise Portal", "error");
                                $('#flading').hide();
                            }
                        }
                        callTotalAdjustmentValue(moment(start).format("YYYY-MM-DD"), moment(end).format("YYYY-MM-DD"), para, paraVal);
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
                    function MyNoFunction() {
                        $(".overlay").click();
                        $('#headercheck').prop('checked', false);
                        $('#simpletable tbody input[type=checkbox]').each(function () {
                            $(this).prop('checked', false);
                            if (checked > 0) {
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

                    var brid = '';
                    $('#brid').hide();
                    $('#raiseticket').click(function () {
                        brid = '';
                        var table = $('#simpletable').DataTable();
                        table.$('input[type="checkbox"]').each(function () {
                            if (this.checked) {
                                let tr = $(this).closest('tr');
                                brid = tr.find('td:eq(15)').text() + ',' + brid;
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
                                    // console.log(response);
                                    // console.log(response.length);
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
                            msgbox("Select atleast one eob(s).", "Ticket Portal", "warning");
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
                                segment: "M",
                                currentdt: today,
                                request_id: brid
                            },
                            success: function (response) {
                                console.log(response);
                                $("select#ticket_type_id").val('1');
                                $("select#assigned_to").val('0');
                                $(".note-editable").html('');
                                msgbox("Ticket Saved", "Ticket Form", "success");
                                table.ajax.reload(null, false);
                                MyNoFunction();
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
                            var strcontent = "Hi " + assignto + ", <br><br>" + "Type: " + tickettype + "<br>Source: " + tsource + "<br>Priority: " + ticketpriority + "<br> Assign To: " + assignto + "<br>Segment: Adjustment List [M]" + "<br><br>" + $(".note-editable").html();
                            // Email Config
                            $.post('eMail', {
                                recipient: entity_user_to,
                                subject: 'Ticket Raised from Adjustment Form: ' + tickettype + ' : ' + tstatus + ' to ' + assignto,
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
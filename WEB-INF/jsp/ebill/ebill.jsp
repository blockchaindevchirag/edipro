<%@page contentType="text/html"  pageEncoding="UTF-8" autoFlush="true"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@taglib prefix="spring"  uri="http://www.springframework.org/tags"  %>
<html lang="en">

    <head>
        <title>E-Superbill</title>
        <style>
            a.template:hover{
                color:white!important
            }
            a:hover {
                color: #ffffff !important;
                outline: none;
                text-decoration: none;
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
            .datepicker table tr td.disabled{
                color: darkgray;
            }
            .card .card-header{
                padding: 0px;
            }
            .wizard > .content > .body label {
                display: inline-block;
                margin-bottom: 0em !important;
            }

            .ulidigimgchk{
                margin-right: 4px;
                /*    margin-top: 2px;
                    margin-bottom: 5px;*/
                margin-left:25px;
            }
            .ulliimg{
                /*list-style-image: url(assets/images/chkbullet.png) !important;*/
                margin:0px 50px !important;
            }
            .ulliimglbl{
                display: inline-block !important;
                vertical-align: top;
                margin-top: -4px !important;
                margin-left: 0px !important;
            }

            .bootstrap-select{
                margin: -5px -14px !important;
                width: 103%;
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
                font-weight:bold;
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
            div.dataTables_wrapper div.dataTables_filter {
                text-align: right;
                margin-Top: 17px !important;
            }
        </style>

        <jsp:include page="../includes/header.jsp"></jsp:include>
            <!-- [ Main Content ] start -->
        <div class="pcoded-main-container">
            <div class="pcoded-wrapper">
                <div class="pcoded-content">
                    <div class="pcoded-inner-content">
                        <div class="main-body">
                            <!-- [ form-element ] start -->
                            <div class="page-wrapper">
                                <div class="row">
                                    <div class="col-lg-12"> 

                                        <div id="table_v" class="card">         
                                            <div class="card-body">
                                                <div class="row" >
                                                    <div class="col-md-3 p-l-0 col-lg-3">
                                                        <div class="form-group">
                                                            <label class="col-form-label col col-30px">Filter By Create Date</label>
                                                            <div class='input-group pull-right' id='pc-daterangepicker-6' style="width: 240px;height: 33px;">
                                                                <input type='text' readonly="" class="form-control" placeholder="Select date range" />
                                                                <div class='input-group-append'>
                                                                    <span class="input-group-text"><i class="feather icon-calendar"></i></span>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-3 p-l-0 col-lg-3">
                                                        <div class="form-group">
                                                            <label class="col-form-label col col-30px">Search For</label>
                                                            <select class="form-control js-example-placeholder-multiple"  name="ddlsearch" id="ddlsearch" >
                                                                <option value = "0">select</option> 
                                                                <option value = "1">Patient Firstname</option> 
                                                                <option value = "2">Patient Lastname</option> 
                                                                <option value = "3">DOB</option> 
                                                                <option value = "4">DOS</option> 
                                                                <option value = "5">Practice</option> 
                                                                <option value = "6">Payor</option> 
                                                                <option value = "7">Status</option> 
                                                            </select>
                                                        </div>
                                                    </div>

                                                    <div class="col-md-2 p-l-0 col-lg-3">
                                                        <div class="form-group">
                                                            <label class="col-form-label col col-30px" id="paraid"></label>                                                             
                                                            <input type='text' id="para_Firstname" class="form-control" placeholder="First Name" />
                                                            <input type='text' id="para_Lastname" class="form-control" placeholder="Last Name" />
                                                            <input type='text' id="para_Dob" class="form-control" placeholder="DOB" />
                                                            <input type='text' id="para_Dos" class="form-control" placeholder="DOS" />
                                                            <select class="form-control js-example-placeholder-multiple col-sm-12" id="ddlSearchPractice" data-placeholder="Select Practice"  name="ddlSearchPractice" ></select>
                                                            <select class="form-control js-example-placeholder-multiple"  data-placeholder="Select Insurance" id="payorid" name="payorid" >
                                                                <option value ="" >--Select--</option>
                                                            <c:forEach var="benefits" items="${payorlist}">
                                                                <option value = "${benefits.payorid}" >${benefits.payor}</option>
                                                            </c:forEach> 
                                                        </select>

                                                        <select class="form-control js-example-placeholder-multiple" data-placeholder="Select Status" name="para_Status" id="para_Status" >
                                                            <option value = "">select</option> 
                                                            <option value = "SENT">SENT</option> 
                                                            <option value = "WAITING FOR APPROVAL">WAITING FOR APPROVAL</option> 
                                                            <option value = "SIGNED">SIGNED</option> 
                                                            <option value = "APPROVED">APPROVED</option> 
                                                            <option value = "DRAFTED">DRAFTED</option> 
                                                            <option value = "HELP">HELP</option>   
                                                            <option value = "VOID">VOID</option>   
                                                        </select>
                                                    </div>
                                                </div>

                                                <div class="col-md-4 col-lg-3 m-r-0 p-r-0">
                                                    <div class="row form-group m-t-20" style="margin-top:31px;">   
                                                        <button id="search" class="btn btn-success" style="padding:5px 10px!important;">Search</button>
                                                        <button id="showall" class="btn btn-primary" style="padding:5px 10px!important;">Reset</button>
                                                        <sec:authorize access="hasAnyRole('ROLE_ADMIN,ROLE_PRACTICE_PROVIDER,ROLE_CORP_PROVIDER,ROLE_GROUPCLINIC_PROVIDER,ROLE_REFERING_PROVIDER,ROLE_ENTITY_ADMIN,ROLE_ENTITY_STAFF')"> 
                                                            <sec:authorize access="hasAuthority('NEW_SUPERBILL_PRIVILEGE')">
                                                                <button type="button" onclick="addNew()"  id="btnnew" class="btn btn-warning" style="padding:5px 8px!important;" title="New Bill" ><i class="fas fa-plus-circle"></i>New Bill</button>
                                                            </sec:authorize>
                                                        </sec:authorize>
                                                    </div>
                                                </div>

                                                <hr class="hrtopbtm"><br>

                                                <div class="dt-responsive table-responsive">

                                                    <table  id="eligibilitytable" width="98%" style="width: 0px;" class="table table-striped table-bordered nowrap display">
                                                        <thead>
                                                            <tr>
                                                                <th><input id="headercheck" type="checkbox"></th>
                                                                <th>S No</th>
                                                                <th>Practice</th>
                                                                <th>Patient</th>                                                           
                                                                <th>DOB</th>
                                                                <th>Payor</th>
                                                                <th>DOS</th>
                                                                <th>Notes</th>
                                                                <th>Date</th>
                                                                <th>Status</th>
                                                                <th>Action</th>
                                                                <th>Payor</th>
                                                                <th>Notes</th>
                                                                <th>Practice</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>   
                                                        </tbody>
                                                    </table>
                                                </div>

                                            </div>
                                        </div>
                                    </div> 

                                    <div style="display:none;min-height:500px;" id="new_bill"   class="card">
                                        <div class="card-header bg-success">
                                            <h5 class="text-white m-b-0">Choose Template</h5>
                                        </div>
                                        <div class="card-body d-flex align-items-center justify-content-center">

                                            <section style="width:40%;">
                                                <div class="col-sm">														
                                                    <div class="row form-group">      
                                                        <a href="loadtemplate?templateId=1" class="template btn btn-rounded btn-success btn-gradient-success" type="button" style="width:100%; font-weight: bold; font-size:16px;">
                                                            OMS Template
                                                        </a>
                                                    </div>                                                                    
                                                    <div class="row form-group">
                                                        <a href="loadtemplate?templateId=2" class="template btn btn-rounded btn-dark btn-gradient-success" type="button" style="width:100%; font-weight: bold; font-size:16px;">
                                                            Radiology Template
                                                        </a>
                                                    </div>
                                                </div>
                                            </section>
                                        </div>
                                    </div> 

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div id="flading" class="loader">

        </div>
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
            <div class="col-sm-12">
                <div class="card border-0 shadow-none">
                    <div class="card-body pr-0 pl-0 pt-0">

                        <div>
                            <form:form method="POST" id="ticket" name="ticket" action="uploadticketatt" modelAttribute="uploadticketatt" enctype="multipart/form-data">

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

    <!-- Required Js -->
    <jsp:include page="../includes/footer.jsp"></jsp:include>

        <script src="assets/js/plugins/jquery.bootstrap.wizard.min.js"></script>
        <script src="assets/js/plugins/jquery.steps.min.js"></script>
        <script src="assets/js/ebill/ebill.js?v=<spring:message code="release.version"/>"></script>

    <script src="assets/js/plugins/select2.full.min.js"></script>
    <script src="assets/js/pages/form-select-custom.js"></script>

    <script>
                                                                    var start, end;
                                                                    var searchOption = '';
                                                                    function sendBill(id, createdBy, CreatedDate, notes) {
                                                                    var practiceMailID = '';
                                                                    $.ajax({
                                                                    url: "userEmailId",
                                                                            type: "get", //send it through get method
                                                                            data: {
                                                                            userId: createdBy
                                                                            },
                                                                            success: function (response) {
                                                                            // console.log(response);
                                                                            // console.log(response.length);
                                                                            var txt = response;
                                                                            var obj = jQuery.parseJSON(txt);
                                                                            if (obj.length > 0)
                                                                            {
                                                                            $.each(obj, function (index, value) {
                                                                            practiceMailID = obj[index].username;
                                                                            //  alert(practiceMailID);
                                                                            });
                                                                            //   alert(practiceMailID);
                                                                            //    alert($('#notes').val());

                                                                            $.post('eMail', {
                                                                            recipient: practiceMailID,
                                                                                    subject: "eSuperbill - " + id + " ( SENT )",
                                                                                    content: "Hi, <br><br>The superbill sent on " + CreatedDate + " is Submitted to the Payor for adjudication.<br><br>NOTES: " + notes + "<br><br>By<br>Support@healthomation.com",
                                                                                    cc: "",
                                                                                    bcc: "muthu@healthomation.com"

                                                                            }, function (response) {

                                                                            console.log(response);
                                                                            });
                                                                            } else {
                                                                            }
                                                                            }
                                                                    });
                                                                    }

                                                                    function approveBill(id, CreatedDate, notes) {
                                                                    $.post('eMail', {
                                                                    recipient: "billing@ameridenti.com",
                                                                            subject: "eSuperbill - " + id + " ( APPROVED )",
                                                                            content: "Hi, <br><br>There is a change in status of the esuperbill submitted on " + CreatedDate + ".<br><br>Please review the Notes below and take appropriate action.<br><br>NOTES: " + notes + "<br><br>By<br>Support@healthomation.com",
                                                                            cc: "",
                                                                            bcc: "muthu@healthomation.com"

                                                                    }, function (response) {

                                                                    console.log(response);
                                                                    });
                                                                    }

                                                                    function sendHelpEmail(ebid, createdBy) {
                                                                    if (confirm("Would you like to request help from a coder to complete this e-bill?")) {
                                                                    $.ajax({
                                                                    url: "ebill_help/" + $.trim(ebid) + "?email=''&bccMail=muthu@healthomation.com",
                                                                            type: "GET", //send it through get method
                                                                            success: function (response) {
                                                                            if (response.length > 0) {
                                                                            var helpMailID = 'billing@ameridenti.com';
                                                                            $.post('eMail', {
                                                                            recipient: helpMailID,
                                                                                    subject: "eSuperbill - " + ebid + " ( Help )",
                                                                                    content: "Hi, <br><br>Help notes : There is a change in status of the esuperbill and doctor's offie seeking help.\n\nPlease review and take appropriate action.<br><br>By<br>Support@healthomation.com",
                                                                                    cc: "",
                                                                                    bcc: "muthu@healthomation.com"

                                                                            }, function (response) {
                                                                            console.log(response);
                                                                            });
                                                                            console.log(response);
                                                                            msgbox("Help Initiated", "ESuperbill Portal", "success");
                                                                            }
                                                                            refreshEbillDataTable(); //refresh the datatable
                                                                            },
                                                                            error: function (err) {
                                                                            console.log(err);
                                                                            msgbox(err, "ESuperbill Portal", "error");
                                                                            }
                                                                    });
                                                                    }
                                                                    };
                                                                    function refreshEbillDataTable(){
                                                                    var table = $('#eligibilitytable').DataTable();
                                                                    table.search('').draw();
                                                                    }
                                                                    $(document).ready(function () {

                                                                    $("#para_Dob").datepicker({
                                                                    format: "mm/dd/yyyy",
                                                                            autoclose: true,
                                                                            orientation: "bottom left",
                                                                            endDate: "0",
                                                                            startDate: "01/01/1000"
                                                                    }).mask('99/99/9999');
                                                                    $("#para_Dos").datepicker({
                                                                    format: "mm/dd/yyyy",
                                                                            autoclose: true,
                                                                            orientation: "bottom left",
                                                                            endDate: "0",
                                                                            startDate: "01/01/1000"
                                                                    }).mask('99/99/9999');
                                                                    $('#para_Firstname').hide();
                                                                    $('#para_Lastname').hide();
                                                                    $('#para_Dob').hide();
                                                                    $('#para_Dos').hide();
                                                                    $('#ddlSearchPractice').next(".select2-container").hide();
                                                                    $('#payorid').next(".select2-container").hide();
                                                                    $('#para_Status').next(".select2-container").hide();
                                                                    function submitBill() {
                                                                    $('#ddlpractice').removeAttr('disabled');
                                                                    $('#resultcodev').val('');
                                                                    var selected = [];
                                                                    var diaselected = [];
                                                                    $('input[type=checkbox]').each(function () {
                                                                    if (this.checked) {
                                                                    try {
                                                                    var idname = $(this).attr('id');
                                                                    if (idname.indexOf("t1proc") > - 1) {
                                                                    selected.push(idname);
                                                                    }
                                                                    if (idname.indexOf("temp1tr") > - 1) {
                                                                    selected.push(idname);
                                                                    }
                                                                    //var tag_id = $(this).attr("id");
                                                                    if (idname.indexOf("iag") > - 1) {
                                                                    diaselected.push(idname);
                                                                    }
                                                                    } catch (err) {
                                                                    console.log(err);
                                                                    }
                                                                    }
                                                                    });
                                                                    console.log(diaselected);
                                                                    $('#procedurecodes').val(selected);
                                                                    $('#disganosiscode').val(diaselected);
                                                                    $('#result').val($('#procedurecode_result').html());
                                                                    $('#resultcodev').val($('#procedurecodev_result').html());
                                                                    var ebill_to = '';
        <c:forEach var="to" items="${ebill_to}">
                                                                    ebill_to = '${to}';
        </c:forEach>
                                                                    var ebill_cc = '';
        <c:forEach var="cc" items="${ebill_cc}">
                                                                    ebill_cc = '${cc}';
        </c:forEach>
                                                                    if (ebill_to !== '') {
                                                                    var strcontent1 = "Hi, <br> <br>A New E-Visit of " + $('#ddlpatient option:selected').text() + " created from " + $('#ddlpractice option:selected').text() + " by Dr. " + $('#ddlprovider option:selected').text() + "  on Date : " + today + "<br><br>";
                                                                    // Email Config
                                                                    $.post('eMail', {
                                                                    recipient: ebill_to,
                                                                            subject: "A New E-Visit of " + $('#ddlpatient option:selected').text() + " Created by Dr." + $('#ddlprovider option:selected').text(),
                                                                            content: strcontent1,
                                                                            cc: "",
                                                                            bcc: ebill_cc

                                                                    }, function (response) {

                                                                    console.log(response);
                                                                    });
                                                                    }
                                                                    }
                                                                    var entity = '<%= session.getAttribute("Entityid")%>';
                                                                    var checked = 0;
                                                                    var notflag = 'N';
                                                                    var usertype = '<%=session.getAttribute("UT")%>';
                                                                    var practiceid = '<%=session.getAttribute("practiceid")%>';
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
                                                                    function ShowConfirmDraftSign() {
                                                                    AsyncConfirmDraftSign(
                                                                            "Confirmation Box",
                                                                            "Do you wish to Draft or Sign?",
                                                                            MyDraftFunction,
                                                                            MySignFunction
                                                                            );
                                                                    }
                                                                    var retnvl = '';
                                                                    function MyDraftFunction() {
                                                                    $('#billstatus').val('DRAFTED');
                                                                    retnvl = 'DRAFTED';
                                                                    $("form[name='ebillform']").submit();
                                                                    }
                                                                    function MySignFunction() {

                                                                    $('#billstatus').val('SIGNED');
                                                                    retnvl = 'SIGNED';
                                                                    $("form[name='ebillform']").submit();
                                                                    }
                                                                    function AsyncConfirmDraftSign(title, msg, draftFn, saveFn) {
                                                                    var $confirm = $("#modalConfirmDraftSign");
                                                                    $confirm.modal('show');
                                                                    $("#lblTitleConfirmDraftSign").html(title);
                                                                    $("#lblMsgConfirmDraftSign").html(msg);
                                                                    $("#btnYesConfirmDraftSign").off('click').click(function () {
                                                                    draftFn();
                                                                    $confirm.modal("hide");
                                                                    });
                                                                    $("#btnNoConfirmDraftSign").off('click').click(function () {
                                                                    saveFn();
                                                                    $confirm.modal("hide");
                                                                    });
                                                                    }
                                                                    $('#ddlsearch').change(function (event) {

                                                                    if ($('#ddlsearch').val() === '1'){
                                                                    $('#para_Firstname').show();
                                                                    $('#para_Lastname').hide();
                                                                    $('#para_Dob').hide();
                                                                    $('#para_Dos').hide();
                                                                    $('#ddlSearchPractice').next(".select2-container").hide();
                                                                    $('#payorid').next(".select2-container").hide();
                                                                    $('#para_Status').next(".select2-container").hide();
                                                                    $('#para_Firstname').val('');
                                                                    } else if ($('#ddlsearch').val() === '2'){
                                                                    $('#para_Firstname').hide();
                                                                    $('#para_Lastname').show();
                                                                    $('#para_Dob').hide();
                                                                    $('#para_Dos').hide();
                                                                    $('#ddlSearchPractice').next(".select2-container").hide();
                                                                    $('#payorid').next(".select2-container").hide();
                                                                    $('#para_Status').next(".select2-container").hide();
                                                                    $('#para_Lastname').val('');
                                                                    } else if ($('#ddlsearch').val() === '3'){
                                                                    $('#para_Firstname').hide();
                                                                    $('#para_Lastname').hide();
                                                                    $('#para_Dob').show();
                                                                    $('#para_Dos').hide();
                                                                    $('#ddlSearchPractice').next(".select2-container").hide();
                                                                    $('#payorid').next(".select2-container").hide();
                                                                    $('#para_Status').next(".select2-container").hide();
                                                                    $('#para_Dob').val('');
                                                                    } else if ($('#ddlsearch').val() === '4'){
                                                                    $('#para_Firstname').hide();
                                                                    $('#para_Lastname').hide();
                                                                    $('#para_Dob').hide();
                                                                    $('#ddlSearchPractice').next(".select2-container").hide();
                                                                    $('#payorid').next(".select2-container").hide();
                                                                    $('#para_Dos').show();
                                                                    $('#para_Status').next(".select2-container").hide();
                                                                    $('#para_Dos').val('');
                                                                    } else if ($('#ddlsearch').val() === '5'){
                                                                    $('#para_Firstname').hide();
                                                                    $('#para_Lastname').hide();
                                                                    $('#para_Dob').hide();
                                                                    $('#ddlSearchPractice').next(".select2-container").show();
                                                                    $('#payorid').next(".select2-container").hide();
                                                                    $('#para_Dos').hide();
                                                                    $('#para_Status').next(".select2-container").hide();
                                                                    if (practiceid > 0) {
                                                                    console.log("Practice: " + practiceid);
                                                                    $('#ddlSearchPractice').val(practiceid);
                                                                    $('#ddlSearchPractice').trigger('change');
                                                                    $('#ddlSearchPractice').attr('disabled', "true");
                                                                    } else {
                                                                    $('#ddlSearchPractice').val('').change();
                                                                    }
                                                                    } else if ($('#ddlsearch').val() === '6'){
                                                                    $('#para_Firstname').hide();
                                                                    $('#para_Lastname').hide();
                                                                    $('#para_Dob').hide();
                                                                    $('#ddlSearchPractice').next(".select2-container").hide();
                                                                    $('#payorid').next(".select2-container").show();
                                                                    $('#para_Dos').hide();
                                                                    $('#para_Status').next(".select2-container").hide();
                                                                    $('#payorid').val('').change();
                                                                    } else if ($('#ddlsearch').val() === '7'){
                                                                    $('#para_Firstname').hide();
                                                                    $('#para_Lastname').hide();
                                                                    $('#para_Dob').hide();
                                                                    $('#ddlSearchPractice').next(".select2-container").hide();
                                                                    $('#payorid').next(".select2-container").hide();
                                                                    $('#para_Dos').hide();
                                                                    $('#para_Status').next(".select2-container").show();
                                                                    $('#para_Status').val('');
                                                                    $('#para_Status').trigger('change');
                                                                    } else{
                                                                    $('#flading').hide();
                                                                    }
                                                                    });
                                                                    $('#ddlsearch').val(0).change();
                                                                    function replaceSpecialChar(value)
                                                                    {
                                                                    value = value.replaceAll('#', '');
                                                                    return value;
                                                                    }

        <sec:authorize access="hasAnyRole('ROLE_ADMIN,ROLE_USER,ROLE_CORP_PRACTICE,ROLE_CORP_PROVIDER,ROLE_GROUPCLINIC_PROVIDER,
                       ROLE_CORP_ADMIN,ROLE_CORP_STAFF,ROLE_GROUPCLINIC_ADMIN,ROLE_GROUPCLINIC_STAFF,ROLE_BILLING_ADMIN,ROLE_BILLING_STAFF,
                       ROLE_PRACTICE_ADMIN,ROLE_PRACTICE_STAFF, ROLE_PRACTICE_PROVIDER,ROLE_REFERING_PROVIDER')">
                                                                    $('#procedurecode_result').show();
                                                                    $('#procedurecodev_result').hide();
        </sec:authorize>

        <sec:authorize access="hasAnyRole('ROLE_ENTITY_ADMIN,ROLE_ENTITY_STAFF')">
                                                                    $('#procedurecode_result').hide();
                                                                    $('#procedurecodev_result').show();
        </sec:authorize>

                                                                    $.ajax({
                                                                    url: "practicedetailswtentityid",
                                                                            type: "get", //send it through get method
                                                                            data: {
                                                                            Entityid: entity
                                                                            },
                                                                            success: function (response) {
                                                                            var select = $('#ddlpractice');
                                                                            var select1 = $('#ddlSearchPractice');
                                                                            select.find('option').remove();
                                                                            $("<option value='' selected hidden>--Select--</option>").appendTo(select);
                                                                            select1.find('option').remove();
                                                                            $("<option value='' selected hidden>--Select--</option>").appendTo(select1);
                                                                            console.log(response);
                                                                            var txt = response;
                                                                            var obj = jQuery.parseJSON(txt);
                                                                            console.log(obj);
                                                                            if (obj.length > 0)
                                                                            {
                                                                            for (var i = 0; i < obj.length; i++)
                                                                            {
                                                                            // var sv = value.split('~');
                                                                            $('<option>').val(obj[i].practice_id).text(obj[i].name).appendTo(select);
                                                                            $('<option>').val(obj[i].practice_id).text(obj[i].name).appendTo(select1);
                                                                            }
                                                                            //alert(entity);
                                                                            console.log("UT:<%=session.getAttribute("UT")%>:");
        <sec:authorize access="hasAnyRole('ROLE_PRACTICE_PROVIDER,ROLE_REFERING_PROVIDER')">
                                                                            console.log("Practice: " + practiceid);
                                                                            $('#ddlpractice').val(practiceid);
                                                                            $('#ddlpractice').attr('disabled', "true");
                                                                            $("#ddlpractice").trigger("change");
                                                                            $('#ddlSearchPractice').val(practiceid);
                                                                            $('#ddlSearchPractice').attr('disabled', "true");
                                                                            $("#ddlSearchPractice").trigger("change");
        </sec:authorize>
                                                                            }
                                                                            }
                                                                    });
                                                                    $('#besicwizard').bootstrapWizard({
                                                                    withVisible: false,
                                                                            'nextSelector': '.button-next',
                                                                            'previousSelector': '.button-previous',
                                                                            'firstSelector': '.button-first',
                                                                            'lastSelector': '.button-last'
                                                                    });
                                                                    $('#btnwizard').bootstrapWizard({
                                                                    withVisible: false,
                                                                            'nextSelector': '.button-next',
                                                                            'previousSelector': '.button-previous',
                                                                            'firstSelector': '.button-first',
                                                                            'lastSelector': '.button-last'
                                                                    });
                                                                    $('#progresswizard').bootstrapWizard({
                                                                    withVisible: false,
                                                                            'nextSelector': '.button-next',
                                                                            'previousSelector': '.button-previous',
                                                                            'firstSelector': '.button-first',
                                                                            'lastSelector': '.button-last',
                                                                            onTabShow: function (tab, navigation, index) {
                                                                            var $total = navigation.find('li').length;
                                                                            var $current = index + 1;
                                                                            var $percent = ($current / $total) * 100;
                                                                            $('#progresswizard .progress-bar').css({
                                                                            width: $percent + '%'
                                                                            });
                                                                            }
                                                                    });
                                                                    $('#validationwizard').bootstrapWizard({
                                                                    withVisible: false,
                                                                            'nextSelector': '.button-next',
                                                                            'previousSelector': '.button-previous',
                                                                            'firstSelector': '.button-first',
                                                                            'lastSelector': '.button-last',
                                                                            onNext: function (tab, navigation, index) {

                                                                            if (index === 1) {
                                                                            if (!$('#validation-t-name').val()) {
                                                                            $('#validation-t-name').focus();
                                                                            $('.form-1').addClass('was-validated');
                                                                            return false;
                                                                            }
                                                                            if (!$('#validation-t-email').val()) {
                                                                            $('#validation-t-email').focus();
                                                                            $('.form-1').addClass('was-validated');
                                                                            return false;
                                                                            }
                                                                            if (!$('#validation-t-pwd').val()) {
                                                                            $('#validation-t-pwd').focus();
                                                                            $('.form-1').addClass('was-validated');
                                                                            return false;
                                                                            }

                                                                            }
                                                                            if (index === 2) {
                                                                            if (!$('#validation-t-address').val()) {
                                                                            $('#validation-t-address').focus();
                                                                            $('.form-2').addClass('was-validated');
                                                                            return false;
                                                                            }
                                                                            }
                                                                            }
                                                                    });
                                                                    $('#tabswizard').bootstrapWizard({
                                                                    'nextSelector': '.button-next',
                                                                            'previousSelector': '.button-previous',
                                                                    });
                                                                    $('#verticalwizard').bootstrapWizard({
                                                                    'nextSelector': '.button-next',
                                                                            'previousSelector': '.button-previous',
                                                                    });
                                                                    var ebdt = localStorage.getItem("ebdate");
                                                                    if (ebdt === null) {
                                                                    start = moment().subtract(10, 'year');
                                                                    end = moment();
                                                                    $('#pc-daterangepicker-6 .form-control').val(start.format('MM/DD/YYYY') + ' / ' + end.format('MM/DD/YYYY'));
                                                                    } else {
                                                                    var currentVal = ebdt;
                                                                    start = currentVal.split(" / ")[0];
                                                                    end = currentVal.split(" / ")[1];
                                                                    $('#pc-daterangepicker-6 .form-control').val(moment(start).format("MM/DD/YYYY") + ' / ' + moment(end).format("MM/DD/YYYY"));
                                                                    localStorage.setItem("ebdate", moment(start).format("MM/DD/YYYY") + ' / ' + moment(end).format("MM/DD/YYYY"));
                                                                    }
                                                                    var table = $('#eligibilitytable').DataTable({
                                                                    "aaSorting": [], // Sort by first column descending [0, "desc"]
                                                                            "lengthMenu": [10, 30, 50, 100, 200, 500, 1000],
                                                                            "iDisplayLength": 100,
                                                                            stateSave: true,
                                                                            scrollY: "330px",
                                                                            scrollX: true,
                                                                            scrollCollapse: true,
                                                                            paging: true,
                                                                            //   fixedHeader: true,
                                                                            "oLanguage": {
                                                                            "sEmptyTable": "No Data..."
                                                                            },
                                                                            "columnDefs": [
        <sec:authorize access="hasAnyRole('ROLE_PRACTICE_PROVIDER,ROLE_CORP_PROVIDER,ROLE_GROUPCLINIC_PROVIDER,ROLE_REFERING_PROVIDER')">
                                                                            //   dt.column(2).visible(false);
                                                                            {'visible': false, 'targets': [2, 11, 12, 13]},
                                                                            {"bSortable": false, "aTargets": [0, 10]}
        </sec:authorize>

        <sec:authorize access="hasAnyRole('ROLE_ADMIN,ROLE_ENTITY_ADMIN,ROLE_ENTITY_STAFF,ROLE_CORP_ADMIN,ROLE_CORP_STAFF,ROLE_GROUPCLINIC_ADMIN,ROLE_GROUPCLINIC_STAFF,ROLE_BILLING_ADMIN,ROLE_BILLING_STAFF,ROLE_PRACTICE_ADMIN,ROLE_PRACTICE_STAFF')">
                                                                            {'visible': true, 'targets': [2]},
                                                                            {'visible': false, 'targets': [11, 12, 13]},
                                                                            {"bSortable": false, "aTargets": [0, 10]}
        </sec:authorize>
                                                                            ],
                                                                            drawCallback: function (settings, json) {

                                                                            },
                                                                            processing: true,
                                                                            serverSide: true,
                                                                            "ajax": {
                                                                            "type": "POST",
                                                                                    "url": 'ebilldata',
                                                                                    "contentType": 'application/json',
                                                                                    "dataType": "json",
                                                                                    dataSrc: 'data',
                                                                                    "data": function (d) {
                                                                                    return JSON.stringify($.extend({}, d, {
                                                                                    "startDate": moment(start).format("YYYY-MM-DD"),
                                                                                            "endDate": moment(end).format("YYYY-MM-DD")
                                                                                    }));
                                                                                    }
                                                                            },
                                                                            dom: 'frtipl',
                                                                            "columns": [
                                                                            {"data": function (data) {
                                                                            return '<input type="checkbox" class = "check">';
                                                                            }, "orderable": false, "searchable": false, "name": "check"},
                                                                            {"data": function (data) {
                                                                            return " " + data.requestid;
                                                                            }, "orderable": true, "searchable": true, "name": "requestid"},
                                                                            {"data": function (data) {
                                                                            return " " + data.spracticename; //spracticename
                                                                            }, "orderable": true, "searchable": true, "name": "practice"},
                                                                            {"data": function (data) {
                                                                            return data.lname + ", " + data.fname;
                                                                            }, "orderable": true, "searchable": true, "name": "patient"},
                                                                            {"data": function (data) {
                                                                            return " " + data.dob;
                                                                            }, "orderable": true, "searchable": true, "name": "dob"},
                                                                            {"data": function (data) {
                                                                            return  data.spayor; // spayor
                                                                            }, "orderable": true, "searchable": true, "name": "spayor"},
                                                                            {"data": function (data) {
                                                                            return " " + data.dateofbenefit;
                                                                            }, "orderable": true, "searchable": true, "name": "dateofbenefit"},
                                                                            {"data": function (data) {
                                                                            return " " + data.snotes;
                                                                            }, "orderable": true, "searchable": false, "name": "snotes"},
                                                                            {"data": function (data) {
                                                                            return " " + data.create_date;
                                                                            }, "orderable": true, "searchable": true, "name": "create_date"},
                                                                            {"data": function (data) {
                                                                            if (data.flag1 !== 'N') {
                                                                            if (data.runstatus === "SIGNED") {
                                                                            return '<a href="#" class="badge badge-light-danger f-12 m-r-5">Signed</a>';
                                                                            } else if (data.runstatus === "WAITING FOR APPROVAL") {
                                                                            return '<a href="#" class="badge badge-light-warning f-12 m-r-5">Waiting For Approval</a>';
                                                                            } else if (data.runstatus === "APPROVED") {
                                                                            return '<a href="#" class="badge badge-light-yelinfo f-12 m-r-5">Approved</a>';
                                                                            } else if (data.runstatus === "SENT") {
                                                                            return '<a href="#" class="badge badge-light-success f-12 m-r-5">Sent</a>';
                                                                            } else if (data.runstatus === "DRAFTED") {
                                                                            return '<a href="#" class="badge badge-light-warning f-12 m-r-5">Drafted</a>';
                                                                            } else if (data.runstatus === "HELP") {
                                                                            return '<a href="#" class="badge badge-light-danger f-12 m-r-5">Help</a>';
                                                                            } else {
                                                                            return " " + data.runstatus;
                                                                            }
                                                                            }
                                                                            else {
                                                                            return "Void"
                                                                            }
                                                                            }, "orderable": true, "searchable": true, "name": "status"},
                                                                            {"data": function (data) {
                                                                            var action = "";
                                                                            var text = "";
                                                                            var edit = "";
                                                                            var approval = "";
                                                                            var sent = "";
                                                                            var del = "";
                                                                            var recover = "";
                                                                            var help = "";
                                                                            var UT = '<%= session.getAttribute("UT")%>';
                                                                            var prints = "<a role='tooltip'  data-microtip-position='left' aria-label='Print'   target='_blank' href='printebill?id=" + data.requestid + "&flag=" + data.flag + "'><i class='mdi mdi-printer' style='font-size:18px;margin:0 3px;color:#7E858E;'></i></a>|";
                                                                            var download = "";
                                                                            var download_reduced = "";
                                                                            if (data.filePath) {
                                                                            download = '<a aria-label="Download" role="tooltip"  data-microtip-position="left" class="singledownbutton" id="singledown"  target="_blank"   href="download_bill_pdf?filePath=' + data.filePath + '"><i class="fas fa-download" style="font-size:15px; margin:0 3px;color: #19BCBF;"></i></a>|';
                                                                            }
                                                                            if (data.reducedFilePath) {
                                                                            download_reduced = '<a role="tooltip" data-microtip-position="left" class="singledownbutton" id="singledown" title="" target="_blank"  aria-label="Download"  href="download_bill_pdf?filePath=' + data.reducedFilePath + '"><i class="fas fa-download" style="font-size:15px; margin:0 3px;color: #19BCBF;"></i></a>|';
                                                                            }
                                                                            if (data.runstatus === "DRAFTED"){
                                                                            help = '<a role="tooltip" data-microtip-position="left" class="btnhelp" title=""  aria-label="Help" onclick="return sendHelpEmail(' + "'" + data.requestid + "'," + "'" + data.createdBy + "'" + ')"><i class="mdi mdi-help" style="font-size:15px; margin:0 3px;color: #ff425c;"></i></a>|';
                                                                            }
        <sec:authorize access="hasAuthority('VIEW_SUPERBILL_PRIVILEGE')">
                                                                            var code = "<a role='tooltip' data-microtip-position='left' title=''  aria-label='Review' href='viewbill?id=" + data.requestid + "&flag=" + data.flag + "'><i class='mdi mdi mdi-eye' style='font-size:18px; margin:0 3px;color:#FF9764;'></i></a>|";
        </sec:authorize>
        <sec:authorize access="hasAuthority('REVIEW_SUPERBILL_PRIVILEGE')">
                                                                            text = "<a role='tooltip' data-microtip-position='left' title=''  aria-label='Review' href='detailebill?id=" + data.requestid + "&flag=" + data.flag + "'>" + "<i class='mdi mdi mdi-eye' style='font-size:18px; margin:0 3px;color:#FF9764;'></i></a>|";
        </sec:authorize>
        <sec:authorize access="hasAuthority('EDIT_SUPERBILL_PRIVILEGE')">
                                                                            edit = '<a role="tooltip" data-microtip-position="left" title="" aria-label="Edit" href="editebill?id=' + data.requestid + "&flag=" + data.flag + "&createdBy=" + data.createdBy + "&createDate=" + data.create_date + '"><i class="fas fa-edit" style="font-size:15px; margin:0 3px;color:#2DCEE3;"></i></a>|';
        </sec:authorize>
        <sec:authorize access="hasAuthority('APPROVE_SUPERBILL_PRIVILEGE')">
                                                                            approval = '<a  role="tooltip" data-microtip-position="left" title="" onclick="return approveBill(' + "'" + data.requestid + "','" + data.create_date + "'," + "'" + data.notes + "'" + ')" aria-label="Approve" href="approvebill?id=' + data.requestid + '"><i class="feather icon-check-circle" style="font-size:15px; margin:0 3px;color:#13BD8A;"></i></a>|';
        </sec:authorize>
                                                                            sent = '<a role="tooltip" data-microtip-position="left" title="" onclick="return sendBill(' + "'" + data.requestid + "'," + "'" + data.createdBy + "'," + "'" + data.create_date + "'," + "'" + data.notes + "'" + ')" aria-label="Sent" href="sendbill?id=' + data.requestid + '" ><i class="mdi mdi-send" style="font-size:18px; margin:0 3px;color:#13BD8A;"></i></a>|';
        <sec:authorize access="hasAuthority('DELETE_DOCUMENT_PRIVILEGE')">
                                                                            if (data.flag1 === 'Y')
                                                                            {
                                                                            del = '<a aria-label="Delete" role="tooltip"  data-microtip-position="left" id="deleteEb" class="deleteEb" ><i class="fas fa-trash-alt" style="font-size:15px; margin:0 3px;color:#FF425C;"></i></a>|';
                                                                            //del = '<a id="deleteEb" class="deleteEb"  data-toggle="tooltip" data-placement="left" title="" data-original-title="Delete"><i class="fas fa-trash-alt" style="font-size:15px; margin:0 3px;color:#FF425C;"></i></a>|';
                                                                            }
        </sec:authorize>

        <sec:authorize access="hasAuthority('RECOVER_DOCUMENT_PRIVILEGE')">
                                                                            if (data.flag1 === 'N')
                                                                            {
                                                                            recover = '<a id="recoverEb" class="recoverEb" role="tooltip" data-microtip-position="left" title="" aria-label="Recover"><i class="mdi mdi-restore" style="font-size:18px; margin:0 3px;color:#FF425C;"></i></a>';
                                                                            }
        </sec:authorize>
                                                                            //  action = text + prints;

        <sec:authorize access="hasAnyRole('ROLE_PRACTICE_PROVIDER,ROLE_CORP_PROVIDER,ROLE_GROUPCLINIC_PROVIDER,ROLE_REFERING_PROVIDER')">

                                                                            if (data.runstatus === "DRAFTED" || data.runstatus === "HELP") {
                                                                            action = help + edit + text + prints + download_reduced + del + recover;
                                                                            } else if (data.runstatus === "WAITING FOR APPROVAL") {
                                                                            action = edit + approval + text + prints + download_reduced + del + recover;
                                                                            } else if (data.runstatus === "SENT") {
                                                                            action = text + prints + download_reduced;
                                                                            } else if (data.runstatus === "SIGNED" || data.runstatus === "APPROVED") {
                                                                            action = text + prints + download_reduced;
                                                                            }
        </sec:authorize>

        <sec:authorize access="hasAnyRole('ROLE_ENTITY_ADMIN')">
                                                                            if (data.runstatus === "SIGNED" || data.runstatus === "APPROVED") {
                                                                            action = sent + edit + code + prints + download + del + recover;
                                                                            }
                                                                            else if (data.runstatus === "DRAFTED" || data.runstatus === "HELP") {
                                                                            action = help + code + edit + prints + download + del + recover;
                                                                            }
                                                                            else  if (data.runstatus === "SENT") {
                                                                            action = code + prints + download + del + recover;
                                                                            }
                                                                            else
                                                                            {
                                                                            action = edit + code + prints + download + del + recover;
                                                                            }
        </sec:authorize>


        <sec:authorize access="hasAnyRole('ROLE_ADMIN,ROLE_USER,ROLE_ENTITY_STAFF,ROLE_CORP_PRACTICE,ROLE_CORP_ADMIN,ROLE_CORP_STAFF,
                       ROLE_GROUPCLINIC_ADMIN,ROLE_GROUPCLINIC_STAFF,ROLE_BILLING_ADMIN,ROLE_BILLING_STAFF,
                       ROLE_PRACTICE_ADMIN,ROLE_PRACTICE_STAFF')">
                                                                            action = text + prints + download + del + recover;
        </sec:authorize>

                                                                            return action;
                                                                            }, "orderable": false, "searchable": false, "name": "action"},
                                                                            {"data": function (data) {
                                                                            return  data.ddlinsurance; // spayor
                                                                            }, "orderable": true, "searchable": true, "name": "ddlinsurance"},
                                                                            {"data": function (data) {
                                                                            return  data.notes; // spayor
                                                                            }, "orderable": true, "searchable": true, "name": "notes"},
                                                                            {"data": function (data) {
                                                                            return " " + data.ddlpractice; //spracticename
                                                                            }, "orderable": true, "searchable": true, "name": "ddlpractice"}
                                                                            ],
                                                                            dom: 'fBrtipl',
                                                                            buttons: [
                                                                            {
                                                                            extend: 'csv',
                                                                                    text: '<img src="assets/images/excelicon.png">',
                                                                                    className: 'dt-pdf-btn',
                                                                                    titleAttr: 'Download list in excel Format',
                                                                                    exportOptions: {
                                                                                    columns: [1, 13, 3, 4, 11, 6, 12, 8, 9]
                                                                                    },
                                                                                    action: function (e, dt, button, config) {
                                                                                    $('#flading').show();
                                                                                    var data = '';
                                                                                    var ebillDropdown = $('#ddlsearch');
                                                                                    var ebillValue = ebillDropdown.val(); // Get the selected value from the dropdown
                                                                                    var ebillText = ebillDropdown.find('option:selected').text(); // Get the selected option text
                                                                                    var searchValueDt = table.search() || '';
                                                                                    var ebill;
                                                                                    if (ebillValue === '1' || ebillValue === '2') {
                                                                                    ebill = 'CONCAT(last_name,\", \",first_name)';
                                                                                    } else if (ebillValue === '3') {
                                                                                    ebill = 'DATE_FORMAT(dob, \"%m/%d/%Y\")';
                                                                                    } else if (ebillValue === '4') {
                                                                                    ebill = 'esuperbill.dos';
                                                                                    } else if (ebillValue === '5') {
                                                                                    ebill = 'practice_master.practice_id';
                                                                                    } else if (ebillValue === '6') {
                                                                                    ebill = 'payor_master.payor_id';
                                                                                    } else {
                                                                                    ebill = ''; // Set a default value if no option is selected or if an invalid option is selected
                                                                                    }
                                                                                    // alert(ebill);
                                                                                    var ids = [];
                                                                                    $('#eligibilitytable').find('tbody input[type=checkbox]:checked:not(:disabled)').each(function () {
                                                                                    var id = $(this).closest("tr").find('td:eq(1)').text();
                                                                                    ids.push(id);
                                                                                    });
                                                                                    // Retrieve the start and end date values
                                                                                    var startDate = moment(start).format("YYYY-MM-DD");
                                                                                    var endDate = moment(end).format("YYYY-MM-DD");
                                                                                    var searchValue = $('#para_Firstname').val() || $('#para_Lastname').val() || $('#para_Dob').val() || $('#para_Dos').val() || $('#ddlSearchPractice').val() || $('#payorid').val();
                                                                                    var paraVal = + $('#para_Firstname').val() || $('#para_Lastname').val() || $('#para_Dob').val() || $('#para_Dos').val() || $('#ddlSearchPractice').val() || $('#payorid').val();
                                                                                    // Construct the AJAX URL
                                                                                    var url = 'ebillexportdata?startDate=' + startDate + '&endDate=' + endDate + '&search=' + searchValue + '&para=' + ebill + '&paraVal=' + paraVal + '&dtSearch=' + searchValueDt + '&checkId=' + ids.join();
                                                                                    $.ajax({
                                                                                    url: url,
                                                                                            type: 'POST',
                                                                                            dataType: 'json',
                                                                                            success: function (jsonData) {
                                                                                            // Convert JSON to CSV format
                                                                                            //   var obj = jQuery.parseJSON(jsonData);
                                                                                            // console.log(jsonData.requestid);
                                                                                            console.log(jsonData.data);
                                                                                            var csvContent = "data:text/csv;charset=utf-8,";
                                                                                            csvContent += "Request ID,Practice,Patient,DOB,Payor,DOS,Notes,CreatedDate,Status\n";
                                                                                            jsonData.data.forEach(function (record) {
                                                                                            var patientName = record.lname + ", " + record.fname;
                                                                                            console.log(replaceSpecialChar(record.notes));
                                                                                            // alert(patientName);
                                                                                            var row = [
                                                                                                    record.requestid,
                                                                                                    record.ddlpractice,
                                                                                                    (decodeURI(record.lname) + ', ' + decodeURI(record.fname)),
                                                                                                    record.dob,
                                                                                                    record.ddlinsurance,
                                                                                                    record.dateofbenefit,
                                                                                                    replaceSpecialChar(record.notes.replace(/[\n\r,]/g, ' ').replace(/"/g, '""')),
                                                                                                    record.create_date,
                                                                                                    record.runstatus
                                                                                            ];
                                                                                            var escapedRow = row.map(function (field) {
                                                                                            return '"' + field + '"';
                                                                                            });
                                                                                            csvContent += escapedRow.join(",") + "\n";
                                                                                            });
                                                                                            var link = document.createElement("a");
                                                                                            link.setAttribute("href", encodeURI(csvContent));
                                                                                            link.setAttribute("download", "ESuperBill.csv");
                                                                                            link.style.display = "none";
                                                                                            document.body.appendChild(link);
                                                                                            link.click();
                                                                                            document.body.removeChild(link);
                                                                                            MyNoFunction();
                                                                                            $('#flading').hide();
                                                                                            },
                                                                                            error: function (xhr, status, error) {
                                                                                            console.error(xhr, status, error);
                                                                                            MyNoFunction();
                                                                                            $('#flading').hide();
                                                                                            }
                                                                                    });
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
                                                                                    columns: [1, 13, 3, 4, 11, 6, 12, 8, 9]
                                                                                    }, action: function (e, dt, button, config) {
                                                                            $('#flading').show();
                                                                            // Retrieve the start and end date values
                                                                            exportOptionPDF();
                                                                            }}],
                                                                            createdRow: function (row, data, dataIndex) {
        <sec:authorize access="hasAnyRole('ROLE_PRACTICE_PROVIDER,ROLE_CORP_PROVIDER,ROLE_GROUPCLINIC_PROVIDER,ROLE_REFERING_PROVIDER')">
                                                                            if (data["ddlpractice"].toString() != ''){
                                                                            $(row).find('td:eq(4)').attr('role', "tooltip");
                                                                            $(row).find('td:eq(4)').attr('data-microtip-position', "right");
                                                                            $(row).find('td:eq(4)').attr('data-microtip-size', "medium");
                                                                            $(row).find('td:eq(4)').attr('aria-label', data["ddlpractice"].toString());
                                                                            }
                                                                            if (data["ddlinsurance"].toString() != ''){
                                                                            $(row).find('td:eq(6)').attr('role', "tooltip");
                                                                            $(row).find('td:eq(6)').attr('data-microtip-position', "left");
                                                                            $(row).find('td:eq(6)').attr('data-microtip-size', "medium");
                                                                            $(row).find('td:eq(6)').attr('aria-label', data["ddlinsurance"].toString());
                                                                            }
        </sec:authorize>
        <sec:authorize access="hasAnyRole('ROLE_ADMIN,ROLE_ENTITY_ADMIN,ROLE_ENTITY_STAFF,ROLE_CORP_ADMIN,ROLE_CORP_STAFF,ROLE_GROUPCLINIC_ADMIN,ROLE_GROUPCLINIC_STAFF,ROLE_BILLING_ADMIN,ROLE_BILLING_STAFF,ROLE_PRACTICE_ADMIN,ROLE_PRACTICE_STAFF')">
                                                                            if (data["ddlpractice"].toString() != ''){
                                                                            $(row).find('td:eq(2)').attr('role', "tooltip");
                                                                            $(row).find('td:eq(2)').attr('data-microtip-size', "medium");
                                                                            $(row).find('td:eq(2)').attr('data-microtip-position', "right");
                                                                            $(row).find('td:eq(2)').attr('aria-label', data["ddlpractice"].toString());
                                                                            }
                                                                            if (data["ddlinsurance"].toString() != ''){
                                                                            $(row).find('td:eq(5)').attr('role', "tooltip");
                                                                            $(row).find('td:eq(5)').attr('data-microtip-size', "medium");
                                                                            $(row).find('td:eq(5)').attr('data-microtip-position', "left");
                                                                            $(row).find('td:eq(5)').attr('aria-label', data["ddlinsurance"].toString());
                                                                            }
                                                                            if (data["notes"].toString() != ''){
                                                                            $(row).find('td:eq(7)').attr('role', "tooltip");
                                                                            $(row).find('td:eq(7)').attr('data-microtip-size', "medium");
                                                                            $(row).find('td:eq(7)').attr('data-microtip-position', "left");
                                                                            $(row).find('td:eq(7)').attr('aria-label', data["notes"].toString());
                                                                            }
        </sec:authorize>
                                                                            if (data.flag === 'N' && (data.runstatus === "SIGNED" || data.runstatus === "DRAFTED" || data.runstatus === "HELP" || data.runstatus === "WAITING FOR APPROVAL" || data.runstatus === "APPROVED"))
                                                                            {
                                                                            $(row).attr('style', 'font-weight: bold; !important;');
                                                                            }

                                                                            if ($(row).find('td:eq(10)').find('a:eq(5)').attr('id') === 'recoverEb' || $(row).find('td:eq(10)').find('a:eq(4)').attr('id') === 'recoverEb' || $(row).find('td:eq(10)').find('a:eq(3)').attr('id') === 'recoverEb' || $(row).find('td:eq(10)').find('a:eq(2)').attr('id') === 'recoverEb' || $(row).find('td:eq(10)').find('a:eq(1)').attr('id') === 'recoverEb')
                                                                            {
                                                                            $(row).find('td').not(':eq(10)').attr('style', 'font-weight: bold; !important; text-decoration:line-through; color:red;');
                                                                            $(row).find('td').find('a').removeAttr('href');
                                                                            $(row).find('td').find('a').removeAttr('target');
                                                                            }
                                                                            }, footerCallback: function (tfoot, data, start, end, display) {
                                                                    $('#flading').hide();
                                                                    }
                                                                    });
                                                                    $('#pc-daterangepicker-6').daterangepicker({
                                                                    buttonClasses: 'btn',
                                                                            applyClass: 'btn-primary',
                                                                            cancelClass: 'btn-secondary',
                                                                            startDate: start,
                                                                            endDate: end,
                                                                            showDropdowns:true,
                                                                            minDate:moment().subtract(10, 'year'),
                                                                            maxDate:moment().add(2, 'year'),
                                                                            ranges: {
                                                                            'Today': [moment(), moment()],
                                                                                    'Yesterday': [moment().subtract(1, 'days'), moment().subtract(1, 'days')],
                                                                                    'Last 7 Days': [moment().subtract(6, 'days'), moment()],
                                                                                    'Last 30 Days': [moment().subtract(29, 'days'), moment()],
                                                                                    'This Month': [moment().startOf('month'), moment().endOf('month')],
                                                                                    'Last Month': [moment().subtract(1, 'month').startOf('month'), moment().subtract(1, 'month').endOf('month')],
                                                                                    'This Year': [moment().startOf('year'), moment().endOf('year')],
                                                                                    'Last Year': [moment().subtract(1, 'year').startOf('year'), moment().subtract(1, 'year').endOf('year')],
                                                                                    'All Days':  [moment().subtract(10, 'year').endOf('year'), moment().endOf('year')]
                                                                            }
                                                                    }, function (startVal, endVal, label) {
                                                                    $('#flading').show();
                                                                    $('#pc-daterangepicker-6 .form-control').val(startVal.format('MM/DD/YYYY') + ' / ' + endVal.format('MM/DD/YYYY'));
                                                                    start = startVal.format('YYYY-MM-DD');
                                                                    end = endVal.format('YYYY-MM-DD');
                                                                    localStorage.setItem("ebdate", startVal.format("MM/DD/YYYY") + ' / ' + endVal.format("MM/DD/YYYY"));
                                                                    table.ajax.url("ebilldata?startDate=" + start + "&endDate=" + end).load();
                                                                    });
                                                                    table.on('page.dt', function () {
                                                                    $('.dataTables_scrollBody').scrollTop(0);
                                                                    });
                                                                    table.on('length.dt', function () {
                                                                    $('.dataTables_scrollBody').scrollTop(0);
                                                                    });
                                                                    function exportOptionPDF() {
                                                                    $('#flading').show();
                                                                    var ebillDropdown = $('#ddlsearch');
                                                                    var ebillValue = ebillDropdown.val(); // Get the selected value from the dropdown
                                                                    var ebillText = ebillDropdown.find('option:selected').text(); // Get the selected option text
                                                                    var searchValueDt = table.search() || '';
                                                                    //  alert("Selected number-----" + ebillText);
                                                                    //  alert('Search input in exportOption: ' + searchValueDt);
                                                                    var ebill;
                                                                    if (ebillValue === '1' || ebillValue === '2') {
                                                                    ebill = 'CONCAT(last_name,\", \",first_name)';
                                                                    } else if (ebillValue === '3') {
                                                                    ebill = 'DATE_FORMAT(dob, \"%m/%d/%Y\")';
                                                                    } else if (ebillValue === '4') {
                                                                    ebill = 'esuperbill.dos';
                                                                    } else if (ebillValue === '5') {
                                                                    ebill = 'practice_master.practice_id';
                                                                    } else if (ebillValue === '6') {
                                                                    ebill = 'payor_master.payor_id';
                                                                    } else {
                                                                    ebill = ''; // Set a default value if no option is selected or if an invalid option is selected
                                                                    }
                                                                    var ids = [];
                                                                    var files = [];
                                                                    $('#eligibilitytable').find('tbody input[type=checkbox]:checked:not(:disabled)').each(function () {
                                                                    var file = $(this).closest("tr").find('td:eq(8)').find('a').attr('data-id');
                                                                    var id = $(this).closest("tr").find('td:eq(1)').text();
                                                                    ids.push(id);
                                                                    });
                                                                    var startDate = moment(start).format("YYYY-MM-DD");
                                                                    var endDate = moment(end).format("YYYY-MM-DD");
                                                                    var searchValue = $('#para_Firstname').val() || $('#para_Lastname').val() || $('#para_Dob').val() || $('#para_Dos').val() || $('#ddlSearchPractice').val() || $('#payorid').val();
                                                                    // alert("search value======" + searchValue);
                                                                    var paraVal = + $('#para_Firstname').val() || $('#para_Lastname').val() || $('#para_Dob').val() || $('#para_Dos').val() || $('#ddlSearchPractice').val() || $('#payorid').val();
                                                                    location.href = "exportEbillPdf?startDate=" + startDate + '&endDate=' + endDate + '&search=' + searchValue + '&para=' + ebill + '&paraVal=' + paraVal + '&dtSearch=' + searchValueDt + '&checkId=' + ids.join();
                                                                    MyNoFunction();
                                                                    $('#flading').hide();
                                                                    }
                                                                    function clearFields() {
                                                                    table.search('').columns().search('').draw();
                                                                    $('#para_Firstname').val('');
                                                                    $('#para_Lastname').val('');
                                                                    $('#para_Dob').val('');
                                                                    $('#ddlSearchPractice').val('').change();
                                                                    $('#para_Dos').val('');
                                                                    $('#para_Status').val('');
                                                                    $('#payorid').val('').change();
                                                                    }
                                                                    $('#showall').click(function () {
                                                                    //$('#flading').show();
                                                                    $('#flading').hide();
                                                                    searchOption = '0';
                                                                    table.search('').columns().search('').draw();
                                                                    $('#para_Firstname').hide();
                                                                    $('#para_Lastname').hide();
                                                                    $('#para_Dob').hide();
                                                                    $('#para_Dos').hide('');
                                                                    $('#para_Status').next(".select2-container").hide();
                                                                    $('#ddlSearchPractice').next(".select2-container").hide();
                                                                    $('#ddlSearchPractice').val('').change();
                                                                    $('#payorid').next(".select2-container").hide();
                                                                    $('#ddlsearch').val(0).change();
                                                                    table.ajax.url("ebilldata?startDate=" + start + "&endDate=" + end).load();
                                                                    });
                                                                    $('#search').click(function () {
                                                                    table.ajax.url("ebilldata?startDate=" + start + "&endDate=" + end).load();
                                                                    // $('#flading').show();
                                                                    table.search('').columns().search('').draw();
                                                                    searchOption = $('#ddlsearch').val();
                                                                    if (searchOption === '0')
                                                                    {
                                                                    msgbox("Select the Search option..!", "ESuperbill Portal", "error");
                                                                    $('#flading').hide();
                                                                    }
                                                                    else if (searchOption === '1')
                                                                    {
                                                                    var lenFirstName = $('#para_Firstname').val().length;
                                                                    if (lenFirstName !== 0)
                                                                    {
                                                                    var firstVal = $('#para_Firstname').val();
                                                                    clearFields();
                                                                    $('#para_Firstname').val(firstVal);
                                                                    //alert(lenFirstName);
                                                                    table.columns(3).search('').search($('#para_Firstname').val()).draw();
                                                                    }
                                                                    else
                                                                    {
                                                                    msgbox("Enter Patient First Name", "ESuperbill Portal", "error");
                                                                    $('#flading').hide();
                                                                    }
                                                                    } else if (searchOption === '2')
                                                                    {
                                                                    var lenLastName = $('#para_Lastname').val().length;
                                                                    if (lenLastName !== 0)
                                                                    {
                                                                    var lastVal = $('#para_Lastname').val();
                                                                    clearFields();
                                                                    $('#para_Lastname').val(lastVal);
                                                                    table.columns(3).search('').search($('#para_Lastname').val()).draw();
                                                                    //table.ajax.url("ebillsearchdata?para=last_name&paraVal=" + $('#para_Lastname').val()).load();
                                                                    }
                                                                    else
                                                                    {
                                                                    msgbox("Enter Patient Last Name", "ESuperbill Portal", "error");
                                                                    $('#flading').hide();
                                                                    }
                                                                    } else if (searchOption === '3')
                                                                    {
                                                                    var lenLastNameDob = $('#para_Dob').val().length;
                                                                    if (lenLastNameDob !== 0)
                                                                    {
                                                                    var dobVal = $('#para_Dob').val();
                                                                    clearFields();
                                                                    $('#para_Dob').val(dobVal);
                                                                    table.columns(4).search('').search($('#para_Dob').val()).draw();
                                                                    //table.ajax.url("ebillsearchdata?para=dob&paraVal=" + convertMDYtoYMD($('#para_Dob').val())).load();
                                                                    }
                                                                    else
                                                                    {
                                                                    msgbox("Enter Dob", "ESuperbill Portal", "error");
                                                                    $('#flading').hide();
                                                                    }
                                                                    } else if (searchOption === '4')
                                                                    {
                                                                    var lenDos = $('#para_Dos').val().length;
                                                                    if (lenDos !== 0)
                                                                    {
                                                                    var dosVal = $('#para_Dos').val();
                                                                    clearFields();
                                                                    $('#para_Dos').val(dosVal);
                                                                    table.columns(6).search('').search($('#para_Dos').val()).draw();
                                                                    // table.ajax.url("ebillsearchdata?para=dos&paraVal=" + convertYMDtoMDY($('#para_Dos').val())).load();
                                                                    }
                                                                    else
                                                                    {
                                                                    msgbox("Enter Dos", "ESuperbill Portal", "error");
                                                                    $('#flading').hide();
                                                                    }
                                                                    } else if (searchOption === '5')
                                                                    {
                                                                    var lenPractice = $('#ddlSearchPractice').val().length;
                                                                    if (lenPractice !== 0)
                                                                    {
                                                                    var pracvticeVal = $('#ddlSearchPractice').val();
                                                                    clearFields();
                                                                    $('#ddlSearchPractice').val(pracvticeVal).change();
                                                                    table.columns(2).search('').search($('#ddlSearchPractice').val()).draw();
                                                                    //table.ajax.url("ebillsearchdata?para=patient_master.practice_id&paraVal=" + $('#ddlSearchPractice').val()).load();
                                                                    }
                                                                    else
                                                                    {
                                                                    msgbox("Select Practice", "ESuperbill Portal", "error");
                                                                    $('#flading').hide();
                                                                    }
                                                                    } else if (searchOption === '6')
                                                                    {
                                                                    var lenPayor = $('#payorid').val().length;
                                                                    if (lenPayor !== 0)
                                                                    {
                                                                    var payorVal = $('#payorid').val();
                                                                    clearFields();
                                                                    $('#payorid').val(payorVal).change();
                                                                    table.columns(5).search('').search($('#payorid').val()).draw();
                                                                    //table.ajax.url("ebillsearchdata?para=payor_master.payor_id&paraVal=" + $('#payorid').val()).load();
                                                                    }
                                                                    else
                                                                    {
                                                                    msgbox("Select Insurance", "ESuperbill Portal", "error");
                                                                    $('#flading').hide();
                                                                    }
                                                                    } else if (searchOption === '7')
                                                                    {
                                                                    var lenStatus = $('#para_Status').val().length;
                                                                    if (lenStatus !== 0)
                                                                    {
                                                                    var statusVal = $('#para_Status').val();
                                                                    clearFields();
                                                                    $('#para_Status').val(statusVal).change();
                                                                    table.columns(9).search('').search($('#para_Status').val()).draw();
                                                                    //table.ajax.url("ebillsearchdata?para=payor_master.payor_id&paraVal=" + $('#payorid').val()).load();
                                                                    }
                                                                    else
                                                                    {
                                                                    msgbox("Select Status", "ESuperbill Portal", "error");
                                                                    $('#flading').hide();
                                                                    }
                                                                    }
                                                                    });
                                                                    $('#ddlpractice').change(function (event) {
                                                                    $('#flading').show();
                                                                    $('#ddlbenefittype').val('');
                                                                    var practiceid = $("select#ddlpractice").val();
                                                                    if (practiceid !== '')
                                                                    {

                                                                    $('#dob').val("");
                                                                    $('#ddlpatient').val("");
                                                                    $('#ddlgender').val("");
                                                                    $('#mid').val("");
                                                                    $('#pid').val("");
                                                                    //Proviver
                                                                    $.ajax({
                                                                    url: "getselectpayorlist",
                                                                            type: "get", //send it through get method
                                                                            data: {
                                                                            selectpayorlist: practiceid
                                                                            },
                                                                            success: function (response) {
                                                                            var select = $('#ddlinsurance');
                                                                            select.find('option').remove();
                                                                            $("<option value='0' selected>None</option>").appendTo(select);
                                                                            console.log(response);
                                                                            var txt = response;
                                                                            var obj = jQuery.parseJSON(txt);
                                                                            console.log(obj);
                                                                            if (obj.length > 0)
                                                                            {
                                                                            for (var i = 0; i < obj.length; i++)
                                                                            {
                                                                            // var sv = value.split('~');
                                                                            $('<option>').val(obj[i].payor_id).text(obj[i].name).appendTo(select);
                                                                            }
                                                                            }
                                                                            }
                                                                    });
                                                                    $.ajax({
                                                                    url: "getPatientwtPracticeid",
                                                                            type: "get", //send it through get method
                                                                            data: {
                                                                            practiceid1: practiceid
                                                                            },
                                                                            success: function (response) {
                                                                            var select = $('#ddlpatient');
                                                                            select.find('option').remove();
                                                                            $("<option value='' selected hidden>--Select--</option>").appendTo(select);
                                                                            console.log(response);
                                                                            var txt = response;
                                                                            var obj = jQuery.parseJSON(txt);
                                                                            console.log(obj);
                                                                            if (obj.length > 0)
                                                                            {
                                                                            for (var i = 0; i < obj.length; i++)
                                                                            {
                                                                            $('<option>').val(obj[i].ddlpatientid).text(obj[i].Patientname).appendTo(select);
                                                                            }
                                                                            }
                                                                            }
                                                                    });
                                                                    $.ajax({
                                                                    url: "providerdetailswtentityid",
                                                                            type: "get", //send it through get method
                                                                            data: {
                                                                            practiceid: practiceid
                                                                            },
                                                                            success: function (response) {
                                                                            var select = $('#ddlprovider');
                                                                            select.find('option').remove();
                                                                            $('<option>').val("").text("--Select--").appendTo(select);
                                                                            console.log(response);
                                                                            var txt = response;
                                                                            var obj = jQuery.parseJSON(txt);
                                                                            console.log(obj);
                                                                            if (obj.length > 0)
                                                                            {
                                                                            for (var i = 0; i < obj.length; i++)
                                                                            {
                                                                            // var sv = value.split('~');
                                                                            $('<option>').val(obj[i].provider_id).text(obj[i].first_name).appendTo(select);
                                                                            }
                                                                            }
                                                                            }
                                                                    });
                                                                    $('#flading').hide();
                                                                    } else
                                                                    {
                                                                    $('#flading').hide();
                                                                    $('.form-1').addClass('was-validated');
                                                                    $('a[href^="#next"]').hide();
                                                                    $('#design-1-form-t-1').removeAttr('disabled');
                                                                    return false;
                                                                    }
                                                                    });
                                                                    $('#ddlinsurance').change(function (event) {
                                                                    // alert('entered');
                                                                    });
                                                                    $('#ddlpatient').change(function (event) {
                                                                    var patientid = $("select#ddlpatient").val();
                                                                    $('#flading').show();
                                                                    if (patientid !== '0')
                                                                    {
                                                                    $('#dob').val("");
                                                                    $('#ddlgender').val("");
                                                                    $('#mid').val("");
                                                                    $.ajax({
                                                                    url: "getInsDetails",
                                                                            type: "get", //send it through get method
                                                                            data: {
                                                                            patientid: patientid
                                                                            },
                                                                            success: function (response) {
                                                                            console.log(response);
                                                                            var txt = response;
                                                                            var obj = jQuery.parseJSON(txt);
                                                                            console.log(obj);
                                                                            if (obj.length > 0)
                                                                            {
                                                                            for (var i = 0; i < obj.length; i++)
                                                                            {
                                                                            //     var sv = response.split('~');
                                                                            $('#cname').val(obj[i].name_on_insurance_card);
                                                                            if (obj[i].mname !== "null" && obj[i].mname !== "")
                                                                            {
                                                                            $('#mname').val(obj[i].mname);
                                                                            } else
                                                                            {
                                                                            $('#mname').val("");
                                                                            }
                                                                            $('#fname').val(obj[i].fname);
                                                                            $('#lname').val(obj[i].lname);
                                                                            $('#dob').val(convertYMDtoMDY(obj[i].dob));
                                                                            if (obj[i].gender_identity === "1") {
                                                                            $('#ddlgender').val("Male");
                                                                            } else if (obj[i].gender_identity === "2") {
                                                                            $('#ddlgender').val("Female");
                                                                            } else if (obj[i].gender_identity === "3") {
                                                                            $('#ddlgender').val("Other");
                                                                            }


                                                                            $('#ddlinsurance').val(obj[i].payor_id);
                                                                            $('#ddlinsurance').trigger('change');
                                                                            $('#mid').val(obj[i].ins_no);
                                                                            $('#pid').val(obj[i].plan);
                                                                            }
                                                                            } else
                                                                            {
                                                                            $('#cname').val("");
                                                                            $('#mname').val("");
                                                                            $('#fname').val("");
                                                                            $('#lname').val("");
                                                                            $('#dob').val("");
                                                                            $('#ddlgender').val("");
                                                                            $('#ddlinsurance').val("0");
                                                                            $('#mid').val("");
                                                                            $('#pid').val("");
                                                                            }
                                                                            }
                                                                    });
                                                                    $('#flading').hide();
                                                                    } else
                                                                    {
                                                                    $('#cname').val("");
                                                                    $('#mname').val("");
                                                                    $('#fname').val("");
                                                                    $('#lname').val("");
                                                                    $('#dob').val("");
                                                                    $('#ddlgender').val("");
                                                                    $('#ddlinsurance').val("0");
                                                                    $('#mid').val("");
                                                                    $('#pid').val("");
                                                                    $('#flading').hide();
                                                                    $('.form-1').addClass('was-validated');
                                                                    $('a[href^="#next"]').hide();
                                                                    $('#design-1-form-t-1').attr('disabled', "true");
                                                                    return false;
                                                                    }
                                                                    });
                                                                    $('#ddlprovider').change(function (event) {
                                                                    if ($('#ddlprovider').val() === '')
                                                                    {
                                                                    $('.form-1').addClass('was-validated');
                                                                    $('a[href^="#next"]').hide();
                                                                    $('#design-1-form-t-1').removeAttr("href");
                                                                    return false;
                                                                    } else
                                                                    {
                                                                    $('.form-1').addClass('was-validated');
                                                                    $('a[href^="#next"]').show();
                                                                    $('#design-1-form-t-1').attr("href", "#design-1-form-h-1");
                                                                    return false;
                                                                    }
                                                                    });
                                                                    $('input[type="checkbox"]').change(function () {
                                                                    var diagnosisdiv = $(this).attr("name");
                                                                    var headTag = "";
                                                                    var checkedcount = $('input[name="' + diagnosisdiv + '"]:checked').length;
                                                                    if (diagnosisdiv === "diagnoisis1") {
                                                                    headTag = "headingOne";
                                                                    } else if (diagnosisdiv === "diagnoisis2") {
                                                                    headTag = "headingTwo";
                                                                    } else if (diagnosisdiv === "diagnoisis3") {
                                                                    headTag = "headingFour1";
                                                                    } else if (diagnosisdiv === "diagnoisis4") {
                                                                    headTag = "headingThree";
                                                                    } else if (diagnosisdiv === "diagnoisis5") {
                                                                    headTag = "headingFive";
                                                                    } else if (diagnosisdiv === "diagnoisis6") {
                                                                    headTag = "heading6";
                                                                    } else if (diagnosisdiv === "diagnoisis7") {
                                                                    headTag = "heading7";
                                                                    } else if (diagnosisdiv === "diagnoisis8") {
                                                                    headTag = "heading8";
                                                                    } else if (diagnosisdiv === "diagnoisis9") {
                                                                    headTag = "heading9";
                                                                    } else if (diagnosisdiv === "diagnoisis10") {
                                                                    headTag = "heading10";
                                                                    } else if (diagnosisdiv === "diagnoisis11") {
                                                                    headTag = "heading11";
                                                                    } else if (diagnosisdiv === "diagnoisis12") {
                                                                    headTag = "heading12";
                                                                    } else if (diagnosisdiv === "diagnoisis13") {
                                                                    headTag = "heading13";
                                                                    } else if (diagnosisdiv === "diagnoisis14") {
                                                                    headTag = "heading14";
                                                                    } else if (diagnosisdiv === "diagnoisis15") {
                                                                    headTag = "heading15";
                                                                    } else if (diagnosisdiv === "diagnoisis16") {
                                                                    headTag = "heading16";
                                                                    } else if (diagnosisdiv === "diagnoisis17") {
                                                                    headTag = "heading17";
                                                                    } else if (diagnosisdiv === "diagnoisis18") {
                                                                    headTag = "heading18";
                                                                    } else if (diagnosisdiv === "diagnoisis19") {
                                                                    headTag = "heading19";
                                                                    } else if (diagnosisdiv === "diagnoisis20") {
                                                                    headTag = "heading20";
                                                                    }
                                                                    else {
                                                                    return;
                                                                    }
                                                                    if (headTag !== "") {
                                                                    updateStatus(headTag, checkedcount);
                                                                    }
                                                                    });
                                                                    //Ticket Code Start
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
                                                                    function MyNoFunction() {
                                                                    $(".overlay").click();
                                                                    // $("#lblTestResult").html("You are not hungry");
                                                                    $('#headercheck').prop('checked', false);
                                                                    $('#eligibilitytable tbody input[type=checkbox]').each(function () {
                                                                    $(this).prop('checked', false);
                                                                    if (checked > 0)
                                                                    {
                                                                    checked--;
                                                                    }
                                                                    });
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
                                                                    var LoginUsername = '<%= session.getAttribute("LoginUsername")%>';
                                                                    $('#raiseduser').text(LoginUsername);
                                                                    $(".overlay").click(function () {
                                                                    $(".q-view").removeClass("active");
                                                                    });
                                                                    var not_tid = GetParameterValues('tid');
                                                                    if (typeof (not_tid) !== 'undefined')
                                                                    {
                                                                    table.columns(1).search('').search(not_tid).draw();
                                                                    } else {
                                                                    table.columns(1).search('').search('').draw();
                                                                    }
                                                                    var total = 0;
                                                                    $('#eligibilitytable').on('click', 'tbody input[type="checkbox"]', function () {
                                                                    var table = $('#eligibilitytable').DataTable();
                                                                    total = table.column(3, {
                                                                    page: 'current'
                                                                    }).data().count();
                                                                    //alert(count);
                                                                    var isSelected = $(this).is(':checked');
                                                                    if (isSelected) {
                                                                    checked++;
                                                                    } else
                                                                    {
                                                                    checked--;
                                                                    if (checked > 0)
                                                                    {
                                                                    //     $('#raiseticket').show();
                                                                    } else
                                                                    {
                                                                    // $('#raiseticket').hide();
                                                                    }
                                                                    }
                                                                    // console.log(checked);
                                                                    if (checked === total)
                                                                    {
                                                                    $('#headercheck').prop('checked', true);
                                                                    if (checked > 1)
                                                                    {
                                                                    notflag = 'Y';
                                                                    }
                                                                    } else
                                                                    {
                                                                    $('#headercheck').prop('checked', false);
                                                                    if (checked > 1)
                                                                    {
                                                                    notflag = 'Y';
                                                                    } else
                                                                    {
                                                                    notflag = 'N';
                                                                    }
                                                                    }
                                                                    });
                                                                    $('#headercheck').change(function () {

                                                                    var table = $('#eligibilitytable').DataTable();
                                                                    total = table.column(3, {
                                                                    page: 'current'
                                                                    }).data().count();
                                                                    checked = 0;
                                                                    var isSelected = $(this).is(':checked');
                                                                    if (isSelected) {
                                                                    $('#eligibilitytable tbody input[type=checkbox]').each(function () {
                                                                    $(this).prop('checked', true);
                                                                    if (checked <= total)
                                                                    {
                                                                    checked++;
                                                                    }
                                                                    });
                                                                    if (checked > 1) {
                                                                    notflag = 'Y';
                                                                    }
                                                                    //   $('#raiseticket').show();
                                                                    } else {
                                                                    $('#eligibilitytable tbody input[type=checkbox]').each(function () {
                                                                    $(this).prop('checked', false);
                                                                    if (checked > 0) {
                                                                    checked--;
                                                                    }
                                                                    });
                                                                    notflag = 'N';
                                                                    }
                                                                    });
                                                                    $(document).on("click", "#eligibilitytable a.deleteEb", function () {
                                                                    if (confirm("Are you sure you want to delete this record?")) {
                                                                    let tr = $(this).closest('tr');
                                                                    let ebid = tr.find('td:eq(1)').text();
                                                                    $.ajax({
                                                                    url: "deleteEbill",
                                                                            type: "get", //send it through get method
                                                                            data: {
                                                                            eb_id: $.trim(ebid)
                                                                            },
                                                                            success: function (response) {
                                                                            if (response.length > 0)
                                                                            {
                                                                            console.log(response);
                                                                            msgbox("ESuperbill Deleted", "ESuperbill Portal", "success");
                                                                            table.search('').draw();
                                                                            }
                                                                            },
                                                                            error: function (err) {
                                                                            console.log(err);
                                                                            msgbox(err, "ESuperbill Portal", "error");
                                                                            }
                                                                    });
                                                                    }
                                                                    });
                                                                    $(document).on("click", "#eligibilitytable a.recoverEb", function () {
                                                                    let tr = $(this).closest('tr');
                                                                    let ebid = tr.find('td:eq(1)').text();
                                                                    $.ajax({
                                                                    url: "recoverEbill",
                                                                            type: "get", //send it through get method
                                                                            data: {
                                                                            eb_id: $.trim(ebid)
                                                                            },
                                                                            success: function (response) {
                                                                            if (response.length > 0) {
                                                                            console.log(response);
                                                                            msgbox("ESuperbill Recovered", "ESuperbill Portal", "success");
                                                                            table.search('').draw();
                                                                            }
                                                                            },
                                                                            error: function (err) {
                                                                            console.log(err);
                                                                            msgbox(err, "ESuperbill Portal", "error");
                                                                            }
                                                                    });
                                                                    });
                                                                    var brid = '';
                                                                    $('#raiseticket').click(function () {
                                                                    brid = '';
                                                                    var table = $('#eligibilitytable').DataTable();
                                                                    table.$('input[type="checkbox"]').each(function () {
                                                                    // If checkbox doesn't exist in DOM
                                                                    // If checkbox is checked
                                                                    if (this.checked) {
                                                                    // Create a hidden element
                                                                    //  alert(this);
                                                                    let tr = $(this).closest('tr');
                                                                    brid = tr.find('td:eq(1)').text() + ',' + brid;
                                                                    }
                                                                    });
                                                                    brid = brid.substring(0, brid.length - 1);
                                                                    console.log(brid);
                                                                    if (brid !== '')
                                                                    {
                                                                    if (notflag === 'Y')
                                                                    {
                                                                    ShowConfirmYesNo();
                                                                    } else
                                                                    {
                                                                    $(".q-view").addClass("active");
                                                                    }
                                                                    //  $('#btnclick').click(); -- Main

                                                                    //  $('#modal-1').modal('toggle');
                                                                    //  $('.md-overlay').css("visibility", "visible");
                                                                    $('#ticket_type_id').val("3");
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
                                                                            if (response.length > 0)
                                                                            {
                                                                            var txt = response;
                                                                            var obj = jQuery.parseJSON(txt);
                                                                            console.log(obj.length);
                                                                            if (obj.length > 0)
                                                                            {
                                                                            $(".note-editable").html(obj[0].auto_desc);
                                                                            $('#flading').hide();
                                                                            }
                                                                            } else
                                                                            {
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
                                                                            if (obj.length > 0)
                                                                            {
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
                                                                            } else
                                                                            {
                                                                            $('#flading').hide();
                                                                            }
                                                                            }
                                                                    });
                                                                    } else
                                                                    {
                                                                    msgbox("Select atleast one Superbill(s).", "Ticket Portal", "warning");
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
                                                                    $("form[name='ticket']").submit(function () {
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
                                                                    if ($("select#assigned_to").val() === "0")
                                                                    {
                                                                    ticketstatus = 1;
                                                                    tstatus = 'Created';
                                                                    } else
                                                                    {
                                                                    ticketstatus = 2;
                                                                    tstatus = 'Assigned';
                                                                    }
                                                                    var tsource = '';
                                                                    if (ticketsource === 1)
                                                                    {
                                                                    tsource = 'Practice';
                                                                    } else if (ticketsource === 2)
                                                                    {
                                                                    tsource = 'Entity';
                                                                    } else
                                                                    {
                                                                    tsource = 'Practice';
                                                                    }
                                                                    var tickettype = $("#ticket_type_id option:selected").text();
                                                                    var ticketpriority = $("#ticket_priority_id option:selected").text();
                                                                    var assignto = $("#assigned_to option:selected").text();
                                                                    $.ajax({
                                                                    url: "create_bulk_ticket",
                                                                            type: "get", //send it through get method
                                                                            data: {
                                                                            type_of_ticket: "3",
                                                                                    descriptions: $(".note-editable").html(),
                                                                                    ticket_status: ticketstatus,
                                                                                    assigned_to: $("select#assigned_to").val(),
                                                                                    attachmentfile: fns,
                                                                                    attachmentfilesize: sizetext,
                                                                                    ticket_source: ticketsource,
                                                                                    ticket_priority: $("select#ticket_priority_id").val(),
                                                                                    segment: "Q",
                                                                                    currentdt: today,
                                                                                    request_id: brid
                                                                            },
                                                                            success: function (response) {
                                                                            console.log(response);
                                                                            $("select#ticket_type_id").val('3');
                                                                            $("select#assigned_to").val('0');
                                                                            $(".note-editable").html('');
                                                                            //  swal("Record Saved", "", "success");
                                                                            msgbox("Ticket Saved", "Ticket Form", "success");
                                                                            //  window.location.reload();
                                                                            $('#flading').hide();
                                                                            $('#modal-1').modal('hide');
                                                                            // div.setAttribute("style", "visibility: hidden; ");
                                                                            // $('.md-overlay').setAttribute('style', 'visibility: hidden; opacity: 0 !important;');
                                                                            $('.md-overlay').css("visibility", "hidden");
                                                                            $(".overlay").click();
                                                                            // $('.md-overlay').attr('visibility', 'hidden')
                                                                            },
                                                                            error: function (err) {
                                                                            console.log(err);
                                                                            msgbox("Ticket Not Saved", "Ticket Form", "error");
                                                                            $('#flading').hide();
                                                                            $(".overlay").click();
                                                                            }
                                                                    });
                                                                    if ($("select#assigned_to").val() !== "0")
                                                                    {
                                                                    var strcontent = "Hi " + assignto + ", <br><br>" + "Type: " + tickettype + "<br>Source: " + tsource + "<br>Priority: " + ticketpriority + "<br> Assign To: " + assignto + "<br>Segment: SUPERBILL QUESTIONS [Q]" + "<br><br>" + $(".note-editable").html();
                                                                    // Email Config
                                                                    $.post('eMail', {
                                                                    recipient: entity_user_to,
                                                                            subject: 'Ticket Raised from E-Superbill Form: ' + tickettype + ' : ' + tstatus + ' to ' + assignto,
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
                                                                    if (user_id !== "0")
                                                                    {
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
                                                                            if (obj.length > 0)
                                                                            {
                                                                            $.each(obj, function (index, value) {
                                                                            entity_user_to = obj[index].username;
                                                                            entity_user_cc = obj[index].assigned_to;
                                                                            console.log(entity_user_to);
                                                                            console.log(entity_user_cc);
                                                                            $('#flading').hide();
                                                                            });
                                                                            } else
                                                                            {
                                                                            $('#flading').hide();
                                                                            }
                                                                            }
                                                                    });
                                                                    }
                                                                    });
                                                                    });
    </script>
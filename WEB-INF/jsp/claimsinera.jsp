<%-- 
    Document   : view_eligibility_request
    Created on : 07-Mar-2021, 1:55:15 pm
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%> 
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>



<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Claims in ERA</title>
         
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
                                                <div class="row" style="margin-bottom: -23px">
                                                    <div class="col-md-12 col-xl-4">
                                                        <div class="card card-social">
                                                            <div class="card-block brd-btm" style="height: 30px;">
                                                                <div class="row align-items-center justify-content-center card-active">
                                                                    <div class="col-3" style="padding: 4px 6px 0px;margin-left: -9px;">
                                                                        <h6 class="text-left" style="font-size: 11px;">CHK/EFT #</h6>
                                                                    </div>
                                                                    <div class="col-sm">
                                                                        <h6 class="text-center" style="font-size: 11px;" id="eft"></h6>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="card-block brd-btm" style="height: 30px">
                                                                <div class="row align-items-center justify-content-center card-active">
                                                                    <div class="col-3" style="padding: 0px 6px 0px;margin-left: -9px;">
                                                                        <h6 class="text-left" style="font-size: 11px;">Payor</h6>
                                                                    </div>
                                                                    <div class="col-sm">
                                                                        <h6 class="text-center  m-b-10" style="font-size: 11px;" id="payer"></h6>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="card-block brd-btm"  style="height: 30px">
                                                                <div class="row align-items-center justify-content-center card-active">
                                                                    <div class="col-3" style="padding: 6px 6px 0px;margin-left: -9px;">
                                                                        <h6 class="text-left" style="font-size: 11px;margin-top: -6px">Mode</h6>
                                                                    </div>
                                                                    <div class="col-sm">
                                                                        <h6 class="text-center  m-b-10" style="font-size: 11px;" id="mode"></h6>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-12 col-xl-4">
                                                        <div class="card card-social">
                                                            <div class="card-block brd-btm" style="height: 30px;">
                                                                <div class="row align-items-center justify-content-center card-active">
                                                                    <div class="col-sm" style="padding: 4px 6px 0px;margin-left: -9px;">
                                                                        <h6 class="text-left" style="font-size: 11px;">Filename</h6>
                                                                    </div>
                                                                    <div class="col-sm">
                                                                        <h6 class="text-center" style="font-size: 11px;" id="fn"></h6>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="card-block brd-btm" style="height: 30px">
                                                                <div class="row align-items-center justify-content-center card-active">
                                                                    <div class="col-sm" style="padding: 0px 6px 0px;margin-left: -9px;">
                                                                        <h6 class="text-left" style="font-size: 11px;">DOR</h6>
                                                                    </div>
                                                                    <div class="col-sm">
                                                                        <h6 class="text-center  m-b-10" style="font-size: 11px;" id="dor"></h6>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="card-block brd-btm"  style="height: 30px">
                                                                <div class="row align-items-center justify-content-center card-active">
                                                                    <div class="col-sm" style="padding: 6px 6px 0px;margin-left: -9px;">
                                                                        <h6 class="text-left" style="font-size: 11px;margin-top: -6px">ERA/Type</h6>
                                                                    </div>
                                                                    <div class="col-sm">
                                                                        <h6 class="text-center  m-b-10" style="font-size: 11px;" id="type"></h6>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-12 col-xl-4">
                                                        <div class="card card-social">
                                                            <div class="card-block brd-btm" style="height: 30px;">
                                                                <div class="row align-items-center justify-content-center card-active">
                                                                    <div class="col-3" style="padding: 4px 6px 0px;margin-left: -9px;">
                                                                        <h6 class="text-left" style="font-size: 11px;">Practice</h6>
                                                                    </div>
                                                                    <div class="col-sm">
                                                                        <h6 class="text-center" style="font-size: 11px;" id="payee"></h6>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="card-block brd-btm" style="height: 30px">
                                                                <div class="row align-items-center justify-content-center card-active">
                                                                    <div class="col-3" style="padding: 0px 6px 0px;margin-left: -9px;">
                                                                        <h6 class="text-left" style="font-size: 11px;">Amount</h6>
                                                                    </div>
                                                                    <div class="col-sm">
                                                                        <h6 class="text-center  m-b-10" style="font-size: 11px;" id="amount"></h6>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="card-block brd-btm"  style="height: 30px">
                                                                <div class="row align-items-center justify-content-center card-active">
                                                                    <div class="col-3" style="padding: 6px 6px 0px;margin-left: -9px;">
                                                                        <h6 class="text-left" style="font-size: 11px;margin-top: -6px">C/D</h6>
                                                                    </div>
                                                                    <div class="col-sm">
                                                                        <h6 class="text-center  m-b-10" style="font-size: 11px;" id="cd"></h6>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>

                                                <hr class="hrtopbtm">
                                                <div class="dt-responsive table-responsive">



                                                    <!--                                                    <table class="table table-striped table-bordered nowrap">
                                                                                                            <thead>
                                                                                                                <tr>
                                                                                                                    <th rowspan="1" colspan="5" style="background: antiquewhite !important; color: black !important;">CHK/EFT # : <a id="eft" />  </th>
                                                                                                                    <th rowspan="1" colspan="5" style="background: antiquewhite !important; color: black !important;">Filename : <span id="fn" /></th>
                                                                                                                    <th rowspan="1" colspan="5" style="background: antiquewhite !important; color: black !important;">Practice : <span id="payee" /></th>
                                                                                                                </tr>
                                                                                                                <tr style="background: antiquewhite !important;">  
                                                                                                                    <th rowspan="1" colspan="5" style="background: antiquewhite !important; color: black !important;">Payor : <span id="payer" /></th>
                                                                                                                    <th rowspan="1" colspan="5" style="background: antiquewhite !important; color: black !important;">DOR :  <span id="dor" /></th>
                                                                                                                    <th rowspan="1" colspan="5" style="background: antiquewhite !important; color: black !important;">Amount : <span id="amount" /></th>
                                                                                                                </tr>
                                                                                                                <tr style="background: antiquewhite !important;">  
                                                                                                                    <th rowspan="1" colspan="5" style="background: antiquewhite !important; color: black !important;">Mode : <span id="mode" /></th>
                                                                                                                    <th rowspan="1" colspan="5" style="background: antiquewhite !important; color: black !important;">ERA/Type : <span id="type" /></th> 
                                                                                                                    <th rowspan="1" colspan="5" style="background: antiquewhite !important; color: black !important;">C/D : <span id="cd" /></th>
                                                                                                                </tr>
                                                                                                                <tr>
                                                                                                            </thead></table>
                                                                                                        <br><br>-->
                                                    <div class="tableFixHead1 tablehide">
                                                        <table id="simpletable" width="98%" class="table table-striped table-bordered nowrap">
                                                            <thead>

                                                                <tr>
                                                                    <th style="position: sticky; top: 0; z-index: 1;"><input id="headercheck" type="checkbox"></th>
                                                                    <th style="position: sticky; top: 0; z-index: 1;">File #</th>
                                                                    <th style="position: sticky; top: 0; z-index: 1;">Claim #</th>
                                                                    <th style="position: sticky; top: 0; z-index: 1;">Payor ICN</th>
                                                                    <th style="position: sticky; top: 0; z-index: 1;">Status </th>
                                                                    <th style="position: sticky; top: 0; z-index: 1;">Payor</th>
                                                                    <th style="position: sticky; top: 0; z-index: 1;">Practice</th>
                                                                    <th style="position: sticky; top: 0; z-index: 1;">Charge</th>
                                                                    <th style="position: sticky; top: 0; z-index: 1;">Paid</th>
                                                                    <th style="position: sticky; top: 0; z-index: 1;">PR</th>
                                                                    <th style="position: sticky; top: 0; z-index: 1;" data-toggle="tooltip" data-placement="top" title="Claim Received Date" data-original-title="Claim Received Date">CR Date</th>
                                                                    <th style="position: sticky; top: 0; z-index: 1;">CFI</th>
                                                                    <th style="position: sticky; top: 0; z-index: 1;">Patient</th>
                                                                    <th style="position: sticky; top: 0; z-index: 1;">Covered</th>
                                                                    <th style="position: sticky; top: 0; z-index: 1;">SUBSCRIBER ID</th>
                                                                    <th style="position: sticky; top: 0; z-index: 1;">SUBSCRIBER Name</th>
                                                                    <th style="position: sticky; top: 0; z-index: 1;">PROVIDER NPI</th>
                                                                    <th style="position: sticky; top: 0; z-index: 1;">PROVIDER Name</th>
                                                                    <th style="position: sticky; top: 0; z-index: 1;">Tid</th>
                                                                    <th style="position: sticky; top: 0; z-index: 1;">Payor</th>
                                                                    <th style="position: sticky; top: 0; z-index: 1;">Practice</th>
                                                                    <th style="position: sticky; top: 0; z-index: 1;">CFI</th>
                                                                </tr>
                                                            </thead>
                                                            <tbody>

                                                            <c:forEach var="Claim" items="${claimlistera}">
                                                                <tr>
                                                                    <c:if test = "${Claim.flag !='Y'}" >
                                                                        <td style="background:red;"><input type="checkbox" class = "check"></td>
                                                                        </c:if> 
                                                                        <c:if test = "${Claim.flag !='N'}" >
                                                                        <td style="background:green;"><input type="checkbox" class = "check"></td>
                                                                        </c:if>     

                                                                    <td> ${Claim.fn}</td>
                                                                    <td><a class="vu-idbole" target='_blank' href= 'patientwise?rid=${Claim.claimno}&icn=${Claim.payericn}&pr=${Claim.patientres}&payer=${Claim.payer}&file=${Claim.fn}&payee=${Claim.payee}~${Claim.lname}, ${Claim.fname}~${Claim.fn}~${Claim.chargeamt}~${Claim.paidamt}~${Claim.insid}~${Claim.inslname}, ${Claim.insfname}~${Claim.rendproid}~${Claim.rendprolname}, ${Claim.rendprofname}'>${Claim.claimno}</a></td>
                                                                    <td>${Claim.payericn}</td>
                                                                    <td data-toggle="tooltip" data-placement="top" title="" data-original-title="${Claim.desc}">
                                                                        <a target='_blank' href= 'adjustmentwise?eft=${Claim.eft}'>${Claim.status}</a>
                                                                    </td>
                                                                    <td data-toggle="tooltip" data-placement="top" title="" data-original-title="${Claim.payer}">${Claim.spayer}</td>
                                                                    <td data-toggle="tooltip" data-placement="top" title="" data-original-title="${Claim.payee}">${Claim.spayee}</td>
                                                                    <td>${Claim.chargeamt}</td>
                                                                    <td>${Claim.paidamt}</td>
                                                                    <td>${Claim.patientres}</td>
                                                                    <td data-toggle="tooltip" title="" data-original-title="Claim Received Date">${Claim.recdate}</td>
                                                                    <td data-toggle="tooltip" data-placement="top" title="" data-original-title="${Claim.cfi}">${Claim.scfi}</td>
                                                                    <td>${Claim.lname}, ${Claim.fname}</td>
                                                                    <td>${Claim.coveramt}</td>
                                                                    <td>${Claim.insid}</td>
                                                                    <td>${Claim.inslname}, ${Claim.insfname}</td>
                                                                    <td>${Claim.rendproid}</td>
                                                                    <td>${Claim.rendprolname}, ${Claim.rendprofname}</td>
                                                                    <td>${Claim.tid}</td>
                                                                    <td>${Claim.payer}</td>
                                                                    <td>${Claim.payee}</td>
                                                                    <td>${Claim.cfi}</td>
                                                                </tr>
                                                            </c:forEach>

                                                        </tbody>

                                                        <tfoot style="background: antiquewhite;">
                                                            <tr>
                                                                <th rowspan="1" colspan="15"></th>
                                                            </tr>

                                                        </tfoot>

                                                    </table>





                                                </div>
                                            </div>


                                            <div class="row">
                                                <div class="col-sm-12">
                                                    <div class="card select-card">
                                                        <div class="card-body" id="privilegeContainer">
                                                            <div style="padding:5px;text-align: center;"><strong>******************Remittance Notice(s) from Insurance Company *****************</strong>
                                                            </div>
                                                            <div style="padding:5px;text-align: center"><strong>
                                                                    The following information was sent from the insurance company. If you have a  question or concern please contact the insurance company directly.</strong>
                                                            </div>

                                                            <div style="padding:5px;text-align: center"><strong>
                                                                    ***********************************************************************************</strong></div>

                                                        </div>
                                                    </div>
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
                                                <option value = "${ticket.tid}" >${ticket.ticket_type}</option>
                                            </c:forEach>
                                        </select>
                                    </div>

                                    <div class="col-lg-6">
                                        <label class="form-label" for="ticket_priority_id">Priority <span class="text-danger">*</span></label>
                                        <select class="form-control" required id="ticket_priority_id" name ="ticket_priority_id">
                                            <c:forEach var="ticket" items="${ticketprioritylist}">
                                                <option value = "${ticket.tid}">${ticket.ticket_priority}</option>
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
                                                <option value = "${ticket.user_id}">${ticket.username}</option>
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

            var mindate = -999999;
            var maxdate = 999999;
            $.fn.dataTable.ext.search.push(
                    function (settings, data, dataIndex) {

                        var min = mindate;
                        var max = maxdate;
                        var date = parseFloat(data[8]) || 0;

                        if (
                                (min === null && max === null) ||
                                (min === null && date <= max) ||
                                (min <= date && max === null) ||
                                (min <= date && date <= max)
                                ) {
                            return true;

                        }
                        return false;
                    }
            );


            $(document).ready(function () {
                $(".tableFixHead1").removeClass("tablehide");
                $(".tableFixHead1").addClass("tableshow");
                var checked = 0;
                var notflag = 'N';
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
                    $('#simpletable tbody input[type=checkbox]').each(function () {
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
                if (now.getDate() < 10)
                {
                    day = '0' + now.getDate();
                } else
                {
                    day = now.getDate();
                }
                if ((now.getMonth() + 1) < 10)
                {
                    month = '0' + parseInt(now.getMonth() + 1);
                } else
                {
                    month = parseInt(now.getMonth() + 1);
                }
                if ((now.getHours()) < 10)
                {
                    hr = '0' + parseInt(now.getHours());
                } else
                {
                    hr = parseInt(now.getHours());
                }
                if (now.getMinutes() < 10)
                {
                    min = '0' + parseInt(now.getMinutes());

                } else
                {
                    min = parseInt(now.getMinutes());

                }
                if (now.getSeconds() < 10)
                {
                    sec = '0' + parseInt(now.getSeconds());

                } else
                {
                    sec = parseInt(now.getSeconds());

                }
                var today = now.getFullYear() + '-' + (month) + '-' + day + "T" + hr + ":" + min + ":" + sec;
                var today1 = (month) + '/' + day + '/' + now.getFullYear() + " " + hr + ":" + min + ":" + sec;

                $('#currentdate').text(today1);
                var LoginUsername = '<%= session.getAttribute("LoginUsername")%>';
                $('#raiseduser').text(LoginUsername);

                $(".hd-body").click(function () {

                });

                $(".overlay").click(function () {
                    $(".q-view").removeClass("active");
                });



              


                $('#flading').show();
                var totalamount = 0;

                //   $('#card1').hide();
                //   $('#card2').hide();
                //   $('#card3').hide();


                var eft = GetParameterValues('rid');
                var payerval = GetParameterValues('payer');
                //  console.log(payerval);
                var paypat = GetParameterValues('payee');
                //   console.log(paypat);
                var fn = '';
                var dor = '';
                var amount = 0;
                var mode = '';
                var type = '';
                var cd = '';


                if (typeof (payerval) !== "undefined")
                {
                    $('#payer').text(decodeURI(payerval));
                    //   console.log(decodeURI(payerval));
                    //  $('#card1').show();
                } else
                {
                    // $('#card1').hide();
                }



                if (typeof (paypat) !== "undefined")
                {
                    var res = paypat.split("~");
                    var payeeval = res[0];
                    dor = res[1].replace('#!', '');
                    amount = res[2].replace('#!', '');
                    fn = res[3].replace('#!', '');
                    mode = res[4].replace('#!', '');
                    type = res[5].replace('#!', '');
                    cd = res[6].replace('#!', '');

                    totalamount = amount;
                    $('#payee').text(decodeURI(payeeval));
                    $('#eft').text(decodeURI(eft));
                    $('#eft').attr("href", "eobwise?eft=" + decodeURI(eft));
                    $('#dor').text(decodeURI(dor));
                    $('#amount').text(decodeURI(amount));
                    $('#fn').text(decodeURI(fn));
                    $('#mode').text(decodeURI(mode));
                    $('#type').text(decodeURI(type));
                    $('#cd').text(decodeURI(cd));
                    // $('#card2').show();
                    //  $('#card3').show();
                } else
                {
                    // $('#card2').hide();
                    // $('#card3').hide();
                }

                $('#simpletable').dataTable({
                    "aaSorting": [[1, "desc"]], // Sort by first column descending
                    "oLanguage": {
                        "sEmptyTable": "No Data..."
                    },
                    "pageLength": 100,
                    dom: 'fBrtipl',
                    buttons: [
                        {
                            text: '<img src="assets/images/backbtnicon_blue.png">',
                            className: 'dt-pdf-btn',
                            titleAttr: 'Download list in excel Format',
                            action: function (e, dt, node, config) {
                                goBack();
                            }
                        },
                        {
                            extend: 'csv',
                            text: '<img src="assets/images/excelicon.png">',
                            className: 'dt-pdf-btn',
                            titleAttr: 'Download list in Excel Format',
                            exportOptions: {
                                columns: [1, 2, 3, 19, 20, 7, 8, 9, 18, 11, 12, 13, 14, 15, 16, 17]
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
                            messageBottom: '\r\n \r\n \r\n \r\n \r\n \r\n \r\n \r\n ******************Remittance Notice(s) from Insurance Company *****************' +
                                    '\r\n The following information was sent from the insurance company. If you have a  question or concern please contact the insurance company directly.' +
                                    '\r\n **********************************************************************',
                            customize: function (doc) {
                                /* here I am aligning text in a column to the right */
                                doc.styles.message.alignment = "center";
                            },
                            exportOptions: {
                                columns: [1, 2, 3, 19, 20, 7, 8, 9, 18, 11, 12, 13, 14, 15, 16, 17]
                            }
                        }
                    ]
                });


                var not_claimid = GetParameterValues('claimid');
                if (typeof (not_claimid) !== 'undefined')
                {
                    var table = $('#simpletable').DataTable();
                    table.column(18).search(not_claimid).draw();
                    // table.search(not_brid).draw();
                }

                var para = GetParameterValues('para');

                if (typeof (para) !== 'undefined')
                {

                    var table = $('#simpletable').DataTable();
                    if (para === '1')
                    {

                    }
                    if (para === '2')
                    {
                        mindate = 1;
                        maxdate = 999999;
                        table.draw();
                    }
                    if (para === '3')
                    {
                        mindate = 0;
                        maxdate = 0;
                        table.draw();
                    }
                    if (para === '4')
                    {
                        console.log(para);
                        table.column(4).search('Reversal').draw();
                    }

                }


                console.log(eft);

                if (typeof (eft) !== "undefined")
                {

                    $('#simpletable').find('thead').find('tr').each(function () {
                        $(this).find('th:eq(13)').hide();
                        $(this).find('th:eq(14)').hide();
                        $(this).find('th:eq(15)').hide();
                        $(this).find('th:eq(16)').hide();
                        $(this).find('th:eq(17)').hide();
                        $(this).find('th:eq(18)').hide();
                        $(this).find('th:eq(1)').hide();
                        $(this).find('th:eq(5)').hide();
                        $(this).find('th:eq(6)').hide();
                        $(this).find('th:eq(19)').hide();
                        $(this).find('th:eq(20)').hide();
                        $(this).find('th:eq(21)').hide();

                    });

                    $('#simpletable').find('tbody').find('tr').each(function () {
                        $(this).find('td:eq(13)').hide();
                        $(this).find('td:eq(14)').hide();
                        $(this).find('td:eq(15)').hide();
                        $(this).find('td:eq(16)').hide();
                        $(this).find('td:eq(17)').hide();
                        $(this).find('td:eq(18)').hide();
                        $(this).find('td:eq(1)').hide();
                        $(this).find('td:eq(5)').hide();
                        $(this).find('td:eq(6)').hide();
                        $(this).find('td:eq(19)').hide();
                        $(this).find('td:eq(20)').hide();
                        $(this).find('td:eq(21)').hide();

                        var checkrev = $(this).find('td:eq(4)').text();
                        //  alert(checkrev);    
                        if (checkrev.trim() !== "Reversal" && checkrev.trim() !== "")
                        {
                            var htmlrev = $(this).find('td:eq(4)').html();
                            htmlrev = htmlrev.replace(/<\/?[^>]+(>|$)/g, "").replaceAll("&gt;", ">");
                            $(this).find('td:eq(4)').text(htmlrev.trim());
                        }

                    });


                    $('#simpletable').on('page.dt', function () {

                        $('#simpletable').find('tbody').find('tr').each(function () {
                            //  $(this).find('td:eq(0)').hide();
                            // $(this).find('td:eq(1)').hide();
                        });
                    });

                    $('#simpletable').on('search.dt', function () {

                        $('#simpletable').find('tbody').find('tr').each(function () {
                            //  $(this).find('td:eq(0)').hide();
                            // $(this).find('td:eq(1)').hide();
                        });

                    });

                    $('#simpletable').find('thead').find('tr').each(function () {

                        //  $(this).find('th:eq(0)').hide();
                        //  $(this).find('th:eq(1)').hide();
                    });
                    var tp = 0.00;
                    $('#simpletable').find('tbody').find('tr').each(function () {
                        //  $(this).find('td:eq(0)').hide();
                        //  $(this).find('td:eq(1)').hide();
                        console.log($(this).find('td:eq(9)').text());
                        tp = tp + parseFloat($(this).find('td:eq(9)').text());

                    });


                    $('#simpletable').find('tfoot').find('tr').each(function () {
                        var tc = parseFloat(totalamount) + parseFloat(tp.toFixed(2));
                        $(this).find('th:eq(0)').text("Ins Paid: " + totalamount + " |  PR: " + tp.toFixed(2) + " | Total Covered: " + tc.toFixed(2));

                    });


                    setTimeout(function ()
                    {

                        $('#flading').hide();
                    }, 5000);

                }


                var total = 0;

                $('#simpletable tbody').on('change', 'input[type="checkbox"]', function () {

                    var table = $('#simpletable').DataTable();

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
                        console.log(checked);
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

                    var table = $('#simpletable').DataTable();

                    total = table.column(3, {
                        page: 'current'
                    }).data().count();

                    checked = 0;

                    var isSelected = $(this).is(':checked');

                    if (isSelected) {
                        $('#simpletable tbody input[type=checkbox]').each(function () {
                            $(this).prop('checked', true);
                            if (checked <= total)
                            {
                                checked++;
                            }
                        });
                        if (checked > 1)
                        {

                            notflag = 'Y';
                        }
                        //   $('#raiseticket').show();
                    } else
                    {
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
                    //alert('muthu');


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

                            //  alert(this);
                            let tr = $(this).closest('tr');
                            brid = tr.find('td:eq(18)').text() + ',' + brid;

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
                                    //  window.location = "uploadeobdoc"
                                    //   location.reload();

                                    $('#attachment_id').val('');
                                    // $('#ddlpractice').val("");


                                    $(".progress1").css("display", "block");
                                    progressbar.width('0%');
                                    progressbar.text('0%');
                                    $('#flading').hide();
                                    //    $('#btnsubmit').removeAttr('disabled');
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
                            type_of_ticket: "1",
                            descriptions: $(".note-editable").html(),
                            ticket_status: ticketstatus,
                            assigned_to: $("select#assigned_to").val(),
                            attachmentfile: fns,
                            attachmentfilesize: sizetext,
                            ticket_source: ticketsource,
                            ticket_priority: $("select#ticket_priority_id").val(),
                            segment: "E",
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
                            //  window.location.reload();
                            $('#flading').hide();
                            $(".overlay").click();
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
                        var strcontent = "Hi " + assignto + ", <br><br>" + "Type: " + tickettype + "<br>Source: " + tsource + "<br>Priority: " + ticketpriority + "<br> Assign To: " + assignto + "<br>Segment: Claims in ERA [E]" + "<br><br>" + $(".note-editable").html();
                        // Email Config
                        $.post('eMail', {
                            recipient: entity_user_to,
                            subject: 'Ticket Raised from [Claims in ERA] Form: ' + tickettype + ' : ' + tstatus + ' to ' + assignto,
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
            function goBack() {
                window.history.back();
            }
    </script>     
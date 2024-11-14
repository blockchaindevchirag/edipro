<%-- 
    Document   : view_eligibility_request
    Created on : 07-Mar-2021, 1:55:15 pm
    Author     : Dell
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%> 
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Claim Detailed View</title>

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
                                                    <div class="col-md-12 col-xl-3">
                                                        <div class="card card-social">
                                                            <div class="card-block brd-btm" style="height: 33px;">
                                                                <div class="row align-items-center justify-content-center card-active">
                                                                    <div class="col-sm" style="padding: 0px 5px 0px;margin-left: -9px;">
                                                                        <h6 class="text-left" style="font-size: 11px;">PATIENT NAME</h6>
                                                                    </div>
                                                                    <div class="col-sm">
                                                                        <h6 class="text-center" style="font-size: 11px;" id="pat"></h6>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="card-block brd-btm" style="height: 33px">
                                                                <div class="row align-items-center justify-content-center card-active">
                                                                    <div class="col-sm" style="padding: 0px 6px 0px;margin-left: -9px;">
                                                                        <h6 class="text-left" style="font-size: 11px;">SUBSCRIBER ID</h6>
                                                                    </div>
                                                                    <div class="col-sm">
                                                                        <h6 class="text-center  m-b-10" style="font-size: 11px;" id="subid"></h6>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="card-block brd-btm"  style="height: 33px">
                                                                <div class="row align-items-center justify-content-center card-active">
                                                                    <div class="col-sm" style="padding: 6px 6px 0px;margin-left: -9px;">
                                                                        <h6 class="text-left" style="font-size: 11px;margin-top: -9px">SUBSCRIBER NAME</h6>
                                                                    </div>
                                                                    <div class="col-sm">
                                                                        <h6 class="text-center  m-b-10" style="font-size: 11px;" id="subname"></h6>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-12 col-xl-5">
                                                        <div class="card card-social">
                                                            <div class="card-block brd-btm" style="height: 33px;">
                                                                <div class="row align-items-center justify-content-center card-active">
                                                                    <div class="col-sm-3" style="padding: 4px 6px 0px;margin-left: -9px;">
                                                                        <h6 class="text-left" style="font-size: 11px;">PRACTICE</h6>
                                                                    </div>
                                                                    <div class="col-sm">
                                                                        <h6 class="text-center" style="font-size: 11px;" id="payee"></h6>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="card-block brd-btm" style="height: 33px">
                                                                <div class="row align-items-center justify-content-center card-active">
                                                                    <div class="col-sm-3" style="padding: 0px 6px 0px;margin-left: -9px;">
                                                                        <h6 class="text-left" style="font-size: 11px;">REN PRO NPI</h6>
                                                                    </div>
                                                                    <div class="col-sm">
                                                                        <h6 class="text-center  m-b-10" style="font-size: 11px;" id="proid"></h6>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="card-block brd-btm"  style="height: 33px">
                                                                <div class="row align-items-center justify-content-center card-active">
                                                                    <div class="col-sm-3" style="padding: 6px 6px 0px;margin-left: -9px;">
                                                                        <h6 class="text-left" style="font-size: 11px;margin-top: -6px">REN PRO NAME</h6>
                                                                    </div>
                                                                    <div class="col-sm">
                                                                        <h6 class="text-center  m-b-10" style="font-size: 11px;" id="proname"></h6>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-12 col-xl-4">
                                                        <div class="card card-social">
                                                            <div class="card-block brd-btm" style="height: 33px;">
                                                                <div class="row align-items-center justify-content-center card-active">
                                                                    <div class="col-3" style="padding: 4px 6px 0px;margin-left: -9px;">
                                                                        <h6 class="text-left" style="font-size: 11px;">PAYOR</h6>
                                                                    </div>
                                                                    <div class="col-sm">
                                                                        <h6 class="text-center" style="font-size: 11px;" id="payer"></h6>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="card-block brd-btm" style="height: 33px">
                                                                <div class="row align-items-center justify-content-center card-active">
                                                                    <div class="col-3" style="padding: 0px 6px 0px;margin-left: -9px;">
                                                                        <h6 class="text-left" style="font-size: 11px;">CLAIM #</h6>
                                                                    </div>
                                                                    <div class="col-sm">
                                                                        <h6 class="text-center  m-b-10" style="font-size: 11px;" id="claimno"></h6>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="card-block brd-btm"  style="height: 33px">
                                                                <div class="row align-items-center justify-content-center card-active">
                                                                    <div class="col-3" style="padding: 6px 6px 0px;margin-left: -9px;">
                                                                        <h6 class="text-left" style="font-size: 11px;margin-top: -6px">FILE #</h6>
                                                                    </div>
                                                                    <div class="col-sm">
                                                                        <h6 class="text-center  m-b-10" style="font-size: 11px;" id="fileno"></h6>
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
                                                                                                                    <th rowspan="1" colspan="5" style="background: antiquewhite !important; color: black !important;">Patient Name : <span id="pat" /></th>
                                                                                                                    <th rowspan="1" colspan="5" style="background: antiquewhite !important; color: black !important;">Practice : <span id="payee" /></th>
                                                                                                                    <th rowspan="1" colspan="5" style="background: antiquewhite !important; color: black !important;">Payor : <span id="payer" /></th>
                                                                                                                </tr>
                                                                                                                <tr style="background: antiquewhite !important;">  
                                                                                                                    <th rowspan="1" colspan="5" style="background: antiquewhite !important; color: black !important;">Subscriber ID : <span id="subid" /></th>
                                                                                                                    <th rowspan="1" colspan="5" style="background: antiquewhite !important; color: black !important;">Ren Pro NPI :  <span id="proid" /></th>
                                                                                                                    <th rowspan="1" colspan="5" style="background: antiquewhite !important; color: black !important;">Claim # : <a id="claimno" /> </th>
                                                                                                                </tr>
                                                                                                                <tr style="background: antiquewhite !important;">  
                                                                                                                    <th rowspan="1" colspan="5" style="background: antiquewhite !important; color: black !important;">Subscriber name : <span id="subname" /></th>
                                                                                                                    <th rowspan="1" colspan="5" style="background: antiquewhite !important; color: black !important;">Ren Pro Name : <span id="proname" /></th> 
                                                                                                                    <th rowspan="1" colspan="5" style="background: antiquewhite !important; color: black !important;">File # : <span id="fileno" /></th>
                                                                                                                </tr>
                                                                                                                <tr>
                                                                                                            </thead></table>
                                                                                                        <br><br>-->
                                                    <div class="tableFixHead1 tablehide">
                                                        <table id="simpletable" class="table table-striped table-bordered nowrap">
                                                            <thead>

                                                                <tr>
                                                                    <th style="position: sticky; top: 0; z-index: 1;"><input id="headercheck" type="checkbox"></th>
                                                                    <th>File#</th>
                                                                    <th>Claim #</th>
                                                                    <th style="position: sticky; top: 0; z-index: 1;">Line Item No</th>
                                                                    <th style="position: sticky; top: 0; z-index: 1;">DOS</th>
                                                                    <th style="position: sticky; top: 0; z-index: 1;">Desc</th>
                                                                    <th style="position: sticky; top: 0; z-index: 1;">Unit</th>
                                                                    <th style="position: sticky; top: 0; z-index: 1;">Charge</th>
                                                                    <th style="position: sticky; top: 0; z-index: 1;">Paid</th>
                                                                    <th style="position: sticky; top: 0; z-index: 1;">Adj</th>
                                                                    <th style="position: sticky; top: 0; z-index: 1;">Reason</th>
                                                                    <th style="position: sticky; top: 0; z-index: 1;">Adj Amt</th>

                                                                    <!--  <th>Amt Qua</th> -->
                                                                    <th style="position: sticky; top: 0; z-index: 1;">Covered</th>
                                                                    <!--  <th>AMT C/D</th> -->

                                                                    <th style="position: sticky; top: 0; z-index: 1;">Remark</th>
                                                                    <th>tid</th>

                                                                    <th style="position: sticky; top: 0; z-index: 1;">Desc</th>
                                                                    <th style="position: sticky; top: 0; z-index: 1;">Reason</th>
                                                                    <th style="position: sticky; top: 0; z-index: 1;">Remark</th>
                                                                    <th style="position: sticky; top: 0; z-index: 1;">Adj</th>

                                                                </tr>
                                                            </thead>
                                                            <tbody>

                                                            <c:forEach var="eobpatient" items="${patientwiselist}">
                                                                <tr>
                                                                    <td><input type="checkbox" class = "check"></td>
                                                                    <td>${eobpatient.fn}</td>
                                                                    <td>${eobpatient.claimno}</td>
                                                                    <td>${eobpatient.line_item_no}</td>
                                                                    <td>${eobpatient.dos}</td>
                                                                    <td data-toggle="tooltip" data-placement="left" title="" data-original-title="${eobpatient.descr}">${eobpatient.code_mode} | ${eobpatient.sdescr}</td>
                                                                    <td>${eobpatient.unit_serv_paid}</td>
                                                                    <td>${eobpatient.line_charge}</td>
                                                                    <td>${eobpatient.paid}</td>
                                                                    <td data-toggle="tooltip" data-placement="left" title="" data-original-title="${eobpatient.typesegment}">${eobpatient.type_of_adjustment}</td>
                                                                    <td data-toggle="tooltip" data-placement="left" title="" data-original-title="
                                                                        <c:if test = "${eobpatient.sreasoncode !=null && not empty eobpatient.sreasoncode}" >
                                                                            <c:out value = "${eobpatient.sreasoncode}"/> 
                                                                        </c:if> 
                                                                        <c:if test = "${eobpatient.sreasoncode1 !=null && not empty eobpatient.sreasoncode1}" >
                                                                            <c:out value = "${eobpatient.sreasoncode1}"/> 
                                                                        </c:if> 
                                                                        <c:if test = "${eobpatient.sreasoncode2 !=null && not empty eobpatient.sreasoncode2}" >
                                                                            <c:out value = "${eobpatient.sreasoncode2}"/> 
                                                                        </c:if> 
                                                                        <c:if test = "${eobpatient.sreasoncode3 !=null && not empty eobpatient.sreasoncode3}" >
                                                                            <c:out value = "${eobpatient.sreasoncode3}"/> 
                                                                        </c:if> 
                                                                        <c:if test = "${eobpatient.sreasoncode4 !=null && not empty eobpatient.sreasoncode4}" >
                                                                            <c:out value = "${eobpatient.sreasoncode4}"/> 
                                                                        </c:if> 
                                                                        <c:if test = "${eobpatient.sreasoncode5 !=null && not empty eobpatient.sreasoncode5}" >
                                                                            <c:out value = "${eobpatient.sreasoncode5}"/> 
                                                                        </c:if>                                                                         
                                                                        ">${eobpatient.reasoncode1}${eobpatient.reaonscode2}${eobpatient.reasoncode3}${eobpatient.resoncode4}${eobpatient.reasoncode5}${eobpatient.reasoncode6}</td>

                                                                    <td>
                                                                        <c:if test = "${eobpatient.adjamt1 !=null && not empty eobpatient.adjamt1}" >
                                                                            <c:out value = "${eobpatient.adjamt1}"/> 
                                                                        </c:if> 
                                                                        <c:if test = "${eobpatient.adjamt2 !=null && not empty eobpatient.adjamt2}" >
                                                                            <c:out value = "${eobpatient.adjamt2}"/> 
                                                                        </c:if> 
                                                                        <c:if test = "${eobpatient.adjamt3 !=null && not empty eobpatient.adjamt3}" >
                                                                            <c:out value = "${eobpatient.adjamt3}"/> 
                                                                        </c:if> 
                                                                        <c:if test = "${eobpatient.adjamt4 !=null && not empty eobpatient.adjamt4}" >
                                                                            <c:out value = "${eobpatient.adjamt4}"/> 
                                                                        </c:if> 
                                                                        <c:if test = "${eobpatient.adjamt5 !=null && not empty eobpatient.adjamt5}" >
                                                                            <c:out value = "${eobpatient.adjamt5}"/> 
                                                                        </c:if> 
                                                                        <c:if test = "${eobpatient.adjamt6 !=null && not empty eobpatient.adjamt6}" >
                                                                            <c:out value = "${eobpatient.adjamt6}"/> 
                                                                        </c:if> 

                                                                    </td>
                                                                    <td>
                                                                        <c:if test = "${eobpatient.amtamount !=null && not empty eobpatient.amtamount}" >
                                                                            <c:out value = "${eobpatient.amtamount}"/> 
                                                                        </c:if> 


                                                                    <td data-toggle="tooltip" data-placement="left" title="" data-original-title="
                                                                        <c:if test = "${eobpatient.sremarkcode !=null && not empty eobpatient.sremarkcode}" >
                                                                            <c:out value = "${eobpatient.sremarkcode}"/> 
                                                                        </c:if> 
                                                                        <c:if test = "${eobpatient.sremarkcode1 !=null && not empty eobpatient.sremarkcode1}" >
                                                                            <c:out value = "${eobpatient.sremarkcode1}"/> 
                                                                        </c:if> 
                                                                        <c:if test = "${eobpatient.sremarkcode2 !=null && not empty eobpatient.sremarkcode2}" >
                                                                            <c:out value = "${eobpatient.sremarkcode2}"/> 
                                                                        </c:if> 
                                                                        <c:if test = "${eobpatient.sremarkcode3 !=null && not empty eobpatient.sremarkcode3}" >
                                                                            <c:out value = "${eobpatient.sremarkcode3}"/> 
                                                                        </c:if>                                                                         
                                                                        ">${eobpatient.remarkcode1}${eobpatient.remarkcode2}${eobpatient.remarkcode3}${eobpatient.remarkcode4} </td>
                                                                    <td>${eobpatient.tid}</td>
                                                                    <td>${eobpatient.code_mode} | ${eobpatient.descr}</td>
                                                                    <td>${eobpatient.sreasoncode}${eobpatient.sreasoncode1}${eobpatient.sreasoncode2}${eobpatient.sreasoncode3}${eobpatient.sreasoncode4}${eobpatient.sreasoncode5}</td>
                                                                    <td>${eobpatient.sremarkcode}${eobpatient.sremarkcode1}${eobpatient.sremarkcode2}${eobpatient.sremarkcode3} </td>
                                                                    <td>${eobpatient.typesegment}</td>
                                                                </tr>

                                                            </c:forEach>
                                                        </tbody>

                                                        <tfoot style="background: antiquewhite;">
                                                            <tr>
                                                                <th rowspan="1" colspan="13"></th>
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
              

                $('#flading').show();
                var UT = '<%= session.getAttribute("UT")%>';
                console.log(UT);
                //   $('#card1').hide();
                //   $('#card2').hide();
                //   $('#card3').hide();
                function GetParameterValues(param) {
                    var url = window.location.href.slice(window.location.href.indexOf('?') + 1).split('&');
                    for (var i = 0; i < url.length; i++) {
                        var urlparam = url[i].split('=');
                        if (urlparam[0] === param) {
                            return urlparam[1];
                        }
                    }
                }

                var rid = GetParameterValues('rid');
                var payerval = GetParameterValues('payer');
                var paypat = GetParameterValues('payee');
                var pr = GetParameterValues('pr');
                var charges = 0;
                var paid = 0;
                var insid = '';
                var insname = '';
                var proid = '';
                var proname = '';
                if (typeof (payerval) !== "undefined")
                {
                    $('#payer').text(decodeURI(payerval));
                    console.log(payerval);
                    //  $('#card1').show();
                } else
                {
                    // $('#card1').hide();
                }



                if (typeof (paypat) !== "undefined")
                {
                    var res = paypat.split("~");
                    var payeeval = res[0];
                    var patientval = res[1].replace('#!', '').replace(/'/g, '');
                    var fname = res[2].replace('#!', '').replace(/'/g, '');
                    charges = res[3].replace('#!', '').replace(/'/g, '');
                    paid = res[4].replace('#!', '').replace(/'/g, '');
                    insid = res[5].replace('#!', '').replace(/'/g, '');
                    insname = res[6].replace('#!', '').replace(/'/g, '');
                    proid = res[7].replace('#!', '').replace(/'/g, '');
                    proname = res[8].replace('#!', '').replace(/'/g, '');
                    $('#payee').text(decodeURI(payeeval));
                    console.log(payeeval);
                    $('#pat').text(decodeURI(patientval));
                    $('#claimno').text(decodeURI(rid));
                    $('#claimno').attr("href", "claimwise?claimno=" + decodeURI(rid));
                    $('#fileno').text(decodeURI(fname));
                    $('#subid').text(decodeURI(insid));
                    $('#proid').text(decodeURI(proid));
                    proid = decodeURI(proid);
                    proname = decodeURI(proname);
                    if (proname.trim() !== ",")
                    {
                        $('#proname').text(decodeURI(proname));
                    }
                    insname = decodeURI(insname);
                    if (insname.trim() !== ",")
                    {
                        $('#subname').text(decodeURI(insname));
                    }
                    proname = proname.replace(',', '');
                    if (proid.trim() !== '')
                    {
                        if (proname.trim() === '')
                        {
                            // console.log(proid);

                            var provider_id = proid;
                            provider_id = parseInt(provider_id);
                            //  alert(practice_id);

                            $.get('getnpidetails', {
                                NPI: provider_id
                            }, function (response) {

                                //  console.log(response);
                                if (response.length > 0)
                                {
                                    var txt = response;
                                    var obj = jQuery.parseJSON(txt);

                                    console.log(obj);
                                    if (obj.length > 0)
                                    {
                                        for (var i = 0; i < obj.length; i++)
                                        {

                                            $('#proname').text(obj[i].last_name + ", " + obj[i].first_name);
                                        }
                                    }

                                    //  $('#first_name').val(sv[2].trim());
                                    //  $('#last_name').val(sv[3].trim());
                                    //  $('#middle_name').val(sv[4].trim());


                                }
                            });
                        }
                    }

                    // $('#card2').show();
                    //  $('#card3').show();
                } else
                {
                    // $('#card2').hide();
                    // $('#card3').hide();
                }

                $('#simpletable').dataTable({
                    'rowsGroup': [3, 4, 5, 6, 7, 8, 12, 13],
                    "aaSorting": [[3, "asc"]], // Sort by first column descending
                    "pageLength": 50,
                    "oLanguage": {
                        "sEmptyTable": "No Data..."
                    },
                    'columnDefs': [{

                        },
                        {
                            bSortable: false,
                            aTargets: [0, 3]
                        }],
                    dom: 'fBrtipl',
                    buttons: [
                        {
                            text: '<img src="assets/images/backbtnicon_blue.png">',
                            className: 'dt-pdf-btn',
                            action: function (e, dt, node, config) {
                                goBack();
                            }
                        },
                        {
                            extend: 'csv',
                            text: '<img src="assets/images/excelicon.png">',
                            className: 'dt-pdf-btn',
                            titleAttr: 'Download list in excel Format',
                            exportOptions: {
                                columns: [1, 2, 3, 4, 15, 6, 7, 8, 18, 16, 11, 12, 17]
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
                                columns: [1, 2, 3, 4, 15, 6, 7, 8, 18, 16, 11, 12, 17]
                            }
                        }
                    ],
                    "drawCallback": function (settings) {
                        //  MergeGridCells('simpletable',[4,5, 8,9]); ,3,6,9,10,11
                        //  MergeGridCells('simpletable', [8]);
                        //  MergeGridCells('simpletable', [9, 10]);
                    }

                });
                var not_tid = GetParameterValues('tid');

                if (typeof (not_tid) !== 'undefined')
                {
                    console.log(not_tid.replace(/_/g, '#').replace(/^/g, ' '));
                    var table = $('#simpletable').DataTable();
                    table.column(3).search(not_tid.replace(/_/g, '#').replace(/^/g, ' ')).draw();
                    // table.search(not_brid).draw();
                }

                //  MergeGridCells('simpletable',[1,3]);

                if (typeof (rid) !== "undefined")
                {

                    $('#simpletable').on('page.dt', function () {

                        $('#simpletable').find('tbody').find('tr').each(function () {
                            $(this).find('td:eq(1)').hide();
                            $(this).find('td:eq(2)').hide();
                            $(this).find('td:eq(14)').hide();
                            $(this).find('td:eq(15)').hide();
                            $(this).find('td:eq(16)').hide();
                            $(this).find('td:eq(17)').hide();
                            $(this).find('td:eq(18)').hide();


                        });
                    });
                    $('#simpletable').on('search.dt', function () {

                        $('#simpletable').find('tbody').find('tr').each(function () {
                            $(this).find('td:eq(1)').hide();
                            $(this).find('td:eq(2)').hide();
                            $(this).find('td:eq(14)').hide();
                            $(this).find('td:eq(15)').hide();
                            $(this).find('td:eq(16)').hide();
                            $(this).find('td:eq(17)').hide();
                            $(this).find('td:eq(18)').hide();

                        });
                    });
                    $('#simpletable').find('thead').find('tr').each(function () {

                        $(this).find('th:eq(1)').hide();
                        $(this).find('th:eq(2)').hide();
                        $(this).find('th:eq(14)').hide();
                        $(this).find('th:eq(15)').hide();
                        $(this).find('th:eq(16)').hide();
                        $(this).find('th:eq(17)').hide();
                        $(this).find('th:eq(18)').hide();

                    });
                    $('#simpletable').find('tbody').find('tr').each(function () {


                        $(this).find('td:eq(1)').hide();
                        $(this).find('td:eq(2)').hide();
                        $(this).find('td:eq(14)').hide();
                        $(this).find('td:eq(15)').hide();
                        $(this).find('td:eq(16)').hide();
                        $(this).find('td:eq(17)').hide();
                        $(this).find('td:eq(18)').hide();
                        // ROLE_ADMIN,ROLE_USER,ROLE_ENTITY_ADMIN,ROLE_ENTITY_STAFF,ROLE_CORP_PRACTICE,ROLE_CORP_ADMIN,ROLE_CORP_STAFF,ROLE_CORP_PROVIDER,
                       //                ROLE_GROUPCLINIC_PROVIDER,ROLE_GROUPCLINIC_ADMIN,ROLE_GROUPCLINIC_STAFF,ROLE_BILLING_ADMIN,ROLE_BILLING_STAFF,
                       //                ROLE_EDITOR,ROLE_PROOFER,ROLE_PRACTICE_ADMIN,ROLE_PRACTICE_PROVIDER,ROLE_PRACTICE_STAFF,ROLE_REFERING_PROVIDER
        <sec:authorize access="hasAnyRole('ROLE_CORP_PRACTICE,ROLE_CORP_ADMIN,ROLE_CORP_STAFF,ROLE_CORP_PROVIDER,ROLE_GROUPCLINIC_PROVIDER,ROLE_GROUPCLINIC_ADMIN,ROLE_GROUPCLINIC_STAFF,ROLE_BILLING_ADMIN,ROLE_BILLING_STAFF,ROLE_EDITOR,ROLE_PROOFER,ROLE_PRACTICE_ADMIN,ROLE_PRACTICE_PROVIDER,ROLE_PRACTICE_STAFF,ROLE_REFERING_PROVIDER')">
                        var code = $(this).find('td:eq(5)').text();
                        if (code !== "")
                        {
                            // alert(code);
                            var codedesc = code.split('|');
                            // console.log(codedesc[1].trim());
                            $(this).find('td:eq(5)').text(codedesc[1].trim());
                        }
        </sec:authorize>
                        //  $(this).find('td:eq(3)').hide();


                        var units = $(this).find('td:eq(6)').text();
                        units = units.replace('null', '');
                        $(this).find('td:eq(6)').text(units);
                        var dos = $(this).find('td:eq(4)').text();
                        if (dos !== "01/01/1900")
                        {
                            $(this).find('td:eq(4)').text(dos);
                        } else
                        {
                            $(this).find('td:eq(4)').text("");
                        }


                        var reason = $(this).find('td:eq(10)').text();
                        reason = reason.replace('null', '').replace('null', '').replace('null', '').replace('null', '').replace('null', '').replace('null', '');
                        reason = reason.trim().slice(0, -1);

                        var adj = $(this).find('td:eq(11)').text();
                        adj = adj.replace('null', '').replace('null', '').replace('null', '').replace('null', '').replace('null', '').replace('null', '');
                        adj = adj.trim().slice(0, -1);
                        var remark = $(this).find('td:eq(13)').text();
                        remark = remark.replace('null', '').replace('null', '').replace('null', '').replace('null', '').replace('null', '').replace('null', '');
                        remark = remark.trim().slice(0, -1);
                        if (remark !== "")
                        {
                            $(this).find('td:eq(13)').text(remark);
                        } else
                        {
                            $(this).find('td:eq(13)').text("No Remarks");
                            $(this).find('td:eq(13)').attr('data-toggle', "tooltip");
                            $(this).find('td:eq(13)').attr('data-placement', "left");
                            $(this).find('td:eq(13)').attr('data-original-title', "No Remarks");

                        }

                        if (adj !== "")
                        {
                            $(this).find('td:eq(11)').text(adj);
                        } else
                        {
                            $(this).find('td:eq(11)').text("No Adj Code");
                            $(this).find('td:eq(11)').attr('data-toggle', "tooltip");
                            $(this).find('td:eq(11)').attr('data-placement', "left");
                            $(this).find('td:eq(11)').attr('data-original-title', "No Adj Code");

                        }

                        if (reason !== "")
                        {
                            $(this).find('td:eq(10)').text(reason);
                        } else
                        {
                            $(this).find('td:eq(10)').text("No Reason Code");
                            $(this).find('td:eq(10)').attr('data-toggle', "tooltip");
                            $(this).find('td:eq(10)').attr('data-placement', "left");
                            $(this).find('td:eq(10)').attr('data-original-title', "No Adj Code");

                        }



                    });
                    $('#simpletable').find('tfoot').find('tr').each(function () {
                        var tc = parseFloat(paid) + parseFloat(pr);
                        $(this).find('th:eq(0)').text("Total Charge: " + charges + "             | Ins Paid: " + paid + "             | PR: " + pr + "          | Total Covered: " + tc.toFixed(2));
//                            $('#totalcharge').html(charges.toFixed(2));
//                            $('#totalpaid').html(paid.toFixed(2));
                    });
                    setTimeout(function ()
                    {
                        $('#flading').hide();
                    }, 5000);
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
                            brid = tr.find('td:eq(14)').text() + ',' + brid;
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

                        msgbox("select atleast one lineitems..!", "Ticket Portal", "warning");
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
                            segment: "F",
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
                        var strcontent = "Hi " + assignto + ", <br><br>" + "Type: " + tickettype + "<br>Source: " + tsource + "<br>Priority: " + ticketpriority + "<br> Assign To: " + assignto + "<br>Segment: Claim Detailed View [F]" + "<br><br>" + $(".note-editable").html();
                        // Email Config
                        $.post('eMail', {
                            recipient: entity_user_to,
                            subject: 'Ticket Raised from [Claim Detailed View] Form: ' + tickettype + ' : ' + tstatus + ' to ' + assignto,
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
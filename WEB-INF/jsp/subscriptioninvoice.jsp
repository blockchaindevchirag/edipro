<%-- 
    Document   : invoice
    Created on : 21-Aug-2022, 15:41:15 pm
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
    <head>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Subscription Invoice</title>
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
            .ui-datepicker{
                top:200px !important;
            }
            /*============================================================================*/
            #modal-1 {
                position: relative !important;
            }

            #modal-1 .modal-dialog {
                position: fixed !important;
                max-width: 100%;
                box-shadow: 0 0 5px rgba(0, 0, 0, 0.5);
                background: var(--white);
                /* width:500px; */
                margin: 0;
                /* padding: 20px; */
                /* overflow: hidden; */
                /* resize: both; */
            }

            #modal-1 .modal-content {
                /* padding: 20px; */
                height: 600px;
                overflow: hidden;
                resize: both;
                width: 800px;
            }

            #modal-1 .modal-body {
                height: relative;
                overflow-x: hidden;
                overflow-y: auto;
            }

            .bootstrap-select{margin: -5px -14px !important; width: 103%;}

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
            .select2-container--open .select2-dropdown {
                left: 0;
                z-index: 1500 !important;
            } 
            .select2-container{ 
                z-index:99999!important;
            }  
            /*#modal-1 .modal-header {
              background: var(--dark);
              color: var(--white);
              border-bottom: 0px;
              padding: 0px;
            }
            #modal-1 .modal-header h3 {
              color: var(--white);
              font-size: 18px;
            }*/ 
            .dragable_touch {
                cursor: move;
            }

            #bootstrap-duallistbox-nonselected-list_account_id
            {
                height:225px !important;
            }
            #bootstrap-duallistbox-selected-list_account_id
            {
                height:225px !important;
            }

            .moveall, .move, .remove, .removeall
            {
                background-color: #e9ecef !important;
            }

            .badge-success {
                color: #fff;
                background-color: #17977e !important;
            }

            #eligibilitytable span1{
                display:none;
            }
            .bootstrap-duallistbox-container label{font-weight:bold; padding-bottom:5px;}
            select option{ 
                padding:5px 0;
            }
        </style>
        <jsp:include page="includes/header.jsp"></jsp:include>
        <div class="pcoded-main-container">
            <div class="pcoded-wrapper">
                <div style="padding: 15px" class="pcoded-content">
                    <div class="pcoded-inner-content">
                        <div class="main-body">
                            <button id="btnclick" class="md-trigger" style="width:0px;height:0px;border:0;" data-modal="modal-1"></button>
                            <button id="btnclick1" class="md-trigger" style="width:0px;height:0px;border:0;" data-modal="modal-2"></button>

                            <!-- <button id="btnnot" type="button" class="btn notifications btn-warning" confirm="Are your sure?" data-type="warning" data-from="top" data-align="right">Warning</button>-->
                            <!-- <button id="btnnot" type="button" class="second btn btn-primary" onclick="ShowConfirmYesNo();">clickme</button> -->

                            <div class="page-wrapper">

                                <!-- Zero config table start -->
                                <div   class="col-sm-12">

                                    <div class="card">
                                        <div class="card-body">
                                            <div class="row">
                                                <div class="form-group">
                                                    <label class="col-form-label col col-30px" style="margin-top:10px">Filter By Created Date</label>
                                                </div>
                                                <div class="form-group">
                                                    <div class='input-group pull-right' id='pc-daterangepicker-6' style="width: 250px;height: 35px;margin-top:3px">
                                                        <input type='text' readonly="" class="form-control" placeholder="Select date range" />
                                                        <div class='input-group-append'>
                                                            <span class="input-group-text"><i class="feather icon-calendar"></i></span>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="text-left">

                                                    <div class="form-group">

                                                    <sec:authorize access="hasAnyRole('ROLE_ENTITY_ADMIN')"> 
                                                        <sec:authorize access="hasAuthority('NEW_SUBSCRIPTION_INVOICE_PRIVILEGE')">
                                                            <button type="button" class="btn btn-sm btn-primary m-1 eob-btn" id="btnbulkinv">Create Invoice</button>
                                                        </sec:authorize> 
                                                        <sec:authorize access="hasAuthority('UPDATE_SUBSCRIPTION_INVOICE_PRIVILEGE')">
                                                            <button type="button" class="btn btn-sm btn-primary m-1 eob-btn" id="btnupdateinv">Update Invoice</button>
                                                        </sec:authorize> 
                                                        <sec:authorize access="hasAuthority('RESET_SUBSCRIPTION_INVOICE_PRIVILEGE')">
                                                            <button  type="button" class="btn btn-sm btn-success m-1 eob-btn" id="btnreset">Reset</button>
                                                        </sec:authorize> 
                                                        <sec:authorize access="hasAuthority('NEW_SUBSCRIPTION_INVOICE_PRIVILEGE')">
                                                            <button type="button" class="btn btn-sm btn-danger m-1 eob-btn" id="btndelete">Delete Invoice </button>
                                                        </sec:authorize> 
                                                        <sec:authorize access="hasAuthority('NEW_SUBSCRIPTION_INVOICE_PRIVILEGE')">
                                                            <button type="button" class="btn btn-sm btn-greenadd m-1 eob-btn" onclick="callSubInvoiceAllReport();">Client Details </button>
                                                        </sec:authorize> 
                                                    </sec:authorize> 
                                                </div>
                                            </div>
                                        </div>

                                        <div class="dt-responsive table-responsive">
                                            <div class="tableFixHead1 tablehide">   
                                                <table  id="eligibilitytable" width="98%" style="width: 0px;" class="table table-striped table-bordered nowrap">
                                                    <thead>
                                                        <tr>
                                                            <th style="position: sticky; top: 0; z-index: 1;"><input id="headercheck" type="checkbox" ></th>
                                                            <th style="position: sticky; top: 0; z-index: 1;" class="vu-idbole">Inv#</th>
                                                            <th style="position: sticky; top: 0; z-index: 1;">Client</th>
                                                            <th style="position: sticky; top: 0; z-index: 1;">Account#</th>
                                                            <th style="position: sticky; top: 0; z-index: 1;">Fee</th> 
                                                            <th style="position: sticky; top: 0; z-index: 1;">Paid</th> 
                                                            <th style="position: sticky; top: 0; z-index: 1;">Invoice Date</th> 
                                                            <th style="position: sticky; top: 0; z-index: 1; text-align: center;">Adj</th> 
                                                            <th style="position: sticky; top: 0; z-index: 1;">Status</th> 
                                                            <th style="position: sticky; top: 0; z-index: 1;">Paid DT </th>
                                                            <th style="position: sticky; top: 0; z-index: 1;">Created_By</th>
                                                            <th style="position: sticky; top: 0; z-index: 1;">Updated_By</th>
                                                            <th style="position: sticky; top: 0; z-index: 1;">Ref</th>
                                                            <th style="position: sticky; top: 0; z-index: 1;">Ref</th>
                                                            <th style="position: sticky; top: 0; z-index: 1;">id</th>
                                                            <th style="position: sticky; top: 0; z-index: 1;">Upd_Inv</th>
                                                            <th style="position: sticky; top: 0; z-index: 1;">Created_DT</th>

                                                        </tr>
                                                    </thead>
                                                    <tbody>

                                                    </tbody>
                                                    <tfoot style="background: antiquewhite;">
                                                        <tr>
                                                            <th rowspan="1" colspan="17"></th>
                                                        </tr>

                                                    </tfoot>

                                                </table>
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

    <div class="modal fade" id="modal-1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel2" data-backdrop="false" data-keyboard="true">
        <!--<div class="modal fade" id="modal-1" role="dialog" data-backdrop="static" data-keyboard="false">-->
        <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content">

                <!-- Modal Header -->
                <div class="modal-header">
                    <h4 class="modal-title" id="span_Prov">Create Invoice </h4>                    
                    <button type="button" id="btnclose" class="close" data-dismiss="modal">&times;</button><br/>

                </div>
                <!-- Modal body -->
                <form:form  modelAttribute="updateinv">
                    <div class="modal-body">
                        <div class="form-row">
                            <div class="col-md-5 mb-4 form-group row">
                                <label for="invoicedate" class="col-4" style="margin-top:5px;">Date <span class="text-danger">*</span></label>
                                <input type="text" class="form-control col-8" required name="invoicedate"  tabindex="1"  title="invoicedate"   id="invoicedate" placeholder="Date"   />
                            </div>
                            <div class="col-md-7 mb-6" style="text-align: right;">                               
                                <h6><span class="badge badge-success"> <i class="fa fa-check-square" aria-hidden="true"></i>  </span> Invoice already raised</h6>
                            </div>

                            <!--   <div class="col-md-6 mb-4">
                                   <label class="form-label" for="account_id">Account # <span class="text-danger">*</span></label>   
                                   <select class="col-sm-12 js-example-basic-multiple" multiple="multiple" required name="account_id" tabindex="2"  title="account_id" id="account_id">
   
                            <c:forEach var="practice" items="${accountnolist}">
                                <option value = "${practice.account_id}" class ="${practice.group_npi1}" >${practice.account_no}</option>
                            </c:forEach>
                        </select>
                    </div> -->


                            <div class="col-lg-12 ">
                                <div class="form-group">

                                    <select multiple="multiple"  required id="account_id" name="account_id" class="demo2">

                                        <c:forEach var="practice" items="${accountnolist}">
                                            <option value = "${practice.account_id}" class ="${practice.group_npi1}" >${practice.account_no}</option>
                                        </c:forEach>

                                    </select>
                                    <span id="heading_error" class="col-lg-12 offset-lg-6" style="color: red;"></span>
                                </div>
                            </div>
                        </div>

                        <div class="form-row">
                            <div class="col-md-4 mb-4 offset-md-8">
                                <input type="hidden" class="form-control"  id="invid" name="invid" tabindex="4" >
                                <button type="button" id="btncreateinvoice" tabindex="3"  class="btn btn-rounded btn-greenadd btn-block">Submit</button>
                            </div>

                        </div>
                    </div>
                </form:form>
            </div>
        </div>
    </div>



    <div class="modal fade" id="modal-2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel3" data-backdrop="" data-keyboard="false">
        <!--<div class="modal fade" id="modal-1" role="dialog" data-backdrop="static" data-keyboard="false">-->
        <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content">

                <!-- Modal Header -->
                <div class="modal-header">
                    <h4 class="modal-title" id="span_Prov">Update Invoice Details : <span id="invoiceid"></span></h4>

                    <button type="button" id="btnclose1" class="close" data-dismiss="modal">&times;</button>
                </div>
                <!-- Modal body -->
                <form:form  modelAttribute="updateinv">
                    <div class="modal-body">
                        <div class="form-row">
                            <div class="col-md-4 mb-4">
                                <label for="paiddate">Date <span class="text-danger">*</span></label>
                                <input type="text" class="form-control" required   name="paid_date" tabindex="1"  title="Date"   id="paid_date" placeholder="Date"   />
                            </div>
                            <div class="col-md-4 mb-4">
                                <label class="form-label">Total Amount <span class="text-danger">*</span></label>
                                <input type="text" class="form-control" name="paid_amount" tabindex="2"  required id = "paid_amount"  title="Total Amount" placeholder="Total Amount" >
                            </div>
                            <div class="col-md-4 mb-4">
                                <label class="form-label">Updated Invoice <span class="text-danger">*</span></label>
                                <input type="text" class="form-control" name="updated_invoice" tabindex="3"  required id = "updated_invoice"  title="Total Updated Invoice" placeholder="Total Updated Invoice" >
                            </div>

                        </div>
                        <div class="form-row">
                            <div class="col-md-4 mb-4">
                                <label for="discount">Adjustment <span class="text-danger">*</span></label>
                                <div class="input-group">

                                    <div class="input-group-prepend" style="background: #edf1f4">
                                        <span class="input-group-text">
                                            <i class="fas fa-percent"></i>
                                        </span>
                                    </div>
                                    <input type="text" class="form-control"  name="discount" tabindex="4"  title="Adjustment"  id="discount" placeholder="Adjustment"   />
                                    <span id="ndis_error" style="color: red"></span>
                                </div>
                            </div>
                            <div class="col-md-4 mb-4">
                                <label class="form-label">Adjustment Amount <span class="text-danger">*</span></label>
                                <div class="input-group">
                                    <div class="input-group-prepend" style="background: #edf1f4">
                                        <span class="input-group-text">
                                            <i class="fas fa-dollar-sign"></i>
                                        </span>
                                    </div>
                                    <input type="text" class="form-control" name="discount_amount" tabindex="5"   id = "discount_amount"  title="Adjustment Amount" placeholder="Adjustment Amount" />
                                    <span id="ndisval_error" style="color: red"></span>
                                </div></div>
                            <div class="col-md-4 mb-4">
                                <label class="form-label">Paid Amount <span class="text-danger">*</span></label>
                                <div class="input-group">
                                    <div class="input-group-prepend" style="background: #edf1f4">
                                        <span class="input-group-text">
                                            <i class="fas fa-dollar-sign"></i>
                                        </span>
                                    </div>
                                    <input type="text" class="form-control" name="received_amount" tabindex="6"  required id = "received_amount"  title="Received Amount" placeholder="Received Amount" />
                                    <span id="nrec_error" style="color: red"></span> </div>
                            </div>

                        </div>
                        <div class="form-row">


                            <div class="col-md-4 mb-4">
                                <label class="form-label" for="status_id">Invoice Status <span class="text-danger">*</span></label>   
                                <select class="form-control" required name="status_id" tabindex="7"  title="status_id" id="status_id" >
                                    <option value = "" >--Select--</option>
                                    <c:forEach var="invoice" items="${invstatuslist}">
                                        <option value = ${invoice.status_id} >${invoice.status}</option>
                                    </c:forEach> 
                                </select>
                            </div>



                            <div class="col-md-4 mb-4">
                                <label class="form-label" for="Reference">Reference <span class="text-danger">*</span></label> 
                                <textarea  rows="3" cols="90" class="form-control" required name="reference" tabindex="5" id ="reference"  title="reference"   placeholder="reference"></textarea>

                                <input type="hidden" class="form-control"  id="invid" name="invid" tabindex="7" >
                                <input type="hidden" class="form-control"  id="entered_by_id" name="entered_by_id" tabindex="8" >
                            </div>


                            <div class="col-md-4 mb-4">
                                <label class="form-label" style="display:none;">Include Service Fee</label>
                                <div class="input-group" style="display:none;">
                                    <div class="input-group-prepend" style="background: #edf1f4">
                                        <span class="input-group-text">
                                            <i class="fas fa-dollar-sign"></i>
                                        </span>
                                    </div>
                                    <input type="text" class="form-control" name="service_fee" tabindex="8"  required id = "service_fee"  title="service_fee" placeholder="service_fee" >
                                </div> </div>



                        </div>
                        <div class="form-row">

                            <div class="col-md-4 mb-4">
                                <label class="form-label" for="payment_type" style="display:none;">Payment Type <span class="text-danger">*</span></label>   
                                <select class="form-control" required name="payment_type" tabindex="9" style="display:none;" title="payment_type" id="payment_type" >
                                    <option value = "" >--Select--</option>
                                    <c:forEach var="invoice" items="${paymenttypelist}">
                                        <option value = "${invoice.payment_type}"  class ="${invoice.percent}">${invoice.pay_type}</option>
                                    </c:forEach> 
                                </select>
                            </div>
                            <div class="col-md-4 mb-4">
                                <button type="button" id="btnupdateinvoice" tabindex="6"  class="btn btn-rounded btn-greenadd btn-block">Submit</button>
                            </div>

                        </div>
                    </div>
                </form:form>
            </div>
        </div>
    </div>


    <!--<div class="md-overlay"></div>-->

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


    <div id="modalConfirmYesNo1" class="modal fade">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" 
                            class="close" data-dismiss="modal" aria-label="Close">

                    </button>
                    <h4 id="lblTitleConfirmYesNo1" class="modal-title">Confirmation</h4>
                </div>
                <div class="modal-body">
                    <p id="lblMsgConfirmYesNo1"></p>
                </div>
                <div class="modal-footer">
                    <button id="btnYesConfirmYesNo1" 
                            type="button" class="btn btn-primary">Yes</button>
                    <button id="btnNoConfirmYesNo1" 
                            type="button" class="btn btn-default">No</button>
                </div>
            </div>
        </div>
    </div>


    <div id="modalConfirmYesNo2" class="modal fade">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" 
                            class="close" data-dismiss="modal" aria-label="Close">

                    </button>
                    <h4 id="lblTitleConfirmYesNo2" class="modal-title">Confirmation</h4>
                </div>
                <div class="modal-body">
                    <p id="lblMsgConfirmYesNo2"></p>
                </div>
                <div class="modal-footer">
                    <button id="btnYesConfirmYesNo2" 
                            type="button" class="btn btn-primary">Yes</button>
                    <button id="btnNoConfirmYesNo2" 
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
                                        <button type="submit"  id="btnticketsubmit" class="btn btn-rounded btn-greenadd btn-block" >Submit</button>
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

        <!--  <link rel="stylesheet" href="//code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">
          <script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script> -->
        <script src="assets/js/plugins/select2.full.min.js"></script>
        <script src="assets/js/pages/form-select-custom.js"></script>
        <script type="text/javascript">

                                                                $('.pc-selectpicker').selectpicker();

                                                                $(document).ready(function () {

                                                                    var subcreateddate = localStorage.getItem("subcreateddate");

                                                                    var start, end;

                                                                    if (subcreateddate === null) {
                                                                        start = moment().subtract(179, 'days');
                                                                        end = moment();
                                                                        $('#pc-daterangepicker-6 .form-control').val(start.format('MM/DD/YYYY') + ' / ' + end.format('MM/DD/YYYY'));

                                                                    } else {
                                                                        var currentVal = subcreateddate;
                                                                        start = currentVal.split(" / ")[0];
                                                                        end = currentVal.split(" / ")[1];
                                                                        $('#pc-daterangepicker-6 .form-control').val(moment(start).format("MM/DD/YYYY") + ' / ' + moment(end).format("MM/DD/YYYY"));
                                                                        localStorage.setItem("subcreateddate", moment(start).format("MM/DD/YYYY") + ' / ' + moment(end).format("MM/DD/YYYY"));

                                                                    }

                                                                    $(".tableFixHead1").removeClass("tablehide");
                                                                    $(".tableFixHead1").addClass("tableshow");

                                                                    var demo2 = $('.demo2').bootstrapDualListbox({
                                                                        nonSelectedListLabel: 'Non-selected',
                                                                        selectedListLabel: 'Selected',
                                                                        preserveSelectionOnMove: 'moved',
                                                                        moveOnSelect: false,
                                                                        border: '1px dashed black',
                                                                        nonSelectedFilter: '',
                                                                        moveOnDoubleClick: false
                                                                    });

                                                                    function ShowConfirmYesNo() {
                                                                        AsyncConfirmYesNo(
                                                                                "Confirmation",
                                                                                "Do you wish to reset?",
                                                                                MyYesFunction,
                                                                                MyNoFunction
                                                                                );

                                                                    }

                                                                    function ShowDeleteConfirmYesNo() {
                                                                        AsyncDeleteConfirmYesNo(
                                                                                "Confirmation",
                                                                                "Are you sure, do you want to delete?",
                                                                                MyYesDeleteFunction,
                                                                                MyNoDeleteFunction
                                                                                );

                                                                    }

                                                                    $("#invoicedate").datepicker({
                                                                        format: "mm/dd/yyyy",
                                                                        autoclose: true,
                                                                        orientation: "bottom left",
                                                                        startDate: "-11m",
                                                                        endDate: "0",
                                                                        maxDate: "0"

                                                                    }).mask('99/99/9999');


                                                                    $("#paid_date").datepicker({
                                                                        format: "mm/dd/yyyy",
                                                                        autoclose: true,
                                                                        orientation: "bottom left",
                                                                        startDate: "-11m",
                                                                        endDate: "0",
                                                                        maxDate: "0"
                                                                    }).mask('99/99/9999');


                                                                    /*   var now = new Date();
                                                                     var day = '';
                                                                     var month = '';
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
                                                                     var today = now.getFullYear() + '-' + (month) + '-' + day;
                                                                     document.getElementById("invoicedate").value = '';
                                                                     //  document.getElementById("dos").max = today;
                                                                     document.getElementById("invoicedate").max = today;*/



                                                                    function MyYesFunction() {

                                                                        var invid = '';
                                                                        // var invamt = 0;
                                                                        var table = $('#eligibilitytable').DataTable();
                                                                        var count = 0;
                                                                        //  var upd_inv_val = 0;

                                                                        table.$('input[type="checkbox"]').each(function () {
                                                                            // If checkbox doesn't exist in DOM

                                                                            // If checkbox is checked
                                                                            if (this.checked) {
                                                                                // Create a hidden element

                                                                                //  alert(this);
                                                                                let tr = $(this).closest('tr');
                                                                                invid = tr.find('td:eq(1)').text() + ',' + invid;
                                                                                //  invamt = parseFloat(tr.find('td:eq(9)').text()) + parseFloat(invamt);
                                                                                //    upd_inv_val = parseFloat(tr.find('td:eq(22)').text()) + parseFloat(invamt);
                                                                                count++;
                                                                            }
                                                                        });



                                                                        invid = invid.substring(0, invid.length - 1);
                                                                        //  alert(invid);
                                                                        // console.log(brid);
                                                                        if (invid !== '')
                                                                        {
                                                                            $.ajax({
                                                                                url: "resetsubinvoice",
                                                                                type: "post", //send it through get method
                                                                                data: {

                                                                                    invid: invid

                                                                                },
                                                                                success: function (response) {
                                                                                    console.log(response);
                                                                                    msgbox("Subscription Invoice Reseted", "Invoice Portal", "success");
                                                                                    //  table.ajax.url("subinvoicedata").load();
                                                                                    table.ajax.url("subinvoicedata?startDate=" + moment(start).format("YYYY-MM-DD") + "&endDate=" + moment(end).format("YYYY-MM-DD")).load();
                                                                                    $('#flading').hide();
                                                                                    window.location.reload();

                                                                                },
                                                                                error: function (err) {
                                                                                    console.log(err);
                                                                                    msgbox("Subscription Invoice Not Reseted", "Invoice Portal", "error");
                                                                                    $('#btnclose').click();
                                                                                    $('#flading').hide();

                                                                                }
                                                                            });

                                                                        } else
                                                                        {
                                                                            msgbox("select atleast one invoice..!", "Subscription Invoice Portal", "warning");
                                                                        }


                                                                    }

                                                                    function MyNoFunction() {
                                                                    }

                                                                    function AsyncConfirmYesNo(title, msg, draftFn, saveFn) {
                                                                        var $confirm = $("#modalConfirmYesNo");
                                                                        $confirm.modal('show');
                                                                        $("#lblTitleConfirmYesNo").html(title);
                                                                        $("#lblMsgConfirmYesNo").html(msg);
                                                                        $("#btnYesConfirmYesNo").off('click').click(function () {
                                                                            draftFn();
                                                                            $confirm.modal("hide");
                                                                        });
                                                                        $("#btnNoConfirmYesNo").off('click').click(function () {
                                                                            saveFn();
                                                                            $confirm.modal("hide");
                                                                        });
                                                                    }


                                                                    function MyYesDeleteFunction() {
                                                                        var invid = '';
                                                                        var table = $('#eligibilitytable').DataTable();
                                                                        var count = 0;
                                                                        var paidcount = 0;

                                                                        table.$('input[type="checkbox"]').each(function () {
                                                                            if (this.checked) {
                                                                                let tr = $(this).closest('tr');
                                                                                if (tr.find('td:eq(7)').text() === "Due")
                                                                                {
                                                                                    invid = tr.find('td:eq(1)').text() + ',' + invid;
                                                                                } else
                                                                                {
                                                                                    paidcount++;
                                                                                }
                                                                                count++;
                                                                            }
                                                                        });

                                                                        invid = invid.substring(0, invid.length - 1);

                                                                        if (invid !== '')
                                                                        {
                                                                            if (paidcount > 0)
                                                                            {
                                                                                msgbox("Paid / Writeoff invoices cannot be deleted..!", "Subscription Invoice Portal", "warning");
                                                                            } else
                                                                            {

                                                                                // alert(invid);
                                                                                $.ajax({
                                                                                    url: "deletesubinvoice",
                                                                                    type: "post", //send it through get method
                                                                                    data: {

                                                                                        invid: invid

                                                                                    },
                                                                                    success: function (response) {
                                                                                        console.log(response);
                                                                                        msgbox("Subscription Invoice Deleted", "Invoice Portal", "success");
                                                                                        //  table.ajax.url("subinvoicedata").load();
                                                                                        table.ajax.url("subinvoicedata?startDate=" + moment(start).format("YYYY-MM-DD") + "&endDate=" + moment(end).format("YYYY-MM-DD")).load();
                                                                                        $('#flading').hide();
                                                                                        window.location.reload();

                                                                                    },
                                                                                    error: function (err) {
                                                                                        console.log(err);
                                                                                        msgbox("Subscription Invoice Not Deleted", "Invoice Portal", "error");
                                                                                        $('#btnclose').click();
                                                                                        $('#flading').hide();

                                                                                    }
                                                                                });
                                                                            }

                                                                        } else
                                                                        {
                                                                            if (paidcount > 0)
                                                                            {
                                                                                msgbox("Paid / Writeoff invoices cannot be deleted..!", "Subscription Invoice Portal", "warning");
                                                                            } else {
                                                                                msgbox("select atleast one due invoice..!", "Subscription Invoice Portal", "warning");
                                                                            }
                                                                        }
                                                                    }

                                                                    function MyNoDeleteFunction() {
                                                                    }



                                                                    function AsyncDeleteConfirmYesNo(title, msg, draftFn, saveFn) {
                                                                        var $confirm = $("#modalConfirmYesNo2");
                                                                        $confirm.modal('show');
                                                                        $("#lblTitleConfirmYesNo2").html(title);
                                                                        $("#lblMsgConfirmYesNo2").html(msg);
                                                                        $("#btnYesConfirmYesNo2").off('click').click(function () {
                                                                            draftFn();
                                                                            $confirm.modal("hide");
                                                                        });
                                                                        $("#btnNoConfirmYesNo2").off('click').click(function () {
                                                                            saveFn();
                                                                            $confirm.modal("hide");
                                                                        });
                                                                    }



                                                                    $('#headercheck').prop('checked', false);

                                                                 

                                                                    function isNumber(evt, element) {

                                                                        var charCode = (evt.which) ? evt.which : event.keyCode;

                                                                        if (
                                                                                (charCode !== 45 || $(element).val().indexOf('-') !== -1) && // “-” CHECK MINUS, AND ONLY ONE.
                                                                                (charCode !== 46 || $(element).val().indexOf('.') !== -1) && // “.” CHECK DOT, AND ONLY ONE.
                                                                                (charCode < 48 || charCode > 57))
                                                                            return false;

                                                                        return true;
                                                                    }



                                                                    $(function () {
                                                                        $("#discount").keypress(function (e) {
                                                                            return isNumber(e, this);
                                                                            /* var keyCode = e.keyCode || e.which;
                                                                             $("#ndis_error").html("");
                                                                             var regex = "/^[1-9]\d*(\.\d+)?$/";
                                                                             var isValid = regex.test(String.fromCharCode(keyCode));
                                                                             if (!isValid) {
                                                                             $("#ndis_error").html("Not valid");
                                                                             }
                                                                             
                                                                             return isValid; */
                                                                        });
                                                                    });

                                                                    $(function () {
                                                                        $("#updated_invoice").keypress(function (e) {
                                                                            return isNumber(e, this);
                                                                            /* var keyCode = e.keyCode || e.which;
                                                                             $("#ndis_error").html("");
                                                                             var regex = "/^[1-9]\d*(\.\d+)?$/";
                                                                             var isValid = regex.test(String.fromCharCode(keyCode));
                                                                             if (!isValid) {
                                                                             $("#ndis_error").html("Not valid");
                                                                             }
                                                                             
                                                                             return isValid; */
                                                                        });
                                                                    });



                                                                    $(function () {
                                                                        $("#received_amount").keypress(function (e) {
                                                                            return isNumber(e, this);
                                                                            /* var keyCode = e.keyCode || e.which;
                                                                             $("#nrec_error").html("");
                                                                             var regex = "/^[1-9]\d*(\.\d+)?$/";
                                                                             var isValid = regex.test(String.fromCharCode(keyCode));
                                                                             if (!isValid) {
                                                                             $("#nrec_error").html("Not valid");
                                                                             }
                                                                             
                                                                             return isValid; */
                                                                        });
                                                                    });

                                                                    $(function () {
                                                                        $("#discount_amount").keypress(function (e) {
                                                                            return isNumber(e, this)
                                                                            /* var keyCode = e.keyCode || e.which;
                                                                             $("#ndisval_error").html("");
                                                                             var regex = "/^[1-9]\d*(\.\d+)?$/";
                                                                             var isValid = regex.test(String.fromCharCode(keyCode));
                                                                             if (!isValid) {
                                                                             $("#ndisval_error").html("Not valid");
                                                                             }
                                                                             
                                                                             return isValid; */
                                                                        });
                                                                    });

                                                                    $("#discount").focusout(function () {
                                                                        /* if ($(this).val() !== '')
                                                                         {
                                                                         if (parseFloat($("#updated_invoice").val()) === 0)
                                                                         {
                                                                         $("#discount_amount").val(0);
                                                                         $("#received_amount").val(0);
                                                                         var ta = $('#paid_amount').val();
                                                                         var ra = (parseFloat(ta) * parseFloat($(this).val())) / 100;
                                                                         $("#discount_amount").val(ra.toFixed(2));
                                                                         var ra1 = (parseFloat(ta) - parseFloat($("#discount_amount").val()));
                                                                         $("#received_amount").val(ra1.toFixed(2));
                                                                         } else
                                                                         {
                                                                         $("#discount_amount").val(0);
                                                                         $("#received_amount").val(0);
                                                                         var ta = $('#updated_invoice').val();
                                                                         var ra = (parseFloat(ta) * parseFloat($(this).val())) / 100;
                                                                         $("#discount_amount").val(ra.toFixed(2));
                                                                         var ra1 = (parseFloat(ta) - parseFloat($("#discount_amount").val()));
                                                                         $("#received_amount").val(ra1.toFixed(2));
                                                                         }
                                                                         }
                                                                         } else
                                                                         {
                                                                         $("#discount_amount").val(0);
                                                                         $("#received_amount").val(0);
                                                                         } */

                                                                        if ($(this).val() !== '')
                                                                        {
                                                                            $("#discount_amount").val(0);
                                                                            $("#received_amount").val(0);
                                                                            var ta = $('#paid_amount').val();
                                                                            var ra = (parseFloat(ta) * parseFloat($(this).val())) / 100;
                                                                            $("#discount_amount").val(ra.toFixed(2));

                                                                            var ra1 = (parseFloat(ta) - parseFloat($("#discount_amount").val()));
                                                                            $("#received_amount").val(ra1.toFixed(2));
                                                                        } else
                                                                        {
                                                                            // $("#discount_amount").val(0);
                                                                            // $("#received_amount").val(0);
                                                                        }

                                                                        if ($(this).val() !== "")
                                                                        {
                                                                            var sf = $('select[name="payment_type"] option:selected').attr('class');
                                                                            sf = parseFloat($('#received_amount').val()) * (parseFloat(sf) / 100);
                                                                            sf = sf + parseFloat($('#received_amount').val());
                                                                            $('#service_fee').val(sf.toFixed(2));
                                                                        } else
                                                                        {
                                                                            // $('#service_fee').val(0);
                                                                        }

                                                                    });

                                                                    $("#received_amount").focusout(function () {
                                                                        // alert("received_amount");
                                                                        /*  if ($(this).val() !== '')
                                                                         {
                                                                         if (parseFloat($("#updated_invoice").val()) === 0)
                                                                         {
                                                                         $("#discount_amount").val(0);
                                                                         $("#discount").val(0);
                                                                         var ta = $('#paid_amount').val();
                                                                         var ra = (parseFloat(ta) - parseFloat($(this).val()));
                                                                         $("#discount_amount").val(ra.toFixed(2));
                                                                         var dis = (parseFloat($("#discount_amount").val()) / parseFloat(ta)) * 100;
                                                                         $("#discount").val(dis.toFixed(2));
                                                                         } else
                                                                         {
                                                                         $("#discount_amount").val(0);
                                                                         $("#discount").val(0);
                                                                         var ta = $('#updated_invoice').val();
                                                                         var ra = (parseFloat(ta) - parseFloat($(this).val()));
                                                                         $("#discount_amount").val(ra.toFixed(2));
                                                                         var dis = (parseFloat($("#discount_amount").val()) / parseFloat(ta)) * 100;
                                                                         $("#discount").val(dis.toFixed(2));
                                                                         }
                                                                         } else
                                                                         {
                                                                         $("#discount_amount").val(0);
                                                                         $("#discount").val(0);
                                                                         } */

                                                                        if ($(this).val() !== '')
                                                                        {
                                                                            $("#discount_amount").val(0);
                                                                            $("#discount").val(0);
                                                                            var ta = $('#paid_amount').val();
                                                                            var ra = (parseFloat(ta) - parseFloat($(this).val()));
                                                                            $("#discount_amount").val(ra.toFixed(2));

                                                                            var dis = (parseFloat($("#discount_amount").val()) / parseFloat(ta)) * 100;
                                                                            $("#discount").val(dis.toFixed(2));
                                                                        } else
                                                                        {
                                                                            // $("#discount_amount").val(0);
                                                                            // $("#discount").val(0);
                                                                        }

                                                                        if ($(this).val() !== "")
                                                                        {
                                                                            var sf = $('select[name="payment_type"] option:selected').attr('class');
                                                                            sf = parseFloat($('#received_amount').val()) * (parseFloat(sf) / 100);
                                                                            sf = sf + parseFloat($('#received_amount').val());
                                                                            $('#service_fee').val(sf.toFixed(2));
                                                                        } else
                                                                        {
                                                                            // $('#service_fee').val(0);
                                                                        }

                                                                    });

                                                                    $("#discount_amount").focusout(function () {
                                                                        /*  if ($(this).val() !== '')
                                                                         {
                                                                         if (parseFloat($("#updated_invoice").val()) === 0)
                                                                         {
                                                                         // alert("received_amount");
                                                                         $("#discount").val(0);
                                                                         $("#received_amount").val(0);
                                                                         var ta = $('#paid_amount').val();
                                                                         var ra = (parseFloat($(this).val()) / parseFloat(ta)) * 100;
                                                                         $("#discount").val(ra.toFixed(2));
                                                                         
                                                                         var ra1 = (parseFloat(ta) - parseFloat($(this).val()));
                                                                         $("#received_amount").val(ra1.toFixed(2));
                                                                         } else
                                                                         {
                                                                         $("#discount").val(0);
                                                                         $("#received_amount").val(0);
                                                                         var ta = $('#updated_invoice').val();
                                                                         var ra = (parseFloat($(this).val()) / parseFloat(ta)) * 100;
                                                                         $("#discount").val(ra.toFixed(2));
                                                                         
                                                                         var ra1 = (parseFloat(ta) - parseFloat($(this).val()));
                                                                         $("#received_amount").val(ra1.toFixed(2));
                                                                         }
                                                                         } else
                                                                         {
                                                                         $("#discount").val(0);
                                                                         $("#received_amount").val(0);
                                                                         } */

                                                                        if ($(this).val() !== '')
                                                                        {
                                                                            $("#discount").val(0);
                                                                            $("#received_amount").val(0);
                                                                            var ta = $('#paid_amount').val();
                                                                            var ra = (parseFloat($(this).val()) / parseFloat(ta)) * 100;
                                                                            $("#discount").val(ra.toFixed(2));

                                                                            var ra1 = (parseFloat(ta) - parseFloat($(this).val()));
                                                                            $("#received_amount").val(ra1.toFixed(2));
                                                                        } else
                                                                        {
                                                                            // $("#discount").val(0);
                                                                            // $("#received_amount").val(0);
                                                                        }

                                                                        if ($(this).val() !== "")
                                                                        {
                                                                            var sf = $('select[name="payment_type"] option:selected').attr('class');
                                                                            sf = parseFloat($('#received_amount').val()) * (parseFloat(sf) / 100);
                                                                            sf = sf + parseFloat($('#received_amount').val());
                                                                            $('#service_fee').val(sf.toFixed(2));
                                                                        } else
                                                                        {
                                                                            // $('#service_fee').val(0);
                                                                        }

                                                                    });

                                                                    $('#flading').hide();

                                                                    var flag = 'invoice';


                                                                    //alert();
                                                                    var table = $('#eligibilitytable').DataTable({
                                                                        "aaSorting": [[17, "desc"]], // Sort by first column descending
                                                                        "lengthMenu": [10, 30, 50, 100, 200],
                                                                        "iDisplayLength": 10,
                                                                        stateSave: true,
                                                                        scrollY: "300px",
                                                                        scrollX: true,
                                                                        scrollCollapse: false,
                                                                        paging: true,
                                                                        "columnDefs": [
                                                                            {'visible': false, 'targets': [6, 13, 14, 17]}
                                                                        ],
                                                                        drawCallback: function (settings, json) {
                                                                            $('[data-toggle="tooltip"]').tooltip('update');
                                                                        },
                                                                        "ajax": {
                                                                            "type": "GET",
                                                                            "url": 'subinvoicedata?startDate=' + moment(start).format("YYYY-MM-DD") + "&endDate=" + moment(end).format("YYYY-MM-DD"),
                                                                            "contentType": 'application/json'
                                                                        },
                                                                        "columns": [
                                                                            {"data": function (data) {
                                                                                    return '<input type="checkbox" class = "check">';
                                                                                }, "orderable": false, "searchable": false, "name": "check"},

                                                                            {"data": function (data) {
                                                                                    if (data.updated_invoice === '0.00' && data.paid_amount === '0.00')
                                                                                    {
                                                                                        return "<a class='vu-idbole' target='_blank'  href= 'subinvoicedetails?invid=" + data.invoice_id + "&invdate=" + data.invoice_date + "&invstatus=" + data.status + "&net=" + data.fee + "&discount=" + data.adjustment + "&account_id=" + data.account_id + "'>" + data.invoice_id + "</a>";
                                                                                    } else if (data.updated_invoice === '0.00' && data.paid_amount !== '0.00')
                                                                                    {
                                                                                        return "<a class='vu-idbole' target='_blank'  href= 'subinvoicedetails?invid=" + data.invoice_id + "&invdate=" + data.invoice_date + "&invstatus=" + data.status + "&net=" + data.paid_amount + "&discount=" + data.adjustment + "&account_id=" + data.account_id + "'>" + data.invoice_id + "</a>";
                                                                                    } else if (data.updated_invoice !== '0.00' && data.paid_amount === '0.00')
                                                                                    {
                                                                                        return "<a class='vu-idbole' target='_blank'  href= 'subinvoicedetails?invid=" + data.invoice_id + "&invdate=" + data.invoice_date + "&invstatus=" + data.status + "&net=" + data.updated_invoice + "&discount=" + data.adjustment + "&account_id=" + data.account_id + "'>" + data.invoice_id + "</a>";
                                                                                    } else
                                                                                    {
                                                                                        return "<a class='vu-idbole' target='_blank'  href= 'subinvoicedetails?invid=" + data.invoice_id + "&invdate=" + data.invoice_date + "&invstatus=" + data.status + "&net=" + data.paid_amount + "&discount=" + data.adjustment + "&account_id=" + data.account_id + "'>" + data.invoice_id + "</a>";
                                                                                    }
                                                                                },
                                                                                "orderable": true, "searchable": true, "name": "invoice_id"},
                                                                            {"data": "account_name", "orderable": true, "searchable": true, "name": "account_name"},
                                                                            {"data": function (data) {
                                                                                    return "<a class='vu-idbole' href='#' onclick='callSubInvoiceReport(\"" + data.invoice_id + "\");'>" + data.account_no + "</a>";
                                                                                },
                                                                                "orderable": true, "searchable": true, "name": "account_no"},
                                                                            {"data": "fee", "orderable": true, "searchable": true, "name": "fee"},
                                                                            {"data": "paid_amount", "orderable": true, "searchable": true, "name": "paid_amount"},
                                                                            {"data": "invoice_date", "orderable": true, "searchable": true, "name": "invoice_date"},
                                                                            {"data": "adjustment", "orderable": true, "searchable": true, "name": "adjustment"},
                                                                            {"data": function (data) {

                                                                                    if (data.status === 'Due')
                                                                                    {
        <sec:authorize access="hasAnyRole('ROLE_ENTITY_ADMIN')">
            <sec:authorize access="hasAuthority('UPDATE_SUBSCRIPTION_INVOICE_PRIVILEGE')">
                                                                                        return "<a href='#' class='badge f-14 editbutton' data-toggle='tooltip' data-placement='top' title='Invoice'><span style='color: red; font-weight: bold;'>" + data.status + "</span></a>";
            </sec:authorize>
        </sec:authorize>
        <sec:authorize access="hasAnyRole('ROLE_CORP_PRACTICE,ROLE_CORP_ADMIN,ROLE_CORP_PROVIDER,
                       ROLE_GROUPCLINIC_PROVIDER,ROLE_GROUPCLINIC_ADMIN,ROLE_BILLING_ADMIN,
                       ROLE_PRACTICE_ADMIN,ROLE_PRACTICE_PROVIDER,ROLE_REFERING_PROVIDER')">
                                                                                        return "<span style='color: red; font-weight: bold;'>" + data.status + "</span>";
        </sec:authorize>
                                                                                    } else if (data.status === 'Written off')
                                                                                    {
        <sec:authorize access="hasAnyRole('ROLE_ENTITY_ADMIN')">
            <sec:authorize access="hasAuthority('UPDATE_SUBSCRIPTION_INVOICE_PRIVILEGE')">
                                                                                        return "<a href='#' class='badge f-14 editbutton' data-toggle='tooltip' data-placement='top' title='Invoice'><span style='color: blue; font-weight: bold;'>" + data.status + "</span></a>";
            </sec:authorize>
        </sec:authorize>
        <sec:authorize access="hasAnyRole('ROLE_CORP_PRACTICE,ROLE_CORP_ADMIN,ROLE_CORP_PROVIDER,
                       ROLE_GROUPCLINIC_PROVIDER,ROLE_GROUPCLINIC_ADMIN,ROLE_BILLING_ADMIN,
                       ROLE_PRACTICE_ADMIN,ROLE_PRACTICE_PROVIDER,ROLE_REFERING_PROVIDER')">
                                                                                        return "<span style='color: blue; font-weight: bold;'>" + data.status + "</span>";
        </sec:authorize>
                                                                                    } else
                                                                                    {
                                                                                        return "<span style='color: green; font-weight: bold;'>" + data.status + "</span>";
                                                                                    }
                                                                                },
                                                                                "orderable": true, "searchable": true, "name": "status"},
                                                                            {"data": "paid_date", "orderable": true, "searchable": true, "name": "paid_date"},
                                                                            {"data": function (data) {
                                                                                    var entered_by = data.entered_by;
                                                                                    entered_by = entered_by.substring(0, 15);
                                                                                    return  entered_by;
                                                                                },
                                                                                "orderable": true, "searchable": true, "name": "entered_by"},
                                                                            {"data": function (data) {
                                                                                    var updated_by = data.updated_by;
                                                                                    updated_by = updated_by.substring(0, 15);
                                                                                    return  updated_by;
                                                                                },
                                                                                "orderable": true, "searchable": true, "name": "updated_by"},

                                                                            {"data": function (data) {
                                                                                    var reference = data.reference;
                                                                                    reference = reference.substring(0, 10);
                                                                                    return  reference;
                                                                                },
                                                                                "orderable": true, "searchable": true, "name": "reference"},
                                                                            {"data": "reference", "orderable": true, "searchable": true, "name": "reference"},
                                                                            {"data": "invoiceid", "orderable": true, "searchable": true, "name": "invoiceid"},
                                                                            {"data": "updated_invoice", "orderable": true, "searchable": true, "name": "updated_invoice"},

                                                                            {"data": function (data) {
                                                                                    return  '<span1>' + data.chk_date + '</span1>' + data.created_date;
                                                                                },
                                                                                "orderable": true, "searchable": true, "name": "created_date"},
                                                                            {"data": "chk_date", "orderable": true, "searchable": false, "name": "chk_date"}
                                                                        ],
                                                                        dom: 'fBrtipl',
                                                                        buttons: [
                                                                            {
                                                                                extend: 'csv',
                                                                                text: '<img src="assets/images/excelicon.png">',
                                                                                className: 'dt-pdf-btn',
                                                                                titleAttr: 'Download list in excel Format',
                                                                                exportOptions: {
                                                                                    columns: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 13]
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
                                                                                    columns: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 13]
                                                                                }}],
                                                                        createdRow: function (row, data, dataIndex) {

                                                                            $(row).find('td:eq(16)').text(data["chk_date"].toString());

                                                                            if (data["entered_by"].toString() !== '') {
                                                                                $(row).find('td:eq(9)').attr('role', "tooltip");
                                                                                $(row).find('td:eq(9)').attr('data-microtip-position', "left");
                                                                                $(row).find('td:eq(9)').attr('data-microtip-size', "medium");
                                                                                $(row).find('td:eq(9)').attr('aria-label', data["entered_by"].toString());
                                                                            }
                                                                            if (data["updated_by"].toString() !== '') {
                                                                                $(row).find('td:eq(10)').attr('role', "tooltip");
                                                                                $(row).find('td:eq(10)').attr('data-microtip-position', "left");
                                                                                $(row).find('td:eq(10)').attr('data-microtip-size', "medium");
                                                                                $(row).find('td:eq(10)').attr('aria-label', data["updated_by"].toString());
                                                                            }

                                                                            if (data["reference"].toString() !== '') {
                                                                                $(row).find('td:eq(11)').attr('role', "tooltip");
                                                                                $(row).find('td:eq(11)').attr('data-microtip-position', "left");
                                                                                $(row).find('td:eq(11)').attr('data-microtip-size', "medium");
                                                                                $(row).find('td:eq(11)').attr('aria-label', data["reference"].toString());
                                                                            }


                                                                        }, footerCallback: function (tfoot, data, start, end, display) {
                                                                            var api = this.api(), data;
                                                                            // Remove the formatting to get integer data for summation
                                                                            var intVal = function (i) {
                                                                                return typeof i === 'string' ?
                                                                                        i.replace(/[\$,]/g, '') * 1 :
                                                                                        typeof i === 'number' ?
                                                                                        i : 0;
                                                                            };

                                                                            var INV = api
                                                                                    .column(4, {page: 'applied'})
                                                                                    .data()
                                                                                    .reduce(function (a, b) {
                                                                                        return intVal(a) + intVal(b);
                                                                                    }, 0);

                                                                            var PAID = api
                                                                                    .column(5, {page: 'applied'})
                                                                                    .data()
                                                                                    .reduce(function (a, b) {
                                                                                        return intVal(a) + intVal(b);
                                                                                    }, 0);

                                                                            var ADJ = api
                                                                                    .column(7, {page: 'applied'})
                                                                                    .data()
                                                                                    .reduce(function (a, b) {
                                                                                        return intVal(a) + intVal(b);
                                                                                    }, 0);
                                                                            // Total Paid       

                                                                            $(api.column(0).footer()).html(
                                                                                    " INV$: " + INV.toFixed(2) + " UNPAID$: " + (INV.toFixed(2) - (PAID + ADJ)).toFixed(2)

                                                                                    );
                                                                            $('#flading').hide();
                                                                        }
                                                                    });

                                                                    $('#pc-daterangepicker-6').daterangepicker({
                                                                        buttonClasses: ' btn',
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
                                                                            'Last 60 Days': [moment().subtract(59, 'days'), moment()],
                                                                            'Last 90 Days': [moment().subtract(89, 'days'), moment()],
                                                                            'Last 120 Days': [moment().subtract(119, 'days'), moment()],
                                                                            'Last 180 Days': [moment().subtract(179, 'days'), moment()],
                                                                            'This Month': [moment().startOf('month'), moment().endOf('month')],
                                                                            'Last Month': [moment().subtract(1, 'month').startOf('month'), moment().subtract(1, 'month').endOf('month')],
                                                                            'This Year': [moment().startOf('year'), moment().endOf('year')],
                                                                            'Last Year': [moment().subtract(1, 'year').startOf('year'), moment().subtract(1, 'year').endOf('year')]
                                                                        }
                                                                    }, function (startVal, endVal, label) {
                                                                        $('#flading').show();
                                                                        $('#pc-daterangepicker-6 .form-control').val(startVal.format('MM/DD/YYYY') + ' / ' + endVal.format('MM/DD/YYYY'));
                                                                        start = startVal.format('YYYY-MM-DD');
                                                                        end = endVal.format('YYYY-MM-DD');
                                                                        localStorage.setItem("subcreateddate", startVal.format("MM/DD/YYYY") + ' / ' + endVal.format("MM/DD/YYYY"));
                                                                        table.ajax.url("subinvoicedata?startDate=" + start + "&endDate=" + end).load();


                                                                    });




                                                                    $(document).on("click", "#eligibilitytable a.editbutton", function () {

                                                                        let tr = $(this).closest('tr');
                                                                        let a = tr.find('td:eq(1)').text();
                                                                        let b = tr.find('td:eq(4)').text();
                                                                        let c = tr.find('td:eq(12)').text();
                                                                        let d = tr.find('td:eq(11)').text();

                                                                        // alert(c);

                                                                        flag = 'invoice';
                                                                        $('#invid').val(a);
                                                                        $('#invoiceid').html('Inv#: ' + a);

                                                                        // alert($('#invid').val());
                                                                        $('#paid_amount').val(b);
                                                                        $('#paid_amount').attr('readonly', "true");
                                                                        $('#updated_invoice').val(c);
                                                                        $('#updated_invoice').attr('readonly', "true");

                                                                        $('#reference').val('');
                                                                        $('#reference').val(d);
                                                                        $('#btnclick1').click();

                                                                    });

                                                                    $('#eligibilitytable').find('thead').find('tr').each(function () {
                                                                        //   $(this).find('th:eq(6)').hide();
                                                                        //   $(this).find('th:eq(13)').hide();
                                                                        //   $(this).find('th:eq(14)').hide();

                                                                    });


                                                                    var checked = 0;
                                                                    var totalcheck = 0;

                                                                    $('#eligibilitytable tbody tr').each(function () {

                                                                        //  totalcheck++;
                                                                    });

                                                                    $('#eligibilitytable tbody').on('change', 'input[type="checkbox"]', function () {
                                                                        // $('#eligibilitytable tbody input[type=checkbox]').change(function () {
                                                                        //  alert('Muthu');

                                                                        totalcheck = table.column(2, {
                                                                            page: 'current'
                                                                        }).data().count();

                                                                        var isSelected = $(this).is(':checked');
                                                                        console.log(isSelected);

                                                                        if (isSelected) {
                                                                            checked++;
                                                                        } else
                                                                        {
                                                                            checked--;
                                                                        }
                                                                        console.log(checked);
                                                                        console.log(totalcheck);
                                                                        if (checked === totalcheck)
                                                                        {
                                                                            $('#headercheck').prop('checked', true);

                                                                        } else
                                                                        {
                                                                            $('#headercheck').prop('checked', false);

                                                                        }

                                                                    });

                                                                    $('#headercheck').change(function () {

                                                                        totalcheck = table.column(2, {
                                                                            page: 'current'
                                                                        }).data().count();

                                                                        checked = 0;

                                                                        var isSelected = $(this).is(':checked');

                                                                        if (isSelected) {
                                                                            $('#eligibilitytable tbody input[type=checkbox]').each(function () {
                                                                                $(this).prop('checked', true);
                                                                                if (checked <= totalcheck)
                                                                                {
                                                                                    checked++;
                                                                                }
                                                                            });

                                                                        } else
                                                                        {
                                                                            $('#eligibilitytable tbody input[type=checkbox]').each(function () {
                                                                                $(this).prop('checked', false);
                                                                                if (checked > 0)
                                                                                {
                                                                                    checked--;
                                                                                }
                                                                            });

                                                                        }
                                                                    });

                                                                    $('#payment_type').change(function () {
                                                                        //  alert($('select#payment_type').attr('class'));
                                                                        //  alert($('select[name="payment_type"] option:selected').attr('class')); 
                                                                        if ($(this).val() !== "")
                                                                        {
                                                                            var sf = $('select[name="payment_type"] option:selected').attr('class');
                                                                            sf = parseFloat($('#received_amount').val()) * (parseFloat(sf) / 100);
                                                                            sf = sf + parseFloat($('#received_amount').val());
                                                                            $('#service_fee').val(sf.toFixed(2));
                                                                        } else
                                                                        {
                                                                            $('#service_fee').val(0);
                                                                        }

                                                                    });


                                                                    $('#status_id').change(function () {

                                                                        if ($(this).val() === '1000')
                                                                        {

                                                                            $('#payment_type').val(4);
                                                                            $('#payment_type').attr('readonly', "false");
                                                                            $('#discount').removeAttr('readonly');
                                                                            $('#discount_amount').removeAttr('readonly');
                                                                        } else if ($(this).val() === '1003')
                                                                        {
                                                                            $('#payment_type').val(4);
                                                                            $('#payment_type').attr('readonly', "false");
                                                                            $('#discount').val(0.00);
                                                                            $('#discount').attr('readonly', "true");
                                                                            $('#discount_amount').val(0.00);
                                                                            $('#discount_amount').attr('readonly', "true");
                                                                            $('#received_amount').val(0.00);
                                                                            $('#received_amount').attr('readonly', "true");
                                                                        } else
                                                                        {

                                                                            $('#payment_type').val(4);
                                                                            $('#payment_type').attr('readonly', "false");
                                                                            $('#discount').removeAttr('readonly');
                                                                            $('#discount_amount').removeAttr('readonly');
                                                                            var pd = parseFloat($('#received_amount').val());
                                                                            //  alert(pd);
                                                                            if (pd === 0)
                                                                            {
                                                                                msgbox("Select appropriate amount", "Invoice Portal", "error");
                                                                            }
                                                                        }


                                                                    });


                                                                    $('#btnclick').click(function () {


                                                                        $('#account_id').val('');
                                                                        $('#account_id').trigger('change');
                                                                        $('#account_id').val('');
                                                                        $('#invoicedate').val('');
                                                                        $('.filter-option-inner-inner').html('Nothing selected');


                                                                        $('#modal-1').modal('show');
                                                                        //  $('.md-show').removeAttr("visibility", "hidden");
                                                                        $('.md-overlay').css("visibility", "visible");
                                                                        //    $('.md-show').css("visibility", "visible");
                                                                        //-----------------Model draggable-------------------
                                                                        if (!($('.modal.show.in').length)) {
                                                                            $('.modal-dialog').css({
                                                                                top: 60,
                                                                                left: 270,
                                                                            });
                                                                        }
                                                                        $('#modal-1').modal({
                                                                            backdrop: false,
                                                                            show: true
                                                                        });

                                                                        $('.modal-dialog').draggable({
                                                                            handle: ".modal-header",
                                                                            cursor: "move",
                                                                        });

                                                                    });


                                                                    $('#btnclick1').click(function () {
                                                                        if (flag === 'invoice')
                                                                        {

                                                                            $('#manualtag').show();

                                                                        }

                                                                        $('#payment_type').val('');
                                                                        $('#status_id').val('1000');
                                                                        $('#payment_type').val('4');
                                                                        $('#payment_type').attr('readonly', "false");
                                                                        $('#discount').removeAttr('readonly');
                                                                        $('#discount_amount').removeAttr('readonly');
                                                                        $('#received_amount').removeAttr('readonly');
                                                                        $("#discount").val('');
                                                                        $("#received_amount").val('');
                                                                        $("#discount_amount").val('');
                                                                        $('#paid_date').val('');
                                                                        $('#service_fee').val(0);
                                                                        $('#service_fee').attr('readonly', "true");

                                                                        $('#modal-2').modal('show');
                                                                        //  $('.md-show').removeAttr("visibility", "hidden");
                                                                        $('.md-overlay').css("visibility", "visible");
                                                                        //    $('.md-show').css("visibility", "visible");
                                                                        //-----------------Model draggable-------------------
                                                                        if (!($('.modal.show.in').length)) {
                                                                            $('.modal-dialog').css({
                                                                                top: 60,
                                                                                left: 270,
                                                                            });
                                                                        }
                                                                        $('#modal-2').modal({
                                                                            backdrop: false,
                                                                            show: true
                                                                        });

                                                                        $('.modal-dialog').draggable({
                                                                            handle: ".modal-header",
                                                                            cursor: "move",
                                                                        });

                                                                    });


                                                                    $('#model_close').click(function () {
                                                                        $('#modal-1').modal('hide');
                                                                        // div.setAttribute("style", "visibility: hidden; ");
                                                                        // $('.md-overlay').setAttribute('style', 'visibility: hidden; opacity: 0 !important;');
                                                                        $('.md-overlay').css("visibility", "hidden");
                                                                        // $('.md-overlay').attr('visibility', 'hidden');
                                                                    });


                                                                    $('#btnbulkinv').click(function () {


                                                                        $('#btnclick').click();

                                                                    });


                                                                    $('#btnupdateinv').click(function () {
                                                                        var invid = '';
                                                                        var invamt = 0;
                                                                        var table = $('#eligibilitytable').DataTable();
                                                                        var count = 0;
                                                                        var upd_inv_val = 0;
                                                                        var upd_inv_wt_val = 0;
                                                                        var result_upd_inv = 0;

                                                                        table.$('input[type="checkbox"]').each(function (index) {
                                                                            // If checkbox doesn't exist in DOM

                                                                            // If checkbox is checked
                                                                            if (this.checked) {
                                                                                // Create a hidden element

                                                                                //  alert(this);
                                                                                let tr = $(this).closest('tr');
                                                                                let paidid = tr.find('td:eq(7)').text()

                                                                                if (paidid !== 'Paid')
                                                                                {
                                                                                    invid = tr.find('td:eq(1)').text() + ',' + invid;
                                                                                    invamt = parseFloat(tr.find('td:eq(4)').text()) + parseFloat(invamt);
                                                                                    upd_inv_val = parseFloat(tr.find('td:eq(12)').text()) + parseFloat(invamt);
                                                                                    upd_inv_wt_val = parseFloat(tr.find('td:eq(12)').text()) + parseFloat(upd_inv_wt_val);
                                                                                    count++;
                                                                                }
                                                                            }
                                                                        });

                                                                        if (invamt <= upd_inv_val)
                                                                        {
                                                                            result_upd_inv = upd_inv_wt_val;
                                                                        } else
                                                                        {
                                                                            result_upd_inv = upd_inv_val;
                                                                        }

                                                                        //   alert(upd_inv_val);

                                                                        invid = invid.substring(0, invid.length - 1);

                                                                        var splitinv = invid.replaceAll(',', ' | ');
                                                                        splitinv = splitinv.substring(0, 20);
                                                                        if (splitinv.length > 20)
                                                                        {
                                                                            $('#invoiceid').html('Inv#: ' + splitinv + '...');
                                                                        } else
                                                                        {
                                                                            $('#invoiceid').html('Inv#: ' + splitinv);
                                                                        }
                                                                        $('#invoiceid').attr('title', invid);


                                                                        // console.log(brid);
                                                                        if (invid !== '')
                                                                        {
                                                                            //  alert(result_upd_inv.toFixed(2));
                                                                            flag = 'invoice';
                                                                            //  alert(invid);
                                                                            $('#invid').val(invid);

                                                                            // alert($('#invid').val());
                                                                            $('#reference').val('');
                                                                            $('#paid_amount').val(invamt.toFixed(2));

                                                                            $('#updated_invoice').val(result_upd_inv.toFixed(2));
                                                                            $('#paid_amount').attr('readonly', "true");
                                                                            $('#updated_invoice').attr('readonly', "true");

                                                                            $('#btnclick1').click();

                                                                        } else
                                                                        {
                                                                            msgbox("select atleast one Due / Written off invoice..!", "Invoice Portal", "warning");
                                                                        }

                                                                    });

                                                                    $('#btnreset').click(function () {

                                                                        var table = $('#eligibilitytable').DataTable();
                                                                        var count = 0;
                                                                        //  var upd_inv_val = 0;

                                                                        table.$('input[type="checkbox"]').each(function () {

                                                                            if (this.checked) {

                                                                                count++;
                                                                            }
                                                                        });

                                                                        if (count > 0)
                                                                        {
                                                                            ShowConfirmYesNo();
                                                                        } else
                                                                        {
                                                                            msgbox("select atleast one invoice..!", "Subscription Invoice Portal", "warning");
                                                                        }
                                                                    });


                                                                    $('#btndelete').click(function () {

                                                                        var table = $('#eligibilitytable').DataTable();
                                                                        var count = 0;
                                                                        var paidcount = 0;

                                                                        table.$('input[type="checkbox"]').each(function () {
                                                                            if (this.checked) {
                                                                                let tr = $(this).closest('tr');
                                                                                if (tr.find('td:eq(7)').text() !== "Due")
                                                                                {
                                                                                    paidcount++;
                                                                                }
                                                                                count++;
                                                                            }
                                                                        });

                                                                        if (count === paidcount)
                                                                        {
                                                                            msgbox("Paid / Writeoff invoices cannot be deleted..!", "Subscription Invoice Portal", "warning");

                                                                        } else
                                                                        {

                                                                            if (count > 0)
                                                                            {
                                                                                ShowDeleteConfirmYesNo();
                                                                            } else
                                                                            {
                                                                                msgbox("select atleast one invoice..!", "Subscription Invoice Portal", "warning");
                                                                            }
                                                                        }
                                                                    });


                                                                    var chk_acc_str = '';
                                                                    var chk_acc_id = '';

                                                                    $('#btnclose').click(function () {

                                                                        $('#invoicedate').val('');
                                                                        $('#invoicedate').change();

                                                                        $('.clear1').click();
                                                                        $('.clear2').click();
                                                                        $('.removeall').click();

                                                                        $('#bootstrap-duallistbox-nonselected-list_account_id option').each(function () {

                                                                            $(this).prop('selected', false);
                                                                            $(this).removeAttr('style');
                                                                            $(this).removeAttr('disabled');

                                                                        });
                                                                    });



                                                                    $('#invoicedate').change(function () {
                                                                        //alert($('#invoicedate').val());
                                                                        chk_acc_str = '';
                                                                        chk_acc_id = '';
                                                                        $('.removeall').click();
                                                                        var now = new Date($('#invoicedate').val());
                                                                        var month = '';
                                                                        var year = '';
                                                                        month = parseInt(now.getMonth() + 1);
                                                                        year = now.getFullYear();



                                                                        $.get('getaccountdetailsusinginvdate', {
                                                                            month: month,
                                                                            year: year
                                                                        }, function (response) {
                                                                            if (response.length > 0)
                                                                            {
                                                                                var txt = response;
                                                                                var obj = jQuery.parseJSON(txt);
                                                                                if (obj.length > 0)
                                                                                {
                                                                                    for (var i = 0; i < obj.length; i++)
                                                                                    {
                                                                                        console.log(obj[i].account_no);
                                                                                        chk_acc_str += obj[i].account_no + ',';

                                                                                    }

                                                                                    console.log(chk_acc_str);
                                                                                    chk_acc_str = chk_acc_str.slice(0, -1);
                                                                                    chk_acc_id = chk_acc_str.split(',');


                                                                                    $('#bootstrap-duallistbox-nonselected-list_account_id option').each(function () {

                                                                                        var check = jQuery.inArray($(this).val().toString(), chk_acc_id);
                                                                                        console.log($(this).val().toString());
                                                                                        console.log(check);
                                                                                        if (check === -1)
                                                                                        {
                                                                                            // $(this).prop('selected', false);
                                                                                            $(this).removeAttr('style');
                                                                                            $(this).removeAttr('disabled');
                                                                                            //$(this).remove();
                                                                                        } else
                                                                                        {
                                                                                            console.log($(this).val());
                                                                                            //    $(this).prop('selected', true);
                                                                                            $(this).attr('disabled', "true");
                                                                                            $(this).css('background', "#17977e");
                                                                                            $(this).css('color', "white");
                                                                                        }
                                                                                    });

                                                                                    $('.filter').focus();
                                                                                    //  $('[id=bootstrap-duallistbox-nonselected-list_account_id]').bootstrapDualListbox('refresh', true);
                                                                                    $('#flading').hide();
                                                                                } else
                                                                                {
                                                                                    $('#bootstrap-duallistbox-nonselected-list_account_id option').each(function () {
                                                                                        console.log($(this).val());
                                                                                        //  $(this).prop('selected', false);
                                                                                        $(this).removeAttr('disabled');
                                                                                        $(this).removeAttr('style');
                                                                                    });
                                                                                    $('.filter').focus();
                                                                                    $('#flading').hide();
                                                                                }
                                                                            } else
                                                                            {
                                                                                $('#flading').hide();
                                                                            }
                                                                        });

                                                                    });


                                                                    $('.move').click(function (obj) {

                                                                        $('#bootstrap-duallistbox-nonselected-list_account_id option').each(function () {

                                                                            var check = jQuery.inArray($(this).val().toString(), chk_acc_id);
                                                                            console.log($(this).val().toString());
                                                                            console.log(check);
                                                                            if (check === -1)
                                                                            {
                                                                                //  $(this).prop('selected', false);
                                                                                $(this).removeAttr('disabled');
                                                                                $(this).removeAttr('style');

                                                                                //$(this).remove();
                                                                            } else
                                                                            {
                                                                                console.log($(this).val());
                                                                                //  $(this).prop('selected', true);
                                                                                $(this).attr('disabled', "true");
                                                                                $(this).css('background', "#17977e");
                                                                                $(this).css('color', "white");
                                                                            }
                                                                        });

                                                                    });

                                                                    /*     $('#bootstrap-duallistbox-nonselected-list_account_id').dblclick(function (obj) {
                                                                     
                                                                     $('#bootstrap-duallistbox-nonselected-list_account_id option').each(function () {
                                                                     
                                                                     var check = jQuery.inArray($(this).val().toString(), chk_acc_id);
                                                                     console.log($(this).val().toString());
                                                                     console.log(check);
                                                                     if (check === -1)
                                                                     {
                                                                     $(this).prop('selected', false);
                                                                     $(this).attr('disabled', "false");
                                                                     $(this).removeAttr('style');
                                                                     
                                                                     //$(this).remove();
                                                                     } else
                                                                     {
                                                                     console.log($(this).val());
                                                                     $(this).prop('selected', true);
                                                                     $(this).attr('disabled', "true");
                                                                     $(this).css('background', "yellow");
                                                                     }
                                                                     });
                                                                     
                                                                     $('.filter').focus();
                                                                     
                                                                     });
                                                                     
                                                                     
                                                                     $('#bootstrap-duallistbox-selected-list_account_id').dblclick(function (obj) {
                                                                     
                                                                     $('#bootstrap-duallistbox-nonselected-list_account_id option').each(function () {
                                                                     
                                                                     var check = jQuery.inArray($(this).val().toString(), chk_acc_id);
                                                                     console.log($(this).val().toString());
                                                                     console.log(check);
                                                                     if (check === -1)
                                                                     {
                                                                     $(this).prop('selected', false);
                                                                     $(this).attr('disabled', "false");
                                                                     $(this).removeAttr('style');
                                                                     
                                                                     //$(this).remove();
                                                                     } else
                                                                     {
                                                                     console.log($(this).val());
                                                                     $(this).prop('selected', true);
                                                                     $(this).attr('disabled', "true");
                                                                     $(this).css('background', "yellow");
                                                                     }
                                                                     });
                                                                     
                                                                     $('.filter').focus();
                                                                     
                                                                     }); */

                                                                    $('.moveall').click(function (obj, e) {

                                                                        /* var selectedOpts = $('#bootstrap-duallistbox-nonselected-list_account_id option:not([disabled])');
                                                                         if (selectedOpts.length === 0) {
                                                                         alert("Nothing to move.");
                                                                         e.preventDefault();                                                                     
                                                                         $('.moveall').removeAttr("onclick");
                                                                         } */

                                                                        //  $('.removeall').click();

                                                                        $('#bootstrap-duallistbox-selected-list_account_id option').each(function () {

                                                                            var check = jQuery.inArray($(this).val().toString(), chk_acc_id);
                                                                            console.log($(this).val().toString());
                                                                            console.log(check);
                                                                            if (check === -1)
                                                                            {
                                                                                // $('#bootstrap-duallistbox-selected-list_account_id').append($(this).val());
                                                                                $(this).removeAttr('disabled');
                                                                                $(this).removeAttr('style');

                                                                            } else
                                                                            {
                                                                                console.log($(this).val());
                                                                                $(this).attr('disabled', "true");
                                                                                $(this).css('background', "#17977e");
                                                                                $(this).css('color', "white");
                                                                            }

                                                                        });



                                                                    });

                                                                    $('.remove').click(function (obj) {

                                                                        $('#bootstrap-duallistbox-nonselected-list_account_id option').each(function () {

                                                                            var check = jQuery.inArray($(this).val().toString(), chk_acc_id);
                                                                            console.log($(this).val().toString());
                                                                            console.log(check);
                                                                            if (check === -1)
                                                                            {
                                                                                //  $(this).prop('selected', false);
                                                                                $(this).removeAttr('disabled');
                                                                                $(this).removeAttr('style');

                                                                                //$(this).remove();
                                                                            } else
                                                                            {
                                                                                console.log($(this).val());
                                                                                // $(this).prop('selected', true);
                                                                                $(this).attr('disabled', "true");
                                                                                $(this).css('background', "#17977e");
                                                                                $(this).css('color', "white");
                                                                            }
                                                                        });


                                                                        $('#bootstrap-duallistbox-selected-list_account_id option').each(function () {

                                                                            var check = jQuery.inArray($(this).val().toString(), chk_acc_id);
                                                                            console.log($(this).val().toString());
                                                                            console.log(check);
                                                                            if (check === -1)
                                                                            {
                                                                                // $('#bootstrap-duallistbox-selected-list_account_id').append($(this).val());
                                                                                $(this).removeAttr('disabled');
                                                                                $(this).removeAttr('style');

                                                                            } else
                                                                            {
                                                                                console.log($(this).val());
                                                                                $(this).attr('disabled', "true");
                                                                                $(this).css('background', "#17977e");
                                                                                $(this).css('color', "white");
                                                                            }

                                                                        });


                                                                    });

                                                                    $('.removeall').click(function (obj) {

                                                                        $('#bootstrap-duallistbox-nonselected-list_account_id option').each(function () {

                                                                            var check = jQuery.inArray($(this).val().toString(), chk_acc_id);
                                                                            console.log($(this).val().toString());
                                                                            console.log(check);
                                                                            if (check === -1)
                                                                            {
                                                                                //  $(this).prop('selected', false);
                                                                                $(this).removeAttr('disabled');
                                                                                $(this).removeAttr('style');

                                                                                //$(this).remove();
                                                                            } else
                                                                            {
                                                                                console.log($(this).val());
                                                                                //  $(this).prop('selected', true);
                                                                                $(this).attr('disabled', "true");
                                                                                $(this).css('background', "#17977e");
                                                                                $(this).css('color', "white");
                                                                            }
                                                                        });

                                                                    });

                                                                    $('.clear1').click(function (obj) {

                                                                        $('#bootstrap-duallistbox-nonselected-list_account_id option').each(function () {

                                                                            var check = jQuery.inArray($(this).val().toString(), chk_acc_id);
                                                                            console.log($(this).val().toString());
                                                                            console.log(check);
                                                                            if (check === -1)
                                                                            {
                                                                                //  $(this).prop('selected', false);
                                                                                $(this).removeAttr('disabled');
                                                                                $(this).removeAttr('style');

                                                                                //$(this).remove();
                                                                            } else
                                                                            {
                                                                                console.log($(this).val());
                                                                                // $(this).prop('selected', true);
                                                                                $(this).attr('disabled', "true");
                                                                                $(this).css('background', "#17977e");
                                                                                $(this).css('color', "white");
                                                                            }
                                                                        });

                                                                        $('#bootstrap-duallistbox-selected-list_account_id option').each(function () {

                                                                            var check = jQuery.inArray($(this).val().toString(), chk_acc_id);
                                                                            console.log($(this).val().toString());
                                                                            console.log(check);
                                                                            if (check === -1)
                                                                            {
                                                                                // $('#bootstrap-duallistbox-selected-list_account_id').append($(this).val());
                                                                                $(this).removeAttr('disabled');
                                                                                $(this).removeAttr('style');

                                                                            } else
                                                                            {
                                                                                console.log($(this).val());
                                                                                $(this).attr('disabled', "true");
                                                                                $(this).css('background', "#17977e");
                                                                                $(this).css('color', "white");
                                                                            }

                                                                        });

                                                                    });


                                                                    $('.clear2').click(function (obj) {

                                                                        $('#bootstrap-duallistbox-nonselected-list_account_id option').each(function () {

                                                                            var check = jQuery.inArray($(this).val().toString(), chk_acc_id);
                                                                            console.log($(this).val().toString());
                                                                            console.log(check);
                                                                            if (check === -1)
                                                                            {
                                                                                //  $(this).prop('selected', false);
                                                                                $(this).removeAttr('disabled');
                                                                                $(this).removeAttr('style');

                                                                                //$(this).remove();
                                                                            } else
                                                                            {
                                                                                console.log($(this).val());
                                                                                //   $(this).prop('selected', true);
                                                                                $(this).attr('disabled', "true");
                                                                                $(this).css('background', "#17977e");
                                                                                $(this).css('color', "white");
                                                                            }
                                                                        });

                                                                        $('#bootstrap-duallistbox-selected-list_account_id option').each(function () {

                                                                            var check = jQuery.inArray($(this).val().toString(), chk_acc_id);
                                                                            console.log($(this).val().toString());
                                                                            console.log(check);
                                                                            if (check === -1)
                                                                            {
                                                                                // $('#bootstrap-duallistbox-selected-list_account_id').append($(this).val());
                                                                                $(this).removeAttr('disabled');
                                                                                $(this).removeAttr('style');

                                                                            } else
                                                                            {
                                                                                console.log($(this).val());
                                                                                $(this).attr('disabled', "true");
                                                                                $(this).css('background', "#17977e");
                                                                                $(this).css('color', "white");
                                                                            }

                                                                        });

                                                                    });

                                                                    $('.filter').keyup(function (obj) {

                                                                        $('#bootstrap-duallistbox-nonselected-list_account_id option').each(function () {

                                                                            var check = jQuery.inArray($(this).val().toString(), chk_acc_id);
                                                                            console.log($(this).val().toString());
                                                                            console.log(check);
                                                                            if (check === -1)
                                                                            {
                                                                                //   $(this).prop('selected', false);
                                                                                $(this).removeAttr('disabled');
                                                                                $(this).removeAttr('style');

                                                                                //$(this).remove();
                                                                            } else
                                                                            {
                                                                                console.log($(this).val());
                                                                                //   $(this).prop('selected', true);
                                                                                $(this).attr('disabled', "true");
                                                                                $(this).css('background', "#17977e");
                                                                                $(this).css('color', "white");
                                                                            }
                                                                        });


                                                                        $('#bootstrap-duallistbox-selected-list_account_id option').each(function () {

                                                                            var check = jQuery.inArray($(this).val().toString(), chk_acc_id);
                                                                            console.log($(this).val().toString());
                                                                            console.log(check);
                                                                            if (check === -1)
                                                                            {
                                                                                // $('#bootstrap-duallistbox-selected-list_account_id').append($(this).val());
                                                                                $(this).removeAttr('disabled');
                                                                                $(this).removeAttr('style');

                                                                            } else
                                                                            {
                                                                                console.log($(this).val());
                                                                                $(this).attr('disabled', "true");
                                                                                $(this).css('background', "#17977e");
                                                                                $(this).css('color', "white");
                                                                            }

                                                                        });

                                                                        // $('.clear1').focus();
                                                                    });



                                                                    $('#btncreateinvoice').click(function () {

                                                                        $('#flading').show();
                                                                        var flag = 0;

                                                                        var acno = $('select#account_id').val();

                                                                        if (acno.length === 0) {

                                                                            $('#account_id').focus();
                                                                            msgbox("Invalid Account#", "Subscription Invoice Portal", "error");
                                                                            flag = 2;
                                                                            $('#flading').hide();
                                                                        }

                                                                        if (!$('#invoicedate').val()) {
                                                                            $('#invoicedate').focus();
                                                                            msgbox("Select appropriate date", "Subscription Invoice Portal", "error");
                                                                            flag = 2;
                                                                            $('#flading').hide();
                                                                        }

                                                                        var now = new Date($('#invoicedate').val());
                                                                        var month = '';
                                                                        var year = '';
                                                                        month = parseInt(now.getMonth() + 1);
                                                                        year = now.getFullYear();
                                                                        var accountid = '';
                                                                        var exist_Inv = '';

                                                                        var chk_inv_id = [];
                                                                        for (var i = 0; i < acno.length; i++)
                                                                        {
                                                                            //  alert(acno[i]);
                                                                            chk_inv_id.push(('INV_' + acno[i] + '_' + month + year));
                                                                            accountid += acno[i] + ',';

                                                                        }

                                                                        accountid = accountid.slice(0, -1);


                                                                        var data = table.rows().data();
                                                                        //   console.log( 'Data', data);  
                                                                        for (var i = 0; i < data.length; i++)
                                                                        {
                                                                            var invid = data[i]["invoice_id"];
                                                                            var check = jQuery.inArray(data[i]["invoice_id"], chk_inv_id);
                                                                            //  console.log( 'Data', data[i]["invoice_id"]);  

                                                                            if (check !== -1)
                                                                            {
                                                                                $('#account_id').focus();
                                                                                exist_Inv += invid + ", ";
                                                                                flag = 1;
                                                                                $('#flading').hide();


                                                                            } else
                                                                            {
                                                                                $('#flading').hide();
                                                                            }

                                                                        }

                                                                        /*   $('#eligibilitytable tbody tr').each(function () {
                                                                         var invid = $(this).find('td:eq(1)').text();
                                                                         var check = jQuery.inArray(invid, chk_inv_id);
                                                                         
                                                                         if (check !== -1)
                                                                         {
                                                                         $('#account_id').focus();                           
                                                                         exist_Inv += invid + "<br>";
                                                                         flag = 1;
                                                                         $('#flading').hide();
                                                                         
                                                                         } else
                                                                         {
                                                                         $('#flading').hide();
                                                                         }
                                                                         
                                                                         }); */

                                                                        if (flag === 0)
                                                                        {

                                                                            $.ajax({
                                                                                url: "createSubinvoice",
                                                                                type: "post", //send it through get method
                                                                                data: {
                                                                                    invoice_date: $('#invoicedate').val(),
                                                                                    account_id: accountid

                                                                                },
                                                                                success: function (response) {
                                                                                    console.log(response);
                                                                                    msgbox("Invoice Saved", "Subscription Invoice Portal", "success");
                                                                                    //  table.ajax.url("subinvoicedata").load();
                                                                                    table.ajax.url("subinvoicedata?startDate=" + moment(start).format("YYYY-MM-DD") + "&endDate=" + moment(end).format("YYYY-MM-DD")).load();
                                                                                    $('#btnclose').click();
                                                                                    $('#flading').hide();
                                                                                    flag = 1;
                                                                                    $('#bootstrap-duallistbox-selected-list_account_id option:selected').each(function () {
                                                                                        $(this).remove();
                                                                                    });

                                                                                },
                                                                                error: function (err) {
                                                                                    console.log(err);
                                                                                    msgbox("Invoice Not Saved", "Subscription Invoice Portal", "error");
                                                                                    $('#btnclose').click();
                                                                                    $('#flading').hide();
                                                                                    $('#bootstrap-duallistbox-selected-list_account_id option:selected').each(function () {
                                                                                        $(this).remove();
                                                                                    });

                                                                                }
                                                                            });
                                                                        } else if (flag === 1)
                                                                        {
                                                                            /* $('#bootstrap-duallistbox-selected-list_account_id option:selected').each(function () {
                                                                             $(this).remove();
                                                                             }); */
                                                                            customnotify("top", "right", "", "danger", "", "", "Invoice Already Exist <br>" + exist_Inv);
                                                                            //  msgbox(exist_Inv + ": Invoice Already Exist..!", "Subscription Invoice Portal", "error");
                                                                            $('.removeall').click();
                                                                        }

                                                                    });


                                                                    $('#btnupdateinvoice').click(function () {


                                                                        $('#flading').show();
                                                                        //   alert($('#paid_amount').val());
                                                                        var flag = 0;
                                                                        if (!$('#paid_date').val()) {
                                                                            $('#paid_date').focus();
                                                                            msgbox("Select appropriate date", "Invoice Portal", "error");
                                                                            flag = 1;
                                                                            $('#flading').hide();
                                                                        }

                                                                        if (!$('#received_amount').val()) {
                                                                            $('#received_amount').focus();
                                                                            msgbox("Paid Amount is blank", "Invoice Portal", "error");
                                                                            flag = 1;
                                                                            $('#flading').hide();
                                                                        }

                                                                        if (!$('select#payment_type').val()) {
                                                                            $('#payment_type').focus();
                                                                            msgbox("Select the Payment Type", "Invoice Portal", "error");
                                                                            flag = 1;
                                                                            $('#flading').hide();
                                                                        }

                                                                        if (!$('select#status_id').val()) {
                                                                            $('#status_id').focus();
                                                                            msgbox("Select the Status", "Invoice Portal", "error");
                                                                            flag = 1;
                                                                            $('#flading').hide();
                                                                        }

                                                                        if (!$('#reference').val()) {
                                                                            $('#reference').focus();
                                                                            msgbox("Reference is blank", "Invoice Portal", "error");
                                                                            flag = 1;
                                                                            $('#flading').hide();
                                                                        }

                                                                        if ($('select#status_id').val() === '1002') {
                                                                            var pd = parseFloat($('#received_amount').val());
                                                                            if (pd === 0)
                                                                            {
                                                                                $('#status_id').focus();
                                                                                msgbox("Select appropriate amount", "Invoice Portal", "error");
                                                                                flag = 1;
                                                                                $('#flading').hide();
                                                                            }
                                                                        }

                                                                        // alert(flag);
                                                                        // $('#flading').hide();

                                                                        if (flag === 0)
                                                                        {
                                                                            $.ajax({
                                                                                url: "updatesubInvoice",
                                                                                type: "post", //send it through get method
                                                                                data: {
                                                                                    paid_date: $('#paid_date').val(),
                                                                                    paid_amount: $('#paid_amount').val(),
                                                                                    payment_type: $("select#payment_type").val(),
                                                                                    status_id: $("select#status_id").val(),
                                                                                    invid: $("#invid").val(),
                                                                                    reference: $("#reference").val(),
                                                                                    discount: $('#discount').val(),
                                                                                    discount_amount: $('#discount_amount').val()
                                                                                },
                                                                                success: function (response) {
                                                                                    console.log(response);
                                                                                    msgbox("Invoice Saved", "Invoice Portal", "success");
                                                                                    //   table.ajax.url("subinvoicedata").load();
                                                                                    table.ajax.url("subinvoicedata?startDate=" + moment(start).format("YYYY-MM-DD") + "&endDate=" + moment(end).format("YYYY-MM-DD")).load();
                                                                                    $('#btnclose1').click();
                                                                                    $('#flading').hide();
                                                                                    window.location.reload();
                                                                                },
                                                                                error: function (err) {
                                                                                    console.log(err);
                                                                                    msgbox("Invoice Not Saved", "Invoice Portal", "error");
                                                                                    $('#btnclose1').click();
                                                                                    $('#flading').hide();
                                                                                }
                                                                            });
                                                                        }

                                                                    });



                                                                    // Ticket Code Start


                                                                    function ShowTicketConfirmYesNo1() {
                                                                        AsyncTicketConfirmYesNo1(
                                                                                "Confirmation",
                                                                                "You are about to create multiple tickets, Do you wish to continue?",
                                                                                MyTicketYesFunction1,
                                                                                MyTicketNoFunction1
                                                                                );
                                                                    }

                                                                    function MyTicketYesFunction1() {
                                                                        // alert("Time to get off your workstation!");
                                                                        // $("#lblTestResult").html("You are hungry");
                                                                        $(".q-view").addClass("active");
                                                                    }
                                                                    function MyTicketNoFunction1() {
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

                                                                    function AsyncTicketConfirmYesNo1(title, msg, yesFn, noFn) {
                                                                        var $confirm = $("#modalConfirmYesNo1");
                                                                        $confirm.modal('show');
                                                                        $("#lblTitleConfirmYesNo1").html(title);
                                                                        $("#lblMsgConfirmYesNo1").html(msg);
                                                                        $("#btnYesConfirmYesNo1").off('click').click(function () {
                                                                            yesFn();
                                                                            $confirm.modal("hide");
                                                                        });
                                                                        $("#btnNoConfirmYesNo1").off('click').click(function () {
                                                                            noFn();
                                                                            $confirm.modal("hide");
                                                                        });
                                                                    }

                                                                    function AsyncTicketConfirmYesNo2(title, msg, yesFn, noFn) {
                                                                        var $confirm = $("#modalConfirmYesNo2");
                                                                        $confirm.modal('show');
                                                                        $("#lblTitleConfirmYesNo2").html(title);
                                                                        $("#lblMsgConfirmYesNo2").html(msg);
                                                                        $("#btnYesConfirmYesNo2").off('click').click(function () {
                                                                            yesFn();
                                                                            $confirm.modal("hide");
                                                                        });
                                                                        $("#btnNoConfirmYesNo2").off('click').click(function () {
                                                                            noFn();
                                                                            $confirm.modal("hide");
                                                                        });
                                                                    }



                                                                    $('#headercheck').prop('checked', false);

                                                                    function GetParameterValues(param) {
                                                                        var url = window.location.href.slice(window.location.href.indexOf('?') + 1).split('&');
                                                                        for (var i = 0; i < url.length; i++) {
                                                                            var urlparam = url[i].split('=');
                                                                            if (urlparam[0] === param) {
                                                                                return urlparam[1];
                                                                            }
                                                                        }
                                                                    }

                                                                    var notflag = 'N';
                                                                    var LoginUsername = '<%= session.getAttribute("LoginUsername")%>';
                                                                    var entity_user = '';
                                                                    var entity_user_to = '';
                                                                    var entity_user_cc = '';
                                                                    var entity_user_bcc = '';
                                                                    $('#raiseduser').text(LoginUsername);
                                                                    var entity = '<%= session.getAttribute("Entityid")%>';

                                                                    $(".overlay").click(function () {
                                                                        $(".q-view").removeClass("active");
                                                                    });

                                                                    var not_tid = GetParameterValues('tid');
                                                                    if (typeof (not_tid) !== 'undefined')
                                                                    {
                                                                        var table = $('#eligibilitytable').DataTable();
                                                                        table.column(14).search(not_tid).draw();
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
                                                                            if (checked > 1)
                                                                            {

                                                                                notflag = 'Y';
                                                                            }
                                                                            //   $('#raiseticket').show();
                                                                        } else
                                                                        {
                                                                            $('#eligibilitytable tbody input[type=checkbox]').each(function () {
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
                                                                                brid = tr.find('td:eq(14)').text() + ',' + brid;


                                                                            }

                                                                        });
                                                                        brid = brid.substring(0, brid.length - 1);
                                                                        //  alert(brid);
                                                                        console.log(brid);
                                                                        if (brid !== '')
                                                                        {
                                                                            if (notflag === 'Y')
                                                                            {
                                                                                ShowTicketConfirmYesNo1();
                                                                            } else
                                                                            {
                                                                                $(".q-view").addClass("active");
                                                                            }
                                                                            //  $('#btnclick').click(); -- Main

                                                                            //  $('#modal-1').modal('toggle');
                                                                            //  $('.md-overlay').css("visibility", "visible");

                                                                            $('#ticket_type_id').val("17");
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
                                                                                            console.log("entity_user_to: " + entity_user_to);
                                                                                            console.log("entity_user_cc: " + entity_user_cc);
                                                                                            console.log("entity_user_bcc: " + entity_user_bcc);

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
                                                                            msgbox("Select atleast one invoice(s)", "Ticket Portal", "warning");
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
                                                                    $("#btnticketsubmit").click(function () {
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
                                                                                type_of_ticket: "17",
                                                                                descriptions: $(".note-editable").html(),
                                                                                ticket_status: ticketstatus,
                                                                                assigned_to: $("select#assigned_to").val(),
                                                                                attachmentfile: fns,
                                                                                attachmentfilesize: sizetext,
                                                                                ticket_source: ticketsource,
                                                                                ticket_priority: $("select#ticket_priority_id").val(),
                                                                                segment: "T",
                                                                                currentdt: today,
                                                                                request_id: brid
                                                                            },
                                                                            success: function (response) {
                                                                                console.log(response);
                                                                                $("select#ticket_type_id").val('17');
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
                                                                            var strcontent = "Hi " + assignto + ", <br><br>" + "Type: " + tickettype + "<br>Source: " + tsource + "<br>Priority: " + ticketpriority + "<br> Assign To: " + assignto + "<br>Segment: INVOICE QUESTIONS [S]" + "<br><br>" + $(".note-editable").html();
                                                                            // Email Config
                                                                            $.post('eMail', {
                                                                                recipient: entity_user_to,
                                                                                subject: 'Ticket Raised from Service Invoice Form: ' + tickettype + ' : ' + tstatus + ' to ' + assignto,
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
<%-- 
    Document   : view_eligibility_request
    Created on : 07-Mar-2021, 1:55:15 pm
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
    <head>


        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Benefit List</title>
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
            #ddlpractice, #payorid{
                display :  none !important;
            }
        </style>

        <jsp:include page="includes/header.jsp"></jsp:include>
        <div class="pcoded-main-container">
            <div class="pcoded-wrapper">
                <div style="padding: 15px" class="pcoded-content">
                    <div class="pcoded-inner-content">
                        <div class="main-body">
                            <button id="btnclick" class="md-trigger" style="width:0px;height:0px;border:0;" data-modal="modal-1"></button>

                            <div id="exampleModalLive" style="background: rgba(0, 0, 0, 0.55);" class="modal fade" tabindex="-1"
                                 role="dialog" aria-labelledby="exampleModalLiveLabel" aria-hidden="true"  data-keyboard="false" data-backdrop="static">
                                <div class="modal-dialog modal-lg" role="document">
                                    <div class="modal-content">

                                        <div class="modal-header">
                                            <h5 class="modal-title" id="exampleModalLiveLabel">Downloading...</h5>                                                
                                        </div>

                                        <div class="modal-body">
                                            <div class="progress mb-4">
                                                <div class="progress-bar progress-bar-striped" id="downloadprogress" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="width: 0%"></div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <!-- <button id="btnnot" type="button" class="btn notifications btn-warning" confirm="Are your sure?" data-type="warning" data-from="top" data-align="right">Warning</button>-->
                            <!-- <button id="btnnot" type="button" class="second btn btn-primary" onclick="ShowConfirmYesNo();">clickme</button> -->

                            <div class="page-wrapper">

                                <div class="row">
                                    <!-- Zero config table start -->
                                    <div   class="col-sm-12">

                                        <div class="card">
                                            <div class="card-body">

                                                <div class="row">
                                                    <div class="col-md-3 p-l-0">
                                                        <div class="form-group">
                                                            <label class="col-form-label col col-30px">Filter By Date of Verification</label>
                                                            <div class='input-group pull-right' id='pc-daterangepicker-6' style="width: 245px;height: 33px;">
                                                                <input type='text' readonly="" class="form-control" placeholder="Select date range" />
                                                                <div class='input-group-append'>
                                                                    <span class="input-group-text"><i class="feather icon-calendar"></i></span>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-3 p-l-0">
                                                        <div class="form-group">
                                                            <label class="col-form-label col col-30px">Search For</label>
                                                            <select class="form-control js-example-placeholder-multiple" name="ddlsearch" id="ddlsearch" >
                                                                <option value = "0">Select</option>
                                                                <option value = "1">Patient Firstname</option> 
                                                                <option value = "2">Patient Lastname</option> 
                                                                <option value = "3">DOB</option> 
                                                                <option value = "4">DOS</option> 
                                                                <option value = "5">Practice</option> 
                                                                <option value = "6">Payor</option> 
                                                            </select>

                                                        </div>
                                                    </div>
	 <spring:eval expression="@environment.getProperty('db_url')" var="frontendUrl" />
                                                <input type="hidden" id="appurl" href="${frontendUrl}"></input>
                                                <spring:eval expression="@environment.getProperty('db_name')" var="frontenddb" />
                                                <input type="hidden" id="appdb" href="${frontenddb}"></input>
                                                 <spring:eval expression="@environment.getProperty('db_username')" var="frontendusername" />
                                                <input type="hidden" id="appuser" href="${frontendusername}"></input>
                                                 <spring:eval expression="@environment.getProperty('db_password')" var="frontendpass" />
                                                <input type="hidden" id="apppass" href="${frontendpass}"></input>
                                                    <div class="col-md-3 p-l-0">
                                                        <div class="form-group">
                                                            <label class="col-form-label col col-30px" style="color:white">Parameter</label>                                                             
                                                            <input type='text' id="para_Firstname" class="form-control" placeholder="First Name" style="display:none;" />
                                                            <input type='text' id="para_Lastname" class="form-control" placeholder="Last Name" style="display:none;" />
                                                            <input type='text' id="para_Dob" class="form-control" placeholder="DOB" style="display:none;" />
                                                            <input type='text' id="para_Dos" class="form-control" placeholder="DOS" style="display:none;" />
                                                            <select class="form-control js-example-placeholder-multiple col-sm-12" id="ddlpractice" data-placeholder="Select Practice"  name="ddlpractice"></select>
                                                            <select class="form-control js-example-placeholder-multiple"  data-placeholder="Select Insurance" id="payorid" name="payorid" >
                                                                <option value ="" >--Select--</option>
                                                            <c:forEach var="benefits" items="${payorlist}">
                                                                <option value = "${benefits.payorid}" >${benefits.payor}</option>
                                                            </c:forEach> 
                                                        </select>
                                                    </div>
                                                </div>

                                                <div class="col-md-3">
                                                    <div class="row form-group m-t-30" style="margin-top:31px;">   
                                                        <button id="search" class="btn btn-success" style="padding:5px 20px!important;">Search</button>
                                                        <button id="showall" class="btn btn-primary" style="padding:5px 20px!important;">Reset</button>
                                                    </div>
                                                </div>


                                            </div>  

                                            <hr class="hrtopbtm">


                                            <div class="dt-responsive table-responsive">
                                                <div class="tableFixHead1 tablehide">   
                                                    <table  id="eligibilitytable" width="98%" style="width: 0px;" class="table table-striped table-bordered nowrap display">
                                                        <thead>
                                                            <tr>
                                                                <th><input id="headercheck" type="checkbox" ></th>
                                                                <th class="vu-idbole">BR.ID</th>
                                                                <th>DOVer</th>
                                                                <th>Patient</th>
                                                                <th>Subscriber</th>
                                                                <th>DOB</th>
                                                                <th>memberid</th>
                                                                <th>Practice</th>
                                                                <th>Payor</th>
                                                                <th>DVOB</th>
                                                                <th>Status</th>
                                                                <th>PDF</th>
                                                                <th>rqid</th>
                                                                <th>benstatus</th>
                                                                <th>pid</th>                                                              
                                                                <th>groupnpi</th>                                                                
                                                                <th>gender</th>
                                                                <th>payorid</th>
                                                                <th>Practice</th>
                                                                <th>patient</th>
                                                                <th>Payor</th>
                                                                <th>dobb</th>
                                                                <th></th>
                                                            </tr>
                                                        </thead>
                                                        <tbody></tbody>
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

    <div class="modal fade" id="modal-1" role="dialog" data-backdrop="static" data-keyboard="false">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">

                <!-- Modal Header -->
                <div class="modal-header">
                    <h4 class="modal-title" id="span_Prov"></h4>
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>
                <!-- Modal body -->
                <form:form method="POST" action="updateev" modelAttribute="evupdate">
                    <div class="modal-body">
                        <div class="form-row">
                            <div class="col-md-4 mb-3">
                                <label for="ins_no">Member ID</label>
                                <input type="text" class="form-control" required name="ins_no" tabindex="1" id = "ins_no"    title="Member ID"   placeholder="Insurance No.">
                            </div>
                            <div class="col-md-4 mb-3">
                                <label class="form-label">Plan</label>
                                <input type="text" class="form-control" name="plan" tabindex="2"   id = "plan"  title="Plan" placeholder="plan" >
                            </div>
                            <div class="col-md-4 mb-3">
                                <label class="form-label">Group #</label>
                                <input type="text" class="form-control" required name="group_id" tabindex="3"  title="Group ID" id = "group_id"  placeholder="group_id">
                            </div>
                            <div class="col-md-4 mb-3">
                                <label class="form-label">DOB</label>
                                <input type="text" class="datefields form-control" required name="dob" tabindex="4"  title="DOB"  max="9999-12-31" id="dob" placeholder="DOB"   >
                            </div>

                            <div class="col-md-4 mb-3">
                                <label class="form-label" for="gender">Gender</label>   
                                <select class="form-control" required name="gender" tabindex="5"  title="Gender" id="ddlgender" >
                                    <option value = "" >--Select--</option>
                                    <c:forEach var="benefits" items="${genderlist}">
                                        <option value = ${benefits.genderid} >${benefits.gender}</option>
                                    </c:forEach>
                                </select>
                            </div>

                            <div class="col-md-4 mb-3">
                                <label class="form-label">Effective Date</label>
                                <input type="text" class="datefields form-control" required name="eff_date" tabindex="6"  title="Effective Date"  max="9999-12-31" id="eff_date" placeholder="Effect Date"   >
                            </div>
                            <div class="col-md-4 mb-3">
                                <label class="form-label" for="active">Status</label>
                                <select class="form-control" required id="active"  title="Status" tabindex="7"  name="active" >
                                    <option value = "" >--Select--</option>
                                    <c:forEach var="benefits" items="${benefitstatuslist}">
                                        <option value = ${benefits.benefitstatusid} >${benefits.benefitstatus}</option>
                                    </c:forEach>
                                </select>
                            </div>		

                            <div class="col-md-4 mb-3">
                                <label class="form-label" for="group_no"  style="display:none;">Group_no</label>

                                <input type="text" class="form-control"  style="display:none;" name="group_no" tabindex="11"   id = "group_no" placeholder="group_no" >
                                <label class="form-label" for="ddlinsurance">Primary Insurance</label>
                                <select class="form-control" required id="ddlinsurance" tabindex="8" name="ddlinsurance" >

                                </select>
                                <br>
                                <select class="form-control" tabindex="8" required id="state" name="state" >
                                    <option value = "fav" >--Favourite--</option>

                                </select> 
                            </div>
                            <div class="col-md-4 mb-3">
                                <label class="form-label">PCP Copay $</label>
                                <input type="number" class="form-control" required name="pcp_copay"  title="PCP Copay" tabindex="9" id ="pcp_copay"   placeholder="PCP Copay">
                                <!--                              <label class="form-label">Plan Id</label> -->
                                <input type="hidden" class="form-control"  id="brid" name="brid" tabindex="24" >
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="col-6">
                                <div class="card">
                                    <div class="card-block">
                                        <h5 class="card-title">Family</h5>

                                        <div class="row g-4">
                                            <div class="col-md-6 padding-zero">
                                                <label for="validationTooltipUsername">&nbsp;</label>
                                                <div class="input-group">
                                                    <div class="input-group-prepend">
                                                        <span class="input-group-text">$</span>
                                                    </div>
                                                    <input type="number" class="form-control" required name="fam_ded_rem" tabindex="10" id = "fam_ded_rem" title="Family Deductible Remaining" placeholder="Family Ded Rem">
                                                </div>
                                            </div>
                                            <div class="col-md-6 padding-zero">
                                                <label for="validationTooltipUsername">&nbsp;</label>
                                                <div class="input-group">
                                                    <div class="input-group-prepend">
                                                        <span class="input-group-text">$</span>
                                                    </div>
                                                    <input type="number" class="form-control" required name="coins" tabindex="11" id = "coins"   title="Family Co-Insurance" placeholder="Co Ins Fam">
                                                </div>
                                            </div>
                                            <div class="col-md-6 padding-zero">
                                                <label for="validationTooltipUsername">&nbsp;</label>
                                                <div class="input-group">
                                                    <div class="input-group-prepend">
                                                        <span class="input-group-text">$</span>
                                                    </div>
                                                    <input type="number" class="form-control" required name="copay" tabindex="12"  id="copay"  title="Family Co-Payment" placeholder="Co Pay Fam">
                                                </div>
                                            </div>
                                            <div class="col-md-6 padding-zero">
                                                <label for="validationTooltipUsername">&nbsp;</label>
                                                <div class="input-group">
                                                    <div class="input-group-prepend">
                                                        <span class="input-group-text">$</span>
                                                    </div>
                                                    <input type="number" class="form-control" required name="fam_ded_cal" tabindex="13" id = "fam_ded_cal"  title="Family Deductible Calender Year"  placeholder="Fam Ded Cal">
                                                </div>
                                            </div>
                                            <div class="col-md-6 padding-zero">
                                                <label for="validationTooltipUsername">&nbsp;</label>
                                                <div class="input-group">
                                                    <div class="input-group-prepend">
                                                        <span class="input-group-text">$</span>
                                                    </div>
                                                    <input type="number" class="form-control" required name="fam_oop_rem" tabindex="14" id ="fam_oop_rem"  title="Family OOP Remaining"   placeholder="Fam OOP Rem.">
                                                </div>
                                            </div>
                                            <div class="col-md-6 padding-zero">
                                                <label for="validationTooltipUsername">&nbsp;</label>
                                                <div class="input-group">
                                                    <div class="input-group-prepend">
                                                        <span class="input-group-text">$</span>
                                                    </div>
                                                    <input type="number" class="form-control" required name="fam_oop_cal" tabindex="15" id ="fam_oop_cal"  title="Family OOP Calender Year"  placeholder="Fam OOP Cal">
                                                </div>
                                            </div>

                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-6">
                                <div class="card">
                                    <div class="card-block" style="border-style:none;">
                                        <h5 class="card-title">Individual</h5>

                                        <div class="row g-4">

                                            <div class="col-md-6 padding-zero">
                                                <label for="validationTooltipUsername">&nbsp;</label>
                                                <div class="input-group">
                                                    <div class="input-group-prepend">
                                                        <span class="input-group-text">$</span>
                                                    </div>
                                                    <input type="number" class="form-control" required name="ind_ded_rem" tabindex="16"  id="ind_ded_rem"  title="Individual Deductible Remaining" placeholder="Indiv. Ded Rem.">
                                                </div>
                                            </div>
                                            <div class="col-md-6 padding-zero">
                                                <label for="validationTooltipUsername">&nbsp;</label>
                                                <div class="input-group">
                                                    <div class="input-group-prepend">
                                                        <span class="input-group-text">$</span>
                                                    </div>
                                                    <input type="number" class="form-control" required name="coins_ind" tabindex="17" id ="coins_ind"  title="Individual Co-Insurance"   placeholder="Co Ins Ind">
                                                </div>
                                            </div>
                                            <div class="col-md-6 padding-zero">
                                                <label for="validationTooltipUsername">&nbsp;</label>
                                                <div class="input-group">
                                                    <div class="input-group-prepend">
                                                        <span class="input-group-text">$</span>
                                                    </div>
                                                    <input type="number" class="form-control" required name="copay_ind" tabindex="18" id ="copay_ind"  title="Individual Co-Payment Remaining"   placeholder="Co Pay Ind Rem">
                                                </div>
                                            </div>
                                            <div class="col-md-6 padding-zero">
                                                <label for="validationTooltipUsername">&nbsp;</label>
                                                <div class="input-group">
                                                    <div class="input-group-prepend">
                                                        <span class="input-group-text">$</span>
                                                    </div>
                                                    <input type="number" class="form-control" required name="ind_ded_cal" tabindex="19"  id="ind_ded_cal"  title="Individual Deductible Calender Year" placeholder="Ind Ded Cal">
                                                </div>
                                            </div>
                                            <div class="col-md-6 padding-zero">
                                                <label for="validationTooltipUsername">&nbsp;</label>
                                                <div class="input-group">
                                                    <div class="input-group-prepend">
                                                        <span class="input-group-text">$</span>
                                                    </div>
                                                    <input type="number" class="form-control" required name="ind_oop_rem" tabindex="20" id ="ind_oop_rem"  title="Individual OOP Remaining"   placeholder="Ind OOP Rem">
                                                </div>
                                            </div>
                                            <div class="col-md-6 padding-zero">
                                                <label for="validationTooltipUsername">&nbsp;</label>
                                                <div class="input-group">
                                                    <div class="input-group-prepend">
                                                        <span class="input-group-text">$</span>
                                                    </div>
                                                    <input type="number" class="form-control" required name="ind_oop_cal" tabindex="21" id ="ind_oop_cal"  title="Individual OOP Calender Year"  placeholder="Ind OOP Cal">
                                                </div>
                                            </div>


                                        </div>

                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-6">
                                    <textarea  rows="3" cols="90" class="form-control" required name="comments" tabindex="22" id ="comments"  title="Comments"   placeholder="Comments"></textarea>
                                </div>
                                <div class="col-3">
                                    <button type="submit" tabindex="23"  class="btn btn-rounded btn-greenadd btn-block">Submit</button>
                                </div>
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
        <div id="dvTable"></div>
    </div>



    <jsp:include page="includes/footer.jsp"></jsp:include>
        <script src="assets/js/plugins/select2.full.min.js"></script>
        <script src="assets/js/pages/form-select-custom.js"></script>


        <script type="text/javascript">

            $(document).ready(function () {

                $('#para_Firstname').hide();
                $('#para_Lastname').hide();
                $('#para_Dob').hide();
                $('#para_Dos').hide();
                $('#ddlpractice').next(".select2-container").hide();
                $('#payorid').next(".select2-container").hide();
                var entityId = '<%= session.getAttribute("Entityid")%>';
                var practiceid = '<%=session.getAttribute("practiceid")%>';
                var tableJSONData = '';
                if (entityId !== '') {
                    $.ajax({
                        url: "practicedetailswtentityid",
                        type: "get", //send it through get method
                        data: {
                            Entityid: entityId
                        },
                        success: function (response) {
                            var select = $('#ddlpractice');
                            select.find('option').remove();
                            $('<option>').val("").text("--Select--").appendTo(select);
                            var txt = response;
                            var obj = jQuery.parseJSON(txt);
                            if (obj.length > 0) {
                                for (var i = 0; i < obj.length; i++) {
                                    // var sv = value.split('~');
                                    $('<option>').val(obj[i].practice_id).text(obj[i].name).appendTo(select);
                                }
                                // $('#ddlpractice').val(pra);

                                if (practiceid > 0) {
                                    $('#ddlpractice').val(practiceid);
                                    $('#ddlpractice').trigger('change');
                                    $('#ddlpractice').attr('disabled', "true");
                                }
                            }
                        }
                    });
                }

                $('#ddlsearch').change(function (event) {

                    if ($('#ddlsearch').val() === '1') {
                        $('#para_Firstname').show();
                        $('#para_Lastname').hide();
                        $('#para_Dob').hide();
                        $('#para_Dos').hide();
                        $('#ddlpractice').next(".select2-container").hide();
                        $('#payorid').next(".select2-container").hide();
                        $('#para_Firstname').val('');
                    } else if ($('#ddlsearch').val() === '2') {
                        $('#para_Firstname').hide();
                        $('#para_Lastname').show();
                        $('#para_Dob').hide();
                        $('#para_Dos').hide();
                        $('#ddlpractice').next(".select2-container").hide();
                        $('#payorid').next(".select2-container").hide();
                        $('#para_Lastname').val('');
                    } else if ($('#ddlsearch').val() === '3') {
                        $('#para_Firstname').hide();
                        $('#para_Lastname').hide();
                        $('#para_Dob').show();
                        $('#para_Dos').hide();
                        $('#ddlpractice').next(".select2-container").hide();
                        $('#payorid').next(".select2-container").hide();
                        $('#para_Dob').val('');
                    } else if ($('#ddlsearch').val() === '4') {
                        $('#para_Firstname').hide();
                        $('#para_Lastname').hide();
                        $('#para_Dob').hide();
                        $('#ddlpractice').next(".select2-container").hide();
                        $('#payorid').next(".select2-container").hide();
                        $('#para_Dos').show();
                        $('#para_Dos').val('');
                    } else if ($('#ddlsearch').val() === '5') {
                        $('#para_Firstname').hide();
                        $('#para_Lastname').hide();
                        $('#para_Dob').hide();
                        $('#ddlpractice').next(".select2-container").show();
                        $('#payorid').next(".select2-container").hide();
                        $('#para_Dos').hide();
                        if (practiceid > 0) {
                            $('#ddlpractice').val(practiceid);
                            $('#ddlpractice').trigger('change');
                            $('#ddlpractice').attr('disabled', "true");
                        } else {
                            $('#ddlpractice').val('').change();
                        }
                    } else if ($('#ddlsearch').val() === '6') {
                        $('#para_Firstname').hide();
                        $('#para_Lastname').hide();
                        $('#para_Dob').hide();
                        $('#ddlpractice').next(".select2-container").hide();
                        $('#payorid').next(".select2-container").show();
                        $('#para_Dos').hide();
                        $('#payorid').val('').change();
                    } else {
                        $('#para_Firstname').hide();
                        $('#para_Lastname').hide();
                        $('#para_Dob').hide();
                        $('#ddlpractice').next(".select2-container").hide();
                        $('#ddlpractice').val('').change();
                        $('#payorid').next(".select2-container").hide();
                        $('#payorid').val('').change();
                        $('#para_Dos').hide();
                    }
                });
                $('#ddlsearch').val(0).change();
                var searchColumn = '';
                var searchValue = '';
                var innerSearchValue = '';
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
                var evdt = localStorage.getItem("evdate");
                var start, end;
                if (evdt === null) {
                    start = moment().subtract(10, 'year');
                    //start = moment().subtract(1, 'month').startOf('month');
                    end = moment();
                    $('#pc-daterangepicker-6 .form-control').val(start.format('MM/DD/YYYY') + ' / ' + end.format('MM/DD/YYYY'));
                } else {
                    var currentVal = evdt;
                    start = currentVal.split(" / ")[0];
                    end = currentVal.split(" / ")[1];
                    $('#pc-daterangepicker-6 .form-control').val(moment(start).format("MM/DD/YYYY") + ' / ' + moment(end).format("MM/DD/YYYY"));
                    localStorage.setItem("evdate", moment(start).format("MM/DD/YYYY") + ' / ' + moment(end).format("MM/DD/YYYY"));
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
                var isAllSelected = 0;
                var selected = [];
                function MyNoFunction() {
                    $(".overlay").click();
                    $('#headercheck').prop('checked', false);
                    $('#eligibilitytable tbody input[type=checkbox]').each(function () {
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
                $('#headercheck').prop('checked', false);
                //   $('#btnnot').hide();
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
                $(".hd-body").click(function () {
                });
                $(".overlay").click(function () {
                    $(".q-view").removeClass("active");
                });
                $('#flading').hide();
                var flag = 'manual';
                var brid = '';
                $('#brid').hide();
                // $('#raiseticket').hide();
                var glo_pracid = '';
                var total = 0;
                var inProgressFlag = 0;
                var refreshControl = null;
                function replaceHiphen(str)
                {
                    str = str.replaceAll('-', '/');
                    return str.trim();
                }
                function exportOption() {
                    innerSearchValue = table.search();
                    $.ajax({
                        url: 'eligibilitydata',
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
                            csvContent += "Request_ID,DOVER,Patient,Subscriber,DOB,MemberId,Practice,InsuranceType,Payor,DVOB,Status\n";
                            var obj = jQuery.parseJSON(data.exportData);
                            $.each(obj, function (key, value) {
                                var row = [
                                    //decodeURI(record.patient)
                                    value.requestid,
                                    value.dateofbenefit,
                                    value.patient,
                                    value.subscriber,
                                    value.dob,
                                    value.mid,
                                    value.practicename,
                                    value.insurancetype,
                                    value.payor,
                                    value.dos,
                                    value.benefitstatus
                                ];
                                var escapedRow = row.map(function (field) {
                                    return '"' + field + '"';
                                });
                                csvContent += escapedRow.join(",") + "\n";
                            });
                            var link = document.createElement("a");
                            link.setAttribute("href", encodeURI(csvContent));
                            link.setAttribute("download", "BenefitList.csv");
                            link.style.display = "none";
                            document.body.appendChild(link);
                            link.click();
                            document.body.removeChild(link);
                            $('#flading').hide();
                            msgbox("Success", "", "success");
                            MyNoFunction();
                        },
                        error: function (xhr, status, error) {
                            $('#flading').hide();
                            msgbox("Failed", "", "error");
                            MyNoFunction();
                        }
                    });
                    return data.exportData;
                }


                $('[id*=eligibilitytable] tbody').on('click', 'td:first-child', function () {
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

                $('[id*=eligibilitytable] thead').on('click', 'th:first-child', function () {
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
                  //  alert("selected.length: " + selected.length);
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
                ;
                var selectedRecords = [];
                function exportSelection() {
                    selectedRecords = [];
                    for (var i = 0; i < selected.length; i++) {
                        selectedRecords.push(Object.values(currentTableResponse)[selected[i]]);
                    }
                    var csvContent = "data:text/csv;charset=utf-8,";
                    csvContent += "Request_ID,DOVER,Patient,Subscriber,DOB,MemberId,Practice,InsuranceType,Payor,DVOB,Status\n";
                    $.each(selectedRecords, function (key, value) {
                        var row = [
                            //decodeURI(record.patient)
                            value.requestid,
                            value.dateofbenefit,
                            value.patient,
                            value.subscriber,
                            value.dob,
                            value.mid,
                            value.practicename,
                            value.insurancetype,
                            value.payor,
                            value.dos,
                            value.benefitstatus
                        ];
                        var escapedRow = row.map(function (field) {
                            return '"' + field + '"';
                        });
                        csvContent += escapedRow.join(",") + "\n";
                    });
                    var link = document.createElement("a");
                    link.setAttribute("href", encodeURI(csvContent));
                    link.setAttribute("download", "BenefitList.csv");
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
                    csvContent += "Request_ID,DOVER,Patient,Subscriber,DOB,MemberId,Practice,InsuranceType,Payor,DVOB,Status\n";
                    $.each(currentTableResponse, function (key, value) {
                        var row = [
                            value.requestid,
                            value.dateofbenefit,
                            value.patient,
                            value.subscriber,
                            value.dob,
                            value.mid,
                            value.practicename,
                            value.insurancetype,
                            value.payor,
                            value.dos,
                            value.benefitstatus
                        ];
                        var escapedRow = row.map(function (field) {
                            return '"' + field + '"';
                        });
                        csvContent += escapedRow.join(",") + "\n";
                    });
                    var link = document.createElement("a");
                    link.setAttribute("href", encodeURI(csvContent));
                    link.setAttribute("download", "BenefitList.csv");
                    link.style.display = "none";
                    document.body.appendChild(link);
                    link.click();
                    document.body.removeChild(link);
                    $('#flading').hide();
                    msgbox("Success", "", "success");
                    MyNoFunction();
                    return data.exportData;
                }

                var table = $('#eligibilitytable').DataTable({
                    "aaSorting": [], // Sort by first column descending
                    "lengthMenu": [10, 30, 50, 100, 200, 500, 1000],
                    "pageLength": 100,
                    stateSave: true,
                    scrollY: "300px",
                    scrollX: true,
                    scrollCollapse: false,
                    paging: true,
                    // fixedHeader: true,
                    "oLanguage": {
                        "sEmptyTable": "No Data..."
                    },
                    "columnDefs": [
                        {'visible': false, 'targets': [12, 13, 14, 15, 16, 17, 18, 19, 20, 21]},
                        {"bSortable": false, "aTargets": [0, 10]}
                    ],
                    drawCallback: function (settings, json) {
                        $('[data-toggle="tooltip"]').tooltip('update');
                        //$("#list-of-product tbody tr > td").tooltip('hide');
                    },
                    processing: true,
                    serverSide: true,
                    "ajax": {
                        "type": "POST",
                        "url": 'eligibilitydata',
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
                            }, "orderable": false, "searchable": false, "name": "check"}, // 0
                        {"data": function (data) {
                                return "<a class='vu-idbole' target='_blank' href='request?rid=" + data.requestid + "'>" + data.requestid + "</a>";
                            },
                            "orderable": true, "searchable": true, "name": "requestid"}, // 1
                        {"data": "dobb", "orderable": true, "searchable": true, "name": "dobb"}, // 2
                        {"data": "patient", "orderable": true, "searchable": true, "name": "patient"}, //3
                        {"data": "subscriber", "orderable": true, "searchable": true, "name": "subscriber"}, //4
                        {"data": "dob", "orderable": true, "searchable": false, "name": "dob"}, // 5
                        {"data": "mid", "orderable": true, "searchable": false, "name": "mid"}, //6
                        {"data": "spracticename", "orderable": true, "searchable": true, "name": "practicename"}, //7
                        {"data": "spayor", "orderable": true, "searchable": true, "name": "payor"}, // 8
                        {"data": "doss", "orderable": true, "searchable": true, "name": "doss"}, // 9
                        {"data": function (data) {
                                if (data.benefitstatus === 'Eligible'
                                        || data.benefitstatus === 'Active'
                                        || data.benefitstatus === 'Active-Full Risk Capitation'
                                        || data.benefitstatus === 'Active-Services Capitated'
                                        || data.benefitstatus === 'Active-Services capitated to PCP'
                                        || data.benefitstatus === 'Active-Pending Activation'
                                        || data.benefitstatus === 'Active-RR')
                                {
                                    return "<span><a  class= 'badge badge-light-primary f-16'  href= 'eligibilityresponse?rid=" + data.requestid + "'><span style='color: green; font-weight: bold;'>" + data.benefitstatus + "</span></a></span>";
                                } else if (data.benefitstatus === 'Cannot Process')
                                {
                                    return "<a class= 'badge badge-light-warning f-16'   href= 'eligibilityresponse?rid=" + data.requestid + "'><span  style='color: red; font-weight: bold;'>" + data.benefitstatus + "</span></a>";
                                } else if (data.benefitstatus === 'Check Details')
                                {
                                    return "<a class= 'badge badge-light-warning f-16'  href= 'eligibilityresponse?rid=" + data.requestid + "'><span  style='color: blue; font-weight: bold;'>" + data.benefitstatus + "</span></a>";
                                } else if (data.benefitstatus === '271_Non-Matching_EB_SEG'
                                        || data.benefitstatus === 'INactive'
                                        || data.benefitstatus === 'InActive-Pending Update'
                                        || data.benefitstatus === 'InActive-Pending Investigation'
                                        || data.benefitstatus === 'Error'
                                        || data.benefitstatus === 'InActive'
                                        || data.benefitstatus === '271_Error'
                                        || data.benefitstatus === 'incomplete'
                                        || data.benefitstatus === 'OA Error')
                                {
                                    return "<a class= 'badge badge-light-warning f-16'  href= 'eligibilityresponse?rid=" + data.requestid + "'><span  style='color: red; font-weight: bold;'>" + data.benefitstatus + "</span></a>";
                                } else if (data.benefitstatus === 'manual')
                                {
                                    return "<span><a  class= 'badge badge-light-warning f-16'  href= '#'><span style='color: #7E858E; font-weight: bold;'>" + data.benefitstatus + "</span></a></span>";
                                }
                                //alert(data.running_status );
                                if (data.runstatus === 'completed' || data.runstatus === 'started') {
                                    inProgressFlag += 1;
                                    if (inProgressFlag === 1) {
                                        refreshControl = setInterval('getStatus(' + data.requestid + ')', 2500);
                                    }
                                    return '<span  id="runst_' + data.requestid + '"><button class="btn btn-sm btn-info" style="margin-bottom: 0px; padding: 1px 12px;"  type="button" ><span class="spinner-border spinner-border-sm" role="status"></span><span id="statustest_' + data.requestid + '">' + data.benefitstatus + '</span></button></span>'; //data.benefitstatus; href='generate?requestid=" + data.requestid + "'
                                }
                                return "<span><a  class= 'badge badge-light-secondary f-16' href= '#'><span style='color: #7E858E; font-weight: bold;'>" + data.benefitstatus + "</span></a></span>";
                            }, "orderable": true, "searchable": true, "name": "action"}, // 10
                        {"data": function (data) {
                                return "<center><a id=runac_" + data.requestid + " onclick='showLoading(" + data.requestid + ",\"" + data.lname + ', ' + data.fname + "\")' href='#' class='btn-icon' style='justify-content: center;'><i class='fas fa-download' style='font-size:15px; margin:0 3px;color: #19BCBF;'></i></a></center>";
                            }, "orderable": false, "searchable": false, "name": "benefitstatus"}, // 11
                        {"data": "requestid", "orderable": true, "searchable": true, "name": "requestid2", "visible": false}, // 12
                        {"data": function (data) {
                                return "" + data.benefitstatus;
                            }, "orderable": true, "searchable": true, "name": "benefitstatus3", "visible": false}, // 13
                        {"data": "practiceid", "orderable": true, "searchable": false, "name": "practiceid"}, // 14                       
                        {"data": "group_npi", "orderable": true, "searchable": false, "name": "group_npi"}, // 15                       
                        {"data": "genderid", "orderable": true, "searchable": false, "name": "genderid"}, // 16
                        {"data": "payorid", "orderable": true, "searchable": false, "name": "payorid"}, // 17
                        {"data": "practicename", "orderable": true, "searchable": false, "name": "practicename"}, // 18
                        {"data": "patient", "orderable": true, "searchable": false, "name": "patient"}, // 19
                        {"data": "payor", "orderable": true, "searchable": true, "name": "payor"}, // 20
                        {"data": "dateofbenefit", "orderable": true, "searchable": true, "name": "dateofbenefit"}, //21
                        {"data": function (data) {
                                if (data.flag === 'Y') {
                                    //  return data.flag;
        <sec:authorize access="hasAuthority('DELETE_DOCUMENT_PRIVILEGE')">
                                    return "<span><a id='deleteev' role='tooltip' data-microtip-position='left' title='' aria-label='Delete' class='btn-icon deleteev'><i class='fas fa-trash-alt' style='font-size:15px; margin:0 3px;color:#FF425C;'></i></a></span>";
        </sec:authorize>
                                } else if (data.flag === 'N') {
        <sec:authorize access="hasAuthority('RECOVER_DOCUMENT_PRIVILEGE')">
                                    //  return data.flag;
                                    return "<span> <a id='recoverev' class='btn-icon recoverev' role='tooltip' data-microtip-position='left' title='' aria-label='Recover'  ><i class='mdi mdi-restore' style='font-size:18px; margin:0 3px;color:#FF425C;'></i></a></span>";
        </sec:authorize>
                                }
                            }, "orderable": false, "searchable": false, "name": "flag"} // 22
                    ],
                    dom: 'fBrtipl',
                    buttons: [
                        {
                            extend: 'csv',
                            text: '<img src="assets/images/excelicon.png">',
                            className: 'dt-pdf-btn',
                            titleAttr: 'Download list in excel Format',
                            exportOptions: {
                                columns: [1, 20, 3, 17, 19, 6, 7]
                            },
                            action: function (e, dt, button, config) {
                                $('#flading').show();
                                // Retrieve the start and end date values
                                exportAllSelection();
                            }
                        },
                        {
                            extend: 'pdfHtml5',
                            orientation: 'landscape',
                            text: '<img src="assets/images/pdficon.png">',
                            className: 'dt-pdf-btn',
                            titleAttr: 'Download list in PDF Format',
                            pageSize: 'LEGAL',
                            exportOptions: {
                                columns: [1, 20, 3, 17, 19, 6, 7]
                            },
                            action: function (e, dt, button, config) {
                                $('#flading').show();
                                // Retrieve the start and end date values
                                exportOptionPDF();
                            }
                        }
                    ],
                    createdRow: function (row, data, dataIndex) {

                        var tooltipPosition = "";
                        if (dataIndex === 0) {
                            tooltipPosition = "bottom";
                        }
                        if (dataIndex === 1) {
                            tooltipPosition = "bottom";
                        }
                        // add tooltip when row is created
                        $(row).find('td:eq(3)').attr('role', "tooltip");
                        $(row).find('td:eq(3)').attr('data-microtip-position', "right");
                        $(row).find('td:eq(3)').attr('data-microtip-size', "medium");
                        $(row).find('td:eq(3)').attr('aria-label', data["patient"].toString());
                        $(row).find('td:eq(7)').attr('role', "tooltip");
                        $(row).find('td:eq(7)').attr('data-microtip-position', "left");
                        $(row).find('td:eq(7)').attr('data-microtip-size', "medium");
                        $(row).find('td:eq(2)').text(data["dateofbenefit"].toString());
                        $(row).find('td:eq(9)').text(data["dos"].toString());
                        $(row).find('td:eq(7)').attr('aria-label', data["practicename"].toString());
                        if (data["insurancetype"].toString() === "1") {
                            if (data["payor"].toString() !== "") {
                                $(row).find('td:eq(8)').attr('role', "tooltip");
                                $(row).find('td:eq(8)').attr('data-microtip-position', "left");
                                $(row).find('td:eq(8)').attr('data-microtip-size', "medium");
                                $(row).find('td:eq(8)').attr('aria-label', data["payor"].toString());
                                $(row).find('td:eq(8)').html('<span class="badge badge-primary">Primary</span> ' + data["spayor"].toString());
                            }
                            //class= 'badge badge-light-primary f-16' <span class="badge badge-primary">Primary</span> 
                        } else {
                            if (data["payor"].toString() !== "") {
                                $(row).find('td:eq(8)').attr('role', "tooltip");
                                $(row).find('td:eq(8)').attr('data-microtip-position', "left");
                                $(row).find('td:eq(8)').attr('data-microtip-size', "medium");
                                $(row).find('td:eq(8)').attr('aria-label', data["payor"].toString());
                                $(row).find('td:eq(8)').html('<span class="badge badge-secondary">secondary</span> ' + data["spayor"].toString());
                            }
                            //'<span class="badge badge-secondary">Secondary</span> '
                        }
                        if (data["errormsg"].toString() !== '') {
                            $(row).find('td:eq(10)').attr('role', "tooltip");
                            $(row).find('td:eq(10)').attr('data-microtip-position', "left");
                            $(row).find('td:eq(10)').attr('data-microtip-size', "medium");
                            $(row).find('td:eq(10)').attr('aria-label', data["errormsg"].toString());
                        }
                        $(row).find('td:eq(11)').attr('role', "tooltip");
                        $(row).find('td:eq(11)').attr('data-microtip-position', "left");
                        $(row).find('td:eq(11)').attr('data-microtip-size', "medium");
                        $(row).find('td:eq(11)').attr('aria-label', "Download Eligibility Report");
                        if ($(row).find('td:eq(12)').find('span').find('a').attr('id') === 'recoverev') {
                            $(row).find('td').not(':eq(12)').attr('style', 'font-weight: bold; !important; text-decoration:line-through; color:red;');
                            // $(row).find('td:eq(7)').find('a').hide();
                            $(row).find('td:eq(1)').find('a').removeAttr('href');
                            $(row).find('td:eq(1)').find('a').removeAttr('target');
                            $(row).find('td:eq(10)').find('a').removeAttr('href');
                            $(row).find('td:eq(10)').find('a').removeAttr('target');
                            $(row).find('td:eq(11)').find('a').removeAttr('onclick');
                        }
                    },
                    footerCallback: function (tfoot, data, start, end, display) {
                        $('#flading').hide();
                    }
                }).on('click', 'tr', function () {
                    var statusval = $('td', this).eq(10).text().trim();
                    var bridval = $('td', this).eq(1).text().trim();
                    var practiceid = $('td', this).eq(14).text().trim();
                    var mid = $('td', this).eq(6).text().trim();
                    var group_npi = $('td', this).eq(15).text().trim();
                    var dob = $('td', this).eq(5).text().trim();
                    var ddlgender = $('td', this).eq(16).text().trim();
                    var payorid = $('td', this).eq(17).text().trim();
                    var heading = "Provider: " + $('td', this).eq(18).text().trim() + "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Patient: " + $('td', this).eq(19).text().trim();
                    $('#span_Prov').html(heading);
                    $('#brid').val(bridval);
                    $('#ins_no').val(mid);
                    $('#group_id').val(group_npi);
                    $('#dob').val(dob);
                    $('#ddlgender').val(ddlgender);
                    glo_pracid = practiceid;
                    if (statusval.toLowerCase() === "manual") {
                        flag = 'manual';
                        // $('#btnclick').click();
                        /*    $.ajax({
                         url: "getselectpayorlist",
                         type: "get", //send it through get method
                         data: {
                         selectpayorlist: practiceid
                         },
                         success: function (response) {
                         var select = $('#ddlinsurance');
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
                         $('<option>').val(obj[i].payor_id).text(obj[i].name).appendTo(select);
                         }
                         $('#ddlinsurance').val(payorid);
                         $('#state').val('fav');
                         }
                         }
                         }); */

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
                    $('#flading').hide();
                    $('#pc-daterangepicker-6 .form-control').val(startVal.format('MM/DD/YYYY') + ' / ' + endVal.format('MM/DD/YYYY'));
                    start = startVal.format('YYYY-MM-DD');
                    end = endVal.format('YYYY-MM-DD');
                    localStorage.setItem("evdate", startVal.format("MM/DD/YYYY") + ' / ' + endVal.format("MM/DD/YYYY"));
                    table.ajax.url("eligibilitydata?startDate=" + start + "&endDate=" + end).load();
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
                    location.href = "exportEvPdf?startDate=" + startDate + "&endDate=" + endDate;
                    $('#flading').hide();
                }


                var searchOption = '';
                $('#showall').click(function () {
                    $('#flading').hide();
                    searchOption = '0';
                    searchColumn = '';
                    searchValue = '';
                    innerSearchValue = '';
                    table.search('').draw();
                    table.search('').columns().search('').draw();
                    $('#para_Firstname').hide();
                    $('#para_Lastname').hide();
                    $('#para_Dob').hide();
                    $('#ddlpractice').next(".select2-container").hide();
                    $('#ddlpractice').val('').change();
                    $('#payorid').next(".select2-container").hide();
                    table.ajax.url("eligibilitydata?startDate=" + moment(start).format("YYYY-MM-DD") + "&endDate=" + moment(end).format("YYYY-MM-DD")).load();
                    $('#ddlsearch').val(0).change();
                });
                function clearFields() {
                    table.search('').columns().search('').draw();
                    $('#para_Firstname').val('');
                    $('#para_Lastname').val('');
                    $('#para_Dob').val('');
                    $('#ddlpractice').val('').change();
                    $('#payorid').val('');
                    $('#payorid').val('').change();
                }


                $('#search').click(function () {
                    // $('#flading').show();
                    table.search('').columns().search('');
                    searchOption = $('#ddlsearch').val();
                    if (searchOption === '0') {
                        table.columns().search('').draw();
                        msgbox("Select the Search option..!", "Benefits Portal", "error");
                        $('#flading').hide();
                    } else if (searchOption === '1') {
                        var lenFirstName = $('#para_Firstname').val().length;
                        if (lenFirstName !== 0) {
                            var firstVal = $('#para_Firstname').val();
                            clearFields();
                            $('#para_Firstname').val(firstVal);
                            searchColumn = 'patient';
                            searchValue = $('#para_Firstname').val();
                            table.columns(3).search('').search($('#para_Firstname').val()).draw();
                            //table.ajax.url("eligibilitysearchdata?para=e.patient_first_name&paraVal=" + $('#para_Firstname').val()).load();
                        } else {
                            msgbox("Enter Patient First Name", "Benefits Portal", "error");
                            $('#flading').hide();
                        }
                    } else if (searchOption === '2') {
                        var lenLastName = $('#para_Lastname').val().length;
                        if (lenLastName !== 0) {
                            var lastVal = $('#para_Lastname').val();
                            clearFields();
                            $('#para_Lastname').val(lastVal);
                            // $('#flading').show();
                            searchColumn = 'patient';
                            searchValue = $('#para_Lastname').val();
                            table.columns(3).search('').search($('#para_Lastname').val()).draw();
                            //table.ajax.url("eligibilitysearchdata?para=e.Patient_Last_Name&paraVal=" + $('#para_Lastname').val()).load();
                        } else {
                            msgbox("Enter Patient Last Name", "Benefits Portal", "error");
                            $('#flading').hide();
                        }
                    } else if (searchOption === '3') {
                        var lenDob = $('#para_Dob').val().length;
                        if (lenDob !== 0) {
                            var dobVal = $('#para_Dob').val();
                            clearFields();
                            $('#para_Dob').val(dobVal);
                            //$('#flading').show();
                            searchColumn = 'dob';
                            searchValue = $('#para_Dob').val();
                            table.columns(5).search('').search(convertMDYtoYMD($('#para_Dob').val())).draw();
                            //table.ajax.url("eligibilitysearchdata?para=e.birth_date&paraVal=" + convertMDYtoYMD($('#para_Dob').val())).load();
                        } else {
                            msgbox("Enter Dob", "Benefits Portal", "error");
                            $('#flading').hide();
                        }
                    } else if (searchOption === '4') {
                        var lenDos = $('#para_Dos').val().length;
                        if (lenDos !== 0) {
                            var dosVal = $('#para_Dos').val();
                            clearFields();
                            $('#para_Dos').val(dosVal);
                            // $('#flading').show();
                            searchColumn = 'doss';
                            searchValue = $('#para_Dos').val();
                            table.columns(9).search('').search(convertMDYtoYMD($('#para_Dos').val())).draw();
                            //table.ajax.url("eligibilitysearchdata?para=e.service_information_as_of_date&paraVal=" + convertMDYtoYMD($('#para_Dos').val())).load();
                        } else {
                            msgbox("Enter Dos", "Benefits Portal", "error");
                            $('#flading').hide();
                        }
                    } else if (searchOption === '5') {
                        var lenPractice = $('#ddlpractice').val().length;
                        if (lenPractice !== 0) {
                            var practiceVal = $('#ddlpractice').val();
                            clearFields();
                            $('#ddlpractice').val(practiceVal).change();
                            // $('#flading').show();
                            searchColumn = 'practiceid';
                            searchValue = $('#ddlpractice').val();
                            table.columns(14).search('').search($('#ddlpractice').val()).draw();
                            //table.ajax.url("eligibilitysearchdata?para=e.practiceid_trn02&paraVal=" + $('#ddlpractice').val()).load();
                        } else {
                            msgbox("Select Practice", "Benefits Portal", "error");
                            $('#flading').hide();
                        }
                    } else if (searchOption === '6') {
                        var lenPayor = $('#payorid').val().length;
                        if (lenPayor !== 0) {
                            var payorVal = $('#payorid').val();
                            clearFields();
                            $('#payorid').val(payorVal).change();
                            searchColumn = 'payorid';
                            searchValue = $('#payorid').val();
                            //$('#flading').show(); 
                            table.columns(17).search('').search($('#payorid').val()).draw();
                            //table.ajax.url("eligibilitysearchdata?para=e.payor_id&paraVal=" + $('#payorid').val()).load();
                        } else {
                            msgbox("Select Insurance", "Benefits Portal", "error");
                            $('#flading').hide();
                        }
                    }
                });
                var not_brid = GetParameterValues('tid');
                if (typeof (not_brid) !== 'undefined') {
                    table.columns(1).search('').search(not_brid).draw();
                } else {
                    table.columns(1).search('').search('').draw();
                }

                var filter = '<%= session.getAttribute("filter")%>';
                // console.log(filter);
                if (filter === "manual" || filter === "Manual") {
                    var table = $('#eligibilitytable').DataTable();
                    table.search(filter).draw();
                }
        <%session.setAttribute("filter", "0");%>
                $(document).on("click", "#eligibilitytable a.deleteev", function () {
                    if (confirm("Are you sure you want to delete this record?")) {
                        let tr = $(this).closest('tr');
                        let request_id = tr.find('td:eq(1)').text();
                        $.ajax({
                            url: "deleteEv",
                            type: "get", //send it through get method
                            data: {
                                request_id: request_id
                            },
                            success: function (response) {
                                if (response.length > 0) {
                                    msgbox("EV Deleted", "EV Portal", "success");
                                    table.ajax.reload();
                                    /* start = start.format('YYYY-MM-DD');
                                     end = end.format('YYYY-MM-DD');
                                     table.ajax.url("eligibilitydata?startDate=" + moment(start).format("YYYY-MM-DD") + "&endDate=" + moment(end).format("YYYY-MM-DD")).load(); */
                                }
                            },
                            error: function (err) {
                                msgbox(err, "EV Portal", "error");
                            }
                        });
                    }
                });
                $(document).on("click", "#eligibilitytable a.recoverev", function () {
                    let tr = $(this).closest('tr');
                    let request_id = tr.find('td:eq(1)').text();
                    $.ajax({
                        url: "recoverEv",
                        type: "get", //send it through get method
                        data: {
                            request_id: request_id
                        },
                        success: function (response) {
                            if (response.length > 0) {
                                msgbox("EV Recovered", "EV Portal", "success");
                                table.ajax.reload();
                            }
                        },
                        error: function (err) {
                            msgbox(err, "EV Portal", "error");
                        }
                    });
                });
                $.ajax({
                    url: "getstatelist",
                    type: "get", //send it through get method
                    success: function (response) {
                        var select = $('#state');
                        select.find('option').remove();
                        $('<option>').val("fav").text("--Favourite--").appendTo(select);
                        var txt = response;
                        var obj = jQuery.parseJSON(txt);
                        if (obj.length > 0) {
                            for (var i = 0; i < obj.length; i++) {
                                $('<option>').val(obj[i].code).text(obj[i].state + ' [' + obj[i].code + '] ').appendTo(select);
                            }
                        }
                    }
                });
                $('#state').change(function (event) {
                    var statecode = $("select#state").val();
                    var practiceid = glo_pracid;
                    statecode = statecode + "-" + practiceid;
                    //Payor
                    $.ajax({
                        url: "getStatecode",
                        type: "get", //send it through get method
                        data: {
                            statecode: statecode
                        },
                        success: function (response) {
                            var select = $('#ddlinsurance');
                            select.find('option').remove();
                            $('<option>').val("").text("--Select--").appendTo(select);
                            var txt = response;
                            var obj = jQuery.parseJSON(txt);
                            if (obj.length > 0) {
                                for (var i = 0; i < obj.length; i++) {
                                    // var sv = value.split('~');
                                    $('<option>').val(obj[i].payor_id).text(obj[i].name).appendTo(select);
                                }
                            }
                        }
                    });
                });
                $('#btnclick').click(function () {
                    if (flag === 'manual') {
                        $('#tickettag').hide();
                        $('#manualtag').show();
                    } else if (flag === 'ticket') {
                        $('#manualtag').hide();
                        $('#tickettag').show();
                    }
                    $('#modal-1').modal('show');
                    $('.md-overlay').css("visibility", "visible");
                });
                $('#model_close').click(function () {
                    $('#modal-1').modal('hide');
                    $('.md-overlay').css("visibility", "hidden");
                });
                $('#model_close1').click(function () {
                    $('#modal-1').modal('hide');
                    $('.md-overlay').css("visibility", "hidden");
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
                            type_of_ticket: "2",
                            descriptions: $(".note-editable").html(),
                            ticket_status: ticketstatus,
                            assigned_to: $("select#assigned_to").val(),
                            attachmentfile: fns,
                            attachmentfilesize: sizetext,
                            ticket_source: ticketsource,
                            ticket_priority: $("select#ticket_priority_id").val(),
                            segment: "A",
                            currentdt: today,
                            request_id: brid
                        },
                        success: function (response) {
                            $("select#ticket_type_id").val('2');
                            $("select#assigned_to").val('0');
                            $("#assigned_to").trigger('change');
                            $(".note-editable").html('');
                            msgbox("Ticket Saved", "Ticket Form", "success");
                            $('#flading').hide();
                            $('#modal-1').modal('hide');
                            $('.md-overlay').css("visibility", "hidden");
                            $(".overlay").click();
                        },
                        error: function (err) {
                            msgbox("Ticket Not Saved", "Ticket Form", "error");
                            $('#flading').hide();
                            $(".overlay").click();
                        }
                    });
                    if ($("select#assigned_to").val() !== "0") {
                        var strcontent = "Hi " + assignto + ", <br><br>" + "Type: " + tickettype + "<br>Source: " + tsource + "<br>Priority: " + ticketpriority + "<br> Assign To: " + assignto + "<br>Segment: Benefit View [A]" + "<br><br>" + $(".note-editable").html();
                        // Email Config
                        $.post('eMail', {
                            recipient: entity_user_to,
                            subject: 'Ticket Raised from [Benefit View] Form: ' + tickettype + ' : ' + tstatus + ' to ' + assignto,
                            content: strcontent,
                            cc: entity_user_cc,
                            bcc: entity_user_bcc
                        }, function (response) {
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
                                        $('#flading').hide();
                                    });
                                } else {
                                    $('#flading').hide();
                                }
                            }
                        });
                    }
                });
                $('#raiseticket').click(function () {
                    brid = '';
                    var table = $('#eligibilitytable').DataTable();
                    table.$('input[type="checkbox"]').each(function () {
                        if (this.checked) {
                            let tr = $(this).closest('tr');
                            brid = tr.find('td:eq(1)').text() + ',' + brid;
                        }
                    });
                    brid = brid.substring(0, brid.length - 1);
                    if (brid !== '') {
                        flag = 'ticket';
                        $('#ticket_type_id').val("2");
                        var ticket_type_id = $("select#ticket_type_id").val();
                        $('#ticket_type_id').attr('disabled', "true");
                        $('#flading').show();
                        if (notflag === 'Y') {
                            ShowConfirmYesNo();
                        } else {
                            $(".q-view").addClass("active");
                        }
                        $.ajax({
                            url: "tickettypedescdetails",
                            type: "get", //send it through get method
                            data: {
                                ticket_type_id: ticket_type_id
                            },
                            success: function (response) {
                                if (response.length > 0) {
                                    var txt = response;
                                    var obj = jQuery.parseJSON(txt);
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
                        msgbox("select atleast one benefit..!", "Ticket Portal", "warning");
                    }
                });
                $('#eligibilitytable tbody').on('change', 'input[type="checkbox"]', function () {
                    var table = $('#eligibilitytable').DataTable();
                    total = table.column(3, {
                        page: 'current'
                    }).data().count();
                    var isSelected = $(this).is(':checked');
                    if (isSelected) {
                        $('#modal-1').modal('hide');
                        $('.md-overlay').css("visibility", "hidden");
                        checked++;
                    } else {
                        $('#modal-1').modal('hide');
                        $('.md-overlay').css("visibility", "hidden");
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
                    var table = $('#eligibilitytable').DataTable();
                    total = table.column(3, {
                        page: 'current'
                    }).data().count();
                    checked = 0;
                    var isSelected = $(this).is(':checked');
                    if (isSelected) {
                        $('#eligibilitytable tbody input[type=checkbox]').each(function () {
                            $(this).prop('checked', true);
                            if (checked <= total) {
                                checked++;
                            }
                        });
                        if (checked > 1) {
                            notflag = 'Y';
                        }
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
            });
            var progress_percentage = 0;
            function getDownStatus() {
                progress_percentage = progress_percentage + 10;
                $('#downloadprogress').css("width", progress_percentage + "%");
                $.ajax({
                    url: "getdownloadstatus",
                    type: "get", //send it through get method
                    success: function (dbresponse) {
                        if (dbresponse === "Done") {
                            $('#downloadprogress').css("width", "100%");
                            $('#exampleModalLive').modal('hide');
                        }
                    }
                });
            }

            function showLoading(id, patname) {
                var repostatus = "";
                $.ajax({
                    url: "getreportstatus",
                    type: "get", //send it through get method
                    data: {
                        reportstatus: id
                    },
                    success: function (dbresponse) {
                        var txt = dbresponse;
                        var response = jQuery.parseJSON(txt);
                        // var repostatus = "";
                        for (var i = 0; i < response.Response.length; i++) {
                            repostatus = response.Response[i].Count;
                        }
                        if (repostatus === "0") {
                            // msgbox("Report Data Populating...", "Eligibility View Form", "warning");
                        } else {
                            progress_percentage = 0;
                            $('#downloadprogress').css("width", "0%");
                            $('#exampleModalLive').modal();
                            location.href = "generatenew?requestid=" + id + "&patientname=" + patname;
                        }
                    }
                });
                setInterval('getDownStatus(' + progress_percentage + ')', 2000);
            }

            function getStatus(reqid) {
                var repostatus = "";
                var requestid = "";
                $.ajax({
                    url: "getrunningstatus",
                    type: "get", //send it through get method
                    success: function (dbresponse) {
                        var txt = dbresponse;
                        var response = jQuery.parseJSON(txt);
                        for (var i = 0; i < response.Response.length; i++) {
                            var runstatus = response.Response[i].RunStatus;
                            requestid = response.Response[i].RequestID;
                            var edistatus = response.Response[i].Status;
                            var errormsg = response.Response[i].errormsg;
                            $('#statustest_' + requestid).html(edistatus);
                            if (runstatus === 'completed') {
                                var eligibitytbl = $("#eligibilitytable").DataTable();
//                            setTimeout(function () {
                                var colAction = "";
                                if (edistatus === 'Eligible'
                                        || edistatus === 'Active'
                                        || edistatus === 'Active-Full Risk Capitation'
                                        || edistatus === 'Active-Services Capitated'
                                        || edistatus === 'Active-Services capitated to PCP'
                                        || edistatus === 'Active-Pending Activation'
                                        || edistatus === 'Active-RR')
                                {
                                    colAction = "<a class= 'badge badge-light-primary f-16' href= 'eligibilityresponse?rid=" + requestid + "'><span style='color: green; font-weight: bold;'>" + edistatus + "</span></a>";
                                } else if (edistatus === '271_Non-Matching_EB_SEG'
                                        || edistatus === 'INactive'
                                        || edistatus === 'InActive-Pending Update'
                                        || edistatus === 'InActive-Pending Investigation'
                                        || edistatus === 'Error'
                                        || edistatus === 'InActive'
                                        || edistatus === '271_Error')
                                {
                                    colAction = "<a class= 'badge badge-light-warning f-16' title=" + errormsg + " href= 'eligibilityresponse?rid=" + requestid + "'><span  style='color: red; font-weight: bold;'>" + edistatus + "</span></a>";
                                } else {//                               
                                    colAction = '<button class="btn btn-sm btn-info" style="margin-bottom: 0px; padding: 1px 12px;"  type="button" ><span class="spinner-border spinner-border-sm" role="status"></span><span id="statustest_' + requestid + '">' + edistatus + '</span></button>';
                                }
                                $('#runst_' + requestid).html("" + colAction);
                                if (requestid !== "")
                                {
                                    $.ajax({
                                        url: "getreportstatus",
                                        type: "get", //send it through get method
                                        data: {
                                            reportstatus: requestid
                                        },
                                        success: function (dbresponse) {
                                            var txt = dbresponse;
                                            var response = jQuery.parseJSON(txt);
                                            for (var i = 0; i < response.Response.length; i++) {
                                                repostatus = response.Response[i].Count;
                                            }
                                            if (repostatus === "0") {
                                            } else {
                                            }
                                        }
                                    });
                                    $.ajax({
                                        url: "getrunstatusid",
                                        type: "get", //send it through get method
                                        data: {
                                            runstatusid: requestid
                                        },
                                        success: function (dbresponse) {
                                        }});
                                }
//                            }, 3000);
                            } else
                            {

                                if (repostatus === "0") {
                                    //   $('#runac_' + reqid).show();
                                    // msgbox("Report Data Populating...", "Eligibility View Form", "warning");
                                } else {
                                    //  $('#runac_' + reqid).hide();
                                }
                            }

                        }
                    }

                });
            }
    </script>  
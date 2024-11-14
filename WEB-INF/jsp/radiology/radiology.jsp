<%@page contentType="text/html"  pageEncoding="UTF-8" autoFlush="true"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@taglib prefix="spring"  uri="http://www.springframework.org/tags"  %>
<spring:eval expression="@environment.getProperty('web_server')" var="webserverUrl" />
<html lang="en">

    <head>
        <title>Study Request Queue</title>
        <style>
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
                margin-left:25px;
            }
            .ulliimg{
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

            .custom-control-input {
                position: absolute;
                z-index: 1 !important;
                opacity: 0;
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
                            <div class="page-wrapper">

                                <!-- [ form-element ] start -->

                                <div class="col-lg-12"> 
                                    <div id="table_v" class="card">
                                        <div class="card-body">
                                            <div class="row">

                                                <div class="col-md-3 p-l-0 col-lg-3">
                                                    <div class="form-group">
                                                        <label class="col-form-label col col-30px">Filter By Created Date</label>
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
                                                            <select class="form-control js-example-placeholder-multiple" name="ddlsearch" id="ddlsearch" >
                                                            <option value = "0">Select</option> 
                                                            <option value = "1">Patient Firstname</option> 
                                                            <option value = "2">Patient Lastname</option> 
                                                            <option value = "3">DOB</option> 
                                                            <option value = "4">DOT</option> 
                                                            <option value = "5">Practice</option> 
                                                            <option value = "6">Payor</option> 
                                                        </select>

                                                    </div>
                                                </div>

                                                <div class="col-md-2 p-l-0 col-lg-3">
                                                    <div class="form-group">
                                                        <label class="col-form-label col col-30px"></label>                                                             
                                                        <input type='text' id="para_Firstname" class="form-control" placeholder="First Name" />
                                                        <input type='text' id="para_Lastname" class="form-control" placeholder="Last Name" />
                                                        <input type='text' id="para_Dob" class="form-control" placeholder="DOB" />
                                                        <input type='text' id="para_Dos" class="form-control" placeholder="DOT" />
                                                        <select class="form-control js-example-placeholder-multiple col-sm-12" id="ddlSearchPractice" data-placeholder="Select Practice"  name="ddlSearchPractice"></select>
                                                        <select class="form-control js-example-placeholder-multiple"  data-placeholder="Select Insurance" id="payorid" name="payorid" >
                                                            <option value="">--Select--</option>
                                                        <c:forEach var="benefits" items="${payorlist}">
                                                            <option value = "${benefits.payorid}" >${benefits.payor}</option>
                                                        </c:forEach> 
                                                    </select>
                                                </div>
                                            </div>

                                            <div class="col-md-4 col-lg-3 m-r-0 p-r-0">
                                                <div class="row form-group m-t-20" style="margin-top:31px;">   
                                                    <button id="search" class="btn btn-success" style="padding:5px 10px!important;">Search</button>
                                                    <button id="showall" class="btn btn-primary" style="padding:5px 10px!important;">Reset</button>
                                                    <sec:authorize access="hasAnyRole('ROLE_ADMIN,ROLE_PRACTICE_PROVIDER,ROLE_CORP_PROVIDER,ROLE_GROUPCLINIC_PROVIDER,ROLE_REFERING_PROVIDER,ROLE_ENTITY_ADMIN,ROLE_ENTITY_STAFF')"> 
                                                        <sec:authorize access="hasAuthority('NEW_RADIOLOGY_REPORT_PRIVILEGE')">
                                                            <button type="button" onclick="addNew()"  id="btnnew" class="btn btn-warning" style="padding:5px 10px!important;" title="New Study Request" ><i class="fas fa-plus-circle"></i>New</button>
                                                        </sec:authorize>
                                                    </sec:authorize>
                                                </div>
                                            </div>

                                            <hr class="hrtopbtm"><br>

                                            <div class="dt-responsive table-responsive">
                                                <table  id="eligibilitytable" width="98%" style="width: 0px;" class="display table table-striped table-bordered nowrap">
                                                    <thead>
                                                        <tr>
                                                            <th><input id="headercheck" type="checkbox"></th> 
                                                            <th>S No</th>
                                                            <th>Practice</th>
                                                            <th>Radiology</th>
                                                            <th>Patient</th>                                                           
                                                            <th>DOB</th>
                                                            <th>Payor</th>                                                            
                                                            <th>Notes</th>
                                                            <th>DOO</th>
                                                            <th>Study</th>
                                                            <th>DOT</th>
                                                            <th>Status</th>
                                                            <th>Action</th>
                                                            <th>Practice</th>
                                                            <th>Payor</th>
                                                            <th>Notes</th>
                                                            <th>Study</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>   
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div style="display:none;" id="new_bill" class="card">
                                    <div class="card-body">
                                        <div class="row">
                                            <form:form  id="design-1-form" class="form-1 needs-validation" name="studyrequestform"  method="POST" action="saveradiology" modelAttribute="saveradiology">
                                                <h3 class="wiz-items">
                                                    <span class="num-icon">1</span><span style="color:#000000">
                                                        Patient info
                                                    </span>
                                                </h3>

                                                <input type="hidden" name="procedurecount" id="procedure_count" value="0">
                                                <input type="hidden" name="diagonisiscount" id="diagnosis_count" value="0">

                                                <input type="hidden" name="billstatus" id="billstatus">
                                                <input type="hidden" name="procedurecodes" id="procedurecodes" >

                                                <section>                                                       
                                                    <div class="row">
                                                        <div class="col-sm">														
                                                            <div class="form-group row">
                                                                <label class="col-sm-3 col-form-label font-style-label"  for="ddlpractice">Practice <span class="text-danger">*</span></label>
                                                                <div class="col-sm-9">
                                                                    <select class="form-control js-example-placeholder-multiple" required id="ddlpractice" data-placeholder="Select Practice" tabindex="1" name="ddlpractice">
                                                                    </select>
                                                                </div>
                                                            </div>
                                                            <div class="form-group row">
                                                                <label class="col-sm-3 col-form-label font-style-label" for="ddlpatient">Patient <span class="text-danger">*</span></label>
                                                                <div class="col-sm-9">
                                                                    <select class="form-control js-example-placeholder-multiple col-sm-12" required id="ddlpatient" data-placeholder="Select Patient" tabindex="3"  name="ddlpatient" >
                                                                        <!--<option value="0">--Select--</option>--> 
                                                                    </select>
                                                                </div>
                                                            </div>

                                                            <div class="form-group row">
                                                                <label class="col-sm-3 col-form-label font-style-label" for="ddlinsurance">Insurance </label>
                                                                <div class="col-sm-9">
                                                                    <select class="form-control js-example-placeholder-multiple col-sm-12" id="ddlinsurance" tabindex="11" disabled data-placeholder="Select Insurance" name="ddlinsurance" >
                                                                    </select>
                                                                </div>                                                                    
                                                            </div>

                                                            <div  class="form-group row">
                                                                <label for="b-t-name" class="col-sm-3 col-form-label font-style-label">Date of Birth</label>
                                                                <div class="col-sm-9">
                                                                    <input type="text" class="form-control" readonly required name="dob" tabindex="4" id="dob"  placeholder="dob">                                                      
                                                                </div>
                                                            </div>                                                                

                                                            <div  class="form-group row">
                                                                <label for="b-t-name" class="col-sm-3 col-form-label font-style-label">Member ID</label>
                                                                <div class="col-sm-9">
                                                                    <input type="text" class="form-control"  readonly name="mid" tabindex="4" id="mid"  placeholder="Member ID">                                                      
                                                                </div>
                                                            </div>

                                                            <div  class="form-group row">
                                                                <label for="b-t-name" class="col-sm-3 col-form-label font-style-label">Gender</label>
                                                                <div class="col-sm-9">
                                                                    <input type="text" class="form-control"  readonly name="ddlgender" tabindex="4" id="ddlgender"  placeholder="Gender">                                                      
                                                                </div>
                                                            </div>

                                                            <div style="display:none;" class="form-group row">
                                                                <label for="b-t-name" class="col-sm-3 col-form-label font-style-label">Visit</label>
                                                                <div class="col-sm-9">
                                                                    <input type="text" class="form-control" required name="visit" tabindex="4" id="visit"  placeholder="Visit">                                                      
                                                                </div>
                                                            </div>

                                                            <div class="form-group row" style="display:none;">
                                                                <label for="b-t-name" class="col-sm-3 col-form-label font-style-label">Procedure Template <span class="text-danger">*</span></label>
                                                                <div class="col-sm-9">                                                                        
                                                                    <select class="form-control" required id="proceduretemplate" onchange="changeTemplate(this.value)" tabindex="1" name="procedureTemplate">
                                                                        <option value="">Please Select Template</option>
                                                                        <option value="temp1">Template 1</option>
                                                                        <option value="temp2">Template 2</option>
                                                                    </select>                                                     
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-sm">
                                                            <div class="form-group row">
                                                                <label for="b-t-name" class="col-sm-3 col-form-label font-style-label">Ordering Surgeon<font color="red">*</font> </label>
                                                                <div class="col-sm-9">
                                                                    <select class="form-control js-example-placeholder-multiple col-sm-12" required id="ddlprovider" data-placeholder="Select Ordering Surgeon" tabindex="2"  name="ddlprovider">
                                                                    </select>
                                                                    <!--<input type="text" class="form-control" required name="technician" tabindex="4" id="technician"  placeholder="Treating Surgeon">-->                                                       
                                                                </div>
                                                            </div> 

                                                            <div class="form-group row">
                                                                <label for="b-t-name" class="col-sm-3 col-form-label font-style-label">Radiologist<font color="red">*</font> </label>
                                                                <div class="col-sm-9">
                                                                    <select class="form-control js-example-placeholder-multiple col-sm-12" required id="radiologist" data-placeholder="Select Radiology" tabindex="4"  name="radiologist">
                                                                    </select>

                                                                </div>
                                                            </div>

                                                            <div class="form-group row">
                                                                <label for="b-t-name" class="col-sm-3 col-form-label font-style-label">Provider<font color="red">*</font></label>
                                                                <div class="col-sm-9">
                                                                    <select class="form-control js-example-placeholder-multiple col-sm-12" required id="ddlradiology" data-placeholder="Select Provider" tabindex="2"  name="ddlradiology">
                                                                    </select>
                                                                    <!--<input type="text" class="form-control" required name="technician" tabindex="4" id="technician"  placeholder="Treating Surgeon">-->                                                       
                                                                </div>
                                                            </div> 

                                                            <div class="form-group row" style="display:none;">
                                                                <label for="b-t-name" class="col-sm-3 col-form-label font-style-label">Referring Doctor</label>
                                                                <div class="col-sm-5">
                                                                    <input type="text" class="form-control"  name="refdoc" tabindex="4" id="refdocvisit"  placeholder="">                                                      
                                                                </div>
                                                                <div class="col-sm-4">
                                                                    <input type="text" class="form-control" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');"  name="refdocnpi" tabindex="4" id="refdocnpi"  placeholder="NPI">                                                      
                                                                </div>
                                                            </div>                                                                
                                                            <div class="form-group row" style="display:none;">
                                                                <label for="b-t-name" class="col-sm-3 col-form-label font-style-label">Radiologist</label>
                                                                <div class="col-sm-5">
                                                                    <input type="text" class="form-control"  name="radiogtsvisit" tabindex="4" id="radiogtsvisit"  placeholder="">                                                    
                                                                </div>
                                                                <div class="col-sm-4">
                                                                    <input type="text" class="form-control" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');"  name="radiologistnpi" tabindex="4" id="radiogtsnpi"  placeholder="NPI">                                                      
                                                                </div>
                                                            </div>
                                                            <div  class="form-group row" style="display:none;">
                                                                <label for="b-t-name" class="col-sm-3 col-form-label font-style-label">Pathologist</label>
                                                                <div class="col-sm-5">
                                                                    <input type="text" class="form-control"  name="pathologist" tabindex="4" id="pathgtsvisit"  placeholder="">                                                      
                                                                </div>
                                                                <div class="col-sm-4">
                                                                    <input type="text" class="form-control" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');"  name="pathologistnpi" tabindex="4" id="pathgtsnpi"  placeholder="NPI">                                                      
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div id="template1" style="display:none;" class="row">
                                                        <div class="col-sm">										
                                                            <div class="form-group row">                                                                                                                                          
                                                                <div class="col-sm">
                                                                    <div class="">                                                                            
                                                                        <label class="col-form-label font-style-label" >Maxilla</label>
                                                                    </div>
                                                                    <div class="custom-control custom-checkbox custom-control-inline">
                                                                        <input type="checkbox" class="custom-control-input input-dark" name="temp1trmaxright" value="1th Treatment"  id="temp1trmaxright" >
                                                                        <label class="custom-control-label" for="temp1trmaxright">Right</label>
                                                                    </div>
                                                                    <div class="custom-control custom-checkbox custom-control-inline">
                                                                        <input type="checkbox" class="custom-control-input input-dark" name="temp1trmaxleft" value="1th Treatment"  id="temp1trmaxleft">
                                                                        <label class="custom-control-label" for="temp1trmaxleft">Left</label>
                                                                    </div> 
                                                                </div>                                                                    

                                                                <div class="col-sm">
                                                                    <div class="">                                                                           
                                                                        <label class="col-form-label font-style-label">Mandible</label>
                                                                    </div>
                                                                    <div class="custom-control custom-checkbox custom-control-inline">
                                                                        <input type="checkbox" class="custom-control-input input-dark" name="temp1trmanright" value="1th Treatment"  id="temp1trmanright" >
                                                                        <label class="custom-control-label" for="temp1trmanright">Right</label>
                                                                    </div>
                                                                    <div class="custom-control custom-checkbox custom-control-inline">
                                                                        <input type="checkbox" class="custom-control-input input-dark" name="temp1trmanleft" value="1th Treatment"  id="temp1trmanleft">
                                                                        <label class="custom-control-label" for="temp1trmanleft">Left</label>
                                                                    </div>
                                                                </div>                                                                

                                                                <div class="col-sm">
                                                                    <div class="">                                                                            
                                                                        <label class="font-style-label" >Arch</label>
                                                                    </div>
                                                                    <div class="custom-control custom-checkbox custom-control-inline">
                                                                        <input type="checkbox" class="custom-control-input input-dark" name="temp1trarchright" value="1th Treatment"  id="temp1trarchright" >
                                                                        <label class="custom-control-label" for="temp1trarchright">Right</label>
                                                                    </div>
                                                                    <div class="custom-control custom-checkbox custom-control-inline">
                                                                        <input type="checkbox" class="custom-control-input input-dark" name="temp1trarchleft" value="1th Treatment"  id="temp1trarchleft">
                                                                        <label class="custom-control-label" for="temp1trarchleft">Left</label>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>

                                                    <div id="template2" style="display:none;" class="row">
                                                        <div class="col-sm">
                                                            <div class="form-group row">
                                                                <label for="b-t-name" id="hdtreament" class="col-sm-3 col-form-label font-style-label">Treatment Procedure</label>
                                                            </div>
                                                            <div class="form-group row">

                                                                <div class="col-sm-9">
                                                                    <div class="custom-control custom-checkbox custom-control-inline">                                                                           
                                                                        <input type="checkbox" class="custom-control-input input-dark" name="temp2treament" value="1st Treatment" id="temp2treament1" >
                                                                        <label class="custom-control-label" for="temp2treament1">1st Treatment</label>
                                                                    </div>
                                                                    <div class="custom-control custom-checkbox custom-control-inline">
                                                                        <input type="checkbox" class="custom-control-input input-dark" name="temp2treament" value="2nd Treatment" id="temp2treament2">
                                                                        <label class="custom-control-label" for="temp2treament2">2nd Treatment</label>
                                                                    </div>
                                                                    <div class="custom-control custom-checkbox custom-control-inline">
                                                                        <input type="checkbox" class="custom-control-input input-dark" name="temp2treament" value="3rd Treatment" id="temp2treament3">
                                                                        <label class="custom-control-label" for="temp2treament3">3rd Treatment</label>
                                                                    </div>
                                                                    <div class="custom-control custom-checkbox custom-control-inline">
                                                                        <input type="checkbox" class="custom-control-input input-dark" name="temp2treament" value="1th Treatment" id="temp2treament4">
                                                                        <label class="custom-control-label" for="temp2treament4">4th Treatment</label>
                                                                    </div>
                                                                </div>
                                                            </div>

                                                            <div class="form-group row">
                                                                <div class="col-sm">
                                                                    <div class="">
                                                                        <!--<input type="checkbox" class="custom-control-input input-dark" name="trmaxilla" value="1th Treatment"  id="trmaxilla" >-->
                                                                        <label class="col-form-label font-style-label" for="trmaxilla">Maxilla</label>
                                                                    </div>
                                                                    <div class="custom-control custom-checkbox custom-control-inline">
                                                                        <input type="checkbox" class="custom-control-input input-dark" name="temp2trmaxright" value="1th Treatment"  id="temp2trmaxright" >
                                                                        <label class="custom-control-label" for="temp2trmaxright">Right</label>
                                                                    </div>
                                                                    <div class="custom-control custom-checkbox custom-control-inline">
                                                                        <input type="checkbox" class="custom-control-input input-dark" name="temp2trmaxleft" value="1th Treatment"  id="temp2trmaxleft">
                                                                        <label class="custom-control-label" for="temp2trmaxleft">Left</label>
                                                                    </div> 
                                                                </div>
                                                                <div class="col-sm">
                                                                    <div class="">
                                                                        <label class="col-form-label font-style-label"  for="trmandible">Mandible</label>
                                                                    </div>
                                                                    <div class="custom-control custom-checkbox custom-control-inline">
                                                                        <input type="checkbox" class="custom-control-input input-dark" name="temp2trmanright" value="1th Treatment"  id="temp2trmanright" >
                                                                        <label class="custom-control-label" for="temp2trmanright">Right</label>
                                                                    </div>
                                                                    <div class="custom-control custom-checkbox custom-control-inline">
                                                                        <input type="checkbox" class="custom-control-input input-dark" name="temp2trmanleft" value="1th Treatment"  id="temp2trmanleft">
                                                                        <label class="custom-control-label" for="temp2trmanleft">Left</label>
                                                                    </div> 
                                                                </div>                                                                    

                                                                <div class="col-sm">
                                                                    <div class="">
                                                                        <label class="col-form-label font-style-label" for="trarch">Arch</label>
                                                                    </div>
                                                                    <div class="custom-control custom-checkbox custom-control-inline">
                                                                        <input type="checkbox" class="custom-control-input input-dark" name="temp2trarchright" value="1th Treatment"  id="temp2trarchright" >
                                                                        <label class="custom-control-label" for="temp2trarchright">Right</label>
                                                                    </div>
                                                                    <div class="custom-control custom-checkbox custom-control-inline">
                                                                        <input type="checkbox" class="custom-control-input input-dark" name="temp2trarchleft" value="1th Treatment"  id="temp2trarchleft">
                                                                        <label class="custom-control-label" for="temp2trarchleft">Left</label>
                                                                    </div>    
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </section>

                                                <h3 class="wiz-items">
                                                    <span class="num-icon">2</span><span style="color:#000000">
                                                        Diagnosis
                                                    </span>
                                                </h3>
                                                <section>                                                        
                                                    <jsp:include page="radio_diagnosiscode.jsp"></jsp:include>
                                                    </section>
                                                    <h3 class="wiz-items">
                                                        <span class="num-icon">3</span><span style="color:#000000">
                                                            History
                                                        </span>
                                                    </h3>
                                                    <section>  
                                                        <div class="col-md-12">
                                                            <div class="card statustic-card">
                                                                <div style="padding: 10px 15px;" class="card-header bg-success border-0 ">
                                                                    <h5 class="text-white m-b-0">Patient Information</h5>
                                                                </div>
                                                                <div class="card-body ">
                                                                    <div class="row">
                                                                        <div class="col-sm" >  
                                                                            <div class="form-group row">
                                                                                <label class="col-sm-4 col-form-label font-style-label"  for="ddlpractice">Patient</label>
                                                                                <div class="col-sm-8">
                                                                                    <label class="col-form-label " id="patname"  for="ddlpractice"></label>
                                                                                </div>


                                                                            </div> 
                                                                            <div class="form-group row">
                                                                                <label class="col-sm-4 col-form-label font-style-label"  for="ddlpractice">Gender</label>
                                                                                <div class="col-sm-8">
                                                                                    <label class="col-form-label " id="patgender"  for="ddlpractice"></label>
                                                                                </div>


                                                                            </div> 
                                                                            <div class="form-group row">
                                                                                <label class="col-sm-4 col-form-label font-style-label"  for="ddlpractice">DOB</label>
                                                                                <div class="col-sm-8">
                                                                                    <label class="col-form-label " id="patdob"  for="ddlpractice"></label>
                                                                                </div>                                                                   

                                                                            </div> 
                                                                            <div class="form-group row">
                                                                                <label class="col-sm-4 col-form-label font-style-label"  for="ddlpractice">Insurance</label>
                                                                                <div class="col-sm-8">
                                                                                    <label class="col-form-label " id="insurance"  for="ddlpractice"></label>
                                                                                </div>                                                                   

                                                                            </div> 

                                                                            <div style="display:none;" id="maxillaview" class="form-group row">
                                                                                <label class="col-sm-4 col-form-label font-style-label">Maxilla</label>
                                                                                <div class="col-sm-8">
                                                                                    <div  id="headrevtemp1trmax">                                                                                   
                                                                                    </div> </div>
                                                                            </div> 

                                                                            <div  style="display:none;" id="mandibleview" class="form-group row">
                                                                                <label class="col-sm-4 col-form-label font-style-label" >Mandible</label>
                                                                                <div class="col-sm-8">
                                                                                    <div  id="headrevtemp1trman">
                                                                                    </div></div>
                                                                            </div> 

                                                                            <div  style="display:none;" id="archview" class="form-group row">
                                                                                <label class="col-sm-4 col-form-label font-style-label" >Arch </label>
                                                                                <div class="col-sm-8">
                                                                                    <div  id="headrevtemp1trarch">
                                                                                    </div> </div>
                                                                            </div> 


                                                                        </div> 
                                                                        <div class="col-sm" >   
                                                                            <div class="form-group row">
                                                                                <label class="col-sm-4 col-form-label font-style-label"  for="ddlpractice">Practice</label>
                                                                                <div class="col-sm-8">
                                                                                    <label class=" col-form-label "  id="practice"></label>
                                                                                </div>
                                                                            </div> 
                                                                            <div class="form-group row" style="display:none;">
                                                                                <label class="col-sm-4 col-form-label font-style-label"  for="ddlpractice">Payor ID:</label>
                                                                                <div class="col-sm-8">
                                                                                    <label class="col-form-label "  id="prid"></label>
                                                                                </div>
                                                                            </div> 
                                                                            <div class="form-group row">
                                                                                <label class="col-sm-4 col-form-label font-style-label" >Ordering Surgeon:</label>
                                                                                <div class="col-sm-8">
                                                                                    <label class="col-form-label"  id="treating_surgeon"></label>
                                                                                </div>
                                                                            </div>
                                                                            <div class="form-group row">
                                                                                <label class="col-sm-4 col-form-label font-style-label"  for="ddlpractice">Member ID:</label>
                                                                                <div class="col-sm-8">
                                                                                    <label class="col-form-label "  id="memid"></label>
                                                                                </div>
                                                                            </div> 

                                                                            <div class="form-group row">
                                                                                <label class="col-sm-4 col-form-label font-style-label"  for="ddlpractice">Radiologist:</label>
                                                                                <div class="col-sm-8">
                                                                                    <label class="col-form-label "  id="lblradiologist"></label>
                                                                                </div>
                                                                            </div> 

                                                                            <div class="form-group row" >
                                                                                <label class="col-sm-4 col-form-label font-style-label" >DOT</label>
                                                                                <div class="col-sm-8">
                                                                                    <label class="col-form-label "  id="rdos"></label>
                                                                                </div>
                                                                            </div>

                                                                            <div id="refdoc_view"  class="form-group row">
                                                                                <label class="col-sm-4 col-form-label font-style-label" >Referring Doctor</label>
                                                                                <div class="col-sm-8">
                                                                                    <label class="col-form-label "  id="refdoc"></label>
                                                                                </div>
                                                                            </div>
                                                                            <div id="radiologist_view" class="form-group row">
                                                                                <label class="col-sm-4 col-form-label font-style-label" >Radiologist</label>
                                                                                <div class="col-sm-8">
                                                                                    <label class="col-form-label "  id="radiogts"></label>
                                                                                </div>
                                                                            </div>
                                                                            <div id="pathologist_view" class="form-group row">
                                                                                <label class="col-sm-4 col-form-label font-style-label" >Pathologist</label>
                                                                                <div class="col-sm-8">
                                                                                    <label class="col-form-label "  id="pathgts"></label>
                                                                                </div>
                                                                            </div>

                                                                        </div> 


                                                                    </div> 
                                                                    <div class="row">
                                                                        <div class="col-sm" >  
                                                                            <div class="form-group row">
                                                                                <label class="col-sm-4 col-form-label font-style-label" ></label> 
                                                                                <div class="col-sm-8">

                                                                                </div>
                                                                            </div>
                                                                        </div>

                                                                        <div class="col-sm" >   
                                                                            <div style="display: none;" id="headtemp2treament1"  class="form-group row">
                                                                                <label class="col-sm-4 col-form-label font-style-label"  >Treatment</label>
                                                                                <div class="col-sm-8">
                                                                                    <label class=" col-form-label "  id="revtemp2treament1"></label>
                                                                                </div>
                                                                            </div> 

                                                                        </div> 

                                                                    </div> 
                                                                </div>
                                                            </div>
                                                        </div>

                                                        <div class="col-md-12">
                                                            <div class="card statustic-card">
                                                                <div style="padding: 10px 15px;"  class="card-header bg-success border-0 ">
                                                                    <h5 class="text-white m-b-0">Diagnosis</h5>
                                                                </div>
                                                                <div class="card-body ">
                                                                    <div class="row">    
                                                                        <div id="diagnoisis1divt"  style="display:none" >
                                                                            <label class="font-style-label">Consultation / Examination :</label>
                                                                        </div> 
                                                                    </div>   
                                                                    <div class="row">  
                                                                        <div id="diagnoisis1div" style="display:none" >
                                                                        </div> 
                                                                    </div>  


                                                                    <div class="row"> 

                                                                        <div id="diagnoisis2divt" style="display:none" class="">
                                                                            <label class="font-style-label">Post - Op after surgery & Suture remove :</label>
                                                                        </div>

                                                                    </div>   
                                                                    <div class="row">    
                                                                        <div id="diagnoisis2div" style="display:none" >
                                                                        </div>
                                                                    </div>
                                                                    <div class="row">    
                                                                        <div id="diagnoisis3divt" style="display:none" >
                                                                            <label class="font-style-label">Suture Placed   :</label>
                                                                        </div>
                                                                    </div>   
                                                                    <div class="row">    
                                                                        <div id="diagnoisis3div" style="display:none" >
                                                                        </div>
                                                                    </div>
                                                                    <div class="row">    
                                                                        <div id="diagnoisis4divt" style="display:none" >
                                                                            <label class="font-style-label">Post - Surgical for complication surgery :</label>
                                                                        </div>
                                                                    </div>   
                                                                    <div class="row">    
                                                                        <div id="diagnoisis4div" style="display:none" >
                                                                        </div>
                                                                    </div>
                                                                    <div class="row">    
                                                                        <div id="diagnoisis5divt" style="display:none" >
                                                                            <label class="font-style-label">Material :</label>
                                                                        </div>
                                                                    </div>   
                                                                    <div class="row">    
                                                                        <div id="diagnoisis5div" style="display:none" >
                                                                        </div>
                                                                    </div>

                                                                    <div class="row">    
                                                                        <div id="diagnoisis6divt" style="display:none" >
                                                                            <label class="font-style-label">Periodontal Disease :</label>
                                                                        </div>
                                                                    </div>   
                                                                    <div class="row">    
                                                                        <div id="diagnoisis6div" style="display:none" >
                                                                        </div>
                                                                    </div>
                                                                    <div class="row">    
                                                                        <div id="diagnoisis7divt" style="display:none" >
                                                                            <label class="font-style-label">Implant or Bone Graft failure :</label>
                                                                        </div>
                                                                    </div>   
                                                                    <div class="row">    
                                                                        <div id="diagnoisis7div" style="display:none" >
                                                                        </div>
                                                                    </div>
                                                                    <div class="row">    
                                                                        <div id="diagnoisis8divt" style="display:none" >
                                                                            <label class="font-style-label">Sinus Problem :</label>
                                                                        </div>
                                                                    </div>   
                                                                    <div class="row">    
                                                                        <div id="diagnoisis8div" style="display:none" >
                                                                        </div>
                                                                    </div>
                                                                    <div class="row">    
                                                                        <div id="diagnoisis9divt" style="display:none" >
                                                                            <label class="font-style-label">Tissue Lesion/Cyst/Infection :</label>
                                                                        </div>
                                                                    </div>   
                                                                    <div class="row">    
                                                                        <div id="diagnoisis9div" style="display:none" >
                                                                        </div>
                                                                    </div>
                                                                    <div class="row">    
                                                                        <div id="diagnoisis10divt" style="display:none" >
                                                                            <label class="font-style-label">Bone Lesion/Bony Cyst :</label>
                                                                        </div>
                                                                    </div>   
                                                                    <div class="row">    
                                                                        <div id="diagnoisis10div" style="display:none" >
                                                                        </div>
                                                                    </div>


                                                                    <div class="row">    
                                                                        <div id="diagnoisis11divt" style="display:none" >
                                                                            <label class="font-style-label">Soft & Hard Tissue & Bone / Biopsy :</label>
                                                                        </div>
                                                                    </div>   
                                                                    <div class="row">    
                                                                        <div id="diagnoisis11div" style="display:none" >
                                                                        </div>
                                                                    </div>
                                                                    <div class="row">    
                                                                        <div id="diagnoisis12divt" style="display:none" >
                                                                            <label class="font-style-label">Zygomatic & Le-Fort Fracture/ Nasal :</label>
                                                                        </div>
                                                                    </div>   
                                                                    <div class="row">    
                                                                        <div id="diagnoisis12div" style="display:none" >
                                                                        </div>
                                                                    </div>
                                                                    <div class="row">    
                                                                        <div id="diagnoisis13divt" style="display:none" >
                                                                            <label class="font-style-label">Injury/Traumatic/Accidental :</label>
                                                                        </div>
                                                                    </div>   
                                                                    <div class="row">    
                                                                        <div id="diagnoisis13div" style="display:none" >
                                                                        </div>
                                                                    </div>


                                                                    <div class="row">    
                                                                        <div id="diagnoisis14divt" style="display:none" >
                                                                            <label class="font-style-label">Loss Tooth or Fracture :</label>
                                                                        </div>
                                                                    </div>   
                                                                    <div class="row">    
                                                                        <div id="diagnoisis14div" style="display:none" >
                                                                        </div>
                                                                    </div>
                                                                    <div class="row">    
                                                                        <div id="diagnoisis15divt" style="display:none" >
                                                                            <label class="font-style-label">Medical History Review :</label>
                                                                        </div>
                                                                    </div>   
                                                                    <div class="row">    
                                                                        <div id="diagnoisis15div" style="display:none" >
                                                                        </div>
                                                                    </div>
                                                                    <div class="row">    
                                                                        <div id="diagnoisis16divt" style="display:none" >
                                                                            <label class="font-style-label">Bone Atrophy :</label>
                                                                        </div>
                                                                    </div>   
                                                                    <div class="row">    
                                                                        <div id="diagnoisis16div" style="display:none" >
                                                                        </div>
                                                                    </div>



                                                                    <div class="row">    
                                                                        <div id="diagnoisis17divt" style="display:none" >
                                                                            <label class="font-style-label">Edentulous :</label>
                                                                        </div>
                                                                    </div>   
                                                                    <div class="row">    
                                                                        <div id="diagnoisis17div" style="display:none" >
                                                                        </div>
                                                                    </div>


                                                                    <div class="row">    
                                                                        <div id="diagnoisis18divt" style="display:none" >
                                                                            <label class="font-style-label">Sleep Problem :</label>
                                                                        </div>
                                                                    </div>   
                                                                    <div class="row">    
                                                                        <div id="diagnoisis18div" style="display:none" >
                                                                        </div>
                                                                    </div>
                                                                    <div class="row">    
                                                                        <div id="diagnoisis19divt" style="display:none" >
                                                                            <label class="font-style-label">Laceration :</label>
                                                                        </div>
                                                                    </div>   
                                                                    <div class="row">    
                                                                        <div id="diagnoisis19div" style="display:none" >
                                                                        </div>
                                                                    </div>
                                                                    <div class="row">    
                                                                        <div id="diagnoisis20divt" style="display:none" >
                                                                            <label class="font-style-label">Foreign Body :</label>
                                                                        </div>
                                                                    </div>   
                                                                    <div class="row">    
                                                                        <div id="diagnoisis20div" style="display:none" >
                                                                        </div>
                                                                    </div>
                                                                    <div class="row">    
                                                                        <div id="diagnoisis21divt" style="display:none" >
                                                                            <label class="font-style-label">Deformity & Irregularity bone :</label>
                                                                        </div>
                                                                    </div>   
                                                                    <div class="row">    
                                                                        <div id="diagnoisis21div" style="display:none" >
                                                                        </div>
                                                                    </div>

                                                                    <div class="row">    
                                                                        <div id="diagnoisis22divt" style="display:none" >
                                                                            <label class="font-style-label">Control Bleeding :</label>
                                                                        </div>
                                                                    </div>   
                                                                    <div class="row">    
                                                                        <div id="diagnoisis22div" style="display:none" >
                                                                        </div>
                                                                    </div>

                                                                </div>
                                                            </div>
                                                        </div>


                                                        <div class="col-md-12">
                                                            <div class='card statustic-card'>
                                                                <div style="padding: 10px 15px;" class="card-header bg-success border-0 ">
                                                                    <h5 class="text-white m-b-0">Clinical History</h5>
                                                                </div>
                                                                <div class="card-body ">
                                                                    <div class="row">
                                                                        <div class="col-sm">
                                                                            <textarea class="form-control" name="notes" id="notes" rows="3"></textarea>

                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>                                                           
                                                        </div>
                                                        <div class="col-md-12">
                                                            <div class='card statustic-card'>
                                                                <div style="padding: 10px 15px;" class="card-header bg-success border-0 ">
                                                                    <h5 class="text-white m-b-0">Relevant medical History</h5>
                                                                </div>
                                                                <div class="card-body ">
                                                                    <div class="row">
                                                                        <div class="col-sm">
                                                                            <textarea class="form-control" name="notes1" id="notes1" rows="3"></textarea>

                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>                                                           
                                                        </div>

                                                        <div class="col-md-12">
                                                            <div class='card statustic-card'>
                                                                <div style="padding: 10px 15px;" class="card-header bg-success border-0 ">
                                                                    <h5 class="text-white m-b-0">Surgical/Dental History</h5>
                                                                </div>
                                                                <div class="card-body ">
                                                                    <div class="row">
                                                                        <div class="col-sm">
                                                                            <textarea class="form-control" name="notes2" id="notes2" rows="3"></textarea>

                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>                                                           
                                                        </div>

                                                    </section>
                                                    <input type="hidden" name="disganosiscode" id="disganosiscode">
                                                    <input type="hidden" name="teethval" id="teethval">
                                                    <input type="hidden" name="disganosiscodecount" id="disganosiscodecount">
                                                    <input type="hidden" name="result" id="result">
                                                    <input type="hidden" name="resultcode" value="" id="resultcodev">


                                                    <h3 class="wiz-items">
                                                        <span class="num-icon">4</span><span style="color:#000000">
                                                            Study selection & upload
                                                        </span>
                                                    </h3>
                                                    <section>  
                                                    <jsp:include page="radio_teeth.jsp"></jsp:include>
                                                        <hr>

                                                        <div class="card cardbottom">

                                                            <div class="row mb-2 mt-3" id="upload_1">
                                                                <div class="col-6">
                                                                    <div class="form-group row">
                                                                        <label for="b-t-name" class="data_27 col-sm-3 col-form-label font-style-label" style="font-size:15px;float: left;width:110px;padding-left:45px">Study <span class="text-danger">*</span></label>
                                                                        <div class="col-sm-9">
                                                                            <select class="form-control js-example-placeholder-multiple" required id="ddlstudy" multiple tabindex="1" name="ddlstudy">
                                                                                <option value = "" >--Select--</option>
                                                                            <c:forEach var="study" items="${studyList}">
                                                                                <option value = ${study.studyid} >${study.studyname}</option>
                                                                            </c:forEach>
                                                                        </select>
                                                                    </div>
                                                                </div>
                                                            </div>   

                                                            <div class="col-6">                                                               
                                                                <div class="form-group row">
                                                                    <label for="b-t-name" class="data_27 col-sm-3 col-form-label font-style-label" style="font-size:15px;" >DOT <span class="text-danger">*</span></label>
                                                                    <div class="custom-file" style="display: inline;float: left;width:300px;">  
                                                                        <input type="text" class="form-control" required name="dateofservice" id="dateofservice" placeholder="DOT" /> 

                                                                        <!--   <label class="custom-file-label" for="file_1" >Choose file...</label>                                                               
                                                                           <button type="button" class="btn btn-primary btn-sm" style="margin-left: 310px; margin-top: -48px;">Upload</button>  -->
                                                                        <div id="previewfile"></div>
                                                                    </div>
                                                                </div>   
                                                            </div>
                                                        </div>  

                                                        <div class="col-6">
                                                            <div class="form-group row">
                                                                <label for="b-t-name" class="data_27 col-sm-3 col-form-label font-style-label" style="font-size:15px;float: left;width:50px;padding-left:32px" >File <span class="text-danger">*</span></label>
                                                                <div class="col-sm-9" style="padding-left:initial !important">
                                                                    <input type="file" class="form-control" multiple  id="file_1" name="file_1">
                                                                    <!--<input type="date" class="form-control" required name="dateofservice" tabindex="4" id="dos"  placeholder="DOS">  -->                                                 
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </section>
                                                <hr>
                                                <input type="hidden" name="file1" id="getfiles">                          
                                            </form:form>
                                        </div>  
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

    <div id="modalConfirmDraftSign" class="modal fade">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" 
                            class="close" data-dismiss="modal" aria-label="Close">

                    </button>
                    <h4 id="lblTitleConfirmDraftSign" class="modal-title">Confirmation</h4>
                </div>
                <div class="modal-body">
                    <p id="lblMsgConfirmDraftSign"></p>
                </div>
                <div class="modal-footer">
                    <button id="btnYesConfirmDraftSign" 
                            type="button" class="btn btn-primary">On Hold</button>
                    <button id="btnNoConfirmDraftSign" 
                            type="button" class="btn btn-success">Assigned</button>
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
                                        <button type="submit"  id="btnsubmit" class="btn btn-rounded btn-greenadd btn-block" >Submit</button>
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
        <script src="assets/js/ebill/radiology.js?v=<spring:message code="release.version"/>"></script>

    <script src="assets/js/plugins/select2.full.min.js"></script>
    <script src="assets/js/pages/form-select-custom.js"></script>

    <script>

                                                                    var fileName = '';
                                                                    var flag1;
                                                                    var flag2;
                                                                    var totalSize = 0;
                                                                    $(function () {

                                                                    //file change event handler
                                                                    $('#file_1').on('change', function (event) {
                                                                    flag1 = 0;
                                                                    flag2 = 0;
                                                                    //alert("flag starting:"+flag);
                                                                    //alert("flag1 starting:"+flag1);
                                                                    $('#previewfile').html('');
                                                                    $('#getfiles').val('');
                                                                    fileName = '';
                                                                    for (var i = 0; i < this.files.length; i++) {
                                                                    totalSize += this.files[i].size;
                                                                    }
//                                                                     
                                                                    if (totalSize > 50000000)
                                                                    {
                                                                    msgbox("Uploaded file size exceeded 50MB", "Study Request Form", "error");
                                                                    $(this).next('.custom-file-label').html("Choose file...");
                                                                    $(this).val(null);
                                                                    totalSize = 0;
                                                                    return;
                                                                    }
                                                                    //alert(flag); //Count of total png files
                                                                    Array.from(event.target.files).forEach(file => {
                                                                    flag1++;
                                                                    //alert("flag within loop"+flag);
                                                                    var filename = file.name;
                                                                    var extension = filename.split('.').pop();
                                                                    console.log(extension);
                                                                    if (filename.endsWith('.exe')) {
                                                                    msgbox("Uploading EXE files are not allowed", "Study Request Form", "error");
                                                                    $(this).next('.custom-file-label').html("Choose file...");
                                                                    $(this).val(null);
                                                                    return;
                                                                    } else if (filename.endsWith('.dll')) {
                                                                    msgbox("Uploading DLL files are not allowed", "Study Request Form", "error");
                                                                    $(this).next('.custom-file-label').html("Choose file...");
                                                                    $(this).val(null);
                                                                    return;
                                                                    } else if (filename.endsWith('.sh')) {
                                                                    msgbox("Uploading sh files are not allowed", "Study Request Form", "error");
                                                                    $(this).next('.custom-file-label').html("Choose file...");
                                                                    $(this).val(null);
                                                                    return;
                                                                    } else if (filename.endsWith('.bat')) {
                                                                    msgbox("Uploading bat files are not allowed", "Study Request Form", "error");
                                                                    $(this).next('.custom-file-label').html("Choose file...");
                                                                    $(this).val(null);
                                                                    return;
                                                                    }

                                                                    //$(this).next('.custom-file-label').html(filename);
                                                                    uploadFile(file) // each file gets sent to uploadFile() individually

                                                                    });
                                                                    });
                                                                    });
                                                                    async function uploadFile(file) {
                                                                    //if (((($('#file_1').val()) === null) || (($('#file_1').val()) === '') || (($('#file_1').val()) === "undefined")))
                                                                    //msgbox("Please Upload files", "Study Request Form", "error");
                                                                    var patientid = $("#ddlpatient option:selected").val();
                                                                    console.log('patientid:' + patientid);
                                                                    if (patientid !== 0) {
                                                                    let formData = new FormData();
                                                                    formData.append("ddlpatientid", patientid);
                                                                    formData.append("file", file);
                                                                    formData.append("ddlpatientid", patientid);
                                                                    let response = await fetch('upload_radiology_form', {

                                                                    method: "POST",
                                                                            body: formData

                                                                    });
                                                                    response.text().then(function (text) {
                                                                    console.log(text);
                                                                    fileName = text + "~" + fileName;
                                                                    console.log(fileName);
                                                                    //   $('#previewfile').html(fileName.slice(0, -1).replaceAll("~", "<br>"));
                                                                    $('#getfiles').val(fileName.slice(0, - 1));
                                                                    });
                                                                    if (response.status == 200) {

                                                                    flag2++;
                                                                    } else
                                                                    {

                                                                    msgbox("File upload failed, try again after renaming the file...!", "Study Request Form", "error");
                                                                    }

                                                                    if (flag1 == flag2){
                                                                    msgbox("Files upload successfully...!", "Study Request Form", "success");
                                                                    }

                                                                    }
                                                                    }



                                                                    console.log($('#getfiles').val());
                                                                    function downloadfiles(id)
                                                                    {

                                                                    $.ajax({
                                                                    url: "downloadradiology",
                                                                            type: "get", //send it through get method
                                                                            data: {
                                                                            fileId: id
                                                                            },
                                                                            success: function (dbresponse) {
                                                                            // console.log(dbresponse.data.fi);
                                                                            var txt = dbresponse;
                                                                            //  console.log(dbresponse);
                                                                            //   console.log(dbresponse.length);
                                                                            for (var i = 0; i < dbresponse.length; i++)
                                                                            {
                                                                            console.log('/Upload/Radiology/' + dbresponse[i].file1);
                                                                            var link = document.createElement('a');
                                                                            document.body.appendChild(link);
                                                                            link.setAttribute('download', '' + dbresponse[i].file1);
                                                                            link.style.display = 'none';
                                                                            link.setAttribute('href', '/Upload/Radiology/' + dbresponse[i].file1);
                                                                            link.setAttribute('target', '_blank');
                                                                            link.click();
                                                                            document.body.removeChild(link);
                                                                            }

                                                                            }});
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
                                                                    var start, end;
                                                                    // $(".tableFixHead1").removeClass("tablehide");
                                                                    //    $(".tableFixHead1").addClass("tableshow");
                                                                    $('#para_Firstname').hide();
                                                                    $('#para_Lastname').hide();
                                                                    $('#para_Dob').hide();
                                                                    $('#para_Dos').hide();
                                                                    $('#ddlSearchPractice').next(".select2-container").hide();
                                                                    $('#payorid').next(".select2-container").hide();
                                                                    $('#upload_1').hide();
                                                                    $('#upload_2').hide();
                                                                    function submitPreAuth() {

                                                                    $('#billstatus').val('ASSIGNED');
                                                                    //   alert($('#file_1_upd').val());

                                                                    var lenstudy = $('#ddlstudy').val();
                                                                    //  alert(lenstudy.length);
                                                                    if (lenstudy.length === 0)
                                                                    {
                                                                    msgbox("Study info is Mandatory", "Study Request Form", "error");
                                                                    $('#flading').hide();
                                                                    return  false;
                                                                    }

                                                                    if (!($('#dateofservice').val()))
                                                                    {
                                                                    msgbox("Date of Taken is Mandatory", "Study Request Form", "error");
                                                                    $('#flading').hide();
                                                                    return  false;
                                                                    }

                                                                    if (!($('#getfiles').val())) {
                                                                    msgbox("Upload File is Mandatory", "Study Request Form", "error");
                                                                    $('#flading').hide();
                                                                    //console.log("else - after message");
                                                                    return  false;
                                                                    } else {

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
                                                                    $('#ddlpractice').removeAttr('disabled');
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



                                                                    if (ebill_to !== ''){
                                                                    var strcontent1 = "Hi, <br> <br>A New Radiology Study Request of " + $('#ddlpatient option:selected').text() + " created from " + $('#ddlpractice option:selected').text() + " by Dr. " + $('#ddlprovider option:selected').text() + "  on Date : " + today + "<br><br>";
                                                                    // Email Config
                                                                    $.post('eMail', {
                                                                    recipient: ebill_to,
                                                                            subject: "A New Radiology Study Request of " + $('#ddlpatient option:selected').text() + " Created by Dr." + $('#ddlprovider option:selected').text(),
                                                                            content: strcontent1,
                                                                            cc: "",
                                                                            bcc: ebill_cc
                                                                    }, function (response) {

                                                                    console.log(response);
                                                                    });
                                                                    }


                                                                    return true;
                                                                    }
                                                                    }//SubmitPreAuth End


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
                                                                    function ShowConfirmDraftSign() {
                                                                    AsyncConfirmDraftSign(
                                                                            "Confirmation Box",
                                                                            "Do you wish to On Hold or Assigned?",
                                                                            MyDraftFunction,
                                                                            MySignFunction
                                                                            );
                                                                    }
                                                                    var retnvl = '';
                                                                    function MyDraftFunction() {
                                                                    // alert("Time to get off your workstation!");
                                                                    // $("#lblTestResult").html("You are hungry");

                                                                    // $("form[name='preauthform']").submit();
                                                                    $('#billstatus').val('ON HOLD');
                                                                    retnvl = 'ON HOLD';
                                                                    $("form[name='studyrequestform']").submit();
                                                                    }

                                                                    function MySignFunction() {


                                                                    //  $("form[name='preauthform']").submit();
                                                                    $('#billstatus').val('ASSIGNED');
                                                                    retnvl = 'ASSIGNED';
                                                                    $("form[name='studyrequestform']").submit();
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

                                                                    if ($('#ddlsearch').val() === '1')
                                                                    {
                                                                    $('#para_Firstname').show();
                                                                    $('#para_Lastname').hide();
                                                                    $('#para_Dob').hide();
                                                                    $('#para_Dos').hide();
                                                                    $('#ddlSearchPractice').next(".select2-container").hide();
                                                                    $('#payorid').next(".select2-container").hide();
                                                                    $('#para_Firstname').val('');
                                                                    } else if ($('#ddlsearch').val() === '2')
                                                                    {
                                                                    $('#para_Firstname').hide();
                                                                    $('#para_Lastname').show();
                                                                    $('#para_Dob').hide();
                                                                    $('#para_Dos').hide();
                                                                    $('#ddlSearchPractice').next(".select2-container").hide();
                                                                    $('#payorid').next(".select2-container").hide();
                                                                    $('#para_Lastname').val('');
                                                                    } else if ($('#ddlsearch').val() === '3')
                                                                    {
                                                                    $('#para_Firstname').hide();
                                                                    $('#para_Lastname').hide();
                                                                    $('#para_Dob').show();
                                                                    $('#para_Dos').hide();
                                                                    $('#ddlSearchPractice').next(".select2-container").hide();
                                                                    $('#payorid').next(".select2-container").hide();
                                                                    $('#para_Dob').val('');
                                                                    } else if ($('#ddlsearch').val() === '4')
                                                                    {
                                                                    $('#para_Firstname').hide();
                                                                    $('#para_Lastname').hide();
                                                                    $('#para_Dob').hide();
                                                                    $('#ddlSearchPractice').next(".select2-container").hide();
                                                                    $('#payorid').next(".select2-container").hide();
                                                                    $('#para_Dos').show();
                                                                    $('#para_Dos').val('');
                                                                    } else if ($('#ddlsearch').val() === '5')
                                                                    {
                                                                    $('#para_Firstname').hide();
                                                                    $('#para_Lastname').hide();
                                                                    $('#para_Dob').hide();
                                                                    $('#ddlSearchPractice').next(".select2-container").show();
                                                                    $('#payorid').next(".select2-container").hide();
                                                                    $('#para_Dos').hide();
                                                                    if (practiceid > 0) {
                                                                    console.log("Practice: " + practiceid);
                                                                    $('#ddlSearchPractice').val(practiceid);
                                                                    $('#ddlSearchPractice').trigger('change');
                                                                    $('#ddlSearchPractice').attr('disabled', "true");
                                                                    } else
                                                                    {
                                                                    $('#ddlSearchPractice').val('').change();
                                                                    }
                                                                    } else if ($('#ddlsearch').val() === '6')
                                                                    {
                                                                    $('#para_Firstname').hide();
                                                                    $('#para_Lastname').hide();
                                                                    $('#para_Dob').hide();
                                                                    $('#ddlSearchPractice').next(".select2-container").hide();
                                                                    $('#payorid').next(".select2-container").show();
                                                                    $('#para_Dos').hide();
                                                                    $('#payorid').val('').change();
                                                                    }
                                                                    else
                                                                    {
                                                                    $('#para_Firstname').hide();
                                                                    $('#para_Lastname').hide();
                                                                    $('#para_Dob').hide();
                                                                    $('#ddlSearchPractice').next(".select2-container").hide();
                                                                    $('#payorid').next(".select2-container").hide();
                                                                    //$('#para_Dos').hide();
                                                                    }
                                                                    });
                                                                    $('#ddlsearch').val(0).change();
                                                                    $("form[name='studyrequestform']").submit(function ()
                                                                    {
                                                                    $('#flading').show();
                                                                    return  submitPreAuth();
                                                                    });
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
                                                                            select1.find('option').remove();
                                                                            $("<option value='' selected hidden>--Select--</option>").appendTo(select);
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
                                                                    var rddt = localStorage.getItem("rddate");
                                                                    if (rddt === null) {
                                                                    start = moment().subtract(10, 'year');
                                                                    end = moment();
                                                                    $('#pc-daterangepicker-6 .form-control').val(start.format('MM/DD/YYYY') + ' / ' + end.format('MM/DD/YYYY'));
                                                                    } else {
                                                                    var currentVal = rddt;
                                                                    start = currentVal.split(" / ")[0];
                                                                    end = currentVal.split(" / ")[1];
                                                                    $('#pc-daterangepicker-6 .form-control').val(moment(start).format("MM/DD/YYYY") + ' / ' + moment(end).format("MM/DD/YYYY"));
                                                                    localStorage.setItem("rddate", moment(start).format("MM/DD/YYYY") + ' / ' + moment(end).format("MM/DD/YYYY"));
                                                                    }



                                                                    var table = $('#eligibilitytable').DataTable({
                                                                    "aaSorting": [[0, "desc"]], // Sort by first column descending
                                                                            "lengthMenu": [10, 20, 40, 80, 200, 500],
                                                                            "iDisplayLength": 10,
                                                                            stateSave: true,
                                                                            scrollY: "330px",
                                                                            scrollX: true,
                                                                            scrollCollapse: false,
                                                                            paging: true,
                                                                            "columnDefs": [
        <sec:authorize access="hasAnyRole('ROLE_PRACTICE_PROVIDER,ROLE_CORP_PROVIDER,ROLE_GROUPCLINIC_PROVIDER,ROLE_REFERING_PROVIDER')">
                                                                            //   dt.column(2).visible(false);
                                                                            // {'visible': true, 'targets': [2]}
                                                                            {'visible': false, 'targets': [16, 13, 14, 15]}
        </sec:authorize>

        <sec:authorize access="hasAnyRole('ROLE_ADMIN,ROLE_ENTITY_ADMIN,ROLE_ENTITY_STAFF,ROLE_CORP_ADMIN,ROLE_CORP_STAFF,ROLE_GROUPCLINIC_ADMIN,ROLE_GROUPCLINIC_STAFF,ROLE_BILLING_ADMIN,ROLE_BILLING_STAFF,ROLE_PRACTICE_ADMIN,ROLE_PRACTICE_STAFF')">
                                                                            //   {'visible': true, 'targets': [2]}
                                                                            {'visible': false, 'targets': [16, 13, 14, 15]}
        </sec:authorize>

                                                                            ],
                                                                            drawCallback: function (settings, json) {

                                                                            $('[data-toggle="tooltip"]').tooltip('update');
                                                                            },
                                                                            "ajax": {
                                                                            "type": "GET",
                                                                                    "url": "radiologydata?startDate=" + moment(start).format("YYYY-MM-DD") + "&endDate=" + moment(end).format("YYYY-MM-DD"),
                                                                                    "contentType": 'application/json'
                                                                            },
                                                                            "columns": [
                                                                            {"data": function (data) {
                                                                            //  return '';
                                                                            return '<input type="checkbox" class = "check">';
                                                                            }, "orderable": false, "searchable": false, "name": "check"},
                                                                            {"data": function (data) {
                                                                            return " " + data.requestid;
                                                                            }, "orderable": true, "searchable": true, "name": "requestid"},
                                                                            {"data": function (data) {
                                                                            return " " + data.spracticename; //spracticename
                                                                            }, "orderable": true, "searchable": true, "name": "practice"},
                                                                            {"data": function (data) {
                                                                            var radiology_provider_name = data.radiology_provider_name;
                                                                            return  radiology_provider_name.substring(0, 10);
                                                                            }, "orderable": true, "searchable": true, "name": "radiology_provider_name"},
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
                                                                            var notes = data.notes;
                                                                            return  notes.substring(0, 10);
                                                                            }, "orderable": true, "searchable": true, "name": "notes"},
                                                                            {"data": function (data) {
                                                                            return " " + data.create_date;
                                                                            }, "orderable": true, "searchable": true, "name": "create_date"}, // 7
                                                                            {"data": function (data) {
                                                                            var study = data.study;
                                                                            return  study.substring(0, 8);
                                                                            }, "orderable": true, "searchable": true, "name": "study"},
                                                                            {"data": function (data) {
                                                                            return " " + data.dos;
                                                                            }, "orderable": true, "searchable": true, "name": "dos"},
                                                                            {"data": function (data) {
                                                                            if (data.runstatus === "ASSIGNED")
                                                                            {
                                                                            return '<a href="#" class="badge badge-light-warning f-12 m-r-5">' + data.runstatus + '</a>';
                                                                            } else if (data.runstatus === "COMPLETED")
                                                                            {
                                                                            return '<a href="#" class="badge badge-light-success f-12 m-r-5">' + data.runstatus + '</a>';
                                                                            }
                                                                            else
                                                                            {
                                                                            return '<a href="#" class="badge badge-light-danger f-12 m-r-5">' + data.runstatus + '</a>';
                                                                            }
                                                                            }, "orderable": true, "searchable": true, "name": "status"},
                                                                            {"data": function (data) {
                                                                            var action = "";
                                                                            var text = "";
                                                                            var edit = "";
                                                                            var createreport = "";
                                                                            var viewreport = "";
                                                                            var download = "";
                                                                            var view = "";
                                                                            var del = "";
                                                                            var recover = "";
                                                                            var UT = '<%= session.getAttribute("UT")%>';
                                                                            var prints = "<a role='tooltip' data-microtip-position='left' title='' aria-label='Print' target='_blank' href='printradiology?id=" + data.requestid + '&cd=' + data.create_date + "'><i class='mdi mdi-printer' style='font-size:18px;margin:0 3px;color:#7E858E;'></i></a>|";
        <sec:authorize access="hasAuthority('VIEW_RADIOLOGY_REPORT_PRIVILEGE')">
                                                                            view = "<a role='tooltip' data-microtip-position='left' title='' aria-label='Review' href='viewradiology?id=" + data.requestid + '&cd=' + data.create_date + "'><i class='mdi mdi mdi-eye' style='font-size:18px; margin:0 3px;color:#FF9764;'></i></a>|";
        </sec:authorize>

        <sec:authorize access="hasAuthority('EDIT_RADIOLOGY_REPORT_PRIVILEGE')">
                                                                            edit = '<a role="tooltip" data-microtip-position="left" title="" aria-label="Edit" href="editradiology?id=' + data.requestid + '"><i class="fas fa-edit" style="font-size:15px; margin:0 3px;color:#2DCEE3;"></i></a>|';
        </sec:authorize>
        <sec:authorize access="hasAuthority('CREATE_RADIOLOGY_REPORT_PRIVILEGE')">

                                                                            createreport = '<a target="_blank" role="tooltip" data-microtip-position="left" title="" aria-label="Create Report" href="createtransnotes?id=' + data.requestid + '&rid=' + data.radiologist_id + '&pid=' + data.practiceid + '&patid=' + data.patientid + '&doo=' + data.create_date + '&providerid=' + data.providerid + '"><i class="mdi mdi-file-word" style="font-size:18px; margin:0 3px;color:#13BD8A;"></i></a>|';
        </sec:authorize>
        <sec:authorize access="hasAuthority('REVIEW_RADIOLOGY_REPORT_PRIVILEGE')">
                                                                            viewreport = '<a target="_blank" role="tooltip" data-microtip-position="left" title="" aria-label="View Report" href="../Trans_PDF/' + data.signedcontent + '"><i class="mdi mdi-file-pdf" style="font-size:18px; margin:0 3px;color:#13BD8A;"></i></a>|';
        </sec:authorize>                                                                                       // "<a target= '_blank' href=../Trans_PDF/" + data.signedcontent + " class='btn-icon'><i class='fas fa-file m-r-5'></i></a>";
                                                                            // download = '<a data-toggle="tooltip" data-placement="left" class="singledownbutton" id="singledown" title=""  data-original-title="Download" onclick='downloadfile('"+data.requestid+"')><i class="fas fa-download" style="font-size:15px; margin:0 3px;color: #19BCBF;"></i></a>|';
                                                                            download = '<a role="tooltip" data-microtip-position="left" aria-label="Download" target="_blank"  onclick="downloadfiles(' + "'" + data.requestid + "'" + ')"><i class="fas fa-download" style="font-size:15px; margin:0 3px;color: #19BCBF;"></i></a>';
        <sec:authorize access="hasAuthority('DELETE_DOCUMENT_PRIVILEGE')">
                                                                            if (data.flag === 'Y')
                                                                            {
                                                                            del = '<a aria-label="Delete" role="tooltip"  data-microtip-position="left" id="deleteStudy" class="deleteStudy" ><i class="fas fa-trash-alt" style="font-size:15px; margin:0 3px;color:#FF425C;"></i></a>|';
                                                                            //del = '<a id="deleteEb" class="deleteEb"  data-toggle="tooltip" data-placement="left" title="" data-original-title="Delete"><i class="fas fa-trash-alt" style="font-size:15px; margin:0 3px;color:#FF425C;"></i></a>|';
                                                                            }
        </sec:authorize>

        <sec:authorize access="hasAuthority('RECOVER_DOCUMENT_PRIVILEGE')">
                                                                            if (data.flag === 'N')
                                                                            {
                                                                            recover = '<a id="recoverStudy" class="recoverStudy" role="tooltip" data-microtip-position="left" title="" aria-label="Recover"><i class="mdi mdi-restore" style="font-size:18px; margin:0 3px;color:#FF425C;"></i></a>';
                                                                            }
        </sec:authorize>
        <sec:authorize access="hasAnyRole('ROLE_PRACTICE_PROVIDER,ROLE_CORP_PROVIDER,ROLE_GROUPCLINIC_PROVIDER,ROLE_REFERING_PROVIDER')">
                                                                            if (data.runstatus === "ASSIGNED")
                                                                            {
                                                                            action = edit + view + prints + createreport + del + recover;
                                                                            } else if (data.runstatus === "ONHOLD")
                                                                            {
                                                                            action = edit + view + prints + createreport + del + recover;
                                                                            } else if (data.runstatus === "COMPLETED")
                                                                            {
                                                                            action = view + viewreport + prints;
                                                                            } else if (data.runstatus === "IN PROCESS")
                                                                            {
                                                                            action = view + prints;
                                                                            }

                                                                            if (data.filecount > 0)
                                                                            {
                                                                            action = action + download;
                                                                            }

        </sec:authorize>

        <sec:authorize access="hasAnyRole('ROLE_ENTITY_ADMIN')">
                                                                            if (data.runstatus === "ASSIGNED")
                                                                            {
                                                                            action = edit + view + prints + del + recover;
                                                                            } else if (data.runstatus === "ONHOLD")
                                                                            {
                                                                            action = view + prints + del + recover;
                                                                            } else if (data.runstatus === "COMPLETED")
                                                                            {
                                                                            action = view + viewreport + prints + del + recover;
                                                                            } else if (data.runstatus === "IN PROCESS")
                                                                            {
                                                                            action = view + prints + del + recover;
                                                                            }

                                                                            if (data.filecount > 0)
                                                                            {
                                                                            action = action + download;
                                                                            }
        </sec:authorize>

        <sec:authorize access="hasAnyRole('ROLE_ADMIN,ROLE_USER,ROLE_ENTITY_STAFF,ROLE_CORP_PRACTICE,ROLE_CORP_ADMIN,ROLE_CORP_STAFF,
                       ROLE_GROUPCLINIC_ADMIN,ROLE_GROUPCLINIC_STAFF,ROLE_BILLING_ADMIN,ROLE_BILLING_STAFF,
                       ROLE_PRACTICE_ADMIN,ROLE_PRACTICE_STAFF')">
                                                                            if (data.runstatus === "ASSIGNED")
                                                                            {
                                                                            action = view + prints + del + recover;
                                                                            } else if (data.runstatus === "ONHOLD")
                                                                            {
                                                                            action = view + prints + del + recover;
                                                                            } else if (data.runstatus === "IN PROCESS")
                                                                            {
                                                                            action = view + prints + del + recover;
                                                                            } else if (data.runstatus === "COMPLETED")
                                                                            {
                                                                            action = view + viewreport + prints + del + recover;
                                                                            }
                                                                            if (data.filecount > 0)
                                                                            {
                                                                            action = action + download;
                                                                            }
        </sec:authorize>

                                                                            return action;
                                                                            }, "orderable": true, "searchable": true, "name": "action"},
                                                                            {"data": function (data) {
                                                                            return " " + data.ddlpractice; //spracticename
                                                                            }, "orderable": true, "searchable": true, "name": "ddlpractice"},
                                                                            {"data": function (data) {
                                                                            return " " + data.ddlinsurance; //spracticename
                                                                            }, "orderable": true, "searchable": true, "name": "ddlinsurance"},
                                                                            {"data": function (data) {
                                                                            return "Clinical History:  " + data.notes + ". Relevant Medical History:  " + data.notes1 + ". Surgical Dental History:  " + data.notes2; //spracticename
                                                                            }, "orderable": true, "searchable": true, "name": "notes"},
                                                                            {"data": function (data) {
                                                                            return " " + data.study; //spracticename
                                                                            }, "orderable": true, "searchable": true, "name": "study"} // 15
                                                                            ],
                                                                            dom: 'fBrtipl',
                                                                            buttons: [
                                                                            {
                                                                            extend: 'csv',
                                                                                    text: '<img src="assets/images/excelicon.png">',
                                                                                    className: 'dt-pdf-btn',
                                                                                    titleAttr: 'Download list in excel Format',
                                                                                    exportOptions: {
                                                                                    columns: [1, 13, 3, 4, 5, 14, 15, 8, 16, 10, 11]
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
                                                                                    columns:  [1, 13, 3, 4, 5, 14, 15, 8, 16, 10, 11]
                                                                                    }}
                                                                            /*{
                                                                            extend: 'csv',
                                                                                    text: '<img src="assets/images/checkexcelicon.png">',
                                                                                    className: 'dt-pdf-btn',
                                                                                    titleAttr: 'Download list in excel Format',
                                                                                    exportOptions: {
                                                                                    rows: function (idx, data, node) {
                                                                                    return $(node).find('.check:checked').length === 1;
                                                                                    },
                                                                                            columns: [1, 11, 3, 4, 12, 13, 8, 9]
                                                                                    }
                                                                            } */],
                                                                            createdRow: function (row, data, dataIndex) {

        <sec:authorize access="hasAnyRole('ROLE_PRACTICE_PROVIDER,ROLE_CORP_PROVIDER,ROLE_GROUPCLINIC_PROVIDER,ROLE_REFERING_PROVIDER')">
                                                                            //  $(row).find('td:eq(0)').hide();
                                                                            //  $(row).find('td:eq(4)').attr('data-toggle', "tooltip");
                                                                            //  $(row).find('td:eq(4)').attr('data-placement', "left");
                                                                            //  $(row).find('td:eq(4)').attr('data-original-title', data["ddlpractice"].toString());
                                                                            if (data["ddlpractice"].toString() != ''){
                                                                            $(row).find('td:eq(2)').attr('role', "tooltip");
                                                                            $(row).find('td:eq(2)').attr('data-microtip-position', "right");
                                                                            $(row).find('td:eq(2)').attr('data-microtip-size', "medium");
                                                                            $(row).find('td:eq(2)').attr('aria-label', data["ddlpractice"].toString());
                                                                            }

                                                                            if (data["ddlinsurance"].toString() != ''){
                                                                            $(row).find('td:eq(6)').attr('role', "tooltip");
                                                                            $(row).find('td:eq(6)').attr('data-microtip-position', "left");
                                                                            $(row).find('td:eq(6)').attr('aria-label', data["ddlinsurance"].toString());
                                                                            }

                                                                            if (data["radiology_provider_name"].toString() != ''){
                                                                            $(row).find('td:eq(3)').attr('role', "tooltip");
                                                                            $(row).find('td:eq(3)').attr('data-microtip-position', "right");
                                                                            $(row).find('td:eq(3)').attr('data-microtip-size', "medium");
                                                                            $(row).find('td:eq(3)').attr('aria-label', data["radiology_provider_name"].toString());
                                                                            }

                                                                            //  $(row).find('td:eq(7)').hide();     

                                                                            $(row).find('td:eq(7)').attr('data-toggle', "tooltip");
                                                                            $(row).find('td:eq(7)').attr('data-html', "true");
                                                                            $(row).find('td:eq(7)').attr('data-microtip-position', "left");
                                                                            $(row).find('td:eq(7)').attr('data-title', "<u>Clinical History: </u><br>" + data["notes"] + "<br>" + "<u>Relevant Medical History: </u><br>" + data["notes1"] + "<br>" + "<u>Surgical Dental History: </u><br>" + data["notes2"]);
                                                                            if (data["study"].toString() != ''){
                                                                            $(row).find('td:eq(9)').attr('role', "tooltip");
                                                                            $(row).find('td:eq(9)').attr('data-microtip-position', "left");
                                                                            $(row).find('td:eq(9)').attr('aria-label', data["study"].toString());
                                                                            }
        </sec:authorize>
        <sec:authorize access="hasAnyRole('ROLE_ADMIN,ROLE_ENTITY_ADMIN,ROLE_ENTITY_STAFF,ROLE_CORP_ADMIN,ROLE_CORP_STAFF,ROLE_GROUPCLINIC_ADMIN,ROLE_GROUPCLINIC_STAFF,ROLE_BILLING_ADMIN,ROLE_BILLING_STAFF,ROLE_PRACTICE_ADMIN,ROLE_PRACTICE_STAFF')">
                                                                            // $(row).find('td:eq(0)').hide();  
                                                                            if (data["ddlpractice"].toString() != ''){
                                                                            $(row).find('td:eq(2)').attr('role', "tooltip");
                                                                            $(row).find('td:eq(2)').attr('data-microtip-position', "right");
                                                                            $(row).find('td:eq(2)').attr('data-microtip-size', "medium");
                                                                            $(row).find('td:eq(2)').attr('aria-label', data["ddlpractice"].toString());
                                                                            }

                                                                            if (data["radiology_provider_name"].toString() != ''){
                                                                            $(row).find('td:eq(3)').attr('role', "tooltip");
                                                                            $(row).find('td:eq(3)').attr('data-microtip-position', "right");
                                                                            $(row).find('td:eq(3)').attr('data-microtip-size', "medium");
                                                                            $(row).find('td:eq(3)').attr('aria-label', data["radiology_provider_name"].toString());
                                                                            }

                                                                            if (data["ddlinsurance"].toString() != ''){
                                                                            $(row).find('td:eq(6)').attr('role', "tooltip");
                                                                            $(row).find('td:eq(6)').attr('data-microtip-position', "left");
                                                                            $(row).find('td:eq(6)').attr('data-microtip-size', "medium");
                                                                            $(row).find('td:eq(6)').attr('aria-label', data["ddlinsurance"].toString());
                                                                            }
                                                                            //  $(row).find('td:eq(6)').hide();

                                                                            $(row).find('td:eq(7)').attr('data-toggle', "tooltip");
                                                                            $(row).find('td:eq(7)').attr('data-html', "true");
                                                                            $(row).find('td:eq(7)').attr('data-microtip-position', "left");
                                                                            $(row).find('td:eq(7)').attr('data-title', "<u>Clinical History: </u><br>" + data["notes"] + "<br>" + "<u>Relevant Medical History: </u><br>" + data["notes1"] + "<br>" + "<u>Surgical Dental History: </u><br>" + data["notes2"]);
                                                                            if (data["study"].toString() != ''){
                                                                            $(row).find('td:eq(9)').attr('role', "tooltip");
                                                                            $(row).find('td:eq(9)').attr('data-microtip-position', "left");
                                                                            $(row).find('td:eq(9)').attr('data-microtip-size', "medium");
                                                                            $(row).find('td:eq(9)').attr('aria-label', data["study"].toString());
                                                                            }
        </sec:authorize>
                                                                            if ($(row).find('td:eq(12)').find('a:eq(6)').attr('id') === 'recoverStudy' || $(row).find('td:eq(12)').find('a:eq(5)').attr('id') === 'recoverStudy' || $(row).find('td:eq(12)').find('a:eq(4)').attr('id') === 'recoverStudy' || $(row).find('td:eq(12)').find('a:eq(3)').attr('id') === 'recoverStudy' || $(row).find('td:eq(12)').find('a:eq(2)').attr('id') === 'recoverStudy' || $(row).find('td:eq(12)').find('a:eq(1)').attr('id') === 'recoverStudy')
                                                                            {
                                                                            $(row).find('td').not(':eq(12)').attr('style', 'font-weight: bold; !important; text-decoration:line-through; color:red;');
                                                                            $(row).find('td').find('a').removeAttr('href');
                                                                            $(row).find('td').find('a').removeAttr('target');
                                                                            $(row).find('td').find('a').removeAttr('onclick');
                                                                            }

                                                                            }, footerCallback: function (tfoot, data, start, end, display) {
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
                                                                    localStorage.setItem("rddate", startVal.format("MM/DD/YYYY") + ' / ' + endVal.format("MM/DD/YYYY"));
                                                                    table.ajax.url("radiologydata?startDate=" + start + "&endDate=" + end).load();
                                                                    });
                                                                    var searchOption = '';
                                                                    $('#showall').click(function () {
                                                                    $('#flading').show();
                                                                    $('#ddlsearch').val(0).change();
                                                                    table.search('').columns().search('').draw();
                                                                    searchOption = '0';
                                                                    table.ajax.url("radiologydata?startDate=" + moment(start).format("YYYY-MM-DD") + "&endDate=" + moment(end).format("YYYY-MM-DD")).load();
                                                                    });
                                                                    $('#search').click(function () {
                                                                    $('#flading').show();
                                                                    searchOption = $('#ddlsearch').val();
                                                                    if (searchOption === '0')
                                                                    {
                                                                    msgbox("Select the Search option..!", "Radiology Portal", "error");
                                                                    $('#flading').hide();
                                                                    }
                                                                    // firstname
                                                                    else if (searchOption === '1')
                                                                    {
                                                                    var lenFirstName = $('#para_Firstname').val().length;
                                                                    if (lenFirstName !== 0)
                                                                    {
                                                                    table.ajax.url("radiologysearchdata?para=patient_master.first_name&paraVal=" + $('#para_Firstname').val()).load();
                                                                    } else
                                                                    {
                                                                    msgbox("Enter Patient First Name", "radiology Portal", "error");
                                                                    $('#flading').hide();
                                                                    }
                                                                    }
                                                                    // lastname
                                                                    else if (searchOption === '2')
                                                                    {
                                                                    var lenLastName = $('#para_Lastname').val().length;
                                                                    if (lenLastName !== 0)
                                                                    {
                                                                    table.ajax.url("radiologysearchdata?para=patient_master.last_name&paraVal=" + $('#para_Lastname').val()).load();
                                                                    } else
                                                                    {
                                                                    msgbox("Enter Patient Last Name..!", "radiology Portal", "error");
                                                                    $('#flading').hide();
                                                                    }
                                                                    }
                                                                    // dob
                                                                    else if (searchOption === '3')
                                                                    {
                                                                    var lenDob = $('#para_Dob').val().length;
                                                                    if (lenDob !== 0)
                                                                    {
                                                                    table.ajax.url("radiologysearchdata?para=patient_master.dob&paraVal=" + convertMDYtoYMD($('#para_Dob').val())).load();
                                                                    } else
                                                                    {
                                                                    msgbox("Enter Patient Dob..!", "radiology Portal", "error");
                                                                    $('#flading').hide();
                                                                    }
                                                                    }
                                                                    // Dos
                                                                    else if (searchOption === '4')
                                                                    {
                                                                    var lenDos = $('#para_Dos').val().length;
                                                                    if (lenDos !== 0)
                                                                    {
                                                                    table.ajax.url("radiologysearchdata?para=radiology_study_request.dos&paraVal=" + convertYMDtoMDY($('#para_Dos').val())).load();
                                                                    } else
                                                                    {
                                                                    msgbox("Enter Patient Dot..!", "radiology Portal", "error");
                                                                    $('#flading').hide();
                                                                    }
                                                                    }
                                                                    // Practice
                                                                    else if (searchOption === '5')
                                                                    {
                                                                    var lenPractice = $('#ddlSearchPractice').val().length;
                                                                    if (lenPractice !== 0)
                                                                    {
                                                                    table.ajax.url("radiologysearchdata?para=patient_master.practice_id&paraVal=" + $('#ddlSearchPractice').val()).load();
                                                                    } else
                                                                    {
                                                                    msgbox("Please Select Practice..!", "radiology Portal", "error");
                                                                    $('#flading').hide();
                                                                    }
                                                                    }
                                                                    // Payor
                                                                    else if (searchOption === '6')
                                                                    {
                                                                    var lenPayor = $('#payorid').val().length;
                                                                    if (lenPayor !== 0)
                                                                    {
                                                                    table.ajax.url("radiologysearchdata?para=payor_master.payor_id&paraVal=" + $('#payorid').val()).load();
                                                                    } else
                                                                    {
                                                                    msgbox("Please Select Insurance..!", "radiology Portal", "error");
                                                                    $('#flading').hide();
                                                                    }
                                                                    }

                                                                    });
                                                                    //  var usertype = '<%= session.getAttribute("UT")%>';
                                                                    // var dt = $('#eligibilitytable').DataTable();

                                                                    $(document).on("click", "#eligibilitytable a.singledownbutton", function () {
                                                                    let tr = $(this).closest('tr');
                                                                    let preestid = tr.find('td:eq(1)').text();
                                                                    $.ajax({
                                                                    url: "downloadradiology",
                                                                            type: "get", //send it through get method
                                                                            data: {
                                                                            preestid: preestid
                                                                            },
                                                                            success: function (response) {
                                                                            if (response.length > 0)
                                                                            {
                                                                            console.log(response);
                                                                            }
                                                                            },
                                                                            error: function (err) {
                                                                            console.log(err);
                                                                            }
                                                                    });
                                                                    });
                                                                    $('#singledown').click(function () {


                                                                    //  console.log('single document click..');
                                                                    });
                                                                    $(document).on("click", "#eligibilitytable a.deleteStudy", function () {
                                                                    if (confirm("Are you sure you want to delete this record?")) {
                                                                    let tr = $(this).closest('tr');
                                                                    let ebid = tr.find('td:eq(1)').text();
                                                                    //  alert(ebid);
                                                                    //  alert(tr.find('td:eq(8)').find('#deleteDocument').html());

                                                                    $.ajax({
                                                                    url: "deleteStudy",
                                                                            type: "get", //send it through get method
                                                                            data: {
                                                                            eb_id: $.trim(ebid)
                                                                            },
                                                                            success: function (response) {
                                                                            if (response.length > 0)
                                                                            {
                                                                            console.log(response);
                                                                            msgbox("Radiology Study Request Deleted", "Radiology Portal", "success");
                                                                            start = start.format('YYYY-MM-DD');
                                                                            end = end.format('YYYY-MM-DD');
                                                                            if (searchOption === '1')
                                                                            {
                                                                            table.ajax.url("radiologysearchdata?para=patient_master.first_name&paraVal=" + $('#para_Firstname').val()).load();
                                                                            } else if (searchOption === '2')
                                                                            {
                                                                            table.ajax.url("radiologysearchdata?para=patient_master.last_name&paraVal=" + $('#para_Lastname').val()).load();
                                                                            } else if (searchOption === '3')
                                                                            {
                                                                            table.ajax.url("radiologysearchdata?para=patient_master.dob&paraVal=" + convertMDYtoYMD($('#para_Dob').val())).load();
                                                                            } else if (searchOption === '4')
                                                                            {
                                                                            table.ajax.url("radiologysearchdata?para=radiology_study_request.dos&paraVal=" + convertYMDtoMDY($('#para_Dos').val())).load();
                                                                            } else if (searchOption === '5')
                                                                            {
                                                                            table.ajax.url("radiologysearchdata?para=patient_master.practice_id&paraVal=" + $('#ddlSearchPractice').val()).load();
                                                                            } else if (searchOption === '6')
                                                                            {
                                                                            table.ajax.url("radiologysearchdata?para=payor_master.payor_id&paraVal=" + $('#payorid').val()).load();
                                                                            }
                                                                            else
                                                                            {
                                                                            table.ajax.url("radiologydata?startDate=" + moment(start).format("YYYY-MM-DD") + "&endDate=" + moment(end).format("YYYY-MM-DD")).load();
                                                                            }
                                                                            }
                                                                            },
                                                                            error: function (err) {
                                                                            console.log(err);
                                                                            msgbox(err, "Radiology Portal", "error");
                                                                            }
                                                                    });
                                                                    }
                                                                    });
                                                                    $(document).on("click", "#eligibilitytable a.recoverStudy", function () {
                                                                    let tr = $(this).closest('tr');
                                                                    let ebid = tr.find('td:eq(1)').text();
                                                                    //  alert(ebid);
                                                                    //  alert(tr.find('td:eq(8)').find('#recoverDocument').html());
                                                                    $.ajax({
                                                                    url: "recoverStudy",
                                                                            type: "get", //send it through get method
                                                                            data: {
                                                                            eb_id: $.trim(ebid)
                                                                            },
                                                                            success: function (response) {
                                                                            if (response.length > 0)
                                                                            {
                                                                            console.log(response);
                                                                            msgbox("Radiology Study Request Recovered", "Radiology Portal", "success");
                                                                            start = start.format('YYYY-MM-DD');
                                                                            end = end.format('YYYY-MM-DD');
                                                                            if (searchOption === '1')
                                                                            {
                                                                            table.ajax.url("radiologysearchdata?para=patient_master.first_name&paraVal=" + $('#para_Firstname').val()).load();
                                                                            } else if (searchOption === '2')
                                                                            {
                                                                            table.ajax.url("radiologysearchdata?para=patient_master.last_name&paraVal=" + $('#para_Lastname').val()).load();
                                                                            } else if (searchOption === '3')
                                                                            {
                                                                            table.ajax.url("radiologysearchdata?para=patient_master.dob&paraVal=" + convertMDYtoYMD($('#para_Dob').val())).load();
                                                                            } else if (searchOption === '4')
                                                                            {
                                                                            table.ajax.url("radiologysearchdata?para=radiology_study_request.dos&paraVal=" + convertYMDtoMDY($('#para_Dos').val())).load();
                                                                            } else if (searchOption === '5')
                                                                            {
                                                                            table.ajax.url("radiologysearchdata?para=patient_master.practice_id&paraVal=" + $('#ddlSearchPractice').val()).load();
                                                                            } else if (searchOption === '6')
                                                                            {
                                                                            table.ajax.url("radiologysearchdata?para=payor_master.payor_id&paraVal=" + $('#payorid').val()).load();
                                                                            }
                                                                            else
                                                                            {
                                                                            table.ajax.url("radiologydata?startDate=" + moment(start).format("YYYY-MM-DD") + "&endDate=" + moment(end).format("YYYY-MM-DD")).load();
                                                                            }
                                                                            }
                                                                            },
                                                                            error: function (err) {
                                                                            console.log(err);
                                                                            msgbox(err, "Radiology Portal", "error");
                                                                            }
                                                                    });
                                                                    });
                                                                    var brid = '';
                                                                    $('#brid').hide();
                                                                    $('#ddlpractice').change(function (event) {
                                                                    $('#flading').show();
                                                                    $('#ddlbenefittype').val('');
                                                                    var select = $('#ddlinsurance');
                                                                    select.find('option').remove();
                                                                    // $("<option value='0' id='0'>None</option>").appendTo(select);
                                                                    var practiceid = $("select#ddlpractice").val();
                                                                    if (practiceid !== '')
                                                                    {

                                                                    $('#dob').val("");
                                                                    $('#ddlpatient').val("");
                                                                    $('#ddlgender').val("");
                                                                    $('#mid').val("");
                                                                    $('#pid').val("");
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
                                                                    url: "radiologistdetailswtpracticeid",
                                                                            type: "get", //send it through get method
                                                                            data: {
                                                                            entityId: entity,
                                                                                    practiceId:practiceid
                                                                            },
                                                                            success: function (response) {
                                                                            var select = $('#radiologist');
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
                                                                            // var sv = value.split('~');
                                                                            $('<option>').val(obj[i].practice_id).text(obj[i].name).appendTo(select);
                                                                            }
                                                                            //alert(entity);

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
                                                                    $('#radiologist').change(function (event) {
                                                                    $.ajax({
                                                                    url: "providerdetailswtentityid",
                                                                            type: "get", //send it through get method
                                                                            data: {
                                                                            practiceid:  $('#radiologist').val()
                                                                            },
                                                                            success: function (response) {
                                                                            var select = $('#ddlradiology');
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
                                                                    url: "getselectpayorwtpatid",
                                                                            type: "get", //send it through get method
                                                                            data: {
                                                                            selectpayorlist: patientid
                                                                            },
                                                                            success: function (response) {
                                                                            var select = $('#ddlinsurance');
                                                                            select.find('option').remove();
                                                                            console.log(response);
                                                                            var txt = response;
                                                                            var obj = jQuery.parseJSON(txt);
                                                                            console.log(obj);
                                                                            if (obj.length > 0)
                                                                            {
                                                                            for (var i = 0; i < obj.length; i++)
                                                                            {
                                                                            // var sv = value.split('~');
                                                                            $('<option>').val(obj[i].payor_id).text(obj[i].name).attr('id', obj[i].payor_id).appendTo(select);
                                                                            if (obj[i].sec_payor_id !== '0')
                                                                            {
                                                                            $('<option>').val(obj[i].sec_payor_id).text(obj[i].sec_name).attr('id', obj[i].sec_payor_id).appendTo(select);
                                                                            }

                                                                            }

                                                                            }
                                                                            }
                                                                    });
                                                                    $.ajax({
                                                                    url: "getInsDetails",
                                                                            type: "get", //send it through get method
                                                                            data: {
                                                                            patientid: patientid
                                                                            },
                                                                            success: function (response) {
                                                                            var txt = response;
                                                                            var obj = jQuery.parseJSON(txt);
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
                                                                            /* var now = new Date(obj[i].dob);
                                                                             var day = '';
                                                                             var month = '';
                                                                             if (now.getDate() < 10)
                                                                             {
                                                                             day = '0' + now.getDate();
                                                                             } else {
                                                                             day = now.getDate();
                                                                             }
                                                                             if ((now.getMonth() + 1) < 10)
                                                                             {
                                                                             month = '0' + parseInt(now.getMonth() + 1);
                                                                             } else {
                                                                             month = parseInt(now.getMonth() + 1);
                                                                             }
                                                                                 
                                                                             $('#dob').val((month) + '/' + day + '/' + now.getFullYear());  */

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
                                                                    } else if (diagnosisdiv === "diagnoisis21") {
                                                                    headTag = "heading21";
                                                                    } else if (diagnosisdiv === "diagnoisis22") {
                                                                    headTag = "heading22";
                                                                    } else {
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
                                                                    var table = $('#eligibilitytable').DataTable();
                                                                    table.column(1).search(not_tid).draw();
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
                                                                    brid = tr.find('td:eq(1)').text() + ',' + brid;
                                                                    }

                                                                    });
                                                                    brid = brid.substring(0, brid.length - 1);
                                                                    //  alert(brid);
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

                                                                    $('#ticket_type_id').val("19");
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
                                                                    msgbox("Select atleast one Study Request(s).", "Ticket Portal", "warning");
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
                                                                            type_of_ticket: "19",
                                                                                    descriptions: $(".note-editable").html(),
                                                                                    ticket_status: ticketstatus,
                                                                                    assigned_to: $("select#assigned_to").val(),
                                                                                    attachmentfile: fns,
                                                                                    attachmentfilesize: sizetext,
                                                                                    ticket_source: ticketsource,
                                                                                    ticket_priority: $("select#ticket_priority_id").val(),
                                                                                    segment: "V",
                                                                                    currentdt: today,
                                                                                    request_id: brid
                                                                            },
                                                                            success: function (response) {
                                                                            console.log(response);
                                                                            $("select#ticket_type_id").val('19');
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
                                                                    var strcontent = "Hi " + assignto + ", <br><br>" + "Type: " + tickettype + "<br>Source: " + tsource + "<br>Priority: " + ticketpriority + "<br> Assign To: " + assignto + "<br>Segment: STUDY REQUEST RELATED [V]" + "<br><br>" + $(".note-editable").html();
                                                                    // Email Config
                                                                    $.post('eMail', {
                                                                    recipient: entity_user_to,
                                                                            subject: 'Ticket Raised from Study Request Form: ' + tickettype + ' : ' + tstatus + ' to ' + assignto,
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

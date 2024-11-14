<%@page contentType="text/html"  pageEncoding="UTF-8" autoFlush="true"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@taglib prefix="spring"  uri="http://www.springframework.org/tags"  %>
<html lang="en">

    <head>
        <title>Pre-authorization Request</title>
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
            .custom-file-input:lang(en)~.custom-file-label::after {
                content: "Browse";
                height: 23px !important;
                padding: 0.3rem 0.5rem !important;
                font-size:10px;
            }
            .custom-file-label,.custom-file-input{
                padding: 0.3rem 0.5rem !important;
                height: 25px;
                width:60%;
                font-size:10px;
            }
            .custom-file button{
                font-size:10px;
            }
            .dateborder{
                /*width: 60%;*/
                border-top: hidden;
                border-left: hidden;
                border-right: hidden;
                border-top-style: hidden;
                /* border: 0; */
                border-width: 1px;
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

                                <div class="row">
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
                                                    <div class="col-md-3">
                                                        <div class="form-group">
                                                            <label class="col-form-label col col-30px">Search For</label>
                                                            <select class="form-control js-example-placeholder-multiple" name="ddlsearch" id="ddlsearch" >
                                                                <option value = "0">Select</option>
                                                                <option value = "1">Patient Firstname</option> 
                                                                <option value = "2">Patient Lastname</option> 
                                                                <option value = "3">DOB</option>                                                                
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
                                                            <select class="form-control js-example-placeholder-multiple col-sm-8" id="ddlSearchPractice" data-placeholder="Select Practice"  name="ddlSearchPractice"></select>
                                                            <select class="form-control js-example-placeholder-multiple"  data-placeholder="Select Insurance" id="payorid" name="payorid" >
                                                                <option value ="" >--Select--</option>
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
                                                            <sec:authorize access="hasAuthority('NEW_PREAUTHORIZATION_PRIVILEGE')">
                                                                <button type="button" onclick="addNew()"  id="btnnew" class="btn btn-warning" style="padding:5px 10px!important;" title="New Pre Authorization" ><i class="fas fa-plus-circle"></i>New</button>
                                                            </sec:authorize>
                                                        </sec:authorize> 
                                                    </div>
                                                </div>


                                                <hr class="hrtopbtm"><br>

                                                <div class="dt-responsive table-responsive">
                                                    <table  id="eligibilitytable" width="98%" style="width: 0px;" class="table table-striped table-bordered nowrap">
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
                                                                <th>Practice</th>
                                                                <th>Payor</th>
                                                                <th>Notes</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>   
                                                        </tbody>
                                                    </table>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div style="display:none;" id="new_bill"   class="card">
                                        <div class="card-body">
                                            <form:form  id="design-1-form" class="form-1 needs-validation" name="preauthform"  method="POST" action="savepreauthorization" modelAttribute="preauth">
                                                <h3 class="wiz-items">
                                                    <span class="num-icon">1</span><span style="color:#000000">
                                                        Visit Information
                                                    </span>
                                                </h3>

                                                <input type="hidden" name="procedurecount" id="procedure_count" value="0">
                                                <input type="hidden" name="diagonisiscount" id="diagnosis_count" value="0">

                                                <input type="hidden" name="billstatus" id="billstatus" value="SUBMIT">
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
                                                                    <select class="form-control js-example-placeholder-multiple col-sm-12" id="ddlinsurance" data-placeholder="Select Insurance" tabindex="11" name="ddlinsurance" >
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

                                                            <div class="form-group row">
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
                                                                <label for="b-t-name" class="col-sm-3 col-form-label font-style-label">Treating Surgeon<font color="red">*</font> </label>
                                                                <div class="col-sm-9">
                                                                    <select class="form-control js-example-placeholder-multiple col-sm-12" required id="ddlprovider" data-placeholder="Select Treating Surgeon" tabindex="2"  name="ddlprovider">
                                                                    </select>
                                                                </div>
                                                            </div>                                                                

                                                            <div class="form-group row">
                                                                <label for="b-t-name" class="col-sm-3 col-form-label font-style-label">Referring Doctor</label>
                                                                <div class="col-sm-5">
                                                                    <input type="text" class="form-control"  name="refdoc" tabindex="4" id="refdocvisit"  placeholder="">                                                      
                                                                </div>
                                                                <div class="col-sm-4">
                                                                    <input type="text" class="form-control" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');"  name="refdocnpi" tabindex="4" id="refdocnpi"  placeholder="NPI">                                                      
                                                                </div>
                                                            </div>                                                                
                                                            <div class="form-group row">
                                                                <label for="b-t-name" class="col-sm-3 col-form-label font-style-label">Radiologist</label>
                                                                <div class="col-sm-5">
                                                                    <input type="text" class="form-control"  name="radiologist" tabindex="4" id="radiogtsvisit"  placeholder="">                                                      
                                                                </div>
                                                                <div class="col-sm-4">
                                                                    <input type="text" class="form-control" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');"  name="radiologistnpi" tabindex="4" id="radiogtsnpi"  placeholder="NPI">                                                      
                                                                </div>
                                                            </div>
                                                            <div  class="form-group row">
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
                                                    <jsp:include page="diagnosiscode.jsp"></jsp:include>
                                                    </section>

                                                    <h3 class="wiz-items">
                                                        <span class="num-icon">3</span><span style="color:#000000">
                                                            Procedure Codes
                                                        </span>
                                                    </h3>
                                                    <section id="procedure_section" >
                                                    <jsp:include page="procedurecode_main.jsp"></jsp:include>                                                               
                                                    </section>

                                                    <h3 class="wiz-items">
                                                        <span class="num-icon">4</span><span style="color:#000000">
                                                            Review
                                                        </span>
                                                    </h3>
                                                    <section disabled>  
                                                        <div class="col-md-12">
                                                            <div class="card statustic-card">
                                                                <div style="padding: 10px 15px;" class="card-header bg-success border-0 ">
                                                                    <h5 class="text-white m-b-0">Visit Information</h5>
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
                                                                                <label class="col-sm-4 col-form-label font-style-label" >Treating Surgeon:</label>
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

                                                                            <div class="form-group row" style="display:none;">
                                                                                <label class="col-sm-4 col-form-label font-style-label" >DOS</label>
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
                                                                            <label class="font-style-label"><u>Consultation / Examination :</u></label>
                                                                        </div> 
                                                                    </div>   
                                                                    <div class="row">  
                                                                        <div id="diagnoisis1div" style="display:none" >
                                                                        </div> 
                                                                    </div>      
                                                                    <div class="row"> 
                                                                        <div id="diagnoisis2divt" style="display:none" class="">
                                                                            <label class="font-style-label"><u>Post - Op after surgery & Suture remove :</u></label>
                                                                        </div>
                                                                    </div>   
                                                                    <div class="row">    
                                                                        <div id="diagnoisis2div" style="display:none" >
                                                                        </div>
                                                                    </div>
                                                                    <div class="row">    
                                                                        <div id="diagnoisis3divt" style="display:none" >
                                                                            <label class="font-style-label"><u>Suture Placed   :</u></label>
                                                                        </div>
                                                                    </div>   
                                                                    <div class="row">    
                                                                        <div id="diagnoisis3div" style="display:none" >
                                                                        </div>
                                                                    </div>
                                                                    <div class="row">    
                                                                        <div id="diagnoisis4divt" style="display:none" >
                                                                            <label class="font-style-label"><u>Post - Surgical for complication surgery :</u></label>
                                                                        </div>
                                                                    </div>   
                                                                    <div class="row">    
                                                                        <div id="diagnoisis4div" style="display:none" >
                                                                        </div>
                                                                    </div>
                                                                    <div class="row">    
                                                                        <div id="diagnoisis5divt" style="display:none" >
                                                                            <label class="font-style-label"><u>Material :</u></label>
                                                                        </div>
                                                                    </div>   
                                                                    <div class="row">    
                                                                        <div id="diagnoisis5div" style="display:none" >
                                                                        </div>
                                                                    </div>

                                                                    <div class="row">    
                                                                        <div id="diagnoisis6divt" style="display:none" >
                                                                            <label class="font-style-label"><u>Periodontal Disease :</u></label>
                                                                        </div>
                                                                    </div>   
                                                                    <div class="row">    
                                                                        <div id="diagnoisis6div" style="display:none" >
                                                                        </div>
                                                                    </div>
                                                                    <div class="row">    
                                                                        <div id="diagnoisis7divt" style="display:none" >
                                                                            <label class="font-style-label"><u>Implant or Bone Graft failure :</u></label>
                                                                        </div>
                                                                    </div>   
                                                                    <div class="row">    
                                                                        <div id="diagnoisis7div" style="display:none" >
                                                                        </div>
                                                                    </div>
                                                                    <div class="row">    
                                                                        <div id="diagnoisis8divt" style="display:none" >
                                                                            <label class="font-style-label"><u>Sinus Problem :</u></label>
                                                                        </div>
                                                                    </div>   
                                                                    <div class="row">    
                                                                        <div id="diagnoisis8div" style="display:none" >
                                                                        </div>
                                                                    </div>
                                                                    <div class="row">    
                                                                        <div id="diagnoisis9divt" style="display:none" >
                                                                            <label class="font-style-label"><u>Tissue Lesion/Cyst/Infection :</u></label>
                                                                        </div>
                                                                    </div>   
                                                                    <div class="row">    
                                                                        <div id="diagnoisis9div" style="display:none" >
                                                                        </div>
                                                                    </div>
                                                                    <div class="row">    
                                                                        <div id="diagnoisis10divt" style="display:none" >
                                                                            <label class="font-style-label"><u>Bone Lesion/Bony Cyst :</u></label>
                                                                        </div>
                                                                    </div>   
                                                                    <div class="row">    
                                                                        <div id="diagnoisis10div" style="display:none" >
                                                                        </div>
                                                                    </div>

                                                                    <div class="row">    
                                                                        <div id="diagnoisis11divt" style="display:none" >
                                                                            <label class="font-style-label"><u>Soft & Hard Tissue & Bone / Biopsy :</u></label>
                                                                        </div>
                                                                    </div>   
                                                                    <div class="row">    
                                                                        <div id="diagnoisis11div" style="display:none" >
                                                                        </div>
                                                                    </div>
                                                                    <div class="row">    
                                                                        <div id="diagnoisis12divt" style="display:none" >
                                                                            <label class="font-style-label"><u>Zygomatic & Le-Fort Fracture/ Nasal :</u></label>
                                                                        </div>
                                                                    </div>   
                                                                    <div class="row">    
                                                                        <div id="diagnoisis12div" style="display:none" >
                                                                        </div>
                                                                    </div>
                                                                    <div class="row">    
                                                                        <div id="diagnoisis13divt" style="display:none" >
                                                                            <label class="font-style-label"><u>Injury/Traumatic/Accidental :</u></label>
                                                                        </div>
                                                                    </div>   
                                                                    <div class="row">    
                                                                        <div id="diagnoisis13div" style="display:none" >
                                                                        </div>
                                                                    </div>                                                                    
                                                                    <div class="row">    
                                                                        <div id="diagnoisis14divt" style="display:none" >
                                                                            <label class="font-style-label"><u>Loss Tooth or Fracture :</u></label>
                                                                        </div>
                                                                    </div>
                                                                    <div class="row">    
                                                                        <div id="diagnoisis14div" style="display:none" >
                                                                        </div>
                                                                    </div>
                                                                    <div class="row">    
                                                                        <div id="diagnoisis15divt" style="display:none" >
                                                                            <label class="font-style-label"><u>Medical History Review :</u></label>
                                                                        </div>
                                                                    </div>   
                                                                    <div class="row">    
                                                                        <div id="diagnoisis15div" style="display:none" >
                                                                        </div>
                                                                    </div>
                                                                    <div class="row">    
                                                                        <div id="diagnoisis16divt" style="display:none" >
                                                                            <label class="font-style-label"><u>Bone Atrophy :</u></label>
                                                                        </div>
                                                                    </div>   
                                                                    <div class="row">    
                                                                        <div id="diagnoisis16div" style="display:none" >
                                                                        </div>
                                                                    </div>
                                                                    <div class="row">    
                                                                        <div id="diagnoisis17divt" style="display:none" >
                                                                            <label class="font-style-label"><u>Edentulous :</u></label>
                                                                        </div>
                                                                    </div>   
                                                                    <div class="row">    
                                                                        <div id="diagnoisis17div" style="display:none" >
                                                                        </div>
                                                                    </div>

                                                                    <div class="row">    
                                                                        <div id="diagnoisis18divt" style="display:none" >
                                                                            <label class="font-style-label"><u>Sleep Problem :</u></label>
                                                                        </div>
                                                                    </div>   
                                                                    <div class="row">    
                                                                        <div id="diagnoisis18div" style="display:none" >
                                                                        </div>
                                                                    </div>
                                                                    <div class="row">    
                                                                        <div id="diagnoisis19divt" style="display:none" >
                                                                            <label class="font-style-label"><u>Laceration :</u></label>
                                                                        </div>
                                                                    </div>   
                                                                    <div class="row">    
                                                                        <div id="diagnoisis19div" style="display:none" >
                                                                        </div>
                                                                    </div>
                                                                    <div class="row">    
                                                                        <div id="diagnoisis20divt" style="display:none" >
                                                                            <label class="font-style-label"><u>Foreign Body :</u></label>
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

                                                    <jsp:include page="reviewproc1.jsp"></jsp:include> 

                                                    </section>
                                                    <input type="hidden" name="disganosiscode" id="disganosiscode">
                                                    <input type="hidden" name="disganosiscodecount" id="disganosiscodecount">
                                                    <input type="hidden" name="result" id="result">
                                                    <input type="hidden" name="resultcode" value="" id="resultcodev">

                                                    <div class="card cardbottom">

                                                        <div class="row mb-2 mt-3" id="upload_1">
                                                            <div class="col-4 mt-3">
                                                                <p class="m-0"><i class="fas fa-circle text-c-blue f-10 m-r-10"></i> Consultation Report/Clinical Note</p>
                                                            </div>
                                                            <div class="col-6">
                                                                <!--<div class="form-group row">-->
                                                                <p class="m-0 data_27 " style="font-size:10px;float: left;width:110px;">
                                                                    DOS: <input id="date_control_1" type="text" class="dateborder datedos txtDate data_currentdate" required autocomplete="off" style="width:80px;margin-top:14px;"></p>

                                                                <div class="custom-file" style="display: inline;float: left;width:350px;"> 
                                                                    <input type="file" class="custom-file-input-data"  id="file_1" name="file_1" >
                                                                    <label class=" custom-file-label" for="file_1" >Choose file...</label>
                                                                    <button type="button" class="btn btn-primary btn-sm"  style="margin-left: 225px;margin-top: -25px;height: 31px;"  onclick="uploadFile(this, '1');">Upload</button> 

                                                                </div>

                                                            </div>
                                                        </div>
                                                        <div class="row mb-2 m-t-15" id="upload_2">
                                                            <div class="col-4 mt-3">
                                                                <p class="m-0"><i class="fas fa-circle text-c-red f-10 m-r-10"></i>Radiographic Report</p>
                                                            </div>

                                                            <div class="col-6">

                                                                <p class="m-0 data_28 " style="font-size:10px;float: left;width:110px;">
                                                                    DOS: <input id="date_control_2" type="text" class="dateborder datedos txtDate data_currentdate" autocomplete="off" style="width:80px;margin-top:14px;"></p>

                                                                <div class="custom-file" style="display: inline;float: left;width:350px;">
                                                                    <input type="file" class="custom-file-input-file"  id="file_2" name="file_2" >
                                                                    <label class="custom-file-label" for="file_2" >Choose file...</label>
                                                                    <button type="button" class="btn btn-primary btn-sm"style="margin-left: 225px;margin-top: -25px;height: 31px;" onclick="uploadFile(this, '2');">Upload</button> 

                                                                </div>
                                                            </div>
                                                            <div class=" col-12 form-group d-inline m-t-15">
                                                                <div class="checkbox checkbox-primary d-inline">

                                                                    <input type="checkbox" class=' preauth_chk radio-p-fill-7' required name="term" id="term" />
                                                                    <label for="term" class="cr"> <span class="text-danger">*</span> I have acknowledged and authorized AmeriDenti to initiate the insurance pre-authorization with the required documentation I provided above. AmeriDenti will perform on my behalf and will not be held responsible for the any decisions or outcome from the insurance. I also understand and agree that there will be a separate service fee for each pre-authorization requested.</label>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <hr>

                                                    </div>
                                                    <input type="hidden" name="dateofservice" id="dateofservice">
                                                    <input type="hidden" name="file1" id="getfile1">
                                                    <input type="hidden" name="dateofservice1" id="dateofservice1">
                                                    <input type="hidden" name="file2" id="getfile2">

                                                </div>
                                        </form:form>
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
                            type="button" class="btn btn-primary">Save as Draft</button>
                    <button id="btnNoConfirmDraftSign" 
                            type="button" class="btn btn-success">Sign</button>
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
        <script src="assets/js/ebill/preauthorization.js?v=<spring:message code="release.version"/>"></script>

    <script src="assets/js/plugins/select2.full.min.js"></script>
    <script src="assets/js/pages/form-select-custom.js"></script>

    <script>
                                                                        $(document).ready(function () {


                                                                        var today = new Date();
                                                                        $('#date_control_2').datepicker({
                                                                        format: 'mm/dd/yyyy',
                                                                                autoclose: true,
                                                                                startDate: "-11m",
                                                                                endDate: "0"
                                                                        }).on('changeDate', function (ev) {
                                                                        var firstDate = $(this).val();
                                                                        $('#dateofservice1').val(firstDate);
                                                                        //   $(this).datepicker('hide');
                                                                        }).mask('99/99/9999');
                                                                        //------------------------------------------------------            
                                                                        var today = new Date();
                                                                        $('#date_control_1').datepicker({
                                                                        format: 'mm/dd/yyyy',
                                                                                autoclose: true,
                                                                                startDate: "-11m",
                                                                                endDate: "0"
                                                                        }).on('changeDate', function (ev) {
                                                                        var firstDate = $(this).val();
                                                                        $('#dateofservice').val(firstDate);
                                                                        // $(this).datepicker('hide');
                                                                        }).mask('99/99/9999');
                                                                        });
                                                                        //=============================================================    
                                                                        var flag = 'N';
                                                                        var date = new Date();
                                                                        var today = new Date(date.getFullYear(), date.getMonth(), date.getDate());
                                                                        $(function () {

                                                                        $('#date_control_1').datepicker('setDate', 'today').mask('99/99/9999');
                                                                        $('#date_control_2').datepicker('setDate', 'today').mask('99/99/9999');
                                                                        //file change event handler
                                                                        $('.custom-file-input-data').on('change', function (event) {
                                                                        var file = event.target.files[0];
                                                                        if (file.name.endsWith('.exe')) {
                                                                        msgbox("Uploading EXE files are not allowed", "preauthorization Form", "error");
                                                                        $(this).next('.custom-file-label').html("Choose file...");
                                                                        $(this).val(null);
                                                                        return;
                                                                        } else if (file.name.endsWith('.dll')) {
                                                                        msgbox("Uploading DLL files are not allowed", "preauthorization Form", "error");
                                                                        $(this).next('.custom-file-label').html("Choose file...");
                                                                        $(this).val(null);
                                                                        return;
                                                                        } else if (file.name.endsWith('.sh')) {
                                                                        msgbox("Uploading sh files are not allowed", "preauthorization Form", "error");
                                                                        $(this).next('.custom-file-label').html("Choose file...");
                                                                        $(this).val(null);
                                                                        return;
                                                                        } else if (file.name.endsWith('.bat')) {
                                                                        msgbox("Uploading bat files are not allowed", "preauthorization Form", "error");
                                                                        $(this).next('.custom-file-label').html("Choose file...");
                                                                        $(this).val(null);
                                                                        return;
                                                                        }
                                                                        var fileSize = event.target.files[0].size;
                                                                        if (fileSize > 50000000)
                                                                        {
                                                                        msgbox("Uploaded file size exceeded 50MB", "preauthorization Form", "error");
                                                                        $(this).next('.custom-file-label').html("Choose file...");
                                                                        $(this).val(null);
                                                                        return;
                                                                        }

                                                                        //replace the "Choose a file" label
                                                                        $(this).next('.custom-file-label').html(file.name);
                                                                        $('#getfile1').val(file.name);
                                                                        //                                                                               
                                                                        });
                                                                        $('.custom-file-input-file').on('change', function (event) {
                                                                        var file1 = event.target.files[0];
                                                                        if (file1.name.endsWith('.exe')) {
                                                                        msgbox("Uploading EXE files are not allowed", "preauthorization Form", "error");
                                                                        $(this).next('.custom-file-label').html("Choose file...");
                                                                        $(this).val(null);
                                                                        return;
                                                                        } else if (file1.name.endsWith('.dll')) {
                                                                        msgbox("Uploading DLL files are not allowed", "preauthorization Form", "error");
                                                                        $(this).next('.custom-file-label').html("Choose file...");
                                                                        $(this).val(null);
                                                                        return;
                                                                        } else if (file1.name.endsWith('.sh')) {
                                                                        msgbox("Uploading sh files are not allowed", "preauthorization Form", "error");
                                                                        $(this).next('.custom-file-label').html("Choose file...");
                                                                        $(this).val(null);
                                                                        return;
                                                                        } else if (file1.name.endsWith('.bat')) {
                                                                        msgbox("Uploading bat files are not allowed", "preauthorization Form", "error");
                                                                        $(this).next('.custom-file-label').html("Choose file...");
                                                                        $(this).val(null);
                                                                        return;
                                                                        }
                                                                        var fileSize1 = event.target.files[0].size;
                                                                        if (fileSize1 > 50000000)
                                                                        {
                                                                        msgbox("Uploaded file size exceeded 50MB", "preauthorization Form", "error");
                                                                        $(this).next('.custom-file-label').html("Choose file...");
                                                                        $(this).val(null);
                                                                        return;
                                                                        }
                                                                        //replace the "Choose a file" label
                                                                        $(this).next('.custom-file-label').html(file1.name);
                                                                        $('#getfile2').val(file1.name);
                                                                        });
                                                                        });
                                                                        async function uploadFile(buttonObj, date_control_id) {
                                                                        //                                                                    
                                                                        var patientid = $("#ddlpatient option:selected").val();
                                                                        console.log('patientid:' + patientid);
                                                                        if (patientid !== 0) {
                                                                        let formData = new FormData();
                                                                        $(buttonObj).attr('disabled', 'disabled');
                                                                        $(buttonObj).text('Sending...');
                                                                        $(buttonObj).off('click'); //disables click event $("#file_" + date_control_id)[0].files[0]);

                                                                        formData.append("ddlpatientid", patientid);
                                                                        formData.append("file", $("#file_" + date_control_id)[0].files[0]);
                                                                        formData.append("ddlpatientid", patientid);
                                                                        formData.append("dos", $("#date_control_" + date_control_id).val());
                                                                        let response = await fetch('upload_preauthorization_form', {

                                                                        method: "POST",
                                                                                body: formData
                                                                        });
                                                                        response.text().then(function (text) {
                                                                        console.log(text);
                                                                        console.log(date_control_id);
                                                                        $('#getfile' + date_control_id).val(text);
                                                                        });
                                                                        if (response.status == 200) {
                                                                        flag = 'Y';
                                                                        msgbox("File upload successfully...!", "preauthorization Form", "success");
                                                                        // alert(response);
                                                                        $(buttonObj).removeAttr('disabled');
                                                                        $(buttonObj).text('Submit');
                                                                        } else {
                                                                        $(buttonObj).removeAttr('disabled');
                                                                        msgbox("File upload failed, try again after renaming the file...!", "preauthorization Form", "error");
                                                                        $(buttonObj).removeAttr('disabled');
                                                                        $(buttonObj).text('Submit');
                                                                        }

                                                                        }
                                                                        }


                                                                        $(document).ready(function () {

                                                                        $("#para_Dob").datepicker({
                                                                        format: "mm/dd/yyyy",
                                                                                autoclose: true,
                                                                                orientation: "bottom left",
                                                                                endDate: "0",
                                                                                startDate: "01/01/1000"
                                                                        }).mask('99/99/9999');
                                                                        $('#para_Firstname').hide();
                                                                        $('#para_Lastname').hide();
                                                                        $('#para_Dob').hide();
                                                                        $('#ddlsearchpractice').next(".select2-container").hide();
                                                                        $('#payorid').next(".select2-container").hide();
                                                                        var start, end;
                                                                        $('#upload_1').hide();
                                                                        $('#upload_2').hide();
                                                                        function submitPreAuth() {

                                                                        $('#ddlpractice').removeAttr('disabled');
                                                                        if (!$('#term').is(':checked')) {
                                                                        msgbox("Please Select Checkbox Mandatory", "Preauthorization Form", "error");
                                                                        $('#flading').hide();
                                                                        //console.log("second if - after message");
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



                                                                        if (ebill_to !== '')  {
                                                                        var strcontent1 = "Hi, <br> <br>A New Pre-Authorization of " + $('#ddlpatient option:selected').text() + " created from " + $('#ddlpractice option:selected').text() + " by Dr. " + $('#ddlprovider option:selected').text() + "  on Date : " + today + "<br><br>";
                                                                        // Email Config
                                                                        $.post('eMail', {
                                                                        recipient: ebill_to,
                                                                                subject: "A New Pre-Authorization of " + $('#ddlpatient option:selected').text() + " Created by Dr." + $('#ddlprovider option:selected').text(),
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
                                                                        // alert("Time to get off your workstation!");
                                                                        // $("#lblTestResult").html("You are hungry");

                                                                        // $("form[name='preauthform']").submit();
                                                                        $('#billstatus').val('SUBMIT');
                                                                        retnvl = 'SUBMIT';
                                                                        $("form[name='preauthform']").submit();
                                                                        }

                                                                        function MySignFunction() {
                                                                        //  $("form[name='preauthform']").submit();
                                                                        $('#billstatus').val('SUBMIT');
                                                                        retnvl = 'SUBMIT';
                                                                        $("form[name='preauthform']").submit();
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
                                                                        $('#ddlSearchPractice').next(".select2-container").hide();
                                                                        $('#payorid').next(".select2-container").hide();
                                                                        $('#para_Firstname').val('');
                                                                        } else if ($('#ddlsearch').val() === '2')
                                                                        {
                                                                        $('#para_Firstname').hide();
                                                                        $('#para_Lastname').show();
                                                                        $('#para_Dob').hide();
                                                                        $('#ddlSearchPractice').next(".select2-container").hide();
                                                                        $('#payorid').next(".select2-container").hide();
                                                                        $('#para_Lastname').val('');
                                                                        } else if ($('#ddlsearch').val() === '3')
                                                                        {
                                                                        $('#para_Firstname').hide();
                                                                        $('#para_Lastname').hide();
                                                                        $('#para_Dob').show();
                                                                        $('#ddlSearchPractice').next(".select2-container").hide();
                                                                        $('#payorid').next(".select2-container").hide();
                                                                        $('#para_Dob').val('');
                                                                        } else if ($('#ddlsearch').val() === '5')
                                                                        {
                                                                        $('#para_Firstname').hide();
                                                                        $('#para_Lastname').hide();
                                                                        $('#para_Dob').hide();
                                                                        $('#ddlSearchPractice').next(".select2-container").show();
                                                                        $('#payorid').next(".select2-container").hide();
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
                                                                        $('#payorid').val('').change();
                                                                        }
                                                                        else if ($('#ddlsearch').val() === '0')
                                                                        {
                                                                        $('#para_Firstname').hide();
                                                                        $('#para_Lastname').hide();
                                                                        $('#para_Dob').hide();
                                                                        $('#ddlSearchPractice').next(".select2-container").hide();
                                                                        $('#payorid').next(".select2-container").hide();
                                                                        }
                                                                        });
                                                                        $('#ddlsearch').val(0).change();
                                                                        $("form[name='preauthform']").submit(function ()
                                                                        {
                                                                        $('#flading').show();
                                                                        return  submitPreAuth();
                                                                        });
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
                                                                        var padt = localStorage.getItem("padate");
                                                                        if (padt === null) {
                                                                        start = moment().subtract(10, 'year');
                                                                        end = moment();
                                                                        $('#pc-daterangepicker-6 .form-control').val(start.format('MM/DD/YYYY') + ' / ' + end.format('MM/DD/YYYY'));
                                                                        } else {
                                                                        var currentVal = padt;
                                                                        start = currentVal.split(" / ")[0];
                                                                        end = currentVal.split(" / ")[1];
                                                                        $('#pc-daterangepicker-6 .form-control').val(moment(start).format("MM/DD/YYYY") + ' / ' + moment(end).format("MM/DD/YYYY"));
                                                                        localStorage.setItem("padate", moment(start).format("MM/DD/YYYY") + ' / ' + moment(end).format("MM/DD/YYYY"));
                                                                        }


                                                                        var table = $('#eligibilitytable').DataTable({
                                                                        "aaSorting": [[0, "desc"]], // Sort by first column descending
                                                                                "lengthMenu": [15, 40, 80, 200, 500],
                                                                                "iDisplayLength": 15,
                                                                                stateSave: true,
                                                                                scrollY: "330px",
                                                                                scrollX: true,
                                                                                scrollCollapse: true,
                                                                                paging: true,
                                                                                "columnDefs": [

        <sec:authorize access="hasAnyRole('ROLE_PRACTICE_PROVIDER,ROLE_CORP_PROVIDER,ROLE_GROUPCLINIC_PROVIDER,ROLE_REFERING_PROVIDER')">
                                                                                //   dt.column(2).visible(false);
                                                                                {'visible': false, 'targets': [2, 6, 11, 12, 13]}
        </sec:authorize>

        <sec:authorize access="hasAnyRole('ROLE_ADMIN,ROLE_ENTITY_ADMIN,ROLE_ENTITY_STAFF,ROLE_CORP_ADMIN,ROLE_CORP_STAFF,ROLE_GROUPCLINIC_ADMIN,ROLE_GROUPCLINIC_STAFF,ROLE_BILLING_ADMIN,ROLE_BILLING_STAFF,ROLE_PRACTICE_ADMIN,ROLE_PRACTICE_STAFF')">
                                                                                {'visible': true, 'targets': [2]},
                                                                                {'visible': false, 'targets': [6, 11, 12, 13]}
        </sec:authorize>
                                                                                ],
                                                                                drawCallback: function (settings, json) {

                                                                                //$('[data-toggle="tooltip"]').tooltip('update');
                                                                                },
                                                                                "ajax": {
                                                                                "type": "GET",
                                                                                        "url": "preauthorizationdata?startDate=" + moment(start).format("YYYY-MM-DD") + "&endDate=" + moment(end).format("YYYY-MM-DD"),
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
                                                                                }, "orderable": true, "searchable": true, "name": "snotes"},
                                                                                {"data": function (data) {
                                                                                return " " + data.create_date;
                                                                                }, "orderable": true, "searchable": true, "name": "create_date"},
                                                                                {"data": function (data) {
                                                                                if (data.runstatus === "SUBMIT") {
                                                                                return '<a href="#" class="badge badge-light-danger f-12 m-r-5">' + data.runstatus + '</a>';
                                                                                } else
                                                                                {
                                                                                return '<a href="#" class="badge badge-light-success f-12 m-r-5">' + data.runstatus + '</a>';
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
                                                                                var download = "";
                                                                                var UT = '<%= session.getAttribute("UT")%>';
                                                                                var prints = "<a role='tooltip' data-microtip-position='left' title='' aria-label='Print' target='_blank' href='printpreauthorization?id=" + data.requestid + '&cd=' + data.create_date + "'><i class='mdi mdi-printer' style='font-size:18px;margin:0 3px;color:#7E858E;'></i></a>|";
        <sec:authorize access="hasAuthority('VIEW_PREAUTHORIZATION_PRIVILEGE')">
                                                                                var code = "<a role='tooltip' data-microtip-position='left' title='' aria-label='Review' href='viewpreauthorization?id=" + data.requestid + '&cd=' + data.create_date + "'><i class='mdi mdi mdi-eye' style='font-size:18px; margin:0 3px;color:#FF9764;'></i></a>|";
        </sec:authorize>
        <sec:authorize access="hasAuthority('REVIEW_PREAUTHORIZATION_PRIVILEGE')">
                                                                                text = "<a role='tooltip' data-microtip-position='left' title='' aria-label='Review' href='detailpreauthorization?id=" + data.requestid + '&cd=' + data.create_date + "'>" + "<i class='mdi mdi mdi-eye' style='font-size:18px; margin:0 3px;color:#FF9764;'></i></a>|";
        </sec:authorize>
        <sec:authorize access="hasAuthority('EDIT_PREAUTHORIZATION_PRIVILEGE')">
                                                                                edit = '<a role="tooltip" data-microtip-position="left" title="" aria-label="Edit"  href="editpreauthorization?id=' + data.requestid + '"><i class="fas fa-edit" style="font-size:15px; margin:0 3px;color:#2DCEE3;"></i></a>|';
        </sec:authorize>
                                                                                sent = '<a role="tooltip" data-microtip-position="left" title="" aria-label="Sent" href="sendpreauthorization?id=' + data.requestid + '"><i class="mdi mdi-send" style="font-size:18px; margin:0 3px;color:#13BD8A;"></i></a>|';
                                                                                if (data.file1 !== '')   {
                                                                                download = '<a role="tooltip" target="_blank" data-microtip-position="left" class="singledownbutton" id="singledown" title=""  aria-label="Download"  href="../Upload/Pre_auth/' + data.file1 + '"><i class="fas fa-download" style="font-size:15px; margin:0 3px;color: #19BCBF;"></i></a>|';
                                                                                }
                                                                                if (data.file2 !== '')   {
                                                                                download = download + '<a role="tooltip" target="_blank" data-microtip-position="left" class="singledownbutton" id="singledown" title=""  aria-label="Download"  href="../Upload/Pre_auth/' + data.file2 + '"><i class="fas fa-download" style="font-size:15px; margin:0 3px;color: #7E858E;"></i></i></a>|';
                                                                                }
                                                                                //  action = text + prints;

        <sec:authorize access="hasAnyRole('ROLE_PRACTICE_PROVIDER,ROLE_CORP_PROVIDER,ROLE_GROUPCLINIC_PROVIDER,ROLE_REFERING_PROVIDER')">

                                                                                action = action + text + prints + download;
        </sec:authorize>

        <sec:authorize access="hasAnyRole('ROLE_ENTITY_ADMIN')">
                                                                                if (data.runstatus === "SUBMIT")    {
                                                                                action = action + edit + code + prints + sent + download;
                                                                                } else     {
                                                                                action = action + edit + code + prints + download;
                                                                                }

        </sec:authorize>

        <sec:authorize access="hasAnyRole('ROLE_ADMIN,ROLE_USER,ROLE_ENTITY_STAFF,ROLE_CORP_PRACTICE,ROLE_CORP_ADMIN,ROLE_CORP_STAFF,
                       ROLE_GROUPCLINIC_ADMIN,ROLE_GROUPCLINIC_STAFF,ROLE_BILLING_ADMIN,ROLE_BILLING_STAFF,
                       ROLE_PRACTICE_ADMIN,ROLE_PRACTICE_STAFF')">

                                                                                action = text + prints + download;
        </sec:authorize>

        <sec:authorize access="hasAuthority('DELETE_DOCUMENT_PRIVILEGE')">
                                                                                if (data.flag === 'Y')    {
                                                                                del = '<a id="deleteEb" class="deleteEb"  role="tooltip" data-microtip-position="left" title="" aria-label="Delete" ><i class="fas fa-trash-alt" style="font-size:15px; margin:0 3px;color:#FF425C;"></i></a>|';
                                                                                }
        </sec:authorize>

        <sec:authorize access="hasAuthority('RECOVER_DOCUMENT_PRIVILEGE')">
                                                                                if (data.flag === 'N')    {
                                                                                recover = '<a id="recoverEb" class="recoverEb" role="tooltip" data-microtip-position="left" title="" aria-label="Recover"><i class="mdi mdi-restore" style="font-size:18px; margin:0 3px;color:#FF425C;"></i></a>';
                                                                                }
        </sec:authorize>

                                                                                return action + del + recover;
                                                                                }, "orderable": true, "searchable": true, "name": "action"},
                                                                                {"data": function (data) {
                                                                                return " " + data.ddlpractice; //spracticename
                                                                                }, "orderable": true, "searchable": true, "name": "practice"},
                                                                                {"data": function (data) {
                                                                                return  data.ddlinsurance; // spayor
                                                                                }, "orderable": true, "searchable": true, "name": "payor"},
                                                                                {"data": function (data) {
                                                                                return " " + data.notes;
                                                                                }, "orderable": true, "searchable": true, "name": "notes"}

                                                                                ],
                                                                                dom: 'fBrtipl',
                                                                                buttons: [
                                                                                {
                                                                                extend: 'csv',
                                                                                        text: '<img src="assets/images/excelicon.png">',
                                                                                        className: 'dt-pdf-btn',
                                                                                        titleAttr: 'Download list in excel Format',
                                                                                        exportOptions: {
                                                                                        columns: [1, 11, 3, 4, 12, 13, 8, 9]
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
                                                                                        columns: [1, 11, 3, 4, 12, 13, 8, 9]
                                                                                        }}
                                                                              /*  {
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

                                                                                var tooltipPosition = "top";
                                                                                if (dataIndex == 0){
                                                                                tooltipPosition = "left";
                                                                                }
                                                                                if (dataIndex == 1){
                                                                                tooltipPosition = "left";
                                                                                }

        <sec:authorize access="hasAnyRole('ROLE_PRACTICE_PROVIDER,ROLE_CORP_PROVIDER,ROLE_GROUPCLINIC_PROVIDER,ROLE_REFERING_PROVIDER')">
                                                                                //  $(row).find('td:eq(0)').hide();
                                                                                //  $(row).find('td:eq(4)').attr('data-toggle', "tooltip");
                                                                                //  $(row).find('td:eq(4)').attr('data-original-title', data["ddlpractice"].toString());

                                                                                if (data["ddlinsurance"].toString() != "")    {
                                                                                $(row).find('td:eq(4)').attr('role', "tooltip");
                                                                                $(row).find('td:eq(4)').attr('data-microtip-size', "medium");
                                                                                $(row).find('td:eq(4)').attr('data-microtip-position', tooltipPosition);
                                                                                $(row).find('td:eq(4)').attr('aria-label', data["ddlinsurance"].toString());
                                                                                }

                                                                                if (data["notes"].toString() != "")    {
                                                                                $(row).find('td:eq(5)').attr('role', "tooltip");
                                                                                $(row).find('td:eq(5)').attr('data-microtip-size', "large");
                                                                                $(row).find('td:eq(5)').attr('data-microtip-position', tooltipPosition);
                                                                                $(row).find('td:eq(5)').attr('aria-label', data["notes"].toString());
                                                                                }

        </sec:authorize>
        <sec:authorize access="hasAnyRole('ROLE_ADMIN,ROLE_ENTITY_ADMIN,ROLE_ENTITY_STAFF,ROLE_CORP_ADMIN,ROLE_CORP_STAFF,ROLE_GROUPCLINIC_ADMIN,ROLE_GROUPCLINIC_STAFF,ROLE_BILLING_ADMIN,ROLE_BILLING_STAFF,ROLE_PRACTICE_ADMIN,ROLE_PRACTICE_STAFF')">
                                                                                // $(row).find('td:eq(0)').hide();                                                                                   
                                                                                if (data["ddlpractice"].toString() != "")   {
                                                                                $(row).find('td:eq(2)').attr('role', "tooltip");
                                                                                $(row).find('td:eq(2)').attr('data-microtip-size', "medium");
                                                                                $(row).find('td:eq(2)').attr('data-microtip-position', "right");
                                                                                $(row).find('td:eq(2)').attr('aria-label', data["ddlpractice"].toString());
                                                                                }
                                                                                if (data["ddlinsurance"].toString() != "")   {
                                                                                $(row).find('td:eq(5)').attr('role', "tooltip");
                                                                                $(row).find('td:eq(5)').attr('data-microtip-size', "medium");
                                                                                $(row).find('td:eq(5)').attr('data-microtip-position', tooltipPosition);
                                                                                $(row).find('td:eq(5)').attr('aria-label', data["ddlinsurance"].toString());
                                                                                }
                                                                                if (data["notes"].toString() != "")   {
                                                                                $(row).find('td:eq(6)').attr('role', "tooltip");
                                                                                $(row).find('td:eq(6)').attr('data-microtip-size', "large");
                                                                                $(row).find('td:eq(6)').attr('data-microtip-position', tooltipPosition);
                                                                                $(row).find('td:eq(6)').attr('aria-label', data["notes"].toString());
                                                                                }
                                                                                //  $(row).find('td:eq(6)').hide();
                                                                                if ($(row).find('td:eq(9)').find('a:eq(6)').attr('id') === 'recoverEb' || $(row).find('td:eq(9)').find('a:eq(5)').attr('id') === 'recoverEb' || $(row).find('td:eq(9)').find('a:eq(4)').attr('id') === 'recoverEb' || $(row).find('td:eq(9)').find('a:eq(3)').attr('id') === 'recoverEb' || $(row).find('td:eq(9)').find('a:eq(2)').attr('id') === 'recoverEb' || $(row).find('td:eq(9)').find('a:eq(1)').attr('id') === 'recoverEb')  {
                                                                                $(row).find('td:eq(1)').attr('style', 'font-weight: bold; !important; text-decoration:line-through; color:red;');
                                                                                $(row).find('td:eq(2)').attr('style', 'font-weight: bold; !important; text-decoration:line-through; color:red;');
                                                                                $(row).find('td:eq(3)').attr('style', 'font-weight: bold; !important; text-decoration:line-through; color:red;');
                                                                                $(row).find('td:eq(4)').attr('style', 'font-weight: bold; !important; text-decoration:line-through; color:red;');
                                                                                $(row).find('td:eq(5)').attr('style', 'font-weight: bold; !important; text-decoration:line-through; color:red;');
                                                                                $(row).find('td:eq(6)').attr('style', 'font-weight: bold; !important; text-decoration:line-through; color:red;');
                                                                                $(row).find('td:eq(7)').attr('style', 'font-weight: bold; !important; text-decoration:line-through; color:red;');
                                                                                $(row).find('td').find('a').removeAttr('href');
                                                                                $(row).find('td').find('a').removeAttr('target');
                                                                                }

        </sec:authorize>


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
                                                                        localStorage.setItem("padate", startVal.format("MM/DD/YYYY") + ' / ' + endVal.format("MM/DD/YYYY"));
                                                                        table.ajax.url("preauthorizationdata?startDate=" + start + "&endDate=" + end).load();
                                                                        });
                                                                        var searchOption = '';
                                                                        $('#showall').click(function () {
                                                                        $('#flading').show();
                                                                        searchOption = '0';     
                                                                        $('#ddlsearch').val(0).change();
                                                                        table.search('').columns().search('').draw();
                                                                            //clear();
                                                                       /* $('#para_Firstname').hide();
                                                                        $('#para_Lastname').hide();
                                                                        $('#para_Dob').hide();
                                                                        $('#ddlSearchPractice').next(".select2-container").hide();
                                                                        $('#payorid').next(".select2-container").hide();
                                                                        $('#para_Dos').hide();
                                                                        $('#flading').show(); */
                                                                        table.ajax.url("preauthorizationdata?startDate=" + moment(start).format("YYYY-MM-DD") + "&endDate=" + moment(end).format("YYYY-MM-DD")).load();
                                                                        });
                                                                        $('#search').click(function () {
                                                                        $('#flading').show();
                                                                        searchOption = $('#ddlsearch').val();
                                                                        if (searchOption === '0')
                                                                        {
                                                                        msgbox("Select the Search option..!", "Pre-Authorization Portal", "error");
                                                                        $('#flading').hide();
                                                                        }
                                                                        else if (searchOption === '1')
                                                                        {
                                                                        var lenFirstName = $('#para_Firstname').val().length;
                                                                        if (lenFirstName !== 0)
                                                                        {

                                                                        table.ajax.url("preauthorizationsearchdata?para=first_name&paraVal=" + $('#para_Firstname').val()).load();
                                                                        } else
                                                                        {
                                                                        msgbox("Enter Patient First Name..!", "Pre-Authorization Portal", "error");
                                                                        $('#flading').hide();
                                                                        }
                                                                        } else if (searchOption === '2')
                                                                        {
                                                                        var lenLastName = $('#para_Lastname').val().length;
                                                                        if (lenLastName !== 0)
                                                                        {
                                                                        table.ajax.url("preauthorizationsearchdata?para=last_name&paraVal=" + $('#para_Lastname').val()).load();
                                                                        } else
                                                                        {
                                                                        msgbox("Enter Patient Last Name..!", "Pre-Authorization Portal", "error");
                                                                        $('#flading').hide();
                                                                        }
                                                                        } else if (searchOption === '3')
                                                                        {
                                                                        var lenDob = $('#para_Dob').val().length;
                                                                        if (lenDob !== 0)
                                                                        {
                                                                        table.ajax.url("preauthorizationsearchdata?para=dob&paraVal=" + convertMDYtoYMD($('#para_Dob').val())).load();
                                                                        } else
                                                                        {
                                                                        msgbox("Enter Dob..!", "Pre-Authorization Portal", "error");
                                                                        $('#flading').hide();
                                                                        }
                                                                        } else if (searchOption === '5')
                                                                        {
                                                                        var lenPractice = $('#ddlSearchPractice').val().length;
                                                                        if (lenPractice !== 0)
                                                                        {
                                                                        table.ajax.url("preauthorizationsearchdata?para=patient_master.practice_id&paraVal=" + $('#ddlSearchPractice').val()).load();
                                                                        } else
                                                                        {
                                                                        msgbox("Select Practice..!", "Pre-Authorization Portal", "error");
                                                                        $('#flading').hide();
                                                                        }
                                                                        } else if (searchOption === '6')
                                                                        {
                                                                        var lenPayor = $('#payorid').val().length;
                                                                        if (lenPayor !== 0)
                                                                        {
                                                                        table.ajax.url("preauthorizationsearchdata?para=payor_master.payor_id&paraVal=" + $('#payorid').val()).load();
                                                                        } else
                                                                        {

                                                                        msgbox("Select Insurance..!", "Pre-Authorization Portal", "error");
                                                                        $('#flading').hide();
                                                                        }
                                                                        }

                                                                        });
                                                                        $(document).on("click", "#eligibilitytable a.singledownbutton", function () {
                                                                        let tr = $(this).closest('tr');
                                                                        let preestid = tr.find('td:eq(1)').text();
                                                                        console.log(preestid);
                                                                        $.ajax({
                                                                        url: "downloadpreauthorization",
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
                                                                        url: "getselectpayorwtpatid",
                                                                                type: "get", //send it through get method
                                                                                data: {
                                                                                selectpayorlist: patientid
                                                                                },
                                                                                success: function (response) {
                                                                                    console.log("getselectpayorwtpatid");
                                                                                      console.log(response);
                                                                                var select = $('#ddlinsurance');
                                                                                select.find('option').remove();
                                                                             
                                                                                var txt = response;
                                                                                var obj = jQuery.parseJSON(txt);
                                                                                console.log(obj);
                                                                                if (obj.length > 0)
                                                                                {
                                                                                for (var i = 0; i < obj.length; i++)
                                                                                {
                                                                                // var sv = value.split('~');
                                                                                
                                                                                $('<option>').val(obj[i].payor_id).text(obj[i].name).appendTo(select);
                                                                                
                                                                                if (obj[i].sec_payor_id !== '0')
                                                                                {
                                                                                $('<option>').val(obj[i].sec_payor_id).text(obj[i].sec_name).appendTo(select);
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
                                                                        var procedurecode = $(this).attr("title");
                                                                        //alert("diagnosisdiv:  " + diagnosisdiv);
                                                                        //alert("procedurecode:  " + procedurecode);
                                                                         var headTag = "";
                                                                        var checkedcount = $('input[name="' + diagnosisdiv + '"]:checked').length;
                                                                        var checkedcount1 = $('input[title="' + procedurecode + '"]:checked').length;
                                                                        var headTag1 = "";
                                                                        if (diagnosisdiv === "diagnoisis1") {
                                                                        headTag = "headingOne";
                                                                        } else if (diagnosisdiv === "t1proc03sub11") {
                                                                        headTag1 = "proheading2";
                                                                        } else if (diagnosisdiv === "t1proc03sub12") {
                                                                        headTag1 = "proheading2";
                                                                        } else if (diagnosisdiv === "t1proc03sub13") {
                                                                        headTag1 = "proheading2";
                                                                        } else if (diagnosisdiv === "t1proc03sub14") {
                                                                        headTag1 = "proheading2";
                                                                        } else if (diagnosisdiv === "t1proc03sub21") {
                                                                        headTag1 = "proheading2";
                                                                        } else if (diagnosisdiv === "t1proc03sub22") {
                                                                        headTag1 = "proheading2";
                                                                        } else if (diagnosisdiv === "t1proc03sub23") {
                                                                        headTag1 = "proheading2";
                                                                        } else if (diagnosisdiv === "t1proc03sub31") {
                                                                        headTag1 = "proheading2";
                                                                        } else if (diagnosisdiv === "t1proc03sub32") {
                                                                        headTag1 = "proheading2";
                                                                        } else if (diagnosisdiv === "t1proc03sub33") {
                                                                        headTag1 = "proheading2";
                                                                        } else if (diagnosisdiv === "t1proc03sub34") {
                                                                        headTag1 = "proheading2";
                                                                        } else if (diagnosisdiv === "t1proc03sub41") {
                                                                        headTag1 = "proheading2";
                                                                        } else if (diagnosisdiv === "t1proc03sub41") {
                                                                        headTag1 = "proheading2";
                                                                        } else if (diagnosisdiv === "t1proc03sub42") {
                                                                        headTag1 = "proheading2";
                                                                        }  
                                                                        else if (diagnosisdiv === "t1proc02sub31") {
                                                                        headTag1 = "proheading2";
                                                                        } else if (diagnosisdiv === "t1proc02sub32") {
                                                                        headTag1 = "proheading2";
                                                                        } else if (diagnosisdiv === "t1proc02sub33") {
                                                                        headTag1 = "proheading2";
                                                                        } else if (diagnosisdiv === "t1proc02sub34") {
                                                                        headTag1 = "proheading2";
                                                                        } else if (diagnosisdiv === "t1proc02sub41") {
                                                                        headTag1 = "proheading2";
                                                                        } else if (diagnosisdiv === "t1proc02sub42") {
                                                                        headTag1 = "proheading2";
                                                                        }
                                                                        else if (diagnosisdiv === "diagnoisis2") {
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
                                                                        } 
                                                                         <!-----------1 Treating Quadrants-------------------->
                                                                        else if (diagnosisdiv === "t1proc01sub11") {
                                                                        headTag1 = "proheading4";
                                                                        } else if (diagnosisdiv === "t1proc01sub12") {
                                                                        headTag1 = "proheading4";
                                                                        } else if (diagnosisdiv === "t1proc01sub13") {
                                                                        headTag1 = "proheading4";
                                                                        } else if (diagnosisdiv === "t1proc01sub14") {
                                                                        headTag1 = "proheading4";
                                                                        } else if (diagnosisdiv === "t1proc01sub15") {
                                                                        headTag1 = "proheading4";
                                                                        } else if (diagnosisdiv === "t1proc01sub16") {
                                                                        headTag1 = "proheading4";
                                                                        }
                                                                        <!-----------Diagnostic Radiology-------------------->
                                                                      
                                                                        else if (diagnosisdiv === "t1proc02sub11") {
                                                                        headTag1 = "proheadingOne";
                                                                        } else if (diagnosisdiv === "t1proc02sub12") {
                                                                        headTag1 = "proheadingOne";
                                                                        } else if (diagnosisdiv === "t1proc02sub13") {
                                                                        headTag1 = "proheadingOne";
                                                                        } else if (diagnosisdiv === "t1proc02sub14") {
                                                                        headTag1 = "proheadingOne";
                                                                        } else if (diagnosisdiv === "t1proc02sub15") {
                                                                        headTag1 = "proheadingOne";
                                                                        } else if (diagnosisdiv === "t1proc02sub16") {
                                                                        headTag1 = "proheadingOne";
                                                                        }else if (diagnosisdiv === "t1proc02sub17") {
                                                                         headTag1 = "proheadingOne";
                                                                        }  
                                                                        else if (diagnosisdiv === "t1proc02sub21") {
                                                                        headTag1 = "proheadingOne";
                                                                        } else if (diagnosisdiv === "t1proc02sub22") {
                                                                        headTag1 = "proheadingOne";
                                                                        } else if (diagnosisdiv === "t1proc02sub23") {
                                                                        headTag1 = "proheadingOne";
                                                                        } else if (diagnosisdiv === "t1proc02sub24") {
                                                                        headTag1 = "proheadingOne";
                                                                        }
                                                                        //================ Appliance  =======                                                                
                                                                        else if (diagnosisdiv === "t1proc05sub11") {
                                                                        headTag1 = "proheading5";
                                                                        } else if (diagnosisdiv === "t1proc05sub12") {
                                                                        headTag1 = "proheading5";
                                                                        } else if (diagnosisdiv === "t1proc05sub21") {
                                                                        headTag1 = "proheading5";
                                                                        } else if (diagnosisdiv === "t1proc05sub22") {
                                                                        headTag1 = "proheading5";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc05sub23") {
                                                                        headTag = "proheading5";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc05sub24") {
                                                                        headTag1 = "proheading5";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc05sub25") {
                                                                        headTag1 = "proheading5";
                                                                        } else if (diagnosisdiv === "t1proc05sub26") {
                                                                        headTag1 = "proheading5";
                                                                        } else if (diagnosisdiv === "t1proc05sub27") {
                                                                        headTag1 = "proheading5";
                                                                        } else if (diagnosisdiv === "t1proc05sub28") {
                                                                        headTag1 = "proheading5";
                                                                        }
                                                                        //====================== 6. Biopsy ==================
                                                                        else if (diagnosisdiv === "t1proc06sub11") {
                                                                        headTag1 = "proheading6";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc06sub12") {
                                                                        headTag1 = "proheading6";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc06sub13") {
                                                                        headTag1 = "proheading6";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc06sub14") {
                                                                        headTag1 = "proheading6";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc06sub15") {
                                                                        headTag1 = "proheading6";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc06sub16") {
                                                                        headTag1 = "proheading6";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc06sub17") {
                                                                        headTag1 = "proheading6";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc06sub18") {
                                                                        headTag1 = "proheading6";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc06sub19") {
                                                                        headTag1 = "proheading6";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc06sub110") {
                                                                        headTag1 = "proheading6";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc06sub111") {
                                                                        headTag1 = "proheading6";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc06sub112") {
                                                                        headTag1 = "proheading6";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc20sub11") {
                                                                        headTag1 = "proheading20";
                                                                        } else if (diagnosisdiv === "t1proc20sub12") {
                                                                        headTag1 = "proheading20";
                                                                        } else if (diagnosisdiv === "t1proc20sub13") {
                                                                        headTag1 = "proheading20";
                                                                        } else if (diagnosisdiv === "t1proc20sub14") {
                                                                        headTag1 = "proheading20";
                                                                        } else if (diagnosisdiv === "t1proc20sub15") {
                                                                        headTag1 = "proheading20";
                                                                        } else if (diagnosisdiv === "t1proc20sub16") {
                                                                        headTag1 = "proheading20";
                                                                        } else if (diagnosisdiv === "t1proc20sub17") {
                                                                        headTag1 = "proheading20";
                                                                        } else if (diagnosisdiv === "t1proc20sub18") {
                                                                        headTag1 = "proheading20";
                                                                        } else if (diagnosisdiv === "t1proc20sub19") {
                                                                        headTag1 = "proheading20";
                                                                        }
                                                                        ////======== 6. Drainage Abscess =====================
                                                                        // t1proc20sub110
                                                                        else if (diagnosisdiv === "t1proc20sub110") {
                                                                        headTag1 = "proheading20";
                                                                        } else if (diagnosisdiv === "t1proc20sub111") {
                                                                        headTag1 = "proheading20";
                                                                        } else if (diagnosisdiv === "t1proc20sub112") {
                                                                        headTag1 = "proheading20";
                                                                        } else if (diagnosisdiv === "t1proc20sub112") {
                                                                        headTag1 = "proheading20";
                                                                        } else if (diagnosisdiv === "t1proc20sub113") {
                                                                        headTag1 = "proheading20";
                                                                        } else if (diagnosisdiv === "t1proc20sub114") {
                                                                        headTag1 = "proheading20";
                                                                        } else if (diagnosisdiv === "t1proc20sub115") {
                                                                        headTag1 = "proheading20";
                                                                        } else if (diagnosisdiv === "t1proc20sub116") {
                                                                        headTag1 = "proheading20";
                                                                        } else if (diagnosisdiv === "t1proc20sub117") {
                                                                        headTag1 = "proheading20";
                                                                        } else if (diagnosisdiv === "t1proc20sub118") {
                                                                        headTag1 = "proheading20";
                                                                        } else if (diagnosisdiv === "t1proc20sub119") {
                                                                        headTag1 = "proheading20";
                                                                        } else if (diagnosisdiv === "t1proc20sub120") {
                                                                        headTag1 = "proheading20";
                                                                        } else if (diagnosisdiv === "t1proc20sub121") {
                                                                        headTag1 = "proheading20";
                                                                        } else if (diagnosisdiv === "t1proc20sub122") {
                                                                        headTag1 = "proheading20";
                                                                        } else if (diagnosisdiv === "t1proc20sub123") {
                                                                        headTag1 = "proheading20";
                                                                        } else if (diagnosisdiv === "t1proc20sub124") {
                                                                        headTag1 = "proheading20";
                                                                        } else if (diagnosisdiv === "t1proc20sub125") {
                                                                        headTag1 = "proheading20";
                                                                        } else if (diagnosisdiv === "t1proc20sub126") {
                                                                        headTag1 = "proheading20";
                                                                        } else if (diagnosisdiv === "t1proc20sub127") {
                                                                        headTag1 = "proheading20";
                                                                        } else if (diagnosisdiv === "t1proc20sub128") {
                                                                        headTag1 = "proheading20";
                                                                        }
                                                                        //======== 7. Fixation Fail Removal / Bone Graft Fail Excision =====================
                                                                        else if (diagnosisdiv === "t1proc07sub11") {
                                                                        headTag1 = "proheading7";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc07sub12") {
                                                                        headTag1 = "proheading7";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc07sub13") {
                                                                        headTag1 = "proheading7";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc07sub14") {
                                                                        headTag1 = "proheading7";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc07sub15") {
                                                                        headTag1 = "proheading7";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc07sub16") {
                                                                        headTag1 = "proheading7";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc07sub17") {
                                                                        headTag1 = "proheading7";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc07sub18") {
                                                                        headTag1 = "proheading7";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc07sub19") {
                                                                        headTag1 = "proheading7";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc07sub110") {
                                                                        headTag1 = "proheading7";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc07sub111") {
                                                                        headTag1 = "proheading7";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc07sub112") {
                                                                        headTag1 = "proheading7";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc07sub21") {
                                                                        headTag1 = "proheading7";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc07sub22") {
                                                                        headTag1 = "proheading7";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc07sub23") {
                                                                        headTag1 = "proheading7";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc07sub24") {
                                                                        headTag1 = "proheading7";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc07sub25") {
                                                                        headTag1 = "proheading7";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc07sub26") {
                                                                        headTag1 = "proheading7";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc07sub27") {
                                                                        headTag1 = "proheading7";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc07sub28") {
                                                                        headTag1 = "proheading7";
                                                                        }
                                                                        //======= 8. Bone Lesion / Bony Cyst Excision =========
                                                                        else if (diagnosisdiv === "t1proc08sub21") {
                                                                        headTag1 = "proheading8";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc08sub22") {
                                                                        headTag1 = "proheading8";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc08sub23") {
                                                                        headTag1 = "proheading8";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc08sub24") {
                                                                        headTag1 = "proheading8";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc08sub25") {
                                                                        headTag1 = "proheading8";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc08sub26") {
                                                                        headTag1 = "proheading8";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc08sub27") {
                                                                        headTag1 = "proheading8";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc08sub28") {
                                                                        headTag1 = "proheading8";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc08sub29") {
                                                                        headTag1 = "proheading8";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc08sub210") {
                                                                        headTag1 = "proheading8";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc08sub211") {
                                                                        headTag1 = "proheading8";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc08sub212") {
                                                                        headTag1 = "proheading8";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc08sub213") {
                                                                        headTag1 = "proheading8";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc08sub214") {
                                                                        headTag1 = "proheading8";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc08sub215") {
                                                                        headTag1 = "proheading8";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc08sub216") {
                                                                        headTag1 = "proheading8";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc08sub217") {
                                                                        headTag1 = "proheading8";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc08sub218") {
                                                                        headTag1 = "proheading8";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc08sub219") {
                                                                        headTag1 = "proheading8";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc08sub220") {
                                                                        headTag1 = "proheading8";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc08sub221") {
                                                                        headTag1 = "proheading8";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc08sub222") {
                                                                        headTag1 = "proheading8";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc08sub223") {
                                                                        headTag1 = "proheading8";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc08sub224") {
                                                                        headTag1 = "proheading8";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc08sub225") {
                                                                        headTag1 = "proheading8";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc08sub226") {
                                                                        headTag1 = "proheading8";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc08sub227") {
                                                                        headTag1 = "proheading8";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc08sub228") {
                                                                        headTag1 = "proheading8";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc08sub31") {
                                                                        headTag1 = "proheading8";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc08sub32") {
                                                                        headTag1 = "proheading8";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc08sub33") {
                                                                        headTag1 = "proheading8";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc08sub34") {
                                                                        headTag1 = "proheading8";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc08sub11") {
                                                                        headTag1 = "proheading8";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc08sub12") {
                                                                        headTag1 = "proheading8";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc08sub13") {
                                                                        headTag1 = "proheading8";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc08sub14") {
                                                                        headTag1 = "proheading8";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc08sub15") {
                                                                        headTag1 = "proheading8";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc08sub16") {
                                                                        headTag1 = "proheading8";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc08sub17") {
                                                                        headTag1 = "proheading8";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc08sub18") {
                                                                        headTag1 = "proheading8";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc08sub19") {
                                                                        headTag1 = "proheading8";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc08sub110") {
                                                                        headTag1 = "proheading8";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc08sub111") {
                                                                        headTag1 = "proheading8";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc08sub112") {
                                                                        headTag1 = "proheading8";
                                                                        }
                                                                        //======= 9. Debridement =========
                                                                        else if (diagnosisdiv === "t1proc21sub11") {
                                                                        headTag1 = "proheading21";
                                                                        } else if (diagnosisdiv === "t1proc21sub12") {
                                                                        headTag1 = "proheading21";
                                                                        } else if (diagnosisdiv === "t1proc21sub13") {
                                                                        headTag1 = "proheading21";
                                                                        } else if (diagnosisdiv === "t1proc21sub14") {
                                                                        headTag1 = "proheading21";
                                                                        } else if (diagnosisdiv === "t1proc21sub15") {
                                                                        headTag1 = "proheading21";
                                                                        } else if (diagnosisdiv === "t1proc21sub16") {
                                                                        headTag1 = "proheading21";
                                                                        } else if (diagnosisdiv === "t1proc21sub17") {
                                                                        headTag1 = "proheading21";
                                                                        } else if (diagnosisdiv === "t1proc21sub18") {
                                                                        headTag1 = "proheading21";
                                                                        }else if (diagnosisdiv === "t1proc21sub19") {
                                                                        headTag1 = "proheading21";
                                                                        }   
                                                                        else if (diagnosisdiv === "t1proc21sub110") {
                                                                        headTag1 = "proheading21";
                                                                        } else if (diagnosisdiv === "t1proc21sub111") {
                                                                        headTag1 = "proheading21";
                                                                        } else if (diagnosisdiv === "t1proc21sub112") {
                                                                        headTag1 = "proheading21";
                                                                        } else if (diagnosisdiv === "t1proc21sub113") {
                                                                        headTag1 = "proheading21";
                                                                        } else if (diagnosisdiv === "t1proc21sub114") {
                                                                        headTag1 = "proheading21";
                                                                        } else if (diagnosisdiv === "t1proc21sub115") {
                                                                        headTag1 = "proheading21";
                                                                        } else if (diagnosisdiv === "t1proc21sub116") {
                                                                        headTag1 = "proheading21";
                                                                        }
                                                                        //========================================== 9. Osseous Surgery ============================================================
                                                                        else if (diagnosisdiv === "t1proc09sub11") {
                                                                        headTag1 = "proheading89";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc09sub12") {
                                                                        headTag1 = "proheading89";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc09sub13") {
                                                                        headTag1 = "proheading89";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc09sub14") {
                                                                        headTag1 = "proheading89";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc09sub15") {
                                                                        headTag1 = "proheading89";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc09sub16") {
                                                                        headTag1 = "proheading89";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc09sub17") {
                                                                        headTag1 = "proheading89";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc09sub18") {
                                                                        headTag1 = "proheading89";
                                                                        }
                                                                        // =================== 10 Bone Graft Surgery ================
                                                                        else if (diagnosisdiv === "t1proc10sub11") {
                                                                        headTag1 = "proheading10";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc10sub12") {
                                                                        headTag1 = "proheading10";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc10sub13") {
                                                                        headTag1 = "proheading10";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc10sub14") {
                                                                        headTag1 = "proheading10";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc10sub21") {
                                                                        headTag1 = "proheading10";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc10sub22") {
                                                                        headTag1 = "proheading10";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc10sub23") {
                                                                        headTag1 = "proheading10";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc10sub24") {
                                                                        headTag1 = "proheading10";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc10sub31") {
                                                                        headTag1 = "proheading10";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc10sub32") {
                                                                        headTag1 = "proheading10";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc10sub33") {
                                                                        headTag1 = "proheading10";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc10sub34") {
                                                                        headTag1 = "proheading10";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc10sub35") {
                                                                        headTag1 = "proheading10";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc10sub36") {
                                                                        headTag1 = "proheading10";
                                                                        }
                                                                        //============== 11. Surgical Reconstruction of fixation  Surgery ===================================================
                                                                        else if (diagnosisdiv === "t1proc11sub11") {
                                                                        headTag1 = "proheading11";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc11sub12") {
                                                                        headTag1 = "proheading11";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc11sub13") {
                                                                        headTag1 = "proheading11";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc11sub14") {
                                                                        headTag1 = "proheading11";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc11sub15") {
                                                                        headTag1 = "proheading11";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc11sub16") {
                                                                        headTag1 = "proheading11";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc11sub17") {
                                                                        headTag1 = "proheading11";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc11sub18") {
                                                                        headTag1 = "proheading11";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc11sub21") {
                                                                        headTag1 = "proheading11";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc11sub22") {
                                                                        headTag1 = "proheading11";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc11sub23") {
                                                                        headTag1 = "proheading11";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc11sub24") {
                                                                        headTag1 = "proheading11";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc11sub25") {
                                                                        headTag1 = "proheading11";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc11sub26") {
                                                                        headTag1 = "proheading11";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc11sub27") {
                                                                        headTag1 = "proheading11";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc11sub28") {
                                                                        headTag1 = "proheading11";
                                                                        }

                                                                        else if (diagnosisdiv === "t1proc22sub11") {
                                                                        headTag1 = "proheading22";
                                                                        } else if (diagnosisdiv === "t1proc22sub12") {
                                                                        headTag1 = "proheading22";
                                                                        } else if (diagnosisdiv === "t1proc22sub13") {
                                                                        headTag1 = "proheading22";
                                                                        } else if (diagnosisdiv === "t1proc22sub14") {
                                                                        headTag1 = "proheading22";
                                                                        } else if (diagnosisdiv === "t1proc22sub15") {
                                                                        headTag1 = "proheading22";
                                                                        } else if (diagnosisdiv === "t1proc22sub16") {
                                                                        headTag1 = "proheading22";
                                                                        } else if (diagnosisdiv === "t1proc22sub17") {
                                                                        headTag1 = "proheading22";
                                                                        } else if (diagnosisdiv === "t1proc22sub18") {
                                                                        headTag1 = "proheading22";
                                                                        } else if (diagnosisdiv === "t1proc22sub19") {
                                                                        headTag1 = "proheading22";
                                                                        } else if (diagnosisdiv === "t1proc22sub110") {
                                                                        headTag1 = "proheading22";
                                                                        } else if (diagnosisdiv === "t1proc22sub111") {
                                                                        headTag1 = "proheading22";
                                                                        } else if (diagnosisdiv === "t1proc22sub112") {
                                                                        headTag1 = "proheading22";
                                                                        } else if (diagnosisdiv === "t1proc22sub113") {
                                                                        headTag1 = "proheading22";
                                                                        } else if (diagnosisdiv === "t1proc22sub114") {
                                                                        headTag1 = "proheading22";
                                                                        } else if (diagnosisdiv === "t1proc22sub115") {
                                                                        headTag1 = "proheading22";
                                                                        } else if (diagnosisdiv === "t1proc22sub116") {
                                                                        headTag1 = "proheading22";
                                                                        } else if (diagnosisdiv === "t1proc22sub117") {
                                                                        headTag1 = "proheading22";
                                                                        } else if (diagnosisdiv === "t1proc22sub118") {
                                                                        headTag1 = "proheading22";
                                                                        } else if (diagnosisdiv === "t1proc22sub21") {
                                                                        headTag1 = "proheading22";
                                                                        } else if (diagnosisdiv === "t1proc22sub22") {
                                                                        headTag1 = "proheading22";
                                                                        } else if (diagnosisdiv === "t1proc22sub23") {
                                                                        headTag1 = "proheading22";
                                                                        } else if (diagnosisdiv === "t1proc22sub24") {
                                                                        headTag1 = "proheading22";
                                                                        } else if (diagnosisdiv === "t1proc22sub25") {
                                                                        headTag1 = "proheading22";
                                                                        } else if (diagnosisdiv === "t1proc22sub26") {
                                                                        headTag1 = "proheading22";
                                                                        } else if (diagnosisdiv === "t1proc22sub27") {
                                                                        headTag1 = "proheading22";
                                                                        } else if (diagnosisdiv === "t1proc22sub28") {
                                                                        headTag1 = "proheading22";
                                                                        } else if (diagnosisdiv === "t1proc22sub29") {
                                                                        headTag1 = "proheading22";
                                                                        } else if (diagnosisdiv === "t1proc22sub210") {
                                                                        headTag1 = "proheading22";
                                                                        } else if (diagnosisdiv === "t1proc22sub211") {
                                                                        headTag1 = "proheading22";
                                                                        } else if (diagnosisdiv === "t1proc22sub212") {
                                                                        headTag1 = "proheading22";
                                                                        } else if (diagnosisdiv === "t1proc22sub213") {
                                                                        headTag1 = "proheading22";
                                                                        } else if (diagnosisdiv === "t1proc22sub214") {
                                                                        headTag1 = "proheading22";
                                                                        } else if (diagnosisdiv === "t1proc22sub215") {
                                                                        headTag1 = "proheading22";
                                                                        } else if (diagnosisdiv === "t1proc22sub216") {
                                                                        headTag1 = "proheading22";
                                                                        } else if (diagnosisdiv === "t1proc22sub31") {
                                                                        headTag1 = "proheading22";
                                                                        } else if (diagnosisdiv === "t1proc22sub32") {
                                                                        headTag1 = "proheading22";
                                                                        } else if (diagnosisdiv === "t1proc22sub33") {
                                                                        headTag1 = "proheading22";
                                                                        } else if (diagnosisdiv === "t1proc22sub34") {
                                                                        headTag1 = "proheading22";
                                                                        } else if (diagnosisdiv === "t1proc22sub35") {
                                                                        headTag1 = "proheading22";
                                                                        } else if (diagnosisdiv === "t1proc22sub36") {
                                                                        headTag1 = "proheading22";
                                                                        } else if (diagnosisdiv === "t1proc22sub37") {
                                                                        headTag1 = "proheading22";
                                                                        } else if (diagnosisdiv === "t1proc22sub38") {
                                                                        headTag1 = "proheading22";
                                                                        } else if (diagnosisdiv === "t1proc22sub39") {
                                                                        headTag1 = "proheading22";
                                                                        } else if (diagnosisdiv === "t1proc22sub310") {
                                                                        headTag1 = "proheading22";
                                                                        } else if (diagnosisdiv === "t1proc22sub311") {
                                                                        headTag1 = "proheading22";
                                                                        } else if (diagnosisdiv === "t1proc22sub312") {
                                                                        headTag1 = "proheading22";
                                                                        } else if (diagnosisdiv === "t1proc22sub38") {
                                                                        headTag1 = "proheading22";
                                                                        } else if (diagnosisdiv === "t1proc22sub11") {
                                                                        headTag1 = "proheading22";
                                                                        }
                                                                        // ================ 12 Tissue Lesion Excision ========================
                                                                        else if (diagnosisdiv === "t1proc12sub11") {
                                                                        headTag1 = "proheading12";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc12sub12") {
                                                                        headTag1 = "proheading12";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc12sub13") {
                                                                        headTag1 = "proheading12";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc12sub14") {
                                                                        headTag1 = "proheading12";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc12sub15") {
                                                                        headTag1 = "proheading12";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc12sub16") {
                                                                        headTag1 = "proheading12";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc12sub17") {
                                                                        headTag1 = "proheading12";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc12sub18") {
                                                                        headTag1 = "proheading12";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc12sub19") {
                                                                        headTag1 = "proheading12";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc12sub110") {
                                                                        headTag1 = "proheading12";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc12sub111") {
                                                                        headTag1 = "proheading12";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc12sub112") {
                                                                        headTag1 = "proheading12";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc12sub113") {
                                                                        headTag1 = "proheading12";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc12sub114") {
                                                                        headTag1 = "proheading12";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc12sub115") {
                                                                        headTag1 = "proheading12";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc12sub116") {
                                                                        headTag1 = "proheading12";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc12sub117") {
                                                                        headTag1 = "proheading12";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc12sub118") {
                                                                        headTag1 = "proheading12";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc12sub123") {
                                                                        headTag1 = "proheading12";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc12sub124") {
                                                                        headTag1 = "proheading12";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc12sub125") {
                                                                        headTag1 = "proheading12";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc12sub126") {
                                                                        headTag1 = "proheading12";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc12sub127") {
                                                                        headTag1 = "proheading12";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc12sub128") {
                                                                        headTag1 = "proheading12";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc12sub129") {
                                                                        headTag1 = "proheading12";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc12sub130") {
                                                                        headTag1 = "proheading12";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc12sub131") {
                                                                        headTag1 = "proheading12";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc12sub132") {
                                                                        headTag1 = "proheading12";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc12sub133") {
                                                                        headTag1 = "proheading12";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc12sub134") {
                                                                        headTag1 = "proheading12";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc12sub135") {
                                                                        headTag1 = "proheading12";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc12sub136") {
                                                                        headTag1 = "proheading12";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc12sub137") {
                                                                        headTag1 = "proheading12";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc12sub138") {
                                                                        headTag1 = "proheading12";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc12sub139") {
                                                                        headTag1 = "proheading12";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc12sub140") {
                                                                        headTag1 = "proheading12";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc12sub21") {
                                                                        headTag1 = "proheading12";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc12sub22") {
                                                                        headTag1 = "proheading12";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc12sub23") {
                                                                        headTag1 = "proheading12";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc12sub24") {
                                                                        headTag1 = "proheading12";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc12sub31") {
                                                                        headTag1 = "proheading12";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc12sub32") {
                                                                        headTag1 = "proheading12";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc12sub35") {
                                                                        headTag1 = "proheading12";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc12sub36") {
                                                                        headTag1 = "proheading12";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc12sub39") {
                                                                        headTag1 = "proheading12";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc12sub310") {
                                                                        headTag1 = "proheading12";
                                                                        }
                                                                        //======================= 13. Foreign Body/Others Removal ================================
                                                                        else if (diagnosisdiv === "t1proc13sub11") {
                                                                        headTag1 = "proheading13";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc13sub12") {
                                                                        headTag1 = "proheading13";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc13sub13") {
                                                                        headTag1 = "proheading13";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc13sub14") {
                                                                        headTag1 = "proheading13";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc13sub15") {
                                                                        headTag1 = "proheading13";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc13sub16") {
                                                                        headTag1 = "proheading13";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc13sub17") {
                                                                        headTag1 = "proheading13";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc13sub18") {
                                                                        headTag1 = "proheading13";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc13sub19") {
                                                                        headTag1 = "proheading13";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc13sub110") {
                                                                        headTag1 = "proheading13";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc13sub111") {
                                                                        headTag1 = "proheading13";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc13sub112") {
                                                                        headTag1 = "proheading13";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc13sub21") {
                                                                        headTag1 = "proheading13";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc13sub22") {
                                                                        headTag1 = "proheading13";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc13sub23") {
                                                                        headTag1 = "proheading13";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc13sub24") {
                                                                        headTag1 = "proheading13";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc13sub25") {
                                                                        headTag1 = "proheading13";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc13sub26") {
                                                                        headTag1 = "proheading13";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc13sub27") {
                                                                        headTag1 = "proheading13";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc13sub28") {
                                                                        headTag1 = "proheading13";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc13sub31") {
                                                                        headTag1 = "proheading13";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc13sub32") {
                                                                        headTag1 = "proheading13";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc13sub33") {
                                                                        headTag1 = "proheading13";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc13sub34") {
                                                                        headTag1 = "proheading13";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc13sub435") {
                                                                        headTag1 = "proheading13";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc13sub436") {
                                                                        headTag1 = "proheading13";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc13sub437") {
                                                                        headTag1 = "proheading13";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc13sub438") {
                                                                        headTag1 = "proheading13";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc13sub439") {
                                                                        headTag1 = "proheading13";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc13sub440") {
                                                                        headTag1 = "proheading13";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc13sub441") {
                                                                        headTag1 = "proheading13";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc13sub442") {
                                                                        headTag1 = "proheading13";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc13sub443") {
                                                                        headTag1 = "proheading13";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc13sub444") {
                                                                        headTag1 = "proheading13";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc13sub445") {
                                                                        headTag1 = "proheading13";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc13sub446") {
                                                                        headTag1 = "proheading13";
                                                                        }
                                                                        //=============== 14. Tissue Graft  ===========================================
                                                                        else if (diagnosisdiv === "t1proc14sub11") {
                                                                        headTag1 = "proheading14";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc14sub12") {
                                                                        headTag1 = "proheading14";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc14sub13") {
                                                                        headTag1 = "proheading14";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc14sub14") {
                                                                        headTag1 = "proheading14";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc14sub15") {
                                                                        headTag1 = "proheading14";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc14sub16") {
                                                                        headTag1 = "proheading14";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc14sub17") {
                                                                        headTag1 = "proheading14";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc14sub18") {
                                                                        headTag1 = "proheading14";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc14sub19") {
                                                                        headTag1 = "proheading14";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc14sub110") {
                                                                        headTag1 = "proheading14";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc14sub111") {
                                                                        headTag1 = "proheading14";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc14sub112") {
                                                                        headTag1 = "proheading14";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc14sub113") {
                                                                        headTag1 = "proheading14";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc14sub114") {
                                                                        headTag1 = "proheading14";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc14sub115") {
                                                                        headTag1 = "proheading14";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc14sub116") {
                                                                        headTag1 = "proheading14";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc14sub117") {
                                                                        headTag1 = "proheading14";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc14sub118") {
                                                                        headTag1 = "proheading14";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc14sub119") {
                                                                        headTag1 = "proheading14";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc14sub120") {
                                                                        headTag1 = "proheading14";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc14sub21") {
                                                                        headTag1 = "proheading14";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc14sub22") {
                                                                        headTag1 = "proheading14";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc14sub23") {
                                                                        headTag1 = "proheading14";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc14sub24") {
                                                                        headTag1 = "proheading14";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc14sub25") {
                                                                        headTag1 = "proheading14";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc14sub26") {
                                                                        headTag1 = "proheading14";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc14sub27") {
                                                                        headTag1 = "proheading14";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc14sub28") {
                                                                        headTag1 = "proheading14";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc14sub31") {
                                                                        headTag1 = "proheading14";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc14sub32") {
                                                                        headTag1 = "proheading14";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc14sub33") {
                                                                        headTag1 = "proheading14";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc14sub34") {
                                                                        headTag1 = "proheading14";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc14sub35") {
                                                                        headTag1 = "proheading14";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc14sub36") {
                                                                        headTag1 = "proheading14";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc14sub37") {
                                                                        headTag1 = "proheading14";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc14sub38") {
                                                                        headTag1 = "proheading14";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc14sub41") {
                                                                        headTag1 = "proheading14";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc14sub42") {
                                                                        headTag1 = "proheading14";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc14sub43") {
                                                                        headTag1 = "proheading14";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc14sub44") {
                                                                        headTag1 = "proheading14";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc14sub51") {
                                                                        headTag1 = "proheading14";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc14sub56") {
                                                                        headTag1 = "proheading14";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc14sub57") {
                                                                        headTag1 = "proheading14";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc14sub58") {
                                                                        headTag1 = "proheading14";
                                                                        }
                                                                        //========================== 18 Vestibuloplasty ============================
                                                                        else if (diagnosisdiv === "t1proc19sub11") {
                                                                        headTag1 = "proheading19";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc19sub12") {
                                                                        headTag1 = "proheading19";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc19sub13") {
                                                                        headTag1 = "proheading19";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc19sub14") {
                                                                        headTag1 = "proheading19";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc19sub15") {
                                                                        headTag1 = "proheading19";
                                                                        }
                                                                        //============================== 16 Phlebotomy & Stemcell ========================
                                                                        else if (diagnosisdiv === "t1proc16sub11") {
                                                                        headTag1 = "proheading16";
                                                                        } else if (diagnosisdiv === "t1proc16sub12") {
                                                                        headTag1 = "proheading16";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc16sub13") {
                                                                        headTag1 = "proheading16";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc16sub14") {
                                                                        headTag1 = "proheading16";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc16sub15") {
                                                                        headTag1 = "proheading16";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc16sub16") {
                                                                        headTag1 = "proheading16";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc16sub17") {
                                                                        headTag1 = "proheading16";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc16sub18") {
                                                                        headTag1 = "proheading16";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc16sub21") {
                                                                        headTag1 = "proheading16";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc16sub22") {
                                                                        headTag1 = "proheading16";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc16sub23") {
                                                                        headTag1 = "proheading16";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc16sub24") {
                                                                        headTag1 = "proheading16";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc16sub25") {
                                                                        headTag1 = "proheading16";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc16sub31") {
                                                                        headTag1 = "proheading16";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc16sub32") {
                                                                        headTag1 = "proheading16";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc16sub41") {
                                                                        headTag1 = "proheading16";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc16sub42") {
                                                                        headTag1 = "proheading16";
                                                                        }
                                                                        // ================= 17. Tissue/Bone Harvest =============================
                                                                        else if (diagnosisdiv === "t1proc17sub11") {
                                                                        headTag1 = "proheading17";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc17sub12") {
                                                                        headTag1 = "proheading17";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc17sub21") {
                                                                        headTag1 = "proheading17";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc17sub22") {
                                                                        headTag1 = "proheading17";
                                                                        }
                                                                        // ===================== 18 Suture =========================
                                                                        else if (diagnosisdiv === "t1proc18sub11") {
                                                                        headTag1 = "proheading18";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc18sub12") {
                                                                        headTag1 = "proheading18";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc18sub13") {
                                                                        headTag1 = "proheading18";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc18sub14") {
                                                                        headTag1 = "proheading18";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc18sub21") {
                                                                        headTag1 = "proheading18";
                                                                        }
                                                                        else if (diagnosisdiv === "t1proc18sub22") {
                                                                        headTag1 = "proheading18";
                                                                        }
                                                                        else {
                                                                        return;
                                                                        }

                                                                        if (headTag !== "") {
                                                                        updateStatus(headTag, checkedcount);
                                                                        }
                                                                        if (headTag1 !== "") {
                                                                        //alert(headTag1);
                                                                        //alert(checkedcount1);
                                                                        updateStatus1(headTag1, checkedcount1);
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
                                                                        if (checked > 0)   {
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
                                                                        $(document).on("click", "#eligibilitytable a.deleteEb", function () {
                                                                        if (confirm("Are you sure you want to delete this record?")) {
                                                                        let tr = $(this).closest('tr');
                                                                        let ebid = tr.find('td:eq(1)').text();
                                                                        //  alert(ebid);
                                                                        //  alert(tr.find('td:eq(8)').find('#deleteDocument').html());

                                                                        $.ajax({
                                                                        url: "deletePreAuth",
                                                                                type: "get", //send it through get method
                                                                                data: {
                                                                                pa_id: $.trim(ebid)
                                                                                },
                                                                                success: function (response) {
                                                                                if (response.length > 0)
                                                                                {
                                                                                console.log(response);
                                                                                msgbox("Pre-Auth Deleted", "Pre-Auth Portal", "success");
                                                                                //  table.ajax.url("preauthorizationdata").load();
                                                                                start = start.format('YYYY-MM-DD');
                                                                                end = end.format('YYYY-MM-DD');
                                                                                if (searchOption === '1')    {
                                                                                table.ajax.url("preauthorizationsearchdata?para=first_name&paraVal=" + $('#para_Firstname').val()).load();
                                                                                } else if (searchOption === '2')    {
                                                                                table.ajax.url("preauthorizationsearchdata?para=last_name&paraVal=" + $('#para_Lastname').val()).load();
                                                                                } else if (searchOption === '3')    {
                                                                                table.ajax.url("preauthorizationsearchdata?para=dob&paraVal=" + convertMDYtoYMD($('#para_Dob').val())).load();
                                                                                } else if (searchOption === '5')    {
                                                                                table.ajax.url("preauthorizationsearchdata?para=patient_master.practice_id&paraVal=" + $('#ddlSearchPractice').val()).load();
                                                                                } else if (searchOption === '6')    {
                                                                                table.ajax.url("preauthorizationsearchdata?para=payor_master.payor_id&paraVal=" + $('#payorid').val()).load();
                                                                                }
                                                                                else     {
                                                                                table.ajax.url("preauthorizationdata?startDate=" + moment(start).format("YYYY-MM-DD") + "&endDate=" + moment(end).format("YYYY-MM-DD")).load();
                                                                                }
                                                                                }
                                                                                },
                                                                                error: function (err) {
                                                                                console.log(err);
                                                                                msgbox(err, "Pre-Auth Portal", "error");
                                                                                }
                                                                        });
                                                                        }
                                                                        });
                                                                        $(document).on("click", "#eligibilitytable a.recoverEb", function () {
                                                                        let tr = $(this).closest('tr');
                                                                        let ebid = tr.find('td:eq(1)').text();
                                                                        //  alert(ebid);
                                                                        //  alert(tr.find('td:eq(8)').find('#recoverDocument').html());
                                                                        $.ajax({
                                                                        url: "recoverPreAuth",
                                                                                type: "get", //send it through get method
                                                                                data: {
                                                                                pa_id: $.trim(ebid)
                                                                                },
                                                                                success: function (response) {
                                                                                if (response.length > 0)   {
                                                                                console.log(response);
                                                                                msgbox("Pre-Auth Recovered", "Pre-Auth Portal", "success");
                                                                                // table.ajax.url("preauthorizationdata").load();
                                                                                start = start.format('YYYY-MM-DD');
                                                                                end = end.format('YYYY-MM-DD');
                                                                                if (searchOption === '1')    {
                                                                                table.ajax.url("preauthorizationsearchdata?para=first_name&paraVal=" + $('#para_Firstname').val()).load();
                                                                                } else if (searchOption === '2')     {
                                                                                table.ajax.url("preauthorizationsearchdata?para=last_name&paraVal=" + $('#para_Lastname').val()).load();
                                                                                } else if (searchOption === '3')     {
                                                                                table.ajax.url("preauthorizationsearchdata?para=dob&paraVal=" + convertMDYtoYMD($('#para_Dob').val())).load();
                                                                                } else if (searchOption === '5')     {
                                                                                table.ajax.url("preauthorizationsearchdata?para=patient_master.practice_id&paraVal=" + $('#ddlSearchPractice').val()).load();
                                                                                } else if (searchOption === '6')     {
                                                                                table.ajax.url("preauthorizationsearchdata?para=payor_master.payor_id&paraVal=" + $('#payorid').val()).load();
                                                                                }
                                                                                else    {
                                                                                table.ajax.url("preauthorizationdata?startDate=" + moment(start).format("YYYY-MM-DD") + "&endDate=" + moment(end).format("YYYY-MM-DD")).load();
                                                                                }

                                                                                }
                                                                                },
                                                                                error: function (err) {
                                                                                console.log(err);
                                                                                msgbox(err, "Pre-Auth Portal", "error");
                                                                                }
                                                                        });
                                                                        });
                                                                        var LoginUsername = '<%= session.getAttribute("LoginUsername")%>';
                                                                        $('#raiseduser').text(LoginUsername);
                                                                        $(".overlay").click(function () {
                                                                        $(".q-view").removeClass("active");
                                                                        });
                                                                        var not_tid = GetParameterValues('tid');
                                                                        if (typeof (not_tid) !== 'undefined')    {
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
                                                                        if (checked > 0) {
                                                                        //     $('#raiseticket').show();
                                                                        } else   {
                                                                        // $('#raiseticket').hide();
                                                                        }
                                                                        }
                                                                        // console.log(checked);
                                                                        if (checked === total)   {
                                                                        $('#headercheck').prop('checked', true);
                                                                        if (checked > 1)     {
                                                                        notflag = 'Y';
                                                                        }
                                                                        } else   {
                                                                        $('#headercheck').prop('checked', false);
                                                                        if (checked > 1)    {
                                                                        notflag = 'Y';
                                                                        } else   {
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
                                                                        if (checked <= total)  {
                                                                        checked++;
                                                                        }
                                                                        });
                                                                        if (checked > 1)  {
                                                                        notflag = 'Y';
                                                                        }
                                                                        //   $('#raiseticket').show();
                                                                        } else    {
                                                                        $('#eligibilitytable tbody input[type=checkbox]').each(function () {
                                                                        $(this).prop('checked', false);
                                                                        if (checked > 0)   {
                                                                        checked--;
                                                                        }
                                                                        });
                                                                        notflag = 'N';
                                                                        //   $('#raiseticket').hide();
                                                                        }
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
                                                                        if (brid !== '')  {
                                                                        if (notflag === 'Y')
                                                                        {
                                                                        ShowConfirmYesNo();
                                                                        } else   {
                                                                        $(".q-view").addClass("active");
                                                                        }
                                                                        $('#ticket_type_id').val("16");
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
                                                                                if (response.length > 0)  {
                                                                                var txt = response;
                                                                                var obj = jQuery.parseJSON(txt);
                                                                                console.log(obj.length);
                                                                                if (obj.length > 0)  {
                                                                                $(".note-editable").html(obj[0].auto_desc);
                                                                                $('#flading').hide();
                                                                                }
                                                                                } else   {
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
                                                                                if (obj.length > 0)   {
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
                                                                                } else  {
                                                                                $('#flading').hide();
                                                                                }
                                                                                }
                                                                        });
                                                                        } else   {
                                                                        msgbox("Select atleast one Preauthorization(s).", "Ticket Portal", "warning");
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
                                                                                if (percentComplete <= 100)  {
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
                                                                        if ($("select#assigned_to").val() === "0") {
                                                                        ticketstatus = 1;
                                                                        tstatus = 'Created';
                                                                        } else    {
                                                                        ticketstatus = 2;
                                                                        tstatus = 'Assigned';
                                                                        }

                                                                        var tsource = '';
                                                                        if (ticketsource === 1)   {
                                                                        tsource = 'Practice';
                                                                        } else if (ticketsource === 2)  {
                                                                        tsource = 'Entity';
                                                                        } else   {
                                                                        tsource = 'Practice';
                                                                        }
                                                                        var tickettype = $("#ticket_type_id option:selected").text();
                                                                        var ticketpriority = $("#ticket_priority_id option:selected").text();
                                                                        var assignto = $("#assigned_to option:selected").text();
                                                                        $.ajax({
                                                                        url: "create_bulk_ticket",
                                                                                type: "get", //send it through get method
                                                                                data: {
                                                                                type_of_ticket: "16",
                                                                                        descriptions: $(".note-editable").html(),
                                                                                        ticket_status: ticketstatus,
                                                                                        assigned_to: $("select#assigned_to").val(),
                                                                                        attachmentfile: fns,
                                                                                        attachmentfilesize: sizetext,
                                                                                        ticket_source: ticketsource,
                                                                                        ticket_priority: $("select#ticket_priority_id").val(),
                                                                                        segment: "R",
                                                                                        currentdt: today,
                                                                                        request_id: brid
                                                                                },
                                                                                success: function (response) {
                                                                                console.log(response);
                                                                                $("select#ticket_type_id").val('16');
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
                                                                        if ($("select#assigned_to").val() !== "0")   {
                                                                        var strcontent = "Hi " + assignto + ", <br><br>" + "Type: " + tickettype + "<br>Source: " + tsource + "<br>Priority: " + ticketpriority + "<br> Assign To: " + assignto + "<br>Segment: PRE-AUTHORIZATION RELATED [R]" + "<br><br>" + $(".note-editable").html();
                                                                        // Email Config
                                                                        $.post('eMail', {
                                                                        recipient: entity_user_to,
                                                                                subject: 'Ticket Raised from Pre-Authorization Form: ' + tickettype + ' : ' + tstatus + ' to ' + assignto,
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
                                                                        if (user_id !== "0")  {
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
                                                                                if (obj.length > 0)   {
                                                                                $.each(obj, function (index, value) {
                                                                                entity_user_to = obj[index].username;
                                                                                entity_user_cc = obj[index].assigned_to;
                                                                                console.log(entity_user_to);
                                                                                console.log(entity_user_cc);
                                                                                $('#flading').hide();
                                                                                });
                                                                                } else  {
                                                                                $('#flading').hide();
                                                                                }
                                                                                }
                                                                        });
                                                                        }
                                                                        });
                                                                        });


    </script>

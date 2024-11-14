<%@page contentType="text/html"  pageEncoding="UTF-8" autoFlush="true"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@taglib prefix="spring"  uri="http://www.springframework.org/tags"  %>
<!DOCTYPE HTML>
<html lang="en">

    <head>
        <title>Pre-Estimate</title>
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
            canvas{
                border:1px dashed;
            }
            span.input-group-text{
                border:2px solid #28a745;
            }
            span.input-group-text.disabled{
                border:2px solid #ced4da;
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
        <script>
            var page = {
            bootstrap: 3
            };
            function swap_bs() {
            page.bootstrap = 3;
            }
        </script>
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
                                                            <label class="col-form-label col col-30px" style="left: 10px;">Filter By Created Date</label>
                                                            <div class='input-group pull-right' id='pc-daterangepicker-6' style="width: 245px;height: 33px;left: 10px;">
                                                                <input type='text' readonly="" class="form-control" placeholder="Select date range" />
                                                                <div class="input-group-append">
                                                                    <span class="input-group-text"><i class="feather icon-calendar"></i></span>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-3 col-lg-3 ">
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
                                                        <div class="form-group" style="margin-top:-5px;">
                                                            <label class="col-form-label col col-30px"></label>                                                             
                                                            <input type='text' id="para_Firstname" class="form-control" placeholder="First Name" />
                                                            <input type='text' id="para_Lastname" class="form-control" placeholder="Last Name" />
                                                            <input type='text' id="para_Dob" class="form-control" placeholder="DOB" />                                                      
                                                            <select class="form-control js-example-placeholder-multiple col-sm-12" id="ddlSearchPractice" data-placeholder="Select Practice"  name="ddlSearchPractice"></select>
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
                                                            <sec:authorize access="hasAuthority('NEW_PREESTIMATE_PRIVILEGE')">
                                                                <button type="button" onclick="addPreEstimate()"  id="btnnewEstimate" class="btn btn-warning" style="padding:5px 10px!important;"  title="New PreEstimate" ><i class="fas fa-plus-circle"></i>New</button>
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
                                                                <th># visits</th>                                                           
                                                                <th>Fee $</th>
                                                                <th data-toggle="tooltip" data-original-title="Primary covered amount">P-Cov $</th>
                                                                <th data-toggle="tooltip" data-original-title="Secondary covered amount">S-Cov $</th>
                                                                <th data-toggle="tooltip" data-original-title="Patient responsibility">PAT $</th>
                                                                <th>Created DT</th> 
                                                                <th>Status</th>
                                                                <th>Action</th>
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
                                    <div id="new_estimate" class="card d-none">
                                        <div class="card-body">
                                            <form:form  id="design-1-form" class="form-1 needs-validation" name="estimateform"  method="POST" action="saveestimate" modelAttribute="estimate">

                                                <h3 class="wiz-items">
                                                    <span class="num-icon">1</span><span style="color:#000000">
                                                        Visit Information
                                                    </span>
                                                </h3>




                                                <section>                                                       
                                                    <div class="row">
                                                        <div class="col-sm">														
                                                            <div class="form-group row">
                                                                <label class="col-sm-3 col-form-label font-style-label"  for="ddlpractice">Practice <span class="text-danger">*</span></label>
                                                                <div class="col-sm-9">
                                                                    <select class="form-control js-example-placeholder-multiple col-sm-12" required id="ddlpractice" data-placeholder="Select Practice" tabindex="1" name="ddlpractice">
                                                                    </select>
                                                                </div>
                                                            </div>
                                                            <div class="form-group row">
                                                                <label class="col-sm-3 col-form-label font-style-label" for="ddlpatient">Patient<span class="text-danger">*</span></label>
                                                                <div class="col-sm-9">
                                                                    <select class="form-control js-example-placeholder-multiple col-sm-12" required id="ddlpatient"data-placeholder ="Select Patient" tabindex="2"  name="ddlpatient" >
                                                                    </select>
                                                                </div>
                                                            </div> 

                                                            <div  class="form-group row">
                                                                <label for="b-t-name" class="col-sm-3 col-form-label font-style-label">Date of Birth</label>
                                                                <div class="col-sm-9">
                                                                    <input type="text" class="form-control" readonly required name="dob" tabindex="3" id="dob"  placeholder="dob">                                                      
                                                                </div>
                                                            </div>  

                                                        </div>
                                                        <div class="col-sm">
                                                            <div class="form-group row">
                                                                <label for="b-t-name" class="col-sm-3 col-form-label font-style-label">Treating Surgeon<font color="red">*</font> </label>
                                                                <div class="col-sm-9">
                                                                    <select class="form-control js-example-placeholder-multiple col-sm-12" required id="ddlprovider" data-placeholder="Select Treating Surgeon" tabindex="6"  name="ddlprovider">
                                                                    </select>
                                                                </div>
                                                            </div>                                                                
                                                            <div  class="form-group row">
                                                                <label for="b-t-name" class="col-sm-3 col-form-label font-style-label">Gender</label>
                                                                <div class="col-sm-9">
                                                                    <input type="text" class="form-control"  readonly name="ddlgender" tabindex="5" id="ddlgender"  placeholder="Gender">                                                      
                                                                </div>
                                                            </div>

                                                        </div>
                                                    </div>

                                                </section>

                                                <h3 class="wiz-items">
                                                    <span class="num-icon">2</span><span style="color:#000000">
                                                        Insurance
                                                    </span>
                                                </h3>
                                                <section id="insurance_section" >
                                                    <div class="row">                                                  
                                                        <div class="col-sm">	
                                                            <div class="form-group row">
                                                                <label class="col-sm-3 col-form-label font-style-label" for="primaryInsurance">Primary <font color="red">*</font> </label>
                                                                <div class="col-sm-9">
                                                                    <select class="form-control js-example-placeholder-multiple selected_prim" required id="primaryInsurance" tabindex="7" name="primaryInsurance" >
                                                                    </select>
                                                                    <input type="hidden" name="primaryInsuranceName"  id="primaryInsuranceName">
                                                                </div> 
                                                            </div>

                                                            <div class="form-group row">
                                                                <label for="b-t-name" class="col-sm-3 col-form-label font-style-label">Primary Member ID</label>
                                                                <div class="col-sm-9">
                                                                    <input type="text" class="form-control"  name="primaryMemberId" tabindex="8" id="primaryMemberId"  placeholder="primaryMemberId">                                                      
                                                                </div>
                                                            </div> 

                                                            <div  class="form-group row">
                                                                <label class="col-sm-3 col-form-label font-style-label" for="primaryFeeEstimate">Primary Fee Estimate <font color="red">*</font> </label>
                                                                <div class="col-sm-9">
                                                                    <select class="form-control js-example-placeholder-multiple" required id="primaryFeeEstimate" tabindex="9" name="primaryFeeEstimate" >
                                                                        <option value = "0" >None</option>
                                                                        <c:forEach var="estimatenamelist" items="${estimatenamelist}">
                                                                            <option value = "${estimatenamelist.preEstimateName}" >${estimatenamelist.preEstimateName}</option>
                                                                        </c:forEach>

                                                                    </select>
                                                                </div> 
                                                            </div>                                                                

                                                            <div  class="form-group row">
                                                                <label for="b-t-name" class="col-sm-3 col-form-label font-style-label">Copay $</label>
                                                                <div class="col-sm-9 input-group" style="background: transparent;">
                                                                    <div class="input-group-prepend" style="background: #edf1f4;">
                                                                        <span class="input-group-text" style="padding:5px 18px;"><i class="fas fa-dollar-sign"></i></span>
                                                                    </div>
                                                                    <input type="number" class="form-control"   name="primaryCopay" tabindex="10" id="primaryCopay"  placeholder="Copay" value="0">                                                      

                                                                </div>
                                                            </div>

                                                            <div  class="form-group row">
                                                                <label for="b-t-name" class="col-sm-3 col-form-label font-style-label">CoIns %</label>
                                                                <div class="col-sm-9 input-group" style="background: transparent;"> 
                                                                    <div class="input-group-prepend" style="background: #edf1f4;">
                                                                        <span class="input-group-text"><i class="fas fa-percent"></i></span>
                                                                    </div>
                                                                    <input type="number" class="form-control"   name="primaryCoIns" tabindex="11" id="primaryCoIns"  placeholder="CoIns" value="0" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*?)\..*/g, '$1');" style="padding:3px 15px!important;">                                                      

                                                                </div>
                                                            </div>

                                                            <div  class="form-group row">
                                                                <label for="b-t-name" class="col-sm-3 col-form-label font-style-label">Deductible $</label>
                                                                <div class="col-sm-9 input-group" style="background: transparent;">
                                                                    <div class="input-group-prepend" style="background: #edf1f4;">
                                                                        <span class="input-group-text" style="padding:5px 18px;"><i class="fas fa-dollar-sign"></i></span>
                                                                    </div>
                                                                    <input type="text" class="form-control"   name="primaryDeductible" tabindex="12" id="primaryDeductible" value="0" placeholder="Deductible" oninput="this.value =this.value.match(/^\d+\.?\d{0,2}/)">                                                      
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-sm">

                                                            <div class="form-group row">
                                                                <label class="col-sm-3 col-form-label font-style-label" for="secondaryInsurance">Secondary </label>
                                                                <div class="col-sm-9">
                                                                    <select class="form-control js-example-placeholder-multiple selected_sec" id="secondaryInsurance" tabindex="13" name="secondaryInsurance" >

                                                                    </select>
                                                                    <input type="hidden" name="secondaryInsuranceName"  id="secondaryInsuranceName">
                                                                </div> 
                                                            </div>

                                                            <div class="form-group row">
                                                                <label for="b-t-name" class="col-sm-3 col-form-label font-style-label">Secondary Member ID</label>
                                                                <div class="col-sm-9">
                                                                    <input type="text" class="form-control"  name="secondaryMemberId" tabindex="14" id="secondaryMemberId"  placeholder="secondaryMemberId">                                                      
                                                                </div>
                                                            </div>



                                                            <div  class="form-group row">
                                                                <label class="col-sm-3 col-form-label font-style-label" for="secondaryFeeEstimate">Secondary Fee Estimate </label>
                                                                <div class="col-sm-9">
                                                                    <select class="form-control js-example-placeholder-multiple" id="secondaryFeeEstimate" tabindex="15" name="secondaryFeeEstimate" >
                                                                        <option value = "0" >None</option>
                                                                        <c:forEach var="estimatenamelist" items="${estimatenamelist}">
                                                                            <option value = "${estimatenamelist.preEstimateName}" >${estimatenamelist.preEstimateName}</option>
                                                                        </c:forEach>
                                                                    </select>
                                                                </div> 
                                                            </div>                                                                

                                                            <div  class="form-group row">
                                                                <label for="b-t-name" class="col-sm-3 col-form-label font-style-label">Copay $</label>
                                                                <div class="col-sm-9 input-group" style="background: transparent;">
                                                                    <div class="input-group-prepend" style="background: #edf1f4;">
                                                                        <span class="input-group-text" style="padding:5px 18px;"><i class="fas fa-dollar-sign"></i></span>
                                                                    </div>
                                                                    <input type="number" class="form-control"   name="secondaryCopay" tabindex="16" id="secondaryCopay"  placeholder="Copay" value="0" >                                                      

                                                                </div>
                                                            </div>

                                                            <div  class="form-group row">
                                                                <label for="b-t-name" class="col-sm-3 col-form-label font-style-label">CoIns %</label>
                                                                <div class="col-sm-9 input-group" style="background: transparent;">
                                                                    <div class="input-group-prepend" style="background: #edf1f4;">
                                                                        <span class="input-group-text"><i class="fas fa-percent"></i></span>
                                                                    </div>
                                                                    <input type="number" class="form-control"   name="secondaryCoIns" tabindex="17" id="secondaryCoIns"  placeholder="CoIns" value="0" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*?)\..*/g, '$1');">                                                      

                                                                </div>
                                                            </div>

                                                            <div  class="form-group row">
                                                                <label for="b-t-name" class="col-sm-3 col-form-label font-style-label">Deductible $</label>
                                                                <div class="col-sm-9 input-group" style="background: transparent;">
                                                                    <div class="input-group-prepend" style="background: #edf1f4;">
                                                                        <span class="input-group-text" style="padding:5px 18px;"><i class="fas fa-dollar-sign"></i></span>
                                                                    </div>
                                                                    <input type="text" class="form-control"   name="secondaryDeductible" tabindex="18" id="secondaryDeductible"  placeholder="Deductible" value="0" oninput="this.value = this.value.match(/^\d+\.?\d{0,2}/)">                                                      
                                                                </div>
                                                            </div> 
                                                        </div>
                                                    </div> 

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
                                                    <section>  
                                                        <div class="col-md-12">
                                                            <div class="card statustic-card">
                                                                <div style="padding: 10px 15px;" class="card-header bg-success border-0 ">
                                                                    <h5 class="text-white m-b-0">Visit Information</h5>
                                                                </div>
                                                                <div class="card-body ">
                                                                    <div class="row">
                                                                        <div class="col-sm" >  
                                                                            <div class="form-group row">
                                                                                <label class="col-sm-4 col-form-label font-style-label"  for="patname">Patient</label>
                                                                                <div class="col-sm-8">
                                                                                    <label class="col-form-label " id="patname"  for="patname"></label>
                                                                                </div>


                                                                            </div> 
                                                                            <div class="form-group row">
                                                                                <label class="col-sm-4 col-form-label font-style-label"  for="patgender">Gender</label>
                                                                                <div class="col-sm-8">
                                                                                    <label class="col-form-label " id="patgender"  for="patgender"></label>
                                                                                </div>


                                                                            </div> 
                                                                            <div class="form-group row">
                                                                                <label class="col-sm-4 col-form-label font-style-label"  for="patdob">DOB</label>
                                                                                <div class="col-sm-8">
                                                                                    <label class="col-form-label " id="patdob"  for="patdob"></label>
                                                                                </div>                                                                   

                                                                            </div> 
                                                                            <div class="form-group row">
                                                                                <label class="col-sm-4 col-form-label font-style-label"  for="primary">Primary</label>
                                                                                <div class="col-sm-8">
                                                                                    <label class="col-form-label " id="primary"  for="primary"></label>
                                                                                </div>                                                                   

                                                                            </div> 

                                                                            <div  class="form-group row">
                                                                                <label class="col-sm-4 col-form-label font-style-label"  for="primemid">Member ID:</label>
                                                                                <div class="col-sm-8">
                                                                                    <label class="col-form-label "  id="primemid"></label>
                                                                                </div>
                                                                            </div>  

                                                                        </div> 
                                                                        <div class="col-sm" >   
                                                                            <div class="form-group row">
                                                                                <label class="col-sm-4 col-form-label font-style-label"  for="practice">Practice</label>
                                                                                <div class="col-sm-8">
                                                                                    <label class=" col-form-label "  id="practice"></label>
                                                                                </div>
                                                                            </div> 


                                                                            <div class="form-group row">
                                                                                <label class="col-sm-4 col-form-label font-style-label" >Treating Surgeon:</label>
                                                                                <div class="col-sm-8">
                                                                                    <label class="col-form-label"  id="treating_surgeon"></label>
                                                                                </div>
                                                                            </div>

                                                                            <div class="form-group row">
                                                                                <label class="col-sm-4 col-form-label font-style-label"  for="secondary">Secondary</label>
                                                                                <div class="col-sm-8">
                                                                                    <label class="col-form-label " id="secondary"  for="secondary"></label>
                                                                                </div>                                                                   

                                                                            </div> 

                                                                            <div  class="form-group row">
                                                                                <label class="col-sm-4 col-form-label font-style-label"  for="secmemid">Member ID:</label>
                                                                                <div class="col-sm-8">
                                                                                    <label class="col-form-label "  id="secmemid"></label>
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

                                                    <jsp:include page="reviewproc1.jsp"></jsp:include> 
                                                        <!--=============================================signature==================-->      
                                                        <div class="col-md-12">
                                                            <div class="card statustic-card">
                                                                <div class="card-header">

                                                                    <div class="row">
                                                                        <div class="col-sm ml-4" > 
                                                                            <input type="checkbox" name="patientSigned" <c:out value="${estimatedetail.status eq 'SIGNED' ? 'checked': ''}"/>  
                                                                               class="custom-control-input input-primary " id="consentCheckbox" value="1">
                                                                        <label class="custom-control-label" for="consentCheckbox"> I have read and understood the treatment plan. </label>
                                                                    </div>
                                                                </div>
                                                                <table style="width:100%; margin-top:20px;" class="<c:out value="${estimatedetail.status eq 'SIGNED' ? '': 'd-none'}"/> " id="signatureTable">
                                                                    <tr>
                                                                        <td>  
                                                                            <canvas id="sign_preestiamte01" height="60" width="280">		 			
                                                                            </canvas>
                                                                            <input type="hidden" name="staffSignature" id="staffSignature">
                                                                        </td>
                                                                        <td>
                                                                            <canvas id="sign_preestiamte02" height="60" width="280">		 			
                                                                            </canvas>
                                                                            <input type="hidden" name="patientSignature" id="patientSignature">
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td> <p>Staff Signature <span style="color: red;margin: 20px;"><a onclick="sign_preestiamte_clear()">Clear Signature</a></span></p></td>

                                                                        <td> <p> Patient Signature <span style="color: red;margin: 20px;"><a onclick="sign_preestiamte1_clear()">Clear Signature</a></span></p></td>

                                                                    </tr>
                                                                    <tr>
                                                                        <td colspan="2"><p class="parentName" id="parentName">Parent/Guardian Name:&nbsp;<input type="text"  name="parentName" class="col-auto" /></p></td>
                                                                    </tr>

                                                                </table>

                                                            </div>
                                                        </div>
                                                    </div>
                                                </section>

                                                <input type="hidden" name="procedureCodes" id="procedureCodes" >
                                                <input type="hidden" name="actionflag" id="actionflag" value = '0'>
                                                <input type="hidden" name="result" id="result">
                                                <input type="hidden" name="resultCode" value="" id="resultcodev">
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
        <script src="https://cdnjs.cloudflare.com/ajax/libs/signature_pad/1.5.3/signature_pad.min.js"></script>

        <script src="assets/js/plugins/jquery.bootstrap.wizard.min.js"></script>
        <script src="assets/js/plugins/jquery.steps.min.js"></script>
        <script src="assets/js/ebill/estimate.js?v=<spring:message code="release.version"/>"></script>

    <script src="assets/js/plugins/select2.full.min.js"></script>
    <script src="assets/js/pages/form-select-custom.js"></script>

    <script>

                                                                            $(document).ready(function () {


                                                                            window.sign_preestiamte = new SignaturePad($('#sign_preestiamte01').get(0), {});
                                                                            window.sign_preestiamte1 = new SignaturePad($('#sign_preestiamte02').get(0), {});
                                                                            $('#consentCheckbox').click(function () {
                                                                            if (this.checked == false) {
                                                                            $('#signatureTable').addClass("d-none");
                                                                            sign_preestiamte_clear();
                                                                            sign_preestiamte1_clear();
                                                                            } else {
                                                                            $('#signatureTable').removeClass("d-none");
                                                                            }
                                                                            });
                                                                            //cleanup any localstorage entries from previos session
                                                                            Object.keys(localStorage)
                                                                                    .filter(x =>
                                                                                            x.startsWith('visit_'))
                                                                                    .forEach(x =>
                                                                                            localStorage.removeItem(x));
                                                                            Object.keys(localStorage)
                                                                                    .filter(x =>
                                                                                            x.startsWith('primcov_'))
                                                                                    .forEach(x =>
                                                                                            localStorage.removeItem(x));
                                                                            Object.keys(localStorage)
                                                                                    .filter(x =>
                                                                                            x.startsWith('seccov_'))
                                                                                    .forEach(x =>
                                                                                            localStorage.removeItem(x));
                                                                            });
                                                                            var sign_preestiamte_clear = function () {
                                                                            window.sign_preestiamte.clear();
                                                                            };
                                                                            var sign_preestiamte1_clear = function () {
                                                                            window.sign_preestiamte1.clear();
                                                                            };
                                                                            $(document).ready(function () {

                                                                            var practiceid = '<%=session.getAttribute("practiceid")%>';
                                                                            $("#para_Dob").datepicker({
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
                                                                            $('#ddlSearchPractice').next(".select2-container").hide();
                                                                            $('#payorid').next(".select2-container").hide();
                                                                            $(".tableFixHead1").removeClass("tablehide");
                                                                            $(".tableFixHead1").addClass("tableshow");
                                                                            function submitestimate() {
                                                                            $('#resultcodev').val('');
                                                                            $('#ddlpractice').removeAttr('disabled');
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
                                                                            $('#result').val($('#procedurecode_result').html());
                                                                            $('#resultcodev').val($('#procedurecodev_result').html());
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
                                                                            $("form[name='estimateform']").submit(function ()
                                                                            {
                                                                            $('#flading').show();
                                                                            var sign_preestiamte01 = window.sign_preestiamte.toDataURL("image/png");
                                                                            var sign_preestiamte_01 = sign_preestiamte01.replace('data:image/png;base64,', '');
                                                                            var sign_preestiamte02 = window.sign_preestiamte1.toDataURL("image/png");
                                                                            var sign_preestiamte_02 = sign_preestiamte02.replace('data:image/png;base64,', '');
                                                                            $('#staffSignature').val(sign_preestiamte_01);
                                                                            $('#patientSignature').val(sign_preestiamte_02);
                                                                            Object.keys(localStorage)
                                                                                    .filter(x =>
                                                                                            x.startsWith('visit_'))
                                                                                    .forEach(x =>
                                                                                            localStorage.removeItem(x));
                                                                            Object.keys(localStorage)
                                                                                    .filter(x =>
                                                                                            x.startsWith('primcov_'))
                                                                                    .forEach(x =>
                                                                                            localStorage.removeItem(x));
                                                                            Object.keys(localStorage)
                                                                                    .filter(x =>
                                                                                            x.startsWith('seccov_'))
                                                                                    .forEach(x =>
                                                                                            localStorage.removeItem(x));
//                                                                                    localStorage.removeItem('visit_');
//                                                                                    localStorage.removeItem('primcov_');
//                                                                                    localStorage.removeItem('seccov_');
                                                                            submitestimate();
                                                                            });
        <sec:authorize access="hasAnyRole('ROLE_ADMIN,ROLE_USER,ROLE_CORP_PRACTICE,ROLE_CORP_PROVIDER,ROLE_GROUPCLINIC_PROVIDER,
                       ROLE_CORP_ADMIN,ROLE_CORP_STAFF,ROLE_GROUPCLINIC_ADMIN,ROLE_GROUPCLINIC_STAFF,ROLE_BILLING_ADMIN,ROLE_BILLING_STAFF,
                       ROLE_PRACTICE_ADMIN,ROLE_PRACTICE_STAFF, ROLE_PRACTICE_PROVIDER,ROLE_REFERING_PROVIDER')">
                                                                            $('#procedurecode_result').hide();
                                                                            $('#procedurecodev_result').hide();
        </sec:authorize>

        <sec:authorize access="hasAnyRole('ROLE_ENTITY_ADMIN,ROLE_ENTITY_STAFF')">
                                                                            $('#procedurecode_result').hide();
                                                                            $('#procedurecodev_result').hide();
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
                                                                                    $('<option>').val(obj[i].practice_id).text(obj[i].name).appendTo(select);
                                                                                    $('<option>').val(obj[i].practice_id).text(obj[i].name).appendTo(select1);
                                                                                    }

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
                                                                                    'previousSelector': '.button-previous'
                                                                            });
                                                                            $('#verticalwizard').bootstrapWizard({
                                                                            'nextSelector': '.button-next',
                                                                                    'previousSelector': '.button-previous'
                                                                            });
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
                                                                            $('#para_Dos').hide();
                                                                            }
                                                                            });
                                                                            $('#ddlsearch').val(0).change();
                                                                            $('#ddlpractice').change(function (event) {
                                                                            $('#flading').show();
                                                                            $('#ddlbenefittype').val('');
                                                                            var practiceid = $("select#ddlpractice").val();
                                                                            if (practiceid !== '')
                                                                            {

                                                                            $('#dob').val("");
                                                                            $('#ddlpatient').val("");
                                                                            $('#ddlgender').val("");
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
                                                                                    console.log("getPatientwtPracticeid response:" + response);
                                                                                    var txt = response;
                                                                                    var obj = jQuery.parseJSON(txt);
                                                                                    console.log("getPatientwtPracticeid object " + obj);
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
                                                                            $("#primaryInsurance").on('change', function () {
                                                                            var insurance = $(this).find('option:selected').text();
                                                                            $('#primaryInsuranceName').val(insurance);
                                                                            var primaryInsurance = $(this).find('option:selected').attr('id').split('~');
                                                                            if (primaryInsurance[1] !== '0')
                                                                            {
                                                                            $('#primaryMemberId').val(primaryInsurance[2]);
                                                                            }
                                                                            });
                                                                            $('#secondaryInsurance').on('change', function () {
                                                                            if ($('#secondaryInsurance').val() == "0")
                                                                            {
                                                                            $('#secondaryMemberId').attr("readonly", "readonly");
                                                                            $('#secondaryFeeEstimate').prop("disabled", "true");
                                                                            $('#secondaryCopay').attr("readonly", "readonly");
                                                                            $('#secondaryCoIns').attr("readonly", "readonly");
                                                                            $('#secondaryDeductible').attr("readonly", "readonly");
                                                                            $('#secondaryInsuranceName').val("");
                                                                            $('#secondaryMemberId').val("");
                                                                            $('#secondaryFeeEstimate').val("0");
                                                                            $('#secondaryCopay').val("0");
                                                                            $('#secondaryCoIns').val("0");
                                                                            $('#secondaryDeductible').val("0");
                                                                            return false;
                                                                            } else
                                                                            {
                                                                            var sInsurance = $(this).find('option:selected').text();
                                                                            $('#secondaryInsuranceName').val(sInsurance);
                                                                            $('#secondaryMemberId').attr("readonly", false);
                                                                            $('#secondaryFeeEstimate').prop("disabled", false);
                                                                            $('#secondaryCopay').attr("readonly", false);
                                                                            $('#secondaryCoIns').attr("readonly", false);
                                                                            $('#secondaryDeductible').attr("readonly", false);
                                                                            var sInsurance = $(this).find('option:selected').text();
                                                                            $('#secondaryInsuranceName').val(sInsurance);
                                                                            var secondaryInsurance = $(this).find('option:selected').attr('id').split('~');
                                                                            if (secondaryInsurance[1] !== '0')
                                                                            {
                                                                            $('#secondaryMemberId').val(secondaryInsurance[2]);
                                                                            }
                                                                            return false;
                                                                            }

                                                                            });
                                                                            function clear()
                                                                            {

                                                                            $('#dob').val("");
                                                                            $('#ddlgender').val("");
                                                                            $('#primaryInsurance').prop("selectedIndex", 0);
                                                                            if ($('#primaryInsurance').has('option').length > 0) {
                                                                            $('#primaryInsurance').trigger('change');
                                                                            }

                                                                            $('#secondaryInsurance').prop("selectedIndex", 0);
                                                                            if ($('#secondaryInsurance').has('option').length > 0) {
                                                                            $('#secondaryInsurance').trigger('change');
                                                                            }
                                                                            $('#primaryMemberId').val("");
                                                                            $('#primaryCopay').val("0");
                                                                            $('#primaryCoIns').val("0");
                                                                            $('#primaryDeductible').val("0");
                                                                            $('#secondaryMemberId').val("");
                                                                            $('#secondaryCopay').val("0");
                                                                            $('#secondaryCoIns').val("0");
                                                                            $('#secondaryDeductible').val("0");
                                                                            }

                                                                            $('#ddlpatient').change(function (event) {
                                                                            var patientid = $("select#ddlpatient").val();
                                                                            // clear();
                                                                            $('#flading').show();
                                                                            if (patientid !== '0')
                                                                            {
                                                                            $('#primaryMemberId').val("");
                                                                            $('#primaryCopay').val("0");
                                                                            $('#primaryCoIns').val("0");
                                                                            $('#primaryDeductible').val("0");
                                                                            $('#secondaryMemberId').val("");
                                                                            $('#secondaryCopay').val("0");
                                                                            $('#secondaryCoIns').val("0");
                                                                            $('#secondaryDeductible').val("0");
                                                                            $.ajax({
                                                                            url: "getselectpayorwtpatid",
                                                                                    type: "get", //send it through get method
                                                                                    data: {
                                                                                    selectpayorlist: patientid
                                                                                    },
                                                                                    success: function (response) {
                                                                                    var select = $('#primaryInsurance');
                                                                                    select.find('option').remove();
                                                                                    var select1 = $('#secondaryInsurance');
                                                                                    select1.find('option').remove();
                                                                                    $("<option value='0' id='0' selected>None</option>").appendTo(select1);
                                                                                    console.log(response);
                                                                                    var txt = response;
                                                                                    var obj = jQuery.parseJSON(txt);
                                                                                    console.log(obj);
                                                                                    if (obj.length > 0)
                                                                                    {
                                                                                    for (var i = 0; i < obj.length; i++)
                                                                                    {
                                                                                    $('<option>').val(obj[i].payor_id).text(obj[i].name).attr('id', 'pri~' + obj[i].payor_id + '~' + obj[i].ins_no).appendTo(select);
                                                                                    $('<option>').val(obj[i].sec_payor_id).text(obj[i].sec_name).attr('id', 'pri~' + obj[i].sec_payor_id + '~' + obj[i].sec_ins_no).appendTo(select);
                                                                                    $('<option>').val(obj[i].payor_id).text(obj[i].name).attr('id', 'sec~' + obj[i].payor_id + '~' + obj[i].ins_no).appendTo(select1);
                                                                                    $('<option>').val(obj[i].sec_payor_id).text(obj[i].sec_name).attr('id', 'sec~' + obj[i].sec_payor_id + '~' + obj[i].sec_ins_no).appendTo(select1);
                                                                                    }


                                                                                    if ($('#primaryInsurance').has('option').length > 0) {
                                                                                    $('#primaryInsurance').prop("selectedIndex", 0);
                                                                                    $('#primaryInsurance').trigger('change');
                                                                                    }

                                                                                    if ($('#secondaryInsurance').has('option').length > 0) {
                                                                                    $('#secondaryInsurance').prop("selectedIndex", 0);
                                                                                    $('#secondaryInsurance').trigger('change');
                                                                                    }
                                                                                    }
                                                                                    }
                                                                            });
                                                                            $('#dob').val("");
                                                                            $('#ddlgender').val("");
//                                                                                        $('#mid').val("");
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
                                                                                     
                                                                                     $('#dob').val((month) + '/' + day + '/' + now.getFullYear()); */

                                                                                    $('#dob').val(convertYMDtoMDY(obj[i].dob));
                                                                                    if (obj[i].gender_identity === "1") {
                                                                                    $('#ddlgender').val("Male");
                                                                                    } else if (obj[i].gender_identity === "2") {
                                                                                    $('#ddlgender').val("Female");
                                                                                    } else if (obj[i].gender_identity === "3") {
                                                                                    $('#ddlgender').val("Other");
                                                                                    }

                                                                                    }
                                                                                    } else {
                                                                                    clear();
                                                                                    }
                                                                                    var dateOfBirth = $('#dob').val();
                                                                                    dateOfBirth = new Date(dateOfBirth);
                                                                                    var today = new Date();
                                                                                    var age = Math.floor((today - dateOfBirth) / (365.25 * 24 * 60 * 60 * 1000));
                                                                                    // alert(age);
                                                                                    var minor = 18;
                                                                                    if (age > minor) {
                                                                                    $('.parentName').hide();
                                                                                    } else {
                                                                                    $('.parentName').show();
                                                                                    }


//                                                                                                     

                                                                                    }
                                                                            });
                                                                            $('#flading').hide();
                                                                            }

                                                                            $('#secondaryMemberId').attr("readonly", "readonly");
                                                                            $('#secondaryFeeEstimate').prop("disabled", "true");
                                                                            $('#secondaryCopay').attr("readonly", "readonly");
                                                                            $('#secondaryCoIns').attr("readonly", "readonly");
                                                                            $('#secondaryDeductible').attr("readonly", "readonly");
                                                                            if ($('#secondaryInsurance').has('option').length > 0) {
                                                                            $('#secondaryMemberId').attr("readonly", "readonly");
                                                                            $('#secondaryFeeEstimate').prop("disabled", "true");
                                                                            $('#secondaryCopay').attr("readonly", "readonly");
                                                                            $('#secondaryCoIns').attr("readonly", "readonly");
                                                                            $('#secondaryDeductible').attr("readonly", "readonly");
                                                                            } else
                                                                            {
                                                                            clear();
                                                                            $('#flading').hide();
                                                                            $('.form-1').addClass('was-validated');
                                                                            $('a[href^="#next"]').show();
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
                                                                            var pedt = localStorage.getItem("pedate");
                                                                            if (pedt === null) {
                                                                            start = moment().subtract(10, 'year');
                                                                            end = moment();
                                                                            $('#pc-daterangepicker-6 .form-control').val(start.format('MM/DD/YYYY') + ' / ' + end.format('MM/DD/YYYY'));
                                                                            } else {
                                                                            var currentVal = pedt;
                                                                            start = currentVal.split(" / ")[0];
                                                                            end = currentVal.split(" / ")[1];
                                                                            $('#pc-daterangepicker-6 .form-control').val(moment(start).format("MM/DD/YYYY") + ' / ' + moment(end).format("MM/DD/YYYY"));
                                                                            localStorage.setItem("pedate", moment(start).format("MM/DD/YYYY") + ' / ' + moment(end).format("MM/DD/YYYY"));
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
                                                                                    {'visible': false, 'targets': [2, 12]}

        </sec:authorize>

        <sec:authorize access="hasAnyRole('ROLE_ADMIN,ROLE_ENTITY_ADMIN,ROLE_ENTITY_STAFF,ROLE_CORP_ADMIN,ROLE_CORP_STAFF,ROLE_GROUPCLINIC_ADMIN,ROLE_GROUPCLINIC_STAFF,ROLE_BILLING_ADMIN,ROLE_BILLING_STAFF,ROLE_PRACTICE_ADMIN,ROLE_PRACTICE_STAFF')">
                                                                                    {'visible': true, 'targets': [2]},
                                                                                    {'visible': false, 'targets': [12]}
        </sec:authorize>
                                                                                    ],
                                                                                    drawCallback: function (settings, json) {

                                                                                    //  $('[data-toggle="tooltip"]').tooltip('update');
                                                                                    },
                                                                                    "ajax": {
                                                                                    "type": "GET",
                                                                                            "url": "preestimatelist?startDate=" + moment(start).format("YYYY-MM-DD") + "&endDate=" + moment(end).format("YYYY-MM-DD"),
                                                                                            "contentType": 'application/json'
                                                                                    },
                                                                                    "columns": [
                                                                                    {"data": function (estimateObj) {
                                                                                    return '<input type="checkbox" class = "check">';
                                                                                    }, "orderable": false, "searchable": false, "name": "check"},
                                                                                    {"data": function (estimateObj) {
                                                                                    return " " + estimateObj.preEstimateId;
                                                                                    }, "orderable": true, "searchable": true, "name": "preEstimateId"},
                                                                                    {"data": function (estimateObj) {
                                                                                    var practicename = estimateObj.practicename;
                                                                                    return  practicename.substring(0, 10);
                                                                                    }, "orderable": true, "searchable": true, "name": "practicename"},
                                                                                    {"data": function (estimateObj) {
                                                                                    return " " + estimateObj.patientName; //spracticename
                                                                                    }, "orderable": true, "searchable": true, "name": "patientName"},
                                                                                    {"data": function (estimateObj) {
                                                                                    return estimateObj.noOfVisits;
                                                                                    }, "orderable": true, "searchable": true, "name": "noOfVisits"},
                                                                                    {"data": function (estimateObj) {
                                                                                    return " " + ((estimateObj.totalFee).toFixed(2));
                                                                                    }, "orderable": true, "searchable": true, "name": "totalFee"},
                                                                                    {"data": function (estimateObj) {
                                                                                    return  " " + ((estimateObj.primaryCoverageFee).toFixed(2));
                                                                                    }, "orderable": true, "searchable": true, "name": "primaryCoverageFee"},
                                                                                    {"data": function (estimateObj) {
                                                                                    return " " + ((estimateObj.secondaryCoverageFee).toFixed(2));
                                                                                    }, "orderable": true, "searchable": true, "name": "secondaryCoverageFee"},
                                                                                    {"data": function (estimateObj) {
                                                                                    return " " + ((estimateObj.totalPatientPortion).toFixed(2));
                                                                                    }, "orderable": true, "searchable": true, "name": "totalPatientPortion"},
                                                                                    {"data": function (estimateObj) {
                                                                                    return " " + estimateObj.createdDate;
                                                                                    }, "orderable": true, "searchable": true, "name": "createdDate"},
                                                                                    {"data": function (estimateObj) {
                                                                                    if (estimateObj.runstatus === "SIGNED") {
                                                                                    return '<a href="#" class="badge badge-light-success f-12 m-r-5">Signed</a>';
                                                                                    } else if (estimateObj.runstatus === "WAITING FOR APPROVAL") {
                                                                                    return '<a href="#" class="badge badge-light-warning f-12 m-r-5">Waiting For Approval</a>';
                                                                                    } else if (estimateObj.runstatus === "APPROVED") {
                                                                                    return '<a href="#" class="badge badge-light-yelinfo f-12 m-r-5">Approved</a>';
                                                                                    } else if (estimateObj.runstatus === "SENT") {
                                                                                    return '<a href="#" class="badge badge-light-success f-12 m-r-5">Sent</a>';
                                                                                    } else if (estimateObj.runstatus === "DRAFTED") {
                                                                                    return '<a href="#" class="badge badge-light-warning f-12 m-r-5">DRAFTED</a>';
                                                                                    } else {
                                                                                    return " " + estimateObj.runstatus;
                                                                                    }
                                                                                    }, "orderable": true, "searchable": true, "name": "status"},
                                                                                    {"data": function (estimateObj) {
                                                                                    var action = "";
                                                                                    var edit = "";
                                                                                    var del = "";
                                                                                    var recover = "";
                                                                                    var UT = '<%= session.getAttribute("UT")%>';
                                                                                    var download = '<a role="tooltip" target="_blank" data-microtip-position="left" class="singledownbutton" id="singledown" title="" aria-label="Download"   href="download_estimate_pdf?filePath=' + estimateObj.filePath + '"><i class="fas fa-download" style="font-size:15px; margin:0 3px;color: #19BCBF;"></i></a> | ';
                                                                                    //<a data-toggle='tooltip' data-placement='top' title='' data-original-title='Print' target='_blank' href='printebill?id=" + estimateObj.preEstimateId + "'>" + "<img src='assets/images/print17x17.png'></a> | ";
        <sec:authorize access="hasAuthority('VIEW_PREESTIMATE_PRIVILEGE')">
                                                                                    var code = ""; // "<a data-toggle='tooltip' data-placement='top' title='' data-original-title='Review' href='viewbill?id=" + estimateObj.preEstimateId + "'>" + "<img src='assets/images/review17x17.png'></a>|";
        </sec:authorize>

        <sec:authorize access="hasAuthority('EDIT_PREESTIMATE_PRIVILEGE')">
                                                                                    edit = '<a role="tooltip" data-microtip-position="left" title="" aria-label="Edit" href="edit-estimate?id=' + estimateObj.preEstimateId + '"><i class="fas fa-edit" style="font-size:15px; margin:0 3px;color:#2DCEE3;"></i> | ';
        </sec:authorize>


        <sec:authorize access="hasAnyRole('ROLE_PRACTICE_PROVIDER,ROLE_CORP_PROVIDER,ROLE_GROUPCLINIC_PROVIDER,ROLE_REFERING_PROVIDER')">
                                                                                    if (estimateObj.runstatus === "DRAFTED") {
                                                                                    action = edit;
                                                                                    } else if (estimateObj.runstatus === "WAITING FOR APPROVAL") {
                                                                                    action = edit; //+ approval;
                                                                                    }
                                                                                    action = action + download;
        </sec:authorize>

        <sec:authorize access="hasAnyRole('ROLE_ENTITY_ADMIN')">
                                                                                    if (estimateObj.runstatus === "SIGNED" || estimateObj.runstatus === "APPROVED") {
                                                                                    action = edit + download;
                                                                                    }
                                                                                    if (estimateObj.runstatus === "DRAFTED") {
                                                                                    action = edit + download;
                                                                                    }

                                                                                    if (estimateObj.runstatus === "SENT") {
                                                                                    action = edit + download;
                                                                                    }
                                                                                    if (estimateObj.runstatus === "APPROVED") {
                                                                                    action = edit + download;
                                                                                    }

        </sec:authorize>

        <sec:authorize access="hasAnyRole('ROLE_ADMIN,ROLE_USER,ROLE_ENTITY_STAFF,ROLE_CORP_PRACTICE,ROLE_CORP_ADMIN,ROLE_CORP_STAFF,
                       ROLE_GROUPCLINIC_ADMIN,ROLE_GROUPCLINIC_STAFF,ROLE_BILLING_ADMIN,ROLE_BILLING_STAFF,
                       ROLE_PRACTICE_ADMIN,ROLE_PRACTICE_STAFF')">

                                                                                    action = download;
        </sec:authorize>
        <sec:authorize access="hasAuthority('DELETE_DOCUMENT_PRIVILEGE')">
                                                                                    if (estimateObj.flag === 'Y')
                                                                                    {
                                                                                    del = '<a id="deletePe" class="deletePe"  role="tooltip" data-microtip-position="left" title="" aria-label="Delete"><i class="fas fa-trash-alt" style="font-size:15px; margin:0 3px;color:#FF425C;"></i></a>|';
                                                                                    }
        </sec:authorize>

        <sec:authorize access="hasAuthority('RECOVER_DOCUMENT_PRIVILEGE')">
                                                                                    if (estimateObj.flag === 'N')
                                                                                    {
                                                                                    recover = '<a id="recoverPe" class="recoverPe"  role="tooltip" data-microtip-position="left" title="" aria-label="Recover"><i class="mdi mdi-restore" style="font-size:18px; margin:0 3px;color:#FF425C;"></i></a>';
                                                                                    }
        </sec:authorize>

                                                                                    return action + del + recover;
                                                                                    }, "orderable": true, "searchable": true, "name": "action"},
                                                                                    {"data": function (estimateObj) {
                                                                                    return  estimateObj.practicename;
                                                                                    }, "orderable": true, "searchable": true, "name": "practicename"}
                                                                                    ],
                                                                                    dom: 'fBrtipl',
                                                                                    buttons: [
                                                                                    {
                                                                                    extend: 'csv',
                                                                                            text: '<img src="assets/images/excelicon.png">',
                                                                                            className: 'dt-pdf-btn',
                                                                                            titleAttr: 'Download list in excel Format',
                                                                                            exportOptions: {
                                                                                            columns: [1, 12, 3, 4, 5, 6, 7, 8, 9, 10]
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
                                                                                            columns: [1, 12, 3, 4, 5, 6, 7, 8, 9, 10]
                                                                                            }}
                                                                                   /* {
                                                                                    extend: 'csv',
                                                                                            text: '<img src="assets/images/checkexcelicon.png">',
                                                                                            className: 'dt-pdf-btn',
                                                                                            titleAttr: 'Selected Rows in excel Format',
                                                                                            exportOptions: {
                                                                                            rows: function (idx, data, node) {
                                                                                            return $(node).find('.check:checked').length === 1;
                                                                                            },
                                                                                                    columns: [1, 12, 3, 4, 5, 6, 7, 8, 9, 10]
                                                                                            }} */],
                                                                                    createdRow: function (row, data, dataIndex) {
        <sec:authorize access="hasAnyRole('ROLE_PRACTICE_PROVIDER,ROLE_CORP_PROVIDER,ROLE_GROUPCLINIC_PROVIDER,ROLE_REFERING_PROVIDER')">
                                                                                    // $(row).find('td:eq(2)').hide();
                                                                                    // $(row).find('td:eq(12)').hide();
                                                                                    $(row).find('td:eq(4)').attr('align', "center");
                                                                                    if ($(row).find('td:eq(11)').find('a:eq(5)').attr('id') === 'recoverPe' || $(row).find('td:eq(11)').find('a:eq(4)').attr('id') === 'recoverPe' || $(row).find('td:eq(11)').find('a:eq(3)').attr('id') === 'recoverPe' || $(row).find('td:eq(11)').find('a:eq(2)').attr('id') === 'recoverPe' || $(row).find('td:eq(11)').find('a:eq(1)').attr('id') === 'recoverPe')
                                                                                    {
                                                                                    $(row).find('td').not(':eq(11)').attr('style', 'font-weight: bold; !important; text-decoration:line-through; color:red;vertical-align: middle;line-height:1;');
                                                                                    $(row).find('td').find('a').removeAttr('href');
                                                                                    $(row).find('td').find('a').removeAttr('target');
                                                                                    }

        </sec:authorize>
        <sec:authorize access="hasAnyRole('ROLE_ADMIN,ROLE_ENTITY_ADMIN,ROLE_ENTITY_STAFF,ROLE_CORP_ADMIN,ROLE_CORP_STAFF,ROLE_GROUPCLINIC_ADMIN,ROLE_GROUPCLINIC_STAFF,ROLE_BILLING_ADMIN,ROLE_BILLING_STAFF,ROLE_PRACTICE_ADMIN,ROLE_PRACTICE_STAFF')">
                                                                                    $(row).find('td:eq(4)').attr('align', "center");
                                                                                    if (data["practicename"].toString() != ''){
                                                                                    $(row).find('td:eq(2)').attr('role', "tooltip");
                                                                                    $(row).find('td:eq(2)').attr('data-microtip-size', "medium")
                                                                                            $(row).find('td:eq(2)').attr('data-microtip-position', "right");
                                                                                    $(row).find('td:eq(2)').attr('aria-label', data["practicename"].toString());
                                                                                    }
                                                                                    if ($(row).find('td:eq(11)').find('a:eq(5)').attr('id') === 'recoverPe' || $(row).find('td:eq(11)').find('a:eq(4)').attr('id') === 'recoverPe' || $(row).find('td:eq(11)').find('a:eq(3)').attr('id') === 'recoverPe' || $(row).find('td:eq(11)').find('a:eq(2)').attr('id') === 'recoverPe' || $(row).find('td:eq(11)').find('a:eq(1)').attr('id') === 'recoverPe')
                                                                                    {
                                                                                    $(row).find('td').not(':eq(11)').attr('style', 'font-weight: bold; !important; text-decoration:line-through; color:red; vertical-align: middle;line-height:1;');
                                                                                    $(row).find('td').find('a').removeAttr('href');
                                                                                    $(row).find('td').find('a').removeAttr('target');
                                                                                    }
                                                                                    //  $(row).find('td:eq(12)').hide();
        </sec:authorize>


                                                                                    },
                                                                                    footerCallback: function (tfoot, data, start, end, display) {
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
                                                                            localStorage.setItem("pedate", startVal.format("MM/DD/YYYY") + ' / ' + endVal.format("MM/DD/YYYY"));
                                                                            table.ajax.url("preestimatelist?startDate=" + start + "&endDate=" + end).load();
                                                                            });
                                                                            var searchOption = '';
                                                                            $('#showall').click(function () {
                                                                            searchOption = '0';
                                                                            table.search('').columns().search('').draw();
                                                                             $('#ddlsearch').val(0).change();
                                                                            //clear();
                                                                            /*$('#para_Firstname').hide();
                                                                            $('#para_Lastname').hide();
                                                                            $('#para_Dob').hide();
                                                                            $('#ddlSearchPractice').next(".select2-container").hide();
                                                                            $('#payorid').next(".select2-container").hide();
                                                                            $('#para_Dos').hide();
                                                                            $('#flading').show();                                                                            
                                                                            $('#para_Firstname').val('');
                                                                            $('#para_Lastname').val('');
                                                                            $('#para_Dob').val('');
                                                                            $('#ddlSearchPractice').val('').change();
                                                                            $('#payorid').val('').change();     */                                                                        
                                                                            table.ajax.url("preestimatelist?startDate=" + moment(start).format("YYYY-MM-DD") + "&endDate=" + moment(end).format("YYYY-MM-DD")).load();
                                                                            });
                                                                            $('#search').click(function () {
                                                                            $('#flading').show();
                                                                            searchOption = $('#ddlsearch').val();
                                                                            if (searchOption === '0')
                                                                            {
                                                                            msgbox("Select the Search option..!", "Pre-estimate Portal", "error");
                                                                            $('#flading').hide();
                                                                            }
                                                                            else if (searchOption === '1')
                                                                            {
                                                                            var lenFirstName = $('#para_Firstname').val().length;
                                                                            if (lenFirstName !== 0)
                                                                            {
                                                                            table.ajax.url("preestimatesearchlist?para=pm.first_name&para1=0&paraVal=" + $('#para_Firstname').val()).load();
                                                                            }
                                                                            else
                                                                            {
                                                                            msgbox("Enter Patient First Name", "Pre-estimate Portal", "error");
                                                                            $('#flading').hide();
                                                                            }
                                                                            }

                                                                            // last name
                                                                            else if (searchOption === '2')
                                                                            {
                                                                            var lenLastName = $('#para_Lastname').val().length;
                                                                            if (lenLastName !== 0)

                                                                            {
                                                                            table.ajax.url("preestimatesearchlist?para=pm.last_name&para1=0&paraVal=" + $('#para_Lastname').val()).load();
                                                                            } else
                                                                            {
                                                                            msgbox("Enter Patient Last Name..!", "Pre-estimate Portal", "error");
                                                                            $('#flading').hide();
                                                                            }
                                                                            }
                                                                            else if (searchOption === '3')
                                                                            {
                                                                            var lenDob = $('#para_Dob').val().length;
                                                                            if (lenDob !== 0)
                                                                            {
                                                                            table.ajax.url("preestimatesearchlist?para=pm.dob&para1=0&paraVal=" + convertMDYtoYMD($('#para_Dob').val())).load();
                                                                            } else
                                                                            {
                                                                            msgbox("Enter Patient Dob..!", "Pre-estimate Portal", "error");
                                                                            $('#flading').hide();
                                                                            }
                                                                            }
                                                                            else if (searchOption === '5')
                                                                            {
                                                                            var lenPractice = $('#ddlSearchPractice').val().length;
                                                                            if (lenPractice !== 0)
                                                                            {
                                                                            table.ajax.url("preestimatesearchlist?para=prm.practice_id&para1=0&paraVal=" + $('#ddlSearchPractice').val()).load();
                                                                            } else
                                                                            {
                                                                            msgbox("Please Select Practice..!", "Pre-estimate Portal", "error");
                                                                            $('#flading').hide();
                                                                            }
                                                                            } else if (searchOption === '6')
                                                                            {
                                                                            var lenPayor = $('#payorid').val().length;
                                                                            if (lenPayor !== 0)
                                                                            {
                                                                            table.ajax.url("preestimatesearchlist?para=ped.primary_insurance&para1=ped.sec_insurance&paraVal=" + $('#payorid').val()).load();
                                                                            } else
                                                                            {
                                                                            msgbox("Please Select Insurance..!", "Pre-estimate Portal", "error");
                                                                            $('#flading').hide();
                                                                            }
                                                                            }

                                                                            });
                                                                            $('#eligibilitytable').find('thead').find('tr').each(function () {

        <sec:authorize access="hasAnyRole('ROLE_PRACTICE_PROVIDER,ROLE_CORP_PROVIDER,ROLE_GROUPCLINIC_PROVIDER,ROLE_REFERING_PROVIDER')">
                                                                            // $(this).find('th:eq(2)').hide();

        </sec:authorize>
                                                                            // $(this).find('th:eq(12)').hide();
                                                                            });
                                                                            $('input[type="checkbox"]').change(function () {


                                                                            var procedurecode = $(this).attr("name");
                                                                            var procedurediv = $(this).attr("title");
                                                                            var headTag = "";
                                                                            //var checkedcount = $('input[name="' + procedurecode + '"]:checked').length;
                                                                            var checkedcount = $('input[title="' + procedurediv + '"]:checked').length;
                                                                            var headTag1 = "";
                                                                            if (procedurecode === "t1proc02sub11") {
                                                                            headTag = "proheadingOne";
                                                                            } else if (procedurecode === "t1proc02sub12") {
                                                                            headTag = "proheadingOne";
                                                                            } else if (procedurecode === "t1proc02sub13") {
                                                                            headTag = "proheadingOne";
                                                                            } else if (procedurecode === "t1proc02sub14") {
                                                                            headTag = "proheadingOne";
                                                                            } else if (procedurecode === "t1proc02sub15") {
                                                                            headTag = "proheadingOne";
                                                                            } else if (procedurecode === "t1proc02sub16") {
                                                                            headTag = "proheadingOne";
                                                                            }
                                                                            else if (procedurecode === "t1proc02sub21") {
                                                                            headTag = "proheadingOne";
                                                                            }
                                                                            else if (procedurecode === "t1proc02sub22") {
                                                                            headTag = "proheadingOne";
                                                                            }
                                                                            else if (procedurecode === "t1proc02sub23") {
                                                                            headTag = "proheadingOne";
                                                                            }
                                                                            else if (procedurecode === "t1proc02sub24") {
                                                                            headTag = "proheadingOne";
                                                                            }
                                                                            //=======Patient Consultation/ Evaluation=====================
                                                                            else if (procedurecode === "t1proc03sub11") {
                                                                            headTag = "proheading2";
                                                                            }
                                                                            else if (procedurecode === "t1proc03sub12") {
                                                                            headTag = "proheading2";
                                                                            }
                                                                            else if (procedurecode === "t1proc03sub13") {
                                                                            headTag = "proheading2";
                                                                            }
                                                                            else if (procedurecode === "t1proc03sub14") {
                                                                            headTag = "proheading2";
                                                                            }
                                                                            else if (procedurecode === "t1proc03sub21") {
                                                                            headTag = "proheading2";
                                                                            }
                                                                            else if (procedurecode === "t1proc03sub22") {
                                                                            headTag = "proheading2";
                                                                            }
                                                                            else if (procedurecode === "t1proc03sub23") {
                                                                            headTag = "proheading2";
                                                                            }
                                                                            else if (procedurecode === "t1proc03sub31") {
                                                                            headTag = "proheading2";
                                                                            }
                                                                            else if (procedurecode === "t1proc03sub32") {
                                                                            headTag = "proheading2";
                                                                            }
                                                                            else if (procedurecode === "t1proc03sub33") {
                                                                            headTag = "proheading2";
                                                                            }
                                                                            else if (procedurecode === "t1proc03sub34") {
                                                                            headTag = "proheading2";
                                                                            }
                                                                            else if (procedurecode === "t1proc03sub41") {
                                                                            headTag = "proheading2";
                                                                            }
                                                                            else if (procedurecode === "t1proc03sub42") {
                                                                            headTag = "proheading2";
                                                                            }
                                                                            //==============Appliance=============
                                                                            else if (procedurecode === "t1proc05sub11") {
                                                                            headTag = "proheading5";
                                                                            }
                                                                            else if (procedurecode === "t1proc05sub12") {
                                                                            headTag = "proheading5";
                                                                            }
                                                                            else if (procedurecode === "t1proc05sub21") {
                                                                            headTag = "proheading5";
                                                                            }
                                                                            else if (procedurecode === "t1proc05sub22") {
                                                                            headTag = "proheading5";
                                                                            }
                                                                            else if (procedurecode === "t1proc05sub23") {
                                                                            headTag = "proheading5";
                                                                            }
                                                                            else if (procedurecode === "t1proc05sub24") {
                                                                            headTag = "proheading5";
                                                                            }
                                                                            else if (procedurecode === "t1proc05sub25") {
                                                                            headTag = "proheading5";
                                                                            }
                                                                            else if (procedurecode === "t1proc05sub26") {
                                                                            headTag = "proheading5";
                                                                            }
                                                                            else if (procedurecode === "t1proc05sub27") {
                                                                            headTag = "proheading5";
                                                                            }
                                                                            else if (procedurecode === "t1proc05sub28") {
                                                                            headTag = "proheading5";
                                                                            }

                                                                            //===================Biopsy=============
                                                                            else if (procedurecode === "t1proc06sub11") {
                                                                            headTag = "proheading6";
                                                                            }
                                                                            else if (procedurecode === "t1proc06sub12") {
                                                                            headTag = "proheading6";
                                                                            }
                                                                            else if (procedurecode === "t1proc06sub13") {
                                                                            headTag = "proheading6";
                                                                            }
                                                                            else if (procedurecode === "t1proc06sub14") {
                                                                            headTag = "proheading6";
                                                                            }
                                                                            else if (procedurecode === "t1proc06sub15") {
                                                                            headTag = "proheading6";
                                                                            }
                                                                            else if (procedurecode === "t1proc06sub16") {
                                                                            headTag = "proheading6";
                                                                            }
                                                                            else if (procedurecode === "t1proc06sub17") {
                                                                            headTag = "proheading6";
                                                                            }
                                                                            else if (procedurecode === "t1proc06sub18") {
                                                                            headTag = "proheading6";
                                                                            }
                                                                            else if (procedurecode === "t1proc06sub19") {
                                                                            headTag = "proheading6";
                                                                            }
                                                                            else if (procedurecode === "t1proc06sub110") {
                                                                            headTag = "proheading6";
                                                                            }
                                                                            else if (procedurecode === "t1proc06sub111") {
                                                                            headTag = "proheading6";
                                                                            }
                                                                            else if (procedurecode === "t1proc06sub112") {
                                                                            headTag = "proheading6";
                                                                            }
                                                                            //===========Drainage Abscess===========

                                                                            else if (procedurecode === "t1proc20sub11") {
                                                                            headTag = "proheading20";
                                                                            }
                                                                            else if (procedurecode === "t1proc20sub12") {
                                                                            headTag = "proheading20";
                                                                            }
                                                                            else if (procedurecode === "t1proc20sub13") {
                                                                            headTag = "proheading20";
                                                                            }
                                                                            else if (procedurecode === "t1proc20sub14") {
                                                                            headTag = "proheading20";
                                                                            }
                                                                            else if (procedurecode === "t1proc20sub15") {
                                                                            headTag = "proheading20";
                                                                            }
                                                                            else if (procedurecode === "t1proc20sub16") {
                                                                            headTag = "proheading20";
                                                                            }
                                                                            else if (procedurecode === "t1proc20sub17") {
                                                                            headTag = "proheading20";
                                                                            }
                                                                            else if (procedurecode === "t1proc20sub18") {
                                                                            headTag = "proheading20";
                                                                            }
                                                                            else if (procedurecode === "t1proc20sub19") {
                                                                            headTag = "proheading20";
                                                                            }
                                                                            else if (procedurecode === "t1proc20sub110") {
                                                                            headTag = "proheading20";
                                                                            }
                                                                            else if (procedurecode === "t1proc20sub111") {
                                                                            headTag = "proheading20";
                                                                            }
                                                                            else if (procedurecode === "t1proc20sub112") {
                                                                            headTag = "proheading20";
                                                                            }
                                                                            else if (procedurecode === "t1proc20sub113") {
                                                                            headTag = "proheading20";
                                                                            }
                                                                            else if (procedurecode === "t1proc20sub114") {
                                                                            headTag = "proheading20";
                                                                            }
                                                                            else if (procedurecode === "t1proc20sub115") {
                                                                            headTag = "proheading20";
                                                                            }
                                                                            else if (procedurecode === "t1proc20sub116") {
                                                                            headTag = "proheading20";
                                                                            }
                                                                            else if (procedurecode === "t1proc20sub117") {
                                                                            headTag = "proheading20";
                                                                            }
                                                                            else if (procedurecode === "t1proc20sub118") {
                                                                            headTag = "proheading20";
                                                                            }
                                                                            else if (procedurecode === "t1proc20sub119") {
                                                                            headTag = "proheading20";
                                                                            }
                                                                            else if (procedurecode === "t1proc20sub120") {
                                                                            headTag = "proheading20";
                                                                            }
                                                                            else if (procedurecode === "t1proc20sub121") {
                                                                            headTag = "proheading20";
                                                                            }
                                                                            else if (procedurecode === "t1proc20sub122") {
                                                                            headTag = "proheading20";
                                                                            }
                                                                            else if (procedurecode === "t1proc20sub123") {
                                                                            headTag = "proheading20";
                                                                            }
                                                                            else if (procedurecode === "t1proc20sub124") {
                                                                            headTag = "proheading20";
                                                                            }
                                                                            else if (procedurecode === "t1proc20sub125") {
                                                                            headTag = "proheading20";
                                                                            }
                                                                            else if (procedurecode === "t1proc20sub125") {
                                                                            headTag = "proheading20";
                                                                            }
                                                                            else if (procedurecode === "t1proc20sub126") {
                                                                            headTag = "proheading20";
                                                                            }
                                                                            else if (procedurecode === "t1proc20sub127") {
                                                                            headTag = "proheading20";
                                                                            }
                                                                            else if (procedurecode === "t1proc20sub128") {
                                                                            headTag = "proheading20";
                                                                            }
                                                                            //============== Fixation Fail Removal / Bone Graft Fail Excision ================
                                                                            else if (procedurecode === "t1proc07sub11") {
                                                                            headTag = "proheading7";
                                                                            }
                                                                            else if (procedurecode === "t1proc07sub12") {
                                                                            headTag = "proheading7";
                                                                            }
                                                                            else if (procedurecode === "t1proc07sub13") {
                                                                            headTag = "proheading7";
                                                                            }
                                                                            else if (procedurecode === "t1proc07sub14") {
                                                                            headTag = "proheading7";
                                                                            }
                                                                            else if (procedurecode === "t1proc07sub15") {
                                                                            headTag = "proheading7";
                                                                            }
                                                                            else if (procedurecode === "t1proc07sub16") {
                                                                            headTag = "proheading7";
                                                                            }
                                                                            else if (procedurecode === "t1proc07sub17") {
                                                                            headTag = "proheading7";
                                                                            }
                                                                            else if (procedurecode === "t1proc07sub18") {
                                                                            headTag = "proheading7";
                                                                            }
                                                                            else if (procedurecode === "t1proc07sub19") {
                                                                            headTag = "proheading7";
                                                                            }
                                                                            else if (procedurecode === "t1proc07sub110") {
                                                                            headTag = "proheading7";
                                                                            }
                                                                            else if (procedurecode === "t1proc07sub111") {
                                                                            headTag = "proheading7";
                                                                            }
                                                                            else if (procedurecode === "t1proc07sub112") {
                                                                            headTag = "proheading7";
                                                                            }
                                                                            else if (procedurecode === "t1proc07sub21") {
                                                                            headTag = "proheading7";
                                                                            }
                                                                            else if (procedurecode === "t1proc07sub22") {
                                                                            headTag = "proheading7";
                                                                            }
                                                                            else if (procedurecode === "t1proc07sub23") {
                                                                            headTag = "proheading7";
                                                                            }
                                                                            else if (procedurecode === "t1proc07sub24") {
                                                                            headTag = "proheading7";
                                                                            }
                                                                            else if (procedurecode === "t1proc07sub25") {
                                                                            headTag = "proheading7";
                                                                            }
                                                                            else if (procedurecode === "t1proc07sub26") {
                                                                            headTag = "proheading7";
                                                                            }
                                                                            else if (procedurecode === "t1proc07sub27") {
                                                                            headTag = "proheading7";
                                                                            }
                                                                            else if (procedurecode === "t1proc07sub28") {
                                                                            headTag = "proheading7";
                                                                            }
                                                                            //===============Bone Lesion / Bony Cyst Excision===========================

                                                                            else if (procedurecode === "t1proc08sub11") {
                                                                            headTag = "proheading8";
                                                                            }
                                                                            else if (procedurecode === "t1proc08sub12") {
                                                                            headTag = "proheading8";
                                                                            }
                                                                            else if (procedurecode === "t1proc08sub13") {
                                                                            headTag = "proheading8";
                                                                            }
                                                                            else if (procedurecode === "t1proc08sub14") {
                                                                            headTag = "proheading8";
                                                                            }
                                                                            else if (procedurecode === "t1proc08sub21") {
                                                                            headTag = "proheading8";
                                                                            }
                                                                            else if (procedurecode === "t1proc08sub22") {
                                                                            headTag = "proheading8";
                                                                            }
                                                                            else if (procedurecode === "t1proc08sub23") {
                                                                            headTag = "proheading8";
                                                                            }
                                                                            else if (procedurecode === "t1proc08sub24") {
                                                                            headTag = "proheading8";
                                                                            }
                                                                            else if (procedurecode === "t1proc08sub25") {
                                                                            headTag = "proheading8";
                                                                            }
                                                                            else if (procedurecode === "t1proc08sub26") {
                                                                            headTag = "proheading8";
                                                                            }
                                                                            else if (procedurecode === "t1proc08sub27") {
                                                                            headTag = "proheading8";
                                                                            }
                                                                            else if (procedurecode === "t1proc08sub28") {
                                                                            headTag = "proheading8";
                                                                            }
                                                                            else if (procedurecode === "t1proc08sub29") {
                                                                            headTag = "proheading8";
                                                                            }
                                                                            else if (procedurecode === "t1proc08sub210") {
                                                                            headTag = "proheading8";
                                                                            }
                                                                            else if (procedurecode === "t1proc08sub211") {
                                                                            headTag = "proheading8";
                                                                            }
                                                                            else if (procedurecode === "t1proc08sub212") {
                                                                            headTag = "proheading8";
                                                                            }
                                                                            //================Debridement==========================


                                                                            else if (procedurecode === "t1proc21sub11") {
                                                                            headTag = "proheading21";
                                                                            }
                                                                            else if (procedurecode === "t1proc21sub12") {
                                                                            headTag = "proheading21";
                                                                            }
                                                                            else if (procedurecode === "t1proc21sub13") {
                                                                            headTag = "proheading21";
                                                                            }
                                                                            else if (procedurecode === "t1proc21sub14") {
                                                                            headTag = "proheading21";
                                                                            }
                                                                            else if (procedurecode === "t1proc21sub15") {
                                                                            headTag = "proheading21";
                                                                            }
                                                                            else if (procedurecode === "t1proc21sub16") {
                                                                            headTag = "proheading21";
                                                                            }
                                                                            else if (procedurecode === "t1proc21sub17") {
                                                                            headTag = "proheading21";
                                                                            }
                                                                            else if (procedurecode === "t1proc21sub18") {
                                                                            headTag = "proheading21";
                                                                            }
                                                                            else if (procedurecode === "t1proc21sub19") {
                                                                            headTag = "proheading21";
                                                                            }
                                                                            else if (procedurecode === "t1proc21sub110") {
                                                                            headTag = "proheading21";
                                                                            }
                                                                            else if (procedurecode === "t1proc21sub111") {
                                                                            headTag = "proheading21";
                                                                            }
                                                                            else if (procedurecode === "t1proc21sub112") {
                                                                            headTag = "proheading21";
                                                                            }
                                                                            else if (procedurecode === "t1proc21sub113") {
                                                                            headTag = "proheading21";
                                                                            }
                                                                            else if (procedurecode === "t1proc21sub114") {
                                                                            headTag = "proheading21";
                                                                            }
                                                                            else if (procedurecode === "t1proc21sub115") {
                                                                            headTag = "proheading21";
                                                                            }
                                                                            else if (procedurecode === "t1proc21sub116") {
                                                                            headTag = "proheading21";
                                                                            }
                                                                            //========= Osseous Surgery ========

                                                                            else if (procedurecode === "t1proc09sub11") {
                                                                            headTag = "proheading89";
                                                                            }
                                                                            else if (procedurecode === "t1proc09sub12") {
                                                                            headTag = "proheading89";
                                                                            }
                                                                            else if (procedurecode === "t1proc09sub13") {
                                                                            headTag = "proheading89";
                                                                            }
                                                                            else if (procedurecode === "t1proc09sub14") {
                                                                            headTag = "proheading89";
                                                                            }
                                                                            else if (procedurecode === "t1proc09sub15") {
                                                                            headTag = "proheading89";
                                                                            }
                                                                            else if (procedurecode === "t1proc09sub16") {
                                                                            headTag = "proheading89";
                                                                            }
                                                                            else if (procedurecode === "t1proc09sub17") {
                                                                            headTag = "proheading89";
                                                                            }
                                                                            else if (procedurecode === "t1proc09sub18") {
                                                                            headTag = "proheading89";
                                                                            }
                                                                            //===== Bone Graft / Sinus Surgery =================


                                                                            else if (procedurecode === "t1proc10sub11") {
                                                                            headTag = "proheading10";
                                                                            }
                                                                            else if (procedurecode === "t1proc10sub12") {
                                                                            headTag = "proheading10";
                                                                            }
                                                                            else if (procedurecode === "t1proc10sub13") {
                                                                            headTag = "proheading10";
                                                                            }
                                                                            else if (procedurecode === "t1proc10sub14") {
                                                                            headTag = "proheading10";
                                                                            }
                                                                            else if (procedurecode === "t1proc10sub21") {
                                                                            headTag = "proheading10";
                                                                            }
                                                                            else if (procedurecode === "t1proc10sub22") {
                                                                            headTag = "proheading10";
                                                                            }
                                                                            else if (procedurecode === "t1proc10sub23") {
                                                                            headTag = "proheading10";
                                                                            }
                                                                            else if (procedurecode === "t1proc10sub24") {
                                                                            headTag = "proheading10";
                                                                            }
                                                                            else if (procedurecode === "t1proc10sub31") {
                                                                            headTag = "proheading10";
                                                                            }
                                                                            else if (procedurecode === "t1proc10sub32") {
                                                                            headTag = "proheading10";
                                                                            }
                                                                            else if (procedurecode === "t1proc10sub33") {
                                                                            headTag = "proheading10";
                                                                            }
                                                                            else if (procedurecode === "t1proc10sub34") {
                                                                            headTag = "proheading10";
                                                                            }
                                                                            else if (procedurecode === "t1proc10sub35") {
                                                                            headTag = "proheading10";
                                                                            }
                                                                            else if (procedurecode === "t1proc10sub36") {
                                                                            headTag = "proheading10";
                                                                            }
                                                                            //====================== Surgical Reconstruction of fixation ========


                                                                            else if (procedurecode === "t1proc11sub11") {
                                                                            headTag = "proheading11";
                                                                            }
                                                                            else if (procedurecode === "t1proc11sub12") {
                                                                            headTag = "proheading11";
                                                                            }
                                                                            else if (procedurecode === "t1proc11sub13") {
                                                                            headTag = "proheading11";
                                                                            }
                                                                            else if (procedurecode === "t1proc11sub14") {
                                                                            headTag = "proheading11";
                                                                            }
                                                                            else if (procedurecode === "t1proc11sub15") {
                                                                            headTag = "proheading11";
                                                                            }
                                                                            else if (procedurecode === "t1proc11sub16") {
                                                                            headTag = "proheading11";
                                                                            }
                                                                            else if (procedurecode === "t1proc11sub17") {
                                                                            headTag = "proheading11";
                                                                            }
                                                                            else if (procedurecode === "t1proc11sub18") {
                                                                            headTag = "proheading11";
                                                                            }
                                                                            else if (procedurecode === "t1proc11sub21") {
                                                                            headTag = "proheading11";
                                                                            }
                                                                            else if (procedurecode === "t1proc11sub22") {
                                                                            headTag = "proheading11";
                                                                            }
                                                                            else if (procedurecode === "t1proc11sub23") {
                                                                            headTag = "proheading11";
                                                                            }
                                                                            else if (procedurecode === "t1proc11sub24") {
                                                                            headTag = "proheading11";
                                                                            }
                                                                            else if (procedurecode === "t1proc11sub25") {
                                                                            headTag = "proheading11";
                                                                            }
                                                                            else if (procedurecode === "t1proc11sub26") {
                                                                            headTag = "proheading11";
                                                                            }
                                                                            else if (procedurecode === "t1proc11sub27") {
                                                                            headTag = "proheading11";
                                                                            }
                                                                            else if (procedurecode === "t1proc11sub28") {
                                                                            headTag = "proheading11";
                                                                            }
                                                                            //======= Reconstruction of Bone Fracture =======


                                                                            else if (procedurecode === "t1proc22sub11") {
                                                                            headTag = "proheading22";
                                                                            }
                                                                            else if (procedurecode === "t1proc22sub12") {
                                                                            headTag = "proheading22";
                                                                            }
                                                                            else if (procedurecode === "t1proc22sub13") {
                                                                            headTag = "proheading22";
                                                                            }
                                                                            else if (procedurecode === "t1proc22sub14") {
                                                                            headTag = "proheading22";
                                                                            }
                                                                            else if (procedurecode === "t1proc22sub15") {
                                                                            headTag = "proheading22";
                                                                            }
                                                                            else if (procedurecode === "t1proc22sub16") {
                                                                            headTag = "proheading22";
                                                                            }
                                                                            else if (procedurecode === "t1proc22sub17") {
                                                                            headTag = "proheading22";
                                                                            }
                                                                            else if (procedurecode === "t1proc22sub18") {
                                                                            headTag = "proheading22";
                                                                            }
                                                                            else if (procedurecode === "t1proc22sub19") {
                                                                            headTag = "proheading22";
                                                                            }
                                                                            else if (procedurecode === "t1proc22sub110") {
                                                                            headTag = "proheading22";
                                                                            }
                                                                            else if (procedurecode === "t1proc22sub111") {
                                                                            headTag = "proheading22";
                                                                            }
                                                                            else if (procedurecode === "t1proc22sub112") {
                                                                            headTag = "proheading22";
                                                                            }
                                                                            else if (procedurecode === "t1proc22sub113") {
                                                                            headTag = "proheading22";
                                                                            }
                                                                            else if (procedurecode === "t1proc22sub114") {
                                                                            headTag = "proheading22";
                                                                            }
                                                                            else if (procedurecode === "t1proc22sub115") {
                                                                            headTag = "proheading22";
                                                                            }
                                                                            else if (procedurecode === "t1proc22sub116") {
                                                                            headTag = "proheading22";
                                                                            }
                                                                            else if (procedurecode === "t1proc22sub21") {
                                                                            headTag = "proheading22";
                                                                            }
                                                                            else if (procedurecode === "t1proc22sub22") {
                                                                            headTag = "proheading22";
                                                                            }
                                                                            else if (procedurecode === "t1proc22sub23") {
                                                                            headTag = "proheading22";
                                                                            }
                                                                            else if (procedurecode === "t1proc22sub24") {
                                                                            headTag = "proheading22";
                                                                            }
                                                                            else if (procedurecode === "t1proc22sub25") {
                                                                            headTag = "proheading22";
                                                                            }
                                                                            else if (procedurecode === "t1proc22sub26") {
                                                                            headTag = "proheading22";
                                                                            }
                                                                            else if (procedurecode === "t1proc22sub27") {
                                                                            headTag = "proheading22";
                                                                            }
                                                                            else if (procedurecode === "t1proc22sub28") {
                                                                            headTag = "proheading22";
                                                                            }
                                                                            else if (procedurecode === "t1proc22sub29") {
                                                                            headTag = "proheading22";
                                                                            }
                                                                            else if (procedurecode === "t1proc22sub210") {
                                                                            headTag = "proheading22";
                                                                            }
                                                                            else if (procedurecode === "t1proc22sub211") {
                                                                            headTag = "proheading22";
                                                                            }
                                                                            else if (procedurecode === "t1proc22sub212") {
                                                                            headTag = "proheading22";
                                                                            }
                                                                            else if (procedurecode === "t1proc22sub213") {
                                                                            headTag = "proheading22";
                                                                            }
                                                                            else if (procedurecode === "t1proc22sub214") {
                                                                            headTag = "proheading22";
                                                                            }
                                                                            else if (procedurecode === "t1proc22sub215") {
                                                                            headTag = "proheading22";
                                                                            }
                                                                            else if (procedurecode === "t1proc22sub216") {
                                                                            headTag = "proheading22";
                                                                            }
                                                                            else if (procedurecode === "t1proc22sub31") {
                                                                            headTag = "proheading22";
                                                                            }
                                                                            else if (procedurecode === "t1proc22sub32") {
                                                                            headTag = "proheading22";
                                                                            }
                                                                            else if (procedurecode === "t1proc22sub33") {
                                                                            headTag = "proheading22";
                                                                            }
                                                                            else if (procedurecode === "t1proc22sub34") {
                                                                            headTag = "proheading22";
                                                                            }
                                                                            else if (procedurecode === "t1proc22sub35") {
                                                                            headTag = "proheading22";
                                                                            }
                                                                            else if (procedurecode === "t1proc22sub36") {
                                                                            headTag = "proheading22";
                                                                            }
                                                                            else if (procedurecode === "t1proc22sub37") {
                                                                            headTag = "proheading22";
                                                                            }
                                                                            else if (procedurecode === "t1proc22sub38") {
                                                                            headTag = "proheading22";
                                                                            }
                                                                            else if (procedurecode === "t1proc22sub39") {
                                                                            headTag = "proheading22";
                                                                            }
                                                                            else if (procedurecode === "t1proc22sub310") {
                                                                            headTag = "proheading22";
                                                                            }
                                                                            else if (procedurecode === "t1proc22sub311") {
                                                                            headTag = "proheading22";
                                                                            }
                                                                            else if (procedurecode === "t1proc22sub312") {
                                                                            headTag = "proheading22";
                                                                            }
                                                                            //======== Tissue Lesion / Tissue Cyst Excision ========



                                                                            else if (procedurecode === "t1proc12sub11") {
                                                                            headTag = "proheading12";
                                                                            }
                                                                            else if (procedurecode === "t1proc12sub12") {
                                                                            headTag = "proheading12";
                                                                            }
                                                                            else if (procedurecode === "t1proc12sub13") {
                                                                            headTag = "proheading12";
                                                                            }
                                                                            else if (procedurecode === "t1proc12sub14") {
                                                                            headTag = "proheading12";
                                                                            }
                                                                            else if (procedurecode === "t1proc12sub15") {
                                                                            headTag = "proheading12";
                                                                            }
                                                                            else if (procedurecode === "t1proc12sub16") {
                                                                            headTag = "proheading12";
                                                                            }
                                                                            else if (procedurecode === "t1proc12sub17") {
                                                                            headTag = "proheading12";
                                                                            }
                                                                            else if (procedurecode === "t1proc12sub18") {
                                                                            headTag = "proheading12";
                                                                            }
                                                                            else if (procedurecode === "t1proc12sub19") {
                                                                            headTag = "proheading12";
                                                                            }
                                                                            else if (procedurecode === "t1proc12sub110") {
                                                                            headTag = "proheading12";
                                                                            }
                                                                            else if (procedurecode === "t1proc12sub111") {
                                                                            headTag = "proheading12";
                                                                            }
                                                                            else if (procedurecode === "t1proc12sub112") {
                                                                            headTag = "proheading12";
                                                                            }
                                                                            else if (procedurecode === "t1proc12sub113") {
                                                                            headTag = "proheading12";
                                                                            }
                                                                            else if (procedurecode === "t1proc12sub114") {
                                                                            headTag = "proheading12";
                                                                            }
                                                                            else if (procedurecode === "t1proc12sub115") {
                                                                            headTag = "proheading12";
                                                                            }
                                                                            else if (procedurecode === "t1proc12sub116") {
                                                                            headTag = "proheading12";
                                                                            }
                                                                            else if (procedurecode === "t1proc12sub117") {
                                                                            headTag = "proheading12";
                                                                            }
                                                                            else if (procedurecode === "t1proc12sub118") {
                                                                            headTag = "proheading12";
                                                                            }
                                                                            else if (procedurecode === "t1proc12sub123") {
                                                                            headTag = "proheading12";
                                                                            }
                                                                            else if (procedurecode === "t1proc12sub124") {
                                                                            headTag = "proheading12";
                                                                            }
                                                                            else if (procedurecode === "t1proc12sub125") {
                                                                            headTag = "proheading12";
                                                                            }
                                                                            else if (procedurecode === "t1proc12sub126") {
                                                                            headTag = "proheading12";
                                                                            }
                                                                            else if (procedurecode === "t1proc12sub127") {
                                                                            headTag = "proheading12";
                                                                            }
                                                                            else if (procedurecode === "t1proc12sub128") {
                                                                            headTag = "proheading12";
                                                                            }
                                                                            else if (procedurecode === "t1proc12sub129") {
                                                                            headTag = "proheading12";
                                                                            }
                                                                            else if (procedurecode === "t1proc12sub130") {
                                                                            headTag = "proheading12";
                                                                            }
                                                                            else if (procedurecode === "t1proc12sub131") {
                                                                            headTag = "proheading12";
                                                                            }
                                                                            else if (procedurecode === "t1proc12sub132") {
                                                                            headTag = "proheading12";
                                                                            }
                                                                            else if (procedurecode === "t1proc12sub133") {
                                                                            headTag = "proheading12";
                                                                            }
                                                                            else if (procedurecode === "t1proc12sub134") {
                                                                            headTag = "proheading12";
                                                                            }
                                                                            else if (procedurecode === "t1proc12sub135") {
                                                                            headTag = "proheading12";
                                                                            }
                                                                            else if (procedurecode === "t1proc12sub136") {
                                                                            headTag = "proheading12";
                                                                            }
                                                                            else if (procedurecode === "t1proc12sub137") {
                                                                            headTag = "proheading12";
                                                                            }
                                                                            else if (procedurecode === "t1proc12sub138") {
                                                                            headTag = "proheading12";
                                                                            }
                                                                            else if (procedurecode === "t1proc12sub139") {
                                                                            headTag = "proheading12";
                                                                            }
                                                                            else if (procedurecode === "t1proc12sub140") {
                                                                            headTag = "proheading12";
                                                                            }
                                                                            else if (procedurecode === "t1proc12sub21") {
                                                                            headTag = "proheading12";
                                                                            }
                                                                            else if (procedurecode === "t1proc12sub22") {
                                                                            headTag = "proheading12";
                                                                            }
                                                                            else if (procedurecode === "t1proc12sub23") {
                                                                            headTag = "proheading12";
                                                                            }
                                                                            else if (procedurecode === "t1proc12sub24") {
                                                                            headTag = "proheading12";
                                                                            }
                                                                            else if (procedurecode === "t1proc12sub31") {
                                                                            headTag = "proheading12";
                                                                            }
                                                                            else if (procedurecode === "t1proc12sub32") {
                                                                            headTag = "proheading12";
                                                                            }
                                                                            else if (procedurecode === "t1proc12sub35") {
                                                                            headTag = "proheading12";
                                                                            }
                                                                            else if (procedurecode === "t1proc12sub36") {
                                                                            headTag = "proheading12";
                                                                            }
                                                                            else if (procedurecode === "t1proc12sub39") {
                                                                            headTag = "proheading12";
                                                                            }
                                                                            else if (procedurecode === "t1proc12sub310") {
                                                                            headTag = "proheading12";
                                                                            }
                                                                            //======= Foreign Body / Others Removal ======


                                                                            else if (procedurecode === "t1proc13sub11") {
                                                                            headTag = "proheading13";
                                                                            }
                                                                            else if (procedurecode === "t1proc13sub12") {
                                                                            headTag = "proheading13";
                                                                            }
                                                                            else if (procedurecode === "t1proc13sub13") {
                                                                            headTag = "proheading13";
                                                                            }
                                                                            else if (procedurecode === "t1proc13sub14") {
                                                                            headTag = "proheading13";
                                                                            }
                                                                            else if (procedurecode === "t1proc13sub15") {
                                                                            headTag = "proheading13";
                                                                            }
                                                                            else if (procedurecode === "t1proc13sub16") {
                                                                            headTag = "proheading13";
                                                                            }
                                                                            else if (procedurecode === "t1proc13sub17") {
                                                                            headTag = "proheading13";
                                                                            }
                                                                            else if (procedurecode === "t1proc13sub18") {
                                                                            headTag = "proheading13";
                                                                            }
                                                                            else if (procedurecode === "t1proc13sub19") {
                                                                            headTag = "proheading13";
                                                                            }
                                                                            else if (procedurecode === "t1proc13sub110") {
                                                                            headTag = "proheading13";
                                                                            }
                                                                            else if (procedurecode === "t1proc13sub111") {
                                                                            headTag = "proheading13";
                                                                            }
                                                                            else if (procedurecode === "t1proc13sub112") {
                                                                            headTag = "proheading13";
                                                                            }
                                                                            else if (procedurecode === "t1proc13sub21") {
                                                                            headTag = "proheading13";
                                                                            }
                                                                            else if (procedurecode === "t1proc13sub22") {
                                                                            headTag = "proheading13";
                                                                            }
                                                                            else if (procedurecode === "t1proc13sub23") {
                                                                            headTag = "proheading13";
                                                                            }
                                                                            else if (procedurecode === "t1proc13sub24") {
                                                                            headTag = "proheading13";
                                                                            }
                                                                            else if (procedurecode === "t1proc13sub25") {
                                                                            headTag = "proheading13";
                                                                            }
                                                                            else if (procedurecode === "t1proc13sub26") {
                                                                            headTag = "proheading13";
                                                                            }
                                                                            else if (procedurecode === "t1proc13sub27") {
                                                                            headTag = "proheading13";
                                                                            }
                                                                            else if (procedurecode === "t1proc13sub28") {
                                                                            headTag = "proheading13";
                                                                            }
                                                                            else if (procedurecode === "t1proc13sub31") {
                                                                            headTag = "proheading13";
                                                                            }
                                                                            else if (procedurecode === "t1proc13sub32") {
                                                                            headTag = "proheading13";
                                                                            }
                                                                            else if (procedurecode === "t1proc13sub33") {
                                                                            headTag = "proheading13";
                                                                            }
                                                                            else if (procedurecode === "t1proc13sub34") {
                                                                            headTag = "proheading13";
                                                                            }
                                                                            //======================= Tissue Graft ===============================


                                                                            else if (procedurecode === "t1proc14sub11") {
                                                                            headTag = "proheading14";
                                                                            }
                                                                            else if (procedurecode === "t1proc14sub12") {
                                                                            headTag = "proheading14";
                                                                            }
                                                                            else if (procedurecode === "t1proc14sub13") {
                                                                            headTag = "proheading14";
                                                                            }
                                                                            else if (procedurecode === "t1proc14sub14") {
                                                                            headTag = "proheading14";
                                                                            }
                                                                            else if (procedurecode === "t1proc14sub15") {
                                                                            headTag = "proheading14";
                                                                            }
                                                                            else if (procedurecode === "t1proc14sub16") {
                                                                            headTag = "proheading14";
                                                                            }
                                                                            else if (procedurecode === "t1proc14sub17") {
                                                                            headTag = "proheading14";
                                                                            }
                                                                            else if (procedurecode === "t1proc14sub18") {
                                                                            headTag = "proheading14";
                                                                            }
                                                                            else if (procedurecode === "t1proc14sub19") {
                                                                            headTag = "proheading14";
                                                                            }
                                                                            else if (procedurecode === "t1proc14sub110") {
                                                                            headTag = "proheading14";
                                                                            }
                                                                            else if (procedurecode === "t1proc14sub111") {
                                                                            headTag = "proheading14";
                                                                            }
                                                                            else if (procedurecode === "t1proc14sub112") {
                                                                            headTag = "proheading14";
                                                                            }
                                                                            else if (procedurecode === "t1proc14sub113") {
                                                                            headTag = "proheading14";
                                                                            }
                                                                            else if (procedurecode === "t1proc14sub114") {
                                                                            headTag = "proheading14";
                                                                            }
                                                                            else if (procedurecode === "t1proc14sub115") {
                                                                            headTag = "proheading14";
                                                                            }
                                                                            else if (procedurecode === "t1proc14sub116") {
                                                                            headTag = "proheading14";
                                                                            }
                                                                            else if (procedurecode === "t1proc14sub117") {
                                                                            headTag = "proheading14";
                                                                            }
                                                                            else if (procedurecode === "t1proc14sub118") {
                                                                            headTag = "proheading14";
                                                                            }
                                                                            else if (procedurecode === "t1proc14sub119") {
                                                                            headTag = "proheading14";
                                                                            }
                                                                            else if (procedurecode === "t1proc14sub120") {
                                                                            headTag = "proheading14";
                                                                            }
                                                                            else if (procedurecode === "t1proc14sub21") {
                                                                            headTag = "proheading14";
                                                                            }
                                                                            else if (procedurecode === "t1proc14sub22") {
                                                                            headTag = "proheading14";
                                                                            }
                                                                            else if (procedurecode === "t1proc14sub23") {
                                                                            headTag = "proheading14";
                                                                            }
                                                                            else if (procedurecode === "t1proc14sub24") {
                                                                            headTag = "proheading14";
                                                                            }
                                                                            else if (procedurecode === "t1proc14sub25") {
                                                                            headTag = "proheading14";
                                                                            }
                                                                            else if (procedurecode === "t1proc14sub26") {
                                                                            headTag = "proheading14";
                                                                            }
                                                                            else if (procedurecode === "t1proc14sub27") {
                                                                            headTag = "proheading14";
                                                                            }
                                                                            else if (procedurecode === "t1proc14sub28") {
                                                                            headTag = "proheading14";
                                                                            }
                                                                            else if (procedurecode === "t1proc14sub31") {
                                                                            headTag = "proheading14";
                                                                            }
                                                                            else if (procedurecode === "t1proc14sub32") {
                                                                            headTag = "proheading14";
                                                                            }
                                                                            else if (procedurecode === "t1proc14sub33") {
                                                                            headTag = "proheading14";
                                                                            }
                                                                            else if (procedurecode === "t1proc14sub34") {
                                                                            headTag = "proheading14";
                                                                            }
                                                                            else if (procedurecode === "t1proc14sub35") {
                                                                            headTag = "proheading14";
                                                                            }
                                                                            else if (procedurecode === "t1proc14sub36") {
                                                                            headTag = "proheading14";
                                                                            }
                                                                            else if (procedurecode === "t1proc14sub37") {
                                                                            headTag = "proheading14";
                                                                            }
                                                                            else if (procedurecode === "t1proc14sub38") {
                                                                            headTag = "proheading14";
                                                                            }
                                                                            else if (procedurecode === "t1proc14sub41") {
                                                                            headTag = "proheading14";
                                                                            }
                                                                            else if (procedurecode === "t1proc14sub42") {
                                                                            headTag = "proheading14";
                                                                            }
                                                                            else if (procedurecode === "t1proc14sub43") {
                                                                            headTag = "proheading14";
                                                                            }
                                                                            else if (procedurecode === "t1proc14sub44") {
                                                                            headTag = "proheading14";
                                                                            }
                                                                            else if (procedurecode === "t1proc14sub51") {
                                                                            headTag = "proheading14";
                                                                            }
                                                                            else if (procedurecode === "t1proc14sub56") {
                                                                            headTag = "proheading14";
                                                                            }
                                                                            else if (procedurecode === "t1proc14sub57") {
                                                                            headTag = "proheading14";
                                                                            }
                                                                            else if (procedurecode === "t1proc14sub58") {
                                                                            headTag = "proheading14";
                                                                            }
                                                                            //========= Vestibuloplasty =========================

                                                                            else if (procedurecode === "t1proc19sub11") {
                                                                            headTag = "proheading19";
                                                                            }
                                                                            else if (procedurecode === "t1proc19sub12") {
                                                                            headTag = "proheading19";
                                                                            }
                                                                            else if (procedurecode === "t1proc19sub13") {
                                                                            headTag = "proheading19";
                                                                            }
                                                                            else if (procedurecode === "t1proc19sub14") {
                                                                            headTag = "proheading19";
                                                                            }
                                                                            else if (procedurecode === "t1proc19sub15") {
                                                                            headTag = "proheading19";
                                                                            }
                                                                            //========== Stem cell / Bone harvest ==================

                                                                            else if (procedurecode === "t1proc16sub11") {
                                                                            headTag = "proheading16";
                                                                            }
                                                                            else if (procedurecode === "t1proc16sub12") {
                                                                            headTag = "proheading16";
                                                                            }
                                                                            else if (procedurecode === "t1proc16sub13") {
                                                                            headTag = "proheading16";
                                                                            }
                                                                            else if (procedurecode === "t1proc16sub14") {
                                                                            headTag = "proheading16";
                                                                            }
                                                                            else if (procedurecode === "t1proc16sub15") {
                                                                            headTag = "proheading16";
                                                                            }
                                                                            else if (procedurecode === "t1proc16sub16") {
                                                                            headTag = "proheading16";
                                                                            }
                                                                            else if (procedurecode === "t1proc16sub17") {
                                                                            headTag = "proheading16";
                                                                            }
                                                                            else if (procedurecode === "t1proc16sub18") {
                                                                            headTag = "proheading16";
                                                                            }
                                                                            else if (procedurecode === "t1proc16sub21") {
                                                                            headTag = "proheading16";
                                                                            }
                                                                            else if (procedurecode === "t1proc16sub22") {
                                                                            headTag = "proheading16";
                                                                            }
                                                                            else if (procedurecode === "t1proc16sub23") {
                                                                            headTag = "proheading16";
                                                                            }
                                                                            else if (procedurecode === "t1proc16sub24") {
                                                                            headTag = "proheading16";
                                                                            }
                                                                            else if (procedurecode === "t1proc16sub25") {
                                                                            headTag = "proheading16";
                                                                            }
                                                                            else if (procedurecode === "t1proc16sub31") {
                                                                            headTag = "proheading16";
                                                                            }
                                                                            else if (procedurecode === "t1proc16sub32") {
                                                                            headTag = "proheading16";
                                                                            }
                                                                            else if (procedurecode === "t1proc16sub41") {
                                                                            headTag = "proheading16";
                                                                            }
                                                                            else if (procedurecode === "t1proc16sub42") {
                                                                            headTag = "proheading16";
                                                                            }
                                                                            // ====== 18 Suture ======


                                                                            else if (procedurecode === "t1proc18sub11") {
                                                                            headTag = "proheading18";
                                                                            }
                                                                            else if (procedurecode === "t1proc18sub12") {
                                                                            headTag = "proheading18";
                                                                            }
                                                                            else if (procedurecode === "t1proc18sub13") {
                                                                            headTag = "proheading18";
                                                                            }
                                                                            else if (procedurecode === "t1proc18sub14") {
                                                                            headTag = "proheading18";
                                                                            }
                                                                            else if (procedurecode === "t1proc18sub21") {
                                                                            headTag = "proheading18";
                                                                            }
                                                                            else if (procedurecode === "t1proc18sub22") {
                                                                            headTag = "proheading18";
                                                                            }
                                                                            else {
                                                                            return;
                                                                            }


                                                                            if (headTag !== "") {
                                                                            // alert(procedurecode);
                                                                            updateStatus(headTag, checkedcount);
                                                                            }


                                                                            });
                                                                            $(document).on("click", "#eligibilitytable a.deletePe", function () {
                                                                            if (confirm("Are you sure you want to delete this record?")) {
                                                                            let tr = $(this).closest('tr');
                                                                            let peid = tr.find('td:eq(1)').text();
                                                                            //  alert(ebid);
                                                                            //  alert(tr.find('td:eq(8)').find('#deleteDocument').html());

                                                                            $.ajax({
                                                                            url: "deletePreestimate",
                                                                                    type: "get", //send it through get method
                                                                                    data: {
                                                                                    pe_id: $.trim(peid)
                                                                                    },
                                                                                    success: function (response) {
                                                                                    if (response.length > 0)
                                                                                    {
                                                                                    console.log(response);
                                                                                    msgbox("Pre-Estimate Deleted", "Pre-Estimate Portal", "success");
                                                                                    // table.ajax.url("preestimatelist").load();
                                                                                    start = start.format('YYYY-MM-DD');
                                                                                    end = end.format('YYYY-MM-DD');
                                                                                    if (searchOption === '1')
                                                                                    {
                                                                                    table.ajax.url("preestimatesearchlist?para=pm.first_name&para1=0&paraVal=" + $('#para_Firstname').val()).load();
                                                                                    } else if (searchOption === '2')
                                                                                    {
                                                                                    table.ajax.url("preestimatesearchlist?para=pm.last_name&para1=0&paraVal=" + $('#para_Lastname').val()).load();
                                                                                    } else if (searchOption === '3')
                                                                                    {
                                                                                    table.ajax.url("preestimatesearchlist?para=pm.dob&para1=0&paraVal=" + convertMDYtoYMD($('#para_Dob').val())).load();
                                                                                    } else if (searchOption === '5')
                                                                                    {
                                                                                    table.ajax.url("preestimatesearchlist?para=prm.practice_id&para1=0&paraVal=" + $('#ddlSearchPractice').val()).load();
                                                                                    } else if (searchOption === '6')
                                                                                    {
                                                                                    table.ajax.url("preestimatesearchlist?para=ped.primary_insurance&para1=ped.sec_insurance&paraVal=" + $('#payorid').val()).load();
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                    table.ajax.url("preestimatelist?startDate=" + start + "&endDate=" + end).load();
                                                                                    }
                                                                                    }
                                                                                    },
                                                                                    error: function (err) {
                                                                                    console.log(err);
                                                                                    msgbox(err, "Pre-Estimate Portal", "error");
                                                                                    }
                                                                            });
                                                                            }
                                                                            });
                                                                            $(document).on("click", "#eligibilitytable a.recoverPe", function () {
                                                                            let tr = $(this).closest('tr');
                                                                            let peid = tr.find('td:eq(1)').text();
                                                                            //  alert(ebid);
                                                                            //  alert(tr.find('td:eq(8)').find('#recoverDocument').html());
                                                                            $.ajax({
                                                                            url: "recoverPreestimate",
                                                                                    type: "get", //send it through get method
                                                                                    data: {
                                                                                    pe_id: $.trim(peid)
                                                                                    },
                                                                                    success: function (response) {
                                                                                    if (response.length > 0)
                                                                                    {
                                                                                    console.log(response);
                                                                                    msgbox("Pre-Estimate Recovered", "Pre-Estimate Portal", "success");
                                                                                    // table.ajax.url("preestimatelist").load();
                                                                                    start = start.format('YYYY-MM-DD');
                                                                                    end = end.format('YYYY-MM-DD');
                                                                                    if (searchOption === '1')
                                                                                    {
                                                                                    table.ajax.url("preestimatesearchlist?para=pm.first_name&para1=0&paraVal=" + $('#para_Firstname').val()).load();
                                                                                    } else if (searchOption === '2')
                                                                                    {
                                                                                    table.ajax.url("preestimatesearchlist?para=pm.last_name&para1=0&paraVal=" + $('#para_Lastname').val()).load();
                                                                                    } else if (searchOption === '3')
                                                                                    {
                                                                                    table.ajax.url("preestimatesearchlist?para=pm.dob&para1=0&paraVal=" + convertMDYtoYMD($('#para_Dob').val())).load();
                                                                                    } else if (searchOption === '5')
                                                                                    {
                                                                                    table.ajax.url("preestimatesearchlist?para=prm.practice_id&para1=0&paraVal=" + $('#ddlSearchPractice').val()).load();
                                                                                    } else if (searchOption === '6')
                                                                                    {
                                                                                    table.ajax.url("preestimatesearchlist?para=ped.primary_insurance&para1=ped.sec_insurance&paraVal=" + $('#payorid').val()).load();
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                    table.ajax.url("preestimatelist?startDate=" + start + "&endDate=" + end).load();
                                                                                    }

                                                                                    }
                                                                                    },
                                                                                    error: function (err) {
                                                                                    console.log(err);
                                                                                    msgbox(err, "Pre-Estimate Portal", "error");
                                                                                    }
                                                                            });
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
                                                                            $('#headercheck').prop('checked', false);
                                                                            var LoginUsername = '<%= session.getAttribute("LoginUsername")%>';
                                                                            $('#raiseduser').text(LoginUsername);
                                                                            $(".overlay").click(function () {
                                                                            $(".q-view").removeClass("active");
                                                                            });
                                                                            var not_tid = GetParameterValues('tid');
                                                                            $('#flading').show();
                                                                            if (typeof (not_tid) !== 'undefined')
                                                                            {
                                                                            var table = $('#eligibilitytable').DataTable();
                                                                            table.column(1).search(not_tid).draw();
                                                                            }




                                                                            $('#eligibilitytable tbody').on('change', 'input[type="checkbox"]', function () {

                                                                            // var table = $('#eligibilitytable').DataTable();
                                                                            total = table.column(3, {
                                                                            page: 'current'
                                                                            }).data().count();
                                                                            //alert(count);
                                                                            var isSelected = $(this).is(':checked');
                                                                            if (isSelected) {
                                                                            //  alert('click');
                                                                            $('#modal-1').modal('hide');
                                                                            $('.md-overlay').css("visibility", "hidden");
                                                                            //  $('#raiseticket').show();
                                                                            checked++;
                                                                            } else
                                                                            {
                                                                            $('#modal-1').modal('hide');
                                                                            $('.md-overlay').css("visibility", "hidden");
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
                                                                            //$('#btnnot').click(); 
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

                                                                            // var table = $('#eligibilitytable').DataTable();
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
                                                                            // $('#btnnot').click();

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

                                                                            $('#ticket_type_id').val("18");
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
                                                                            msgbox("Select atleast one Pre-Estimate(s).", "Ticket Portal", "warning");
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
                                                                                    type_of_ticket: "18",
                                                                                            descriptions: $(".note-editable").html(),
                                                                                            ticket_status: ticketstatus,
                                                                                            assigned_to: $("select#assigned_to").val(),
                                                                                            attachmentfile: fns,
                                                                                            attachmentfilesize: sizetext,
                                                                                            ticket_source: ticketsource,
                                                                                            ticket_priority: $("select#ticket_priority_id").val(),
                                                                                            segment: "U",
                                                                                            currentdt: today,
                                                                                            request_id: brid
                                                                                    },
                                                                                    success: function (response) {
                                                                                    console.log(response);
                                                                                    $("select#ticket_type_id").val('18');
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
                                                                            var strcontent = "Hi " + assignto + ", <br><br>" + "Type: " + tickettype + "<br>Source: " + tsource + "<br>Priority: " + ticketpriority + "<br> Assign To: " + assignto + "<br>Segment: PRE-ESTIMATE RELATED [R]" + "<br><br>" + $(".note-editable").html();
                                                                            // Email Config
                                                                            $.post('eMail', {
                                                                            recipient: entity_user_to,
                                                                                    subject: 'Ticket Raised from Pre-Estimate Form: ' + tickettype + ' : ' + tstatus + ' to ' + assignto,
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

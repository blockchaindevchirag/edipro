<%-- 
    Document   : ediebill
    Created on : 2 Mar, 2022, 5:32:23 PM
    Author     : suresh
--%>

<%@page contentType="text/html"  pageEncoding="UTF-8" autoFlush="true"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@taglib prefix="spring"  uri="http://www.springframework.org/tags"  %>
<html lang="en">

    <head>
        <title>E Super Bill</title>
        <style>
            a:hover {
                color: #ffffff !important;
                outline: none;
                text-decoration: none;
            }

            .loader{
                position: fixed;
                left: 0px;
                top: 0px;
                width: 100%;
                height: 100%;
                z-index: 9999;
                background: url("data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='40' height='40' viewBox='0 0 50 50'%3E%3Cpath d='M28.43 6.378C18.27 4.586 8.58 11.37 6.788 21.533c-1.791 10.161 4.994 19.851 15.155 21.643l.707-4.006C14.7 37.768 9.392 30.189 10.794 22.24c1.401-7.95 8.981-13.258 16.93-11.856l.707-4.006z'%3E%3CanimateTransform attributeType='xml' attributeName='transform' type='rotate' from='0 25 25' to='360 25 25' dur='0.6s' repeatCount='indefinite'/%3E%3C/path%3E%3C/svg%3E") center / 50px no-repeat;
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
            #viewTraySheetModal{
                overflow-y:scroll;
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
            canvas{
                border:1px dashed;
            }
            .select2-container--default.select2-container--focus .select2-selection--multiple {
                border: solid #ced4da 2px!important;
                outline: 0;
            }
            .select2-container--default .select2-selection--multiple {
                background-color: white;
                border: 2px solid #ced4da;
                border-radius: 0.375rem;
                cursor: text;
            }
            .select{
                -webkit-appearance: none;
                -moz-appearance: none;
                text-indent: 4.5px;
                text-overflow: '';
                border:1px solid #28a745;
                padding:0;
                margin-left:2px!important;
                width:16px;
                height:16px;               
                border-radius:4px;
                font-size:11px;
                outline:none;
            }
            select option{
                background-color:#fff;
                color:#000;
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



                                        <div style="" id="new_bill"   class="card">
                                            <div class="card-body">
                                            <form:form  id="design-1-form" class="form-1 needs-validation"  method="POST" action="updateEbill" name="ebillform" modelAttribute="ebill">
                                                <h3 class="wiz-items">
                                                    <span class="num-icon">1</span><span style="color:#000000">
                                                        Visit Information
                                                    </span>
                                                </h3>

                                                <input type="hidden" name="procedurecount" id="procedure_count" value="0">
                                                <input type="hidden" name="diagonisiscount" id="diagnosis_count" value="0">
                                                <input type="hidden" name="ebillid" id="ebillid" value="${id}">
                                                <input type="hidden" name="eflag" id="eflag" value="${flag}">
                                                <input type="hidden" name="createDate" id="createDate" value="${createDate}">
                                                <input type="hidden" name="createdBy" id="createdBy" value="${createdBy}">

                                                <input type="hidden" name="billstatus" id="billstatus" value="WAITING FOR APPROVAL">
                                                <input type="hidden" name="procedurecodes" id="procedurecodes" >

                                                <section>                                                       
                                                    <div class="row">
                                                        <div class="col-sm">														
                                                            <div class="form-group row">
                                                                <label class="col-sm-3 col-form-label font-style-label"  for="ddlpractice">Practice <span class="text-danger">*</span></label>
                                                                <div class="col-sm-9">
                                                                    <select class="form-control js-example-placeholder-multiple col-sm-12" required data-placeholder="Select Practice" id="ddlpractice" tabindex="1" name="ddlpractice">
                                                                    </select>
                                                                </div>
                                                            </div>
                                                            <div class="form-group row">
                                                                <label class="col-sm-3 col-form-label font-style-label" for="ddlpatient">Patient <span class="text-danger">*</span></label>
                                                                <div class="col-sm-9">
                                                                    <select class="form-control js-example-placeholder-multiple col-sm-12" required data-placeholder="Select Patient" id="ddlpatient" tabindex="3"  name="ddlpatient" >
                                                                    </select>
                                                                </div>
                                                            </div>

                                                            <div class="form-group row">
                                                                <label class="col-sm-3 col-form-label font-style-label" for="ddlinsurance">Insurance </label>
                                                                <div class="col-sm-9">
                                                                    <select class="form-control js-example-placeholder-multiple col-sm-12" id="ddlinsurance" disabled="" data-placeholder="Select Insurance" tabindex="11" name="ddlinsurance" >
                                                                    </select>
                                                                    <input type="hidden" id="insuranceName" name="insuranceName">
                                                                    <input type="hidden" id="payorId" name="payorId"/>
                                                                </div>                                                                    
                                                            </div>

                                                            <div  class="form-group row">
                                                                <label for="b-t-name" class="col-sm-3 col-form-label font-style-label">Date of Birth</label>
                                                                <div class="col-sm-9">
                                                                    <input type="text" class="form-control" readonly  name="dob" tabindex="4" id="dob"  placeholder="dob">                                                      
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
                                                                    <input type="text" class="form-control"  name="visit" tabindex="4" id="visit"  placeholder="Visit">                                                      
                                                                </div>
                                                            </div>

                                                            <div class="form-group row">
                                                                <label for="b-t-name" class="col-sm-3 col-form-label font-style-label">Procedure Template <span class="text-danger">*</span></label>
                                                                <div class="col-sm-9">                                                                        
                                                                    <select class="form-control" required id="proceduretemplate_" disabled onchange="changeTemplate(this.value)" tabindex="1" name="procedureTemplate_">
                                                                        <option value="">Please Select Template</option>
                                                                        <option value="temp1" selected>OMS Template</option>
                                                                        <option value="temp2" >Radiology Template</option>
                                                                    </select>  
                                                                    <input type="hidden" name="procedureTemplate" value="temp1"/>                                                    
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-sm">
                                                            <div class="form-group row">
                                                                <label for="b-t-name" class="col-sm-3 col-form-label font-style-label">Treating Surgeon <span class="text-danger">*</span></label>
                                                                <div class="col-sm-9">
                                                                    <select class="form-control js-example-placeholder-multiple col-sm-12" required id="ddlprovider" data-placeholder="Select Treating Surgeon" tabindex="2"  name="ddlprovider">
                                                                    </select>
                                                                    <input type="hidden"id="providerName" name="providerName"/>
                                                                </div>
                                                            </div>	

                                                            <div class="form-group row">
                                                                <label for="b-t-name" class="col-sm-3 col-form-label font-style-label">Date of Service <span class="text-danger">*</span></label>
                                                                <div class="col-sm-9">

                                                                    <input type="text" class="form-control"  required name="dateofservice" id="dateofservice">

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


                                                            <div class="form-group row">
                                                                <label for="b-t-name" class="col-sm-3 col-form-label font-style-label">Pathologist</label>
                                                                <div class="col-sm-5">
                                                                    <input type="text" class="form-control"  name="pathologist" tabindex="4" id="pathgtsvisit"  placeholder="">                                                      
                                                                </div>
                                                                <div class="col-sm-4">
                                                                    <input type="text" class="form-control" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');"  name="pathologistnpi" tabindex="4" id="pathgtsnpi"  placeholder="NPI">                                                      
                                                                </div>
                                                            </div>

                                                            <div  class="form-group row">
                                                                <label for="b-t-name" class="col-sm-3 col-form-label font-style-label">Visit Reason <span class="text-danger">*</span></label>
                                                                <div class="col-sm-9">
                                                                    <select class="form-control js-example-placeholder-multiple col-sm-12" required name="visit_reason"  id="visit_reason" data-placeholder="Select Visit Reason" >
                                                                        <option value = "" >--Select--</option>
                                                                        <c:forEach var="visitreason" items="${visitreason}">
                                                                            <option value = ${visitreason.visit_id} >${visitreason.visit_reason}</option>
                                                                        </c:forEach>
                                                                    </select>                                           
                                                                </div>                                                              
                                                            </div>

                                                            <input type="hidden" class="form-control"  name="visit_desc" id="visit_desc"  placeholder="">  

                                                            <div  class="form-group row">       
                                                                <label for="b-t-name" class="col-sm-3 col-form-label font-style-label"></label>
                                                                <div class="col-sm-9">
                                                                    <textarea  rows="3" cols="90" maxlength="30" class="form-control" name="visit_others" style="white-space: pre-wrap;" id ="visit_others"  title="visit_others"   placeholder="Others"></textarea>
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

                                                                            <div  id="maxillaview" class="form-group row">
                                                                                <label class="col-sm-4 col-form-label font-style-label">Maxilla</label>
                                                                                <div class="col-sm-8">
                                                                                    <div  id="headrevtemp1trmax">                                                                                   
                                                                                    </div> </div>
                                                                            </div> 

                                                                            <div   id="mandibleview" class="form-group row">
                                                                                <label class="col-sm-4 col-form-label font-style-label" >Mandible</label>
                                                                                <div class="col-sm-8">
                                                                                    <div  id="headrevtemp1trman">
                                                                                    </div></div>
                                                                            </div> 

                                                                            <div   id="archview" class="form-group row">
                                                                                <label class="col-sm-4 col-form-label font-style-label" >Arch </label>
                                                                                <div class="col-sm-8">
                                                                                    <div  id="headrevtemp1trarch">
                                                                                    </div> </div>
                                                                            </div> 

                                                                            <div id="visit_reason_view" class="form-group row">
                                                                                <label class="col-sm-4 col-form-label font-style-label" >Visit Reason</label>
                                                                                <div class="col-sm-8">
                                                                                    <label class="col-form-label "  id="visitreason"></label>
                                                                                </div>
                                                                            </div>

                                                                            <div id="visit_others_view" class="form-group row">
                                                                                <label class="col-sm-4 col-form-label font-style-label" ></label>
                                                                                <div class="col-sm-8">
                                                                                    <label class="col-form-label "  id="visitother"></label>
                                                                                </div>
                                                                            </div>


                                                                        </div> 
                                                                        <div class="col-sm" >   
                                                                            <div class="form-group row">
                                                                                <label class="col-sm-4 col-form-label font-style-label" >Treating Surgeon:</label>
                                                                                <div class="col-sm-8">
                                                                                    <label class="col-form-label"  id="treating_surgeon"></label>
                                                                                </div>
                                                                            </div>
                                                                            <div class="form-group row">
                                                                                <label class="col-sm-4 col-form-label font-style-label"  for="ddlpractice">Practice</label>
                                                                                <div class="col-sm-8">
                                                                                    <label class=" col-form-label "  id="practice"></label>
                                                                                </div>
                                                                            </div> 
                                                                            <div class="form-group row">
                                                                                <label class="col-sm-4 col-form-label font-style-label"  for="ddlpractice">Payor ID:</label>
                                                                                <div class="col-sm-8">
                                                                                    <label class="col-form-label "  id="prid"></label>
                                                                                </div>
                                                                            </div> 
                                                                            <div class="form-group row">
                                                                                <label class="col-sm-4 col-form-label font-style-label"  for="ddlpractice">Member ID:</label>
                                                                                <div class="col-sm-8">
                                                                                    <label class="col-form-label "  id="memid"></label>
                                                                                </div>
                                                                            </div> 
                                                                            <div class="form-group row">
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

                                                    <jsp:include page="reviewproc1.jsp"></jsp:include> 
                                                        <!--                                                      <div class="col-md-12">
                                                                                                                    <div class="card statustic-card">
                                                                                                                        <div id="filesection" class="col-lg-12" style="padding:0;" >
                                                                                                                            <div style="padding: 10px 15px;" class="card-header bg-success border-0 ">
                                                                                                                                <h5 class="text-white m-b-0">Files</h5>
                                                                                                                            </div>
                                                                                                                            <div class="card-body">
                                                                                                                                <div> Surgical Tray Sheet Files: 
                                                                                                                                    <span id="filedata">
                                                                                                                                        </span>
                                                                                                                                </div>
                                                                                                                                  </div>
                                                                                                                    </div>
                                                                                                                </div> -->


                                                        <div class="col-md-12" >
                                                            <div class="card statustic-card">
                                                                <div id="filesection" class="col-lg-12" style="padding:0;" >
                                                                    <div style="padding: 10px 15px;" class="card-header bg-success border-0 ">
                                                                        <h5 class="text-white m-b-0">Files</h5>
                                                                    </div>

                                                                    <div class="card-body">
                                                                        Surgical Tray Sheet Files:
                                                                      <span style="font-weight:bold" id="filedata">
                                                                        <c:set value="${filedata.filePath}" var="fileName"/>

                                                                        <c:if test = "${not empty fileName}"  >
                                                                            <span id="span_${filedata.surgicalTrayId}" style="font-weight:bold;"> 

                                                                                <a href="download_surgicaltraysheet_pdf?filePath=${filedata.filePath}" target="_blank"> ${filedata.filePath}</a></span>
                                                                            </c:if>
                                                                        <c:if test="${empty fileName}">
                                                                            <span style="font-weight:bold;"> File Not Available.</span>
                                                                        </c:if>

                                                                     </span>

                                                                </div>
                                                            </div>
                                                        </div> 


                                                    </div>

                                                </section>
                                                <input type="hidden" name="disganosiscode" id="disganosiscode">
                                                <input type="hidden" name="disganosiscodecount" id="disganosiscodecount">
                                                <input type="hidden" name="result" id="result">
                                                <input type="hidden" name="resultcode" value="" id="resultcodev">
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

        <div class="modal fade bd-example-modal-xl" id="viewTraySheetModal" tabindex="-1" role="dialog" aria-labelledby="viewDiagnosisModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-xl" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="viewTraySheetModalLabel">Surgical TraySheet</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="container">
                        <div class="modal-body" id="traySheetSection">
                            <jsp:include page="traysheet.jsp" />
                        </div>
                    </div>
                </div>.
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

        <div id="flading" class="loader">

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
                                                                        $(document).ready(function () {

                                                                            $('#visit_others').hide();
                                                                            var retnvl = '';

                                                                            function submitBill() {
                                                                                $('#resultcodev').val('');
                                                                                var providerval = '';
                                                                                var selected = [];
                                                                                var diaselected = [];
                                                                                $('#ddlpractice').removeAttr('disabled');
                                                                                $('#ddlpatient').removeAttr('disabled');

                                                                                $('input[type=checkbox]').each(function () {
                                                                                    if (this.checked) {
                                                                                        var idname = $(this).attr('id');
                                                                                        if (idname.indexOf("t1proc") > -1) {
                                                                                            selected.push(idname);
                                                                                        }

                                                                                        if (idname.indexOf("temp1tr") > -1) {
                                                                                            selected.push(idname);
                                                                                        }

                                                                                        if (idname.indexOf("iag") > -1) {
                                                                                            diaselected.push(idname);
                                                                                        }
                                                                                    }

                                                                                });
                                                                                $('.select').each(function() {  
                                                                                    var value = $(this).val();
                                                                                        if(value!=0)                                                                                       
                                                                                            selected.push(value);
                                                                                  });


                                                                                // alert(selected);
                                                                                // alert(diaselected);
                                                                                $('#procedurecodes').val(selected);
                                                                                $('#disganosiscode').val(diaselected);


                                                                                $('#result').val($('#procedurecode_result').html());
                                                                                $('#resultcodev').val($('#procedurecodev_result').html());

                                                                                var practiceMailID = '';


                                                                                $.ajax({
                                                                                    url: "userEmailId",
                                                                                    type: "get", //send it through get method
                                                                                    data: {
                                                                                        userId: $('#createdBy').val()
                                                                                    },
                                                                                    success: function (response) {
                                                                                        // console.log(response);
                                                                                        // console.log(response.length);
                                                                                        var txt = response;
                                                                                        var obj = jQuery.parseJSON(txt);
                                                                                        if (obj.length > 0){
                                                                                            $.each(obj, function (index, value) {
                                                                                                practiceMailID = obj[index].username;
                                                                                              //  alert(practiceMailID);
                                                                                            });
                                                                                            
                                                                                          //   alert(practiceMailID);
                                                                                           //    alert($('#notes').val());
                                                                                            if (retnvl === 'WAITING FOR APPROVAL'){
                                                                                                $.post('eMail', {
                                                                                                    recipient: practiceMailID,
                                                                                                    subject: "eSuperbill - " + $('#ebillid').val() + " ( WAITING FOR APPROVAL )",
                                                                                                    content: "Hi,  <br><br>There is a change in status of the esuperbill submitted on " + $('#createDate').val() + ". <br><br>Please review the Notes below and take appropriate action. <br><br>NOTES: " + $('#notes').val() + "<br><br>By<br>Support@healthomation.com",
                                                                                                    cc: "",
                                                                                                    bcc: "muthu@healthomation.com"

                                                                                                }, function (response) {
                                                                                                    console.log(response);
                                                                                                });
                                                                                            }

                                                                                        } else{

                                                                                        }
                                                                                    }
                                                                                });
                                                                                return true;
                                                                            }
                                                                            var flag = 0;
                                                                            function ShowConfirmDraftSign() {
                                                                                if (flag == 0)
                                                                                {
                                                                                AsyncConfirmDraftSign(
                                                                                        "Confirmation Box",
                                                                                        "Do you wish to Saved or Sign?",
                                                                                        MyDraftFunction,
                                                                                        MySignFunction
                                                                                        );
                                                                            }
                                                                                flag = 1;
                                                                            }

                                                                            function MyDraftFunction() {
                                                                                $('#billstatus').val('DRAFTED');
                                                                                retnvl = 'DRAFTED';
                                                                                var patid = $('#ddlpatient').val();
                                                                                var dos = $('#dateofservice').val();
                                                                                if (patid != 0) {
                                                                                    $('.modal-body').load("getTraySheetPatientDetails?patientid=" + patid + "&dos=" + dos, function () {
                                                                                    });
                                                                                    $('#viewTraySheetModal').modal('show');
                                                                            }
                                                                                // $("form[name='ebillform']").submit();
                                                                            }

                                                                            function MySignFunction() {
                                                                                $('#billstatus').val('SIGNED');
                                                                                retnvl = 'SIGNED';
                                                                                var patid = $('#ddlpatient').val();
                                                                                var dos = $('#dateofservice').val();
                                                                                if (patid != 0) {
                                                                                    $('.modal-body').load("getTraySheetPatientDetails?patientid=" + patid + "&dos=" + dos, function () {
                                                                                    });
                                                                                    $('#viewTraySheetModal').modal('show');
                                                                            }
                                                                                //$("form[name='ebillform']").submit();
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

                                                                            $('#visit_reason').change(function () {
                                                                                $('#visit_desc').val($('#visit_reason option:selected').text());
                                                                                if ($('#visit_reason').val() === '10')
                                                                                {
                                                                                    $('#visit_others').show();
                                                                                } else
                                                                                {
                                                                                    $('#visit_others').hide();
                                                                                }
                                                                            });
                                                                            var flag1 = 0;
                                                                            function ShowTraySheet() {
                                                                                var patid = $('#ddlpatient').val();
                                                                                var dos = $('#dateofservice').val();
                                                                                if (patid != 0) {
                                                                                    $('.modal-body').load("getTraySheetPatientDetails?patientid=" + patid + "&dos=" + dos, function () {
                                                                                    });
                                                                                    $('#viewTraySheetModal').modal('show');
                                                                                }
                                                                                flag1 = 1;
//                                                                                     $("form[name='ebillform']").submit(); 
                                                                            }



                                                                            $("form[name='ebillform']").submit(function ()
                                                                            {

        <sec:authorize access="hasAnyRole('ROLE_ENTITY_ADMIN,ROLE_ENTITY_STAFF')">
                                                                                if (flag1 == 0) {
                                                                                    ShowTraySheet();
                                                                                    return false;
                                                                                }
                                                                                $('#billstatus').val('WAITING FOR APPROVAL');
                                                                                retnvl = 'WAITING FOR APPROVAL';
                                                                                if ($('#eflag').val() === 'N')
                                                                                {
                                                                                    $.ajax({
                                                                                        url: "ebillflagupdate",
                                                                                        type: "get", //send it through get method
                                                                                        data: {
                                                                                            noty_ebill_id: $('#ebillid').val()
                                                                                        },
                                                                                        success: function (response) {
                                                                                            console.log(response);

                                                                                        },
                                                                                        error: function (err) {
                                                                                            console.log(err);

                                                                                        }
                                                                                    });
                                                                                }
                                                                                 $('#flading').show();
                                                                                return submitBill();


        </sec:authorize>


        <sec:authorize access="hasAnyRole('ROLE_PRACTICE_PROVIDER,ROLE_REFERING_PROVIDER,ROLE_CORP_PROVIDER,ROLE_GROUPCLINIC_PROVIDER')">
                                                                                if (flag == 0) {
                                                                                ShowConfirmDraftSign();
                                                                                    return false;
                                                                                }

                                                                                //  alert('Practice Provider');
                                                                                //  alert(retnvl);
                                                                                if (retnvl === '')
                                                                                {
                                                                                    return false;
                                                                                } else
                                                                                {
                                                                                     $('#flading').show();
                                                                                    return  submitBill();
                                                                                    return true;

                                                                                }
        </sec:authorize>

                                                                            });


        <sec:authorize access="hasAnyRole('ROLE_ADMIN,ROLE_USER,ROLE_CORP_PRACTICE,ROLE_CORP_PROVIDER,ROLE_GROUPCLINIC_PROVIDER,
                       ROLE_CORP_ADMIN,ROLE_CORP_STAFF,
                       ROLE_GROUPCLINIC_ADMIN,ROLE_GROUPCLINIC_STAFF,ROLE_BILLING_ADMIN,ROLE_BILLING_STAFF,
                       ROLE_PRACTICE_ADMIN,ROLE_PRACTICE_STAFF, ROLE_PRACTICE_PROVIDER,ROLE_REFERING_PROVIDER')">
                                                                            $('#procedurecode_result').show();
                                                                            $('#procedurecodev_result').hide();
        </sec:authorize>

        <sec:authorize access="hasAnyRole('ROLE_ENTITY_ADMIN,ROLE_ENTITY_STAFF')">
                                                                            $('#procedurecode_result').hide();
                                                                            $('#procedurecodev_result').show();
        </sec:authorize>

                                                                            var entity = '<%= session.getAttribute("Entityid")%>';

                                                                            $.ajax({
                                                                                url: "practicedetailswtentityid",
                                                                                type: "get", //send it through get method
                                                                                data: {
                                                                                    Entityid: entity
                                                                                },
                                                                                success: function (response) {
                                                                                    var select = $('#ddlpractice');
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
                                                                                            $('<option>').val(obj[i].practice_id).text(obj[i].name).appendTo(select);
                                                                                        }
                                                                                        //alert(entity);
                                                                                        console.log("UT:<%=session.getAttribute("UT")%>:");
                                                                                        var usertype = '<%=session.getAttribute("UT")%>';
                                                                                        var practiceid = '<%=session.getAttribute("practiceid")%>';
        <sec:authorize access="hasAnyRole('ROLE_PRACTICE_ADMIN')">
                                                                                        console.log("Practice: " + practiceid);
                                                                                        $('#ddlpractice').val(practiceid);
                                                                                        $('#ddlpractice').attr('disabled', "true");
        </sec:authorize>

        <c:forEach var="ebill" items="${ebilldetail}">
                                                                                        $('#ddlpractice').val(${ebill.practiceid});
                                                                                        $('#dateofservice').val('${ebill.dateofbenefit}');
                                                                                        $('#refdocvisit').val('${ebill.refdoc}');
                                                                                        $('#refdocnpi').val('${ebill.refdocnpi}');
                                                                                        $('#radiogtsvisit').val('${ebill.radiologist}');
                                                                                        $('#radiogtsnpi').val('${ebill.radiologistnpi}');
                                                                                        $('#pathgtsvisit').val('${ebill.pathologist}');
                                                                                        $('#pathgtsnpi').val('${ebill.pathologistnpi}');
                                                                                        if ('${ebill.implatjo}' !== ",") {
                                                                                            $('#implatjo').val('${ebill.implatjo}');
                                                                                        }
                                                                                        if ('${ebill.surgicaljo}' !== ",") {
                                                                                            $('#surgicaljo').val('${ebill.surgicaljo}');
                                                                                        }
                                                                                        if ('${ebill.implatsurjo}' !== ",") {
                                                                                            $('#implatsurjo').val('${ebill.implatsurjo}');
                                                                                        }

                                                                                        var notesVal = '<c:out value="${ebill.notes}" escapeXml="true" />';

                                                                                        $('#notes').html(notesVal);
                                                                                        providerval = ${ebill.providerid};
                                                                                        $("#ddlpractice").trigger("change");
                                                                                        $('#ddlpractice').attr('disabled', "true");

                                                                                        $('#visit_reason').val('${ebill.visit_reason}');
                                                                                        $("#visit_reason").trigger("change");
                                                                                        $('#visit_others').val('${ebill.visit_others}');

                                                                                        //alert(${ebill.dateofbenefit});
        </c:forEach>

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

                                                                                    if (index == 1) {
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
                                                                                    if (index == 2) {
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

                                                                            $('#eligibilitytable').DataTable({
                                                                                "aaSorting": [[0, "desc"]], // Sort by first column descending
                                                                                "lengthMenu": [15, 40, 80, 200, 500],
                                                                                "iDisplayLength": 40,
                                                                                // "ajax": "eligibilitydata",
                                                                                //"processing": true,
                                                                                "columnDefs": [{
                                                                                        "targets": '_all',
                                                                                        "createdCell": function (td, cellData, rowData, row, col) {

                                                                                        }
                                                                                    }],
                                                                                drawCallback: function (settings, json) {

                                                                                    $('[data-toggle="tooltip"]').tooltip('update');
                                                                                    //$("#list-of-product tbody tr > td").tooltip('hide');
                                                                                },
                                                                                "ajax": {
                                                                                    "type": "GET",
                                                                                    "url": 'ebilldata',
                                                                                    "contentType": 'application/json'
                                                                                },
                                                                                "columns": [

                                                                                    {"data": function (data) {
                                                                                            return '<input type="checkbox" class = "check">';
                                                                                        }, "orderable": false, "searchable": false, "name": "check"},

                                                                                    {"data": function (data) {
                                                                                            return " " + data.requestid;
                                                                                        }, "orderable": true, "searchable": true, "name": "requestid"},

                                                                                    {"data": function (data) {
                                                                                            return " " + data.ddlpractice;
                                                                                        }, "orderable": true, "searchable": true, "name": "requestid"},
                                                                                    {"data": function (data) {
                                                                                            return " " + data.ddlinsurance;
                                                                                        }, "orderable": true, "searchable": true, "name": "requestid"},
                                                                                    {"data": function (data) {
                                                                                            return data.fname + " " + data.lname;

                                                                                        }, "orderable": true, "searchable": true, "name": "dateofbenefit"},
                                                                                    {"data": function (data) {
                                                                                            return " " + data.dateofbenefit;
                                                                                        }, "orderable": true, "searchable": true, "name": "patient"},
                                                                                    {"data": function (data) {
                                                                                            return " " + data.dob;
                                                                                        }, "orderable": true, "searchable": true, "name": "practicename"},
                                                                                    {"data": function (data) {
                                                                                            return "<a title='Review Codes' href='viewbill?id=" + data.requestid + "&notes=" + data.notes + "'><i class='mdi mdi-book-open'></i></a>  \n\
                                <a title='Review' href='detailebill?id=" + data.requestid + "&notes=" + data.notes + "'><i class='mdi mdi-book-open-variant'></i></a>" +
                                                                                                    ' <a title="Edit" href="editebill?id=' + data.requestid + '"><i t class="mdi mdi-border-color"></i></a> ';
                                                                                        }, "orderable": true, "searchable": true, "name": "payor"}
                                                                                ],

                                                                                "fnRowCallback": function (nRow, aData, iDisplayIndex) {
                                                                                    var oSettings = this.fnSettings();
                                                                                    //var count = $('#proptble').DataTable().rows().count();
                                                                                    //$('#prop_count').html(count);
                                                                                    $("td:nth-child(2)", nRow).html(oSettings._iDisplayStart + iDisplayIndex + 1);
                                                                                    return nRow;
                                                                                }

                                                                            });

                                                                            $('#ddlpractice').change(function (event) {
                                                                                $('#flading').show();
                                                                                $('#ddlbenefittype').val('');
                                                                                var practiceid = $("select#ddlpractice").val();
                                                                                if (practiceid !== '')
                                                                                {
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
                                                                                            $('<option>').val("").text("None").appendTo(select);
                                                                                            console.log(response);
                                                                                            var txt = response;
                                                                                            var obj = jQuery.parseJSON(txt);
                                                                                            console.log(obj);
                                                                                            if (obj.length > 0)
                                                                                            {
                                                                                                for (var i = 0; i < obj.length; i++)
                                                                                                {
                                                                                                    $('<option>').val(obj[i].payor_id).text(obj[i].name).appendTo(select);
                                                                                                }

                                                                                            }
                                                                                        }
                                                                                    });


                                                                                    //Patient





                                                                                    $.ajax({
                                                                                        url: "getPatientwtPracticeid",
                                                                                        type: "get", //send it through get method
                                                                                        data: {
                                                                                            practiceid1: practiceid
                                                                                        },
                                                                                        success: function (response) {
                                                                                            var select = $('#ddlpatient');
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
                                                                                                    $('<option>').val(obj[i].ddlpatientid).text(obj[i].Patientname).appendTo(select);
                                                                                                }

        <c:forEach var="ebill" items="${ebilldetail}">
                                                                                                $('#ddlpatient').val(${ebill.patientid});
                                                                                                $("#ddlpatient").trigger("change");
                                                                                                $('#ddlpatient').attr('disabled', "true");
                                                                                                var chk_id1 = "${ebill.procedurecodes}";
                                                                                                //alert("Procedure Codes: "+chk_id1);                                                                                                

                                                                                                var chk_arr = chk_id1.split(',');
                                                                                                for (var i = 0; i < chk_arr.length; i++) {
                                                                                                    //alert("Array Element no: "+  (i+1) +" : "+chk_arr[i]);
                                                                                                    var headTag1 = '';
                                                                                                    //alert($("#"+chk_arr[i]).attr('type'));
                                                                                                    //console.log(chk_arr[i]);
                                                                                                    if($("#"+chk_arr[i]).attr('type')!='checkbox') {
                                                                                                        var selectElement= $('option[value=' + chk_arr[i] + ']');
                                                                                                        selectElement.attr('selected', 'selected'); 
                                                                                                        if(chk_arr[i]!=0) {                                                                                                                                                                                                                           
                                                                                                            selectElement.parent().css({"color":"white","background-color": "#34CE57"});                                                                                                                                                                              
                                                                                                        }
                                                                                                    } else {
                                                                                                        $("#" + chk_arr[i]).prop("checked", true);
                                                                                                    }
                                                                                                    //alert("diagnosisdiv: "+$("#" + chk_arr[i]).attr("name"));
                                                                                                     //alert("procedurediv "+$("#" + chk_arr[i]).attr("title"));
                                                                                                    callProcedureHeader(chk_arr[i], i);

                                                                                                }
        </c:forEach>

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
                                                                                                    $('<option>').val(obj[i].provider_id).text(obj[i].first_name).appendTo(select);
                                                                                                }
                                                                                                //  alert(providerval);
                                                                                                if (providerval === "0")
                                                                                                {
                                                                                                    $('#ddlprovider').val("");
                                                                                                    $("#ddlprovider").trigger("change");
                                                                                                } else
                                                                                                {
                                                                                                    $('#ddlprovider').val(providerval);
                                                                                                    $("#ddlprovider").trigger("change");
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
                                                                                    $('#design-1-form-t-1').removeAttr('disabled', "true");
                                                                                    return false;

                                                                                }

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

                                                                                            if (response.length > 0) {


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

                                                                                                        /*   var now = new Date(obj[i].dob);
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
                                                                                                        $('#ddlinsurance').val(obj[i].payor_id);
                                                                                                        $('#ddlinsurance').trigger('change');
                                                                                                        var insName = $('#ddlinsurance').find('option:selected').text();
                                                                                                        var insuName = insName.substring(0, insName.indexOf("-"));
                                                                                                        if (insName.includes("-")) {
                                                                                                            var payId = insName.substr(insName.lastIndexOf("-") + 1);
                                                                                                        }
                                                                                                        $('#insuranceName').val(insuName);
                                                                                                        $('#payorId').val(payId);
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
                                                                                var provName = $('#ddlprovider').find('option:selected').text();
                                                                                $('#providerName').val(provName);
                                                                                if ($('#ddlprovider').val() == '')
                                                                                {

                                                                                    $('.form-1').addClass('was-validated');
                                                                                    $('a[href^="#next"]').hide();
                                                                                    $('#design-1-form-t-1').attr('href', "");
                                                                                    return false;
                                                                                } else if ($('#ddlprovider').val() == null)
                                                                                {

                                                                                    $('.form-1').addClass('was-validated');
                                                                                    $('a[href^="#next"]').hide();
                                                                                    $('#design-1-form-t-1').attr('href', "");
                                                                                    return false;
                                                                                } else
                                                                                {

                                                                                    $('.form-1').addClass('was-validated');
                                                                                    $('a[href^="#next"]').show();
                                                                                    $('#design-1-form-t-1').attr('href', "#design-1-form-h-1");
                                                                                    return false;
                                                                                }
                                                                            });

        <c:forEach var="diagnosis" items="${diagnosis}">


                                                                            try {
                                                                                var chk_id = "${diagnosis.diagnosischeckboxid}";

                                                                                if (chk_id.length > 0) {
                                                                                    $("#" + chk_id).prop("checked", true);

                                                                                    // check box id check
                                                                                    var diagnosisdiv = $("#" + chk_id).attr("name");

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
                                                                                    }else {
                                                                                        // return;
                                                                                    }

                                                                                    if (headTag !== "") {
                                                                                        updateStatus(headTag, checkedcount);
                                                                                    }
                                                                                }
                                                                            } catch (err) {
                                                                                console.log(err);
                                                                            }
        </c:forEach>
                                                                        

                                                                            $('input[type="checkbox"] ,  .select').change(function () {                                                                               
                                                                                var checkedcount1=0;                                                                               
                                                                                                                                                               
                                                                                if($(this).attr('type')!=='checkbox'){
                                                                                    //var pro_code=$(this).val();
                                                                                    var headTag1 =$(this).find('option:selected').attr('title');                                                                                    
                                                                                    if($('input[title="' + headTag1 + '"]:checked').length>0){
                                                                                        checkedcount1=$('input[title="' + headTag1 + '"]:checked').length;
                                                                                       // alert("checkedcount1 from check : "+checkedcount1);
                                                                                    }
                                                                                        
                                                                                    if ($('option[title="' + headTag1 + '"][value!="0"]:selected').length > 0) {
                                                                                        checkedcount1=$('option[title="' + headTag1 + '"][value!="0"]:selected').length;
                                                                                       // alert("checkedcount1 from select: "+checkedcount1);
                                                                                    }
                                                                                    
                                                                                    if (headTag1 !== "")                                                                               
                                                                                        updateStatus1(headTag1, checkedcount1);                                                                              
                                                                                }
                                                                                 
                                                                               if($(this).attr('type')=='checkbox'){
                                                                                   var headTag = "";
                                                                                var diagnosisdiv = $(this).attr("name");
                                                                                var procedurediv = $(this).attr("title");
                                                                                
                                                                                if ($('option[title="' + procedurediv + '"][value!="0"]:selected').length > 0) {
                                                                                        checkedcount1=$('option[title="' + procedurediv + '"][value!="0"]:selected').length;
                                                                                        //alert("checkedcount1 from select: "+checkedcount1);
                                                                                    }
                                                                                    if($('input[title="' + procedurediv + '"]:checked').length>0){
                                                                                        checkedcount1=$('input[title="' + procedurediv + '"]:checked').length;
                                                                                        //alert("checkedcount1 from check : "+checkedcount1);
                                                                                    }
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
                                                                                } else if (diagnosisdiv === "t1proc01sub11") {          //Treating site Starts here - proheading4
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
                                                                                } else if (diagnosisdiv === "t1proc02sub11") {          //Diagnostic Radiology - proheadingOne
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
                                                                                } else if (diagnosisdiv === "t1proc02sub17") {
                                                                                    headTag1 = "proheadingOne";
                                                                                } else if (diagnosisdiv === "t1proc02sub21") {
                                                                                    headTag1 = "proheadingOne";
                                                                                } else if (diagnosisdiv === "t1proc02sub22") {
                                                                                    headTag1 = "proheadingOne";
                                                                                } else if (diagnosisdiv === "t1proc02sub23") {
                                                                                    headTag1 = "proheadingOne";
                                                                                } else if (diagnosisdiv === "t1proc02sub24") {
                                                                                    headTag1 = "proheadingOne";
                                                                                } else if (diagnosisdiv === "t1proc03sub11") {          //Patient Consultation/ Evaluation - proheading2
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
                                                                                } else if (diagnosisdiv === "t1proc03sub42") {
                                                                                    headTag1 = "proheading2";
                                                                                } else if (diagnosisdiv === "t1proc02sub22") {
                                                                                    headTag1 = "proheading2";
                                                                                } else if (diagnosisdiv === "t1proc02sub23") {
                                                                                    headTag1 = "proheading2";
                                                                                } else if (diagnosisdiv === "t1proc02sub31") {
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
                                                                                } else if (diagnosisdiv === "t1proc04sub11") {          //Mandatory Questionnaire - proheading3
                                                                                    headTag1 = "proheading3";
                                                                                } else if (diagnosisdiv === "t1proc04sub12") {
                                                                                    headTag1 = "proheading3";
                                                                                } else if (diagnosisdiv === "t1proc04sub21") {
                                                                                    headTag1 = "proheading3";
                                                                                } else if (diagnosisdiv === "t1proc04sub22") {
                                                                                    headTag1 = "proheading3";
                                                                                } else if (diagnosisdiv === "t1proc04sub31") {
                                                                                    headTag1 = "proheading3";
                                                                                }else if (diagnosisdiv === "t1proc04sub31") {
                                                                                    headTag1 = "proheading3";
                                                                                } else if (diagnosisdiv === "t1proc04sub32") {
                                                                                    headTag1 = "proheading3";
                                                                                } else if (diagnosisdiv === "t1proc04sub33") {
                                                                                    headTag1 = "proheading3";
                                                                                }else if (diagnosisdiv === "t1proc04sub41") {
                                                                                    headTag1 = "proheading3";
                                                                                } else if (diagnosisdiv === "t1proc04sub42") {
                                                                                    headTag1 = "proheading3";
                                                                                } else if (diagnosisdiv === "t1proc04sub51") {
                                                                                    headTag1 = "proheading3";
                                                                                } else if (diagnosisdiv === "t1proc04sub52") {
                                                                                    headTag1 = "proheading3";
                                                                                } else if (diagnosisdiv === "t1proc04sub61") {
                                                                                    headTag1 = "proheading3";
                                                                                } else if (diagnosisdiv === "t1proc04sub62") {
                                                                                    headTag1 = "proheading3";
                                                                                } else if (diagnosisdiv === "t1proc04sub71") {
                                                                                    headTag1 = "proheading3";
                                                                                } else if (diagnosisdiv === "t1proc04sub72") {
                                                                                    headTag1 = "proheading3";
                                                                                } else if (diagnosisdiv === "t1proc04sub81") {
                                                                                    headTag1 = "proheading3";
                                                                                } else if (diagnosisdiv === "t1proc04sub82") {
                                                                                    headTag1 = "proheading3";
                                                                                } else if (diagnosisdiv === "t1proc05sub11") {          //Appliance - proheading5
                                                                                    headTag1 = "proheading5";
                                                                                } else if (diagnosisdiv === "t1proc05sub12") {
                                                                                    headTag1 = "proheading5";
                                                                                } else if (diagnosisdiv === "t1proc05sub21") {
                                                                                    headTag1 = "proheading5";
                                                                                } else if (diagnosisdiv === "t1proc05sub22") {
                                                                                    headTag1 = "proheading5";
                                                                                } else if (diagnosisdiv === "t1proc05sub23") {
                                                                                    headTag1 = "proheading5";
                                                                                } else if (diagnosisdiv === "t1proc05sub24") {
                                                                                    headTag1 = "proheading5";
                                                                                } else if (diagnosisdiv === "t1proc05sub25") {
                                                                                    headTag1 = "proheading5";
                                                                                } else if (diagnosisdiv === "t1proc05sub26") {
                                                                                    headTag1 = "proheading5";
                                                                                } else if (diagnosisdiv === "t1proc05sub27") {
                                                                                    headTag1 = "proheading5";
                                                                                } else if (diagnosisdiv === "t1proc05sub28") {
                                                                                    headTag1 = "proheading5";
                                                                                } else if (diagnosisdiv === "t1proc08sub11") {          //Bone Lesion / Bony Cyst Excision - proheading8
                                                                                    headTag1 = "proheading8";
                                                                                } else if (diagnosisdiv === "t1proc08sub12") {
                                                                                    headTag1 = "proheading8";
                                                                                } else if (diagnosisdiv === "t1proc08sub13") {
                                                                                    headTag1 = "proheading8";
                                                                                } else if (diagnosisdiv === "t1proc08sub14") {
                                                                                    headTag1 = "proheading8";
                                                                                } else if (diagnosisdiv === "t1proc21sub15") {          //Debridement - proheading21
                                                                                    headTag1 = "proheading21";
                                                                                } else if (diagnosisdiv === "t1proc21sub16") {
                                                                                    headTag1 = "proheading21";
                                                                                } else if (diagnosisdiv === "t1proc21sub17") {
                                                                                    headTag1 = "proheading21";
                                                                                } else if (diagnosisdiv === "t1proc21sub18") {
                                                                                    headTag1 = "proheading21";
                                                                                }  else if (diagnosisdiv === "t1proc21sub113") {
                                                                                    headTag1 = "proheading21";
                                                                                } else if (diagnosisdiv === "t1proc21sub114") {
                                                                                    headTag1 = "proheading21";
                                                                                } else if (diagnosisdiv === "t1proc21sub115") {
                                                                                    headTag1 = "proheading21";
                                                                                } else if (diagnosisdiv === "t1proc21sub116") {
                                                                                    headTag1 = "proheading21";
                                                                                } else if (diagnosisdiv === "t1proc11sub21") {          //Surgical Reconstruction of fixation  - proheading11
                                                                                    headTag1 = "proheading11";
                                                                                } else if (diagnosisdiv === "t1proc11sub22") {
                                                                                    headTag1 = "proheading11";
                                                                                } else if (diagnosisdiv === "t1proc11sub23") {
                                                                                    headTag1 = "proheading11";
                                                                                } else if (diagnosisdiv === "t1proc11sub24") {
                                                                                    headTag1 = "proheading11";
                                                                                } else if (diagnosisdiv === "t1proc11sub25") {
                                                                                    headTag1 = "proheading11";
                                                                                } else if (diagnosisdiv === "t1proc11sub26") {
                                                                                    headTag1 = "proheading11";
                                                                                } else if (diagnosisdiv === "t1proc11sub27") {
                                                                                    headTag1 = "proheading11";
                                                                                } else if (diagnosisdiv === "t1proc11sub28") {
                                                                                    headTag1 = "proheading11";
                                                                                } else if (diagnosisdiv === "t1proc22sub11") {          //Reconstruction of Bone Fracture - proheading22
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
                                                                                } else if (diagnosisdiv === "t1proc14sub117") {         //Tissue Graft - proheading14
                                                                                    headTag1 = "proheading14";
                                                                                } else if (diagnosisdiv === "t1proc14sub118") {
                                                                                    headTag1 = "proheading14";
                                                                                } else if (diagnosisdiv === "t1proc14sub119") {
                                                                                    headTag1 = "proheading14";
                                                                                } else if (diagnosisdiv === "t1proc14sub120") {
                                                                                    headTag1 = "proheading14";
                                                                                } else if (diagnosisdiv === "t1proc16sub11") {          //Stem cell / Bone harvest - proheading16 
                                                                                    headTag1 = "proheading16";
                                                                                } else if (diagnosisdiv === "t1proc16sub12") {
                                                                                    headTag1 = "proheading16";
                                                                                } else if (diagnosisdiv === "t1proc16sub13") {
                                                                                    headTag1 = "proheading16";
                                                                                } else if (diagnosisdiv === "t1proc16sub14") {
                                                                                    headTag1 = "proheading16";
                                                                                } else if (diagnosisdiv === "t1proc16sub15") {
                                                                                    headTag1 = "proheading16";
                                                                                } else if (diagnosisdiv === "t1proc16sub16") {
                                                                                    headTag1 = "proheading16";
                                                                                } else if (diagnosisdiv === "t1proc16sub17") {
                                                                                    headTag1 = "proheading16";
                                                                                } else if (diagnosisdiv === "t1proc16sub18") {
                                                                                    headTag1 = "proheading16";
                                                                                } else if (diagnosisdiv === "t1proc16sub21") {
                                                                                    headTag1 = "proheading16";
                                                                                } else if (diagnosisdiv === "t1proc16sub22") {
                                                                                    headTag1 = "proheading16";
                                                                                } else if (diagnosisdiv === "t1proc16sub23") {
                                                                                    headTag1 = "proheading16";
                                                                                } else if (diagnosisdiv === "t1proc16sub24") {
                                                                                    headTag1 = "proheading16";
                                                                                } else if (diagnosisdiv === "t1proc16sub25") {
                                                                                    headTag1 = "proheading16";
                                                                                } else if (diagnosisdiv === "t1proc16sub31") {
                                                                                    headTag1 = "proheading16";
                                                                                } else if (diagnosisdiv === "t1proc16sub32") {
                                                                                    headTag1 = "proheading16";
                                                                                } else if (diagnosisdiv === "t1proc16sub41") {
                                                                                    headTag1 = "proheading16";
                                                                                } else if (diagnosisdiv === "t1proc16sub42") {
                                                                                    headTag1 = "proheading16";
                                                                                } else if (diagnosisdiv === "t1proc18sub11") {          //Suture - proheading18
                                                                                    headTag1 = "proheading18";
                                                                                } else if (diagnosisdiv === "t1proc18sub12") {
                                                                                    headTag1 = "proheading18";
                                                                                } else if (diagnosisdiv === "t1proc18sub13") {
                                                                                    headTag1 = "proheading18";
                                                                                } else if (diagnosisdiv === "t1proc18sub14") {
                                                                                    headTag1 = "proheading18";
                                                                                } else if (diagnosisdiv === "t1proc18sub21") {
                                                                                    headTag1 = "proheading18";
                                                                                } else if (diagnosisdiv === "t1proc18sub22") {
                                                                                    headTag1 = "proheading18";
                                                                                } else {
                                                                                    return;
                                                                                }
                                                                             

                                                                                if (headTag !== "") {
                                                                                    updateStatus(headTag, checkedcount);
                                                                                }

                                                                                if (headTag1 !== "") {
                                                                                    updateStatus1(headTag1, checkedcount1);
                                                                                }
                                                                               }

                                                                            });


                                                                        });

    </script>
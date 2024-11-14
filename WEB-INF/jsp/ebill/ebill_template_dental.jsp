<%-- 
    Document   : ebill_template_dental
    Created on : 03-Oct-2022, 4:44:21 pm
    Author     : cgvak-lt086
--%>

<%@page contentType="text/html"  pageEncoding="UTF-8" autoFlush="true"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@taglib prefix="spring"  uri="http://www.springframework.org/tags"  %>
<html lang="en">

    <head>
        <title>E-Superbill</title>
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
            /*            .select2-container {
                z-index: 9999 !important;
                        }*/
            #viewTraySheetModal{
                overflow-y:scroll;
            }
            .border-left-side{
                border-left:4px solid #13bd8a;
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
            .select2-container{
                z-index:1!important;
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


                                        <div   id="new_bill"   class="card">
                                            <div class="card-body">
                                            <form:form  id="design-1-form" class="form-1 needs-validation" name="ebillform"  method="POST" action="saveEbill" modelAttribute="ebill">
                                                <h3 class="wiz-items">
                                                    <span class="num-icon">1</span><span style="color:#000000">
                                                        Visit Information
                                                    </span>
                                                </h3>

                                                <input type="hidden" name="procedurecount" id="procedure_count" value="0">
                                                <input type="hidden" name="diagonisiscount" id="diagnosis_count" value="0">

                                                <input type="hidden" name="billstatus" id="billstatus" value="DRAFTED">
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
                                                                    </select>
                                                                </div>
                                                            </div>

                                                            <div class="form-group row">
                                                                <label class="col-sm-3 col-form-label font-style-label" for="ddlinsurance">Insurance </label>
                                                                <div class="col-sm-9">
                                                                    <select class="form-control js-example-placeholder-multiple col-sm-12" id="ddlinsurance" data-placeholder="Select Insurance" disabled tabindex="11" name="ddlinsurance" >
                                                                    </select>
                                                                    <input type="hidden" id="insuranceName" name="insuranceName">
                                                                    <input type="hidden" id="payorId" name="payorId"/>
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
                                                                <label for="b-t-name" class="col-sm-3 col-form-label font-style-label">Treating Surgeon<font color="red">*</font> </label>
                                                                <div class="col-sm-9">
                                                                    <select class="form-control js-example-placeholder-multiple col-sm-12" required id="ddlprovider" data-placeholder="Select Treating Surgeon" tabindex="2"  name="ddlprovider">
                                                                    </select>
                                                                    <input type="hidden" name="providerName" id="providerName"/>
                                                                </div>
                                                            </div>                                                                
                                                            <div class="form-group row">
                                                                <label for="b-t-name" class="col-sm-3 col-form-label font-style-label">Date of Service <span class="text-danger">*</span></label>
                                                                <div class="col-sm-9">

                                                                    <input type="text" class="form-control" required name="dateofservice"  id="dateofservice">

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
                                                                                <label class="col-sm-4 col-form-label font-style-label" >Treating Surgeon:</label>
                                                                                <div class="col-sm-8">
                                                                                    <label class="col-form-label"  id="treating_surgeon"></label>
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
                                                                            <label class="font-style-label"><u>Deformity & Irregularity bone :</u></label>
                                                                        </div>
                                                                    </div>   
                                                                    <div class="row">    
                                                                        <div id="diagnoisis21div" style="display:none" >
                                                                        </div>
                                                                    </div> 

                                                                    <div class="row">    
                                                                        <div id="diagnoisis22divt" style="display:none" >
                                                                            <label class="font-style-label"><u>Control Bleeding :</u></label>
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



                                                        <div class="col-md-12">
                                                            <div class="card statustic-card">
                                                                <div id="filesection" class="col-lg-12" style="padding:0;" >
                                                                    <div style="padding: 10px 15px;" class="card-header bg-success border-0 ">
                                                                        <h5 class="text-white m-b-0">Files</h5>
                                                                    </div>
                                                                    <div class="card-body">
                                                                        <div> Surgical Tray Sheet Files:
                                                                            <span style="font-weight:bold" id="filedata">
                                                                                    <c:if test="${empty param.filedata}">
                                                                                        File Not Available.
                                                                                    </c:if>
                                                                                    <c:if test="${ param.filedata}">
                                                                                        ${param.filedata}
                                                                                    </c:if>
                                                                            </span>
                                                                    </div>
                                                                   
                                                                </div>
                                                            </div> 


                                                        </div>
                                                        </div>

                                                    </section>
                                                    <input type="hidden" name="disganosiscode" id="disganosiscode">
                                                    <input type="hidden" name="disganosiscodecount" id="disganosiscodecount">
                                                    <input type="hidden" name="result" id="result">
                                                    <input type="hidden" name="resultcode" value="" id="resultcodev">
                                                    <input type="hidden" name="surgicalTrayId" id="surgicalTrayId"/>
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

                                                                        $(document).ready(function () {

                                                                            $('#visit_others').hide();


                                                                            function submitBill() {
                                                                                $('#resultcodev').val('');


                                                                                var selected = [];
                                                                                var diaselected = [];
                                                                                $('input[type=checkbox]').each(function () {
                                                                                    if (this.checked) {
                                                                                        try {
                                                                                            var idname = $(this).attr('id');
                                                                                            if (typeof (idname) !== "undefined")
                                                                                            {
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
                                                                                        } catch (err) {
                                                                                            console.log(err);
                                                                                        }
                                                                                    }
                                                                                
                                                                                });
                                                                                $('.select').each(function() {  
                                                                                    var value = $(this).val();
                                                                                        if(value!=0)                                                                                       
                                                                                            selected.push(value);
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

                                                                                if (ebill_to !== '')
                                                                                {

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
                                                                            var flag = 0;
                                                                            function ShowConfirmDraftSign() {
                                                                                if (flag == 0) {
                                                                                    AsyncConfirmDraftSign(
                                                                                            "Confirmation Box",
                                                                                            "Do you wish to Draft or Sign?",
                                                                                            MyDraftFunction,
                                                                                            MySignFunction
                                                                                            );
                                                                                }
                                                                                flag = 1;

                                                                            }
                                                                            var retnvl = '';
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
//                                                                                 $("form[name='ebillform']").submit();
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
//                                                                                 $("form[name='ebillform']").submit();
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
                                                                                //  alert($('#visit_reason option:selected').text())
                                                                                if ($('#visit_reason').val() === '10') {
                                                                                    $('#visit_others').show();

                                                                                } else {
                                                                                    $('#visit_others').hide();
                                                                                }
                                                                            });


                                                                            $("form[name='ebillform']").submit(function () {
                                                                                ShowConfirmDraftSign();

                                                                                if (retnvl === '') {
                                                                                    return false;
                                                                                } else {
                                                                                    $('#flading').show();
                                                                                    submitBill();
                                                                                    return true;
                                                                                }
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
                                                                                            $('<option>').val(obj[i].practice_id).text(obj[i].name).appendTo(select);
                                                                                        }
                                                                                        //alert(entity);
                                                                                        console.log("UT:<%=session.getAttribute("UT")%>:");
                                                                                        var usertype = '<%=session.getAttribute("UT")%>';
                                                                                        var practiceid = '<%=session.getAttribute("practiceid")%>';
        <sec:authorize access="hasAnyRole('ROLE_PRACTICE_PROVIDER,ROLE_REFERING_PROVIDER')">
                                                                                        console.log("Practice: " + practiceid);
                                                                                        $('#ddlpractice').val(practiceid);
                                                                                        $('#ddlpractice').attr('disabled', "true");
                                                                                        $("#ddlpractice").trigger("change");
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



                                                                                                        //   $('#dob').val((month) + '/' + day + '/' + now.getFullYear());

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
                                                                            
                                                                            $('input[type="checkbox"] ,  .select').change(function () {                                                                               
                                                                                var checkedcount1=0;     
                                                                                
                                                                                if($(this).attr('type')!=='checkbox'){
                                                                                    var pro_code=$(this).val();
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

                                                                                
                                                                            if (headTag !== "") 
                                                                                updateStatus(headTag, checkedcount);
                                                                            if (headTag1 !== "")
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
                                                                                $(".q-view").addClass("active");
                                                                            }
                                                                            function MyNoFunction() {
                                                                                $(".overlay").click();
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
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
        <title>Edit Study Request</title>
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
                                            <form:form  id="design-1-form" class="form-1 needs-validation"  method="POST" action="updateradiology" name="radiology" modelAttribute="radiology">
                                                <h3 class="wiz-items">
                                                    <span class="num-icon">1</span><span style="color:#000000">
                                                        Patient info
                                                    </span>
                                                </h3>

                                                <input type="hidden" name="procedurecount" id="procedure_count" value="0">
                                                <input type="hidden" name="diagonisiscount" id="diagnosis_count" value="0">
                                                <input type="hidden" name="radid" id="radid" value="${id}">

                                                <input type="hidden" name="billstatus" id="billstatus">
                                                <input type="hidden" name="procedurecodes" id="procedurecodes" >

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
                                                                <label class="col-sm-3 col-form-label font-style-label" for="ddlpatient">Patient <span class="text-danger">*</span></label>
                                                                <div class="col-sm-9">
                                                                    <select class="form-control js-example-placeholder-multiple col-sm-12" required id="ddlpatient" data-placeholder="Select Patient" tabindex="3"  name="ddlpatient" >
                                                                        <!-- <option value="0">--Select--</option> -->
                                                                    </select>
                                                                </div>
                                                            </div>

                                                            <div class="form-group row">
                                                                <label class="col-sm-3 col-form-label font-style-label" for="ddlinsurance">Insurance </label>
                                                                <div class="col-sm-9">
                                                                    <select class="form-control js-example-placeholder-multiple col-sm-12" id="ddlinsurance" disabled tabindex="11" data-placeholder="Select Insurance" name="ddlinsurance" >
                                                                    </select>
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
                                                                <label for="b-t-name" class="col-sm-3 col-form-label font-style-label">Ordering Surgeon <span class="text-danger">*</span></label>
                                                                <div class="col-sm-9">
                                                                    <select class="form-control js-example-placeholder-multiple col-sm-12" required id="ddlprovider" data-placeholder="Select Ordering Surgeon" tabindex="2"  name="ddlprovider">
                                                                    </select>
                                                                    <!--<input type="text" class="form-control" required name="technician" tabindex="4" id="technician"  placeholder="Treating Surgeon">                                                       -->
                                                                </div>
                                                            </div>

                                                            <div class="form-group row">
                                                                <label for="b-t-name" class="col-sm-3 col-form-label font-style-label">Radiologist<font color="red">*</font> </label>
                                                                <div class="col-sm-9">
                                                                    <select class="form-control js-example-placeholder-multiple col-sm-12"  required id="radiologist" data-placeholder="Select Radiology" tabindex="4"  name="radiologist">
                                                                    </select>

                                                                </div>
                                                            </div>

                                                            <div class="form-group row">
                                                                <label for="b-t-name" class="col-sm-3 col-form-label font-style-label">Provider<font color="red">*</font></label>
                                                                <div class="col-sm-9">
                                                                    <select class="form-control js-example-placeholder-multiple col-sm-12"  required id="ddlradiology" data-placeholder="Select Provider" tabindex="5"  name="ddlradiology">
                                                                    </select>
                                                                    <!--<input type="text" class="form-control" required name="technician" tabindex="4" id="technician"  placeholder="Treating Surgeon">-->                                                       
                                                                </div>
                                                            </div> 


                                                            <!-- <div class="form-group row">
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
                                                             </div> -->

                                                        </div>
                                                    </div>
                                                    <div id="template1" style="display:none;" class="row">
                                                        <div class="col-sm">
                                                            <!--   <div class="form-group row">
                                                                   <label for="b-t-name" id="hdtreament1" class="col-sm-3 col-form-label font-style-label">Treatment</label>
                                                               </div> -->

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

                                                                            <div style="display:none;"  id="archview" class="form-group row">
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
                                                                            <div class="form-group row">
                                                                                <label class="col-sm-4 col-form-label font-style-label" >Ordering Surgeon:</label>
                                                                                <div class="col-sm-8">
                                                                                    <label class="col-form-label"  id="treating_surgeon"></label>
                                                                                </div>
                                                                            </div>
                                                                            <div class="form-group row" style="display:none;">
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
                                                                                <label class="col-sm-4 col-form-label font-style-label"  for="ddlpractice">Radiologist:</label>
                                                                                <div class="col-sm-8">
                                                                                    <label class="col-form-label "  id="lblradiologist"></label>
                                                                                </div>
                                                                            </div> 

                                                                            <div class="form-group row">
                                                                                <label class="col-sm-4 col-form-label font-style-label" >DOT</label>
                                                                                <div class="col-sm-8">
                                                                                    <label class="col-form-label "  id="rdos"></label>
                                                                                </div>
                                                                            </div>


                                                                            <!--  <div id="refdoc_view"  class="form-group row">
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
                                                                              </div> -->



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


                                                        <!--<div class="row"> 
                                                            <div class="form-group row">
                                                                <label class="col-sm col-form-label font-style-label" >Notes<hr> </label>                                                                     
                                                            </div>                                                             
                                                            <textarea class="form-control" name="notes" id="notes"  rows="3"></textarea>
                                                        </div>-->
                                                    </section>

                                                    <input type="hidden" name="disganosiscode" id="disganosiscode">
                                                    <input type="hidden" name="disganosiscodecount" id="disganosiscodecount">
                                                    <input type="hidden" name="teethval" id="teethval">
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
                                                    <hr>
                                                    <div class="col-lg-12">
                                                        <div id="filesection" class="card statustic-card">
                                                            <div style="padding: 10px 15px;" class="card-header bg-success border-0 ">
                                                                <h5 class="text-white m-b-0">Files</h5>
                                                            </div>

                                                            <div class="card-body">

                                                                <c:forEach var="filesdata" items="${filesdata}">

                                                                    <c:if test = "${filesdata.file1 ne ''}">

                                                                        <span id="span_${filesdata.fileid}">Files:  <a data-toggle="tooltip" data-placement="top" class="singledownbutton" id="down_${filesdata.fileid}" title=""  data-original-title="Download" target="_blank"   href="../Upload/Radiology/${filesdata.file1}">${filesdata.file1} <i class="fas fa-download m-r-5"></i></a> <a data-toggle="tooltip" data-placement="top" class="singledeletebutton" id="${filesdata.fileid}" onclick="deletefile(this.id)" title=""  data-original-title="Delete" href="#"><i class="fas fa-trash-alt m-r-5"></i></a><br></span>

                                                                    </c:if>


                                                                </c:forEach> 

                                                            </div>
                                                        </div> 
                                                    </div>   
                                                </section>




                                                <input type="hidden" name="file1" id="getfiles">

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
                            type="button" class="btn btn-success">Not</button>
                </div>
            </div>
        </div>
    </div>

    <div id="flading" class="loader">

    </div>



    <!-- Required Js -->
    <jsp:include page="../includes/footer.jsp"></jsp:include>

        <script src="assets/js/plugins/jquery.bootstrap.wizard.min.js"></script>
        <script src="assets/js/plugins/jquery.steps.min.js"></script>
        <script src="assets/js/ebill/radiology.js?v=<spring:message code="release.version"/>"></script>

    <script src="assets/js/plugins/select2.full.min.js"></script>
    <script src="assets/js/pages/form-select-custom.js"></script>

    <script>
                                                                            $(document).ready(function () {

                                                                            });


                                                                            var flag = 'N';
                                                                            var flag1 = 0;
                                                                            var flag2 = 0;
                                                                            var totalSize = 0;


                                                                            $(function () {


                                                                                $('#file_1').on('change', function (event) {
                                                                                    flag1 = 0;
                                                                                    flag2 = 0;
                                                                                    $('#previewfile').html('');
                                                                                    $('#getfiles').val('');
                                                                                    fileName = '';
                                                                                    for (var i = 0; i < this.files.length; i++) {
                                                                                        totalSize += this.files[i].size;
                                                                                    }
                                                                                    //  alert(totalSize);
                                                                                    if (totalSize > 50000000)
                                                                                    {
                                                                                        msgbox("Uploaded file size exceeded 50MB", "Study Request Form", "error");
                                                                                        $(this).next('.custom-file-label').html("Choose file...");
                                                                                        $(this).val(null);
                                                                                        totalSize = 0;
                                                                                        return;
                                                                                    }
                                                                                    Array.from(event.target.files).forEach(file => {
                                                                                        flag1++;
                                                                                         var filename = file.name;
                                                                                        if (filename.endsWith('.exe')) {
                                                                                            msgbox("Uploading EXE files are not allowed", "Study Request Form", "error");
//                                                                                            $(this).next('.custom-file-label').html("Choose file...");
                                                                                            $(this).val(null);
                                                                                            return;
                                                                                        } else if (filename.endsWith('.dll')) {
                                                                                            msgbox("Uploading DLL files are not allowed", "Study Request Form", "error");
//                                                                                            $(this).next('.custom-file-label').html("Choose file...");
                                                                                            $(this).val(null);
                                                                                            return;
                                                                                        } else if (filename.endsWith('.sh')) {
                                                                                            msgbox("Uploading sh files are not allowed", "Study Request Form", "error");
//                                                                                            $(this).next('.custom-file-label').html("Choose file...");
                                                                                            $(this).val(null);
                                                                                            return;
                                                                                        } else if (filename.endsWith('.bat')) {
                                                                                            msgbox("Uploading bat files are not allowed", "Study Request Form", "error");
//                                                                                            $(this).next('.custom-file-label').html("Choose file...");
                                                                                            $(this).val(null);
                                                                                            return;
                                                                                        }
                                                                                            else {
                                                                                            // $(this).next('.custom-file').html(file.name);    
                                                                                            uploadFile(file)
                                                                                            return true;
                                                                                        }
                                                                                        $(this).next('.custom-file-label').html(filename);
                                                                                        uploadFile(file) // each file gets sent to uploadFile() individually

                                                                                    });
                                                                                });


                                                                            });


                                                                            async function uploadFile(file) {
                                                                                // if (((($('#file_1').val()) === null) || (($('#file_1').val()) === '') || (($('#file_1').val()) === "undefined")))
                                                                                //   msgbox("Please Upload files", "Study Request Form", "error");

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
                                                                                        $('#getfiles').val(fileName.slice(0, -1));
                                                                                    });



                                                                                    if (response.status == 200) {

                                                                                        flag2++;

                                                                                        //msgbox("File upload successfully...!", "Study Request Form", "success");
                                                                                        //  fileName = '';

                                                                                    } else
                                                                                    {

                                                                                        msgbox("File upload failed, try again after renaming the file...!", "Study Request Form", "error");

                                                                                    }
                                                                                    if (flag1 === flag2) {
                                                                                        msgbox("Files upload successfully...!", "Study Request Form", "success");
                                                                                    }
                                                                                }
                                                                            }

                                                                            function deletefile(id)
                                                                            {
                                                                                //  alert(id);
                                                                                $.ajax({
                                                                                    url: "deleteradiologyfiles",
                                                                                    type: "get", //send it through get method
                                                                                    data: {
                                                                                        fileId: id
                                                                                    },
                                                                                    success: function (dbresponse) {
                                                                                        console.log(dbresponse);
                                                                                        if (dbresponse === "1")
                                                                                        {
                                                                                            msgbox("File deleted successfully...!", "Study Request Form", "success");
                                                                                            $('#span_' + id).hide();
                                                                                        } else
                                                                                        {
                                                                                            msgbox("File not deleted...!", "Study Request Form", "error");
                                                                                        }
                                                                                    }});


                                                                            }

                                                                            $(document).ready(function () {

                                                                                $('#upload_1').hide();
                                                                                $('#upload_2').hide();





                                                                                function submitPreAuth() {

                                                                                    $('#resultcodev').val('');
                                                                                    var providerval = '';
                                                                                    var rad_providerval = '';
                                                                                    var selected = [];
                                                                                    var diaselected = [];
                                                                                    $('#ddlpractice').removeAttr('disabled');
                                                                                    $('#ddlinsurance').removeAttr('disabled');

                                                                                    //  $('#ddlprovider').Removeattr('disabled', "true");
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

                                                                                            //var tag_id = $(this).attr("id");
                                                                                            if (idname.indexOf("iag") > -1) {
                                                                                                diaselected.push(idname);
                                                                                            }
                                                                                        }

                                                                                    });


                                                                                    //  alert(selected);
                                                                                    $('#procedurecodes').val(selected);
                                                                                    $('#disganosiscode').val(diaselected);


                                                                                    $('#result').val($('#procedurecode_result').html());
                                                                                    $('#resultcodev').val($('#procedurecodev_result').html());

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
                                                                                    } else
                                                                                    {
                                                                                        return true;
                                                                                    }
                                                                                    //   }

                                                                                }



                                                                                function ShowConfirmDraftSign() {
                                                                                    AsyncConfirmDraftSign(
                                                                                            "Confirmation Box",
                                                                                            "Do you wish to OnHold or Not?",
                                                                                            MyDraftFunction,
                                                                                            MySignFunction
                                                                                            );

                                                                                }
                                                                                var retnvl = '';
                                                                                function MyDraftFunction() {
                                                                                    // alert("Time to get off your workstation!");
                                                                                    // $("#lblTestResult").html("You are hungry");

                                                                                    // $("form[name='preauthform']").submit();
                                                                                    $('#billstatus').val('ONHOLD');
                                                                                    retnvl = 'ONHOLD';

                                                                                    $("form[name='radiology']").submit();

                                                                                }

                                                                                function MySignFunction() {


                                                                                    //  $("form[name='preauthform']").submit();
                                                                                    $('#billstatus').val('ASSIGNED');
                                                                                    retnvl = 'ASSIGNED';

                                                                                    $("form[name='radiology']").submit();

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


                                                                                $("form[name='radiology']").submit(function ()
                                                                                {
                                                                                    $('#flading').show();

        <sec:authorize access="hasAnyRole('ROLE_ENTITY_ADMIN,ROLE_ENTITY_STAFF')">
                                                                                    $('#billstatus').val('ASSIGNED');
                                                                                    //  alert($('#billstatus').val());
                                                                                    return submitPreAuth();
        </sec:authorize>


        <sec:authorize access="hasAnyRole('ROLE_PRACTICE_PROVIDER,ROLE_REFERING_PROVIDER,ROLE_CORP_PROVIDER,ROLE_GROUPCLINIC_PROVIDER')">
                                                                                    ShowConfirmDraftSign();
                                                                                    if (retnvl === '')
                                                                                    {
                                                                                        return false;
                                                                                    } else
                                                                                    {
                                                                                        return  submitPreAuth();

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

        <c:forEach var="radiologydetail" items="${radiologydetail}">
                                                                                            $('#ddlpractice').val(${radiologydetail.practiceid});

                                                                                            $('#radiologist').val('${radiologydetail.radiologist}');
                                                                                            $("#radiologist").trigger("change");


                                                                                            var notesVal = '<c:out value="${radiologydetail.notes}" escapeXml="false" />';
                                                                                            $('#notes').html(notesVal);
                                                                                            var notesVal1 = '<c:out value="${radiologydetail.notes1}" escapeXml="false" />';
                                                                                            $('#notes1').html(notesVal1);
                                                                                            var notesVal2 = '<c:out value="${radiologydetail.notes2}" escapeXml="false" />';
                                                                                            $('#notes2').html(notesVal2);
                                                                                            providerval = ${radiologydetail.providerid};
                                                                                            rad_providerval = ${radiologydetail.radiology_provider};
                                                                                            $('#ddlradiology').val(${radiologydetail.radiology_provider});
                                                                                            $("#ddlradiology").trigger("change");
                                                                                            $("#ddlpractice").trigger("change");
                                                                                            $('#ddlpractice').attr('disabled', "true");
        </c:forEach>

                                                                                        }
                                                                                    }
                                                                                });

        <c:forEach var="toothdata" items="${toothdata}">
                                                                                $(':checkbox').each(function (key, value) {
                                                                                    var tagname = $(this).attr("name");
                                                                                    if ("${toothdata.teethval}" === tagname.replaceAll('teeth', '')) {
                                                                                        // $("#pathologist_view").hide();
                                                                                        $(this).prop('checked', true);
                                                                                    }
                                                                                });

        </c:forEach>

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

                                                                                        //console.log("1. "+tab+" ,2. "+ navigation+" ,3. "+ index);
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



                                                                                $('#ddlpractice').change(function (event) {
                                                                                    $('#flading').show();
                                                                                    $('#ddlbenefittype').val('');
                                                                                    var select = $('#ddlinsurance');
                                                                                    select.find('option').remove();
                                                                                    var practiceid = $("select#ddlpractice").val();
                                                                                    if (practiceid !== '')
                                                                                    {
                                                                                        //Proviver
                                                                                        /*   $.ajax({
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
                                                                                         // var sv = value.split('~');
                                                                                         $('<option>').val(obj[i].payor_id).text(obj[i].name).appendTo(select);
                                                                                         }
                                                                                         
                                                                                         }
                                                                                         }
                                                                                         }); */

                                                                                        $.ajax({
                                                                                            url: "radiologistdetailswtpracticeid",
                                                                                            type: "get", //send it through get method
                                                                                            data: {
                                                                                                entityId: entity,
                                                                                                practiceId: practiceid
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

        <c:forEach var="radiologydetail" items="${radiologydetail}">
                                                                                                    $('#ddlpatient').val(${radiologydetail.patientid});
                                                                                                    $("#ddlpatient").trigger("change");
                                                                                                    $('#dateofservice').val('${radiologydetail.dos}');
                                                                                                    $('#ddlpatient').attr('disabled', "true");
                                                                                                    $('#radiologist').val(${radiologydetail.radiologist});
                                                                                                    $("#radiologist").trigger("change");
                                                                                                    var studyid = "${radiologydetail.studyid}";
                                                                                                    var studyarr = studyid.split(",");
                                                                                                    $('#ddlstudy').val(studyarr);
                                                                                                    $("#ddlstudy").trigger("change");
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
                                                                                                        // var sv = value.split('~');
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

                                                                                                    // $('#ddlprovider').attr('disabled', "true");
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

                                                                                $('#radiologist').change(function (event) {
                                                                                    $.ajax({
                                                                                        url: "providerdetailswtentityid",
                                                                                        type: "get", //send it through get method
                                                                                        data: {
                                                                                            practiceid: $('#radiologist').val()
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

                                                                                                $('#ddlradiology').val(rad_providerval);
                                                                                            }
                                                                                        }
                                                                                    });
                                                                                });


                                                                                $('#ddlpatient').change(function (event) {
                                                                                    var patientid = $("select#ddlpatient").val();
                                                                                    $('#flading').show();
                                                                                    //  alert(patientid);
                                                                                    if (patientid !== '0')
                                                                                    {
                                                                                        //Proviver

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
                                                                                                    $('#ddlinsurance').val("");
                                                                                                    $('#mid').val("");
                                                                                                    $('#pid').val("");
                                                                                                }
                                                                                            }
                                                                                        });

                                                                                        $('#flading').hide();
                                                                                    } else
                                                                                    {
                                                                                        //var select = $('#ddlpatient');
                                                                                        $('#cname').val("");
                                                                                        $('#mname').val("");
                                                                                        $('#fname').val("");
                                                                                        $('#lname').val("");
                                                                                        $('#dob').val("");
                                                                                        // $('#dos').val("");
                                                                                        $('#ddlgender').val("");
                                                                                        $('#ddlinsurance').val("");
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
                                                                                var chk_id = "${diagnosis.diagnosischeckboxid}";
                                                                                if (chk_id.length > 0) {
                                                                                    $("#" + chk_id).prop("checked", true);
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
                                                                                    } else {
                                                                                        return;
                                                                                    }

                                                                                    if (headTag !== "") {
                                                                                        updateStatus(headTag, checkedcount);
                                                                                    }
                                                                                }
        </c:forEach>
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
                                                                                    }else if (diagnosisdiv === "diagnoisis22") {
                                                                                        headTag = "heading22";
                                                                                    }  else {
                                                                                        return;
                                                                                    }

                                                                                    if (headTag !== "") {
                                                                                        updateStatus(headTag, checkedcount);
                                                                                    }


                                                                                });


                                                                            });

    </script>
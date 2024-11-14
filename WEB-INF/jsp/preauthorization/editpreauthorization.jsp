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
        <title>Edit Pre-authorization Request</title>
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
                                            <form:form  id="design-1-form" class="form-1 needs-validation"  method="POST" action="updatepreauthorization" name="preauthform" modelAttribute="preauth">
                                                <h3 class="wiz-items">
                                                    <span class="num-icon">1</span><span style="color:#000000">
                                                        Visit Information
                                                    </span>
                                                </h3>

                                                <input type="hidden" name="procedurecount" id="procedure_count" value="0">
                                                <input type="hidden" name="diagonisiscount" id="diagnosis_count" value="0">
                                                <input type="hidden" name="ebillid" id="ebillid" value="${id}">

                                                <input type="hidden" name="billstatus" id="billstatus" value="SUBMIT">
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
                                                                    <select class="form-control js-example-placeholder-multiple col-sm-12" required id="ddlpatient" tabindex="3" data-placeholder ="Select Patient"  name="ddlpatient" >
                                                                        <!-- <option value="0">--Select--</option> -->
                                                                    </select>
                                                                </div>
                                                            </div>

                                                            <div class="form-group row">
                                                                <label class="col-sm-3 col-form-label font-style-label" for="ddlinsurance">Insurance </label>
                                                                <div class="col-sm-9">
                                                                    <select class="form-control js-example-placeholder-multiple col-sm-12" id="ddlinsurance" disabled data-placeholder="Select insurance" tabindex="11" name="ddlinsurance" >
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
                                                                <label for="b-t-name" class="col-sm-3 col-form-label font-style-label">Treating Surgeon <span class="text-danger">*</span></label>
                                                                <div class="col-sm-9">
                                                                    <select class="form-control js-example-placeholder-multiple col-sm-12" required id="ddlprovider" data-placeholder="Select Treating Surgeon" tabindex="2"  name="ddlprovider">
                                                                    </select>
                                                                    <!--<input type="text" class="form-control" required name="technician" tabindex="4" id="technician"  placeholder="Treating Surgeon">                                                       -->
                                                                </div>
                                                            </div>	

                                                            <div class="form-group row" style="display:none;">
                                                                <label for="b-t-name" class="col-sm-3 col-form-label font-style-label">Date of Service <span class="text-danger">*</span></label>
                                                                <div class="col-sm-9">

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


                                                                        </div> 
                                                                        <div class="col-sm" >   

                                                                            <div class="form-group row">
                                                                                <label class="col-sm-4 col-form-label font-style-label"  for="ddlpractice">Practice</label>
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
                                                                        <div id="diagnoisis22div" style="display:none">
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
                                                                    <button type="button" class="btn btn-primary btn-sm"  style="margin-left: 216px;margin-top: -25px;height: 31px;"  onclick="uploadFile(this, '1');">Upload</button> 

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
                                                                    <button type="button" class="btn btn-primary btn-sm"style="margin-left: 216px;margin-top: -25px;height: 31px;" onclick="uploadFile(this, '2');">Upload</button> 
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
                                                                                //  $(this).datepicker('hide');
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
                                                                        var date = new Date();
                                                                        var today = new Date(date.getFullYear(), date.getMonth(), date.getDate());
                                                                        var flag = 'N';
                                                                        $(function () {

                                                                            var date = new Date();
                                                                            var currentDate = date.toISOString().slice(0, 10);
                                                                            var currentTime = date.getHours() + ':' + date.getMinutes();
                                                                            $(".data_currentdate").val(currentDate);

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
                                                                                //get the file name
                                                                                var fileName = file.name;//$(this).val();
//                                                                                   alert("fileName")
                                                                                console.log(fileName);
                                                                                //replace the "Choose a file" label
                                                                                $(this).next('.custom-file-label').html(fileName);
                                                                                $('#getfile1').val(fileName);
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
                                                                                var fileSize = event.target.files[0].size;
                                                                                if (fileSize > 50000000)
                                                                                {
                                                                                    msgbox("Uploaded file size exceeded 50MB", "preauthorization Form", "error");
                                                                                    $(this).next('.custom-file-label').html("Choose file...");
                                                                                    $(this).val(null);
                                                                                    return;
                                                                                }
                                                                                //get the file name
                                                                                var fileName = file1.name;
                                                                                console.log(fileName);
                                                                                //replace the "Choose a file" label
                                                                                $(this).next('.custom-file-label').html(fileName);
                                                                                $('#getfile2').val(fileName);
//                                                                                
                                                                            });

                                                                        });

                                                                        async function uploadFile(buttonObj, date_control_id) {

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
                                                                                    // $("#file_" + date_control_id+ "_upd").val('');
                                                                                    //  $("#file_" + date_control_id + "_upd").val(text);
                                                                                    $('#getfile' + date_control_id).val(text);

                                                                                });

                                                                                // console.log(response);
                                                                                if (response.status == 200) {
                                                                                    flag = 'Y';
                                                                                    msgbox("File upload successfully...!", "preauthorization Form", "success");
                                                                                    $(buttonObj).removeAttr('disabled');
                                                                                    $(buttonObj).text('Submit');
                                                                                } else {
                                                                                    $(buttonObj).removeAttr('disabled');
                                                                                    msgbox("File upload failed, try again after renaming the file...!", "preauthorization Form", "error");

                                                                                }
                                                                            }
                                                                        }

                                                                        $(document).ready(function () {

                                                                            $('#upload_1').hide();
                                                                            $('#upload_2').hide();

                                                                            function submitPreAuth() {
                                                                                if (!$('#term').is(':checked')) {
                                                                                    msgbox("Please Select Checkbox Mandatory", "Preauthorization Form", "error");
                                                                                    //console.log("second if - after message");
                                                                                    $('#flading').hide();
                                                                                    return  false;
                                                                                } else
                                                                                {
                                                                                    $('#resultcodev').val('');

                                                                                    var providerval = '';
                                                                                    var selected = [];
                                                                                    var diaselected = [];
                                                                                    $('#ddlpractice').removeAttr('disabled');
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

                                                                                    $('#procedurecodes').val(selected);
                                                                                    $('#disganosiscode').val(diaselected);

                                                                                    $('#result').val($('#procedurecode_result').html());
                                                                                    $('#resultcodev').val($('#procedurecodev_result').html());
                                                                                    return true;
                                                                                }
                                                                            }

                                                                            function ShowConfirmDraftSign() {
                                                                                AsyncConfirmDraftSign(
                                                                                        "Confirmation Box",
                                                                                        "Do you wish to Saved or Sign?",
                                                                                        MyDraftFunction,
                                                                                        MySignFunction
                                                                                        );
                                                                            }
                                                                            var retnvl = '';
                                                                            function MyDraftFunction() {
                                                                                $('#billstatus').val('SUBMIT');
                                                                                retnvl = 'SUBMIT';
                                                                                $("form[name='preauthform']").submit();
                                                                            }

                                                                            function MySignFunction() {
                                                                                $('#billstatus').val('SUMBIT');
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


                                                                            $("form[name='preauthform']").submit(function ()
                                                                            {
                                                                                $('#flading').show();

        <sec:authorize access="hasAnyRole('ROLE_ENTITY_ADMIN,ROLE_ENTITY_STAFF')">
                                                                                $('#billstatus').val('SUBMIT');
                                                                                return submitPreAuth();
        </sec:authorize>

        <sec:authorize access="hasAnyRole('ROLE_PRACTICE_PROVIDER,ROLE_REFERING_PROVIDER,ROLE_CORP_PROVIDER,ROLE_GROUPCLINIC_PROVIDER')">
                                                                                return submitPreAuth();
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
                                                                                    if (obj.length > 0) {
                                                                                        for (var i = 0; i < obj.length; i++) {
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
                                                                                        $('#dateofservice1').val('${ebill.dos1}');
                                                                                        $('#getfile1').val('${ebill.file1}');
                                                                                        $('#getfile2').val('${ebill.file2}');
                                                                                        $('#date_control_1').datepicker('setDate', '${ebill.dateofbenefit}').mask('99/99/9999');
                                                                                        $('#date_control_2').datepicker('setDate', '${ebill.dos1}').mask('99/99/9999');
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
                                                                                            //return "<a href='viewbill?id="+data.requestid+"'>"+data.fname +" "+data.lname+"</a>";

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
                                                                                var select = $('#ddlinsurance');
                                                                                select.find('option').remove();
                                                                                var practiceid = $("select#ddlpractice").val();
                                                                                if (practiceid !== '') {
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
                                                                                            if (obj.length > 0) {
                                                                                                for (var i = 0; i < obj.length; i++) {
                                                                                                    $('<option>').val(obj[i].ddlpatientid).text(obj[i].Patientname).appendTo(select);
                                                                                                }

        <c:forEach var="ebill" items="${ebilldetail}">
                                                                                                $('#ddlpatient').val(${ebill.patientid});
                                                                                                $("#ddlpatient").trigger("change");
                                                                                                $('#ddlpatient').attr('disabled', "true");
                                                                                                var chk_id = "${ebill.procedurecodes}";
                                                                                                //alert(chk_id.length);
                                                                                                //console.log("len");
                                                                                                var chk_arr = chk_id.split(',');
                                                                                                for (var i = 0; i < chk_arr.length; i++) {
                                                                                                    console.log(chk_arr[i]);
                                                                                                    $("#" + chk_arr[i]).prop("checked", true);
                                                                                                    //alert(chk_arr[i]);
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
                                                                                            if (obj.length > 0) {
                                                                                                for (var i = 0; i < obj.length; i++) {
                                                                                                    $('<option>').val(obj[i].provider_id).text(obj[i].first_name).appendTo(select);
                                                                                                }
                                                                                                //  alert(providerval);
                                                                                                if (providerval === "0") {
                                                                                                    $('#ddlprovider').val("");
                                                                                                    $("#ddlprovider").trigger("change");
                                                                                                } else {
                                                                                                    $('#ddlprovider').val(providerval);
                                                                                                    $("#ddlprovider").trigger("change");
                                                                                                }
                                                                                            }
                                                                                        }
                                                                                    });

                                                                                    $('#flading').hide();
                                                                                } else {
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
                                                                                if (patientid !== '0') {

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
                                                                                            if (obj.length > 0) {
                                                                                                for (var i = 0; i < obj.length; i++) {
                                                                                                    $('<option>').val(obj[i].payor_id).text(obj[i].name).attr('id', obj[i].payor_id).appendTo(select);

                                                                                                    if (obj[i].sec_payor_id !== '0') {
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
                                                                                            if (obj.length > 0) {
                                                                                                for (var i = 0; i < obj.length; i++) {
                                                                                                    //     var sv = response.split('~');
                                                                                                    $('#cname').val(obj[i].name_on_insurance_card);
                                                                                                    if (obj[i].mname !== "null" && obj[i].mname !== "") {
                                                                                                        $('#mname').val(obj[i].mname);
                                                                                                    } else {
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
                                                                                            } else {
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
                                                                                } else {
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

                                                                                if ($('#ddlprovider').val() == '') {
                                                                                    $('.form-1').addClass('was-validated');
                                                                                    $('a[href^="#next"]').hide();
                                                                                    $('#design-1-form-t-1').attr('href', "");
                                                                                    return false;
                                                                                } else if ($('#ddlprovider').val() == null) {
                                                                                    $('.form-1').addClass('was-validated');
                                                                                    $('a[href^="#next"]').hide();
                                                                                    $('#design-1-form-t-1').attr('href', "");
                                                                                    return false;
                                                                                } else {

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
                                                                        var procedurecode = $(this).attr("title");
                                                                        var headTag1 = "";
                                                                        var checkedcount = $('input[name="' + diagnosisdiv + '"]:checked').length;
                                                                        var checkedcount1 = $('input[title="' + procedurecode + '"]:checked').length;
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
                                                                                    //   alert(procedurediv);
                                                                                    //   alert(checkedcount1);
                                                                                    updateStatus1(headTag1, checkedcount1);
                                                                                }
                                                                            });
                                                                        });

    </script>
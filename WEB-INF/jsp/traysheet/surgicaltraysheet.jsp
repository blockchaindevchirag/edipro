<%-- 
    Document   : surgical_traysheet
    Created on : Dec 9, 2022, 11:14:21 AM
    Author     : sivan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%> 
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Surgical Tray Sheet</title>
        <jsp:include page="../includes/header.jsp"></jsp:include>
            <style>
                fieldset.scheduler-border {
                    border: 1px solid #ddd !important;
                    padding: 0 1.4em 1.4em 1.4em !important;
                    /*margin: 0 0 1.5em 0 !important;*/
                    -webkit-box-shadow: 0px 0px 0px 0px #000;
                    box-shadow: 0px 0px 0px 0px #000;
                    /*margin-top: 30px !important;*/
                }

                legend.scheduler-border {
                    font-size: 14px !important;
                    width: auto;
                    /*margin: 0 auto;*/
                    float: none;
                }
                .inputborder{
                    /*width: 60%;*/
                    border-top: hidden;
                    border-left: hidden;
                    border-right: hidden;
                    border-top-style: hidden;
                    /* border: 0; */
                    border-width: 1px;
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

                #more {
                    display: none;
                }

                #sig-canvas {
                    border: 2px dotted #CCCCCC;
                    border-radius: 15px;
                    cursor: crosshair;
                }
                .h6font{
                    font-size: 13px !important;
                }
                .cardbottom{
                    margin-bottom: 10px !important;
                }
                .cardheadclr{
                    background: #c4daed !important;
                }
                .modal{
                    /*top: -28px !important;*/
                    backdrop-filter: blur(30px);
                }
                canvas{
                    border:1px dashed;
                }

                .centerAligned input[type=text] {
                    text-align: center;
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
                .border-left-side
                {
                    border-left:4px solid #13bd8a;
                }
                .datepicker>.datepicker-days {
                    display: block;
                }
                .datepicker table tr td.disabled{
                    color: darkgray;
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

                .table td, .table th {
                    font-size: 14px;
                    padding: 0.25rem 0.5rem !important;
                    font-family: math !important;
                }
            </style>
        </head>
        <div class="pcoded-main-container">
            <div class="pcoded-wrapper">
                <div class="pcoded-content">
                    <div class="pcoded-inner-content">
                        <div class="main-body">
                            <div class="page-wrapper">

                                <div class="m-t-10 m-b-10">
                                    <button type="button" onclick="addNewSurgicalSheet()"  id="btnnewSurgicalSheet" class="btn btn-warning" title="New Tray Sheet"><i class="fas fa-plus-circle text-white"></i> New Surgical Sheet</button>
                                </div>

                                <div class="card col-12">
                                    <div class="card-body">

                                        <div id="table_v">
                                            <div class="dt-responsive table-responsive">
                                                <table  id="eligibilitytable" width="98%" style="width: 0px;" class="table table-striped table-bordered nowrap">
                                                    <thead>
                                                        <tr>
                                                            <th><input id="headercheck" type="checkbox"></th>
                                                            <th>S No</th>
                                                            <th>Patient</th>
                                                            <th>Practice</th>
                                                            <th>DOS</th>
                                                            <th>Created By</th>
                                                            <th>Created Date</th>
                                                            <th>Action</th> 
                                                        </tr>
                                                    </thead>
                                                    <tbody>   
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>

                                        <div id="new_traysheet" class="d-none m-t-15">
                                            <div class="row">
                                            <form:form  id="form1" class="form-1 needs-validation"  style="width:100%;" name="surgicalsheetform"  method="POST" action="savesurgicaltraysheet" modelAttribute="sheet">

                                                <div class="accordion" id="accordionExample">

                                                    <div class="card cardbottom card-border-c-green ">
                                                        <div class="row">
                                                            <h5 class="p-l-40 p-t-10"><a href="#!" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">Surgical Tray Sheet   </a></h5>
                                                        </div>
                                                        <hr style="margin:0; padding:0;">
                                                        <div id="collapseOne" class=" card-body collapse show" aria-labelledby="headingOne" data-parent="#accordionExample">
                                                            <div class="form-group row">

                                                                <div class="col-lg-4 col-md-9 col-sm-12">
                                                                    <label class="col-form-label text-lg-right">Patient</label>
                                                                    <select id="patientCombo" class="js-example-basic-single form-control" name="ddlpatientid">
                                                                        <option value="0">Select Patient</option>
                                                                        <c:forEach var="patient" items="${patientlist}">
                                                                            <option value = "${patient.ddlpatientid}" >${patient.ddlpatient}</option>
                                                                        </c:forEach>
                                                                    </select>
                                                                </div>

                                                                <div class="col-lg-4 col-md-9 col-sm-12">
                                                                    <label class="form-label">Practice</label>
                                                                    <input type="text" name="practice" readonly class="form-control" id="practice"  style="height:29px;"/>
                                                                    <input type="hidden" name="practiceAddress"  id="practiceAddress" />
                                                                    <input type="hidden" name="practicePhone"  id="practicePhone" />
                                                                    <input type="hidden" name="practiceFax"  id="practiceFax" />
                                                                    <input type="hidden" name="practiceId"  id="practiceId" />
                                                                </div>  
                                                            </div>
                                                            <div class="row_patient" id="row_patient">
                                                                <div class="form-row">
                                                                    <div class="form-group col-md-6">
                                                                        <label for="inputFullName">Full name</label>
                                                                        <input type="text" class="form-control" id="inputFullName" placeholder="Full Name" readonly>
                                                                        <input type="hidden"   id="inputLastName"  />
                                                                        <input type="hidden"   id="inputFirstName" />
                                                                    </div>
                                                                    <div class="col-md-3">
                                                                        <div class="form-group">
                                                                            <label class="form-label" for="inputGender">Gender <span class="text-danger">*</span></label>   
                                                                            <select class="form-control" required disabled name="inputGender"  id="inputGender" >
                                                                                <option value = "" >--Select--</option>
                                                                                <c:forEach var="benefits" items="${genderlist}">
                                                                                    <option value = ${benefits.genderid} >${benefits.gender}</option>
                                                                                </c:forEach>
                                                                            </select>
                                                                        </div>
                                                                    </div>
                                                                    <div class="form-group col-md-3">
                                                                        <label for="inputDOB">DOB</label>
                                                                        <input type="date" class="form-control" id="inputDOB" name="patientDob" placeholder="DOB" readonly>
                                                                    </div>
                                                                </div>
                                                                <div class="form-row">
                                                                    <div class="form-group col-md-6">
                                                                        <label for="inputAddress">Address</label>
                                                                        <input type="text" readonly class="form-control" id="inputAddress">
                                                                    </div>
                                                                    <div class="form-group col-md-2">
                                                                        <label for="inputCity">City</label>
                                                                        <input type="text" readonly class="form-control" id="inputCity">
                                                                    </div>
                                                                    <div class="form-group col-md-2">
                                                                        <label for="inputState">State</label>
                                                                        <input type="text" readonly class="form-control" id="inputState">
                                                                    </div>
                                                                    <div class="form-group col-md-2">
                                                                        <label for="inputZip">Zip Code</label>
                                                                        <input type="text" readonly class="form-control" id="inputZip">
                                                                    </div>
                                                                </div>
                                                                <div class="form-row">
                                                                    <div class="form-group col-md-4">
                                                                        <label for="inputEmail">Email</label>
                                                                        <input type="text" readonly class="form-control" id="inputEmail">
                                                                    </div>
                                                                    <div class="form-group col-md-4">
                                                                        <label for="inputPhone">Phone Number</label>
                                                                        <input type="text" readonly class="form-control" id="inputPhone" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*?)\..*/g, '$1');">
                                                                    </div>
                                                                    <div class="form-group col-md-4">
                                                                        <label for="inputEPhone">Emergency contact</label>
                                                                        <input type="text" readonly class="form-control" id="inputEPhone" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*?)\..*/g, '$1');">
                                                                    </div>
                                                                </div>
                                                                <div class="form-row">
                                                                    <div class="form-group col-md-4">
                                                                        <label for="primaryInsurance">Primary Insurance</label>
                                                                        <input type="text" readonly class="form-control" id="primaryInsurance" name="primaryInsurance">
                                                                    </div>
                                                                    <div class="form-group col-md-4">
                                                                        <label for="primaryMemberId">Primary Member Id</label>
                                                                        <input type="text" readonly class="form-control" id="primaryMemberId" name="primaryMemberId">
                                                                    </div>
                                                                    <!--                                                                    <div class="form-group col-md-4">
                                                                                                                                            <label for="inputLicense">Driver License</label>
                                                                                                                                            <input type="text" readonly class="form-control" id="inputLicense">
                                                                                                                                        </div>-->
                                                                    <div class="form-group col-md-4">
                                                                        <label for="inputSSN">SSN</label>
                                                                        <input type="text" readonly class="form-control" id="inputSSN">
                                                                    </div>
                                                                </div> 
                                                                <div class="form-row">
                                                                    <div class="form-group col-md-4">
                                                                        <label for="secondaryInsurance">Secondary Insurance</label>
                                                                        <input type="text" readonly class="form-control" id="secondaryInsurance" name="secondaryInsurance">
                                                                    </div>
                                                                    <div class="form-group col-md-4">
                                                                        <label for="secondaryMemberId">Secondary Member Id</label>
                                                                        <input type="text" readonly class="form-control" id="secondaryMemberId" name="secondaryMemberId">
                                                                    </div>
                                                                    <div class="form-group col-md-4">
                                                                        <label for="">Treating Provider</label>
                                                                        <select class="form-control js-example-placeholder-multiple" id="providerId" data-placeholder="Select Treating Surgeon" tabindex="2"  name="providerId"></select>
                                                                        <input type="hidden" id="providerText" name="treatingProvider">
                                                                    </div>
                                                                </div>
                                                                <div class="form-row">
                                                                    <div class="form-group col-md-4">
                                                                        <label for="">Individual NPI</label>
                                                                        <input type="text" readonly class="form-control" id="individual_npi" name="individualNpi">
                                                                    </div>
                                                                    <div class="form-group col-md-4">
                                                                        <label for="">Ind.PTAN</label>
                                                                        <input type="text" readonly class="form-control" id="medicare_ptan" name="individualPtan">
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div> 
                                                </div>




                                                <div class="card card-border-c-green m-t-15">
                                                    <div class="row ">
                                                        <h5 class="p-l-40 p-t-10">Surgical Tray Sheet</h5>
                                                    </div>
                                                    <hr style="padding:0; margin:0;">
                                                    <div class="card-body">

                                                        <div class="col-12 m-t-10">
                                                            <div class="form-group row col-12 p-l-0">
                                                                <div class="col-lg-4 row p-l-0" style="margin-left: 2px;">
                                                                    <label for="dateOfService" class="col-lg-5 col-sm-6 col-md-3 col-form-label font-style-label p-l-0">Date of Service  <span class="text-danger">*</span></label>
                                                                    <div class="col-sm-6 col-md-3 col-lg-7 p-l-0">
                                                                        <input type="text" class="form-control data_currentdate_maxdate"    name="dateOfService" id="dateOfService" autocomplete="off">
                                                                    </div>
                                                                </div>
                                                                <div class="col-lg-8">
                                                                    <div class="form-group row">
                                                                        <label class="col-form-label col-lg-3 col-sm-12 text-lg-right font-style-label">Admit Time</label>
                                                                        <div class="col-lg-3 col-md-9 col-sm-12">
                                                                            <input class="form-control"  type="text"autocomplete="off" id="patientAdmitTime" name="patientAdmitTime">
                                                                        </div>
                                                                        <label class="col-form-label col-lg-3 col-sm-12 text-lg-right font-style-label">Discharge Time</label>
                                                                        <div class="col-lg-3 col-md-9 col-sm-12">
                                                                            <input class="form-control"  type="text" id="patientDischargeTime"  autocomplete="off" placeholder="" name="patientDischargeTime">
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="form-group row border-left-side">
                                                                <label for="" class="col-sm-2 col-form-label font-style-label"><i class="fas fa-circle text-c-blue f-10 m-r-10"></i> Vital</label>
                                                                <hr>

                                                                <div class="form-row col-12">
                                                                    <div class="form-group col-md-3 col-sm-12">
                                                                        <label for="patientTemparature">Temperature</label>
                                                                        <input type="number" class="form-control"  name="patientTemparature" id="patientTemparature" placeholder="Enter Temperature"  maxlength="3" autocomplete="off" oninput="this.value=this.value.slice(0,this.maxLength)">
                                                                    </div>
                                                                    <div class="form-group col-md-3 col-sm-12">
                                                                        <label for="patientBloodPressure">Blood Pressure</label>
                                                                        <input type="text" class="form-control" name="patientBloodPressure" id="patientBloodPressure"  placeholder="Blood pressure" autocomplete="off" maxlength="12" oninput="restrictAlphas(event)">
                                                                    </div>
                                                                    <div class="form-group col-md-3  col-sm-12">
                                                                        <label for="patientHeartRate">Heart Rate</label>
                                                                        <input type="number" class="form-control" name="patientHeartRate" id="patientHeartRate" placeholder="Heart Rate"  maxlength="10" autocomplete="off" oninput="this.value=this.value.slice(0,this.maxLength)">
                                                                    </div>
                                                                    <div class="form-group col-md-3 col-sm-12">
                                                                        <label for="patientSpo2">SpO2</label>
                                                                        <input type="number" class="form-control"  name="patientSpo2" id="patientSpo2" placeholder="Enter SpO2"  maxlength="10" autocomplete="off" oninput="this.value=this.value.slice(0,this.maxLength)">
                                                                    </div>

                                                                </div>
                                                                <div class="form-row col-12">
                                                                    <div class="form-group col-md-3 col-sm-12">
                                                                        <label for="patientHeight">Height(Feet and Inch)</label>
                                                                        <input type="text" class="form-control"  name="patientHeight"  id="patientHeight" placeholder="Enter Height"  maxlength="20" autocomplete="off" oninput="this.value=this.value.slice(0,this.maxLength)">
                                                                    </div>
                                                                    <div class="form-group col-md-3 col-sm-12">
                                                                        <label for="patientWeight">Weight(Pounds)</label>
                                                                        <input type="number" class="form-control"  name="patientWeight"  id="patientWeight" placeholder="Enter Weight"  maxlength="3" autocomplete="off" oninput="this.value=this.value.slice(0,this.maxLength)">
                                                                    </div>
                                                                    <div class="form-group col-md-3 col-sm-12">
                                                                        <label for="patientBMI">BMI</label>
                                                                        <input type="number" class="form-control"  name="patientBMI"  id="patientBMI" placeholder="Enter BMI"  maxlength="10" autocomplete="off" oninput="this.value=this.value.slice(0,this.maxLength)">
                                                                    </div>
                                                                    <div class="form-group col-md-3 col-sm-12">
                                                                        <label for="patientRespRate">Resp Rate</label>
                                                                        <input type="number" class="form-control"  name="patientRespRate"  id="patientRespRate" placeholder="Enter Resp Rate" autocomplete="off"  maxlength="10"  oninput="this.value=this.value.slice(0,this.maxLength)">
                                                                    </div>
                                                                </div>
                                                            </div>

                                                            <hr><!-- comment -->
                                                            <div class="form-group row border-left-side">
                                                                <label for="" class=" col-form-label font-style-label m-t-5 m-l-10 "><i class="fas fa-circle text-c-green f-10 m-r-10 m-l-5"></i>Anesthesia (I.V) Sedation & Oral Sedation </label>

                                                                <div class="form-row col-12">
                                                                    <div class="form-group col-lg-4 col-md-4 col-sm-12">
                                                                        <label for=""></label>
                                                                        <input type="text" class="form-control"  name="anesthesiaType1" id="anesthesiaType1" maxlength="40" autocomplete="off">
                                                                    </div>
                                                                    <div class="form-group  col-lg-4 col-md-4 col-sm-12">
                                                                        <label for=""></label>
                                                                        <input type="text" class="form-control"  name="anesthesiaType2" id="anesthesiaType2" maxlength="40" autocomplete="off" >
                                                                    </div>
                                                                    <div class="form-group  col-lg-4 col-md-4 col-sm-12">
                                                                        <label for=""></label>
                                                                        <input type="text" class="form-control" name="anesthesiaType3" id="anesthesiaType3" maxlength="40" autocomplete="off" >
                                                                    </div>

                                                                </div>
                                                                <div class="form-row col-12">
                                                                    <div class="form-group  col-lg-4 col-md-4 col-sm-12">
                                                                        <label for=""></label>
                                                                        <input type="text" class="form-control"  name="anesthesiaType4"  id="anesthesiaType4" maxlength="40" autocomplete="off">
                                                                    </div>
                                                                    <div class="form-group  col-lg-4 col-md-4 col-sm-12">
                                                                        <label for=""></label>
                                                                        <input type="text" class="form-control"  name="anesthesiaType5"  id="anesthesiaType5" maxlength="40" autocomplete="off" >
                                                                    </div>
                                                                    <div class="form-group  col-lg-4 col-md-4 col-sm-12">
                                                                        <label for=""></label>
                                                                        <input type="text" class="form-control"  name="anesthesiaType6"  id="anesthesiaType6" maxlength="40" autocomplete="off">
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <hr>
                                                            <div class="form-group row border-left-side newContentOralAnesthesia" >
                                                                <label for="anesthesiaType" class="col-sm-12 co-12 col-form-label font-style-label m-t-5"><i class="fas fa-circle text-c-red f-10 m-r-10"></i>Oral Anesthesia</label>
                                                                <div class="col-12">
                                                                    <div class="custom-control custom-checkbox m-t-5">
                                                                        <input type="checkbox" name="oralAnesthesiaContentType" class=" custom-control-input input-primary" id="oralAnesthesiaContentType" value="OA">
                                                                        <label class="custom-control-label" for="oralAnesthesiaContentType">Lidocaine 2% <input type="number" name="oralAnesthesiaType" id="oralAnesthesiaType" class="dateborder inputContent" style="width:80px; text-align:center;"  maxlength="5" disabled autocomplete="off"  oninput="this.value=this.value.slice(0,this.maxLength)"> x 1.8cc 1:100,000 epinephrine</label>
                                                                    </div>
                                                                    <div class="custom-control custom-checkbox m-t-5">
                                                                        <input type="checkbox" name="oralAnesthesiaContentType1" class=" custom-control-input input-primary" id="oralAnesthesiaContentType1" value="OA1">
                                                                        <label class="custom-control-label" for="oralAnesthesiaContentType1">Carbocaine 3% <input type="number" name="oralAnesthesiaType1"  id="oralAnesthesiaType1" class="dateborder inputContent"  style="width:80px; text-align:center;"  maxlength="5" disabled autocomplete="off" oninput="this.value=this.value.slice(0,this.maxLength)"> x 1.8cc 1:100,000 epinephrine </label>
                                                                    </div>
                                                                    <div class="custom-control custom-checkbox m-t-5">
                                                                        <input type="checkbox" name="oralAnesthesiaContentType2" class=" custom-control-input input-primary" id="oralAnesthesiaContentType2" value="OA2">
                                                                        <label class="custom-control-label" for="oralAnesthesiaContentType2">Carbocaine 3% <input type="number" name="oralAnesthesiaType2" id="oralAnesthesiaType2" class="dateborder inputContent" style="width:80px; text-align:center;"   maxlength="5" disabled autocomplete="off" oninput="this.value=this.value.slice(0,this.maxLength)"> x 1.8ccc without epinephrine</label>
                                                                    </div>
                                                                    <div class="custom-control custom-checkbox m-t-5">
                                                                        <input type="checkbox" name="oralAnesthesiaContentType3" class=" custom-control-input input-primary" id="oralAnesthesiaContentType3" value="OA3">
                                                                        <label class="custom-control-label" for="oralAnesthesiaContentType3">Septocaine 4% <input type="number" name="oralAnesthesiaType3" id="oralAnesthesiaType3" class="dateborder inputContent" style="width:80px; text-align:center;"  maxlength="5" disabled autocomplete="off" oninput="this.value=this.value.slice(0,this.maxLength)"> x 1.8cc 1:100,000 epinephrine</label>
                                                                    </div>
                                                                    <div class="custom-control custom-checkbox m-t-5">
                                                                        <input type="checkbox" name="oralAnesthesiaContentType4" class=" custom-control-input input-primary" id="oralAnesthesiaContentType4" value="OA4">
                                                                        <label class="custom-control-label" for="oralAnesthesiaContentType4"> Bupivicaine 0.5% <input type="number" name="oralAnesthesiaType4" id="oralAnesthesiaType4" class="dateborder inputContent"  style="width:80px; text-align:center;" maxlength="5" disabled autocomplete="off" oninput="this.value=this.value.slice(0,this.maxLength)"> x 1.8cc 1:200,000 epinephrine</label>
                                                                    </div>
                                                                    <div class="custom-control custom-checkbox m-t-5">
                                                                        <input type="checkbox" name="oralAnesthesiaContentType5" class=" custom-control-input input-primary" id="oralAnesthesiaContentType5" value="OA5">
                                                                        <label class="custom-control-label" for="oralAnesthesiaContentType5">Marcaine  0.5% <input type="number" name="oralAnesthesiaType5" id="oralAnesthesiaType5" class="dateborder inputContent"   style="width:80px; text-align:center;" maxlength="5" disabled autocomplete="off"  oninput="this.value=this.value.slice(0,this.maxLength)"> x 1.8cc 1:200,00 epinephrine</label>
                                                                    </div>
                                                                    <div class="custom-control custom-checkbox m-t-5">
                                                                        <input type="checkbox" name="oralAnesthesiaContentType6" class=" custom-control-input input-primary" id="oralAnesthesiaContentType6" value="OA6">
                                                                        <label class="custom-control-label" for="oralAnesthesiaContentType6">Other: <input type="text" name="oralAnesthesiaType6" id="oralAnesthesiaType6" class="dateborder inputContent col-sm-6 col-md-6 col-lg-8" style="text-align:center;"   maxlength="35" disabled  autocomplete="off" oninput="this.value=this.value.slice(0,this.maxLength)">epi</label>
                                                                    </div>
                                                                </div>     
                                                            </div>
                                                            <hr>
                                                            <div class="form-group row border-left-side">
                                                                <label for="rxType" class="col-sm-2 col-form-label font-style-label m-t-5 rx_type" ><i class="fas fa-circle text-c-green f-10 m-r-10"></i>Rx</label>                                                                                                                                    
                                                                <div class="col-12">
                                                                    <div class="custom-control custom-checkbox m-t-5">
                                                                        <input type="checkbox" name="rxContentType" class=" custom-control-input input-primary" id="rxContentType" value="RX">
                                                                        <label class="custom-control-label" for="rxContentType">Amox 500mg x <input type="number" name="rxType" id="rxType" class="dateborder" disabled  maxlength="5" style=" width:80px;text-align: center;"  autocomplete="off"   oninput="this.value=this.value.slice(0,this.maxLength)"> Sig: Take 1tab TID until gone</label>
                                                                    </div>
                                                                    <div class="custom-control custom-checkbox m-t-5">
                                                                        <input type="checkbox" name="rxContentType1" class=" custom-control-input input-primary" id="rxContentType1" value="RX1">
                                                                        <label class="custom-control-label" for="rxContentType1">Amox 500mg x <input type="number" name="rxType1" id="rxType1" class="dateborder" disabled  maxlength="5" style="width:80px;text-align: center;"  autocomplete="off"  oninput="this.value=this.value.slice(0,this.maxLength)"> Sig: take 4tabs 1hr prior treatment, then 1Q8h til gone  </label>
                                                                    </div>
                                                                    <div class="custom-control custom-checkbox m-t-5">
                                                                        <input type="checkbox" name="rxContentType2" class=" custom-control-input input-primary" id="rxContentType2" value="RX2">
                                                                        <label class="custom-control-label" for="rxContentType2">Pen 600mg x <input type="number" name="rxType2" id="rxType2" class="dateborder" disabled  maxlength="5" style="width:80px; text-align: center;"  autocomplete="off"  oninput="this.value=this.value.slice(0,this.maxLength)"> Sig: Take 1tab TID until gone</label>
                                                                    </div>
                                                                    <div class="custom-control custom-checkbox m-t-5">
                                                                        <input type="checkbox" name="rxContentType3" class=" custom-control-input input-primary" id="rxContentType3" value="RX3">
                                                                        <label class="custom-control-label" for="rxContentType3"> Clindamycin 300mg x <input type="number" name="rxType3" id="rxType3" class="dateborder" disabled  maxlength="5" style="width:80px; text-align: center;"  autocomplete="off"  oninput="this.value=this.value.slice(0,this.maxLength)"> Take 1 tablet BID until gone </label>
                                                                    </div>
                                                                    <div class="custom-control custom-checkbox m-t-5">
                                                                        <input type="checkbox" name="rxContentType4" class=" custom-control-input input-primary" id="rxContentType4" value="RX4">
                                                                        <label class="custom-control-label" for="rxContentType4"> Z-Pack Take as package direction</label>
                                                                    </div>
                                                                    <div class="custom-control custom-checkbox m-t-5">
                                                                        <input type="checkbox" name="rxContentType5" class=" custom-control-input input-primary" id="rxContentType5" value="RX5">
                                                                        <label class="custom-control-label"  for="rxContentType5">Naproxen 50mg x <input type="number" name="rxType4" id="rxType4" class="dateborder" disabled   maxlength="5" style="width:80px; text-align: center;"  autocomplete="off"  oninput="this.value=this.value.slice(0,this.maxLength)">Sig: Take 1 tablet Q4-6h prn </label>
                                                                    </div>
                                                                    <div class="custom-control custom-checkbox m-t-5">
                                                                        <input type="checkbox" name="rxContentType6" class=" custom-control-input input-primary" id="rxContentType6" value="RX6">
                                                                        <label class="custom-control-label" for="rxContentType6"> Augmentin 500mg x <input type="number" name="rxType5" id="rxType5" class="dateborder" disabled  maxlength="5"  style="width:80px; text-align: center;"  autocomplete="off"  oninput="this.value=this.value.slice(0,this.maxLength)">Sig: take 1 TID  x 5, 1 BID x 6-10</label>
                                                                    </div>
                                                                    <div class="custom-control custom-checkbox m-t-5">
                                                                        <input type="checkbox" name="rxContentType7" class=" custom-control-input input-primary" id="rxContentType7" value="RX7">
                                                                        <label class="custom-control-label" for="rxContentType7">Augmentin 875mg  x <input type="number" name="rxType6" id="rxType6" class="dateborder" disabled  maxlength="5" style="width:80px; text-align: center;"  autocomplete="off"   oninput="this.value=this.value.slice(0,this.maxLength)"> Sig: take 1 Tablet TID </label>
                                                                    </div>
                                                                    <div class="custom-control custom-checkbox m-t-5">
                                                                        <input type="checkbox" name="rxContentType8" class=" custom-control-input input-primary" id="rxContentType8" value="RX8">
                                                                        <label class="custom-control-label" for="rxContentType8">Decadron injection 4mg/ml x 1ml </label>
                                                                    </div>
                                                                    <div class="custom-control custom-checkbox m-t-5">
                                                                        <input type="checkbox" name="rxContentType9" class=" custom-control-input input-primary" id="rxContentType9" value="RX9">
                                                                        <label class="custom-control-label" for="rxContentType9">Metformin 850mg </label>
                                                                    </div>
                                                                    <div class="custom-control custom-checkbox m-t-5">
                                                                        <input type="checkbox" name="rxContentType10" class=" custom-control-input input-primary" id="rxContentType10" value="RX10">
                                                                        <label class="custom-control-label" for="rxContentType10">Januvia 100mg </label>
                                                                    </div>
                                                                    <div class="custom-control custom-checkbox m-t-5">
                                                                        <input type="checkbox" name="rxContentType11" class=" custom-control-input input-primary" id="rxContentType11" value="RX11">
                                                                        <label class="custom-control-label" for="rxContentType11">Rosuvastatin 10mg </label>
                                                                    </div>
                                                                    <div class="custom-control custom-checkbox m-t-5">
                                                                        <input type="checkbox" name="rxContentType12" class=" custom-control-input input-primary" id="rxContentType12" value="RX12">
                                                                        <label class="custom-control-label" for="rxContentType12">Flector 180mg</label>
                                                                    </div>
                                                                    <div class="custom-control custom-checkbox m-t-5">
                                                                        <input type="checkbox" name="rxContentType13" class=" custom-control-input input-primary" id="rxContentType13" value="RX13">
                                                                        <label class="custom-control-label" for="rxContentType13">Ibuprofen 600mg x <input type="number" name="rxType7" id="rxType7" class="dateborder" disabled   maxlength="5" style="width:80px; text-align: center;"  autocomplete="off"  oninput="this.value=this.value.slice(0,this.maxLength)">Sig:  take 1 tablet Q4-6h prn for pain if needed</label>
                                                                    </div>
                                                                    <div class="custom-control custom-checkbox m-t-5">
                                                                        <input type="checkbox" name="rxContentType14" class=" custom-control-input input-primary" id="rxContentType14" value="RX14">
                                                                        <label class="custom-control-label" for="rxContentType14">Ibuprofen 800mg x <input type="number" name="rxType8" id="rxType8" class="dateborder" disabled  maxlength="5" style="width:80px; text-align: center;"  autocomplete="off"  oninput="this.value=this.value.slice(0,this.maxLength)">Sig: Take 1 tablet Q4-6h prn for pain if needed</label>
                                                                    </div>
                                                                    <div class="custom-control custom-checkbox m-t-5">
                                                                        <input type="checkbox" name="rxContentType15" class=" custom-control-input input-primary" id="rxContentType15" value="RX15">
                                                                        <label class="custom-control-label" for="rxContentType15">Norco 325/5mg x <input type="number" name="rxType9" id="rxType9" class=" dateborder" disabled  maxlength="5" style="width:80px; text-align: center;"  autocomplete="off"  oninput="this.value=this.value.slice(0,this.maxLength)"> Sig: Take 1 tablet Q4-6h prn for pain   </label>
                                                                    </div>
                                                                    <div class="custom-control custom-checkbox m-t-5">
                                                                        <input type="checkbox" name="rxContentType16" class=" custom-control-input input-primary" id="rxContentType16" value="RX16">
                                                                        <label class="custom-control-label" for="rxContentType16">Tylenol 500mg x <input type="number" name="rxType10" id="rxType10" class=" dateborder" disabled  maxlength="5" style="width:80px; text-align: center;"  autocomplete="off"  oninput="this.value=this.value.slice(0,this.maxLength)"> Take 1 tablet Q4-6h prn for pain </label>
                                                                    </div>
                                                                    <div class="custom-control custom-checkbox m-t-5">
                                                                        <input type="checkbox" name="rxContentType17" class=" custom-control-input input-primary" id="rxContentType17" value="RX17">
                                                                        <label class="custom-control-label" for="rxContentType17">CHX 0.12% (#1) sig, rinse 1/2 cap BID until gone </label>
                                                                    </div>
                                                                    <div class="custom-control custom-checkbox m-t-5">
                                                                        <input type="checkbox" name="rxContentType18" class=" custom-control-input input-primary" id="rxContentType18" value="RX18">
                                                                        <label class="custom-control-label"  for="rxContentType18">CHX 0.12% (#1) sig, rinse 1/2 cap TID for 7 days </label>
                                                                    </div>
                                                                    <div class="custom-control custom-checkbox m-t-5">
                                                                        <input type="checkbox" name="rxContentType19" class=" custom-control-input input-primary" id="rxContentType19" value="RX19">
                                                                        <label class="custom-control-label" for="rxContentType19">Other:<input type="text" name="rxType11" id="rxType11" class="dateborder col-sm-6 col-md-6 col-lg-10" disabled style="text-align: center;"  autocomplete="off"  maxlength="35" oninput="this.value=this.value.slice(0,this.maxLength)"></label>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <hr>
                                                            <div class="form-group row border-left-side">
                                                                <label for="woundDrainageType" class=" col-form-label font-style-label m-t-5 m-l-10 "><i class="fas fa-circle text-c-blue f-10 m-r-10 m-l-5"></i>Biopsy of Wound Drainage Abscesses</label>
                                                                <div class="col-12">
                                                                    <div class="custom-control custom-checkbox m-t-5">
                                                                        <input type="checkbox" name="woundDrainageType" class=" custom-control-input input-primary" id="woundDrainageType" value="WD">
                                                                        <label class="custom-control-label" for="woundDrainageType">Purulent (pus) drainage  <input type="number" name="woundDrainage" id="woundDrainage" class="dateborder" disabled  maxlength="5" style=" width:80px;text-align: center;"  autocomplete="off"   oninput="this.value=this.value.slice(0,this.maxLength)"> ml.</label>
                                                                    </div>
                                                                    <div class="custom-control custom-checkbox m-t-5">
                                                                        <input type="checkbox" name="woundDrainageType1" class=" custom-control-input input-primary" id="woundDrainageType1" value="WD1">
                                                                        <label class="custom-control-label" for="woundDrainageType1">Acute abscess drainage  <input type="number" name="woundDrainage1" id="woundDrainage1" class="dateborder" disabled  maxlength="5" style="width:80px;text-align: center;"  autocomplete="off"  oninput="this.value=this.value.slice(0,this.maxLength)"> ml.</label>
                                                                    </div>
                                                                    <div class="custom-control custom-checkbox m-t-5">
                                                                        <input type="checkbox" name="woundDrainageType2" class=" custom-control-input input-primary" id="woundDrainageType2" value="WD2">
                                                                        <label class="custom-control-label" for="woundDrainageType2">Subacute abscess drainage <input type="number" name="woundDrainage2" id="woundDrainage2" class="dateborder" disabled  maxlength="5" style="width:80px; text-align: center;"  autocomplete="off"  oninput="this.value=this.value.slice(0,this.maxLength)"> ml.</label>
                                                                    </div>
                                                                    <div class="custom-control custom-checkbox m-t-5">
                                                                        <input type="checkbox" name="woundDrainageType3" class=" custom-control-input input-primary" id="woundDrainageType3" value="WD3">
                                                                        <label class="custom-control-label" for="woundDrainageType3">Chronic abscess drainage<input type="number" name="woundDrainage3" id="woundDrainage3" class="dateborder" disabled  maxlength="5" style="width:80px; text-align: center;"  autocomplete="off"  oninput="this.value=this.value.slice(0,this.maxLength)"> ml.</label>
                                                                    </div>
                                                                    <div class="custom-control custom-checkbox m-t-5">
                                                                        <input type="checkbox" name="woundDrainageType4" class=" custom-control-input input-primary" id="woundDrainageType4" value="WD4">
                                                                        <label class="custom-control-label" for="woundDrainageType4">Granulomatous drainage <input type="number" name="woundDrainage4" id="woundDrainage4" class="dateborder" disabled  maxlength="5" style="width:80px; text-align: center;"  autocomplete="off"  oninput="this.value=this.value.slice(0,this.maxLength)"> ml.</label>
                                                                    </div>
                                                                    <div class="custom-control custom-checkbox m-t-5">
                                                                        <input type="checkbox" name="woundDrainageType5" class=" custom-control-input input-primary" id="woundDrainageType5" value="WD5">
                                                                        <label class="custom-control-label"  for="woundDrainageType5">Tissue infected drainage <input type="number" name="woundDrainage5" id="woundDrainage5" class="dateborder" disabled   maxlength="5" style="width:80px; text-align: center;"  autocomplete="off"  oninput="this.value=this.value.slice(0,this.maxLength)"> ml.</label>
                                                                    </div>
                                                                    <div class="custom-control custom-checkbox m-t-5">
                                                                        <input type="checkbox" name="woundDrainageType6" class=" custom-control-input input-primary" id="woundDrainageType6" value="WD6">
                                                                        <label class="custom-control-label" for="woundDrainageType6">Mucosa fluids  <input type="number" name="woundDrainage6" id="woundDrainage6" class="dateborder" disabled  maxlength="5"  style="width:80px; text-align: center;"  autocomplete="off"  oninput="this.value=this.value.slice(0,this.maxLength)"> ml.</label>
                                                                    </div>
                                                                    <div class="custom-control custom-checkbox m-t-5">
                                                                        <input type="checkbox" name="woundDrainageType7" class=" custom-control-input input-primary" id="woundDrainageType7" value="WD7">
                                                                        <label class="custom-control-label" for="woundDrainageType7">Ulcers / Fibrosis <input type="number" name="woundDrainage7" id="woundDrainage7" class="dateborder" disabled  maxlength="5" style="width:80px; text-align: center;"  autocomplete="off"   oninput="this.value=this.value.slice(0,this.maxLength)"> ml.</label>
                                                                    </div>
                                                                    <div class="custom-control custom-checkbox m-t-5">
                                                                        <input type="checkbox" name="woundDrainageType8" class=" custom-control-input input-primary" id="woundDrainageType8" value="WD8">
                                                                        <label class="custom-control-label" for="woundDrainageType8">Abscess blood drainage <input type="number" name="woundDrainage8" id="woundDrainage8" class="dateborder" disabled  maxlength="5" style="width:80px; text-align: center;"  autocomplete="off"  oninput="this.value=this.value.slice(0,this.maxLength)"> ml.</label>
                                                                    </div>
                                                                    <div class="custom-control custom-checkbox m-t-5">
                                                                        <input type="checkbox" name="woundDrainageType9" class=" custom-control-input input-primary" id="woundDrainageType9" value="WD9">
                                                                        <label class="custom-control-label" for="woundDrainageType9">Wound mucosa inflammation <input type="number" name="woundDrainage9" id="woundDrainage9" class="dateborder" disabled  maxlength="5" style="width:80px; text-align: center;"  autocomplete="off"  oninput="this.value=this.value.slice(0,this.maxLength)"> ml.</label>
                                                                    </div>
                                                                </div>
                                                            </div>

                                                            <hr>
                                                            <div class="form-group row border-left-side">
                                                                <label for="sutureType" class="col-lg-2 col-md-3 col-sm-12 col-form-label font-style-label m-t-5"><i class="fas fa-circle text-c-purple f-10 m-r-10"></i>Suture type</label>
                                                                <div class="col-md-3 col-sm-12 col-lg-4">
                                                                    <select class="required form-control js-example-basic-multiple col-sm-12 suture_type"  multiple="" id="sutureType"  name ="sutureType">
                                                                        <c:forEach var="suture" items="${sutureType}">
                                                                            <option value = "${suture.id}" >${suture.value}</option>
                                                                        </c:forEach>
                                                                    </select>
                                                                    <input type="hidden" class=" "  name="sutureTypeName" id="sutureTypeName" >
                                                                </div>
                                                                <label for="sutureTypeOther" class="col-lg-2 col-sm-12 col-md-3 col-form-label font-style-label m-t-5">And/Or Others</label>
                                                                <div class="col-md-3 col-sm-12 col-lg-4">
                                                                    <input type="text" class="form-control"  name="sutureTypeOther"  id="sutureTypeOther" placeholder="" maxlength="40" autocomplete="off">
                                                                </div>
                                                            </div>
                                                            <hr>
                                                            <div class="form-group row border-left-side">
                                                                <label for="sutureLength" class="col-md-3 col-sm-12 col-lg-2 col-form-label font-style-label m-t-5"><i class="fas fa-circle text-c-info f-10 m-r-10"></i>Suture Length</label>
                                                                <div class="col-lg-4 col-md-4 col-sm-12">
                                                                    <select class="required form-control js-example-basic-multiple col-sm-12 suture_length"  multiple="" id="sutureLength"  name ="sutureLength">
                                                                        <c:forEach var="suture" items="${sutureLength}">
                                                                            <option value = "${suture.id}" >${suture.value}</option>
                                                                        </c:forEach>
                                                                    </select>
                                                                    <input type="hidden" class="form-control"  name="sutureLengthName"  id="sutureLengthName" placeholder="">
                                                                </div>
                                                            </div>

                                                            <hr>
                                                            <div class="form-group row border-left-side">
                                                                <div class="form-group row col-12 p-l-30">
                                                                    <label for="boneGraftType" class="col-form-label font-style-label"><i class="fas fa-circle text-c-yellow f-10 m-r-10"></i>Bone Graft Material</label>
                                                                </div>
                                                                <div class="col-12">
                                                                    <label for="boneGraftType" class="col-form-label font-style-label">Type:</label>
                                                                    <div class="custom-control custom-checkbox m-t-5 row">
                                                                        <div class="col-md-3 col-lg-3 col-sm-12">
                                                                            <input type="checkbox" name="boneGraftType" class=" custom-control-input input-primary" id="boneGraftType" value="BG">
                                                                            <label class="custom-control-label" for="boneGraftType">Allograft/Donor bone</label>
                                                                        </div>
                                                                        <div id="boneGraftCheck1" class="col-md-9 col-lg-9 col-sm-12 row">
                                                                            <div class="form-group col-md-4 col-lg-4 col-sm-12">
                                                                                <label for="" class="col-form-label font-style-label">SN</label>
                                                                                <input type="text" class="form-control"  name="boneGraftSno" id="boneGraftSno" placeholder="" disabled maxlength="25" autocomplete="off">
                                                                            </div>

                                                                            <div class="form-group col-md-4 col-lg-4 col-sm-12">
                                                                                <label for="" class="col-form-label font-style-label">Value</label>
                                                                                <input type="text" class="form-control"  name="boneGraftValue" id="boneGraftValue" placeholder="" maxlength="10" disabled="" autocomplete="off">
                                                                            </div>

                                                                            <div class="form-group col-md-4 col-lg-4 col-sm-12">
                                                                                <label for="" class="col-form-label font-style-label">Exp Date:</label>
                                                                                <input type="text" class="form-control data_currentdate"  name="expDate15" id="expDate15"  disabled value="" autocomplete="off">
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <!--                                                                    <div class="custom-control custom-checkbox m-t-5">
                                                                                                                                            <input type="checkbox" name="boneGraftType1" class=" custom-control-input input-primary" id="boneGraftType1" value="BG1">
                                                                                                                                            <label class="custom-control-label" for="boneGraftType1">Autologous bone</label>
                                                                                                                                            <div id="boneGraftCheck2" style="margin-top: 8px">
                                                                                                                                                <div class="form-group col-4"  style="margin-left:14%; margin-top: -3%" >
                                                                                                                                                    <label for="" class="col-form-label font-style-label">Value</label>
                                                                                                                                                    <input type="text" class="form-control"  name="boneGraftValue1" id="boneGraftValue1" disabled placeholder="" maxlength="10" autocomplete="off">
                                                                                                                                                </div>
                                                                    
                                                                                                                                                <div class="form-group col-4" style="    margin-top: -62px; margin-left: 545px;">
                                                                                                                                                    <label for="expDate6" class="col-form-label font-style-label">Exp Date:</label>
                                                                                                                                                    <input type="text" class="form-control data_currentdate"  name="expDate1" id="expDate1" disabled value="" autocomplete="off">
                                                                                                                                                </div>
                                                                                                                                            </div>
                                                                                                                                        </div>-->
                                                                    <div class="custom-control custom-checkbox m-t-5 row">
                                                                        <div class="col-md-3 col-lg-3 col-sm-12">
                                                                            <input type="checkbox" name="boneGraftType2" class=" custom-control-input input-primary" id="boneGraftType2" value="BG2">
                                                                            <label class="custom-control-label" for="boneGraftType2">Xenograft </label>
                                                                        </div>
                                                                        <div id="boneGraftCheck3" class="col-md-9 col-lg-9 col-sm-12 row">
                                                                            <div class="form-group col-md-4 col-lg-4 col-sm-12">
                                                                                <label for="" class="col-form-label font-style-label">SN</label>
                                                                                <input type="text" class="form-control"  name="boneGraftSno1" id="boneGraftSno1" placeholder="" disabled maxlength="25" autocomplete="off">
                                                                            </div>
                                                                            <div class="form-group col-md-4 col-lg-4 col-sm-12">
                                                                                <label for="" class="col-form-label font-style-label">Value</label>
                                                                                <input type="text" class="form-control"  name="boneGraftValue2" id="boneGraftValue2" placeholder="" disabled maxlength="10" autocomplete="off">
                                                                            </div>

                                                                            <div class="form-group col-md-4 col-lg-4 col-sm-12">
                                                                                <label for="" class="col-form-label font-style-label">Exp Date:</label>
                                                                                <input type="text" class="form-control data_currentdate"  name="expDate2" id="expDate2"  value="" disabled autocomplete="off">
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <!--                                                                    <div class="custom-control custom-checkbox m-t-5">
                                                                                                                                                      <input type="checkbox" name="boneGraftType3" class=" custom-control-input input-primary" id="boneGraftType3" value="BG3">
                                                                                                                                            <label class="custom-control-label" for="boneGraftType3">growth factors</label>
                                                                                                                                            <div id="boneGraftCheck4" style="margin-top: 8px">
                                                                                                                                                <div class="form-group col-4"  style="margin-left:14%; margin-top: -3%" >
                                                                                                                                                    <label for="" class="col-form-label font-style-label">Value</label>
                                                                                                                                                    <input type="text" class="form-control"  name="boneGraftValue3" id="boneGraftValue3" placeholder="" disabled maxlength="10" autocomplete="off">
                                                                                                                                                </div>
                                                                    
                                                                                                                                                <div class="form-group col-4" style="    margin-top: -62px; margin-left: 545px;">
                                                                                                                                                    <label for="" class="col-form-label font-style-label">Exp Date:</label>
                                                                                                                                                    <input type="text" class="form-control data_currentdate"  name="expDate3" id="expDate3"  value="" disabled autocomplete="off">
                                                                                                                                                </div>
                                                                                                                                            </div>
                                                                                                                                        </div>-->

                                                                </div>

                                                            </div>
                                                            <hr>
                                                            <div class="form-group row border-left-side">
                                                                <div class="form-group row col-12 p-l-30">
                                                                    <label for="tissueGraftType" class="col-form-label font-style-label"><i class="fas fa-circle text-c-red f-10 m-r-10"></i>Tissue Graft Material</label>
                                                                </div>
                                                                <div class="col-12">
                                                                    <label for="tissueGraftType" class="col-form-label font-style-label">Type:</label>
                                                                    <div class="custom-control custom-checkbox m-t-5 row">
                                                                        <div class="col-md-3 col-lg-3 col-sm-12">
                                                                            <input type="checkbox" name="tissueGraftType" class=" custom-control-input input-primary" id="tissueGraftType" value="TG">
                                                                            <label class="custom-control-label" for="tissueGraftType">Alloderm</label>
                                                                        </div>
                                                                        <div id="tissueGraftCheck1" class="col-md-9 col-lg-9 col-sm-12 row">
                                                                            <div class="form-group col-md-4 col-lg-4 col-sm-12">
                                                                                <label for="tissueGraftNo" class="col-form-label font-style-label">SN</label>
                                                                                <input type="text" class="form-control"  name="tissueGraftNo" id="tissueGraftNo" placeholder="" disabled maxlength="25" autocomplete="off">
                                                                            </div>
                                                                            <div class="form-group col-md-4 col-lg-4 col-sm-12">
                                                                                <label for="tissueGraftLength" class="col-form-label font-style-label">Length</label>
                                                                                <input type="text" class="form-control"  name="tissueGraftLength" id="tissueGraftLength" placeholder="" disabled maxlength="10" autocomplete="off">
                                                                            </div>
                                                                            <div class="form-group col-md-4 col-lg-4 col-sm-12">
                                                                                <label for="expDate5" class="col-form-label font-style-label">Exp Date:</label>
                                                                                <input type="text" class="form-control data_currentdate"  name="expDate5" id="expDate5"  value="" disabled autocomplete="off">
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <!--                                                                    <div class="custom-control custom-checkbox m-t-5">
                                                                                                                                            <input type="checkbox" name="tissueGraftType1" class=" custom-control-input input-primary" id="tissueGraftType1" value="TG1">
                                                                                                                                            <label class="custom-control-label" for="tissueGraftType1">Autologous derm</label>
                                                                                                                                            <div id="tissueGraftCheck2" style="margin-top: 8px">
                                                                                                                                                <div class="form-group col-4"  style="margin-left:14%; margin-top: -3%" >
                                                                                                                                                    <label for="tissueGraftNo1" class="col-form-label font-style-label">SN</label>
                                                                                                                                                    <input type="text" class="form-control"  name="tissueGraftNo1" id="tissueGraftNo1" placeholder="" disabled maxlength="10" autocomplete="off">
                                                                                                                                                </div>
                                                                    
                                                                                                                                                <div class="form-group col-4" style="margin-top: -62px; margin-left: 545px;">
                                                                                                                                                    <label for="expDate6" class="col-form-label font-style-label">Exp Date:</label>
                                                                                                                                                    <input type="text" class="form-control data_currentdate"  name="expDate6" id="expDate6"  value="" disabled autocomplete="off">
                                                                                                                                                </div>
                                                                                                                                            </div>
                                                                                                                                        </div>-->


                                                                </div>

                                                            </div>
                                                            <hr>
                                                            <div class="form-group row border-left-side">
                                                                <div class="form-group row col-12 p-l-30">
                                                                    <label for="membraneType" class="col-form-label font-style-label"><i class="fas fa-circle text-c-info f-10 m-r-10"></i>Membrane</label>
                                                                </div>
                                                                <div class="col-12">
                                                                    <label for="membraneType" class="col-form-label font-style-label">Type:</label>
                                                                    <!--                                                                    <div class="custom-control custom-checkbox m-t-5">
                                                                                                                                            <input type="checkbox" name="membraneType" class=" custom-control-input input-primary" id="membraneType" value="MT">
                                                                                                                                            <label class="custom-control-label" for="membraneType">PRF</label>
                                                                                                                                            <div id="membraneCheck1">
                                                                                                                                                <div class="form-group col-4"  style="margin-left:14%; margin-top: -3%" >
                                                                                                                                                    <label for="" class="col-form-label font-style-label">SN</label>
                                                                                                                                                    <input type="text" class="form-control"  name="membraneNo" id="membraneNo" placeholder="" disabled maxlength="10" autocomplete="off">
                                                                                                                                                </div>
                                                                    
                                                                                                                                                <div class="form-group col-4" style="margin-top: -62px; margin-left: 545px;">
                                                                                                                                                    <label for="" class="col-form-label font-style-label">Exp Date:</label>
                                                                                                                                                    <input type="text" class="form-control data_currentdate"  name="expDate7" id="expDate7" disabled value="" autocomplete="off">
                                                                                                                                                </div>
                                                                                                                                            </div>
                                                                                                                                        </div>-->
                                                                    <!--                                                                    <div class="custom-control custom-checkbox m-t-5">
                                                                                                                                            <input type="checkbox" name="membraneType1" class=" custom-control-input input-primary" id="membraneType1" value="MT1">
                                                                                                                                            <label class="custom-control-label" for="membraneType1">CGF</label>
                                                                                                                                            <div id="membraneCheck2" style="margin-top: 8px">
                                                                                                                                                <div class="form-group col-4"  style="margin-left:14%; margin-top: -3%" >
                                                                                                                                                    <label for="" class="col-form-label font-style-label">SN</label>
                                                                                                                                                    <input type="text" class="form-control"  name="membraneNo1" id="membraneNo1" placeholder="" disabled maxlength="10" autocomplete="off">
                                                                                                                                                </div>
                                                                    
                                                                                                                                                <div class="form-group col-4" style="margin-top: -62px; margin-left: 545px;">
                                                                                                                                                    <label for="" class="col-form-label font-style-label">Exp Date:</label>
                                                                                                                                                    <input type="text" class="form-control data_currentdate"  name="expDate8" id="expDate8"  value="" disabled autocomplete="off">
                                                                                                                                                </div>
                                                                                                                                            </div>
                                                                                                                                        </div>-->
                                                                    <!--                                                                    <div class="custom-control custom-checkbox m-t-5">
                                                                                                                                            <input type="checkbox" name="membraneType2" class=" custom-control-input input-primary" id="membraneType2" value="MT2">
                                                                                                                                            <label class="custom-control-label" for="membraneType2">PRP </label>
                                                                                                                                            <div id="membraneCheck3" style="margin-top: 8px">
                                                                                                                                                <div class="form-group col-4"  style="margin-left:14%; margin-top: -3%" >
                                                                                                                                                    <label for="" class="col-form-label font-style-label">SN</label>
                                                                                                                                                    <input type="text" class="form-control"  name="membraneNo2" id="membraneNo2" placeholder="" maxlength="10" disabled autocomplete="off">
                                                                                                                                                </div>
                                                                    
                                                                                                                                                <div class="form-group col-4" style="margin-top: -62px; margin-left: 545px;">
                                                                                                                                                    <label for="" class="col-form-label font-style-label">Exp Date:</label>
                                                                                                                                                    <input type="text" class="form-control data_currentdate"  name="expDate9" id="expDate9"  value="" disabled autocomplete="off">
                                                                                                                                                </div>
                                                                                                                                            </div>
                                                                                                                                        </div>-->
                                                                    <div class="custom-control custom-checkbox m-t-5 row">
                                                                        <div class="col-md-3 col-lg-3 col-sm-12">
                                                                            <input type="checkbox" name="membraneType3" class=" custom-control-input input-primary" id="membraneType3" value="MT3">
                                                                            <label class="custom-control-label" for="membraneType3">Absorable Membranes</label>
                                                                        </div>
                                                                        <div id="membraneCheck4" class="col-md-9 col-lg-9 col-sm-12 row">
                                                                            <div class="form-group col-md-6 col-lg-6 col-sm-12">
                                                                                <label for="" class="col-form-label font-style-label">SN</label>
                                                                                <input type="text" class="form-control"  name="membraneNo3" id="membraneNo3" placeholder="" maxlength="25" disabled autocomplete="off">
                                                                            </div>

                                                                            <div class="form-group col-md-6 col-lg-6 col-sm-12">
                                                                                <label for="" class="col-form-label font-style-label">Exp Date:</label>
                                                                                <input type="text" class="form-control data_currentdate"  name="expDate10" id="expDate10"  value=""  disabled autocomplete="off">
                                                                            </div>
                                                                        </div>
                                                                    </div>


                                                                </div>


                                                            </div>
                                                            <hr>
                                                            <div class="form-group row border-left-side">

                                                                <div class="form-group col-lg-4 col-md-4 col-sm-12">
                                                                    <label for="phlebotomyType" class="col-form-label font-style-label "><i class="fas fa-circle text-c-purple f-10 m-r-10"></i>Phlebotomy taken:</label>
                                                                    <select class="required form-control js-example-basic-multiple phlebotomy_type"  multiple="" id="phlebotomyType"  name ="phlebotomyType">
                                                                        <c:forEach var="phlebotomy" items="${phlebotomyType}">
                                                                            <option value = "${phlebotomy.id}" >${phlebotomy.value}</option>
                                                                        </c:forEach>
                                                                    </select>
                                                                    <input type="hidden" class=" "  name="phlebotomyTypeName" id="phlebotomyTypeName" >
                                                                </div>

                                                                <div class="form-group col-lg-4 col-md-4 col-sm-12">
                                                                    <label for="vaccutube" class="col-form-label font-style-label">Vial(s)</label>
                                                                    <select class="required form-control js-example-basic-multiple"  multiple="" id="vaccutube"  name ="vaccutube">
                                                                        <c:forEach var="vaccutube" items="${vaccutubeType}">
                                                                            <option value = "${vaccutube.id}" >${vaccutube.value}</option>
                                                                        </c:forEach>
                                                                    </select>
                                                                </div>

                                                                <!--                                                                <div class="form-group col-4">
                                                                                                                                    <label for="expDate4" class="col-form-label font-style-label">Exp Date:</label>
                                                                                                                                    <input type="text" class="form-control data_currentdate"  name="expDate4" id="expDate4"  value="" autocomplete="off">
                                                                                                                                </div>-->
                                                            </div>
                                                            <hr>
                                                            <div class="form-group row border-left-side">
                                                                <div class="form-group row col-12 p-l-30" style="margin-left: -31px;">
                                                                    <label for="surgicalFixationScrewType" class="col-form-label font-style-label m-t-15  col-md-4 col-lg-3"><i class="fas fa-circle text-c-red f-10 m-r-10"></i>Surgical Fixation Screw </label>
                                                                </div>

                                                                <div class="form-group col-12">
                                                                    <label for="surgicalFixationScrewType" class="col-form-label font-style-label ">Type:</label>
                                                                    <div class="col-12 ">
                                                                        <div class="custom-control custom-checkbox m-t-5 row">
                                                                            <div class="col-md-3 col-lg-3 col-sm-12">
                                                                                <input type="checkbox" name="surgicalFixationScrewType" class=" custom-control-input input-primary" id="surgicalFixationScrewType" value="SFS">
                                                                                <label class="custom-control-label" for="surgicalFixationScrewType">Prosthetic</label>
                                                                            </div>
                                                                            <div id="surgicalScrewCheck1" class="col-md-9 col-lg-9 col-sm-12 row">
                                                                                <div class="form-group col-md-6 col-lg-6 col-sm-12">
                                                                                    <label for="" class="col-form-label font-style-label">SN</label>
                                                                                    <input type="text" class="form-control"  name="surgicalFixationScrewNo" id="surgicalFixationScrewNo" placeholder="" disabled maxlength="25" autocomplete="off">
                                                                                </div>

                                                                                <div class="form-group col-md-6 col-lg-6 col-sm-12">
                                                                                    <label for="expDate" class="col-form-label font-style-label">Exp Date:</label>
                                                                                    <input type="text" class="form-control data_currentdate"  name="expDate" id="expDate"  value="" disabled autocomplete="off">
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div class="custom-control custom-checkbox m-t-5 row">
                                                                            <div class="col-md-3 col-lg-3 col-sm-12">
                                                                                <input type="checkbox" name="surgicalFixationScrewType1" class=" custom-control-input input-primary" id="surgicalFixationScrewType1" value="SFS1">
                                                                                <label class="custom-control-label" for="surgicalFixationScrewType1">Metal</label>
                                                                            </div>
                                                                            <div id="surgicalScrewCheck2" class="col-md-9 col-lg-9 col-sm-12 row">
                                                                                <div class="form-group col-md-6 col-lg-6 col-sm-12">
                                                                                    <label for="surgicalFixationScrewNo1" class="col-form-label font-style-label">SN</label>
                                                                                    <input type="text" class="form-control"  name="surgicalFixationScrewNo1" id="surgicalFixationScrewNo1" placeholder="" disabled maxlength="25" autocomplete="off">
                                                                                </div>

                                                                                <div class="form-group col-md-6 col-lg-6 col-sm-12">                                                                                    <label for="" class="col-form-label font-style-label">Exp Date:</label>
                                                                                    <input type="text" class="form-control data_currentdate"  name="expDate1" id="expDate1"  value="" disabled autocomplete="off">
                                                                                </div>
                                                                            </div>
                                                                        </div>

                                                                    </div>
                                                                    <!--<input type="hidden" class=""  name="fixationScrewTypeName" id="fixationScrewTypeName" >-->
                                                                </div>

                                                                <!--<div class=" form-group screwdetail col-lg-3 col-md-3 col-sm-12" >-->
                                                                <!--<input type="number" class="form-control m-t-10"  name="fixationScrewType" id="fixationScrewType" maxlength="40" autocomplete="off" oninput="this.value=this.value.slice(0,this.maxLength)" >-->
                                                                <!--</div>-->

                                                                <!--<label for="fixationScrewType" class="col-3 col-form-label font-style-label m-t-15"></label>-->

                                                                <!--                                                                <div id="visit" style="margin-top:10px!important;">
                                                                                                                                </div>-->
                                                            </div>
                                                            <hr>
                                                            <div class="form-group row border-left-side">
                                                                <div class="form-group row col-12 p-l-30">
                                                                    <label for="surgicalFixationScrew" class="col-form-label font-style-label"><i class="fas fa-circle text-c-yellow f-10 m-r-10"></i>Surgical screw</label>
                                                                </div>

                                                                <div class="form-group col-12">
                                                                    <label for="surgicalFixationScrew" class="col-form-label font-style-label ">Type:</label>
                                                                    <div class="col-12 ">
                                                                        <div class="custom-control custom-checkbox m-t-5 row">
                                                                            <div class="col-md-3 col-lg-3 col-sm-12">
                                                                                <input type="checkbox" name="surgicalFixationScrew" class=" custom-control-input input-primary" id="surgicalFixationScrew" value="SS">
                                                                                <label class="custom-control-label" for="surgicalFixationScrew">Prosthetic</label>
                                                                            </div>
                                                                            <div id="surgicalScrewCheck1" class="col-md-9 col-lg-9 col-sm-12 row">
                                                                                <div class="form-group col-md-6 col-lg-6 col-sm-12">
                                                                                    <label for="" class="col-form-label font-style-label">SN</label>
                                                                                    <input type="text" class="form-control"  name="fixationScrewNo" id="fixationScrewNo" placeholder="" disabled maxlength="25" autocomplete="off">
                                                                                </div>

                                                                                <div class="form-group col-md-6 col-lg-6 col-sm-12">
                                                                                    <label for="" class="col-form-label font-style-label">Exp Date:</label>
                                                                                    <input type="text" class="form-control data_currentdate"  name="expDate11" id="expDate11"  value="" disabled autocomplete="off">
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div class="custom-control custom-checkbox m-t-5 row">
                                                                            <div class="col-md-3 col-lg-3 col-sm-12">
                                                                                <input type="checkbox" name="surgicalFixationScrew1" class=" custom-control-input input-primary" id="surgicalFixationScrew1" value="SS1">
                                                                                <label class="custom-control-label" for="surgicalFixationScrew1">Metal</label>
                                                                            </div>
                                                                            <div id="surgicalScrewCheck2" class="col-md-9 col-lg-9 col-sm-12 row">
                                                                                <div class="form-group col-md-6 col-lg-6 col-sm-12">
                                                                                    <label for="" class="col-form-label font-style-label">SN</label>
                                                                                    <input type="text" class="form-control"  name="fixationScrewNo1" id="fixationScrewNo1" placeholder="" disabled maxlength="25" autocomplete="off">
                                                                                </div>

                                                                                <div class="form-group col-md-6 col-lg-6 col-sm-12">                                                                                    <label for="" class="col-form-label font-style-label">Exp Date:</label>
                                                                                    <input type="text" class="form-control data_currentdate"  name="expDate12" id="expDate12"  value="" disabled autocomplete="off">
                                                                                </div>
                                                                            </div>
                                                                        </div>

                                                                    </div>
                                                                    <input type="hidden" class=""  name="fixationScrewTypeName" id="fixationScrewTypeName" >
                                                                </div>
                                                            </div>
                                                            <hr>
                                                            <div class="form-group row border-left-side">
                                                                <div class="form-group row col-12 p-l-30">
                                                                    <label for="surgicalPlateType" class="col-form-label font-style-label"><i class="fas fa-circle text-c-purple f-10 m-r-10"></i>Surgical Plate</label>
                                                                </div>

                                                                <div class="form-group col-12">
                                                                    <label for="surgicalPlateType" class="col-form-label font-style-label">Type:</label>
                                                                    <div class="col-12">
                                                                        <div class="custom-control custom-checkbox m-t-5 row">
                                                                            <div class="col-md-3 col-lg-3 col-sm-12">
                                                                                <input type="checkbox" name="surgicalPlateType" class=" custom-control-input input-primary" id="surgicalPlateType" value="SP">
                                                                                <label class="custom-control-label" for="surgicalPlateType">Prosthetic</label>
                                                                            </div>
                                                                            <div id="surgicalPlateCheck1" class="col-md-9 col-lg-9 col-sm-12 row">
                                                                                <div class="form-group col-md-6 col-lg-6 col-sm-12">
                                                                                    <label for="" class="col-form-label font-style-label">SN</label>
                                                                                    <input type="text" class="form-control"  name="surgicalPlateNo" id="surgicalPlateNo" placeholder="" disabled maxlength="25" autocomplete="off">
                                                                                </div>

                                                                                <div class="form-group col-md-6 col-lg-6 col-sm-12">
                                                                                    <label for="" class="col-form-label font-style-label">Exp Date:</label>
                                                                                    <input type="text" class="form-control data_currentdate"  name="expDate13" id="expDate13"  value="" disabled autocomplete="off">
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div class="custom-control custom-checkbox m-t-5 row">
                                                                            <div class="col-md-3 col-lg-3 col-sm-12">
                                                                                <input type="checkbox" name="surgicalPlateType1" class=" custom-control-input input-primary" id="surgicalPlateType1" value="SP1">
                                                                                <label class="custom-control-label" for="surgicalPlateType1">Metal</label>
                                                                            </div>
                                                                            <div id="surgicalPlateCheck2" class="col-md-9 col-lg-9 col-sm-12 row">
                                                                                <div class="form-group  col-md-6 col-lg-6 col-sm-12">
                                                                                    <label for="" class="col-form-label font-style-label">SN</label>
                                                                                    <input type="text" class="form-control"  name="surgicalPlateNo1" id="surgicalPlateNo1" placeholder="" disabled maxlength="25" autocomplete="off">
                                                                                </div>

                                                                                <div class="form-group  col-md-6 col-lg-6 col-sm-12">
                                                                                    <label for="" class="col-form-label font-style-label">Exp Date:</label>
                                                                                    <input type="text" class="form-control data_currentdate"  name="expDate14" id="expDate14"  value="" disabled autocomplete="off">
                                                                                </div>
                                                                            </div>
                                                                        </div>

                                                                    </div>
                                                                    <input type="hidden" class=" "  name="surgicalPlateTypeName" id="surgicalPlateTypeName" >
                                                                </div>


                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="modal-footer">
                                                    <button type="submit" class="btn btn-primary delayMsg">Save</button>

                                                </div>
                                            </div>
                                        </form:form>
                                    </div>
                                </div>

                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- View PDF Modal -->
        <div class="modal fade bd-example-modal-lg" id="viewPDFModal" tabindex="-1" role="dialog" aria-labelledby="viewPDFModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-lg" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="viewPDFModalLabel">Surgical Tray Sheet</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body" id="viewPDFContentDiv">
                        ...
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-primary" data-dismiss="modal">Close</button> 
                    </div>
                </div>
            </div>
        </div>

        <div id="flading" class="loader">

        </div>

        <jsp:include page="../includes/footer.jsp"></jsp:include>
            <script src="assets/js/plugins/jquery.bootstrap.wizard.min.js"></script>
            <script src="assets/js/plugins/jquery.steps.min.js"></script>
            <script src="assets/js/traysheet/surgicalsheet.js"></script>

            <script src="assets/js/plugins/select2.full.min.js"></script>
            <script src="assets/js/pages/form-select-custom.js"></script>

            <script>

                                        function restrictAlphas(e) {
                                            e.target.value = e.target.value.replace(/[\D]/g, '').replace(/(\d{3})/, "$1/");
                                        }

                                        $(document).ready(function () {
                                            $.fn.timepicker.defaults = $.extend(true, {}, $.fn.timepicker.defaults, {
                                                icons: {
                                                    up: 'feather icon-chevron-up',
                                                    down: 'feather icon-chevron-down'
                                                }
                                            });
                                            // minimum setup
                                            $('#patientAdmitTime, #patientDischargeTime').timepicker({
                                                timeFormat: "HH:MM",
                                                minuteStep: 1,
                                                defaultTime: ''
                                            });
                                            $('#flading').hide();
                                            var maxDate = new Date("01/01/4000");
                                            $(".data_currentdate").datepicker({
                                                format: "mm/dd/yyyy",
                                                autoclose: true,
                                                orientation: "bottom left",
                                                todayHighlight: true,
                                                endDate: maxDate
                                            }).mask('99/99/9999');
                                            var toDayDate = new Date();
                                            $(".data_currentdate_maxdate").datepicker({
                                                format: "mm/dd/yyyy",
                                                autoclose: true,
                                                orientation: "bottom left",
                                                todayHighlight: true,
                                                endDate: toDayDate
                                            }).mask('99/99/9999');

                                            $(document).on('change', '#boneGraftType', function () {
                                                if (this.checked == true) {
                                                    $('#boneGraftValue').attr("disabled", false);
                                                    $('#boneGraftSno').attr("disabled", false);
                                                    $('#expDate15').attr("disabled", false);
                                                } else {
                                                    $("#boneGraftValue").val('');
                                                    $("#expDate15").val('');
                                                    $('#boneGraftSno').val('');
                                                    $('#boneGraftValue').attr("disabled", true);
                                                    $('#boneGraftSno').attr("disabled", true);
                                                    $('#expDate15').attr("disabled", true);
                                                }
                                            });

                                            $(document).on('change', '#boneGraftType2', function () {
                                                if (this.checked == true) {
                                                    $('#boneGraftValue2').attr("disabled", false);
                                                    $('#boneGraftSno1').attr("disabled", false);
                                                    $('#expDate2').attr("disabled", false);
                                                } else {
                                                    $("#boneGraftValue2").val('');
                                                    $("#expDate2").val('');
                                                    $('#boneGraftSno1').val('');
                                                    $('#boneGraftValue2').attr("disabled", true);
                                                    $('#boneGraftSno1').attr("disabled", true);
                                                    $('#expDate2').attr("disabled", true);
                                                }
                                            });

                                            $(document).on('change', '#tissueGraftType', function () {
                                                if (this.checked == true) {
                                                    $('#tissueGraftNo').attr("disabled", false);
                                                    $('#tissueGraftLength').attr("disabled", false);
                                                    $('#expDate5').attr("disabled", false);
                                                } else {
                                                    $("#tissueGraftNo").val('');
                                                    $("#expDate5").val('');
                                                    $('#tissueGraftLength').val('');
                                                    $('#tissueGraftNo').attr("disabled", true);
                                                    $('#tissueGraftLength').attr("disabled", true);
                                                    $('#expDate5').attr("disabled", true);
                                                }
                                            });

                                            $(document).on('change', '#membraneType3', function () {
                                                if (this.checked == true) {
                                                    $('#membraneNo3').attr("disabled", false);
                                                    $('#expDate10').attr("disabled", false);
                                                } else {
                                                    $("#membraneNo3").val('');
                                                    $("#expDate10").val('');
                                                    $('#membraneNo3').attr("disabled", true);
                                                    $('#expDate10').attr("disabled", true);
                                                }
                                            });

                                            $(document).on('change', '#surgicalFixationScrew', function () {
                                                if (this.checked == true) {
                                                    $('#fixationScrewNo').attr("disabled", false);
                                                    $('#expDate11').attr("disabled", false);
                                                } else {
                                                    $("#fixationScrewNo").val('');
                                                    $("#expDate11").val('');
                                                    $('#fixationScrewNo').attr("disabled", true);
                                                    $('#expDate11').attr("disabled", true);
                                                }
                                            });
                                            $(document).on('change', '#surgicalFixationScrew1', function () {
                                                if (this.checked == true) {
                                                    $('#fixationScrewNo1').attr("disabled", false);
                                                    $('#expDate12').attr("disabled", false);
                                                } else {
                                                    $("#fixationScrewNo1").val('');
                                                    $("#expDate12").val('');
                                                    $('#fixationScrewNo1').attr("disabled", true);
                                                    $('#expDate12').attr("disabled", true);
                                                }
                                            });

                                            $(document).on('change', '#surgicalFixationScrewType', function () {
                                                if (this.checked == true) {
                                                    $('#surgicalFixationScrewNo').attr("disabled", false);
                                                    $('#expDate').attr("disabled", false);
                                                } else {
                                                    $("#surgicalFixationScrewNo").val('');
                                                    $("#expDate").val('');
                                                    $('#surgicalFixationScrewNo').attr("disabled", true);
                                                    $('#expDate').attr("disabled", true);
                                                }
                                            });
                                            $(document).on('change', '#surgicalFixationScrewType1', function () {
                                                if (this.checked == true) {
                                                    $('#surgicalFixationScrewNo1').attr("disabled", false);
                                                    $('#expDate1').attr("disabled", false);
                                                } else {
                                                    $("#surgicalFixationScrewNo1").val('');
                                                    $("#expDate1").val('');
                                                    $('#surgicalFixationScrewNo1').attr("disabled", true);
                                                    $('#expDate').attr("disabled", true);
                                                }
                                            });

                                            $(document).on('change', '#surgicalPlateType', function () {
                                                if (this.checked == true) {
                                                    $('#surgicalPlateNo').attr("disabled", false);
                                                    $('#expDate13').attr("disabled", false);
                                                } else {
                                                    $("#surgicalPlateNo").val('');
                                                    $("#expDate13").val('');
                                                    $('#surgicalPlateNo').attr("disabled", true);
                                                    $('#expDate13').attr("disabled", true);
                                                }
                                            });
                                            $(document).on('change', '#surgicalPlateType1', function () {
                                                if (this.checked == true) {
                                                    $('#surgicalPlateNo1').attr("disabled", false);
                                                    $('#expDate14').attr("disabled", false);
                                                } else {
                                                    $("#surgicalPlateNo1").val('');
                                                    $("#expDate14").val('');
                                                    $('#surgicalPlateNo1').attr("disabled", true);
                                                    $('#expDate14').attr("disabled", true);
                                                }
                                            });

                                            $(document).on('change', '#oralAnesthesiaContentType', function () {
                                                if (this.checked == true) {
                                                    $('#oralAnesthesiaType').attr("disabled", false);
                                                } else {
                                                    $("#oralAnesthesiaType").val('');
                                                    $('#oralAnesthesiaType').attr("disabled", true);
                                                }
                                            });
                                            $(document).on('change', '#oralAnesthesiaContentType1', function () {
                                                if (this.checked == true) {
                                                    $('#oralAnesthesiaType1').attr("disabled", false);
                                                } else {
                                                    $("#oralAnesthesiaType1").val('');
                                                    $('#oralAnesthesiaType1').attr("disabled", true);
                                                }
                                            });
                                            $(document).on('change', '#oralAnesthesiaContentType2', function () {
                                                if (this.checked == true) {
                                                    $('#oralAnesthesiaType2').attr("disabled", false);
                                                } else {
                                                    $("#oralAnesthesiaType2").val('');
                                                    $('#oralAnesthesiaType2').attr("disabled", true);
                                                }
                                            });
                                            $(document).on('change', '#oralAnesthesiaContentType3', function () {
                                                if (this.checked == true) {
                                                    $('#oralAnesthesiaType3').attr("disabled", false);
                                                } else {
                                                    $("#oralAnesthesiaType3").val('');
                                                    $('#oralAnesthesiaType3').attr("disabled", true);
                                                }
                                            });
                                            $(document).on('change', '#oralAnesthesiaContentType4', function () {
                                                if (this.checked == true) {
                                                    $('#oralAnesthesiaType4').attr("disabled", false);
                                                } else {
                                                    $("#oralAnesthesiaType4").val('');
                                                    $('#oralAnesthesiaType4').attr("disabled", true);
                                                }
                                            });
                                            $(document).on('change', '#oralAnesthesiaContentType5', function () {
                                                if (this.checked == true) {
                                                    $('#oralAnesthesiaType5').attr("disabled", false);
                                                } else {
                                                    $("#oralAnesthesiaType5").val('');
                                                    $('#oralAnesthesiaType5').attr("disabled", true);
                                                }
                                            });
                                            $(document).on('change', '#oralAnesthesiaContentType6', function () {
                                                if (this.checked == true) {
                                                    $('#oralAnesthesiaType6').attr("disabled", false);
                                                } else {
                                                    $("#oralAnesthesiaType6").val('');
                                                    $('#oralAnesthesiaType6').attr("disabled", true);
                                                }
                                            });
                                            $(document).on('change', '#rxContentType', function () {
                                                if (this.checked == true) {
                                                    $('#rxType').attr("disabled", false);
                                                } else {
                                                    $("#rxType").val('');
                                                    $('#rxType').attr("disabled", true);
                                                }
                                            });
                                            $(document).on('change', '#rxContentType1', function () {
                                                if (this.checked == true) {
                                                    $('#rxType1').attr("disabled", false);
                                                } else
                                                {
                                                    $("#rxType1").val('');
                                                    $('#rxType1').attr("disabled", true);
                                                }
                                            });
                                            $(document).on('change', '#rxContentType2', function () {
                                                if (this.checked == true) {
                                                    $('#rxType2').attr("disabled", false);
                                                } else {
                                                    $("#rxType2").val('');
                                                    $('#rxType2').attr("disabled", true);
                                                }
                                            });
                                            $(document).on('change', '#rxContentType3', function () {
                                                if (this.checked == true) {
                                                    $('#rxType3').attr("disabled", false);
                                                } else {
                                                    $("#rxType3").val('');
                                                    $('#rxType3').attr("disabled", true);
                                                }
                                            });
                                            $(document).on('change', '#rxContentType5', function () {
                                                if (this.checked == true) {
                                                    $('#rxType4').attr("disabled", false);
                                                } else {
                                                    $("#rxType4").val('');
                                                    $('#rxType4').attr("disabled", true);
                                                }
                                            });
                                            $(document).on('change', '#rxContentType6', function () {
                                                if (this.checked == true) {
                                                    $('#rxType5').attr("disabled", false);
                                                } else {
                                                    $("#rxType5").val('');
                                                    $('#rxType5').attr("disabled", true);
                                                }
                                            });
                                            $(document).on('change', '#rxContentType7', function () {
                                                if (this.checked == true) {
                                                    $('#rxType6').attr("disabled", false);
                                                } else {
                                                    $("#rxType6").val('');
                                                    $('#rxType6').attr("disabled", true);
                                                }
                                            });
                                            $(document).on('change', '#rxContentType13', function () {
                                                if (this.checked == true) {
                                                    $('#rxType7').attr("disabled", false);
                                                } else {
                                                    $("#rxType7").val('');
                                                    $('#rxType7').attr("disabled", true);
                                                }
                                            });
                                            $(document).on('change', '#rxContentType14', function () {
                                                if (this.checked == true) {
                                                    $('#rxType8').attr("disabled", false);
                                                } else {
                                                    $("#rxType8").val('');
                                                    $('#rxType8').attr("disabled", true);
                                                }
                                            });
                                            $(document).on('change', '#rxContentType15', function () {
                                                if (this.checked == true) {
                                                    $('#rxType9').attr("disabled", false);
                                                } else {
                                                    $("#rxType9").val('');
                                                    $('#rxType9').attr("disabled", true);
                                                }
                                            });
                                            $(document).on('change', '#rxContentType16', function () {
                                                if (this.checked == true) {
                                                    $('#rxType10').attr("disabled", false);
                                                } else {
                                                    $("#rxType10").val('');
                                                    $('#rxType10').attr("disabled", true);
                                                }
                                            });
                                            $(document).on('change', '#rxContentType19', function () {
                                                if (this.checked == true) {
                                                    $('#rxType11').attr("disabled", false);
                                                } else {
                                                    $("#rxType11").val('');
                                                    $('#rxType11').attr("disabled", true);
                                                }
                                            });

                                            //Biospy of Wound Drainage Abscesses
                                            $(document).on('change', '#woundDrainageType', function () {
                                                if (this.checked == true) {
                                                    $("#woundDrainage").attr("disabled", false);
                                                } else {
                                                    $("#woundDrainage").val('');
                                                    $("#woundDrainage").attr("disabled", true);
                                                }
                                            });
                                            $(document).on('change', '#woundDrainageType1', function () {
                                                if (this.checked == true) {
                                                    $("#woundDrainage1").attr("disabled", false);
                                                } else {
                                                    $("#woundDrainage1").val('');
                                                    $("#woundDrainage1").attr("disabled", true);
                                                }
                                            });
                                            $(document).on('change', '#woundDrainageType2', function () {
                                                if (this.checked == true) {
                                                    $("#woundDrainage2").attr("disabled", false);
                                                } else {
                                                    $("#woundDrainage2").val('');
                                                    $("#woundDrainage2").attr("disabled", true);
                                                }
                                            });
                                            $(document).on('change', '#woundDrainageType3', function () {
                                                if (this.checked == true) {
                                                    $("#woundDrainage3").attr("disabled", false);
                                                } else {
                                                    $("#woundDrainage3").val('');
                                                    $("#woundDrainage3").attr("disabled", true);
                                                }
                                            });
                                            $(document).on('change', '#woundDrainageType4', function () {
                                                if (this.checked == true) {
                                                    $("#woundDrainage4").attr("disabled", false);
                                                } else {
                                                    $("#woundDrainage4").val('');
                                                    $("#woundDrainage4").attr("disabled", true);
                                                }
                                            });
                                            $(document).on('change', '#woundDrainageType5', function () {
                                                if (this.checked == true) {
                                                    $("#woundDrainage5").attr("disabled", false);
                                                } else {
                                                    $("#woundDrainage5").val('');
                                                    $("#woundDrainage5").attr("disabled", true);
                                                }
                                            });
                                            $(document).on('change', '#woundDrainageType6', function () {
                                                if (this.checked == true) {
                                                    $("#woundDrainage6").attr("disabled", false);
                                                } else {
                                                    $("#woundDrainage6").val('');
                                                    $("#woundDrainage6").attr("disabled", true);
                                                }
                                            });
                                            $(document).on('change', '#woundDrainageType7', function () {
                                                if (this.checked == true) {
                                                    $("#woundDrainage7").attr("disabled", false);
                                                } else {
                                                    $("#woundDrainage7").val('');
                                                    $("#woundDrainage7").attr("disabled", true);
                                                }
                                            });
                                            $(document).on('change', '#woundDrainageType8', function () {
                                                if (this.checked == true) {
                                                    $("#woundDrainage8").attr("disabled", false);
                                                } else {
                                                    $("#woundDrainage8").val('');
                                                    $("#woundDrainage8").attr("disabled", true);
                                                }
                                            });
                                            $(document).on('change', '#woundDrainageType9', function () {
                                                if (this.checked == true) {
                                                    $("#woundDrainage9").attr("disabled", false);
                                                } else {
                                                    $("#woundDrainage9").val('');
                                                    $("#woundDrainage9").attr("disabled", true);
                                                }
                                            });

                                            $('#form1').submit(function () {

                                                if ($('#patientCombo').val() == 0)
                                                {
                                                    msgbox("Patient not selected", "Please, select the patient from the patient combo box to proceed.", "Surgical TraySheet Form", "error");
                                                    $('.delayMsg').removeAttr('disabled');
                                                    $('.delayMsg').text('Submit');
                                                    return false;
                                                } else if (!$('#dateOfService').val()) {
                                                    msgbox("Invalid DOS", "Surgical Tray Sheet", "error");
                                                    $('.delayMsg').removeAttr('disabled');
                                                    $('.delayMsg').text('Submit');
                                                    return false;
                                                } else
                                                {
                                                    $('.delayMsg').attr('disabled', 'disabled');
                                                    $('.delayMsg').text('Sending...');
                                                    $('.delayMsg').off('click');//disables click event
                                                    $('#flading').show();
                                                    return true;
                                                }
                                            });
                                            var entity = '<%= session.getAttribute("Entityid")%>';
                                            $('.suture_type').change(function () {
                                                var type2 = $("#sutureType option:selected").map((i, el) => el.textContent.trim()).get();
                                                $('#sutureTypeName').val(type2);
                                            });

                                            $('.suture_length').change(function () {
                                                var type3 = $("#sutureLength option:selected").map((i, el) => el.textContent.trim()).get();
                                                $('#sutureLengthName').val(type3);
                                            });

                                            $('.phlebotomy_type').change(function () {
                                                var type7 = $("#phlebotomyType option:selected").map((i, el) => el.textContent.trim()).get();
                                                $('#phlebotomyTypeName').val(type7);
                                            });

                                            $(function () {
                                                $('#patientCombo').change(function () {
                                                    var patientid = this.value;
                                                    $('#flading').show();
                                                    if (patientid != 0) {
                                                        clearFields();
                                                        $.get('getPatientDetail', {
                                                            patientid: patientid
                                                        }, function (response) {
                                                            if (response.length > 0)
                                                            {
                                                                var txt = response;
                                                                var obj = jQuery.parseJSON(txt);
                                                                if (obj.length > 0)
                                                                {
                                                                    for (var i = 0; i < obj.length; i++)
                                                                    {

                                                                        var fname = "";
                                                                        var lname = "";
                                                                        var mname = "";
                                                                        if (obj[i].fname !== '') {
                                                                            fname = obj[i].fname;
                                                                        }
                                                                        if (obj[i].mname !== '') {
                                                                            mname = obj[i].mname;
                                                                        }
                                                                        lname = obj[i].lname;
                                                                        $("#inputFullName").val(lname + ", " + fname);
                                                                        $("#inputLastName").val(lname);
                                                                        $("#inputFirstName").val(fname);

                                                                        $('#inputDOB').val(obj[i].dob);
                                                                        //                                                                                $('#hdi1').val(sv[6].trim());
                                                                        //                                                                                $('#hdi2').val(sv[7].trim());
                                                                        $('#inputAddress').val(obj[i].add1);
                                                                        $('#inputAddress').val($('#inputAddress').val() + " " + obj[i].add2);
                                                                        $('#inputCity').val(obj[i].city);
                                                                        $('#inputState').val(obj[i].state);

                                                                        $('#inputZip').val(obj[i].zip);

                                                                        if (obj[i].email === "null" || obj[i].email === "")
                                                                        {
                                                                            $('#inputEmail').val("");
                                                                        } else
                                                                        {
                                                                            $('#inputEmail').val(obj[i].email);
                                                                        }

                                                                        $('#inputPhone').val(obj[i].cp);
                                                                        $('#inputEPhone').val(obj[i].ap);

                                                                        $('#inputGender').val(obj[i].ddlgender);
                                                                        $('#inputSSN').val(obj[i].ssn);
                                                                        $('#practiceId').val(obj[i].ddlpracticeid);
                                                                        $('#practice').val(obj[i].ddlpractice);
                                                                        var practiceid = $('#practiceId').val();
                                                                        //alert(practiceId);
                                                                        if (practiceid !== '') {
                                                                            $.ajax({
                                                                                url: "providerdetailswtentityid",
                                                                                type: "get", //send it through get method
                                                                                data: {
                                                                                    practiceid: practiceid
                                                                                },
                                                                                success: function (response) {
                                                                                    var select = $('#providerId');
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
                                                                                        $('select option[value=' + obj[0].provider_id + ']').attr("selected", true);
                                                                                        var providerId = obj[0].provider_id;
                                                                                        //alert("Provider id from Patient Combo on change: "+provider_id);
                                                                                        if (providerId !== 0) {

                                                                                            $.get('getproviderdetails', {
                                                                                                provider_id: providerId
                                                                                            }, function (response) {
                                                                                                if (response.length > 0) {
                                                                                                    var txt = response;
                                                                                                    var obj = jQuery.parseJSON(txt);
                                                                                                    console.log(obj);
                                                                                                    if (obj.length > 0) {
                                                                                                        $('#individual_npi').val(obj[0].individual_npi);
                                                                                                        $('#medicare_ptan').val(obj[0].medicare_ptan);
                                                                                                        var providerName = $('#providerId option:selected').text();

                                                                                                        $('#providerText').val(providerName);
                                                                                                        //alert($('#providerText').val());
                                                                                                    }
                                                                                                }
                                                                                            });
                                                                                        }
                                                                                    }
                                                                                }
                                                                            });
                                                                        }

                                                                        $('#providerId').change(function () {
                                                                            var provider_id = this.value;

                                                                            if (provider_id != 0) {

                                                                                $.get('getproviderdetails', {
                                                                                    provider_id: provider_id
                                                                                }, function (response) {
                                                                                    if (response.length > 0) {
                                                                                        var txt = response;
                                                                                        var obj = jQuery.parseJSON(txt);
                                                                                        console.log(obj);
                                                                                        if (obj.length > 0) {
                                                                                            for (var i = 0; i < obj.length; i++) {
                                                                                                $('#individual_npi').val(obj[i].individual_npi);
                                                                                                $('#medicare_ptan').val(obj[i].medicare_ptan);

                                                                                            }
                                                                                            var providerName = $('#providerId option:selected').text();

                                                                                            $('#providerText').val(providerName);
                                                                                            //alert($('#providerText').val());
                                                                                        }
                                                                                    }
                                                                                });
                                                                            }
                                                                        });

                                                                        $('#primaryInsurance').val(obj[i].primaryInsurance);
                                                                        $('#secondaryInsurance').val(obj[i].secondaryInsurance);
                                                                        $('#primaryMemberId').val(obj[i].primaryMemberId);
                                                                        $('#secondaryMemberId').val(obj[i].secondaryMemberId);
                                                                        //(obj[i].primaryInsurance);
                                                                        //alert(obj[i].secondaryInsurance);

                                                                        $('#practiceAddress').val(obj[i].pr_add1);
                                                                        $('#practicePhone').val(obj[i].pr_cp);
                                                                        $('#practiceFax').val(obj[i].pr_fax);


                                                                    }
                                                                }

                                                            } else
                                                            {
                                                                clearFields();
                                                            }
                                                        });
                                                        $('#flading').hide();
                                                    }
                                                });

                                                function clearFields() {
                                                    $("#inputFullName").val("");
                                                    $('#individual_npi').val("");
                                                    $('#medicare_ptan').val("");
                                                    $('#inputDOB').val("");
                                                    $('#inputAddress').val("");
                                                    $('#inputAddress').val("");
                                                    $('#inputCity').val("");
                                                    $('#inputState').val("");
                                                    $('#inputZip').val("");
                                                    $('#inputEmail').val("");
                                                    $('#inputSSN').val("");
                                                    $('#inputPhone').val("");
                                                    $('#inputEPhone').val("");
                                                    $('#inputGender').val("0");
                                                    $('#practice').val("");
                                                    $('#practice').val("");
                                                    $('#inputInsur').val("");
                                                    //$('#inputLicense').val("");
                                                    $('#inputFirstName').val("");
                                                    $('#inputLastName').val("");
                                                    $('#practiceAddress').val("");
                                                    $('#practicePhone').val("");
                                                    $('#practiceFax').val("");
                                                    $('#primaryInsurance').val("");
                                                    $('#secondaryInsurance').val("");
                                                    $('#primaryMemberId').val("");
                                                    $('#secondaryMemberId').val("");
                                                }
                                            }
                                            );
                                            var checked = 0;
                                            var notflag;
                                            var total = 0;
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
                                                }
                                            });

                                            $('div.modal').on('shown.bs.modal', function (e) {
                                                // for span
                                                $(".data_patient_name").text($("#inputFullName").val());
                                                $(".data_practice_name").text($("#practice").val());

                                                $(".data_practiceAddress").text($("#practiceAddress").val());
                                                $(".data_practicePhone").text($("#practicePhone").val());
                                                $(".data_practiceFax").text($("#practiceFax").val());
                                                //for input felds
                                                $(".data_patient_name").val($("#inputFullName").val());
                                                $(".data_practice_name").val($("#practice").val());
                                                $(".data_inputDOB").val($("#inputDOB").val());
                                                $(".data_inputAddress").val($("#inputAddress").val());
                                                $(".data_inputCity").val($("#inputCity").val());
                                                $(".data_inputState").val($("#inputState").val());
                                                $(".data_inputZip").val($("#inputZip").val());
                                                $(".data_inputEmail").val($("#inputEmail").val());
                                                $(".data_inputPhone").val($("#inputPhone").val());
                                                $(".data_inputGender").val($("#inputGender").val());
                                                $(".data_inputSSN").val($("#inputSSN").val());
                                                $(".data_inputFirstname").val($("#inputFirstName").val());
                                                $(".data_inputLastname").val($("#inputLastName").val());


                                                //Make read only
                                                $('.data_patient_name').attr('readonly', true);
                                                $('.data_inputDOB').attr('readonly', true);
                                                $('.data_inputGender').attr('readonly', true);
                                                $(".data_inputFirstname").attr('readonly', true);
                                                $(".data_inputLastname").attr('readonly', true);
                                                $(".data_inputZip").attr('readonly', true);
                                                $(".data_inputAddress").attr('readonly', true);
                                                $(".data_inputCity").attr('readonly', true);
                                                $(".data_inputState").attr('readonly', true);
                                                $(".data_inputEmail").attr('readonly', true);
                                                $(".data_inputPhone").attr('readonly', true);
                                                $(".data_inputSSN").attr('readonly', true);
                                                $(".data_practice_name").attr('readonly', true);
                                                //override to make field as editable
                                                $(".data_control_editable").attr("readonly", false);

                                                //set gender
                                                var genderVal = $("#inputGender").val();
                                                $("input[type=radio][value=" + genderVal + "].data_gender").each(function (i) {
                                                    this.checked = true;
                                                });
                                            });


                                            var table = $('#eligibilitytable').DataTable({
                                                "aaSorting": [[0, "desc"]], // Sort by first column descending
                                                "lengthMenu": [15, 40, 80, 200, 500],
                                                "iDisplayLength": 15,
                                                stateSave: true,
                                                scrollY: "380px",
                                                scrollX: true,
                                                scrollCollapse: true,
                                                paging: true,
                                                fixedHeader: true,
                                                "oLanguage": {
                                                    "sEmptyTable": "No Data..."
                                                },
                                                "columnDefs": [{
                                                        "targets": '_all',
                                                        "createdCell": function (td, cellData, rowData, row, col) {

                                                        }
                                                    }],
                                                drawCallback: function (settings, json) {

                                                    // $('[data-toggle="tooltip"]').tooltip('update');
                                                },
                                                "ajax": {
                                                    "type": "GET",
                                                    "url": 'surgicaltraylist',
                                                    "contentType": 'application/json'
                                                },
                                                "columns": [
                                                    {"data": function (surgicalTrayObj) {
                                                            return '<input type="checkbox" class = "check">';
                                                        }, "orderable": false, "searchable": false, "name": "check"},
                                                    {"data": function (surgicalTrayObj) {
                                                            return " " + surgicalTrayObj.surgicalTrayId;
                                                        }, "orderable": true, "searchable": true, "name": "id"},
                                                    {"data": function (surgicalTrayObj) {
                                                            return " " + surgicalTrayObj.patientName;
                                                        }, "orderable": true, "searchable": true, "name": "ruleName"},
                                                    //                                                   
                                                    {"data": function (surgicalTrayObj) {
                                                            return "" + surgicalTrayObj.practiceName;
                                                        }, "orderable": true, "searchable": true, "name": "practiceName"},
                                                    {"data": function (surgicalTrayObj) {
                                                            return " " + surgicalTrayObj.dateOfService;
                                                        }, "orderable": true, "searchable": true, "name": "dateOfService"},
                                                    {"data": function (surgicalTrayObj) {
                                                            return " " + surgicalTrayObj.createdUserName;
                                                        }, "orderable": true, "searchable": true, "name": "createdBy"},
                                                    {"data": function (surgicalTrayObj) {
                                                            return "" + surgicalTrayObj.createdDate;
                                                        }, "orderable": true, "searchable": true, "name": "createdDate"},
                                                    {"data": function (surgicalTrayObj) {

                                                            var del = "";
                                                            var recover = "";
                                                            var edit = '<a role="tooltip" data-microtip-position="left" title="" aria-label="Edit" href="editsurgicaltray?id=' + surgicalTrayObj.surgicalTrayId + '"><i class="fas fa-edit" style="font-size:15px; margin:0 3px;color:#2DCEE3;"></i>| ';
                                                            var review = '<a id ="btnedit" class="reviewbutton" role="tooltip" data-microtip-position="left" data-id="download_surgicaltraysheet_pdf?filePath=' + surgicalTrayObj.filePath + '" target="_blank" aria-label="Review" ><i class="mdi mdi mdi-eye" style="font-size:18px; margin:0 3px;color:#FF9764;"></i></a>|';
                                                            var download = '<a role="tooltip" data-microtip-position="left" class="singledownbutton viewpdf" id="singledown" title=""  aria-label="Download"   href="download_surgicaltraysheet_pdf?filePath=' + surgicalTrayObj.filePath + '" target="_blank"><i class="fas fa-download" style="font-size:15px; margin:0 3px;color: #19BCBF;"></i></a> | ';
                                                            if (surgicalTrayObj.flag === 'Y')
                                                            {
                                                                del = '<a id="deleteTraySheet" class="deleteTraySheet"  role="tooltip" data-microtip-position="left" title="" aria-label="Delete"><i class="fas fa-trash-alt" style="font-size:15px; margin:0 3px;color:#FF425C;"></i></a>|';
                                                            }
                                                            if (surgicalTrayObj.flag === 'N')
                                                            {
                                                                recover = '<a id="recoverTraySheet" class="recoverTraySheet"  role="tooltip" data-microtip-position="left" title="" aria-label="Recover"><i class="mdi mdi-restore" style="font-size:18px; margin:0 3px;color:#FF425C;"></i></a>';
                                                            }
                                                            return edit + download + review + del + recover;
                                                        }, "orderable": true, "searchable": true, "name": "action"}

                                                ],
                                                createdRow: function (row, data, dataIndex) {
                                                    $(row).find('td:eq(3)').attr('align', "left");

                                                    if ($(row).find('td:eq(7)').find('a:eq(6)').attr('id') === 'recoverTraySheet' || $(row).find('td:eq(7)').find('a:eq(5)').attr('id') === 'recoverTraySheet' || $(row).find('td:eq(7)').find('a:eq(4)').attr('id') === 'recoverTraySheet' || $(row).find('td:eq(7)').find('a:eq(3)').attr('id') === 'recoverTraySheet' || $(row).find('td:eq(7)').find('a:eq(2)').attr('id') === 'recoverTraySheet' || $(row).find('td:eq(7)').find('a:eq(1)').attr('id') === 'recoverTraySheet')
                                                    {
                                                        $(row).find('td').not(':eq(7)').attr('style', 'font-weight: bold; !important; text-decoration:line-through; color:red;');
                                                        $(row).find('td').find('a').removeAttr('href');
                                                        $(row).find('td').find('a').removeAttr('target');
                                                        $(row).find('td').find('a').removeClass('reviewbutton');
                                                    }
                                                },
                                                footerCallback: function (tfoot, data, start, end, display) {
                                                    $('#flading').hide();
                                                }
                                            });
                                            $(document).on("click", "#eligibilitytable a.deleteTraySheet", function () {
                                                if (confirm("Are you sure you want to delete this record?")) {
                                                    let tr = $(this).closest('tr');
                                                    let  trayid = tr.find('td:eq(1)').text();
                                                    $.ajax({
                                                        url: "deleteTraySheet",
                                                        type: "get", //send it through get method
                                                        data: {
                                                            t_id: $.trim(trayid)
                                                        },
                                                        success: function (response) {
                                                            // alert(response);
                                                            if (response.length > 0)
                                                            {
                                                                console.log(response);
                                                                msgbox("Surgical Tray Sheet Deleted", "Surgical Tray Sheet Portal", "success");
                                                                table.ajax.url("surgicaltraylist").load();
                                                            }
                                                        },
                                                        error: function (err) {
                                                            console.log(err);
                                                            msgbox(err, "Surgical Tray Sheet Portal", "error");
                                                        }
                                                    });
                                                }
                                            });
                                            $(document).on("click", "#eligibilitytable a.recoverTraySheet", function () {
                                                let tr = $(this).closest('tr');
                                                let trayid = tr.find('td:eq(1)').text();
                                                $.ajax({
                                                    url: "recoverTraySheet",
                                                    type: "get", //send it through get method
                                                    data: {
                                                        t_id: $.trim(trayid)
                                                    },
                                                    success: function (response) {
                                                        if (response.length > 0)
                                                        {
                                                            console.log(response);
                                                            msgbox("Surgical Tray Sheet Recovered", "Surgical Tray Sheet Portal", "success");
                                                            table.ajax.url("surgicaltraylist").load();
                                                        }
                                                    },
                                                    error: function (err) {
                                                        console.log(err);
                                                        msgbox(err, "Surgical Tray Sheet Portal", "error");
                                                    }
                                                });
                                            });


                                        });
                                        $(document).on("click", "#eligibilitytable a.reviewbutton", function () {
                                            $('#viewPDFModal').modal('show');
                                            var fileName = $(this).attr('data-id');
                                            var object = "<object data=\"" + fileName + "\" type=\"application/pdf\" width=\"750px\" height=\"450px\">";
                                            object += "If you are unable to view file, you can download from <a href = \"" + fileName + "\" target=\"_blank\">here</a>";
                                            object += " or download <a target = \"_blank\" href = \"http://get.adobe.com/reader/\">Adobe PDF Reader</a> to view the file.";
                                            object += "</object>";

                                            $("#viewPDFContentDiv").html(object);
                                            $('#viewPDFModal').modal('handleUpdate');
                                        });
                                        $('#viewPDFModal').on('hidden.bs.modal', function () {
                                            //clear 
                                            $("#viewPDFContentDiv").html('');
                                        });

        </script>

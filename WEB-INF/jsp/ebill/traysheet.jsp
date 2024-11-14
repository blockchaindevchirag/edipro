<%-- 
    Document   : editsurgicaltray
    Created on : Dec 15, 2022, 6:58:37 PM
    Author     : karth
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
        <%--<jsp:include page="../includes/header.jsp"></jsp:include>--%>
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
                font-size: 16px;
                padding: 0.25rem 0.5rem !important;
                font-family: math !important;
            }
            .select2-container {
                z-index: 9999 !important;
            }

        </style>
    </head> 

    <div class="card-body">
        <div id="new_traysheet" class="m-t-15">
            <div class="row">

                <div class="accordion" id="accordionExample">

                    <div class="card cardbottom card-border-c-green ">
                        <hr style="margin:0; padding:0;">
                        <div id="collapseOne" class=" card-body collapse show" aria-labelledby="headingOne" data-parent="#accordionExample">
                            <div class="form-group row">

                                <div class="col-lg-4 col-md-9 col-sm-12">
                                    <label class="col-form-label text-lg-right">Patient</label>
                                    <select id="patientCombo" class="js-example-basic-single form-control" disabled="true" name="ddlpatientid">
                                        <option value="0">Select Patient</option>
                                        <c:forEach var="patient" items="${patientlist}">
                                            <option value = "${patient.ddlpatientid}" >${patient.ddlpatient}</option>
                                        </c:forEach>
                                    </select>
                                </div>

                                <div class="col-lg-4 col-md-9 col-sm-12">
                                    <label class="form-label">Practice</label>
                                    <input type="text" name="practice" readonly class="form-control" id="practicename"  style="height:29px;"/>
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
                                            <input type="text" class="form-control" name="inputGender" id="inputGender" readonly>
                                            <!--                                                                                <select class="form-control" required disabled name="inputGender" id="inputGender" >
                                                                                                                                <option value = "" >--Select--</option>
                                            <%--<c:forEach var="benefits" items="${genderlist}">--%>
                                                <option value = ${benefits.genderid} >${benefits.gender}</option>
                                            <%--</c:forEach>--%>
                                        </select>-->
                                        </div>
                                    </div>
                                    <div class="form-group col-md-3">
                                        <label for="inputDOB">DOB</label>
                                        <input type="date" class="form-control" id="patientDob" name="patientDob" placeholder="DOB" readonly>
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
                                        <input type="text" readonly class="form-control" id="primaryInsurance" name="primaryInsurance" >
                                    </div>
                                    <div class="form-group col-md-4">
                                        <label for="primaryMemberId">Primary Member Id</label>
                                        <input type="text" readonly class="form-control" id="primaryMemberId" name="primaryMemberId">
                                    </div>

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
                                        <select class="form-control js-example-placeholder-multiple" id="providerId" data-placeholder="Select Treating Surgeon"   name="providerId"></select>
                                        <input type="hidden" id="providerText" name="treatingProvider">
                                    </div>
                                </div>
                            </div>
                            <div class="form-row">
                                <div class="form-group col-md-4">
                                    <label for="">Individual NPI</label>
                                    <input type="text" readonly class="form-control" id="individual_npi" name="individualNpi">
                                </div>
                                <div class="form-group col-md-4">
                                    <label for="">Ind.PTAN</label>
                                    <input type="text" readonly class="form-control" id="individual_npi" name="individualPtan">
                                </div>
                            </div>
                        </div>
                    </div>
                </div> 


                <div class="card card-border-c-green m-t-15">
                    <!--                                                        <div class="row ">
                                                                                <h5 class="p-l-40 p-t-10">Surgical Tray Sheet</h5>
                                                                            </div>-->
                    <hr style="padding:0; margin:0;">
                    <div class="card-body">

                        <div class="col-12 m-t-10">
                            <div class="form-group row col-12 p-l-0">
                                <div class="col-lg-4 row p-l-0" style="margin-left: 2px;">
                                    <label for="dateOfService" class="col-lg-5 col-sm-6 col-md-3 col-form-label font-style-label p-l-0">Date of Service  <span class="text-danger">*</span></label>
                                    <div class="col-sm-6 col-md-3 col-lg-7 p-l-0">
                                        <input type="text" class="form-control data_currentdate_maxdate"  readonly  name="dateOfService" id="dateOfService"   value="<c:out value='${surgicaldetail.dateOfService}'/>">
                                    </div>
                                </div>
                                <div class="col-lg-8">
                                    <div class="form-group row">
                                        <label class="col-form-label col-lg-3 col-sm-12 text-lg-right font-style-label">Admit Time</label>
                                        <div class="col-lg-3 col-md-9 col-sm-12">
                                            <input class="form-control"  type="text"autocomplete="off" id="patientAdmitTime" name="patientAdmitTime" value="<c:out value='${surgicaldetail.patientAdmitTime}'/>">
                                        </div>
                                        <label class="col-form-label col-lg-3 col-sm-12 text-lg-right font-style-label">Discharge Time</label>
                                        <div class="col-lg-3 col-md-9 col-sm-12">
                                            <input class="form-control"  type="text" id="patientDischargeTime"  autocomplete="off" placeholder="" name="patientDischargeTime" value="<c:out value='${surgicaldetail.patientDischargeTime}'/>">
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group row border-left-side">
                                <label for="" class="col-sm-2 col-form-label font-style-label"><i class="fas fa-circle text-c-blue f-10 m-r-10"></i> Vital</label>
                                <hr>
                                <!--h6 class="border-bottom-info p-10 border border-top-0 border-left-0 border-right-0"><i class="fas fa-circle text-c-blue f-12 m-t-10"></i> Vital </h6-->
                                <div class="form-row col-12 " >
                                    <div class="form-group col-md-3 col-sm-12">
                                        <label for="patientTemperature">Temperature</label>
                                        <input type="number" class="form-control"  name="patientTemperature" id="patientTemperature" val="12" placeholder="Enter Temperature" maxlength="3" autocomplete="off" oninput="this.value=this.value.slice(0,this.maxLength)" value="<c:out value='${surgicaldetail.patientTemperature}'/>">
                                    </div>
                                    <div class="form-group col-md-3 col-sm-12">
                                        <label for="patientBloodPressure">Blood Pressure</label>
                                        <input type="text" class="form-control"  name="patientBloodPressure" id="patientBloodPressure"  placeholder="Blood pressure"  autocomplete="off" maxlength="12" oninput="restrictAlphas(event)" value="<c:out value='${surgicaldetail.patientBloodPressure}'/>">
                                    </div>
                                    <div class="form-group col-md-3 col-sm-12">
                                        <label for="patientHeartRate">Heart Rate</label>
                                        <input type="number" class="form-control" name="patientHeartRate" id="patientHeartRate" placeholder="Heart Rate" maxlength="10" autocomplete="off"  oninput="this.value=this.value.slice(0,this.maxLength)" value="<c:out value='${surgicaldetail.patientHeartRate}'/>">
                                    </div>
                                    <div class="form-group col-md-3 col-sm-12">
                                        <label for="patientSpo2">SpO2</label>
                                        <input type="number" class="form-control"  name="patientSpo2" id="patientSpo2" placeholder="Enter SpO2" maxlength="10" autocomplete="off" oninput="this.value=this.value.slice(0,this.maxLength)" value="<c:out value='${surgicaldetail.patientSpo2}'/>">
                                    </div>

                                </div>
                                <div class="form-row col-12">
                                    <div class="form-group col-md-3 col-sm-12">
                                        <label for="patientHeight">Height(Feet and Inch)</label>
                                        <input type="text" class="form-control"  name="patientHeight"id="patientHeight" placeholder="Enter Height" maxlength="20" autocomplete="off" oninput="this.value=this.value.slice(0,this.maxLength)" value="<c:out value='${surgicaldetail.patientHeight}'/>">

                                    </div>
                                    <div class="form-group col-md-3 col-sm-12">
                                        <label for="patientWeight">Weight(Pounds)</label>
                                        <input type="number" class="form-control"  name="patientWeight"  id="patientWeight" placeholder="Enter Weight" maxlength="3" autocomplete="off" oninput="this.value=this.value.slice(0,this.maxLength)" value="<c:out value='${surgicaldetail.patientWeight}'/>">
                                    </div>
                                    <div class="form-group col-md-3 col-sm-12">
                                        <label for="patientBMI">BMI</label>
                                        <input type="number" class="form-control"  name="patientBMI"  id="patientBMI" placeholder="Enter BMI"  maxlength="10" autocomplete="off" oninput="this.value=this.value.slice(0,this.maxLength)" value="<c:out value='${surgicaldetail.patientBMI}'/>">
                                    </div>
                                    <div class="form-group col-md-3 col-sm-12">
                                        <label for="patientRespRate">Resp Rate</label>
                                        <input type="number" class="form-control"  name="patientRespRate"  id="patientRespRate" placeholder="Enter Resp Rate" maxlength="10" autocomplete="off" oninput="this.value=this.value.slice(0,this.maxLength)" value="<c:out value='${surgicaldetail.patientRespRate}'/>">
                                    </div>
                                </div>
                            </div>
                            <hr><!-- comment -->

                            <div class="form-group row border-left-side">
                                <label for="" class=" col-form-label font-style-label m-t-5 m-l-10 "><i class="fas fa-circle text-c-green f-10 m-r-10 m-l-5"></i>Anesthesia (I.V) Sedation & Oral Sedation </label>

                                <div class="form-row col-12">
                                    <div class="form-group col-lg-4 col-md-4 col-sm-12">
                                        <label for=""></label>
                                        <input type="text" class="form-control"  name="anesthesiaType1" id="anesthesiaType1" maxlength="40" autocomplete="off" value="<c:out value='${surgicaldetail.anesthesiaType1}'/>">
                                    </div>
                                    <div class="form-group col-lg-4 col-md-4 col-sm-12">
                                        <label for=""></label>
                                        <input type="text" class="form-control"  name="anesthesiaType2" id="anesthesiaType2" maxlength="40" autocomplete="off" value="<c:out value='${surgicaldetail.anesthesiaType2}'/>">
                                    </div>
                                    <div class="form-group col-lg-4 col-md-4 col-sm-12">
                                        <label for=""></label>
                                        <input type="text" class="form-control" name="anesthesiaType3" id="anesthesiaType3" maxlength="40" autocomplete="off" value="<c:out value='${surgicaldetail.anesthesiaType3}'/>" >
                                    </div>

                                </div>
                                <div class="form-row col-12">
                                    <div class="form-group col-lg-4 col-md-4 col-sm-12">
                                        <label for=""></label>
                                        <input type="text" class="form-control"  name="anesthesiaType4"  id="anesthesiaType4" maxlength="40" autocomplete="off" value="<c:out value='${surgicaldetail.anesthesiaType4}'/>">
                                    </div>
                                    <div class="form-group col-lg-4 col-md-4 col-sm-12">
                                        <label for=""></label>
                                        <input type="text" class="form-control"  name="anesthesiaType5"  id="anesthesiaType5" maxlength="40" autocomplete="off" value="<c:out value='${surgicaldetail.anesthesiaType5}'/>">
                                    </div>
                                    <div class="form-group col-lg-4 col-md-4 col-sm-12">
                                        <label for=""></label>
                                        <input type="text" class="form-control"  name="anesthesiaType6"  id="anesthesiaType6" maxlength="40" autocomplete="off" value="<c:out value='${surgicaldetail.anesthesiaType6}'/>">
                                    </div>
                                </div>
                            </div>
                            <hr>
                            <div class="form-group row border-left-side">
                                <label for="anesthesiaType" class="col-sm-12 co-12 col-form-label font-style-label m-t-5"><i class="fas fa-circle text-c-red f-10 m-r-10"></i>Oral Anesthesia</label>
                                <div class="col-12">
                                    <div class="custom-control custom-checkbox m-t-5">
                                        <input type="checkbox" name="oralAnesthesiaContentType" class=" custom-control-input input-primary" id="oralAnesthesiaContentType" value="OA">
                                        <label class="custom-control-label" for="oralAnesthesiaContentType">Lidocaine 2% <input type="number" name="oralAnesthesiaType" id="oralAnesthesiaType" class="dateborder inputContent" style="width:80px; text-align:center;"  maxlength="5" disabled  autocomplete="off" oninput="this.value=this.value.slice(0,this.maxLength)"> x 1.8cc 1:100,000 epinephrine</label>
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
                                        <label class="custom-control-label" for="oralAnesthesiaContentType5">Marcaine  0.5% <input type="number" name="oralAnesthesiaType5" id="oralAnesthesiaType5" class="dateborder inputContent"   style="width:80px; text-align:center;" maxlength="5" disabled autocomplete="off" oninput="this.value=this.value.slice(0,this.maxLength)"> x 1.8cc 1:200,00 epinephrine</label>
                                    </div>
                                    <div class="custom-control custom-checkbox m-t-5">
                                        <input type="checkbox" name="oralAnesthesiaContentType6" class=" custom-control-input input-primary" id="oralAnesthesiaContentType6" value="OA6">
                                        <label class="custom-control-label" for="oralAnesthesiaContentType6">Other: <input type="text" name="oralAnesthesiaType6" id="oralAnesthesiaType6" class="dateborder inputContent col-sm-6 col-md-6 col-lg-8" style="text-align:center;"   maxlength="35" disabled autocomplete="off" oninput="this.value=this.value.slice(0,this.maxLength)">epi</label>
                                    </div>
                                </div>     
                            </div>
                            <hr>
                            <div class="form-group row border-left-side">
                                <label for="rxType" class="col-sm-2 col-form-label font-style-label m-t-5 rx_type" ><i class="fas fa-circle text-c-green f-10 m-r-10"></i>Rx</label>
                                <div class="col-12">
                                    <div class="custom-control custom-checkbox m-t-5">
                                        <input type="checkbox" name="rxContentType" class=" custom-control-input input-primary" id="rxContentType" value="RX">
                                        <label class="custom-control-label" for="rxContentType">Amox 500mg x <input type="number" name="rxType" id="rxType" class="dateborder" disabled  maxlength="5"  style="width:80px; text-align:center;"  autocomplete="off"  oninput="this.value=this.value.slice(0,this.maxLength)"> Sig: Take 1tab TID until gone</label>
                                    </div>
                                    <div class="custom-control custom-checkbox m-t-5">
                                        <input type="checkbox" name="rxContentType1" class=" custom-control-input input-primary" id="rxContentType1" value="RX1">
                                        <label class="custom-control-label" for="rxContentType1">Amox 500mg x <input type="number" name="rxType1" id="rxType1" class="dateborder" disabled  maxlength="5"  style="width:80px; text-align:center;"  autocomplete="off" oninput="this.value=this.value.slice(0,this.maxLength)"> Sig: take 4tabs 1hr prior treatment, then 1Q8h til gone  </label>
                                    </div>
                                    <div class="custom-control custom-checkbox m-t-5">
                                        <input type="checkbox" name="rxContentType2" class=" custom-control-input input-primary" id="rxContentType2" value="RX2">
                                        <label class="custom-control-label" for="rxContentType2">Pen 600mg x <input type="number" name="rxType2" id="rxType2" class="dateborder" disabled  maxlength="5"   style="width:80px; text-align:center;"  autocomplete="off" oninput="this.value=this.value.slice(0,this.maxLength)"> Sig: Take 1tab TID until gone</label>
                                    </div>
                                    <div class="custom-control custom-checkbox m-t-5">
                                        <input type="checkbox" name="rxContentType3" class=" custom-control-input input-primary" id="rxContentType3" value="RX3">
                                        <label class="custom-control-label" for="rxContentType3"> Clindamycin 300mg x <input type="number" name="rxType3" id="rxType3" class="dateborder" disabled  maxlength="5"  style="width:80px; text-align:center;"  autocomplete="off"  oninput="this.value=this.value.slice(0,this.maxLength)"> Take 1 tablet BID until gone </label>
                                    </div>
                                    <div class="custom-control custom-checkbox m-t-5">
                                        <input type="checkbox" name="rxContentType4" class=" custom-control-input input-primary" id="rxContentType4" value="RX4">
                                        <label class="custom-control-label" for="rxContentType4"> Z-Pack Take as package direction</label>
                                    </div>
                                    <div class="custom-control custom-checkbox m-t-5">
                                        <input type="checkbox" name="rxContentType5" class=" custom-control-input input-primary" id="rxContentType5" value="RX5">
                                        <label class="custom-control-label"  for="rxContentType5">Naproxen 50mg x <input type="number" name="rxType4" id="rxType4" class="dateborder" disabled   maxlength="5"  style="width:80px; text-align:center;"  autocomplete="off"  oninput="this.value=this.value.slice(0,this.maxLength)">Sig: Take 1 tablet Q4-6h prn </label>
                                    </div>
                                    <div class="custom-control custom-checkbox m-t-5">
                                        <input type="checkbox" name="rxContentType6" class=" custom-control-input input-primary" id="rxContentType6" value="RX6">
                                        <label class="custom-control-label" for="rxContentType6"> Augmentin 500mg x <input type="number" name="rxType5" id="rxType5" class="dateborder" disabled  maxlength="5"   style="width:80px; text-align:center;"  autocomplete="off"  oninput="this.value=this.value.slice(0,this.maxLength)">Sig: take 1 TID  x 5, 1 BID x 6-10</label>
                                    </div>
                                    <div class="custom-control custom-checkbox m-t-5">
                                        <input type="checkbox" name="rxContentType7" class=" custom-control-input input-primary" id="rxContentType7" value="RX7">
                                        <label class="custom-control-label" for="rxContentType7">Augmentin 875mg  x <input type="number" name="rxType6" id="rxType6" class="dateborder" disabled  maxlength="5"   style="width:80px; text-align:center;"  autocomplete="off"  oninput="this.value=this.value.slice(0,this.maxLength)"> Sig: take 1 Tablet TID </label>
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
                                        <label class="custom-control-label" for="rxContentType13">Ibuprofen 600mg x <input type="number" name="rxType7" id="rxType7" class="dateborder" disabled   autocomplete="off" maxlength="5"  style="width:80px; text-align:center;" oninput="this.value=this.value.slice(0,this.maxLength)">Sig:  take 1 tablet Q4-6h prn for pain if needed</label>
                                    </div>
                                    <div class="custom-control custom-checkbox m-t-5">
                                        <input type="checkbox" name="rxContentType14" class=" custom-control-input input-primary" id="rxContentType14" value="RX14">
                                        <label class="custom-control-label" for="rxContentType14">Ibuprofen 800mg x <input type="number" name="rxType8" id="rxType8" class="dateborder" disabled  maxlength="5"  autocomplete="off"  style="width:80px; text-align:center;"  oninput="this.value=this.value.slice(0,this.maxLength)">Sig: Take 1 tablet Q4-6h prn for pain if needed</label>
                                    </div>
                                    <div class="custom-control custom-checkbox m-t-5">
                                        <input type="checkbox" name="rxContentType15" class=" custom-control-input input-primary" id="rxContentType15" value="RX15">
                                        <label class="custom-control-label" for="rxContentType15">Norco 325/5mg x <input type="number" name="rxType9" id="rxType9" class="dateborder" disabled  maxlength="5"  autocomplete="off"  style="width:80px; text-align:center;"  oninput="this.value=this.value.slice(0,this.maxLength)"> Sig: Take 1 tablet Q4-6h prn for pain   </label>
                                    </div>
                                    <div class="custom-control custom-checkbox m-t-5">
                                        <input type="checkbox" name="rxContentType16" class=" custom-control-input input-primary" id="rxContentType16" value="RX16">
                                        <label class="custom-control-label" for="rxContentType16">Tylenol 500mg x <input type="number" name="rxType10" id="rxType10" class="dateborder" disabled  maxlength="5"  autocomplete="off"  style="width:80px; text-align:center;"  oninput="this.value=this.value.slice(0,this.maxLength)"> Take 1 tablet Q4-6h prn for pain </label>
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
                                        <label class="custom-control-label" for="rxContentType19">Other:<input type="text" name="rxType11" id="rxType11" class="dateborder col-sm-6 col-md-6 col-lg-10" disabled  maxlength="35"  autocomplete="off" style="text-align:center;"  oninput="this.value=this.value.slice(0,this.maxLength)"></label>
                                    </div>
                                </div>
                            </div>
                            <hr>
                            <div class="form-group row border-left-side">
                                <label for="woundDrainageType" class=" col-form-label font-style-label m-t-5 m-l-10 "><i class="fas fa-circle text-c-blue f-10 m-r-10 m-l-5"></i>Biospy of Wound Drainage Abscesses</label>
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
                                    <select class="required form-control js-example-placeholder-multiple col-sm-12 suture_type " multiple   id="sutureType"  name ="sutureType">
                                        <c:forEach var="suture2" items="${sutureType}">
                                            <option value = ${suture2.id} >${suture2.value}</option>
                                        </c:forEach>
                                    </select>
                                    <input type="hidden" class=" "  name="sutureTypeName" id="sutureTypeName" >
                                </div>
                                <label for="sutureTypeOther" class="col-lg-2 col-sm-12 col-md-3 col-form-label font-style-label m-t-5">And/Or Others</label>
                                <div class="col-md-3 col-sm-12 col-lg-4">
                                    <input type="text" class="form-control"  name="sutureTypeOther"  id="sutureTypeOther" placeholder="" maxlength="40"  autocomplete="off" value="<c:out value='${surgicaldetail.sutureTypeOther}'/>">
                                </div>
                            </div>
                            <hr>
                            <div class="form-group row border-left-side">
                                <label for="sutureLength" class="col-md-3 col-sm-12 col-lg-2 col-form-label font-style-label m-t-5"><i class="fas fa-circle text-c-info f-10 m-r-10"></i>Suture Length</label>
                                <div class="col-lg-4 col-md-4 col-sm-12">
                                    <select class="required form-control js-example-placeholder-multiple col-sm-12 suture_length"  multiple  id="sutureLength"  name ="sutureLength">
                                        <c:forEach var="suture1" items="${sutureLength}">
                                            <option value = ${suture1.id} >${suture1.value}</option>
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
                                                <input type="text" class="form-control"  name="boneGraftValue" id="boneGraftValue" placeholder="" disabled maxlength="10" autocomplete="off" value="<c:out value='${surgicaldetail.boneGraftValue}'/>">
                                            </div>

                                            <div class="form-group col-md-4 col-lg-4 col-sm-12">
                                                <label for="" class="col-form-label font-style-label">Exp Date:</label>
                                                <input type="text" class="form-control data_currentdate"  name="expDate15" id="expDate15" disabled value="" autocomplete="off">
                                            </div>
                                        </div>
                                    </div>
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
                                            <div class="form-group col-md-4 col-lg-4 col-sm-12" >
                                                <label for="" class="col-form-label font-style-label">Value</label>
                                                <input type="text" class="form-control"  name="boneGraftValue2" id="boneGraftValue2" disabled placeholder="" maxlength="10" autocomplete="off">
                                            </div>

                                            <div class="form-group col-md-4 col-lg-4 col-sm-12">
                                                <label for="" class="col-form-label font-style-label">Exp Date:</label>
                                                <input type="text" class="form-control data_currentdate"  name="expDate2" id="expDate2" disabled value="" autocomplete="off">
                                            </div>
                                        </div>
                                    </div>
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
                                            <div class="form-group col-md-4 col-lg-4 col-sm-12" >
                                                <label for="tissueGraftNo" class="col-form-label font-style-label">SN</label>
                                                <input type="text" class="form-control"  name="tissueGraftNo" id="tissueGraftNo" placeholder="" disabled maxlength="25" autocomplete="off">
                                            </div>
                                            <div class="form-group col-md-4 col-lg-4 col-sm-12">
                                                <label for="tissueGraftLength" class="col-form-label font-style-label">Length</label>
                                                <input type="text" class="form-control"  name="tissueGraftLength" id="tissueGraftLength" placeholder="" disabled maxlength="10" autocomplete="off">
                                            </div>

                                            <div class="form-group col-md-4 col-lg-4 col-sm-12">
                                                <label for="expDate5" class="col-form-label font-style-label">Exp Date:</label>
                                                <input type="text" class="form-control data_currentdate"  name="expDate5" id="expDate5" disabled value="" autocomplete="off">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <hr>
                            <div class="form-group row border-left-side">
                                <div class="form-group row col-12 p-l-30">
                                    <label for="membraneType" class="col-form-label font-style-label"><i class="fas fa-circle text-c-info f-10 m-r-10"></i>Membrane</label>
                                </div>
                                <div class="col-12">
                                    <label for="membraneType" class="col-form-label font-style-label">Type:</label>
                                    <div class="custom-control custom-checkbox m-t-5 row">
                                        <div class="col-md-3 col-lg-3 col-sm-12">
                                            <input type="checkbox" name="membraneType3" class=" custom-control-input input-primary" id="membraneType3" value="MT3">
                                            <label class="custom-control-label" for="membraneType3">Absorable Membranes</label>
                                        </div>
                                        <div id="membraneCheck4" class="col-md-9 col-lg-9 col-sm-12 row">
                                            <div class="form-group col-md-6 col-lg-6 col-sm-12" >
                                                <label for="" class="col-form-label font-style-label">SN</label>
                                                <input type="text" class="form-control"  name="membraneNo3" id="membraneNo3" placeholder="" disabled  maxlength="25" autocomplete="off">
                                            </div>

                                            <div class="form-group col-md-6 col-lg-6 col-sm-12">
                                                <label for="" class="col-form-label font-style-label">Exp Date:</label>
                                                <input type="text" class="form-control data_currentdate"  name="expDate10" id="expDate10"  disabled value="" autocomplete="off">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <hr>
                            <div class="form-group row border-left-side">

                                <div class="form-group col-lg-4 col-md-4 col-sm-12">
                                    <label for="phlebotomyType" class="col-form-label font-style-label "><i class="fas fa-circle text-c-purple f-10 m-r-10"></i>Phlebotomy taken:</label>
                                    <select class="required form-control js-example-placeholder-multiple phlebotomy_type " multiple="multiple"   id="phlebotomyType"  name ="phlebotomyType">
                                        <c:forEach var="phlebotomy" items="${phlebotomyType}">
                                            <option value = "${phlebotomy.id}" >${phlebotomy.value}</option>
                                        </c:forEach>
                                    </select>
                                    <input type="hidden" class=" "  name="phlebotomyTypeName" id="phlebotomyTypeName" >
                                </div>

                                <div class="form-group col-lg-4 col-md-4 col-sm-12">
                                    <label for="vaccutube" class="col-form-label font-style-label">Vaccutube:</label>
                                    <select class="required form-control js-example-placeholder-multiple " multiple="multiple"  id="vaccutube"  name ="vaccutube">
                                        <c:forEach var="vaccutube" items="${vaccutubeType}">
                                            <option value = "${vaccutube.id}" >${vaccutube.value}</option>
                                        </c:forEach>
                                    </select>
                                </div>
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

                                                <div class="form-group col-md-6 col-lg-6 col-sm-12"> 
                                                    <label for="" class="col-form-label font-style-label">Exp Date:</label>
                                                    <input type="text" class="form-control data_currentdate"  name="expDate1" id="expDate1"  value="" disabled autocomplete="off">
                                                </div>
                                            </div>
                                        </div>

                                    </div>
                                </div>
                            </div>

                            <hr>
                            <div class="form-group row border-left-side">
                                <div class="form-group row col-12 p-l-30">
                                    <label for="surgicalFixationScrew" class="col-form-label font-style-label"><i class="fas fa-circle text-c-yellow f-10 m-r-10"></i>Surgical screw</label>
                                </div>

                                <div class="form-group col-12">
                                    <label for="surgicalFixationScrew" class="col-form-label font-style-label ">Type:</label>
                                    <div class="col-12">
                                        <div class="custom-control custom-checkbox m-t-5 row">
                                            <div class="col-md-3 col-lg-3 col-sm-12">
                                                <input type="checkbox" name="surgicalFixationScrew" class=" custom-control-input input-primary" id="surgicalFixationScrew" value="SS">
                                                <label class="custom-control-label" for="surgicalFixationScrew">Prosthetic</label>
                                            </div>
                                            <div id="surgicalScrewCheck1" class="col-md-9 col-lg-9 col-sm-12 row">
                                                <div class="form-group col-md-6 col-lg-6 col-sm-12">
                                                    <label for="" class="col-form-label font-style-label">SN</label>
                                                    <input type="text" class="form-control"  name="fixationScrewNo" id="fixationScrewNo" disabled  placeholder="" maxlength="25" autocomplete="off">
                                                </div>

                                                <div class="form-group col-md-6 col-lg-6 col-sm-12">
                                                    <label for="" class="col-form-label font-style-label">Exp Date:</label>
                                                    <input type="text" class="form-control data_currentdate"  name="expDate11" id="expDate11"  disabled value="" autocomplete="off">
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
                                                    <input type="text" class="form-control"  name="fixationScrewNo1" id="fixationScrewNo1" disabled placeholder="" maxlength="25" autocomplete="off">
                                                </div>

                                                <div class="form-group col-md-6 col-lg-6 col-sm-12">
                                                    <label for="" class="col-form-label font-style-label">Exp Date:</label>
                                                    <input type="text" class="form-control data_currentdate"  name="expDate12" id="expDate12"  disabled value="" autocomplete="off">
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
                                                    <input type="text" class="form-control"  name="surgicalPlateNo" id="surgicalPlateNo" placeholder=""  disabled maxlength="25" autocomplete="off">
                                                </div>

                                                <div class="form-group col-md-6 col-lg-6 col-sm-12">
                                                    <label for="" class="col-form-label font-style-label">Exp Date:</label>
                                                    <input type="text" class="form-control data_currentdate"  name="expDate13" id="expDate13" disabled value="" autocomplete="off">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="custom-control custom-checkbox m-t-5 row">
                                            <div class="col-md-3 col-lg-3 col-sm-12">
                                                <input type="checkbox" name="surgicalPlateType1" class=" custom-control-input input-primary" id="surgicalPlateType1" value="SP1">
                                                <label class="custom-control-label" for="surgicalPlateType1">Metal</label>
                                            </div>
                                            <div id="surgicalPlateCheck2" class="col-md-9 col-lg-9 col-sm-12 row">
                                                <div class="form-group col-md-6 col-lg-6 col-sm-12">
                                                    <label for="" class="col-form-label font-style-label">SN</label>
                                                    <input type="text" class="form-control"  name="surgicalPlateNo1" id="surgicalPlateNo1" disabled placeholder="" maxlength="25" autocomplete="off">
                                                </div>

                                                <div class="form-group col-md-6 col-lg-6 col-sm-12">
                                                    <label for="" class="col-form-label font-style-label">Exp Date:</label>
                                                    <input type="text" class="form-control data_currentdate"  name="expDate14" id="expDate14" disabled  value="" autocomplete="off">
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
                <div class="modal-footer col-12">
                    <button type="button" class="btn btn-primary " data-dismiss="modal"  >Close</button> 
                    <button type="button" class="btn btn-primary " id="savebtn" onclick="saveTraySheet(this)">Save</button>
                </div>
                <input type="hidden" id="surgicalTrayId" name="surgicalTrayId" value="<c:out value='${surgicaldetail.surgicalTrayId}'/>"/>
                <input type="hidden" id="ddlpatientid" name="ddlpatientid" value="<c:out value='${surgicaldetail.ddlpatientid}'/>"/>
            </div>

        </div>
    </div>                 
    <!--                <div id="flading" class="loader">
            
                    </div>-->


    <script>

        function saveTraySheet(buttonObj)
        {
            $(buttonObj).attr('disabled', 'disabled');
            $(buttonObj).text('Sending...');

            $(buttonObj).off('click'); //disables click event
            console.log(buttonObj);

            let checkboxes = document.querySelectorAll('input[name="oralAnesthesiaContentType"]:checked');
            let values = [];
            checkboxes.forEach((checkbox) => {
                values.push(checkbox.value);
            });

            let checkboxes1 = document.querySelectorAll('input[name="oralAnesthesiaContentType1"]:checked');
            let values1 = [];
            checkboxes1.forEach((checkbox) => {
                values1.push(checkbox.value);
            });

            let checkboxes2 = document.querySelectorAll('input[name="oralAnesthesiaContentType2"]:checked');
            let values2 = [];
            checkboxes2.forEach((checkbox) => {
                values2.push(checkbox.value);
            });

            let checkboxes3 = document.querySelectorAll('input[name="oralAnesthesiaContentType3"]:checked');
            let values3 = [];
            checkboxes3.forEach((checkbox) => {
                values3.push(checkbox.value);
            });

            let checkboxes4 = document.querySelectorAll('input[name="oralAnesthesiaContentType4"]:checked');
            let values4 = [];
            checkboxes4.forEach((checkbox) => {
                values4.push(checkbox.value);
            });
            let checkboxes46 = document.querySelectorAll('input[name="oralAnesthesiaContentType5"]:checked');
            let values46 = [];
            checkboxes46.forEach((checkbox) => {
                values46.push(checkbox.value);
            });

            let checkboxes5 = document.querySelectorAll('input[name="oralAnesthesiaContentType6"]:checked');
            let values5 = [];
            checkboxes5.forEach((checkbox) => {
                values5.push(checkbox.value);
            });

            let checkboxes6 = document.querySelectorAll('input[name="rxContentType"]:checked');
            let values6 = [];
            checkboxes6.forEach((checkbox) => {
                values6.push(checkbox.value);
            });

            let checkboxes7 = document.querySelectorAll('input[name="rxContentType1"]:checked');
            let values7 = [];
            checkboxes7.forEach((checkbox) => {
                values7.push(checkbox.value);
            });

            let checkboxes8 = document.querySelectorAll('input[name="rxContentType2"]:checked');
            let values8 = [];
            checkboxes8.forEach((checkbox) => {
                values8.push(checkbox.value);
            });

            let checkboxes9 = document.querySelectorAll('input[name="rxContentType3"]:checked');
            let values9 = [];
            checkboxes9.forEach((checkbox) => {
                values9.push(checkbox.value);
            });

            let checkboxes10 = document.querySelectorAll('input[name="rxContentType4"]:checked');
            let values10 = [];
            checkboxes10.forEach((checkbox) => {
                values10.push(checkbox.value);
            });

            let checkboxes11 = document.querySelectorAll('input[name="rxContentType5"]:checked');
            let values11 = [];
            checkboxes11.forEach((checkbox) => {
                values11.push(checkbox.value);
            });

            let checkboxes12 = document.querySelectorAll('input[name="rxContentType6"]:checked');
            let values12 = [];
            checkboxes12.forEach((checkbox) => {
                values12.push(checkbox.value);
            });

            let checkboxes13 = document.querySelectorAll('input[name="rxContentType7"]:checked');
            let values13 = [];
            checkboxes13.forEach((checkbox) => {
                values13.push(checkbox.value);
            });

            let checkboxes14 = document.querySelectorAll('input[name="rxContentType8"]:checked');
            let values14 = [];
            checkboxes14.forEach((checkbox) => {
                values14.push(checkbox.value);
            });

            let checkboxes15 = document.querySelectorAll('input[name="rxContentType9"]:checked');
            let values15 = [];
            checkboxes15.forEach((checkbox) => {
                values15.push(checkbox.value);
            });

            let checkboxes16 = document.querySelectorAll('input[name="rxContentType10"]:checked');
            let values16 = [];
            checkboxes16.forEach((checkbox) => {
                values16.push(checkbox.value);
            });

            let checkboxes17 = document.querySelectorAll('input[name="rxContentType11"]:checked');
            let values17 = [];
            checkboxes17.forEach((checkbox) => {
                values17.push(checkbox.value);
            });

            let checkboxes18 = document.querySelectorAll('input[name="rxContentType12"]:checked');
            let values18 = [];
            checkboxes18.forEach((checkbox) => {
                values18.push(checkbox.value);
            });

            let checkboxes19 = document.querySelectorAll('input[name="rxContentType13"]:checked');
            let values19 = [];
            checkboxes19.forEach((checkbox) => {
                values19.push(checkbox.value);
            });

            let checkboxes20 = document.querySelectorAll('input[name="rxContentType14"]:checked');
            let values20 = [];
            checkboxes20.forEach((checkbox) => {
                values20.push(checkbox.value);
            });

            let checkboxes21 = document.querySelectorAll('input[name="rxContentType15"]:checked');
            let values21 = [];
            checkboxes21.forEach((checkbox) => {
                values21.push(checkbox.value);
            });

            let checkboxes22 = document.querySelectorAll('input[name="rxContentType16"]:checked');
            let values22 = [];
            checkboxes22.forEach((checkbox) => {
                values22.push(checkbox.value);
            });

            let checkboxes23 = document.querySelectorAll('input[name="rxContentType17"]:checked');
            let values23 = [];
            checkboxes23.forEach((checkbox) => {
                values23.push(checkbox.value);
            });

            let checkboxes24 = document.querySelectorAll('input[name="rxContentType18"]:checked');
            let values24 = [];
            checkboxes24.forEach((checkbox) => {
                values24.push(checkbox.value);
            });

            let checkboxes25 = document.querySelectorAll('input[name="rxContentType19"]:checked');
            let values25 = [];
            checkboxes25.forEach((checkbox) => {
                values25.push(checkbox.value);
            });

            let checkboxes26 = document.querySelectorAll('input[name="woundDrainageType"]:checked');
            let values26 = [];
            checkboxes26.forEach((checkbox) => {
                values26.push(checkbox.value);
            });

            let checkboxes27 = document.querySelectorAll('input[name="woundDrainageType1"]:checked');
            let values27 = [];
            checkboxes27.forEach((checkbox) => {
                values27.push(checkbox.value);
            });

            let checkboxes28 = document.querySelectorAll('input[name="woundDrainageType2"]:checked');
            let values28 = [];
            checkboxes28.forEach((checkbox) => {
                values28.push(checkbox.value);
            });

            let checkboxes29 = document.querySelectorAll('input[name="woundDrainageType3"]:checked');
            let values29 = [];
            checkboxes29.forEach((checkbox) => {
                values29.push(checkbox.value);
            });

            let checkboxes30 = document.querySelectorAll('input[name="woundDrainageType4"]:checked');
            let values30 = [];
            checkboxes30.forEach((checkbox) => {
                values30.push(checkbox.value);
            });

            let checkboxes31 = document.querySelectorAll('input[name="woundDrainageType5"]:checked');
            let values31 = [];
            checkboxes31.forEach((checkbox) => {
                values31.push(checkbox.value);
            });

            let checkboxes32 = document.querySelectorAll('input[name="woundDrainageType6"]:checked');
            let values32 = [];
            checkboxes32.forEach((checkbox) => {
                values32.push(checkbox.value);
            });

            let checkboxes33 = document.querySelectorAll('input[name="woundDrainageType7"]:checked');
            let values33 = [];
            checkboxes33.forEach((checkbox) => {
                values33.push(checkbox.value);
            });

            let checkboxes34 = document.querySelectorAll('input[name="woundDrainageType8"]:checked');
            let values34 = [];
            checkboxes34.forEach((checkbox) => {
                values34.push(checkbox.value);
            });

            let checkboxes35 = document.querySelectorAll('input[name="woundDrainageType9"]:checked');
            let values35 = [];
            checkboxes35.forEach((checkbox) => {
                values35.push(checkbox.value);
            });

            let checkboxes36 = document.querySelectorAll('input[name="boneGraftType"]:checked');
            let values36 = [];
            checkboxes36.forEach((checkbox) => {
                values36.push(checkbox.value);
            });

            let checkboxes37 = document.querySelectorAll('input[name="boneGraftType2"]:checked');
            let values37 = [];
            checkboxes37.forEach((checkbox) => {
                values37.push(checkbox.value);
            });

            let checkboxes38 = document.querySelectorAll('input[name="tissueGraftType"]:checked');
            let values38 = [];
            checkboxes38.forEach((checkbox) => {
                values38.push(checkbox.value);
            });

            let checkboxes39 = document.querySelectorAll('input[name="membraneType3"]:checked');
            let values39 = [];
            checkboxes39.forEach((checkbox) => {
                values39.push(checkbox.value);
            });

            let checkboxes40 = document.querySelectorAll('input[name="surgicalFixationScrewType"]:checked');
            let values40 = [];
            checkboxes40.forEach((checkbox) => {
                values40.push(checkbox.value);
            });

            let checkboxes41 = document.querySelectorAll('input[name="surgicalFixationScrewType1"]:checked');
            let values41 = [];
            checkboxes41.forEach((checkbox) => {
                values41.push(checkbox.value);
            });

            let checkboxes42 = document.querySelectorAll('input[name="surgicalFixationScrew"]:checked');
            let values42 = [];
            checkboxes42.forEach((checkbox) => {
                values42.push(checkbox.value);
            });

            let checkboxes43 = document.querySelectorAll('input[name="surgicalFixationScrew1"]:checked');
            let values43 = [];
            checkboxes43.forEach((checkbox) => {
                values43.push(checkbox.value);
            });

            let checkboxes44 = document.querySelectorAll('input[name="surgicalPlateType"]:checked');
            let values44 = [];
            checkboxes44.forEach((checkbox) => {
                values44.push(checkbox.value);
            });

            let checkboxes45 = document.querySelectorAll('input[name="surgicalPlateType1"]:checked');
            let values45 = [];
            checkboxes45.forEach((checkbox) => {
                values45.push(checkbox.value);
            });
            var trayid = '${surgicaldetail.surgicalTrayId}';
            var practiceId = $('#practiceId').val();
            var patientDob = $('#patientDob').val();
            var primaryInsurance = $('#primaryInsurance').val();
            var secondaryInsurance = $('#secondaryInsurance').val();
            var primaryMemberId = $('#primaryMemberId').val();
            var secondaryMemberId = $('#secondaryMemberId').val();
            var treatingProvider = $('#providerText').val();
            var individualNpi = $('#individual_npi').val();
            var individualPtan = $('#individual_npi').val();
            var dateOfService = $('#dateOfService').val();
            var patientAdmitTime = $('#patientAdmitTime').val();
            var patientDischargeTime = $('#patientDischargeTime').val();
            var patientTemperature = $('#patientTemperature').val();
            var patientBloodPressure = $('#patientBloodPressure').val();
            var patientHeartRate = $('#patientHeartRate').val();
            var patientSpo2 = $('#patientSpo2').val();
            var patientHeight = $('#patientHeight').val();
            var patientWeight = $('#patientWeight').val();
            var patientBMI = $('#patientBMI').val();
            var patientRespRate = $('#patientRespRate').val();
            var anesthesiaType1 = $('#anesthesiaType1').val();
            var anesthesiaType2 = $('#anesthesiaType2').val();
            var anesthesiaType3 = $('#anesthesiaType3').val();
            var anesthesiaType4 = $('#anesthesiaType4').val();
            var anesthesiaType5 = $('#anesthesiaType5').val();
            var anesthesiaType6 = $('#anesthesiaType6').val();
            var oralAnesthesiaType = $('#oralAnesthesiaType').val();
            var oralAnesthesiaType1 = $('#oralAnesthesiaType1').val();
            var oralAnesthesiaType2 = $('#oralAnesthesiaType2').val();
            var oralAnesthesiaType3 = $('#oralAnesthesiaType3').val();
            var oralAnesthesiaType4 = $('#oralAnesthesiaType4').val();
            var oralAnesthesiaType5 = $('#oralAnesthesiaType5').val();
            var oralAnesthesiaType6 = $('#oralAnesthesiaType6').val();
            var rxType = $('#rxType').val();
            var rxType1 = $('#rxType1').val();
            var rxType2 = $('#rxType2').val();
            var rxType3 = $('#rxType3').val();
            var rxType4 = $('#rxType4').val();
            var rxType5 = $('#rxType5').val();
            var rxType6 = $('#rxType6').val();
            var rxType7 = $('#rxType7').val();
            var rxType8 = $('#rxType8').val();
            var rxType9 = $('#rxType9').val();
            var rxType10 = $('#rxType10').val();
            var rxType11 = $('#rxType11').val();
            var woundDrainage = $('#woundDrainage').val();
            var woundDrainage1 = $('#woundDrainage1').val();
            var woundDrainage2 = $('#woundDrainage2').val();
            var woundDrainage3 = $('#woundDrainage3').val();
            var woundDrainage4 = $('#woundDrainage4').val();
            var woundDrainage5 = $('#woundDrainage5').val();
            var woundDrainage6 = $('#woundDrainage6').val();
            var woundDrainage7 = $('#woundDrainage7').val();
            var woundDrainage8 = $('#woundDrainage8').val();
            var woundDrainage9 = $('#woundDrainage9').val();
            var sutureType = $('#sutureType').val();
            var sutureTypeName = $('#sutureTypeName').val();
            var sutureTypeOther = $('#sutureTypeOther').val();
            var sutureLength = $('#sutureLength').val();
            var sutureLengthName = $('#sutureLengthName').val();
            var boneGraftSno = $('#boneGraftSno').val();
            var boneGraftValue = $('#boneGraftValue').val();
            var expDate15 = $('#expDate15').val();
            var boneGraftSno1 = $('#boneGraftSno1').val();
            var boneGraftValue2 = $('#boneGraftValue2').val();
            var expDate2 = $('#expDate2').val();
            var tissueGraftNo = $('#tissueGraftNo').val();
            var tissueGraftLength = $('#tissueGraftLength').val();
            var expDate5 = $('#expDate5').val();
            var membraneNo3 = $('#membraneNo3').val();
            var expDate10 = $('#expDate10').val();
            var phlebotomyType = $('#phlebotomyType').val();
            var phlebotomyTypeName = $('#phlebotomyTypeName').val();
            var vaccutube = $('#vaccutube').val();
            var surgicalFixationScrewNo = $('#surgicalFixationScrewNo').val();
            var expDate = $('#expDate').val();
            var surgicalFixationScrewNo1 = $('#surgicalFixationScrewNo1').val();
            var expDate1 = $('#expDate1').val();
            var fixationScrewNo = $('#fixationScrewNo').val();
            var expDate11 = $('#expDate11').val();
            var fixationScrewNo1 = $('#fixationScrewNo1').val();
            var expDate12 = $('#expDate12').val();
            var fixationScrewTypeName = $('#fixationScrewTypeName').val();
            var surgicalPlateNo = $('#surgicalPlateNo').val();
            var expDate13 = $('#expDate13').val();
            var surgicalPlateNo1 = $('#surgicalPlateNo1').val();
            var expDate14 = $('#expDate14').val();
            var surgicalPlateTypeName = $('#surgicalPlateTypeName').val();
            if (trayid > 0)
            {
                $.ajax({
                    url: "update-ebill-traysheet",
                    type: "POST", //send it through post method
                    data: {
                        ddlpatientid: $("#patientCombo").val(),
                        practiceId: practiceId,
                        surgicalTrayId: trayid,
                        patientDob: patientDob,
                        primaryMemberId: primaryMemberId,
                        secondaryMemberId: secondaryMemberId,
                        primaryInsurance: primaryInsurance,
                        secondaryInsurance: secondaryInsurance,
                        treatingProvider: treatingProvider,
                        individualNpi: individualNpi,
                        individualPtan: individualPtan,
                        dateOfService: dateOfService,
                        patientAdmitTime: patientAdmitTime,
                        patientDischargeTime: patientDischargeTime,
                        patientTemperature: patientTemperature,
                        patientBloodPressure: patientBloodPressure,
                        patientHeartRate: patientHeartRate,
                        patientSpo2: patientSpo2,
                        patientHeight: patientHeight,
                        patientWeight: patientWeight,
                        patientBMI: patientBMI,
                        patientRespRate: patientRespRate,
                        anesthesiaType1: anesthesiaType1,
                        anesthesiaType2: anesthesiaType2,
                        anesthesiaType3: anesthesiaType3,
                        anesthesiaType4: anesthesiaType4,
                        anesthesiaType5: anesthesiaType5,
                        anesthesiaType6: anesthesiaType6,
                        oralAnesthesiaContentType: values,
                        oralAnesthesiaType: oralAnesthesiaType,
                        oralAnesthesiaContentType1: values1,
                        oralAnesthesiaType1: oralAnesthesiaType1,
                        oralAnesthesiaContentType2: values2,
                        oralAnesthesiaType2: oralAnesthesiaType2,
                        oralAnesthesiaContentType3: values3,
                        oralAnesthesiaType3: oralAnesthesiaType3,
                        oralAnesthesiaContentType4: values4,
                        oralAnesthesiaType4: oralAnesthesiaType4,
                        oralAnesthesiaContentType5: values46,
                        oralAnesthesiaType5: oralAnesthesiaType5,
                        oralAnesthesiaContentType6: values5,
                        oralAnesthesiaType6: oralAnesthesiaType6,
                        rxContentType: values6,
                        rxType: rxType,
                        rxContentType1: values7,
                        rxType1: rxType1,
                        rxContentType2: values8,
                        rxType2: rxType2,
                        rxContentType3: values9,
                        rxType3: rxType3,
                        rxContentType4: values10,
                        rxType4: rxType4,
                        rxContentType5: values11,
                        rxType5: rxType5,
                        rxContentType6: values12,
                        rxType6: rxType6,
                        rxContentType7: values13,
                        rxType7: rxType7,
                        rxContentType8: values14,
                        rxType8: rxType8,
                        rxContentType9: values15,
                        rxType9: rxType9,
                        rxContentType10: values16,
                        rxType10: rxType10,
                        rxContentType11: values17,
                        rxType11: rxType11,
                        rxContentType12: values18,
                        rxContentType13: values19,
                        rxContentType14: values20,
                        rxContentType15: values21,
                        rxContentType16: values22,
                        rxContentType17: values23,
                        rxContentType18: values24,
                        rxContentType19: values25,
                        woundDrainageType: values26,
                        woundDrainage: woundDrainage,
                        woundDrainageType1: values27,
                        woundDrainage1: woundDrainage1,
                        woundDrainageType2: values28,
                        woundDrainage2: woundDrainage2,
                        woundDrainageType3: values29,
                        woundDrainage3: woundDrainage3,
                        woundDrainageType4: values30,
                        woundDrainage4: woundDrainage4,
                        woundDrainageType5: values31,
                        woundDrainage5: woundDrainage5,
                        woundDrainageType6: values32,
                        woundDrainage6: woundDrainage6,
                        woundDrainageType: values33,
                        woundDrainage7: woundDrainage7,
                        woundDrainageType8: values34,
                        woundDrainage8: woundDrainage8,
                        woundDrainageType9: values35,
                        woundDrainage9: woundDrainage9,
                        sutureType: sutureType,
                        sutureTypeName: sutureTypeName,
                        sutureTypeOther: sutureTypeOther,
                        sutureLength: sutureLength,
                        sutureLengthName: sutureLengthName,
                        boneGraftType: values36,
                        boneGraftSno: boneGraftSno,
                        boneGraftValue: boneGraftValue,
                        expDate15: expDate15,
                        boneGraftType2: values37,
                        boneGraftSno1: boneGraftSno1,
                        boneGraftValue2: boneGraftValue2,
                        expDate2: expDate2,
                        tissueGraftType: values38,
                        tissueGraftNo: tissueGraftNo,
                        tissueGraftLength: tissueGraftLength,
                        expDate5: expDate5,
                        membraneType3: values39,
                        membraneNo3: membraneNo3,
                        expDate10: expDate10,
                        phlebotomyType: phlebotomyType,
                        phlebotomyTypeName: phlebotomyTypeName,
                        vaccutube: vaccutube,
                        surgicalFixationScrewType: values40,
                        surgicalFixationScrewNo: surgicalFixationScrewNo,
                        expDate: expDate,
                        surgicalFixationScrewType1: values41,
                        surgicalFixationScrewNo1: surgicalFixationScrewNo1,
                        expDate1: expDate1,
                        surgicalFixationScrew: values42,
                        fixationScrewNo: fixationScrewNo,
                        expDate11: expDate11,
                        surgicalFixationScrew1: values43,
                        fixationScrewNo1: fixationScrewNo1,
                        expDate12: expDate12,
                        fixationScrewTypeName: fixationScrewTypeName,
                        surgicalPlateType: values44,
                        surgicalPlateNo: surgicalPlateNo,
                        expDate13: expDate13,
                        surgicalPlateType1: values45,
                        surgicalPlateNo1: surgicalPlateNo1,
                        expDate14: expDate14,
                        surgicalPlateTypeName: surgicalPlateTypeName
                    },
                    success: function (response) {
                        if (response.length > 0)
                        {
                            var fileName = response;
                            if (((response !== '') && typeof (response !== "undefined"))) {
                                $('#filedata').html("<a href='download_surgicaltraysheet_pdf?filePath=" + fileName + "' target='_blank'>" + fileName + " </a>");
                            } else {
                                $('#filedata').html(" File Not Available.");
                            }

                            $("#viewTraySheetModal").modal('hide');
                        }
                        $(buttonObj).removeAttr('disabled');
                        $(buttonObj).text('Submit');

                    },
                    error: function (err) {
                        console.log(err);
                        $(buttonObj).removeAttr('disabled');
                        $(buttonObj).text('Submit');
                    }
                });
            } else {
                $.ajax({
                    url: "save-ebill-traysheet",
                    type: "POST", //send it through post method
                    data: {
                        ddlpatientid: $("#patientCombo").val(),
                        practiceId: practiceId,
                        surgicalTrayId: trayid,
                        patientDob: patientDob,
                        primaryMemberId: primaryMemberId,
                        secondaryMemberId: secondaryMemberId,
                        primaryInsurance: primaryInsurance,
                        secondaryInsurance: secondaryInsurance,
                        treatingProvider: treatingProvider,
                        individualNpi: individualNpi,
                        individualPtan: individualPtan,
                        dateOfService: dateOfService,
                        patientAdmitTime: patientAdmitTime,
                        patientDischargeTime: patientDischargeTime,
                        patientTemperature: patientTemperature,
                        patientBloodPressure: patientBloodPressure,
                        patientHeartRate: patientHeartRate,
                        patientSpo2: patientSpo2,
                        patientHeight: patientHeight,
                        patientWeight: patientWeight,
                        patientBMI: patientBMI,
                        patientRespRate: patientRespRate,
                        anesthesiaType1: anesthesiaType1,
                        anesthesiaType2: anesthesiaType2,
                        anesthesiaType3: anesthesiaType3,
                        anesthesiaType4: anesthesiaType4,
                        anesthesiaType5: anesthesiaType5,
                        anesthesiaType6: anesthesiaType6,
                        oralAnesthesiaContentType: values,
                        oralAnesthesiaType: oralAnesthesiaType,
                        oralAnesthesiaContentType1: values1,
                        oralAnesthesiaType1: oralAnesthesiaType1,
                        oralAnesthesiaContentType2: values2,
                        oralAnesthesiaType2: oralAnesthesiaType2,
                        oralAnesthesiaContentType3: values3,
                        oralAnesthesiaType3: oralAnesthesiaType3,
                        oralAnesthesiaContentType4: values4,
                        oralAnesthesiaType4: oralAnesthesiaType4,
                        oralAnesthesiaContentType5: values46,
                        oralAnesthesiaType5: oralAnesthesiaType5,
                        oralAnesthesiaContentType6: values5,
                        oralAnesthesiaType6: oralAnesthesiaType6,
                        rxContentType: values6,
                        rxType: rxType,
                        rxContentType1: values7,
                        rxType1: rxType1,
                        rxContentType2: values8,
                        rxType2: rxType2,
                        rxContentType3: values9,
                        rxType3: rxType3,
                        rxContentType4: values10,
                        rxType4: rxType4,
                        rxContentType5: values11,
                        rxType5: rxType5,
                        rxContentType6: values12,
                        rxType6: rxType6,
                        rxContentType7: values13,
                        rxType7: rxType7,
                        rxContentType8: values14,
                        rxType8: rxType8,
                        rxContentType9: values15,
                        rxType9: rxType9,
                        rxContentType10: values16,
                        rxType10: rxType10,
                        rxContentType11: values17,
                        rxType11: rxType11,
                        rxContentType12: values18,
                        rxContentType13: values19,
                        rxContentType14: values20,
                        rxContentType15: values21,
                        rxContentType16: values22,
                        rxContentType17: values23,
                        rxContentType18: values24,
                        rxContentType19: values25,
                        woundDrainageType: values26,
                        woundDrainage: woundDrainage,
                        woundDrainageType1: values27,
                        woundDrainage1: woundDrainage1,
                        woundDrainageType2: values28,
                        woundDrainage2: woundDrainage2,
                        woundDrainageType3: values29,
                        woundDrainage3: woundDrainage3,
                        woundDrainageType4: values30,
                        woundDrainage4: woundDrainage4,
                        woundDrainageType5: values31,
                        woundDrainage5: woundDrainage5,
                        woundDrainageType6: values32,
                        woundDrainage6: woundDrainage6,
                        woundDrainageType: values33,
                        woundDrainage7: woundDrainage7,
                        woundDrainageType8: values34,
                        woundDrainage8: woundDrainage8,
                        woundDrainageType9: values35,
                        woundDrainage9: woundDrainage9,
                        sutureType: sutureType,
                        sutureTypeName: sutureTypeName,
                        sutureTypeOther: sutureTypeOther,
                        sutureLength: sutureLength,
                        sutureLengthName: sutureLengthName,
                        boneGraftType: values36,
                        boneGraftSno: boneGraftSno,
                        boneGraftValue: boneGraftValue,
                        expDate15: expDate15,
                        boneGraftType2: values37,
                        boneGraftSno1: boneGraftSno1,
                        boneGraftValue2: boneGraftValue2,
                        expDate2: expDate2,
                        tissueGraftType: values38,
                        tissueGraftNo: tissueGraftNo,
                        tissueGraftLength: tissueGraftLength,
                        expDate5: expDate5,
                        membraneType3: values39,
                        membraneNo3: membraneNo3,
                        expDate10: expDate10,
                        phlebotomyType: phlebotomyType,
                        phlebotomyTypeName: phlebotomyTypeName,
                        vaccutube: vaccutube,
                        surgicalFixationScrewType: values40,
                        surgicalFixationScrewNo: surgicalFixationScrewNo,
                        expDate: expDate,
                        surgicalFixationScrewType1: values41,
                        surgicalFixationScrewNo1: surgicalFixationScrewNo1,
                        expDate1: expDate1,
                        surgicalFixationScrew: values42,
                        fixationScrewNo: fixationScrewNo,
                        expDate11: expDate11,
                        surgicalFixationScrew1: values43,
                        fixationScrewNo1: fixationScrewNo1,
                        expDate12: expDate12,
                        fixationScrewTypeName: fixationScrewTypeName,
                        surgicalPlateType: values44,
                        surgicalPlateNo: surgicalPlateNo,
                        expDate13: expDate13,
                        surgicalPlateType1: values45,
                        surgicalPlateNo1: surgicalPlateNo1,
                        expDate14: expDate14,
                        surgicalPlateTypeName: surgicalPlateTypeName
                    },
                    success: function (response) {
                        if (response.length > 0)
                        {
                            var fileName = response;
                            if (((response !== '') && typeof (response !== "undefined"))) {
                                $('#filedata').html("<a href='download_surgicaltraysheet_pdf?filePath=" + fileName + "' target='_blank'>" + fileName + " </a>");
                            } else {
                                $('#filedata').html(" File Not Available.");
                            }

                            $("#viewTraySheetModal").modal('hide');
                        }
                        $(buttonObj).removeAttr('disabled');
                        $(buttonObj).text('Submit');
                        // $("form[name='ebillform']").submit();
                    },
                    error: function (err) {
                        console.log(err);
                        $(buttonObj).removeAttr('disabled');
                        $(buttonObj).text('Submit');
                    }
                });
            }

        }

        function restrictAlphas(e) {
            e.target.value = e.target.value.replace(/[\D]/g, '').replace(/(\d{3})/, "$1/");
        }
        $(document).ready(function () {

            $('#sutureLength').select2();
            $('#sutureType').select2();
            $('#phlebotomyType').select2();
            $('#vaccutube').select2();

            $('#flading').hide();

            var maxDate = new Date("01/01/4000");
            $(".data_currentdate").datepicker({
                format: "mm/dd/yyyy",
                autoclose: true,
                orientation: "bottom left",
                todayHighlight: true,
                endDate: maxDate
            }).mask('99/99/9999');

            $.fn.timepicker.defaults = $.extend(true, {}, $.fn.timepicker.defaults, {
                icons: {
                    up: 'feather icon-chevron-up',
                    down: 'feather icon-chevron-down'
                }
            });
            // minimum setup
            $('#patientAdmitTime, #patientDischargeTime').timepicker({
                timeFormat: "HH:MM",
                defaultTime: ''
            });

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
                    $('#expDate1').attr("disabled", true);
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
            // Biospy of Wound Drainage Abscesses
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


            var entity = '<%= session.getAttribute("Entityid")%>';

            $('.suture_type').change(function () {

                var type2 = $("#sutureType option:selected").map((i, el) => el.textContent.trim()).get();
                $('#sutureTypeName').val(type2).trigger('change');
            });

            $('.suture_length').change(function () {

                var type3 = $("#sutureLength option:selected").map((i, el) => el.textContent.trim()).get();
                $('#sutureLengthName').val(type3);
            });

            $('.phlebotomy_type').change(function () {
                var type7 = $("#phlebotomyType option:selected").map((i, el) => el.textContent.trim()).get();
                $('#phlebotomyTypeName').val(type7);
            });

            $('#patientCombo').val(${surgicaldetail.ddlpatientid});
        <c:forEach var="patientDetail" items="${patientdetail}">
            //alert('${patientDetail.ddlpatientid}');
            $('#patientCombo').val(${patientDetail.ddlpatientid});
        </c:forEach>

        <c:forEach var="traySheetDetail" items="${traydatalist}">
            //alert('${traySheetDetail.dateOfService}');
            $('#dateOfService').val('${traySheetDetail.dateOfService}');
        </c:forEach>
            $("#patientCombo").trigger("change");




            $('#expDate').trigger('change');

        <c:forEach var="anesthesiaObj" items="${surgicaldetail.anesthesiaList}">
            $("#oralAnesthesiaContentType").val('${anesthesiaObj.value}').prop('checked', 'true').trigger('change');
            $('#oralAnesthesiaType').val('${anesthesiaObj.count}');
        </c:forEach>

        <c:forEach var="anesthesiaObj1" items="${surgicaldetail.anesthesiaList1}">
            $("#oralAnesthesiaContentType1").val('${anesthesiaObj1.value}').prop('checked', 'true').trigger('change');
            $('#oralAnesthesiaType1').val('${anesthesiaObj1.count}');
        </c:forEach>

        <c:forEach var="anesthesiaObj2" items="${surgicaldetail.anesthesiaList2}">
            $("#oralAnesthesiaContentType2").val('${anesthesiaObj2.value}').prop('checked', 'true').trigger('change');
            $('#oralAnesthesiaType2').val('${anesthesiaObj2.count}');
        </c:forEach>

        <c:forEach var="anesthesiaObj3" items="${surgicaldetail.anesthesiaList3}">
            $("#oralAnesthesiaContentType3").val('${anesthesiaObj3.value}').prop('checked', 'true').trigger('change');
            $('#oralAnesthesiaType3').val('${anesthesiaObj3.count}');
        </c:forEach>

        <c:forEach var="anesthesiaObj4" items="${surgicaldetail.anesthesiaList4}">
            $("#oralAnesthesiaContentType4").val('${anesthesiaObj4.value}').prop('checked', 'true').trigger('change');
            $('#oralAnesthesiaType4').val('${anesthesiaObj4.count}');
        </c:forEach>

        <c:forEach var="anesthesiaObj5" items="${surgicaldetail.anesthesiaList5}">
            $("#oralAnesthesiaContentType5").val('${anesthesiaObj5.value}').prop('checked', 'true').trigger('change');
            $('#oralAnesthesiaType5').val('${anesthesiaObj5.count}');
        </c:forEach>

        <c:forEach var="anesthesiaObj6" items="${surgicaldetail.anesthesiaList6}">
            $("#oralAnesthesiaContentType6").val('${anesthesiaObj6.value}').prop('checked', 'true').trigger('change');
            $('#oralAnesthesiaType6').val('${anesthesiaObj6.count}');
        </c:forEach>

        <c:forEach var="rxObj" items="${surgicaldetail.rxList}">
            $("#rxContentType").val('${rxObj.value}').prop('checked', 'true').trigger('change');
            $('#rxType').val('${rxObj.count}');
        </c:forEach>

        <c:forEach var="rxObj1" items="${surgicaldetail.rxList1}">
            $("#rxContentType1").val('${rxObj1.value}').prop('checked', 'true').trigger('change');
            $('#rxType1').val('${rxObj1.count}');
        </c:forEach>

        <c:forEach var="rxObj2" items="${surgicaldetail.rxList2}">
            $("#rxContentType2").val('${rxObj2.value}').prop('checked', 'true').trigger('change');
            $('#rxType2').val('${rxObj2.count}');
        </c:forEach>

        <c:forEach var="rxObj3" items="${surgicaldetail.rxList3}">
            $("#rxContentType3").val('${rxObj3.value}').prop('checked', 'true').trigger('change');
            $('#rxType3').val('${rxObj3.count}');
        </c:forEach>

        <c:forEach var="rxObj4" items="${surgicaldetail.rxList4}">
            $("#rxContentType4").val('${rxObj4.value}').prop('checked', 'true').trigger('change');
        </c:forEach>

        <c:forEach var="rxObj5" items="${surgicaldetail.rxList5}">
            $("#rxContentType5").val('${rxObj5.value}').prop('checked', 'true').trigger('change');
            $('#rxType4').val('${rxObj5.count}');
        </c:forEach>

        <c:forEach var="rxObj6" items="${surgicaldetail.rxList6}">
            $("#rxContentType6").val('${rxObj6.value}').prop('checked', 'true').trigger('change');
            $('#rxType5').val(${rxObj6.count});
        </c:forEach>

        <c:forEach var="rxObj7" items="${surgicaldetail.rxList7}">
            $("#rxContentType7").val('${rxObj7.value}').prop('checked', 'true').trigger('change');
            $('#rxType6').val('${rxObj7.count}');
        </c:forEach>

        <c:forEach var="rxObj8" items="${surgicaldetail.rxList8}">
            $("#rxContentType8").val('${rxObj8.value}').prop('checked', 'true').trigger('change');
        </c:forEach>

        <c:forEach var="rxObj9" items="${surgicaldetail.rxList9}">
            $("#rxContentType9").val('${rxObj9.value}').prop('checked', 'true').trigger('change');
        </c:forEach>

        <c:forEach var="rxObj10" items="${surgicaldetail.rxList10}">
            $("#rxContentType10").val('${rxObj10.value}').prop('checked', 'true').trigger('change');
        </c:forEach>

        <c:forEach var="rxObj11" items="${surgicaldetail.rxList11}">
            $("#rxContentType11").val('${rxObj11.value}').prop('checked', 'true').trigger('change');
        </c:forEach>
        <c:forEach var="rxObj12" items="${surgicaldetail.rxList12}">
            $("#rxContentType12").val('${rxObj12.value}').prop('checked', 'true').trigger('change');
        </c:forEach>

        <c:forEach var="rxObj13" items="${surgicaldetail.rxList13}">
            $("#rxContentType13").val('${rxObj13.value}').prop('checked', 'true').trigger('change');
            $('#rxType7').val('${rxObj13.count}');
        </c:forEach>

        <c:forEach var="rxObj14" items="${surgicaldetail.rxList14}">
            $("#rxContentType14").val('${rxObj14.value}').prop('checked', 'true').trigger('change');
            $('#rxType8').val('${rxObj14.count}');
        </c:forEach>

        <c:forEach var="rxObj15" items="${surgicaldetail.rxList15}">
            $("#rxContentType15").val('${rxObj15.value}').prop('checked', 'true').trigger('change');
            $('#rxType9').val('${rxObj15.count}');
        </c:forEach>

        <c:forEach var="rxObj16" items="${surgicaldetail.rxList16}">
            $("#rxContentType16").val('${rxObj16.value}').prop('checked', 'true').trigger('change');
            $('#rxType10').val('${rxObj16.count}');
        </c:forEach>

        <c:forEach var="rxObj17" items="${surgicaldetail.rxList17}">
            $("#rxContentType17").val('${rxObj17.value}').prop('checked', 'true').trigger('change');
        </c:forEach>

        <c:forEach var="rxObj18" items="${surgicaldetail.rxList18}">
            $("#rxContentType18").val('${rxObj18.value}').prop('checked', 'true').trigger('change');
        </c:forEach>

        <c:forEach var="rxObj19" items="${surgicaldetail.rxList19}">
            $("#rxContentType19").val('${rxObj19.value}').prop('checked', 'true').trigger('change');
            $('#rxType11').val('${rxObj19.count}');
        </c:forEach>

        <c:forEach var="WoundDrainageObj" items="${surgicaldetail.woundDrainageList}">
            $("#woundDrainageType").val('${WoundDrainageObj.value}').prop('checked', 'true').trigger('change');
            $('#woundDrainage').val('${WoundDrainageObj.count}');
        </c:forEach>

        <c:forEach var="WoundDrainageObj1" items="${surgicaldetail.woundDrainageList1}">
            $("#woundDrainageType1").val('${WoundDrainageObj1.value}').prop('checked', 'true').trigger('change');
            $('#woundDrainage1').val('${WoundDrainageObj1.count}');
        </c:forEach>

        <c:forEach var="WoundDrainageObj2" items="${surgicaldetail.woundDrainageList2}">
            $("#woundDrainageType2").val('${WoundDrainageObj2.value}').prop('checked', 'true').trigger('change');
            $('#woundDrainage2').val('${WoundDrainageObj2.count}');
        </c:forEach>

        <c:forEach var="WoundDrainageObj3" items="${surgicaldetail.woundDrainageList3}">
            $("#woundDrainageType3").val('${WoundDrainageObj3.value}').prop('checked', 'true').trigger('change');
            $('#woundDrainage3').val('${WoundDrainageObj3.count}');
        </c:forEach>

        <c:forEach var="WoundDrainageObj4" items="${surgicaldetail.woundDrainageList4}">
            $("#woundDrainageType4").val('${WoundDrainageObj4.value}').prop('checked', 'true').trigger('change');
            $('#woundDrainage4').val('${WoundDrainageObj4.count}');
        </c:forEach>

        <c:forEach var="WoundDrainageObj5" items="${surgicaldetail.woundDrainageList5}">
            $("#woundDrainageType5").val('${WoundDrainageObj5.value}').prop('checked', 'true').trigger('change');
            $('#woundDrainage5').val('${WoundDrainageObj5.count}');
        </c:forEach>

        <c:forEach var="WoundDrainageObj6" items="${surgicaldetail.woundDrainageList6}">
            $("#woundDrainageType6").val('${WoundDrainageObj6.value}').prop('checked', 'true').trigger('change');
            $('#woundDrainage6').val('${WoundDrainageObj6.count}');
        </c:forEach>

        <c:forEach var="WoundDrainageObj7" items="${surgicaldetail.woundDrainageList7}">
            $("#woundDrainageType7").val('${WoundDrainageObj7.value}').prop('checked', 'true').trigger('change');
            $('#woundDrainage7').val('${WoundDrainageObj7.count}');
        </c:forEach>

        <c:forEach var="WoundDrainageObj8" items="${surgicaldetail.woundDrainageList8}">
            $("#woundDrainageType8").val('${WoundDrainageObj8.value}').prop('checked', 'true').trigger('change');
            $('#woundDrainage8').val('${WoundDrainageObj8.count}');
        </c:forEach>

        <c:forEach var="WoundDrainageObj9" items="${surgicaldetail.woundDrainageList9}">
            $("#woundDrainageType9").val('${WoundDrainageObj9.value}').prop('checked', 'true').trigger('change');
            $('#woundDrainage9').val('${WoundDrainageObj9.count}');
        </c:forEach>



        <c:forEach var="boneGraftObj" items="${surgicaldetail.boneGraftList}">
            $("#boneGraftType").val('${boneGraftObj.value}').prop('checked', 'true').trigger('change');
            $('#boneGraftValue').val('${boneGraftObj.sno}');
            $('#expDate15').val('${boneGraftObj.date}');
            $('#boneGraftSno').val('${boneGraftObj.length}');
        </c:forEach>

        <c:forEach var="boneGraftObj2" items="${surgicaldetail.boneGraftList2}">
            $("#boneGraftType2").val('${boneGraftObj2.value}').prop('checked', 'true').trigger('change');
            $('#boneGraftValue2').val('${boneGraftObj2.sno}');
            $('#expDate2').val('${boneGraftObj2.date}');
            $('#boneGraftSno1').val('${boneGraftObj2.length}');
        </c:forEach>

        <c:forEach var="tissueGraftObj" items="${surgicaldetail.tissueGraftList}">
            $("#tissueGraftType").val('${tissueGraftObj.value}').prop('checked', 'true').trigger('change');
            $('#tissueGraftNo').val('${tissueGraftObj.sno}');
            $('#expDate5').val('${tissueGraftObj.date}');
            $('#tissueGraftLength').val('${tissueGraftObj.length}');
        </c:forEach>

        <c:forEach var="membranceObj3" items="${surgicaldetail.membraneList3}">
            $("#membraneType3").val('${membranceObj3.value}').prop('checked', 'true').trigger('change');
            $('#membraneNo3').val('${membranceObj3.sno}');
            $('#expDate10').val('${membranceObj3.date}');
        </c:forEach>

        <c:forEach var="surgicalFixationScrewObj" items="${surgicaldetail.surgicalFixationScrewTypeList}">

            $("#surgicalFixationScrewType").val('${surgicalFixationScrewObj.value}').prop('checked', 'true').trigger('change');
            $('#surgicalFixationScrewNo').val('${surgicalFixationScrewObj.sno}');
            $('#expDate').val('${surgicalFixationScrewObj.date}');
        </c:forEach>

        <c:forEach var="surgicalFixationScrewObj1" items="${surgicaldetail.surgicalFixationScrewTypeList1}">
            $("#surgicalFixationScrewType1").val('${surgicalFixationScrewObj1.value}').prop('checked', 'true').trigger('change');
            $('#surgicalFixationScrewNo1').val('${surgicalFixationScrewObj1.sno}');
            $('#expDate1').val('${surgicalFixationScrewObj1.date}');
        </c:forEach>

        <c:forEach var="fixationScrewObj" items="${surgicaldetail.fixationScrewTypeList}">
            $("#surgicalFixationScrew").val('${fixationScrewObj.value}').prop('checked', 'true').trigger('change');
            $('#fixationScrewNo').val('${fixationScrewObj.sno}');
            $('#expDate11').val('${fixationScrewObj.date}');
        </c:forEach>

        <c:forEach var="fixationScrewObj1" items="${surgicaldetail.fixationScrewTypeList1}">
            $("#surgicalFixationScrew1").val('${fixationScrewObj1.value}').prop('checked', 'true').trigger('change');
            $('#fixationScrewNo1').val('${fixationScrewObj1.sno}');
            $('#expDate12').val('${fixationScrewObj1.date}');
        </c:forEach>

        <c:forEach var="surgicalPlateObj" items="${surgicaldetail.plateTypeList}">
            $("#surgicalPlateType").val('${surgicalPlateObj.value}').prop('checked', 'true').trigger('change');
            $('#surgicalPlateNo').val('${surgicalPlateObj.sno}');
            $('#expDate13').val('${surgicalPlateObj.date}');
        </c:forEach>

        <c:forEach var="surgicalPlateObj1" items="${surgicaldetail.plateTypeList1}">
            $("#surgicalPlateType1").val('${surgicalPlateObj1.value}').prop('checked', 'true').trigger('change');
            $('#surgicalPlateNo1').val('${surgicalPlateObj1.sno}');
            $('#expDate14').val('${surgicalPlateObj1.date}');
        </c:forEach>


            var selectedsutureType = '';
        <c:forEach var="sutureTypeObj" items="${surgicaldetail.sutureTypeList}">
            if (selectedsutureType != '') {
                selectedsutureType = selectedsutureType + ",";
            }
            selectedsutureType = selectedsutureType + '${sutureTypeObj.value}';
            console.log("${sutureTypeObj.value}");
            //$('#sutureType').val(${sutureTypeObj.value}).trigger('change');
        </c:forEach>
            var selectedsutureTypeArr = selectedsutureType.split(',');
            $('#sutureType').val(selectedsutureTypeArr).trigger('change');

            var selectedsutureLength = '';
        <c:forEach var="sutureLengthObj" items="${surgicaldetail.sutureLengthList}">
            if (selectedsutureLength != '') {
                selectedsutureLength = selectedsutureLength + ",";
            }
            selectedsutureLength = selectedsutureLength + '${sutureLengthObj.value}';
            console.log("${sutureLengthObj.value}");
            //$('#sutureType').val(${sutureLengthObj.value}).trigger('change');
        </c:forEach>
            var selectedrxLengthArr = selectedsutureLength.split(',');
            $('#sutureLength').val(selectedrxLengthArr).trigger('change');

            var selectedphlebotomyType = '';
        <c:forEach var="phlebotomyObj" items="${surgicaldetail.phlebotomyList}">
            if (selectedphlebotomyType != '') {
                selectedphlebotomyType = selectedphlebotomyType + ",";
            }
            selectedphlebotomyType = selectedphlebotomyType + '${phlebotomyObj.value}';
        </c:forEach>
            var selectedphlebotomyTypeArr = selectedphlebotomyType.split(',');
            $('#phlebotomyType').val(selectedphlebotomyTypeArr).trigger('change');

            var selectedvaccutube = '';
        <c:forEach var="vaccutubeObj" items="${surgicaldetail.vaccutubeList}">
            if (selectedvaccutube != '') {
                selectedvaccutube = selectedvaccutube + ",";
            }
            selectedvaccutube = selectedvaccutube + '${vaccutubeObj.value}';
        </c:forEach>
            var selectedvaccutubeArr = selectedvaccutube.split(',');
            $('#vaccutube').val(selectedvaccutubeArr).trigger('change');


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
                                        //$('#patientCombo').val(lname + ", " + fname);

                                        $('#patientDob').val(obj[i].dob);
                                        //  $('#hdi1').val(sv[6].trim());
                                        //  $('#hdi2').val(sv[7].trim());
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
                                        if (obj[i].ddlgender == "1") {

                                            $('#inputGender').val("Male");
                                        } else if (obj[i].ddlgender == "2")
                                        {
                                            $('#inputGender').val("Female");
                                        } else {
                                            $('#inputGender').val("Other");
                                        }
                                        $('#inputSSN').val(obj[i].ssn);
                                        $('#practiceId').val(obj[i].ddlpracticeid);
                                        $('#practicename').val(obj[i].ddlpractice);
                                        $("#practicename").trigger("change");
                                        //alert($('#practice').val());

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
                                        $('#practice').val(obj[i].ddlpractice);
                                        $('#primaryInsurance').val(obj[i].primaryInsurance);
                                        $('#secondaryInsurance').val(obj[i].secondaryInsurance);
                                        $('#primaryMemberId').val(obj[i].primaryMemberId);
                                        $('#secondaryMemberId').val(obj[i].secondaryMemberId);

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
                $("#patientCombo").trigger("change");

                function clearFields() {
                    $("#inputFullName").val("");
                    $('#patientDob').val("");
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
                    $('#inputLicense').val("");
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
                $(".data_inputDOB").val($("#patientDob").val());
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


        });


    </script>


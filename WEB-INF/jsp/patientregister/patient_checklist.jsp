<%-- 
    Document   : patient_checklist
    Created on : 27-June-2022, 10:21:51 am
    Author     : NELSON
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%> 
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html> 
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Patient Register</title>
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
                .datepicker.dropdown-menu {
                    z-index:1;
                }
                .line{
                    box-sizing: content-box;
                    width: 250px;
                    height: 80px;
                    padding: 10px;
                    border: 1px solid black;
                }
            </style> 
        <section class="pcoded-main-container">
            <div class="pcoded-wrapper">
                <div class="pcoded-content">
                    <div class="pcoded-inner-content">
                        <div class="main-body">
                            <div class="page-wrapper">

                                <div class="row">
                                    <div class="card col-12">
                                        <div class="card-body">
                                            <form>
                                                <div class="accordion" id="accordionExample">
                                                    <div class="card cardbottom">
                                                        <div class="card-header cardheadclr" id="headingOne">
                                                            <h6 class="h6font mb-0"><a href="#!" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">Patients Registration :</a></h6>
                                                        </div>
                                                        <div id="collapseOne" class=" card-body collapse show" aria-labelledby="headingOne" data-parent="#accordionExample">
                                                            <div class="form-group row"> 
                                                                <div class="col-lg-4 col-md-9 col-sm-12">
                                                                    <label class="form-label">Patient</label>
                                                                    <select id="patientCombo" class="js-example-basic-single form-control">
                                                                        <option value="0">Select Patient</option>
                                                                    <c:forEach var="patient" items="${patientlist}">
                                                                        <option value = "${patient.ddlpatientid}" >${patient.ddlpatient}</option>
                                                                    </c:forEach>
                                                                </select>
                                                                <%--c:if test="${patientId==patient.ddlpatientid}"> checked </c:if--%> 
                                                            </div>

                                                            <div class="col-lg-4 col-md-9 col-sm-12">
                                                                <label class="form-label">Practice</label>
                                                                <input type="text" name="practice" readonly class="form-control" id="practice" style="height:29px;"/>
                                                                <input type="hidden" name="practiceAddress"  id="practiceAddress" />
                                                                <input type="hidden" name="practicePhone"  id="practicePhone" />
                                                                <input type="hidden" name="practiceFax"  id="practiceFax" />
                                                            </div>  
                                                            <input type="hidden" name="actualPracticeName" readonly class="form-control" id="actualPracticeName" style="height:29px;"/>
                                                        </div>
                                                        <div class="row_patient" id="row_patient">
                                                            <div class="form-row">
                                                                <div class="form-group col-md-6">
                                                                    <label for="inputFullName">Full name</label>
                                                                    <input type="text" class="form-control" id="inputFullName" placeholder="Full Name" readonly>
                                                                    <input type="hidden"   id="inputLastName"  />
                                                                    <input type="hidden"   id="inputFirstName" />
                                                                    <input type="hidden"   id="inputMiddleName" />
                                                                </div>
                                                                <div class="col-md-3">
                                                                    <div class="form-group">
                                                                        <label class="form-label" for="inputGender">Gender <span class="text-danger">*</span></label>   
                                                                        <select class="form-control" required disabled name="inputGender" tabindex="8" id="inputGender" >
                                                                            <option value = "" >--Select--</option>
                                                                            <c:forEach var="benefits" items="${genderlist}">
                                                                                <option value = ${benefits.genderid} >${benefits.gender}</option>
                                                                            </c:forEach>
                                                                        </select>
                                                                    </div>
                                                                </div>
                                                                <div class="form-group col-md-3">
                                                                    <label for="inputDOB">DOB</label>
                                                                    <input type="date" class="form-control" id="inputDOB" placeholder="DOB" readonly>
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
                                                                    <label for="inputInsur">Insurance/Insurance name</label>
                                                                    <input type="text" readonly class="form-control" id="inputInsur">
                                                                </div>
                                                                <!--                                                                <div class="form-group col-md-4">
                                                                                                                                    <label for="inputLicense">Driver License</label>
                                                                                                                                    <input type="text" readonly class="form-control" id="inputLicense">
                                                                                                                                </div>-->
                                                                <div class="form-group col-md-4">
                                                                    <label for="inputSSN">SSN</label>
                                                                    <input type="text" readonly class="form-control" id="inputSSN">
                                                                </div>
                                                            </div> 
                                                        </div>
                                                        <hr>        
                                                        <div class="row mb-2">
                                                            <div class="col-10">
                                                                <p class="m-0"><i class="fas fa-circle text-c-blue f-10 m-r-10"></i>
                                                                    <a href="#!" class="custom-modal" data-target="#HIPAAConsentForm">                                                                   
                                                                        HIPAA Consent Form
                                                                    </a>
                                                                </p>
                                                            </div>
                                                            <div class="col-2" id="filelist_1"></div>
                                                        </div>
                                                        <div class="row mb-2">
                                                            <div class="col-10">
                                                                <p class="m-0"><i class="fas fa-circle text-c-red f-10 m-r-10"></i>
                                                                    <a href="#!" class="custom-modal" data-target="#PaymentWaiverForm"> 
                                                                        Oral Cancer Screening</a>
                                                                </p>
                                                            </div>
                                                            <div class="col-2" id="filelist_2"></div> 
                                                        </div>
                                                        <div class="row mb-2">
                                                            <div class="col-10">
                                                                <p class="m-0"><i class="fas fa-circle text-c-green f-10 m-r-10"></i>
                                                                    <a href="#!" class="custom-modal" data-target="#SignatureFileConsentForm"> 
                                                                        Signature on File Consent Form
                                                                    </a>
                                                                </p>
                                                            </div>
                                                            <div class="col-2" id="filelist_3"></div> 
                                                        </div>  

                                                        <div class="row mb-2">
                                                            <div class="col-10">
                                                                <p class="m-0"><i class="fas fa-circle text-c-blue f-10 m-r-10"></i>
                                                                    <a href="#!" class="custom-modal" data-target="#ABNAdvanceBeneficiaryNonCoverageForm">                                                                   
                                                                        ABN (Advance Beneficiary Non-Coverage) Form
                                                                    </a>
                                                                </p>
                                                            </div>
                                                            <div class="col-2" id="filelist_4"></div> 
                                                        </div>
                                                        <div class="row mb-2">
                                                            <div class="col-10">
                                                                <p class="m-0"><i class="fas fa-circle text-c-blue f-10 m-r-10"></i>
                                                                    <a href="#!" class="custom-modal" data-target="#1_5_ABNSpanish">                                                                   
                                                                        ABN (Advance Beneficiary Non-Coverage) Form-(Spanish)
                                                                    </a>
                                                                </p>
                                                            </div>
                                                            <div class="col-2" id="filelist_40"></div> 
                                                        </div>

                                                    </div>
                                                </div>
                                                <div class="card cardbottom">
                                                    <div class="card-header cardheadclr" id="headingTwo">
                                                        <h6 class="mb-0 h6font"><a href="#!" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">Consent Form(S):</a></h6>
                                                    </div>
                                                    <div id="collapseTwo" class="collapse card-body show" aria-labelledby="headingTwo" data-parent="#accordionExample">
                                                        <div class="card-body1">
                                                            <div class="row mb-2">
                                                                <div class="col-10">
                                                                    <p class="m-0"><i class="fas fa-circle text-c-blue f-10 m-r-10"></i>
                                                                        <a href="#!" class="custom-modal" data-target="#Financial_Agreement_TreatmentPlanConsent_Estimate">                                                                   
                                                                            Financial Agreement & Treatment Plan Consent Form (Pre-Estimate Treatment)
                                                                        </a>
                                                                    </p>
                                                                </div>
                                                                <div class="col-2" id="filelist_5"></div> 
                                                            </div>
                                                            <div class="row mb-2">
                                                                <div class="col-10">
                                                                    <p class="m-0"><i class="fas fa-circle text-c-red f-10 m-r-10"></i>
                                                                        <a href="#!" class="custom-modal" data-target="#PaymentWaiver_Form"> 
                                                                            Payment Waiver Form</a>
                                                                    </p>
                                                                </div>
                                                                <div class="col-2" id="filelist_6"></div> 
                                                            </div>
                                                            <div class="row mb-2">
                                                                <div class="col-10">
                                                                    <p class="m-0"><i class="fas fa-circle text-c-green f-10 m-r-10"></i>
                                                                        <a href="#!" class="custom-modal"> 
                                                                            Consent Forms
                                                                        </a>
                                                                    </p>
                                                                </div> 
                                                            </div>
                                                        </div>

                                                        <div class="row">
                                                            <div class="col-12">
                                                                <ul>
                                                                    <li>
                                                                        <div class="row">
                                                                            <div class="col-4">
                                                                                <p class="m-0">
                                                                                    <a href="#!" class="custom-modal" data-target="#cbct_consent_form"> 
                                                                                        CBCT Scan Consent Form
                                                                                    </a>
                                                                                </p>
                                                                            </div>
                                                                            <div class="col-6">
                                                                                <p class="m-0 data_7" style="font-size:10px;float: left;width:110px;margin-bottom: -5px;">
                                                                                    DOS: <input id="date_control_7" type="text" class="dateborder txtDate data_currentdate" autocomplete="off" style="width:80px;"></p>
                                                                                <div class="custom-file" style="display: inline;float: left;width:300px;">
                                                                                    <input type="file" class="custom-file-input"  id="file_7">
                                                                                    <label class="custom-file-label" for="file_7" >Choose file...</label>
                                                                                    <button type="button" class="btn btn-primary btn-sm" onclick="uploadFile(this, '7');">Upload</button>
                                                                                    <div class="invalid-feedback"></div>
                                                                                </div>
                                                                            </div>
                                                                            <div class="col-2" id="filelist_7"> </div>                                                                  
                                                                        </div>
                                                                    </li>
                                                                    <li style="margin-top:10px;"> 
                                                                        <div class="row">
                                                                            <div class="col-4">
                                                                                <p class="m-0">
                                                                                    <a href="#!" class="custom-modal" data-target="#Riskmanagement_cbct_scan_forms"> 
                                                                                        Risk Management CBCT
                                                                                    </a>
                                                                                </p>
                                                                            </div>
                                                                            <div class="col-6">
                                                                                <p class="m-0 data_8" style="font-size:10px;float: left;width:110px;margin-bottom: -5px;">
                                                                                    DOS: <input id="date_control_8" type="text" class="dateborder txtDate data_currentdate" autocomplete="off" style="width:80px;"></p>
                                                                                <div class="custom-file" style="display: inline;float: left;width:300px;">
                                                                                    <input type="file" class="custom-file-input"  id="file_8">
                                                                                    <label class="custom-file-label" for="file_8" >Choose file...</label>
                                                                                    <button type="button" class="btn btn-primary btn-sm"  onclick="uploadFile(this, '8');">Upload</button>
                                                                                    <div class="invalid-feedback"></div>
                                                                                </div>
                                                                            </div>
                                                                            <div class="col-2" id="filelist_8"> 
                                                                            </div>                                                                  
                                                                        </div>
                                                                    </li>
                                                                    <li style="margin-top:10px;">
                                                                        <div class="row">
                                                                            <div class="col-4">
                                                                                <p class="m-0">
                                                                                    <a href="#!" class="custom-modal" data-target="#Surgical_Excision_Lesion" > 
                                                                                        Surgical Excision of Lesion/Abscess
                                                                                    </a>
                                                                                </p>
                                                                            </div>
                                                                            <div class="col-6">
                                                                                <p class="m-0 data_9" style="font-size:10px;float: left;width:110px;margin-bottom: -5px;">
                                                                                    DOS: <input id="date_control_9" type="text" class="dateborder txtDate data_currentdate" autocomplete="off" style="width:80px;"></p>
                                                                                <div class="custom-file" style="display: inline;float: left;width:300px;">
                                                                                    <input type="file" class="custom-file-input"  id="file_9">
                                                                                    <label class="custom-file-label" for="file_9" >Choose file...</label>
                                                                                    <button type="button" class="btn btn-primary btn-sm"  onclick="uploadFile(this, '9');">Upload</button>
                                                                                    <div class="invalid-feedback"></div>
                                                                                </div> 
                                                                            </div>
                                                                            <div class="col-2" id="filelist_9"> 
                                                                            </div>                                                                  
                                                                        </div>
                                                                    </li>
                                                                    <li style="margin-top:10px;"> 
                                                                        <div class="row">
                                                                            <div class="col-4">
                                                                                <p class="m-0">
                                                                                    <a href="#!" class="custom-modal" data-target="#Bone_Grafting_or_RegenerationConsent" > 
                                                                                        Bone Graft and-or Regeneration
                                                                                    </a>
                                                                                </p>
                                                                            </div>
                                                                            <div class="col-6">
                                                                                <p class="m-0 data_10" style="font-size:10px;float: left;width:110px;margin-bottom: -5px;">
                                                                                    DOS: <input id="date_control_10" type="text" class="dateborder txtDate data_currentdate" autocomplete="off" style="width:80px;"></p>
                                                                                <div class="custom-file" style="display: inline;float: left;width:300px;">
                                                                                    <input type="file" class="custom-file-input"  id="file_10">
                                                                                    <label class="custom-file-label" for="file_10" >Choose file...</label>
                                                                                    <button type="button" class="btn btn-primary btn-sm"  onclick="uploadFile(this, '10');">Upload</button>
                                                                                    <div class="invalid-feedback"></div>
                                                                                </div>
                                                                            </div>
                                                                            <div class="col-2" id="filelist_10"> 
                                                                            </div>                                                                  
                                                                        </div>
                                                                    </li>
                                                                    <li style="margin-top:10px;">
                                                                        <div class="row">
                                                                            <div class="col-4">
                                                                                <p class="m-0">
                                                                                    <a href="#!" class="custom-modal" data-target="#Reconstruction_Bone_Fractures" > 
                                                                                        Reconstruction of Bone Fractures
                                                                                    </a>
                                                                                </p>
                                                                            </div>
                                                                            <div class="col-6">
                                                                                <p class="m-0 data_11" style="font-size:10px;float: left;width:110px;margin-bottom: -5px;">
                                                                                    DOS: <input id="date_control_11" type="text" class="dateborder txtDate data_currentdate" autocomplete="off" style="width:80px;"></p>
                                                                                <div class="custom-file" style="display: inline;float: left;width:300px;">
                                                                                    <input type="file" class="custom-file-input"  id="file_11">
                                                                                    <label class="custom-file-label" for="file_11" >Choose file...</label>
                                                                                    <button type="button" class="btn btn-primary btn-sm"  onclick="uploadFile(this, '11');">Upload</button>
                                                                                    <div class="invalid-feedback"></div>
                                                                                </div>
                                                                            </div>
                                                                            <div class="col-2" id="filelist_11"> 
                                                                            </div>                                                                  
                                                                        </div>
                                                                    </li>
                                                                    <li style="margin-top:10px;">
                                                                        <div class="row">
                                                                            <div class="col-4">
                                                                                <p class="m-0">
                                                                                    <a href="#!" class="custom-modal" data-target="#Fixation_Screw"> 
                                                                                        Fixation Screw
                                                                                    </a>
                                                                                </p>
                                                                            </div>  
                                                                            <div class="col-6">
                                                                                <p class="m-0 data_12" style="font-size:10px;float: left;width:110px;margin-bottom: -5px;">
                                                                                    DOS: <input id="date_control_12" type="text" class="dateborder txtDate data_currentdate" autocomplete="off" style="width:80px;"></p>
                                                                                <div class="custom-file" style="display: inline;float: left;width:300px;">
                                                                                    <input type="file" class="custom-file-input"  id="file_12">
                                                                                    <label class="custom-file-label" for="file_12" >Choose file...</label>
                                                                                    <button type="button" class="btn btn-primary btn-sm"  onclick="uploadFile(this, '12');">Upload</button>
                                                                                    <div class="invalid-feedback"></div>
                                                                                </div>
                                                                            </div>
                                                                            <div class="col-2" id="filelist_12"> 
                                                                            </div>                                                                  
                                                                        </div>

                                                                    </li>
                                                                    <li style="margin-top:10px;">

                                                                        <div class="row">
                                                                            <div class="col-4">
                                                                                <p class="m-0">
                                                                                    <a href="#!" class="custom-modal" data-target="#5_PhlebotomyConsent_form"> 
                                                                                        Phlebotomy Consent Form
                                                                                    </a>
                                                                                </p>
                                                                            </div>  
                                                                            <div class="col-6">
                                                                                <p class="m-0 data_12" style="font-size:10px;float: left;width:110px;margin-bottom: -5px;">
                                                                                    DOS: <input id="date_control_35" type="text" class="dateborder txtDate data_currentdate" style="width:80px;"></p>
                                                                                <div class="custom-file" style="display: inline;float: left;width:300px;">
                                                                                    <input type="file" class="custom-file-input"  id="file_35">
                                                                                    <label class="custom-file-label" for="file_35" >Choose file...</label>
                                                                                    <button type="button" class="btn btn-primary btn-sm"  onclick="uploadFile(this, '35');">Upload</button>
                                                                                    <div class="invalid-feedback"></div>
                                                                                </div>
                                                                            </div>
                                                                            <div class="col-2" id="filelist_35"> 
                                                                            </div>                                                                  
                                                                        </div> 

                                                                    </li>
                                                                    <li style="margin-top:10px;">
                                                                        <div class="row">
                                                                            <div class="col-4">
                                                                                <p class="m-0">
                                                                                    <a href="#!" class="custom-modal" data-target="#Prosthetic_Appliance" > 
                                                                                        Prosthetic Appliance
                                                                                    </a>
                                                                                </p>
                                                                            </div> 
                                                                            <div class="col-6">
                                                                                <p class="m-0 data_13" style="font-size:10px;float: left;width:110px;margin-bottom: -5px;">
                                                                                    DOS: <input id="date_control_13" type="text" class="dateborder txtDate data_currentdate" autocomplete="off" style="width:80px;"></p>
                                                                                <div class="custom-file" style="display: inline;float: left;width:300px;">
                                                                                    <form>
                                                                                        <input type="file" class="custom-file-input"  id="file_13">
                                                                                        <label class="custom-file-label" for="file_13" >Choose file...</label>
                                                                                        <button type="button" class="btn btn-primary btn-sm"  onclick="uploadFile(this, '13');">Upload</button>
                                                                                    </form>
                                                                                    <div class="invalid-feedback"></div>
                                                                                </div>
                                                                            </div>
                                                                            <div class="col-2" id="filelist_13"> 
                                                                            </div>                                                                  
                                                                        </div>
                                                                    </li>
                                                                    <li style="margin-top:10px;">
                                                                        <div class="row">
                                                                            <div class="col-8">
                                                                                <p class="m-0">
                                                                                    <a href="#!" class="custom-modal" data-target="#Affidavit_Intolerance_CPAP_Device"> 
                                                                                        Affidavit for Intolerance to CPAP Device
                                                                                    </a>
                                                                                </p>
                                                                            </div>
                                                                            <div class="col" id="filelist_14"> 
                                                                            </div>                                                                  
                                                                        </div>
                                                                    </li>
                                                                    <li style="margin-top:10px;">
                                                                        <div class="row">
                                                                            <div class="col-8">
                                                                                <p class="m-0">
                                                                                    <a href="#!" class="custom-modal" data-target="#Treatment_Refusal"> 
                                                                                        Treatment Refusal
                                                                                    </a>
                                                                                </p>
                                                                            </div>
                                                                            <div class="col" id="filelist_15"> 
                                                                            </div>                                                                  
                                                                        </div>
                                                                    </li>
                                                                </ul>                                                         
                                                            </div>
                                                        </div>
                                                        <div class="card-body1">
                                                            <div class="row mb-2">
                                                                <div class="col">
                                                                    <p class="m-0"><i class="fas fa-circle text-c-blue f-10 m-r-10"></i>
                                                                        <a href="#!" class="custom-modal" data-target="#Preoperative_Instruction_Given">
                                                                            Preoperative Instruction Given
                                                                        </a>
                                                                    </p>
                                                                </div>
                                                                <div class="col"  id="filelist_16"> 
                                                                </div>
                                                            </div>
                                                            <div class="row mb-2">
                                                                <div class="col">
                                                                    <p class="m-0"><i class="fas fa-circle text-c-red f-10 m-r-10"></i>
                                                                        <a href="#!" class="custom-modal" data-target="#Sleep_Apnea_Assessment">
                                                                            Sleep Apnea Assessment
                                                                        </a>
                                                                    </p>
                                                                </div>
                                                                <div class="col"  id="filelist_17">
                                                                </div>
                                                            </div> 
                                                        </div>
                                                    </div>
                                                </div>
                                                <!--                                                <div class="card cardbottom">
                                                                                                    <div class="card-header cardheadclr" id="headingThree">
                                                                                                        <h6 class="h6font mb-0"><a href="#!" data-toggle="collapse" data-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">Evaluation Document(S):</a></h6>
                                                                                                    </div>
                                                                                                    <div id="collapseThree" class="card-body collapse show" aria-labelledby="headingThree" data-parent="#accordionExample">
    
                                                                                                    </div>
                                                                                                </div>-->
                                                <div class="card cardbottom">
                                                    <div class="card-header cardheadclr" id="headingFour">
                                                        <h6 class="h6font mb-0"><a href="#!" data-toggle="collapse" data-target="#collapseFour" aria-expanded="false" aria-controls="collapseFour">Tests Ordered :</a></h6>
                                                    </div>
                                                    <div id="collapseFour" class="card-body collapse show" aria-labelledby="headingFour" data-parent="#accordionExample">
                                                        <div class="card-body1">
                                                            <div class="row mb-2">
                                                                <div class="col-4">
                                                                    <p class="m-0"><i class="fas fa-circle text-c-blue f-10 m-r-10"></i>COVID-19 Test</p>
                                                                </div>
                                                                <div class="col-6">
                                                                    <p class="m-0 data_23" style="font-size:10px;float: left;width:110px;margin-bottom: -5px;">
                                                                        DOS: <input id="date_control_23" type="text" class="dateborder txtDate data_currentdate" autocomplete="off" style="width:80px;"></p>
                                                                    <div class="custom-file" style="display: inline;float: left;width:300px;">
                                                                        <input type="file" class="custom-file-input"  id="file_23">
                                                                        <label class="custom-file-label" for="file_23" >Choose file...</label>
                                                                        <button type="button" class="btn btn-primary btn-sm"  onclick="uploadFile(this, '23');">Upload</button>
                                                                        <div class="invalid-feedback"></div>
                                                                    </div>
                                                                </div> 
                                                                <div class="col-2"  id="filelist_23"> 
                                                                </div>
                                                            </div>
                                                            <div class="row mb-2">
                                                                <div class="col-4">
                                                                    <p class="m-0"><i class="fas fa-circle text-c-red f-10 m-r-10"></i>Biopsy (Lab Order for Pathology Report)</p>
                                                                </div>
                                                                <div class="col-6">
                                                                    <p class="m-0 data_24" style="font-size:10px;float: left;width:110px;margin-bottom: -5px;">
                                                                        DOS: <input id="date_control_24" type="text" class="dateborder txtDate data_currentdate" autocomplete="off" style="width:80px;"></p>
                                                                    <div class="custom-file" style="display: inline;float: left;width:300px;">
                                                                        <input type="file" class="custom-file-input"  id="file_24">
                                                                        <label class="custom-file-label" for="file_24" >Choose file...</label>
                                                                        <button type="button" class="btn btn-primary btn-sm"  onclick="uploadFile(this, '24');">Upload</button>
                                                                        <div class="invalid-feedback"></div>
                                                                    </div>
                                                                </div> 
                                                                <div class="col-2"  id="filelist_24"> 
                                                                </div>
                                                            </div>
                                                            <div class="row mb-2">
                                                                <div class="col-4">
                                                                    <p class="m-0"><i class="fas fa-circle text-c-blue f-10 m-r-10"></i>Sleep Study</p>
                                                                </div>
                                                                <div class="col-6">
                                                                    <p class="m-0 data_25" style="font-size:10px;float: left;width:110px;margin-bottom: -5px;">
                                                                        DOS: <input id="date_control_25" type="text" class="dateborder txtDate data_currentdate" style="width:80px;"></p>
                                                                    <div class="custom-file" style="display: inline;float: left;width:300px;">
                                                                        <input type="file" class="custom-file-input"  id="file_25">
                                                                        <label class="custom-file-label" for="file_25" >Choose file...</label>
                                                                        <button type="button" class="btn btn-primary btn-sm"  onclick="uploadFile(this, '25');">Upload</button>
                                                                        <div class="invalid-feedback"></div>
                                                                    </div>
                                                                </div> 
                                                                <div class="col-2"  id="filelist_25"> 
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="card cardbottom">
                                                    <div class="card-header cardheadclr" id="headingFive">
                                                        <h6 class="h6font mb-0"><a href="#!" data-toggle="collapse" data-target="#collapseFive" aria-expanded="false" aria-controls="collapseFive">Documentation Reports:</a></h6>
                                                    </div>
                                                    <div id="collapseFive" class="card-body collapse show" aria-labelledby="headingFive" data-parent="#accordionExample">
                                                        <div class="row mb-2 mt-3">
                                                            <div class="col-4">
                                                                <p class="m-0"><i class="fas fa-circle text-c-blue f-10 m-r-10"></i>Consultation Report/Clinical Note</p>
                                                            </div>
                                                            <div class="col-6">
                                                                <p class="m-0 data_27" style="font-size:10px;float: left;width:110px;margin-bottom: -5px;">
                                                                    DOS: <input id="date_control_27" type="text" class="dateborder txtDate data_currentdate" autocomplete="off" style="width:80px;"></p>
                                                                <div class="custom-file" style="display: inline;float: left;width:300px;">
                                                                    <input type="file" class="custom-file-input"  id="file_27">
                                                                    <label class="custom-file-label" for="file_27" >Choose file...</label>
                                                                    <button type="button" class="btn btn-primary btn-sm"  onclick="uploadFile(this, '27');">Upload</button>
                                                                    <div class="invalid-feedback"></div>
                                                                </div>
                                                            </div>
                                                            <div class="col-2"  id="filelist_27"> 
                                                            </div>
                                                        </div>
                                                        <div class="row mb-2">
                                                            <div class="col-4">
                                                                <p class="m-0"><i class="fas fa-circle text-c-red f-10 m-r-10"></i>Radiographic Report</p>
                                                            </div>
                                                            <div class="col-6">
                                                                <p class="m-0 data_28" style="font-size:10px;float: left;width:110px;margin-bottom: -5px;">
                                                                    DOS: <input id="date_control_28" type="text" class="dateborder txtDate data_currentdate" autocomplete="off" style="width:80px;"></p>
                                                                <div class="custom-file" style="display: inline;float: left;width:300px;">  
                                                                    <input type="file" class="custom-file-input"  id="file_28" >
                                                                    <label class="custom-file-label" for="file_28" >Choose file...</label>
                                                                    <button type="button" class="btn btn-primary btn-sm"  onclick="uploadFile(this, '28');">Upload</button>
                                                                    <div class="invalid-feedback"></div>
                                                                </div>
                                                            </div>
                                                            <div class="col-2"  id="filelist_28"> 
                                                            </div>
                                                        </div>
                                                        <div class="row mb-2">
                                                            <div class="col-4"> 
                                                                <p class="m-0"><i class="fas fa-circle text-c-green f-10 m-r-10"></i>Diagnostic Models</p>
                                                            </div>
                                                            <div class="col-6">
                                                                <p class="m-0 data_29" style="font-size:10px;float: left;width:110px;margin-bottom: -5px;">
                                                                    DOS: <input id="date_control_29" type="text" class="dateborder txtDate data_currentdate" autocomplete="off" style="width:80px;"></p>
                                                                <div class="custom-file" style="display: inline;float: left;width:300px;"> 
                                                                    <input type="file" class="custom-file-input"  id="file_29">
                                                                    <label class="custom-file-label" for="file_29" >Choose file...</label>
                                                                    <button type="button" class="btn btn-primary btn-sm"  onclick="uploadFile(this, '29');">Upload</button>
                                                                    <div class="invalid-feedback"></div>
                                                                </div>
                                                            </div>
                                                            <div class="col-2"  id="filelist_29"> 
                                                            </div>
                                                        </div>
                                                        <div class="row mb-2">
                                                            <div class="col-4">
                                                                <p class="m-0"><i class="fas fa-circle text-c-yellow f-10 m-r-10"></i>Pathology Report</p>
                                                            </div>
                                                            <div class="col-6">
                                                                <p class="m-0 data_30" style="font-size:10px;float: left;width:110px;margin-bottom: -5px;">
                                                                    DOS: <input id="date_control_30" type="text" class="dateborder txtDate data_currentdate" autocomplete="off" style="width:80px;"></p>
                                                                <div class="custom-file" style="display: inline;float: left;width:300px;"> 
                                                                    <input type="file" class="custom-file-input"  id="file_30" >
                                                                    <label class="custom-file-label" for="file_30" >Choose file...</label>
                                                                    <button type="button" class="btn btn-primary btn-sm"  onclick="uploadFile(this, '30');">Upload</button>
                                                                    <div class="invalid-feedback"></div>
                                                                </div>
                                                            </div>
                                                            <div class="col-2"  id="filelist_30"> 
                                                            </div>
                                                        </div>
                                                        <div class="row mb-2">
                                                            <div class="col-4">
                                                                <p class="m-0"><i class="fas fa-circle text-c-purple f-10 m-r-10"></i>Preoperative Evaluation</p>
                                                            </div>
                                                            <div class="col-6">
                                                                <p class="m-0 data_31 " style="font-size:10px;float: left;width:110px;margin-bottom: -5px;">
                                                                    DOS: <input id="date_control_31" type="text" class="dateborder txtDate data_currentdate" autocomplete="off" style="width:80px;"></p>
                                                                <div class="custom-file" style="display: inline;float: left;width:300px;"> 
                                                                    <input type="file" class="custom-file-input"  id="file_31" >
                                                                    <label class="custom-file-label" for="file_31" >Choose file...</label>
                                                                    <button type="button" class="btn btn-primary btn-sm"  onclick="uploadFile(this, '31');">Upload</button>
                                                                    <div class="invalid-feedback"></div>
                                                                </div>
                                                            </div>
                                                            <div class="col-2"  id="filelist_31"> 
                                                            </div>
                                                        </div>
                                                        <div class="row mb-2">
                                                            <div class="col-4">
                                                                <p class="m-0"><i class="fas fa-circle text-c-red f-10 m-r-10"></i>Operation Report</p>
                                                            </div>
                                                            <div class="col-6">
                                                                <p class="m-0 data_32 " style="font-size:10px;float: left;width:110px;margin-bottom: -5px;">
                                                                    DOS: <input id="date_control_32" type="text" class="dateborder txtDate data_currentdate" autocomplete="off" style="width:80px;"></p>
                                                                <div class="custom-file" style="display: inline;float: left;width:300px;">  
                                                                    <input type="file" class="custom-file-input"  id="file_32">
                                                                    <label class="custom-file-label" for="file_32" >Choose file...</label>
                                                                    <button type="button" class="btn btn-primary btn-sm"  onclick="uploadFile(this, '32');">Upload</button>
                                                                    <div class="invalid-feedback"></div>
                                                                </div>
                                                            </div>
                                                            <div class="col-2"  id="filelist_32"> 
                                                            </div>
                                                        </div>
                                                        <div class="row mb-2">
                                                            <div class="col-4">
                                                                <p class="m-0"><i class="fas fa-circle text-c-blue f-10 m-r-10"></i>Postoperative Revaluation</p>
                                                            </div>
                                                            <div class="col-6">
                                                                <p class="m-0 data_33 " style="font-size:10px;float: left;width:110px;margin-bottom: -5px;">
                                                                    DOS: <input id="date_control_33" type="text" class="dateborder txtDate data_currentdate" autocomplete="off" style="width:80px;"></p>
                                                                <div class="custom-file" style="display: inline;float: left;width:300px;">  
                                                                    <input type="file" class="custom-file-input"  id="file_33">
                                                                    <label class="custom-file-label" for="file_33" >Choose file...</label>
                                                                    <button type="button" class="btn btn-primary btn-sm"  onclick="uploadFile(this, '33');">Upload</button>
                                                                    <div class="invalid-feedback"></div>
                                                                </div>
                                                            </div>
                                                            <div class="col-2"  id="filelist_33"> 
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="card cardbottom">
                                                    <div class="card-header cardheadclr" id="headingSeven">
                                                        <h6 class="h6font mb-0"><a href="#!" data-toggle="collapse" data-target="#collapseSeven" aria-expanded="false" aria-controls="collapseSeven">Radiology order :</a></h6>
                                                    </div>
                                                    <div id="collapseSeven" class="card-body collapse show" aria-labelledby="headingSeven" data-parent="#accordionExample">

                                                        <div class="row mb-2" style="margin-top:20px;">
                                                            <div class="col-10">
                                                                <p class="m-0"><i class="fas fa-circle text-c-yellow f-10 m-r-10"></i>
                                                                    <a href="#!" class="custom-modal" data-target="#Radiology_Patient_Acknowledgement_Form">                                                                   
                                                                        RADIOLOGY Patient Acknowledgement Form
                                                                    </a>
                                                                </p>
                                                            </div>
                                                            <div class="col-2" id="filelist_36"></div>
                                                        </div>

                                                        <div class="row mb-2" style="margin-top:20px;">
                                                            <div class="col-10">
                                                                <p class="m-0"><i class="fas fa-circle text-c-purple f-10 m-r-10"></i>
                                                                    <a href="#!" class="custom-modal" data-target="#Oral_Pathology_Order_Form">                                                                   
                                                                        ORAL PATHOLOGY ORDER FORM
                                                                    </a>
                                                                </p>
                                                            </div>
                                                            <div class="col-2" id="filelist_37"></div>
                                                        </div>

                                                        <div class="row mb-2" style="margin-top:20px;">
                                                            <div class="col-10">
                                                                <p class="m-0"><i class="fas fa-circle text-c-red f-10 m-r-10"></i>
                                                                    <a href="#!" class="custom-modal" data-target="#Radiology_Order_Form">                                                                   
                                                                        Radiology Order Form
                                                                    </a>
                                                                </p>
                                                            </div>
                                                            <div class="col-2" id="filelist_38"></div>
                                                        </div>

                                                        <div class="row mb-2" style="margin-top:20px;">
                                                            <div class="col-10">
                                                                <p class="m-0"><i class="fas fa-circle text-c-blue f-10 m-r-10">
                                                                    </i>
                                                                    <a href="#!" class="custom-modal" data-target="#Oral_Pathology_Laboratory_Patient_Acknowledgement_Form">                                                                   
                                                                        ORAL PATHOLOGY LABORATORY Patient Acknowledgement Form
                                                                    </a>
                                                                </p>
                                                            </div>
                                                            <div class="col-2" id="filelist_39"></div>
                                                        </div>

                                                    </div>
                                                </div>
                                                <div class="card cardbottom">
                                                    <div class="card-header cardheadclr" id="headingSix">
                                                        <h6 class="h6font mb-0"><a href="#!" data-toggle="collapse" data-target="#collapseSix" aria-expanded="false" aria-controls="collapseSix">Additional Forms:</a></h6>
                                                    </div>
                                                    <div id="collapseSix" class="card-body collapse show" aria-labelledby="headingSix" data-parent="#accordionExample">
                                                        <div class="row mb-2 mt-3">
                                                            <div class="col-8">
                                                                <p class="m-0"><i class="fas fa-circle text-c-blue f-10 m-r-10"></i>
                                                                    <a href="#!" class="custom-modal" data-target="#FamilyCarePhysicianReferralLette">
                                                                        Family Care Physician Referral Letter
                                                                    </a>
                                                                </p>
                                                            </div>
                                                            <div class="col"  id="filelist_18"> 
                                                            </div>

                                                        </div>
                                                        <div class="row mb-2">
                                                            <div class="col-8">
                                                                <p class="m-0"><i class="fas fa-circle text-c-red f-10 m-r-10"></i>
                                                                    <a href="#!" class="custom-modal" data-target="#Medical_RecordRequest_Form">
                                                                        Medical Record Request Form  </a></p>
                                                            </div>
                                                            <div class="col"  id="filelist_19"> 
                                                            </div>
                                                        </div>                                   
                                                        <div class="row mb-2">
                                                            <div class="col-8">
                                                                <p class="m-0"><i class="fas fa-circle text-c-yellow f-10 m-r-10"></i>
                                                                    <a href="#!" class="custom-modal" data-target="#Medical_Clearance_Request_Form">
                                                                        Medical Clearance Request Form  </a></p>
                                                            </div>
                                                            <div class="col"  id="filelist_20"> 
                                                            </div>

                                                        </div>
                                                        <div class="row mb-2">
                                                            <div class="col-8">
                                                                <p class="m-0"><i class="fas fa-circle text-c-purple f-10 m-r-10"></i>
                                                                    <a href="#!" class="custom-modal" data-target="#Medication_Record_RequestForm">
                                                                        Medication Record Request Form 
                                                                    </a>
                                                                </p>
                                                            </div>
                                                            <div class="col"  id="filelist_21"> 
                                                            </div>

                                                        </div>
                                                        <div class="row mb-2">
                                                            <div class="col-8">
                                                                <p class="m-0"><i class="fas fa-circle text-c-red f-10 m-r-10"></i>
                                                                    <a href="#!" class="custom-modal" data-target="#Proof_of_delivery">
                                                                        Proof of delivery 
                                                                    </a>
                                                                </p>
                                                            </div> 
                                                            <div class="col"  id="filelist_22"> 
                                                            </div>
                                                        </div>
                                                        <div class="row mb-2">
                                                            <div class="col-4">
                                                                <p class="m-0"><i class="fas fa-circle text-c-green f-10 m-r-10"></i>
                                                                    <a href="#!" class="custom-modal" data-target="#labinvoice">
                                                                        Lab Invoice
                                                                    </a>
                                                                </p>
                                                            </div>
                                                            <div class="col-6">  
                                                                <p class="m-0 data_34 " style="font-size:10px;float: left;width:110px;margin-bottom: -5px;">
                                                                    DOS: <input id="date_control_34" type="text" class="dateborder txtDate data_currentdate" autocomplete="off" style="width:80px;"></p>
                                                                <div class="custom-file" style="display: inline;float: left;width:300px;">  
                                                                    <input type="file" class=" custom-file-input"  id="file_34">
                                                                    <label class="custom-file-label" for="file_34" >Choose file...</label>
                                                                    <button type="button" class="btn btn-primary btn-sm"  onclick="uploadFile(this, '34');">Upload</button>
                                                                    <div class="invalid-feedback"></div>
                                                                </div>
                                                            </div>
                                                            <div class="col-2"  id="filelist_34"> 
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>

                                            <!--===================================collapse End===============================================================-->                                        
                                            <!--                                            <div class="border-0">
                                                                                            <div class="row">
                                                                                                <label class="col-lg-4"></label>
                                                                                                <div class="col-12" style="text-align:right;margin-top: 15px">
                                                                                                    <button class="btn btn-primary mr-2">Submit</button>
                                                                                                    <button class="btn btn-light">Clear</button>
                                                                                                </div>
                                                                                            </div>
                                                                                        </div>-->

                                        </form>
                                    </div>
                                </div>
                            </div> 
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section> 
    <!--==================================================================================-->

    <jsp:include page="../includes/footer.jsp"></jsp:include>
        <script src="assets/js/pages/form-select-custom.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/signature_pad/1.5.3/signature_pad.min.js"></script>


        <div id="exampleModalCenter" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalCenterTitle">Information</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    </div>
                    <div class="modal-body">
                        <p>Please, select the patient from the patient combo box to proceed.</p>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    </div>
                </div>
            </div>
        </div> 

    <jsp:include page="../patientregister/1_2_HIPAAConsentForm.jsp"></jsp:include>
    <jsp:include page="../patientregister/1_3_Oral_CancerScreening.jsp"></jsp:include>
    <jsp:include page="../patientregister/1_4_Signature_File_ConsentForm.jsp"></jsp:include>
    <jsp:include page="../patientregister/1_5_ABN_Advance_BeneficiaryNonCoverageForm.jsp"></jsp:include>
    <jsp:include page="../patientregister/1_5_ABNSpanish.jsp"></jsp:include>
    <jsp:include page="../patientregister/2_1_Financial_Agreement_TreatmentPlanConsent_Estimate.jsp"></jsp:include>
    <jsp:include page="../patientregister/2_2_PaymentWaiver_Form.jsp"></jsp:include>
    <jsp:include page="../patientregister/2_3_1_cbct_consent_form.jsp"></jsp:include>
    <jsp:include page="../patientregister/2_3_2_Riskmanagement_cbct_scan_forms.jsp"></jsp:include>
    <jsp:include page="../patientregister/2_3_3_Surgical_Excision_Lesion.jsp"></jsp:include>
    <jsp:include page="../patientregister/2_3_4_Bone_Grafting_or_RegenerationConsent.jsp"></jsp:include>
    <jsp:include page="../patientregister/2_3_5_Reconstruction_Bone_Fractures.jsp"></jsp:include>
    <jsp:include page="../patientregister/2_3_6_Fixation_Screw.jsp"></jsp:include>
    <jsp:include page="../patientregister/2_3_7_Prosthetic_Appliance.jsp"></jsp:include>
    <jsp:include page="../patientregister/2_3_8_Affidavit_Intolerance_CPAP_Device.jsp"></jsp:include>
    <jsp:include page="../patientregister/2_3_9_Treatment_Refusal.jsp"></jsp:include>
    <jsp:include page="../patientregister/3_1_Preoperative_Instruction_Given.jsp"></jsp:include>
    <jsp:include page="../patientregister/3_2_Sleep_Apnea_Assessment.jsp"></jsp:include>
    <jsp:include page="../patientregister/4_Bone_stablelize_ScrewConsent_form.jsp"></jsp:include>
    <jsp:include page="../patientregister/5_PhlebotomyConsent_form.jsp"></jsp:include>
    <jsp:include page="../patientregister/6_1_FamilyCarePhysicianReferralLette.jsp"></jsp:include>
    <jsp:include page="../patientregister/6_2_Medical_RecordRequest_Form.jsp"></jsp:include>
    <jsp:include page="../patientregister/6_3_Medical_Clearance_Request_Form.jsp"></jsp:include>
    <jsp:include page="../patientregister/6_4_Medication_Record_RequestForm.jsp"></jsp:include>
    <jsp:include page="../patientregister/6_5_Proof_of_delivery.jsp"></jsp:include>
    <jsp:include page="../patientregister/6_Dentures_ConsentNeeds_revised.jsp"></jsp:include>
    <jsp:include page="../patientregister/Radiology_Patient_Acknowledgement_Form.jsp"></jsp:include>
    <jsp:include page="../patientregister/Oral_Pathology_Order_Form.jsp"></jsp:include>
    <jsp:include page="../patientregister/Radiology_Order_Form.jsp"></jsp:include>
    <jsp:include page="../patientregister/Oral_Pathology_Laboratory_Patient_Acknowledgement_Form.jsp"></jsp:include>

    <!--==================================================================================-->

    <script>
                                                                        async function uploadFile(buttonObj, date_control_id) {
                                                                            var patientid = $("#patientCombo option:selected").val();
                                                                            console.log('patientid:' + patientid);
                                                                            if (patientid != 0) {

                                                                                $(buttonObj).attr('disabled', 'disabled');
                                                                                $(buttonObj).text('Sending...');

                                                                                $(buttonObj).off('click'); //disables click event
                                                                                let formData = new FormData();
                                                                                formData.append("file", $("#file_" + date_control_id)[0].files[0]);
                                                                                formData.append("ddlpatientid", patientid);
                                                                                formData.append("lname", $("#inputLastName").val());
                                                                                formData.append("fname", $("#inputFirstName").val());
                                                                                formData.append("dos", $("#date_control_" + date_control_id).val());
                                                                                formData.append("consentFormType", date_control_id);
                                                                                let response = await fetch('upload_consent_form', {
                                                                                    method: "POST",
                                                                                    body: formData
                                                                                });

                                                                                if (response.status == 200) {
                                                                                    alert("File successfully uploaded.");
                                                                                    $('#patientCombo').trigger('change');
                                                                                }
                                                                                $(buttonObj).removeAttr('disabled');
                                                                                $(buttonObj).text('Submit');
                                                                            }
                                                                        }
                                                                        $(function () {
                                                                            var maxDate = new Date("01/01/4000");
                                                                            $(".data_currentdate").datepicker({
                                                                                format: "mm/dd/yyyy",
                                                                                autoclose: true,
                                                                                orientation: "bottom left",
                                                                                todayHighlight: true,
                                                                                endDate: maxDate
                                                                            }).mask('99/99/9999');

                                                                            var todayDate = new Date();
                                                                            $(".notfuturedate").datepicker({
                                                                                format: "mm/dd/yyyy",
                                                                                autoclose: true,
                                                                                orientation: "bottom left",
                                                                                todayHighlight: true,
                                                                                endDate: todayDate
                                                                            }).mask('99/99/9999');


                                                                            function moreFunction() {
                                                                                var dots = document.getElementById("dots");
                                                                                var moreText = document.getElementById("more");
                                                                                var btnText = document.getElementById("myBtn");
                                                                                if (dots.style.display === "none") {
                                                                                    dots.style.display = "inline";
                                                                                    btnText.innerHTML = "more";
                                                                                    moreText.style.display = "none";
                                                                                } else {
                                                                                    dots.style.display = "none";
                                                                                    btnText.innerHTML = "less";
                                                                                    moreText.style.display = "inline";
                                                                                }
                                                                            }


                                                                            $('#row_patient').hide();
                                                                            $('#patientCombo').change(function () {
                                                                                $('#row_patient').show();
                                                                                $("div[id^='filelist_']").each(function (i) {
                                                                                    $(this).html('');
                                                                                });

                                                                                var patientid = this.value;
                                                                                if (patientid != 0) {
                                                                                    clearFields();
                                                                                    $.get('getPatientDetail', {
                                                                                        patientid: patientid
                                                                                    }, function (response) {
                                                                                        if (response.length > 0)
                                                                                        {
                                                                                            var txt = response;
                                                                                            var obj = jQuery.parseJSON(txt);
                                                                                            console.log(obj);
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
                                                                                                    $('#inputMiddleName').val(mname);
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
                                                                                                    $('#practice').val(obj[i].ddlpractice);
                                                                                                    $('#actualPracticeName').val(obj[i].actualPracticeName);
                                                                                                    $('#inputInsur').val(obj[i].insurance);

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
                                                                                    console.log("calling getconsentpdflist ");
                                                                                    $.get('getconsentpdflist', {
                                                                                        patientid: patientid
                                                                                    }, function (response) {
                                                                                        console.log("getconsentpdflist response received");
                                                                                        console.log(response);
                                                                                        $.each(response, function (i, item) {
                                                                                            console.log(item.fileName + ":" + item.filePath + ":" + item.consentFormId);
                                                                                            var link = '<p class="m-0"><a href="download_consent_pdf?consentFormId=' + item.id + '" target="_blank">' + item.fileName + '</a></p>';
                                                                                            $('#filelist_' + item.consentFormId).append(link);
                                                                                        });
                                                                                    });
                                                                                    console.log("calling getconsentvisitlist ");
                                                                                    $.get('getconsentvisitlist', {
                                                                                        patientid: patientid
                                                                                    }, function (response) {
                                                                                        console.log("getconsentvisitlist response received");
                                                                                        console.log(response);
                                                                                        $.each(response, function (i, item) {
                                                                                            var link = '';
                                                                                            console.log(i + ":" + item.visitDate + ":" + item.consentFormId);
//                                                                                            if (i == 0) {
//                                                                                                link = '<p class="m-0">Previous Visits: </p><p class="m-0">' + new Date(item.visitDate).toLocaleDateString("en-US") + '</p>';
//                                                                                            } else{
//                                                                                                link = ', <p class="m-0">' + new Date(item.visitDate).toLocaleDateString("en-US") + '</p>';
//                                                                                            }
                                                                                            link = '<p class="m-0">' + new Date(item.visitDate).toLocaleDateString("en-US") + '</p>';
                                                                                            $('#filelist_' + item.consentFormId).append(link);
                                                                                        });
                                                                                    });

                                                                                }
                                                                            });

                                                                            function clearFields() {
                                                                                $("#inputFullName").val("");
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
                                                                                // $('#inputLicense').val("");
                                                                                $('#inputFirstName').val("");
                                                                                $('#inputMiddleName').val("");
                                                                                $('#inputLastName').val("");
                                                                                $('#practiceAddress').val("");
                                                                                $('#practicePhone').val("");
                                                                                $('#practiceFax').val("");
                                                                                $('#actualPracticeName').val("");
                                                                            }


                                                                            function resetPopupFields() {
                                                                                $(".data_patient_name").text('');

                                                                                //for input felds
                                                                                $(".data_patient_name").val('');
                                                                                $(".data_inputDOB").val('');
                                                                                $(".data_inputAddress").val('');
                                                                                $(".data_inputCity").val('');
                                                                                $(".data_inputState").val('');
                                                                                $(".data_inputZip").val('');
                                                                                $(".data_inputEmail").val('');
                                                                                $(".data_inputPhone").val('');
                                                                                $(".data_inputEPhone").val('');
                                                                                $(".data_inputGender").val('');
                                                                                $(".data_inputSSN").val('');
                                                                                $(".data_inputFirstname").val('');
                                                                                $(".data_inputLastname").val('');
                                                                                $(".data_inputMiddlename").val('');


                                                                                $(".data_practiceAddress").val('');
                                                                                $(".data_practicePhone").val('');
                                                                                $(".data_practiceFax").val('');
                                                                            }

                                                                            $('div.modal').on('hide.bs.modal', function (e) {
                                                                                var popupId = e.target.id;
                                                                                //resetPopupFields();
                                                                                $(':input', '#' + popupId).not(':button, :submit, :reset, :hidden')
                                                                                        .removeAttr('checked')
                                                                                        .removeAttr('selected')
                                                                                        .not(':checkbox, :radio, select')
                                                                                        .val('');


                                                                                $('input[type="radio"]', '#' + popupId).prop('checked', false);
                                                                                $('input[type="checkbox"]', '#' + popupId).prop('checked', false);
                                                                            });

                                                                            $('div.modal').on('shown.bs.modal', function (e) {
                                                                                var popupId = e.target.id;
//                                                                            $(':input', '#' + popupId)
//                                                                                    .not(':button, :submit, :reset, :hidden,  :checkbox, :radio , :date')
//                                                                                    .val('');
//                                                                                    .prop('checked', false)
//                                                                                    .prop('selected', false);

//                                                                            $(':input', '#' + popupId)
////                                                                                    .not(':button, :submit, :reset, :hidden, :date')
////                                                                                    .removeAttr('checked')
////                                                                                    .removeAttr('selected')
//                                                                                    .not(':checkbox, :radio, :date, select').val('');
                                                                                // for span
                                                                                $(".data_patient_name").text($("#inputFullName").val());
                                                                                $(".data_practice_name").text($("#actualPracticeName").val());

                                                                                $(".data_practiceAddress").text($("#practiceAddress").val());
                                                                                $(".data_practicePhone").text($("#practicePhone").val());
                                                                                $(".data_practiceFax").text($("#practiceFax").val());
                                                                                //for input felds
                                                                                $(".data_patient_name").val($("#inputFullName").val());
                                                                                $(".data_practice_name").val($("#actualPracticeName").val());
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
                                                                                $(".data_inputMiddlename").val($("#inputMiddleName").val());

                                                                                //Make read only
                                                                                $('.data_patient_name').attr('readonly', true);
                                                                                $('.data_inputDOB').attr('readonly', true);
                                                                                $('.data_inputGender').attr('readonly', true);
                                                                                $(".data_inputFirstname").attr('readonly', true);
                                                                                $(".data_inputLastname").attr('readonly', true);
                                                                                $(".data_inputMiddlename").attr('readonly', true);
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

                                                                                //clear signatures
                                                                                $("canvas").each(function () {
                                                                                    var context = this.getContext('2d');
                                                                                    context.clearRect(0, 0, this.width, this.height);
                                                                                });
                                                                            });

                                                                            //Show or hide visit date setter block based on Done status checkbox
                                                                            $('.data_donecheck').change(function () {
                                                                                var block_identifier = this.value;
                                                                                if (this.checked) {
                                                                                    $(".data_" + block_identifier).show();
                                                                                } else {
                                                                                    $(".data_" + block_identifier).hide();
                                                                                }
                                                                            });

                                                                            $('.custom-modal').on('click', function (event) {
                                                                                var patientId = $('#patientCombo').val();
                                                                                var popuptarget = $(this).attr('data-target');
                                                                                // alert(popuptarget)
                                                                                // console.log("patientId:" + patientId);
                                                                                if (patientId == '' || patientId == 0) {
                                                                                    // console.dir(event.target);
                                                                                    //   $('#exampleModalCenter').modal('show');
                                                                                    msgbox("Patient not selected", "Please, select the patient from the patient combo box to proceed.", "error");
                                                                                    //                                                                                        $('#'+event.target.getAttribute('id')).modal('hide');
                                                                                    // return event.preventDefault(); 
                                                                                    //  alert("hided");
                                                                                    //  return false;
                                                                                } else {
                                                                                    $(popuptarget).modal('show');
                                                                                }
                                                                            });

                                                                            $('.custom-file-input').on('change', function (event) {
                                                                                var file = event.target.files[0];
                                                                                if (file.name.endsWith('.exe')) {
                                                                                    msgbox("Uploading EXE files are not allowed", "Patient Checklist", "error");
                                                                                    $(this).next('.custom-file-label').html("Choose file...");
                                                                                    $(this).val(null);
                                                                                    return;
                                                                                } else if (file.name.endsWith('.dll')) {
                                                                                    msgbox("Uploading DLL files are not allowed", "Patient Checklist", "error");
                                                                                    $(this).next('.custom-file-label').html("Choose file...");
                                                                                    $(this).val(null);
                                                                                    return;
                                                                                } else if (file.name.endsWith('.sh')) {
                                                                                    msgbox("Uploading sh files are not allowed", "Patient Checklist", "error");
                                                                                    $(this).next('.custom-file-label').html("Choose file...");
                                                                                    $(this).val(null);
                                                                                    return;
                                                                                } else if (file.name.endsWith('.bat')) {
                                                                                    msgbox("Uploading bat files are not allowed", "Patient Checklist", "error");
                                                                                    $(this).next('.custom-file-label').html("Choose file...");
                                                                                    $(this).val(null);
                                                                                    return;
                                                                                }
                                                                                var fileSize = event.target.files[0].size;
//                                                                             alert(fileSize);
                                                                                if (fileSize > 50000000)
                                                                                {
                                                                                    msgbox("Uploaded file size exceeded 50MB", "Patient Checklist", "error");
                                                                                    $(this).next('.custom-file-label').html("Choose file...");
                                                                                    $(this).val(null);
                                                                                    return;
                                                                                }
                                                                                //get the file name
                                                                                var fileName = file.name;//$(this).val();
                                                                                //replace the "Choose a file" label
                                                                                $(this).next('.custom-file-label').html(fileName);
                                                                            });

                                                                            function saveVisitDate(buttonObj, date_control_id) {

                                                                                var visitdate = $('#date_control_' + date_control_id).val();
                                                                                var patientid = $("#patientCombo option:selected").val();
                                                                                console.log('patientid:' + patientid);
                                                                                if (patientid != 0) {

                                                                                    $(buttonObj).attr('disabled', 'disabled');
                                                                                    $(buttonObj).text('Sending...');

                                                                                    $(buttonObj).off('click'); //disables click event

                                                                                    $.ajax({
                                                                                        url: "save_visit_date",
                                                                                        type: "POST", //send it through get method
                                                                                        data: {
                                                                                            patientId: patientid,
                                                                                            consentFormType: date_control_id,
                                                                                            visitDate: visitdate,
                                                                                            isDone: true
                                                                                        },
                                                                                        success: function (response) {
                                                                                            if (response.length > 0)
                                                                                            {
                                                                                                $('#patientCombo').trigger('change');
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
                                                                                    msgbox("Patient not selected", "Please, select the patient from the patient combo box to proceed.", "error");
                                                                                }
                                                                                return true;
                                                                            }
                                                                        });

    </script>

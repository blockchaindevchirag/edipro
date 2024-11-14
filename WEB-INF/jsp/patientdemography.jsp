<%@page contentType="text/html"  pageEncoding="UTF-8" autoFlush="true"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>


<html>
    <head>

        <title>Patient Demography</title>
        <style>
            .wizard > .content > .body {
                padding: 0px 15px !important;
            }
            .datepicker>.datepicker-days {
                display: block;
            }
            .datepicker table tr td.disabled{
                color: darkgray;
            }
            .wizard > .steps > ul > li {
                width: 20% !important;
                float: left;
            }
            .filter-option{
                margin-top: -7px !important;
                margin-bottom: -4px  !important;
            }

            .bootstrap-select{
                margin: -5px -14px !important;
                width: 108%;
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
                background-color: #fff !important;
                border: 2px solid #ced4da !important;
                border-radius: 4px !important;
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

        <jsp:include page="includes/header.jsp"></jsp:include>


            <!-- [ Main Content ] start -->
        <section class="pcoded-main-container">
            <div class="pcoded-wrapper">
                <div class="pcoded-content">
                    <div class="pcoded-inner-content">
                        <div class="main-body">
                            <div class="page-wrapper">

                                <div class="row">
                                    <!-- [ sample-page ] start -->
                                    <div class="col-sm-12">

                                        <div class="card">

                                            <div class="card-body">
                                                <!--  <form id="example-form" action="addpatientdemography" method="post" modelAttribute="patientdemography">-->
                                            <form:form method="POST" id="example-form" onsubmit="removeAttr()"  action="addpatientdemography" modelAttribute="patientdemography">
                                                <div>
                                                    <h3>Profile</h3>
                                                    <section>
                                                        <div class="row">
                                                            <div class="col-6">
                                                                <h5>Profile</h5>
                                                                <hr style="margin-top: 0 !important; margin-bottom: 8px  !important;">
                                                                <div class="form-group">
                                                                    <label class="form-label" for="ddlpractice" >Practice <span class="text-danger">*</span></label>
                                                                    <select class= "form-control js-example-placeholder-multiple col-sm-12" id="ddlpractice" data-placeholder="Select Practice" required name="ddlpractice">
                                                                        <!-- <option value = "" >--Select--</option>
                                                                        <c:forEach var="patient" items="${practicelist}">
                                                                            <option value = ${patient.ddlpracticeid} >${patient.ddlpractice}</option>
                                                                        </c:forEach> -->
                                                                    </select>
                                                                </div>
                                                                <div class="form-row">
                                                                    <div class="form-group col-md-6">
                                                                        <label class="form-label" for="ddlpatient">Patient </label>
                                                                        <select class="form-control js-example-placeholder-multiple col-sm-12" required id="ddlpatient" name ="ddlpatient">
                                                                            <option value = "0" >New Patient</option>
                                                                            <c:forEach var="patient" items="${patientlist}">
                                                                                <option value = ${patient.ddlpatientid} >${patient.ddlpatient}</option>
                                                                            </c:forEach>
                                                                        </select>
                                                                    </div>
                                                                    <div class="form-group col-md-6">
                                                                        <label class="form-label">Patient Account#  </label>
                                                                        <input type="text" name="patientacc" autocomplete="off"  class="form-control" id="patientacc" placeholder="Enter Patient Account#" />
                                                                    </div>
                                                                </div> 
                                                                <div class="form-row">
                                                                    <div class="form-group col-md-4">
                                                                        <label class="form-label">Last Name <span class="text-danger">*</span></label>
                                                                        <input type="text" class="required form-control" autocomplete="off"  name="lname" maxlength="48" id ="lname" required placeholder="Enter Last Name" />
                                                                    </div>
                                                                    <div class="form-group col-md-4">
                                                                        <label class="form-label">Middle Name </label>
                                                                        <input type="text" class="form-control" id="mname" autocomplete="off"  name="mname" maxlength="48" placeholder="Enter Middle Name" />
                                                                    </div>
                                                                    <div class="form-group col-md-4">
                                                                        <label class="form-label">First Name <span class="text-danger">*</span></label>
                                                                        <input type="text" class="form-control" id ="fname" autocomplete="off"  name="fname" maxlength="48" required placeholder="Enter First Name" />
                                                                    </div>
                                                                </div>
                                                                <div class="form-row">
                                                                    <div class="form-group col-md-6">
                                                                        <label class="form-label"> Date of birth <span class="text-danger">*</span></label>
                                                                        <input type="text" class="form-control" autocomplete="off"  id="dob"  name="dob" required />

                                                                    </div>
                                                                    <div class="form-group col-md-6">
                                                                        <label class="form-label d-block">Gender <span class="text-danger">*</span></label>
                                                                        <select class="js-example-placeholder-multiple col-sm-12" id="ddlgender"  name="ddlgender" required>
                                                                            <option value = "" >--Select--</option>
                                                                            <c:forEach var="patient" items="${genderlist}">
                                                                                <option value = ${patient.ddlgenderid} >${patient.ddlgender}</option>
                                                                            </c:forEach>
                                                                        </select>
                                                                    </div>
                                                                    <div class="form-group col-md-6">
                                                                        <label class="form-label" for="ddlmarital">Marital Status</label>
                                                                        <select class="js-example-placeholder-multiple col-sm-12" id="ddlmarital" name="ddlmarital">
                                                                            <option value = "0" >--Select--</option>
                                                                            <c:forEach var="patient" items="${maritallist}">
                                                                                <option value = ${patient.ddlmaritalid} >${patient.ddlmarital}</option>
                                                                            </c:forEach>
                                                                        </select>
                                                                    </div>
                                                                    <div class="form-group col-md-6">
                                                                        <label class="form-label" for="ddlguarantor">Guarantor </label>
                                                                        <select class="js-example-placeholder-multiple col-sm-12" id="ddlguarantor" name="ddlguarantor">
                                                                            <option value = "0" >New Guarantor</option>
                                                                            <!--   <c:forEach var="patient" items="${guarantorlist}">
                                                                                   <option value = ${patient.ddlguarantorid} >${patient.ddlguarantor}</option>
                                                                            </c:forEach> -->
                                                                        </select>
                                                                    </div>


                                                                </div>


                                                            </div>
                                                            <div class="col-6" style="background: white;margin-top: -25px;padding-top: 25px;">
                                                                <h5>Contact Information</h5>
                                                                <hr style="margin-top: 0 !important; margin-bottom: 8px  !important;">
                                                                <div class="form-row">
                                                                    <div class="form-group col-md-6">
                                                                        <label class="form-label">Address Line 1 <span class="text-danger">*</span></label>
                                                                        <textarea class="form-control" cols="2" id ="add1" name="add1" required maxlength="48" placeholder="Enter Address Line 1" style="height: 106px"></textarea>
                                                                    </div>
                                                                    <div class="form-group col-md-6">
                                                                        <label class="form-label">Address Line 2</label>
                                                                        <textarea class="form-control" cols="2" id="add2" name="add2" maxlength="48" placeholder="Enter Address Line 2"  style="height: 106px"></textarea>
                                                                    </div>

                                                                    <div class="form-group col-md-4">
                                                                        <label class="form-label">City </label>
                                                                        <input type="text" class="form-control" id="city" autocomplete="off"  maxlength="24" name="city" placeholder="Enter City" />
                                                                        <span id="city_error" style="color: red"></span>
                                                                    </div>
                                                                    <div class="form-group col-md-4">
                                                                        <label class="form-label">State <span class="text-danger">*</span></label>
                                                                        <!--  <input type="text" class="form-control" id="state" name="state" placeholder="Enter State"> -->
                                                                        <select class="form-control js-example-placeholder-multiple" required id="state" name="state" />
                                                                        <option value = "" >--Select--</option>
                                                                        </select>
                                                                    </div>
                                                                    <div class="form-group col-md-4">
                                                                        <label class="form-label">Zip </label>
                                                                        <!-- <span style="float:right" ><a  data-toggle="tooltip" data-placement="top" title="tooltip on top"><i class="fas fa-question-circle"></i></a></span>-->
                                                                        <input type="text"  class="form-control" maxlength="10" id="zip" name="zip" placeholder="12345-1234" />
                                                                        <!--<label class="form-label">Note: Plus Four codes replaced by zeros</label>-->
                                                                        <span id="zip_error" style="color: red"></span>
                                                                    </div>

                                                                    <div class="form-group col-md-6">
                                                                        <label class="form-label">Email</label>
                                                                        <input type="email" class="form-control" id="email" autocomplete="off"  maxlength="48" name="email" placeholder="Enter email">
                                                                        <span id="email_error" style="color: red"></span>
                                                                    </div>
                                                                    <div class="form-group col-md-6">
                                                                        <label class="form-label">Fax </label>
                                                                        <input type="text" class="form-control" id ="fax" name="fax"  maxlength="24"  placeholder="Enter Fax">
                                                                    </div>
                                                                    <div class="form-group col-md-6">
                                                                        <label class="form-label">Contact Phone </label>
                                                                        <input type="text" class="form-control" id="cp" maxlength="24" name="cp" placeholder="Enter contact Phone">
                                                                    </div>
                                                                    <div class="form-group col-md-6">
                                                                        <label class="form-label">Alert Phone </label>
                                                                        <input type="text" class="form-control" id="ap" maxlength="24" name="ap" placeholder="Enter Alert Phone">
                                                                    </div>
                                                                </div> 
                                                            </div>  
                                                        </div>
                                                            <div class="row">
                                                                <div class="col-md-4">
                                                                    <label class="form-label">Driver License</label>
                                                                    <input type="text" class="form-control" id="driverLicense" autocomplete="off" maxlength="18" name="driverLicense" placeholder="Enter Driver License No" />
                                                                </div>

                                                                <div class="col-lg-4" >
                                                                    <label class="form-label">Upload Driver License</label>
                                                                    <input class="form-control" style="padding: 4px 15px !important;" type="file" name="file_1"  id="fileUpload" accept="image/*,application/pdf" />  
                                                                    <span class="driverLicenseFile clear" id="driverLicenseFile"  style="border:none;height:30px;" ></span>
                                                                </div>


                                                                <div class="col-lg-4" >
                                                                    <label class="form-label">Upload Patient Insurance ID Card</label>
                                                                    <input class="form-control" style="padding: 4px 15px !important;" type="file" name="file_2"  id="fileUpload1"  accept="image/*,application/pdf" />  
                                                                    <span  class="insuranceFile clear"  id="insuranceFile"  style="border:none;height:30px;"> </span>
                                                                </div>
                                                            </div>
                                                            <input type="hidden" name="driverLicenseFileName" id="getfile1">
                                                            <input type="hidden" name="patientInsuranceCardFileName" id="getfile2">
                                                                                                                  
                                                        <p style="margin-top:10px;">(<span class="text-danger">*</span>) Mandatory</p>
                                                    </section>
                                                    <!--                                                    <h3>Contact Information</h3>
                                                                                                        <section>
                                                                                                            <section>
                                                                                                                <div class="row">
                                                                                                                    <div class="col-sm-6">
                                                                                                                        <div class="form-group">
                                                                                                                           
                                                                                                                        </div>
                                                                                                                    </div>
                                                                                                                    <div class="col-sm-6">
                                                                                                                        <div class="form-group">
                                                                                                                            
                                                                                                                        </div>
                                                                                                                    </div>
                                                                                                                    <div class="col-sm-6">
                                                                                                                        <div class="form-group">
                                                                                                                            
                                                                                                                        </div>
                                                                                                                    </div>
                                                                                                                    <div class="col-sm-6">
                                                                                                                        <div class="form-group">
                                                                                                                            
                                                                                                                        </div>
                                                                                                                    </div>
                                                                                                                    <div class="col-sm-6">
                                                                                                                        <div class="form-group">
                                                                                                                           
                                                                                                                        </div>
                                                                                                                    </div>
                                                                                                                    <div class="col-sm-6">
                                                                                                                        <div class="form-group">
                                                                                                                            
                                                                                                                        </div>
                                                                                                                    </div>
                                                                                                                    <div class="col-sm-6">
                                                                                                                        <div class="form-group">
                                                                                                                            
                                                                                                                        </div>
                                                                                                                    </div>
                                                    
                                                                                                                    <div class="col-sm-6">
                                                                                                                        <div class="form-group">
                                                                                                                            
                                                                                                                        </div>
                                                                                                                    </div>
                                                                                                                    <div class="col-sm-6">
                                                                                                                        <div class="form-group">
                                                                                                                           
                                                                                                                        </div>
                                                                                                                    </div>
                                                    
                                                                                                                </div>
                                                                                                            </section>
                                                                                                            <p>(<span class="text-danger">*</span>) Mandatory</p>
                                                                                                        </section>-->
                                                    <!--                                                    <h3>Identification #</h3>
                                                                                                        <section>
                                                                                                            <div class="row">
                                                                                                                <div class="col-sm-6">
                                                                                                                    <div class="form-group">
                                                                                                                        <label class="form-label">HDI ID-1 </label>
                                                                                                                        <input type="text" class="form-control" id="hdi1" name ="hdi1" placeholder="Enter HDI ID-1">
                                                                                                                        <span id="hdi1_error" style="color: red"></span>
                                                                                                                    </div>
                                                                                                                </div>
                                                                                                                <div class="col-sm-6">
                                                                                                                    <div class="form-group">
                                                                                                                        <label class="form-label">HDI ID-2 </label>
                                                                                                                        <input type="text" class="form-control" id="hdi2" name="hdi2" placeholder="Enter HDI ID-2">
                                                                                                                        <span id="hdi2_error" style="color: red"></span>
                                                                                                                    </div>
                                                                                                                </div>
                                                                                                                <div class="col-sm-6">
                                                                                                                    <div class="form-group">
                                                                                                                        <label class="form-label">SSN # </label>
                                                                                                                        <input type="text" class="form-control" id="ssn" maxlength="24" name="ssn" placeholder="Enter SSN No">
                                                                                                                    </div>
                                                                                                                </div>
                                                    
                                                                                                            </div>
                                                                                                        </section>-->
                                                    <h3>Optional</h3>
                                                    <section>
                                                        <div class="form-row">
                                                            <div class="form-group col-md-4">
                                                                <label class="form-label" for="ddlempstatus">Employment Status </label>
                                                                <select class="js-example-placeholder-multiple col-sm-12" id="ddlempstatus" id ="ddlempstatus" name="ddlempstatus" >
                                                                    <option value = "0" >--Select--</option>
                                                                    <c:forEach var="patient" items="${empstulist}">
                                                                        <option value = ${patient.ddlempstatusid} >${patient.ddlempstatus}</option>
                                                                    </c:forEach>
                                                                </select>
                                                            </div>
                                                            <div class="form-group col-md-4">
                                                                <label class="form-label">Profession Title </label>
                                                                <input type="text" class="form-control" id="pt" name="pt" placeholder="Enter Profession Title">
                                                            </div>
                                                            <div class="form-group col-md-4">
                                                                <label class="form-label">Preferred Language </label>
                                                                <select class="js-example-placeholder-multiple col-sm-12" id="ddlprelang"  name="ddlprelang">
                                                                    <option value = "0" >--Select--</option>
                                                                    <c:forEach var="patient" items="${prelanglist}">
                                                                        <option value = ${patient.ddlprelangid} >${patient.ddlprelang}</option>
                                                                    </c:forEach>
                                                                </select>
                                                            </div>
                                                            <div class="form-group col-md-4">
                                                                <label class="form-label">Religion </label>
                                                                <select class="js-example-placeholder-multiple col-sm-12" id="ddlreligion"  name="ddlreligion">
                                                                    <option value = "0" >--Select--</option>
                                                                    <c:forEach var="patient" items="${religionlist}">
                                                                        <option value = ${patient.ddlreligionid} >${patient.ddlreligion}</option>
                                                                    </c:forEach>
                                                                </select>
                                                            </div>
                                                            <div class="form-group col-md-4">
                                                                <label class="form-label">Sexual Orientation </label>
                                                                <select class="js-example-placeholder-multiple col-sm-12" id="ddlsexori"  name="ddlsexori">
                                                                    <option value = "0" >--Select--</option>
                                                                    <c:forEach var="patient" items="${sexlist}">
                                                                        <option value = ${patient.ddlsexoriid} >${patient.ddlsexori}</option>
                                                                    </c:forEach>
                                                                </select>
                                                            </div>
                                                            <div class="form-group col-md-4">
                                                                <label class="form-label">Ethnicity </label>
                                                                <select class="js-example-placeholder-multiple col-sm-12" id="ddlethinicity"  name="ddlethinicity">
                                                                    <option value = "0" >--Select--</option>
                                                                    <c:forEach var="patient" items="${ethinitylist}">
                                                                        <option value = ${patient.ddlethinicityid} >${patient.ddlethinicity}</option>
                                                                    </c:forEach>
                                                                </select>
                                                            </div>
                                                            <div class="form-group col-md-4">
                                                                <label class="form-label">Race </label>
                                                                <select class="js-example-placeholder-multiple col-sm-12" id="ddlrace"  name="ddlrace">
                                                                    <option value = "0" >--Select--</option>
                                                                    <c:forEach var="patient" items="${racelist}">
                                                                        <option value = ${patient.ddlraceid} >${patient.ddlrace}</option>
                                                                    </c:forEach>
                                                                </select>
                                                            </div>
                                                            <div class="form-group col-md-4">
                                                                <label class="form-label">Mother's Maiden First Name </label>
                                                                <input type="text" id="mmfn" class="form-control" name="mmfn" placeholder="Enter Mother's Maiden First Name">
                                                            </div>
                                                            <div class="form-group col-md-4">
                                                                <label class="form-label">Mother's Maiden Last Name </label>
                                                                <input type="text" id="mmln" class="form-control" name="mmln" placeholder="Enter Mother's Maiden Last Name">
                                                            </div>
                                                            <div class="form-group col-md-4">
                                                                <label class="form-label">Advance Directive Type </label>
                                                                <input type="text" id="adt" class="form-control" name="adt" placeholder="Enter Advance Directive Type">
                                                            </div>
                                                            <div class="form-group col-md-4">
                                                                <label class="form-label">Advance Directive Reviewed </label>
                                                                <input type="text" id="adr" class="form-control" name="adr" placeholder="Enter Advance Directive Reviewed">
                                                            </div>


                                                        </div> 



                                                        <div class="row">
                                                            <!--                                                            <div class="col-sm-6">
                                                                                                                            <div class="form-group">
                                                                                                                                <label class="form-label" for="ddlempstatus">Employment Status </label>
                                                                                                                                <select class="form-control" id="ddlempstatus" id ="ddlempstatus" name="ddlempstatus" >
                                                                                                                                    <option value = "0" >--Select--</option>
                                                            <c:forEach var="patient" items="${empstulist}">
                                                                <option value = ${patient.ddlempstatusid} >${patient.ddlempstatus}</option>
                                                            </c:forEach>
                                                        </select>
                                                    </div>
                                                </div>-->
                                                            <!--                                                            <div class="col-sm-6">
                                                                                                                            <div class="form-group">Profession Title </label>
                                                                                                                                <input type="text" class="form-control" id="pt" name="pt" placeholder="Enter Profession Title">
                                                                                                                            </div>
                                                                                                                                <label class="form-label">
                                                                                                                        </div>-->
                                                            <!--                                                            <div class="col-sm-6">
                                                                                                                            <div class="form-group">
                                                                                                                                <label class="form-label">Preferred Language </label>
                                                                                                                                <select class="form-control" id="ddlprelang"  name="ddlprelang">
                                                                                                                                    <option value = "0" >--Select--</option>
                                                            <c:forEach var="patient" items="${prelanglist}">
                                                                <option value = ${patient.ddlprelangid} >${patient.ddlprelang}</option>
                                                            </c:forEach>
                                                        </select>
                                                    </div>
                                                </div>-->
                                                            <!--                                                            <div class="col-sm-6">
                                                                                                                            <div class="form-group">
                                                                                                                                <label class="form-label">Religion </label>
                                                                                                                                <select class="form-control" id="ddlreligion"  name="ddlreligion">
                                                                                                                                    <option value = "0" >--Select--</option>
                                                            <c:forEach var="patient" items="${religionlist}">
                                                                <option value = ${patient.ddlreligionid} >${patient.ddlreligion}</option>
                                                            </c:forEach>
                                                        </select>
                                                    </div>
                                                </div>-->
                                                            <!--                                                            <div class="col-sm-6">
                                                                                                                            <div class="form-group">
                                                                                                                                <label class="form-label">Sexual Orientation </label>
                                                                                                                                <select class="form-control" id="ddlsexori"  name="ddlsexori">
                                                                                                                                    <option value = "0" >--Select--</option>
                                                            <c:forEach var="patient" items="${sexlist}">
                                                                <option value = ${patient.ddlsexoriid} >${patient.ddlsexori}</option>
                                                            </c:forEach>
                                                        </select>
                                                    </div>
                                                </div>-->
                                                            <!--                                                            <div class="col-sm-6">
                                                                                                                            <div class="form-group">
                                                                                                                                <label class="form-label">Ethnicity </label>
                                                                                                                                <select class="form-control" id="ddlethinicity"  name="ddlethinicity">
                                                                                                                                    <option value = "0" >--Select--</option>
                                                            <c:forEach var="patient" items="${ethinitylist}">
                                                                <option value = ${patient.ddlethinicityid} >${patient.ddlethinicity}</option>
                                                            </c:forEach>
                                                        </select>
                                                    </div>
                                                </div>-->
                                                            <!--                                                            <div class="col-sm-6">
                                                                                                                            <div class="form-group">
                                                                                                                                <label class="form-label">Race </label>
                                                                                                                                <select class="form-control" id="ddlrace"  name="ddlrace">
                                                                                                                                    <option value = "0" >--Select--</option>
                                                            <c:forEach var="patient" items="${racelist}">
                                                                <option value = ${patient.ddlraceid} >${patient.ddlrace}</option>
                                                            </c:forEach>
                                                        </select>
                                                    </div>
                                                </div>-->

                                                            <!--                                                            <div class="col-sm-6">
                                                                                                                            <div class="form-group">
                                                                                                                                <label class="form-label">Mother's Maiden First Name </label>
                                                                                                                                <input type="text" id="mmfn" class="form-control" name="mmfn" placeholder="Enter Mother's Maiden First Name">
                                                                                                                            </div>
                                                                                                                        </div>-->

                                                            <!--                                                            <div class="col-sm-6">
                                                                                                                            <div class="form-group">
                                                                                                                                <label class="form-label">Mother's Maiden Last Name </label>
                                                                                                                                <input type="text" id="mmln" class="form-control" name="mmln" placeholder="Enter Mother's Maiden Last Name">
                                                                                                                            </div>
                                                                                                                        </div>-->

                                                            <!--                                                            <div class="col-sm-6">
                                                                                                                            <div class="form-group">
                                                                                                                                <label class="form-label">Advance Directive Type </label>
                                                                                                                                <input type="text" id="adt" class="form-control" name="adt" placeholder="Enter Advance Directive Type">
                                                                                                                            </div>
                                                                                                                        </div>-->

                                                            <!--                                                            <div class="col-sm-6">
                                                                                                                            <div class="form-group">
                                                                                                                                <label class="form-label">Advance Directive Reviewed </label>
                                                                                                                                <input type="text" id="adr" class="form-control" name="adr" placeholder="Enter Advance Directive Reviewed">
                                                                                                                            </div>
                                                                                                                        </div>-->

                                                        </div>
                                                    </section>

                                                    <h3>Signature</h3>
                                                    <section>
                                                        <!--<div class="row">-->
                                                        <div class="row">
                                                            <div class="col-6">
                                                                <h5>Identification</h5>
                                                                <hr>
                                                                <div class="form-row">
                                                                    <div class="form-group col-4">
                                                                        <label class="form-label">HDI ID-1 </label>
                                                                        <input type="text" class="form-control" id="hdi1" name ="hdi1" placeholder="Enter HDI ID-1">
                                                                        <span id="hdi1_error" style="color: red"></span>
                                                                    </div>
                                                                    <div class="form-group col-4">
                                                                        <label class="form-label">HDI ID-2 </label>
                                                                        <input type="text" class="form-control" id="hdi2" name="hdi2" placeholder="Enter HDI ID-2">
                                                                        <span id="hdi2_error" style="color: red"></span>
                                                                    </div>
                                                                    <div class="form-group col-4">
                                                                        <label class="form-label">SSN # </label>
                                                                        <input type="text" class="form-control" id="ssn" maxlength="24" name="ssn" placeholder="Enter SSN No">
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="col-6" style="background:white;">
                                                                <h5>Signature</h5>
                                                                <hr>
                                                                <div class="form-row">
                                                                    <div class="form-group col-md-6">
                                                                        <label class="form-label"> Date</label>
                                                                        <input type="text" class="form-control"  id="signdate" name="signdate" placeholder="Enter Sign Date">

                                                                    </div>
                                                                    <div class="form-group col-md-6">
                                                                        <label class="form-label"> &nbsp;</label>
                                                                        <div class="custom-control custom-checkbox">
                                                                            <input class="custom-control-input input-primary" checked  type="checkbox" id="signonfile" name="signonfile">
                                                                            <label class="custom-control-label" for="signonfile">Signature on file</label>
                                                                        </div>

                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <!--</div>-->
                                                    </section>

                                                </div>
                                            </form:form>
                                        </div>
                                    </div>

                                </div>
                                <!-- [ sample-page ] end -->
                            </div>
                            <!-- [ Main Content ] end -->
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>



    <jsp:include page="includes/footer.jsp"></jsp:include>


        <script src="assets/js/plugins/select2.full.min.js"></script>
        <script src="assets/js/pages/form-select-custom.js"></script>
        <script type="text/javascript">



            function removeAttr() {
                $('#ddlpractice').removeAttr('disabled');
            }

            function ziptest(val) {
                var zip = val;
                console.log(zip);
                console.log(zip.length);
                if (zip.length === 5) {
                    $('#zip').mask('99999');
                    $('#zip').val(zip);
                } else {
                    $('#zip').mask('99999-9999');
                    $('#zip').val(zip);
                }
            }

            $(function () {
                $('#fileUpload').on('change', function (event) {
                    var file1 = event.target.files[0];
                    var filetype = event.target.files[0].type;
                    console.log(filetype);
                    if ((!file1.type.match('application/pdf')) && (!file1.type.match('image/*'))) {
                        msgbox("Please Upload Image File Or Pdf File.", "Patient Demography Form", "error");
                        $(this).val(null);
                        return;
                    }
                    $('#getfile1').val(file1.name);
                    uploadFile(file1);
                });
                $('#fileUpload1').on('change', function (event) {
                    var file2 = event.target.files[0];
                    var filetype = event.target.files[0].type;
                    console.log(filetype);
                    if ((!file2.type.match('application/pdf')) && (!file2.type.match('image/*'))) {
                        msgbox("Please Upload Image File Or Pdf File.", "Patient Demography Form", "error");
                        $(this).val(null);
                        return;
                    }
                    $('#getfile2').val(file2.name);
                    uploadFile(file2);
                    //                                                                               
                });
            });

            async function uploadFile(file) {

                var patientid = $("select#ddlpatient").val();
                console.log('patientid:' + patientid);
                if (patientid !== 0) {
                    let formData = new FormData();
                    formData.append("ddlpatientid", patientid);
                    formData.append("file", file);
                    let response = await fetch('upload_patient_demography', {

                        method: "POST",
                        body: formData
                    });
                    response.text().then(function (text) {
                        console.log(text);
                    });
                    if (response.status == 200) {
                        msgbox("File upload successfully...!", "Patient Demography Form", "success");
                    } else {
                        msgbox("File upload failed, try again after renaming the file...!", "Patient Demography Form", "error");
                    }

                }
            }


            $(document).ready(function () {
                $("#signdate").datepicker({
                    format: "mm/dd/yyyy",
                    autoclose: true,
                    orientation: "bottom left",
                    endDate: "0",
                    startDate: "01/01/1900"
                }).mask('99/99/9999');

                $("#dob").datepicker({
                    format: "mm/dd/yyyy",
                    autoclose: true,
                    orientation: "bottom left",
                    endDate: "0",
                    startDate: "01/01/1900"
                }).mask('99/99/9999');

                $("#signonfile").hide();

                var patientid = GetParameterValues('patientid');
                var pracname = decodeURI(GetParameterValues('practice'));


                var EId = '<%= session.getAttribute("Entityid")%>';
                if (EId !== '')
                {
                    $.ajax({
                        url: "practicedetailswtentityid",
                        type: "get", //send it through get method
                        data: {
                            Entityid: EId
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
                                console.log("UT:<%=session.getAttribute("UT")%>:");
                                var usertype = '<%=session.getAttribute("UT")%>';
                                var practiceid = '<%=session.getAttribute("practiceid")%>';
        <sec:authorize access="hasAnyRole('ROLE_PRACTICE_ADMIN,ROLE_PRACTICE_STAFF,ROLE_PRACTICE_PROVIDER,ROLE_REFERING_PROVIDER')">

                                console.log("Practice: " + practiceid);
                                $('#ddlpractice').val(practiceid).change();
                                $('#ddlpractice').attr('disabled', "true");
        </sec:authorize>


                                if (typeof (patientid) !== "undefined")
                                {
                                    $("#ddlpatient").val(patientid);
                                    $('#ddlpatient').val(patientid).change();
                                    // console.log($("#ddlpatient").text())
                                    // var patientid = $("select#ddlpatient").val();
                                    if (patientid !== '0')
                                    {

                                        //  alert(patientid);
                                        $.get('getPatientDetail', {
                                            patientid: patientid
                                        }, function (response) {

                                            var txt = response;
                                            var obj = jQuery.parseJSON(txt);
                                            console.log(obj);
                                            if (obj.length > 0)
                                            {
                                                for (var i = 0; i < obj.length; i++)
                                                {

                                                    $('#ddlpractice').val(obj[i].ddlpracticeid);
                                                    $('#ddlpractice').trigger('change');
                                                    $('#fname').val(obj[i].fname);
                                                    $('#lname').val(obj[i].lname);
                                                    $('#mname').val(obj[i].mname);
                                                    $('#dob').val(dateFormat(obj[i].dob));
                                                    $('#dob').datepicker("setDate", convertYMDtoMDY(obj[i].dob)).mask('99/99/9999');
                                                    $('#hdi1').val(obj[i].hdi1);
                                                    $('#hdi2').val(obj[i].hdi2);
                                                    $('#add1').val(obj[i].add1);
                                                    $('#add2').val(obj[i].add2);
                                                    $('#city').val(obj[i].city);
                                                    $('#zip').val(obj[i].zip);
                                                    $('#fax').val(obj[i].fax);
                                                    if (obj[i].email === "null" || obj[i].email === "")
                                                    {
                                                        $('#email').val("");
                                                    } else
                                                    {
                                                        $('#email').val(obj[i].email);
                                                    }

                                                    $('#cp').val(obj[i].cp);
                                                    $('#ap').val(obj[i].ap);
                                                    $('#ddlmarital').val(obj[i].maritalstatus);
                                                    $('#ddlmarital').trigger('change');
                                                    $('#ddlempstatus').val(obj[i].employmentstatus);
                                                    $('#ddlempstatus').trigger('change');
                                                    $('#pt').val(obj[i].pt);
                                                    $('#ddlprelang').val(obj[i].preferredlanguage);
                                                    $('#ddlprelang').trigger('change');
                                                    $('#ddlreligion').val(obj[i].religion);
                                                    $('#ddlreligion').trigger('change');
                                                    $('#ddlsexori').val(obj[i].sexualorientation);
                                                    $('#ddlsexori').trigger('change');
                                                    $('#ddlgender').val(obj[i].ddlgender);
                                                    $('#ddlgender').trigger('change');
                                                    $('#ddlethinicity').val(obj[i].ethnicity);
                                                    $('#ddlethinicity').trigger('change');
                                                    $('#ddlrace').val(obj[i].race);
                                                    $('#ddlrace').trigger('change');
                                                    $('#mmfn').val(obj[i].mmfn);
                                                    $('#mmln').val(obj[i].mmln);
                                                    $('#adt').val(obj[i].adt);
                                                    $('#adr').val(obj[i].adr);
                                                    $('#patientacc').val(obj[i].patientacc);
                                                    // $('#signonfile').val(sv[44].trim());

                                                    $('#signdate').val(dateFormat(obj[i].signdate));
                                                    $('#signdate').datepicker("setDate", new Date(dateFormat(obj[i].signdate))).mask('99/99/9999');

                                                    $('#ssn').val(obj[i].ssn);

                                                    var a1 = obj[i].signonfile;
                                                    //var txt = $('input:text[name=sign-file]').val();
                                                    if (a1 === "Yes") {
                                                        $('#sign1').prop('checked', true);
                                                        $("#signonfile").val('Yes');
                                                        //$('#yes').prop('checked', true);
                                                    } else if (a1 === "No") {
                                                        $('#sign1').prop('checked', false);
                                                        $("#signonfile").val('No');

                                                    } else
                                                    {
                                                        $('#sign1').prop('checked', true);
                                                        $("#signonfile").val('Yes');
                                                    }

                                                    var parastate = obj[i].state;
                                                    var practiceid = obj[i].ddlpracticeid;
                                                    guaid = obj[i].ddlguarantor;


                                                    $.ajax({
                                                        url: "getstatemaster",
                                                        type: "get", //send it through get method
                                                        success: function (response) {
                                                            var select = $('#state');
                                                            select.find('option').remove();
                                                            $('<option>').val("").text("--Select--").appendTo(select);
                                                            console.log(response);
                                                            var txt = response;
                                                            var obj1 = jQuery.parseJSON(txt);
                                                            console.log(obj1);
                                                            if (obj1.length > 0)
                                                            {
                                                                for (var i = 0; i < obj1.length; i++)
                                                                {
                                                                    $('<option>').val(obj1[i].code).text(obj1[i].state + ' [' + obj1[i].code + '] ').appendTo(select);
                                                                }
                                                                $('#state').val(parastate);
                                                            }
                                                        }
                                                    });


                                                    setTimeout(function () {
                                                        // console.log(practiceid);
                                                        if (practiceid !== '0')
                                                        {

                                                            $.ajax({
                                                                url: "getPatientwtPracticeid",
                                                                type: "get", //send it through get method
                                                                data: {
                                                                    practiceid1: practiceid
                                                                },
                                                                success: function (response) {
                                                                    var select = $('#ddlguarantor');
                                                                    select.find('option').remove();
                                                                    $('<option>').val("0").text("New Guarantor").appendTo(select);
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
                                                                        $('#ddlguarantor').val(guaid);
                                                                    }
                                                                }
                                                            });
                                                        }
                                                    }, 2000);

                                                }
                                            } else
                                            {

                                                $('#ddlpractice').val("");
                                                $('#ddlpatient').val("0");
                                                $('#fname').val("");
                                                $('#lname').val("");
                                                $('#mname').val("");
                                                $('#dob').val("");

                                                $('#hdi1').val("");
                                                $('#hdi2').val("");
                                                $('#add1').val("");
                                                $('#add2').val("");
                                                $('#city').val("");
                                                $('#state').val("");
                                                $('#zip').val("");
                                                $('#fax').val("");
                                                $('#email').val("");
                                                $('#cp').val("");
                                                $('#ap').val("");
                                                $('#ddlmarital').val("0");

                                                $('#ddlempstatus').val("0");
                                                $('#pt').val("");
                                                $('#ddlprelang').val("0");
                                                $('#ddlreligion').val("0");
                                                $('#ddlsexori').val("0");
                                                $('#ddlgender').val("");
                                                $('#ddlethinicity').val("0");
                                                $('#ddlrace').val("0");
                                                $('#mmfn').val("");
                                                $('#mmln').val("");
                                                $('#adt').val("");
                                                $('#adr').val("");
                                                $('#patientacc').val("");
                                                $('#ddlguarantor').val("0");
                                                $('#ssn').val("");
                                                $('#sign1').prop('checked', true);
                                                $("#signonfile").val('Yes');

                                            }
                                        });
                                    } else
                                    {
                                        console.log("Kumar");
                                        $('#ddlpractice').val("");
                                        $('#ddlpatient').val("0");
                                        $('#fname').val("");
                                        $('#lname').val("");
                                        $('#mname').val("");
                                        $('#dob').val("");

                                        $('#hdi1').val("");
                                        $('#hdi2').val("");
                                        $('#add1').val("");
                                        $('#add2').val("");
                                        $('#city').val("");
                                        $('#state').val("");
                                        $('#zip').val("");
                                        $('#fax').val("");
                                        $('#email').val("");
                                        $('#cp').val("");
                                        $('#ap').val("");
                                        $('#ddlmarital').val("0");

                                        $('#ddlempstatus').val("0");
                                        $('#pt').val("");
                                        $('#ddlprelang').val("0");
                                        $('#ddlreligion').val("0");
                                        $('#ddlsexori').val("0");
                                        $('#ddlgender').val("");
                                        $('#ddlethinicity').val("0");
                                        $('#ddlrace').val("0");
                                        $('#mmfn').val("");
                                        $('#mmln').val("");
                                        $('#adt').val("");
                                        $('#adr').val("");
                                        $('#patientacc').val("");
                                        $('#ddlguarantor').val("0");
                                        $('#ssn').val("");
                                        $('#sign1').prop('checked', true);
                                        $("#signonfile").val('Yes');

                                    }

                                } else
                                {
                                    $('#yes').prop('checked', true);
                                    $("#signonfile").val('Yes');
                                }


                            }
                        }
                    });

                }

                $('#cp').mask('999-999-9999');
                $('#zip').mask('99999-9999');
                $('#ap').mask('999-999-9999');
                $('#fax').mask('999-999-9999');
                $('#ssn').mask('999-99-9999');



                $('#fname').keydown(function (e) {
                    if (e.shiftKey || e.ctrlKey || e.altKey) {
                        //e.preventDefault();
                    } else {
                        var key = e.keyCode;
                        if (!((key == 8) || (key == 32) || (key == 9) || (key == 46) || (key >= 35 && key <= 40) || (key >= 65 && key <= 90))) {
                            if (key !== 188)
                            {
                                e.preventDefault();
                            }
                        }
                    }
                });

                $('#lname').keydown(function (e) {
                    if (e.shiftKey || e.ctrlKey || e.altKey) {
                        // e.preventDefault();
                    } else {
                        var key = e.keyCode;
                        if (!((key == 8) || (key == 32) || (key == 9) || (key == 46) || (key >= 35 && key <= 40) || (key >= 65 && key <= 90))) {
                            if (key !== 188)
                            {
                                e.preventDefault();
                            }
                        }
                    }
                });

                $('#mname').keydown(function (e) {
                    if (e.shiftKey || e.ctrlKey || e.altKey) {
                        // e.preventDefault();
                    } else {
                        var key = e.keyCode;
                        if (!((key == 8) || (key == 32) || (key == 9) || (key == 46) || (key >= 35 && key <= 40) || (key >= 65 && key <= 90))) {
                            if (key !== 188)
                            {
                                e.preventDefault();
                            }
                        }
                    }
                });


                $(function () {
                    $("#city").keypress(function (e) {
                        var keyCode = e.keyCode || e.which;
                        $("#city_error").html("");

                        var regex = /^[a-zA-Z\s]$/;


                        var isValid = regex.test(String.fromCharCode(keyCode));
                        if (!isValid) {
                            $("#city_error").html("Not valid");
                        }

                        return isValid;
                    });
                });


                $(function () {
                    $("#hdi1").keypress(function (e) {
                        var keyCode = e.keyCode || e.which;
                        $("#hdi1_error").html("");

                        var regex = /^[a-zA-Z0-9]$/;


                        var isValid = regex.test(String.fromCharCode(keyCode));
                        if (!isValid) {
                            $("#hdi1_error").html("Not valid");
                        }

                        return isValid;
                    });
                });

                $(function () {
                    $("#hdi2").keypress(function (e) {
                        var keyCode = e.keyCode || e.which;
                        $("#hdi2_error").html("");

                        var regex = /^[a-zA-Z0-9]$/;


                        var isValid = regex.test(String.fromCharCode(keyCode));
                        if (!isValid) {
                            $("#hdi2_error").html("Not valid");
                        }

                        return isValid;
                    });
                });

                /*   $(function () {
                 $("#email").keypress(function (e) {
                 var keyCode = e.keyCode || e.which;
                 $("#email_error").html("");
                 
                 var regex = /^[a-zA-Z0-9~`!@#\$%\^&\*\(\)_\-\+={\[\}\]\|\\:;"'<,>\.\?\/  ]*$/;
                 
                 
                 var isValid = regex.test(String.fromCharCode(keyCode));
                 if (!isValid) {
                 $("#email_error").html("Not valid");
                 }
                 
                 return isValid;
                 });
                 });*/


                var now = new Date();
                var day = '';
                var month = '';
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
                var today = (month) + '/' + day + '/' + now.getFullYear();
                document.getElementById("signdate").value = today;
                document.getElementById("dob").max = today;

                $(function () {
                    $("#zip").keypress(function (e) {
                        var keyCode = e.keyCode || e.which;
                        $("#zip_error").html("");

                        var regex = /^[0-9\s\-]$/;


                        var isValid = regex.test(String.fromCharCode(keyCode));
                        if (!isValid) {
                            $("#zip_error").html("Zip code not valid");
                        }

                        return isValid;
                    });
                });


                $(function () {
                    $("#fax").keypress(function (e) {
                        var keyCode = e.keyCode || e.which;


                        var regex = /^[0-9\s\-]$/;


                        var isValid = regex.test(String.fromCharCode(keyCode));
                        if (!isValid) {

                        }

                        return isValid;
                    });
                });



                $(function () {
                    $("#cp").keypress(function (e) {
                        var keyCode = e.keyCode || e.which;


                        var regex = /^[0-9\s\-]$/;


                        var isValid = regex.test(String.fromCharCode(keyCode));
                        if (!isValid) {

                        }

                        return isValid;
                    });
                });


                $(function () {
                    $("#ap").keypress(function (e) {
                        var keyCode = e.keyCode || e.which;


                        var regex = /^[0-9\s\-]$/;


                        var isValid = regex.test(String.fromCharCode(keyCode));
                        if (!isValid) {

                        }

                        return isValid;
                    });
                });


                $(function () {
                    $("#ssn").keypress(function (e) {
                        var keyCode = e.keyCode || e.which;


                        var regex = /^[0-9\s\-]$/;


                        var isValid = regex.test(String.fromCharCode(keyCode));
                        if (!isValid) {

                        }

                        return isValid;
                    });
                });





                $('#ddlpractice').change(function (event) {
                    var practiceid = $("select#ddlpractice").val();

                    if (practiceid !== '0')
                    {
                        $.ajax({
                            url: "getPatientwtPracticeid",
                            type: "get", //send it through get method
                            data: {
                                practiceid1: practiceid
                            },
                            success: function (response) {
                                var select = $('#ddlguarantor');
                                select.find('option').remove();
                                $('<option>').val("0").text("New Guarantor").appendTo(select);
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
                    }

                });

                $.ajax({
                    url: "getstatemaster",
                    type: "get", //send it through get method
                    success: function (response) {
                        var select = $('#state');
                        select.find('option').remove();
                        $('<option>').val("").text("--Select--").appendTo(select);
                        console.log(response);
                        var txt = response;
                        var obj1 = jQuery.parseJSON(txt);
                        console.log(obj1);
                        if (obj1.length > 0)
                        {
                            for (var i = 0; i < obj1.length; i++)
                            {
                                $('<option>').val(obj1[i].code).text(obj1[i].state + ' [' + obj1[i].code + '] ').appendTo(select);
                            }
                        }
                    }
                });

                var guaid = "";
                //alert(rid);
                //EV Response
                $('#ddlpatient').change(function (event) {
                    var patientid = $("select#ddlpatient").val();
                    if (patientid !== '0')
                    {
                        //  alert(patientid);
                        $.get('getPatientDetail', {
                            patientid: patientid
                        }, function (response) {

                            var txt = response;
                            var obj = jQuery.parseJSON(txt);
                            console.log(obj);
                            if (obj.length > 0)
                            {
                                for (var i = 0; i < obj.length; i++)
                                {

                                    $('#ddlpractice').val(obj[i].ddlpracticeid);
                                    $('#ddlpractice').trigger('change');
                                    $('#fname').val(obj[i].fname);
                                    $('#lname').val(obj[i].lname);
                                    $('#mname').val(obj[i].mname);
                                    $('#dob').val(dateFormat(obj[i].dob));
                                    $('#dob').datepicker("setDate", convertYMDtoMDY(obj[i].dob)).mask('99/99/9999');
                                    $('#hdi1').val(obj[i].hdi1);
                                    $('#hdi2').val(obj[i].hdi2);
                                    $('#add1').val(obj[i].add1);
                                    $('#add2').val(obj[i].add2);
                                    $('#city').val(obj[i].city);
                                    $('#zip').val(obj[i].zip);
                                    $('#fax').val(obj[i].fax);
                                    if (obj[i].email === "null" || obj[i].email === "")
                                    {
                                        $('#email').val("");
                                    } else
                                    {
                                        $('#email').val(obj[i].email);
                                    }

                                    $('#cp').val(obj[i].cp);
                                    $('#ap').val(obj[i].ap);

                                    $('#ddlmarital').val(obj[i].maritalstatus);
                                    $('#ddlmarital').trigger('change');
                                    $('#ddlempstatus').val(obj[i].employmentstatus);
                                    $('#ddlempstatus').trigger('change');
                                    $('#pt').val(obj[i].pt);
                                    $('#ddlprelang').val(obj[i].preferredlanguage);
                                    $('#ddlprelang').trigger('change');
                                    $('#ddlreligion').val(obj[i].religion);
                                    $('#ddlreligion').trigger('change');
                                    $('#ddlsexori').val(obj[i].sexualorientation);
                                    $('#ddlsexori').trigger('change');
                                    $('#ddlgender').val(obj[i].ddlgender);
                                    $('#ddlgender').trigger('change');
                                    $('#ddlethinicity').val(obj[i].ethnicity);
                                    $('#ddlethinicity').trigger('change');
                                    $('#ddlrace').val(obj[i].race);
                                    $('#ddlrace').trigger('change');
                                    $('#driverLicense').val(obj[i].driverLicense);
                                    $('#driverLicense').trigger('change');
                                    $('#file').val(obj[i].driverLicenseFileName);
                                    $('#getfile1').val(obj[i].driverLicenseFileName);
                                    $('#file').trigger('change');
                                    $('#file1').val(obj[i].patientInsuranceCardFileName);
                                    $('#file1').trigger('change');
                                    $('#getfile2').val(obj[i].patientInsuranceCardFileName);


                                    $('#mmfn').val(obj[i].mmfn);
                                    $('#mmln').val(obj[i].mmln);
                                    $('#adt').val(obj[i].adt);
                                    $('#adr').val(obj[i].adr);
                                    $('#patientacc').val(obj[i].patientacc);

                                    if (typeof (obj[i].signdate) !== 'undefined'){
                                        $('#signdate').val(dateFormat(obj[i].signdate));
                                        $('#signdate').datepicker("setDate", new Date(dateFormat(obj[i].signdate))).mask('99/99/9999');

                                    }
                                    if ((typeof (obj[i].driverLicenseFileName) !== 'undefined') && (obj[i].driverLicenseFileName !== '')){
                                        $('#driverLicenseFile').html("<a href ='../Upload/Patient/"+obj[i].driverLicenseFileName+"' target='_blank'>"+obj[i].driverLicenseFileName+"</a>");
                                    } else{
                                        $('.driverLicenseFile').hide();
                                    }
                                    if ((typeof (obj[i].patientInsuranceCardFileName) !== 'undefined') && (obj[i].patientInsuranceCardFileName !== '')){
                                        $('#insuranceFile').html("<a href ='../Upload/Patient/"+obj[i].patientInsuranceCardFileName+"' target='_blank'>"+obj[i].patientInsuranceCardFileName+"</a>");
                                    } else{
                                        $('.insuranceFile').hide();
                                    }

                                    $('#ssn').val(obj[i].ssn);

                                    var a1 = obj[i].signonfile;
                                    //var txt = $('input:text[name=sign-file]').val();
                                    if (a1 === "Yes") {
                                        $('#sign1').prop('checked', true);
                                        $("#signonfile").val('Yes');
                                        //$('#yes').prop('checked', true);
                                    } else if (a1 === "No") {
                                        $('#sign1').prop('checked', false);
                                        $("#signonfile").val('No');

                                    } else
                                    {
                                        $('#sign1').prop('checked', true);
                                        $("#signonfile").val('Yes');
                                    }
                                    var parastate = obj[i].state;
                                    var practiceid = obj[i].ddlpracticeid;
                                    guaid = obj[i].ddlguarantor;

                                    $.ajax({
                                        url: "getstatemaster",
                                        type: "get", //send it through get method
                                        success: function (response) {
                                            var select = $('#state');
                                            select.find('option').remove();
                                            $('<option>').val("").text("--Select--").appendTo(select);
                                            console.log(response);
                                            var txt = response;
                                            var obj1 = jQuery.parseJSON(txt);
                                            console.log(obj1);
                                            if (obj1.length > 0)
                                            {
                                                for (var i = 0; i < obj1.length; i++)
                                                {
                                                    $('<option>').val(obj1[i].code).text(obj1[i].state + ' [' + obj1[i].code + '] ').appendTo(select);
                                                }
                                                $('#state').val(parastate);
                                            }
                                        }
                                    });


                                    setTimeout(function () {
                                        // console.log(practiceid);
                                        if (practiceid !== '0')
                                        {

                                            $.ajax({
                                                url: "getPatientwtPracticeid",
                                                type: "get", //send it through get method
                                                data: {
                                                    practiceid1: practiceid
                                                },
                                                success: function (response) {
                                                    var select = $('#ddlguarantor');
                                                    select.find('option').remove();
                                                    $('<option>').val("0").text("New Guarantor").appendTo(select);
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
                                                        $('#ddlguarantor').val(guaid);
                                                    }
                                                }
                                            });
                                        }
                                    }, 2000);

                                }
                            }

                        });
                    } else
                    {
                        console.log("Muthu");
                        $('#ddlpractice').val("");
                        $('#ddlpatient').val("0");
                        $('#fname').val("");
                        $('#lname').val("");
                        $('#mname').val("");
                        $('#dob').val("");

                        $('#hdi1').val("");
                        $('#hdi2').val("");
                        $('#add1').val("");
                        $('#add2').val("");
                        $('#city').val("");
                        $('#state').val("");
                        $('#zip').val("");
                        $('#fax').val("");
                        $('#email').val("");
                        $('#cp').val("");
                        $('#ap').val("");
                        $('#ddlmarital').val("0");

                        $('#ddlempstatus').val("0");
                        $('#pt').val("");
                        $('#ddlprelang').val("0");
                        $('#ddlreligion').val("0");
                        $('#ddlsexori').val("0");
                        $('#ddlgender').val("");
                        $('#ddlethinicity').val("0");
                        $('#ddlrace').val("0");
                        $('#mmfn').val("");
                        $('#mmln').val("");
                        $('#adt').val("");
                        $('#adr').val("");
                        $('#patientacc').val("");
                        $('#ddlguarantor').val("0");
                        $('#ssn').val("");
                        $('#sign1').prop('checked', true);
                        $("#signonfile").val('Yes');


                    }
                });

                $('input[type="checkbox"]').click(function () {
                    if ($(this).is(":checked")) {
                        $("#signonfile").val('Yes');
                    } else if ($(this).is(":not(:checked)")) {
                        $("#signonfile").val('No');
                    }
                });


            });
    </script>
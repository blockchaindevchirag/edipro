<%@page contentType="text/html"  pageEncoding="UTF-8" autoFlush="true"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@taglib prefix="spring"  uri="http://www.springframework.org/tags"  %>
<html lang="en">

    <head>
        <title>Edit Pre-Estimate</title>
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

                                        <div id="new_estimate" class="card">
                                            <div class="card-body">
                                            <form:form  id="design-1-form" class="form-1 needs-validation" name="estimateform"  method="POST" action="update-estimate" modelAttribute="estimate">

                                                <h3 class="wiz-items">
                                                    <span class="num-icon">1</span><span style="color:#000000">
                                                        Visit Information
                                                    </span>
                                                </h3>
                                                <input type="hidden" name="preEstimateId" id="preEstimateId" value="${estimatedetail.preEstimateId}">



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
                                                                <label class="col-sm-3 col-form-label font-style-label" for="ddlpatient">Patient<span class="text-danger">*</span></label>
                                                                <div class="col-sm-9">
                                                                    <select class="form-control js-example-placeholder-multiple col-sm-12" required id="ddlpatient" data-placeholder="Select Patient" tabindex="2"  name="ddlpatient" >
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
                                                                    <input type="text" class="form-control"   name="primaryDeductible" tabindex="12" id="primaryDeductible" value="0" placeholder="Deductible" oninput="this.value = this.value.match(/^\d+\.?\d{0,2}/)" >                                                      
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
                                                                    <input type="number" class="form-control"   name="secondaryCopay" tabindex="16" id="secondaryCopay"  placeholder="Copay" value="0">                                                      

                                                                </div>
                                                            </div>

                                                            <div  class="form-group row">
                                                                <label for="b-t-name" class="col-sm-3 col-form-label font-style-label">CoIns %</label>
                                                                <div class="col-sm-9 input-group" style="background: transparent;">
                                                                    <div class="input-group-prepend" style="background: #edf1f4;">
                                                                        <span class="input-group-text"><i class="fas fa-percent"></i></span>
                                                                    </div>
                                                                    <input type="number" class="form-control"   name="secondaryCoIns" tabindex="17" id="secondaryCoIns"  placeholder="CoIns" value="0" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*?)\..*/g, '$1');" >                                                      

                                                                </div>
                                                            </div>

                                                            <div  class="form-group row">
                                                                <label for="b-t-name" class="col-sm-3 col-form-label font-style-label">Deductible $</label>
                                                                <div class="col-sm-9 input-group" style="background: transparent;">
                                                                    <div class="input-group-prepend" style="background: #edf1f4;">
                                                                        <span class="input-group-text" style="padding:5px 18px;"><i class="fas fa-dollar-sign"></i></span>
                                                                    </div>
                                                                    <input type="number" class="form-control"   name="secondaryDeductible" tabindex="18" id="secondaryDeductible"  placeholder="Deductible" value="0" oninput="this.value = this.value.match(/^\d+\.?\d{0,2}/)">                                                      
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
                                                                            <input type="hidden" name="actionstatus" id="actionstatus" value = "<c:out value="${estimatedetail.status}"/> "  />
                                                                            <canvas id="sign_preestiamte01" height="80" style="width:99%;max-width: 280px;">		 			
                                                                            </canvas>
                                                                            <input type="hidden" name="staffSignature" id="staffSignature">
                                                                        </td>
                                                                        <td>
                                                                            <canvas id="sign_preestiamte02" height="80" style="width:99%;max-width: 280px;">		 			
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
                                                <input type="hidden" name="actionflag" id="actionflag" value = '1'>

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
                                                                        });
                                                                        var sign_preestiamte_clear = function () {
                                                                            window.sign_preestiamte.clear();
                                                                        };
                                                                        var sign_preestiamte1_clear = function () {
                                                                            window.sign_preestiamte1.clear();
                                                                        };

                                                                        $(document).ready(function () {
                                                                            $(".tableFixHead1").removeClass("tablehide");
                                                                            $(".tableFixHead1").addClass("tableshow");
                                                                            function submitestimate() {
                                                                                $('#ddlpractice').removeAttr('disabled');
                                                                                $('#resultcodev').val('');
                                                                                var selected = [];
                                                                                var diaselected = [];
                                                                                $('input[type=checkbox]').each(function () {
                                                                                    if (this.checked) {
                                                                                        try {
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
                                                                            $("#primaryCoIns").on('change', function () {
                                                                                Object.keys(localStorage)
                                                                                        .filter(x =>
                                                                                            x.startsWith('primcov_'))
                                                                                        .forEach(x =>
                                                                                            localStorage.removeItem(x));
                                                                            });
                                                                            $("#secondaryCoIns").on('change', function () {
                                                                                Object.keys(localStorage)
                                                                                        .filter(x =>
                                                                                            x.startsWith('seccov_'))
                                                                                        .forEach(x =>
                                                                                            localStorage.removeItem(x));
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

        <sec:authorize access="hasAnyRole('ROLE_PRACTICE_PROVIDER,ROLE_REFERING_PROVIDER')">
                                                                                        var practiceid = '<%=session.getAttribute("practiceid")%>';
                                                                                        console.log("Practice: " + practiceid);
                                                                                        $('#ddlpractice').val(practiceid);
                                                                                        $('#ddlpractice').attr('disabled', "true");
                                                                                        $("#ddlpractice").trigger("change");
        </sec:authorize>



                                                                                        console.log('${estimatedetail.preEstimateId}');
                                                                                        $('#ddlpractice').val('${estimatedetail.ddlpractice}');
                                                                                        $("#ddlpractice").trigger("change");
                                                                                        $('#primaryInsuranceName').val('${estimatedetail.primaryInsurance}');
                                                                                        $('#primaryFeeEstimate').val('${estimatedetail.primaryFeeEstimate}');
                                                                                        $("#primaryFeeEstimate").trigger("change");
                                                                                        $('#secondaryFeeEstimate').val('${estimatedetail.secondaryFeeEstimate}');
                                                                                        $("#secondaryFeeEstimate").trigger("change");

                                                                                        $('#primaryCopay').val('${estimatedetail.primaryCopay}');
                                                                                        $('#primaryCoIns').val('${estimatedetail.primaryCoIns}');
                                                                                        $('#primaryDeductible').val('${estimatedetail.primaryDeductible}');
                                                                                        $('#secondaryInsurance').val('${estimatedetail.secondaryInsurance}');
//                                                                                            $('#secondaryFeeEstimate').val('${estimatedetail.secondaryFeeEstimate}');
                                                                                        $('#secondaryCopay').val('${estimatedetail.secondaryCopay}');
                                                                                        $('#secondaryCoIns').val('${estimatedetail.secondaryCoIns}');
                                                                                        $('#secondaryDeductible').val('${estimatedetail.secondaryDeductible}');
                                                                                        $('#notes').val('${estimatedetail.notes}');
                                                                                        $('#parentName').val('${estimatedetail.parentName}');

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


                                                                                                $('#ddlpatient').val(${estimatedetail.ddlpatient});

                                                                                                $("#ddlpatient").trigger("change");
        <c:forEach var="procedureObj" items="${estimatedetail.preEstimateList}">

                                                                                                var chk_id = "${procedureObj.procedureCheckboxId}";
                                                                                                var edit_visit_no = "${procedureObj.visitNo}";
                                                                                                var edit_primcov = "${procedureObj.primaryCoverage}";
                                                                                                var edit_seccov = "${procedureObj.secondaryCoverage}";
                                                                                                if (chk_id.length > 0) {
                                                                                                    $("#" + chk_id).prop("checked", true);
                                                                                                    console.log(chk_id + ":" + edit_visit_no);
                                                                                                    window.localStorage.setItem("visit_" + chk_id, edit_visit_no);
                                                                                                    window.localStorage.setItem("primcov_" + chk_id, edit_primcov);
                                                                                                    window.localStorage.setItem("seccov_" + chk_id, edit_seccov);


                                                                                                }

                                                                                                //alert(chk_id.length);
                                                                                                //console.log("len");
                                                                                                var chk_arr = chk_id.split(',');
                                                                                                for (var i = 0; i < chk_arr.length; i++) {
                                                                                                    console.log(chk_arr[i]);
                                                                                                    //  $("#" + chk_arr[i]).prop("checked", true);
                                                                                                    callProcedureHeader(chk_arr[i], i);
                                                                                                }
                                                                                                //    edit_visit_no
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

                                                                                                $('#ddlprovider').val(${estimatedetail.ddlprovider});

                                                                                                $("#ddlprovider").trigger("change");


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
                                                                                    $('#primaryMemberId').val(primaryInsurance[1]);
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
                                                                                    $('.input-group-text').addClass('disabled');
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
                                                                                    if (secondaryInsurance.length > 1 && secondaryInsurance[1] !== '0' && secondaryInsurance[1] !== '')
                                                                                    {
                                                                                        $('#secondaryMemberId').val(secondaryInsurance[1]);
                                                                                    } else {
                                                                                        $('#secondaryMemberId').val('${estimatedetail.secondaryMemberId}');
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
                                                                                $('#flading').show();
                                                                                if (patientid !== '0')
                                                                                {
                                                                                    $('#primaryMemberId').val("");
                                                                                    $('#secondaryMemberId').val("");
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
                                                                                                    $('<option>').val(obj[i].payor_id).text(obj[i].name).attr('id', obj[i].payor_id + '~' + obj[i].ins_no).appendTo(select);
                                                                                                    $('<option>').val(obj[i].sec_payor_id).text(obj[i].sec_name).attr('id', obj[i].sec_payor_id + '~' + obj[i].sec_ins_no).appendTo(select);
                                                                                                    $('<option>').val(obj[i].payor_id).text(obj[i].name).attr('id', obj[i].payor_id + '~' + obj[i].ins_no).appendTo(select1);
                                                                                                    $('<option>').val(obj[i].sec_payor_id).text(obj[i].sec_name).attr('id', obj[i].sec_payor_id + '~' + obj[i].sec_ins_no).appendTo(select1);
                                                                                                }

                                                                                                if ($('#primaryInsurance').has('option').length > 0) {
                                                                                                    $('#primaryInsurance').val(${estimatedetail.primaryInsurance});

                                                                                                    $("#primaryInsurance").trigger("change");
                                                                                                }
                                                                                                if ($('#secondaryInsurance').has('option').length > 0) {
                                                                                                    $('#secondaryInsurance').val(${estimatedetail.secondaryInsurance});

                                                                                                    $("#secondaryInsurance").trigger("change");

                                                                                                }
                                                                                                $('#primaryFeeEstimate').val('${estimatedetail.primaryFeeEstimate}');
                                                                                                $("#primaryFeeEstimate").trigger("change");

                                                                                                $('#secondaryFeeEstimate').val('${estimatedetail.secondaryFeeEstimate}');
                                                                                                $("#secondaryFeeEstimate").trigger("change");
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
                                                                                            var minor = 18;
                                                                                            if (age > minor) {
                                                                                                $('.parentName').hide();
                                                                                            } else {
                                                                                                $('.parentName').show();
                                                                                            }

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
                                                                                    if ($('#primaryInsurance').has('option').length > 0) {
                                                                                        $('#primaryInsurance').val(${estimatedetail.primaryInsurance});

                                                                                        $("#primaryInsurance").trigger("change");
                                                                                    }
                                                                                    if ($('#secondaryInsurance').has('option').length > 0) {
                                                                                        $('#secondaryInsurance').val(${estimatedetail.secondaryInsurance});

                                                                                        $("#secondaryInsurance").trigger("change");

                                                                                    }
                                                                                    $('#flading').hide();
                                                                                    $('.form-1').addClass('was-validated');
                                                                                    $('#design-1-form-t-1').attr('disabled', "true");
                                                                                    return false;
                                                                                }
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
                                                                                } else if (procedurecode === "t1proc02sub21") {
                                                                                    headTag = "proheadingOne";
                                                                                } else if (procedurecode === "t1proc02sub22") {
                                                                                    headTag = "proheadingOne";
                                                                                } else if (procedurecode === "t1proc02sub23") {
                                                                                    headTag = "proheadingOne";
                                                                                } else if (procedurecode === "t1proc02sub24") {
                                                                                    headTag = "proheadingOne";
                                                                                }
                                                                                //=======Patient Consultation/ Evaluation=====================
                                                                                else if (procedurecode === "t1proc03sub11") {
                                                                                    headTag = "proheading2";
                                                                                } else if (procedurecode === "t1proc03sub12") {
                                                                                    headTag = "proheading2";
                                                                                } else if (procedurecode === "t1proc03sub13") {
                                                                                    headTag = "proheading2";
                                                                                } else if (procedurecode === "t1proc03sub14") {
                                                                                    headTag = "proheading2";
                                                                                } else if (procedurecode === "t1proc03sub21") {
                                                                                    headTag = "proheading2";
                                                                                } else if (procedurecode === "t1proc03sub22") {
                                                                                    headTag = "proheading2";
                                                                                } else if (procedurecode === "t1proc03sub23") {
                                                                                    headTag = "proheading2";
                                                                                } else if (procedurecode === "t1proc03sub31") {
                                                                                    headTag = "proheading2";
                                                                                } else if (procedurecode === "t1proc03sub32") {
                                                                                    headTag = "proheading2";
                                                                                } else if (procedurecode === "t1proc03sub33") {
                                                                                    headTag = "proheading2";
                                                                                } else if (procedurecode === "t1proc03sub34") {
                                                                                    headTag = "proheading2";
                                                                                } else if (procedurecode === "t1proc03sub41") {
                                                                                    headTag = "proheading2";
                                                                                } else if (procedurecode === "t1proc03sub42") {
                                                                                    headTag = "proheading2";
                                                                                }
                                                                                //==============Appliance=============
                                                                                else if (procedurecode === "t1proc05sub11") {
                                                                                    headTag = "proheading5";
                                                                                } else if (procedurecode === "t1proc05sub12") {
                                                                                    headTag = "proheading5";
                                                                                } else if (procedurecode === "t1proc05sub21") {
                                                                                    headTag = "proheading5";
                                                                                } else if (procedurecode === "t1proc05sub22") {
                                                                                    headTag = "proheading5";
                                                                                } else if (procedurecode === "t1proc05sub23") {
                                                                                    headTag = "proheading5";
                                                                                } else if (procedurecode === "t1proc05sub24") {
                                                                                    headTag = "proheading5";
                                                                                } else if (procedurecode === "t1proc05sub25") {
                                                                                    headTag = "proheading5";
                                                                                } else if (procedurecode === "t1proc05sub26") {
                                                                                    headTag = "proheading5";
                                                                                } else if (procedurecode === "t1proc05sub27") {
                                                                                    headTag = "proheading5";
                                                                                } else if (procedurecode === "t1proc05sub28") {
                                                                                    headTag = "proheading5";
                                                                                }

                                                                                //===================Biopsy=============
                                                                                else if (procedurecode === "t1proc06sub11") {
                                                                                    headTag = "proheading6";
                                                                                } else if (procedurecode === "t1proc06sub12") {
                                                                                    headTag = "proheading6";
                                                                                } else if (procedurecode === "t1proc06sub13") {
                                                                                    headTag = "proheading6";
                                                                                } else if (procedurecode === "t1proc06sub14") {
                                                                                    headTag = "proheading6";
                                                                                } else if (procedurecode === "t1proc06sub15") {
                                                                                    headTag = "proheading6";
                                                                                } else if (procedurecode === "t1proc06sub16") {
                                                                                    headTag = "proheading6";
                                                                                } else if (procedurecode === "t1proc06sub17") {
                                                                                    headTag = "proheading6";
                                                                                } else if (procedurecode === "t1proc06sub18") {
                                                                                    headTag = "proheading6";
                                                                                } else if (procedurecode === "t1proc06sub19") {
                                                                                    headTag = "proheading6";
                                                                                } else if (procedurecode === "t1proc06sub110") {
                                                                                    headTag = "proheading6";
                                                                                } else if (procedurecode === "t1proc06sub111") {
                                                                                    headTag = "proheading6";
                                                                                } else if (procedurecode === "t1proc06sub112") {
                                                                                    headTag = "proheading6";
                                                                                }
                                                                                //===========Drainage Abscess===========

                                                                                else if (procedurecode === "t1proc20sub11") {
                                                                                    headTag = "proheading20";
                                                                                } else if (procedurecode === "t1proc20sub12") {
                                                                                    headTag = "proheading20";
                                                                                } else if (procedurecode === "t1proc20sub13") {
                                                                                    headTag = "proheading20";
                                                                                } else if (procedurecode === "t1proc20sub14") {
                                                                                    headTag = "proheading20";
                                                                                } else if (procedurecode === "t1proc20sub15") {
                                                                                    headTag = "proheading20";
                                                                                } else if (procedurecode === "t1proc20sub16") {
                                                                                    headTag = "proheading20";
                                                                                } else if (procedurecode === "t1proc20sub17") {
                                                                                    headTag = "proheading20";
                                                                                } else if (procedurecode === "t1proc20sub18") {
                                                                                    headTag = "proheading20";
                                                                                } else if (procedurecode === "t1proc20sub19") {
                                                                                    headTag = "proheading20";
                                                                                } else if (procedurecode === "t1proc20sub110") {
                                                                                    headTag = "proheading20";
                                                                                } else if (procedurecode === "t1proc20sub111") {
                                                                                    headTag = "proheading20";
                                                                                } else if (procedurecode === "t1proc20sub112") {
                                                                                    headTag = "proheading20";
                                                                                } else if (procedurecode === "t1proc20sub113") {
                                                                                    headTag = "proheading20";
                                                                                } else if (procedurecode === "t1proc20sub114") {
                                                                                    headTag = "proheading20";
                                                                                } else if (procedurecode === "t1proc20sub115") {
                                                                                    headTag = "proheading20";
                                                                                } else if (procedurecode === "t1proc20sub116") {
                                                                                    headTag = "proheading20";
                                                                                } else if (procedurecode === "t1proc20sub117") {
                                                                                    headTag = "proheading20";
                                                                                } else if (procedurecode === "t1proc20sub118") {
                                                                                    headTag = "proheading20";
                                                                                } else if (procedurecode === "t1proc20sub119") {
                                                                                    headTag = "proheading20";
                                                                                } else if (procedurecode === "t1proc20sub120") {
                                                                                    headTag = "proheading20";
                                                                                } else if (procedurecode === "t1proc20sub121") {
                                                                                    headTag = "proheading20";
                                                                                } else if (procedurecode === "t1proc20sub122") {
                                                                                    headTag = "proheading20";
                                                                                } else if (procedurecode === "t1proc20sub123") {
                                                                                    headTag = "proheading20";
                                                                                } else if (procedurecode === "t1proc20sub124") {
                                                                                    headTag = "proheading20";
                                                                                } else if (procedurecode === "t1proc20sub125") {
                                                                                    headTag = "proheading20";
                                                                                } else if (procedurecode === "t1proc20sub125") {
                                                                                    headTag = "proheading20";
                                                                                } else if (procedurecode === "t1proc20sub126") {
                                                                                    headTag = "proheading20";
                                                                                } else if (procedurecode === "t1proc20sub127") {
                                                                                    headTag = "proheading20";
                                                                                } else if (procedurecode === "t1proc20sub128") {
                                                                                    headTag = "proheading20";
                                                                                }
                                                                                //============== Fixation Fail Removal / Bone Graft Fail Excision ================
                                                                                else if (procedurecode === "t1proc07sub11") {
                                                                                    headTag = "proheading7";
                                                                                } else if (procedurecode === "t1proc07sub12") {
                                                                                    headTag = "proheading7";
                                                                                } else if (procedurecode === "t1proc07sub13") {
                                                                                    headTag = "proheading7";
                                                                                } else if (procedurecode === "t1proc07sub14") {
                                                                                    headTag = "proheading7";
                                                                                } else if (procedurecode === "t1proc07sub15") {
                                                                                    headTag = "proheading7";
                                                                                } else if (procedurecode === "t1proc07sub16") {
                                                                                    headTag = "proheading7";
                                                                                } else if (procedurecode === "t1proc07sub17") {
                                                                                    headTag = "proheading7";
                                                                                } else if (procedurecode === "t1proc07sub18") {
                                                                                    headTag = "proheading7";
                                                                                } else if (procedurecode === "t1proc07sub19") {
                                                                                    headTag = "proheading7";
                                                                                } else if (procedurecode === "t1proc07sub110") {
                                                                                    headTag = "proheading7";
                                                                                } else if (procedurecode === "t1proc07sub111") {
                                                                                    headTag = "proheading7";
                                                                                } else if (procedurecode === "t1proc07sub112") {
                                                                                    headTag = "proheading7";
                                                                                } else if (procedurecode === "t1proc07sub21") {
                                                                                    headTag = "proheading7";
                                                                                } else if (procedurecode === "t1proc07sub22") {
                                                                                    headTag = "proheading7";
                                                                                } else if (procedurecode === "t1proc07sub23") {
                                                                                    headTag = "proheading7";
                                                                                } else if (procedurecode === "t1proc07sub24") {
                                                                                    headTag = "proheading7";
                                                                                } else if (procedurecode === "t1proc07sub25") {
                                                                                    headTag = "proheading7";
                                                                                } else if (procedurecode === "t1proc07sub26") {
                                                                                    headTag = "proheading7";
                                                                                } else if (procedurecode === "t1proc07sub27") {
                                                                                    headTag = "proheading7";
                                                                                } else if (procedurecode === "t1proc07sub28") {
                                                                                    headTag = "proheading7";
                                                                                }
                                                                                //===============Bone Lesion / Bony Cyst Excision===========================

                                                                                else if (procedurecode === "t1proc08sub11") {
                                                                                    headTag = "proheading8";
                                                                                } else if (procedurecode === "t1proc08sub12") {
                                                                                    headTag = "proheading8";
                                                                                } else if (procedurecode === "t1proc08sub13") {
                                                                                    headTag = "proheading8";
                                                                                } else if (procedurecode === "t1proc08sub14") {
                                                                                    headTag = "proheading8";
                                                                                } else if (procedurecode === "t1proc08sub21") {
                                                                                    headTag = "proheading8";
                                                                                } else if (procedurecode === "t1proc08sub22") {
                                                                                    headTag = "proheading8";
                                                                                } else if (procedurecode === "t1proc08sub23") {
                                                                                    headTag = "proheading8";
                                                                                } else if (procedurecode === "t1proc08sub24") {
                                                                                    headTag = "proheading8";
                                                                                } else if (procedurecode === "t1proc08sub25") {
                                                                                    headTag = "proheading8";
                                                                                } else if (procedurecode === "t1proc08sub26") {
                                                                                    headTag = "proheading8";
                                                                                } else if (procedurecode === "t1proc08sub27") {
                                                                                    headTag = "proheading8";
                                                                                } else if (procedurecode === "t1proc08sub28") {
                                                                                    headTag = "proheading8";
                                                                                } else if (procedurecode === "t1proc08sub29") {
                                                                                    headTag = "proheading8";
                                                                                } else if (procedurecode === "t1proc08sub210") {
                                                                                    headTag = "proheading8";
                                                                                } else if (procedurecode === "t1proc08sub211") {
                                                                                    headTag = "proheading8";
                                                                                } else if (procedurecode === "t1proc08sub212") {
                                                                                    headTag = "proheading8";
                                                                                }
                                                                                //================Debridement==========================


                                                                                else if (procedurecode === "t1proc21sub11") {
                                                                                    headTag = "proheading21";
                                                                                } else if (procedurecode === "t1proc21sub12") {
                                                                                    headTag = "proheading21";
                                                                                } else if (procedurecode === "t1proc21sub13") {
                                                                                    headTag = "proheading21";
                                                                                } else if (procedurecode === "t1proc21sub14") {
                                                                                    headTag = "proheading21";
                                                                                } else if (procedurecode === "t1proc21sub15") {
                                                                                    headTag = "proheading21";
                                                                                } else if (procedurecode === "t1proc21sub16") {
                                                                                    headTag = "proheading21";
                                                                                } else if (procedurecode === "t1proc21sub17") {
                                                                                    headTag = "proheading21";
                                                                                } else if (procedurecode === "t1proc21sub18") {
                                                                                    headTag = "proheading21";
                                                                                } else if (procedurecode === "t1proc21sub19") {
                                                                                    headTag = "proheading21";
                                                                                } else if (procedurecode === "t1proc21sub110") {
                                                                                    headTag = "proheading21";
                                                                                } else if (procedurecode === "t1proc21sub111") {
                                                                                    headTag = "proheading21";
                                                                                } else if (procedurecode === "t1proc21sub112") {
                                                                                    headTag = "proheading21";
                                                                                } else if (procedurecode === "t1proc21sub113") {
                                                                                    headTag = "proheading21";
                                                                                } else if (procedurecode === "t1proc21sub114") {
                                                                                    headTag = "proheading21";
                                                                                } else if (procedurecode === "t1proc21sub115") {
                                                                                    headTag = "proheading21";
                                                                                } else if (procedurecode === "t1proc21sub116") {
                                                                                    headTag = "proheading21";
                                                                                }
                                                                                //========= Osseous Surgery ========

                                                                                else if (procedurecode === "t1proc09sub11") {
                                                                                    headTag = "proheading89";
                                                                                } else if (procedurecode === "t1proc09sub12") {
                                                                                    headTag = "proheading89";
                                                                                } else if (procedurecode === "t1proc09sub13") {
                                                                                    headTag = "proheading89";
                                                                                } else if (procedurecode === "t1proc09sub14") {
                                                                                    headTag = "proheading89";
                                                                                } else if (procedurecode === "t1proc09sub15") {
                                                                                    headTag = "proheading89";
                                                                                } else if (procedurecode === "t1proc09sub16") {
                                                                                    headTag = "proheading89";
                                                                                } else if (procedurecode === "t1proc09sub17") {
                                                                                    headTag = "proheading89";
                                                                                } else if (procedurecode === "t1proc09sub18") {
                                                                                    headTag = "proheading89";
                                                                                }
                                                                                //===== Bone Graft / Sinus Surgery =================


                                                                                else if (procedurecode === "t1proc10sub11") {
                                                                                    headTag = "proheading10";
                                                                                } else if (procedurecode === "t1proc10sub12") {
                                                                                    headTag = "proheading10";
                                                                                } else if (procedurecode === "t1proc10sub13") {
                                                                                    headTag = "proheading10";
                                                                                } else if (procedurecode === "t1proc10sub14") {
                                                                                    headTag = "proheading10";
                                                                                } else if (procedurecode === "t1proc10sub21") {
                                                                                    headTag = "proheading10";
                                                                                } else if (procedurecode === "t1proc10sub22") {
                                                                                    headTag = "proheading10";
                                                                                } else if (procedurecode === "t1proc10sub23") {
                                                                                    headTag = "proheading10";
                                                                                } else if (procedurecode === "t1proc10sub24") {
                                                                                    headTag = "proheading10";
                                                                                } else if (procedurecode === "t1proc10sub31") {
                                                                                    headTag = "proheading10";
                                                                                } else if (procedurecode === "t1proc10sub32") {
                                                                                    headTag = "proheading10";
                                                                                } else if (procedurecode === "t1proc10sub33") {
                                                                                    headTag = "proheading10";
                                                                                } else if (procedurecode === "t1proc10sub34") {
                                                                                    headTag = "proheading10";
                                                                                } else if (procedurecode === "t1proc10sub35") {
                                                                                    headTag = "proheading10";
                                                                                } else if (procedurecode === "t1proc10sub36") {
                                                                                    headTag = "proheading10";
                                                                                }
                                                                                //====================== Surgical Reconstruction of fixation ========


                                                                                else if (procedurecode === "t1proc11sub11") {
                                                                                    headTag = "proheading11";
                                                                                } else if (procedurecode === "t1proc11sub12") {
                                                                                    headTag = "proheading11";
                                                                                } else if (procedurecode === "t1proc11sub13") {
                                                                                    headTag = "proheading11";
                                                                                } else if (procedurecode === "t1proc11sub14") {
                                                                                    headTag = "proheading11";
                                                                                } else if (procedurecode === "t1proc11sub15") {
                                                                                    headTag = "proheading11";
                                                                                } else if (procedurecode === "t1proc11sub16") {
                                                                                    headTag = "proheading11";
                                                                                } else if (procedurecode === "t1proc11sub17") {
                                                                                    headTag = "proheading11";
                                                                                } else if (procedurecode === "t1proc11sub18") {
                                                                                    headTag = "proheading11";
                                                                                } else if (procedurecode === "t1proc11sub21") {
                                                                                    headTag = "proheading11";
                                                                                } else if (procedurecode === "t1proc11sub22") {
                                                                                    headTag = "proheading11";
                                                                                } else if (procedurecode === "t1proc11sub23") {
                                                                                    headTag = "proheading11";
                                                                                } else if (procedurecode === "t1proc11sub24") {
                                                                                    headTag = "proheading11";
                                                                                } else if (procedurecode === "t1proc11sub25") {
                                                                                    headTag = "proheading11";
                                                                                } else if (procedurecode === "t1proc11sub26") {
                                                                                    headTag = "proheading11";
                                                                                } else if (procedurecode === "t1proc11sub27") {
                                                                                    headTag = "proheading11";
                                                                                } else if (procedurecode === "t1proc11sub28") {
                                                                                    headTag = "proheading11";
                                                                                }
                                                                                //======= Reconstruction of Bone Fracture =======


                                                                                else if (procedurecode === "t1proc22sub11") {
                                                                                    headTag = "proheading22";
                                                                                } else if (procedurecode === "t1proc22sub12") {
                                                                                    headTag = "proheading22";
                                                                                } else if (procedurecode === "t1proc22sub13") {
                                                                                    headTag = "proheading22";
                                                                                } else if (procedurecode === "t1proc22sub14") {
                                                                                    headTag = "proheading22";
                                                                                } else if (procedurecode === "t1proc22sub15") {
                                                                                    headTag = "proheading22";
                                                                                } else if (procedurecode === "t1proc22sub16") {
                                                                                    headTag = "proheading22";
                                                                                } else if (procedurecode === "t1proc22sub17") {
                                                                                    headTag = "proheading22";
                                                                                } else if (procedurecode === "t1proc22sub18") {
                                                                                    headTag = "proheading22";
                                                                                } else if (procedurecode === "t1proc22sub19") {
                                                                                    headTag = "proheading22";
                                                                                } else if (procedurecode === "t1proc22sub110") {
                                                                                    headTag = "proheading22";
                                                                                } else if (procedurecode === "t1proc22sub111") {
                                                                                    headTag = "proheading22";
                                                                                } else if (procedurecode === "t1proc22sub112") {
                                                                                    headTag = "proheading22";
                                                                                } else if (procedurecode === "t1proc22sub113") {
                                                                                    headTag = "proheading22";
                                                                                } else if (procedurecode === "t1proc22sub114") {
                                                                                    headTag = "proheading22";
                                                                                } else if (procedurecode === "t1proc22sub115") {
                                                                                    headTag = "proheading22";
                                                                                } else if (procedurecode === "t1proc22sub116") {
                                                                                    headTag = "proheading22";
                                                                                } else if (procedurecode === "t1proc22sub21") {
                                                                                    headTag = "proheading22";
                                                                                } else if (procedurecode === "t1proc22sub22") {
                                                                                    headTag = "proheading22";
                                                                                } else if (procedurecode === "t1proc22sub23") {
                                                                                    headTag = "proheading22";
                                                                                } else if (procedurecode === "t1proc22sub24") {
                                                                                    headTag = "proheading22";
                                                                                } else if (procedurecode === "t1proc22sub25") {
                                                                                    headTag = "proheading22";
                                                                                } else if (procedurecode === "t1proc22sub26") {
                                                                                    headTag = "proheading22";
                                                                                } else if (procedurecode === "t1proc22sub27") {
                                                                                    headTag = "proheading22";
                                                                                } else if (procedurecode === "t1proc22sub28") {
                                                                                    headTag = "proheading22";
                                                                                } else if (procedurecode === "t1proc22sub29") {
                                                                                    headTag = "proheading22";
                                                                                } else if (procedurecode === "t1proc22sub210") {
                                                                                    headTag = "proheading22";
                                                                                } else if (procedurecode === "t1proc22sub211") {
                                                                                    headTag = "proheading22";
                                                                                } else if (procedurecode === "t1proc22sub212") {
                                                                                    headTag = "proheading22";
                                                                                } else if (procedurecode === "t1proc22sub213") {
                                                                                    headTag = "proheading22";
                                                                                } else if (procedurecode === "t1proc22sub214") {
                                                                                    headTag = "proheading22";
                                                                                } else if (procedurecode === "t1proc22sub215") {
                                                                                    headTag = "proheading22";
                                                                                } else if (procedurecode === "t1proc22sub216") {
                                                                                    headTag = "proheading22";
                                                                                } else if (procedurecode === "t1proc22sub31") {
                                                                                    headTag = "proheading22";
                                                                                } else if (procedurecode === "t1proc22sub32") {
                                                                                    headTag = "proheading22";
                                                                                } else if (procedurecode === "t1proc22sub33") {
                                                                                    headTag = "proheading22";
                                                                                } else if (procedurecode === "t1proc22sub34") {
                                                                                    headTag = "proheading22";
                                                                                } else if (procedurecode === "t1proc22sub35") {
                                                                                    headTag = "proheading22";
                                                                                } else if (procedurecode === "t1proc22sub36") {
                                                                                    headTag = "proheading22";
                                                                                } else if (procedurecode === "t1proc22sub37") {
                                                                                    headTag = "proheading22";
                                                                                } else if (procedurecode === "t1proc22sub38") {
                                                                                    headTag = "proheading22";
                                                                                } else if (procedurecode === "t1proc22sub39") {
                                                                                    headTag = "proheading22";
                                                                                } else if (procedurecode === "t1proc22sub310") {
                                                                                    headTag = "proheading22";
                                                                                } else if (procedurecode === "t1proc22sub311") {
                                                                                    headTag = "proheading22";
                                                                                } else if (procedurecode === "t1proc22sub312") {
                                                                                    headTag = "proheading22";
                                                                                }
                                                                                //======== Tissue Lesion / Tissue Cyst Excision ========



                                                                                else if (procedurecode === "t1proc12sub11") {
                                                                                    headTag = "proheading12";
                                                                                } else if (procedurecode === "t1proc12sub12") {
                                                                                    headTag = "proheading12";
                                                                                } else if (procedurecode === "t1proc12sub13") {
                                                                                    headTag = "proheading12";
                                                                                } else if (procedurecode === "t1proc12sub14") {
                                                                                    headTag = "proheading12";
                                                                                } else if (procedurecode === "t1proc12sub15") {
                                                                                    headTag = "proheading12";
                                                                                } else if (procedurecode === "t1proc12sub16") {
                                                                                    headTag = "proheading12";
                                                                                } else if (procedurecode === "t1proc12sub17") {
                                                                                    headTag = "proheading12";
                                                                                } else if (procedurecode === "t1proc12sub18") {
                                                                                    headTag = "proheading12";
                                                                                } else if (procedurecode === "t1proc12sub19") {
                                                                                    headTag = "proheading12";
                                                                                } else if (procedurecode === "t1proc12sub110") {
                                                                                    headTag = "proheading12";
                                                                                } else if (procedurecode === "t1proc12sub111") {
                                                                                    headTag = "proheading12";
                                                                                } else if (procedurecode === "t1proc12sub112") {
                                                                                    headTag = "proheading12";
                                                                                } else if (procedurecode === "t1proc12sub113") {
                                                                                    headTag = "proheading12";
                                                                                } else if (procedurecode === "t1proc12sub114") {
                                                                                    headTag = "proheading12";
                                                                                } else if (procedurecode === "t1proc12sub115") {
                                                                                    headTag = "proheading12";
                                                                                } else if (procedurecode === "t1proc12sub116") {
                                                                                    headTag = "proheading12";
                                                                                } else if (procedurecode === "t1proc12sub117") {
                                                                                    headTag = "proheading12";
                                                                                } else if (procedurecode === "t1proc12sub118") {
                                                                                    headTag = "proheading12";
                                                                                } else if (procedurecode === "t1proc12sub123") {
                                                                                    headTag = "proheading12";
                                                                                } else if (procedurecode === "t1proc12sub124") {
                                                                                    headTag = "proheading12";
                                                                                } else if (procedurecode === "t1proc12sub125") {
                                                                                    headTag = "proheading12";
                                                                                } else if (procedurecode === "t1proc12sub126") {
                                                                                    headTag = "proheading12";
                                                                                } else if (procedurecode === "t1proc12sub127") {
                                                                                    headTag = "proheading12";
                                                                                } else if (procedurecode === "t1proc12sub128") {
                                                                                    headTag = "proheading12";
                                                                                } else if (procedurecode === "t1proc12sub129") {
                                                                                    headTag = "proheading12";
                                                                                } else if (procedurecode === "t1proc12sub130") {
                                                                                    headTag = "proheading12";
                                                                                } else if (procedurecode === "t1proc12sub131") {
                                                                                    headTag = "proheading12";
                                                                                } else if (procedurecode === "t1proc12sub132") {
                                                                                    headTag = "proheading12";
                                                                                } else if (procedurecode === "t1proc12sub133") {
                                                                                    headTag = "proheading12";
                                                                                } else if (procedurecode === "t1proc12sub134") {
                                                                                    headTag = "proheading12";
                                                                                } else if (procedurecode === "t1proc12sub135") {
                                                                                    headTag = "proheading12";
                                                                                } else if (procedurecode === "t1proc12sub136") {
                                                                                    headTag = "proheading12";
                                                                                } else if (procedurecode === "t1proc12sub137") {
                                                                                    headTag = "proheading12";
                                                                                } else if (procedurecode === "t1proc12sub138") {
                                                                                    headTag = "proheading12";
                                                                                } else if (procedurecode === "t1proc12sub139") {
                                                                                    headTag = "proheading12";
                                                                                } else if (procedurecode === "t1proc12sub140") {
                                                                                    headTag = "proheading12";
                                                                                } else if (procedurecode === "t1proc12sub21") {
                                                                                    headTag = "proheading12";
                                                                                } else if (procedurecode === "t1proc12sub22") {
                                                                                    headTag = "proheading12";
                                                                                } else if (procedurecode === "t1proc12sub23") {
                                                                                    headTag = "proheading12";
                                                                                } else if (procedurecode === "t1proc12sub24") {
                                                                                    headTag = "proheading12";
                                                                                } else if (procedurecode === "t1proc12sub31") {
                                                                                    headTag = "proheading12";
                                                                                } else if (procedurecode === "t1proc12sub32") {
                                                                                    headTag = "proheading12";
                                                                                } else if (procedurecode === "t1proc12sub35") {
                                                                                    headTag = "proheading12";
                                                                                } else if (procedurecode === "t1proc12sub36") {
                                                                                    headTag = "proheading12";
                                                                                } else if (procedurecode === "t1proc12sub39") {
                                                                                    headTag = "proheading12";
                                                                                } else if (procedurecode === "t1proc12sub310") {
                                                                                    headTag = "proheading12";
                                                                                }
                                                                                //======= Foreign Body / Others Removal ======


                                                                                else if (procedurecode === "t1proc13sub11") {
                                                                                    headTag = "proheading13";
                                                                                } else if (procedurecode === "t1proc13sub12") {
                                                                                    headTag = "proheading13";
                                                                                } else if (procedurecode === "t1proc13sub13") {
                                                                                    headTag = "proheading13";
                                                                                } else if (procedurecode === "t1proc13sub14") {
                                                                                    headTag = "proheading13";
                                                                                } else if (procedurecode === "t1proc13sub15") {
                                                                                    headTag = "proheading13";
                                                                                } else if (procedurecode === "t1proc13sub16") {
                                                                                    headTag = "proheading13";
                                                                                } else if (procedurecode === "t1proc13sub17") {
                                                                                    headTag = "proheading13";
                                                                                } else if (procedurecode === "t1proc13sub18") {
                                                                                    headTag = "proheading13";
                                                                                } else if (procedurecode === "t1proc13sub19") {
                                                                                    headTag = "proheading13";
                                                                                } else if (procedurecode === "t1proc13sub110") {
                                                                                    headTag = "proheading13";
                                                                                } else if (procedurecode === "t1proc13sub111") {
                                                                                    headTag = "proheading13";
                                                                                } else if (procedurecode === "t1proc13sub112") {
                                                                                    headTag = "proheading13";
                                                                                } else if (procedurecode === "t1proc13sub21") {
                                                                                    headTag = "proheading13";
                                                                                } else if (procedurecode === "t1proc13sub22") {
                                                                                    headTag = "proheading13";
                                                                                } else if (procedurecode === "t1proc13sub23") {
                                                                                    headTag = "proheading13";
                                                                                } else if (procedurecode === "t1proc13sub24") {
                                                                                    headTag = "proheading13";
                                                                                } else if (procedurecode === "t1proc13sub25") {
                                                                                    headTag = "proheading13";
                                                                                } else if (procedurecode === "t1proc13sub26") {
                                                                                    headTag = "proheading13";
                                                                                } else if (procedurecode === "t1proc13sub27") {
                                                                                    headTag = "proheading13";
                                                                                } else if (procedurecode === "t1proc13sub28") {
                                                                                    headTag = "proheading13";
                                                                                } else if (procedurecode === "t1proc13sub31") {
                                                                                    headTag = "proheading13";
                                                                                } else if (procedurecode === "t1proc13sub32") {
                                                                                    headTag = "proheading13";
                                                                                } else if (procedurecode === "t1proc13sub33") {
                                                                                    headTag = "proheading13";
                                                                                } else if (procedurecode === "t1proc13sub34") {
                                                                                    headTag = "proheading13";
                                                                                }
                                                                                //======================= Tissue Graft ===============================


                                                                                else if (procedurecode === "t1proc14sub11") {
                                                                                    headTag = "proheading14";
                                                                                } else if (procedurecode === "t1proc14sub12") {
                                                                                    headTag = "proheading14";
                                                                                } else if (procedurecode === "t1proc14sub13") {
                                                                                    headTag = "proheading14";
                                                                                } else if (procedurecode === "t1proc14sub14") {
                                                                                    headTag = "proheading14";
                                                                                } else if (procedurecode === "t1proc14sub15") {
                                                                                    headTag = "proheading14";
                                                                                } else if (procedurecode === "t1proc14sub16") {
                                                                                    headTag = "proheading14";
                                                                                } else if (procedurecode === "t1proc14sub17") {
                                                                                    headTag = "proheading14";
                                                                                } else if (procedurecode === "t1proc14sub18") {
                                                                                    headTag = "proheading14";
                                                                                } else if (procedurecode === "t1proc14sub19") {
                                                                                    headTag = "proheading14";
                                                                                } else if (procedurecode === "t1proc14sub110") {
                                                                                    headTag = "proheading14";
                                                                                } else if (procedurecode === "t1proc14sub111") {
                                                                                    headTag = "proheading14";
                                                                                } else if (procedurecode === "t1proc14sub112") {
                                                                                    headTag = "proheading14";
                                                                                } else if (procedurecode === "t1proc14sub113") {
                                                                                    headTag = "proheading14";
                                                                                } else if (procedurecode === "t1proc14sub114") {
                                                                                    headTag = "proheading14";
                                                                                } else if (procedurecode === "t1proc14sub115") {
                                                                                    headTag = "proheading14";
                                                                                } else if (procedurecode === "t1proc14sub116") {
                                                                                    headTag = "proheading14";
                                                                                } else if (procedurecode === "t1proc14sub117") {
                                                                                    headTag = "proheading14";
                                                                                } else if (procedurecode === "t1proc14sub118") {
                                                                                    headTag = "proheading14";
                                                                                } else if (procedurecode === "t1proc14sub119") {
                                                                                    headTag = "proheading14";
                                                                                } else if (procedurecode === "t1proc14sub120") {
                                                                                    headTag = "proheading14";
                                                                                } else if (procedurecode === "t1proc14sub21") {
                                                                                    headTag = "proheading14";
                                                                                } else if (procedurecode === "t1proc14sub22") {
                                                                                    headTag = "proheading14";
                                                                                } else if (procedurecode === "t1proc14sub23") {
                                                                                    headTag = "proheading14";
                                                                                } else if (procedurecode === "t1proc14sub24") {
                                                                                    headTag = "proheading14";
                                                                                } else if (procedurecode === "t1proc14sub25") {
                                                                                    headTag = "proheading14";
                                                                                } else if (procedurecode === "t1proc14sub26") {
                                                                                    headTag = "proheading14";
                                                                                } else if (procedurecode === "t1proc14sub27") {
                                                                                    headTag = "proheading14";
                                                                                } else if (procedurecode === "t1proc14sub28") {
                                                                                    headTag = "proheading14";
                                                                                } else if (procedurecode === "t1proc14sub31") {
                                                                                    headTag = "proheading14";
                                                                                } else if (procedurecode === "t1proc14sub32") {
                                                                                    headTag = "proheading14";
                                                                                } else if (procedurecode === "t1proc14sub33") {
                                                                                    headTag = "proheading14";
                                                                                } else if (procedurecode === "t1proc14sub34") {
                                                                                    headTag = "proheading14";
                                                                                } else if (procedurecode === "t1proc14sub35") {
                                                                                    headTag = "proheading14";
                                                                                } else if (procedurecode === "t1proc14sub36") {
                                                                                    headTag = "proheading14";
                                                                                } else if (procedurecode === "t1proc14sub37") {
                                                                                    headTag = "proheading14";
                                                                                } else if (procedurecode === "t1proc14sub38") {
                                                                                    headTag = "proheading14";
                                                                                } else if (procedurecode === "t1proc14sub41") {
                                                                                    headTag = "proheading14";
                                                                                } else if (procedurecode === "t1proc14sub42") {
                                                                                    headTag = "proheading14";
                                                                                } else if (procedurecode === "t1proc14sub43") {
                                                                                    headTag = "proheading14";
                                                                                } else if (procedurecode === "t1proc14sub44") {
                                                                                    headTag = "proheading14";
                                                                                } else if (procedurecode === "t1proc14sub51") {
                                                                                    headTag = "proheading14";
                                                                                } else if (procedurecode === "t1proc14sub56") {
                                                                                    headTag = "proheading14";
                                                                                } else if (procedurecode === "t1proc14sub57") {
                                                                                    headTag = "proheading14";
                                                                                } else if (procedurecode === "t1proc14sub58") {
                                                                                    headTag = "proheading14";
                                                                                }
                                                                                //========= Vestibuloplasty =========================

                                                                                else if (procedurecode === "t1proc19sub11") {
                                                                                    headTag = "proheading19";
                                                                                } else if (procedurecode === "t1proc19sub12") {
                                                                                    headTag = "proheading19";
                                                                                } else if (procedurecode === "t1proc19sub13") {
                                                                                    headTag = "proheading19";
                                                                                } else if (procedurecode === "t1proc19sub14") {
                                                                                    headTag = "proheading19";
                                                                                } else if (procedurecode === "t1proc19sub15") {
                                                                                    headTag = "proheading19";
                                                                                }
                                                                                //========== Stem cell / Bone harvest ==================

                                                                                else if (procedurecode === "t1proc16sub11") {
                                                                                    headTag = "proheading16";
                                                                                } else if (procedurecode === "t1proc16sub12") {
                                                                                    headTag = "proheading16";
                                                                                } else if (procedurecode === "t1proc16sub13") {
                                                                                    headTag = "proheading16";
                                                                                } else if (procedurecode === "t1proc16sub14") {
                                                                                    headTag = "proheading16";
                                                                                } else if (procedurecode === "t1proc16sub15") {
                                                                                    headTag = "proheading16";
                                                                                } else if (procedurecode === "t1proc16sub16") {
                                                                                    headTag = "proheading16";
                                                                                } else if (procedurecode === "t1proc16sub17") {
                                                                                    headTag = "proheading16";
                                                                                } else if (procedurecode === "t1proc16sub18") {
                                                                                    headTag = "proheading16";
                                                                                } else if (procedurecode === "t1proc16sub21") {
                                                                                    headTag = "proheading16";
                                                                                } else if (procedurecode === "t1proc16sub22") {
                                                                                    headTag = "proheading16";
                                                                                } else if (procedurecode === "t1proc16sub23") {
                                                                                    headTag = "proheading16";
                                                                                } else if (procedurecode === "t1proc16sub24") {
                                                                                    headTag = "proheading16";
                                                                                } else if (procedurecode === "t1proc16sub25") {
                                                                                    headTag = "proheading16";
                                                                                } else if (procedurecode === "t1proc16sub31") {
                                                                                    headTag = "proheading16";
                                                                                } else if (procedurecode === "t1proc16sub32") {
                                                                                    headTag = "proheading16";
                                                                                } else if (procedurecode === "t1proc16sub41") {
                                                                                    headTag = "proheading16";
                                                                                } else if (procedurecode === "t1proc16sub42") {
                                                                                    headTag = "proheading16";
                                                                                }
                                                                                // ====== 18 Suture ======


                                                                                else if (procedurecode === "t1proc18sub11") {
                                                                                    headTag = "proheading18";
                                                                                } else if (procedurecode === "t1proc18sub12") {
                                                                                    headTag = "proheading18";
                                                                                } else if (procedurecode === "t1proc18sub13") {
                                                                                    headTag = "proheading18";
                                                                                } else if (procedurecode === "t1proc18sub14") {
                                                                                    headTag = "proheading18";
                                                                                } else if (procedurecode === "t1proc18sub21") {
                                                                                    headTag = "proheading18";
                                                                                } else if (procedurecode === "t1proc18sub22") {
                                                                                    headTag = "proheading18";
                                                                                } else {
                                                                                    return;
                                                                                }


                                                                                if (headTag !== "") {
                                                                                    // alert(procedurecode);
                                                                                    updateStatus(headTag, checkedcount);
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
                                                                        });
    </script>

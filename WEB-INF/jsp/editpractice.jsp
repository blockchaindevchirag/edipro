<%@page contentType="text/html"  pageEncoding="UTF-8" autoFlush="true"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<html>
    <head>

        <title>Edit Practice Master</title>
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
                                            <form:form method="POST" id="example-form"  action="editpractice" modelAttribute="editpractice">
                                                <div>
                                                    <h3>Profile</h3>
                                                    <section>
                                                        <div class="row">

                                                            <div class="col-sm-12">
                                                                <div class="form-group">
                                                                    <label class="form-label" for="entity_id">Entity <span class="text-danger">*</span></label>
                                                                    <select class="required form-control js-example-placeholder-multiple" data-placeholder="Select Entity" id="entity_id" name ="entity_id">
                                                                        <option value = "" >--Select--</option>
                                                                        <c:forEach var="practice" items="${entitylist}">
                                                                            <option value = ${practice.entity_id} >${practice.entity_name}</option>
                                                                        </c:forEach>
                                                                    </select>
                                                                </div>
                                                            </div>


                                                            <div class="col-sm-6">
                                                                <div class="form-group">
                                                                    <label class="form-label">Practice Name <span class="text-danger">*</span> </label>
                                                                    <input type="text" name="name" class="required form-control" id="name" required placeholder="Enter practice name" >
                                                                </div>

                                                            </div>
                                                            <div class="col-sm-6"> 
                                                                <div class="form-group">
                                                                    <label class="form-label" for="clearing_house_id">Clearing House<span class="text-danger">*</span></label> 
                                                                    <select class="required form-control js-example-placeholder-multiple" data-placeholder="Select Patient" id="clearing_house_id" name ="clearing_house_id">
                                                                        <option value = "" >--Select--</option>
                                                                        <c:forEach var="practice" items="${clearinghouselist}">
                                                                            <option value = ${practice.clearing_house_id} >${practice.clearing_house}</option>
                                                                        </c:forEach>
                                                                    </select>


                                                                </div>
                                                            </div>
                                                            <div class="col-sm-6">
                                                                <div class="form-group">

                                                                    <label class="form-label" for="account_id">Account #<span class="text-danger">*</span></label>                                                                     
                                                                    <select class="required form-control js-example-placeholder-multiple" data-placeholder="Select Account#" id="account_id" name ="account_id" >
                                                                        <option value = "0" >--Select--</option>
                                                                        <c:forEach var="practice" items="${accountnolist}">
                                                                            <option value = "${practice.account_id}" class ="${practice.group_npi1}" >${practice.account_no}</option>
                                                                        </c:forEach>
                                                                    </select>            
                                                                </div>
                                                            </div>

                                                            <div class="col-sm-6">
                                                                <div class="form-group">
                                                                    <label class="form-label" for="user_type_id">Specialty <span class="text-danger">*</span></label> 
                                                                    <select class="required form-control js-example-placeholder-multiple" data-placeholder="Select Specialty" id="user_type_id" name ="user_type_id">
                                                                        <option value = "" >--Select--</option>
                                                                        <c:forEach var="practice" items="${usertypelist}">
                                                                            <option value = ${practice.user_type_id} >${practice.user_type}</option>
                                                                        </c:forEach>
                                                                    </select>
                                                                    <!--  <label class="form-label">Practice Code <span class="text-danger">*</span></label> -->
                                                                    <input type="text" class="form-control" id="practice_code" style="display:none;"  name="practice_code" placeholder="Enter practice code">
                                                                </div>
                                                            </div>

                                                            <div class="col-sm-6">
                                                                <div class="form-group">
                                                                    <label class="form-label">Actual Practice Name <span class="text-danger">*</span> <span style="font-size:10px; ">(for reporting purposes)</span> </label>
                                                                    <input type="text" name="actualPracticeName" class="required form-control" id="actualPracticeName" required placeholder="Enter actual practice name" >
                                                                </div>
                                                            </div>
                                                            <div class="col-sm-6">
                                                                <div class="form-group">

                                                                </div>
                                                            </div>

                                                        </div>

                                                        <p>(<span class="text-danger">*</span>) Mandatory</p>
                                                    </section>
                                                    <h3>Contact Information</h3>
                                                    <section>
                                                        <section>
                                                            <div class="row">
                                                                <div class="col-sm-6">
                                                                    <div class="form-group">
                                                                        <label class="form-label">Address Line 1 <span class="text-danger">*</span></label>
                                                                        <textarea class="form-control" cols="2" id ="addressline1" maxlength="48" required name="addressline1" placeholder="Enter Address Line 1"></textarea>
                                                                    </div>
                                                                </div>
                                                                <div class="col-sm-6">
                                                                    <div class="form-group">
                                                                        <label class="form-label">Address Line 2 </label>
                                                                        <textarea class="form-control" cols="2" maxlength="48" id="addressline2" name="addressline2" placeholder="Enter Address Line 2"></textarea>
                                                                    </div>
                                                                </div>
                                                                <div class="col-sm-6">
                                                                    <div class="form-group">
                                                                        <label class="form-label">City <span class="text-danger">*</span></label>
                                                                        <input type="text" class="form-control" maxlength="24" required id="city" name="city" placeholder="Enter City">
                                                                        <span id="city_error" style="color: red"></span>
                                                                    </div>
                                                                </div>
                                                                <div class="col-sm-6">
                                                                    <div class="form-group">
                                                                        <label class="form-label">State <span class="text-danger">*</span></label>
                                                                        <!--    <input type="text" class="form-control" id="state" name="state" required placeholder="Enter State"> -->
                                                                        <select class="form-control js-example-placeholder-multiple" data-placeholder="Select State" required id="state" name="state" >
                                                                            <option value = "0" >--Select--</option>

                                                                        </select> 
                                                                    </div>
                                                                </div>
                                                                <div class="col-sm-6">
                                                                    <div class="form-group">
                                                                        <label class="form-label">Zip <span class="text-danger">*</span></label>
                                                                        <input type="text" class="form-control" required maxlength="10" id="zip" name="zip" placeholder="12345-1234">
                                                                        <label class="form-label">Note: Plus Four codes replaced by zeros</label>
                                                                        <span id="zip_error" style="color: red"></span>
                                                                    </div>
                                                                </div>
                                                                <div class="col-sm-6">
                                                                    <div class="form-group">
                                                                        <label class="form-label">Fax </label>
                                                                        <input type="text" class="form-control" maxlength="24" id ="fax" name="fax" placeholder="Enter Fax">
                                                                        <span id="fax_error" style="color: red"></span>
                                                                    </div>
                                                                </div>
                                                                <div class="col-sm-6">
                                                                    <div class="form-group">
                                                                        <label class="form-label">Email <span class="text-danger">*</span></label>
                                                                        <input type="email" class="form-control" maxlength="48" required id="email" name="email"  placeholder="Enter email">
                                                                        <span id="email_error" style="color: red"></span>
                                                                    </div>
                                                                </div>

                                                                <div class="col-sm-6">
                                                                    <div class="form-group">
                                                                        <label class="form-label">Contact Phone <span class="text-danger">*</span></label>
                                                                        <input type="text" class="form-control" id="contact_phone" maxlength="24" required name="contact_phone" placeholder="Enter contact Phone">
                                                                        <span id="phone_error" style="color: red"></span>
                                                                    </div>
                                                                </div>
                                                                <div class="col-sm-6">
                                                                    <div class="form-group">
                                                                        <label class="form-label">Alternate Phone </label>
                                                                        <input type="text" class="form-control" id="alert_phone" maxlength="24" name="alert_phone" placeholder="Enter Alternate Phone">
                                                                    </div>
                                                                </div>

                                                            </div>
                                                        </section>
                                                        <p>(<span class="text-danger">*</span>) Mandatory</p>
                                                    </section>
                                                    <h3>Identification #</h3>
                                                    <section>
                                                        <div class="row">
                                                            <div class="col-sm-6">
                                                                <div class="form-group">
                                                                    <label class="form-label">HDI ID-1 </label>
                                                                    <input type="text" class="form-control" id="hdiid1" name ="hdiid1" placeholder="Enter HDI ID-1">
                                                                </div>
                                                            </div>
                                                            <div class="col-sm-6">
                                                                <div class="form-group">
                                                                    <label class="form-label">HDI ID-2 </label>
                                                                    <input type="text" class="form-control" id="hdiid2" name="hdiid2" placeholder="Enter HDI ID-2">
                                                                </div>
                                                            </div>

                                                            <div class="col-sm-6">
                                                                <div class="form-group">
                                                                    <label class="form-label">Billing NPI <span class="text-danger">*</span></label>
                                                                    <input type="text" class="form-control" maxlength="10" minlength="10" id="group_npi1" required name="group_npi1" placeholder="Enter NPI">
                                                                    <span id="npi1_error" style="color: red"></span>
                                                                </div>
                                                            </div>

                                                            <div class="col-sm-6">
                                                                <div class="form-group">
                                                                    <label class="form-label">Tax ID </label>
                                                                    <input type="text" class="form-control"  maxlength="24" id="taxid" name="taxid" placeholder="Enter Taxid">
                                                                    <span id="tax_error" style="color: red"></span>
                                                                    <input type="text"  name="practice_id" id="practice_id" style="height:0px;width:0px;" />
                                                                </div>
                                                            </div>

                                                            <div class="col-sm-6">
                                                                <div class="form-group">
                                                                    <label class="form-label" >Service Facility NPI <span class="text-danger">*</span></label>
                                                                    <input type="text" class="form-control" required id="group_npi4" maxlength="10" minlength="10" name="group_npi4" placeholder="Enter Service Facility NPI">
                                                                    <span id="npi4_error" style="color: red"></span>
                                                                </div>
                                                            </div>

                                                            <div class="col-sm-6">
                                                                <div class="form-group">
                                                                    <label class="form-label">Commission (in %) <span class="text-danger">*</span></label>
                                                                    <input type="text" class="form-control" maxlength="10" id="commission" required name="commission" placeholder="Enter commission">
                                                                    <span id="com1_error" style="color: red"></span>
                                                                </div>
                                                            </div>

                                                            <div class="col-sm-6">
                                                                <div class="form-group">
                                                                    <label class="form-label">Medicare Organization PTAN PECOS ID</label>
                                                                    <input type="text" class="form-control" id="medicarePecosId"  name="medicarePecosId" maxlength="24" placeholder="PECOS USERNAME">                                                                   
                                                                </div>
                                                            </div>
                                                            <div class="col-sm-6">
                                                                <div class="form-group">
                                                                    <label class="form-label">Medicare Organization PTAN PECOS PASSWORD</label>
                                                                    <input type="password" class="form-control"  id="medicarePecosPwd"  name="medicarePecosPwd" maxlength="24" placeholder="PECOS PASSWORD">
                                                                    <i class="mdi mdi mdi-eye" id="pass_icon1" style="position: absolute; top: 45%; cursor: pointer; right: 11%; font-size:20px;  opacity: 0.7; color: #19BCBF;"></i>
                                                                    <label class="pass_label" id="pass_label1" style="position: absolute; top: 53%;  cursor: pointer; right: 5%; opacity: 0.7; color: #19BCBF; font-size:12px; font-weight: bold;">SHOW</label>
                                                                </div>
                                                            </div>
                                                            <div class="col-sm-6">
                                                                <div class="form-group">
                                                                    <label class="form-label"> Medicaid Provider ID</label>
                                                                    <input type="text" class="form-control"  id="medicaidProviderId"  name="medicaidProviderId" maxlength="24" placeholder="Medicaid Provider ID">                                                                    
                                                                </div>
                                                            </div>
                                                            <div class="col-sm-6">
                                                                <div class="form-group">
                                                                    <label class="form-label"> Medicaid Provider USERNAME</label>
                                                                    <input type="text" class="form-control" id="medicaidProviderUser"  name="medicaidProviderUser"  maxlength="24" placeholder="Medicaid Provider ID">                                                 
                                                                </div>
                                                            </div>


                                                            <div class="col-sm-6">
                                                                <div class="form-group">
                                                                    <label class="form-label">Medicaid Provider PASSWORD</label>
                                                                    <input type="password" class="form-control"  id="medicaidProviderPwd"  name="medicaidProviderPwd" maxlength="24" placeholder="Medicaid Provider PASSWORD"> 
                                                                    <i class="mdi mdi mdi-eye" id="pass_icon2" style="position: absolute; top: 45%; cursor: pointer; right: 11%; font-size:20px;  opacity: 0.7; color: #19BCBF;"></i>
                                                                    <label class="pass_label" id="pass_label2" style="position: absolute; top: 53%;  cursor: pointer; right: 5%; opacity: 0.7; color: #19BCBF; font-size:12px; font-weight: bold;">SHOW</label>
                                                                </div>
                                                            </div>
                                                            <div class="col-sm-6">
                                                                <div class="form-group">
                                                                    <label class="form-label" style="display:none;">Group NPI 2</label>
                                                                    <input type="text" class="form-control"  maxlength="10" style="display:none;"  id="group_npi2" name="group_npi2" placeholder="Enter NPI 2">
                                                                    <span id="npi2_error" style="color: red"></span>
                                                                </div>
                                                            </div>
                                                            <div class="col-sm-6">
                                                                <div class="form-group">
                                                                    <label class="form-label" style="display:none;">Group NPI 3</label>
                                                                    <input type="text" class="form-control"  style="display:none;" maxlength="10" id="group_npi3" name="group_npi3" placeholder="Enter NPI 3">
                                                                    <span id="npi3_error" style="color: red"></span>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <p>(<span class="text-danger">*</span>) Mandatory</p>
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


        $(document).ready(function () {
            //  $('#user_type_id').hide();

            $('#contact_phone').mask('999-999-9999');
            $('#zip').mask('99999-9999');
            $('#alert_phone').mask('999-999-9999');
            $('#fax').mask('999-999-9999');


            var account_npi = '';
            $('#account_id').change(function () {
                //  alert($('select#payment_type').attr('class'));
                //  alert($('select[name="payment_type"] option:selected').attr('class')); 

                if ($(this).val() !== "")
                {
                    account_npi = $('select[name="account_id"] option:selected').attr('class');
                    // alert(account_npi);

                }

            });
            
        $(document).ready(function(){
                $('#pass_icon1,#pass_label1').on("click", function(){
                   $('#pass_icon1').toggleClass("mdi-eye-off");
                  if($('#pass_label1').text()==='SHOW')
                  {$('#pass_label1').text('HIDE');}else{$('#pass_label1').text('SHOW');}
                  var type=$('#medicarePecosPwd').attr("type") === "password" ? "text" : "password";
                 $('#medicarePecosPwd').attr("type", type);
                });
        });
        $(document).ready(function(){
                $('#pass_icon2,#pass_label2').on("click", function(){
                  $('#pass_icon2').toggleClass("mdi-eye-off");
                  if($('#pass_label2').text()==='SHOW')
                  {$('#pass_label2').text('HIDE');}else{$('#pass_label2').text('SHOW');}
                  var type=$('#medicaidProviderPwd').attr("type") === "password" ? "text" : "password";
                 $('#medicaidProviderPwd').attr("type", type);
                });
        });
        

            $("#group_npi1").focusout(function () {
                if (account_npi !== '')
                {
                    //  alert($(this).val());
                    if ($(this).val() !== account_npi)
                    {
                        //   msgbox("Practice NPI and Account NPI not Match", "Practice Masster", "warning");  
                    }
                }

            });

            $("form").submit(function () {

                /*  if (account_npi !== '')
                 {
                 
                 if ($("#group_npi1").val() !== account_npi)
                 {
                 msgbox("Practice NPI and Account NPI not Match", "Practice Masster", "warning");
                 return false;
                 }
                 } */
            });

            $('#name').keydown(function (e) {
                if (e.shiftKey || e.ctrlKey || e.altKey) {
                    // e.preventDefault();
                } else {
                    var key = e.keyCode;
                    if (!((key === 8) || (key === 32) || (key === 9) || (key === 46) || (key >= 35 && key <= 40) || (key >= 65 && key <= 90))) {
                        if (key !== 188)
                        {
                            e.preventDefault();
                        }
                    }
                }
            });
            $('#actualPracticeName').keydown(function (e) {
                if (e.shiftKey || e.ctrlKey || e.altKey) {
                    // e.preventDefault();
                } else {
                    var key = e.keyCode;
                    if (!((key === 8) || (key === 32) || (key === 9) || (key === 46) || (key >= 35 && key <= 40) || (key >= 65 && key <= 90))) {
                        if (key !== 188)
                        {
                            e.preventDefault();
                        }
                    }
                }
            });

            $(function () {
                $("#zip").keypress(function (e) {
                    var keyCode = e.keyCode || e.which;
                    $("#zip_error").html("");
                    var regex = /^[0-9-]$/;
                    var isValid = regex.test(String.fromCharCode(keyCode));
                    if (!isValid) {
                        $("#zip_error").html("Not valid");
                    }

                    return isValid;
                });
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
            });
            $(function () {
                $("#group_npi1").keypress(function (e) {
                    var keyCode = e.keyCode || e.which;
                    $("#npi1_error").html("");
                    var regex = /^[0-9]$/;
                    var isValid = regex.test(String.fromCharCode(keyCode));
                    if (!isValid) {
                        $("#npi1_error").html("Not valid");
                    }

                    return isValid;
                });
            });
            $(function () {
                $("#commission").keypress(function (e) {
                    var keyCode = e.keyCode || e.which;
                    $("#com1_error").html("");
                    var regex = /^[0-9]$/;
                    var isValid = regex.test(String.fromCharCode(keyCode));
                    if (!isValid) {
                        $("#com1_error").html("Not valid");
                    }

                    return isValid;
                });
            });
            $(function () {
                $("#group_npi2").keypress(function (e) {
                    var keyCode = e.keyCode || e.which;
                    $("#npi2_error").html("");
                    var regex = /^[0-9]$/;
                    var isValid = regex.test(String.fromCharCode(keyCode));
                    if (!isValid) {
                        $("#npi2_error").html("Not valid");
                    }

                    return isValid;
                });
            });
            $(function () {
                $("#group_npi3").keypress(function (e) {
                    var keyCode = e.keyCode || e.which;
                    $("#npi3_error").html("");
                    var regex = /^[0-9]$/;
                    var isValid = regex.test(String.fromCharCode(keyCode));
                    if (!isValid) {
                        $("#npi3_error").html("Not valid");
                    }

                    return isValid;
                });
            });
            $(function () {
                $("#group_npi4").keypress(function (e) {
                    var keyCode = e.keyCode || e.which;
                    $("#npi4_error").html("");
                    var regex = /^[0-9]$/;
                    var isValid = regex.test(String.fromCharCode(keyCode));
                    if (!isValid) {
                        $("#npi4_error").html("Not valid");
                    }

                    return isValid;
                });
            });
            $(function () {
                $("#taxid").keypress(function (e) {
                    var keyCode = e.keyCode || e.which;
                    $("#tax_error").html("");
                    var regex = /^[a-zA-Z0-9-]$/;
                    var isValid = regex.test(String.fromCharCode(keyCode));
                    if (!isValid) {
                        $("#npi4_error").html("Not valid");
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
                $("#contact_phone").keypress(function (e) {
                    var keyCode = e.keyCode || e.which;


                    var regex = /^[0-9\s\-]$/;


                    var isValid = regex.test(String.fromCharCode(keyCode));
                    if (!isValid) {

                    }

                    return isValid;
                });
            });


            $(function () {
                $("#alt_phone").keypress(function (e) {
                    var keyCode = e.keyCode || e.which;


                    var regex = /^[0-9\s\-]$/;


                    var isValid = regex.test(String.fromCharCode(keyCode));
                    if (!isValid) {

                    }

                    return isValid;
                });
            });


            $('#model_close').click(function ()
            {
                var x = document.getElementById("example-form");
                function closeDialog() {
                    x.close();
                }

            });






            var practice_id = GetParameterValues('practice_id');
            practice_id = parseInt(practice_id);
            //  alert(practice_id);

            $.get('getpracticedetails', {
                practice_id: practice_id
            }, function (response) {

                // alert(response);
                if (response.length > 0)
                {
                    var txt = response;
                    var obj = jQuery.parseJSON(txt);

                    console.log(obj);
                    var parastate = '';

                    if (obj.length > 0)
                    {
                        for (var i = 0; i < obj.length; i++)
                        {
                            console.log(obj);
                            parastate = obj[i].state;
                            $('#practice_id').val(obj[i].practice_id);

                            $('#practice_id').hide();
                            $('#entity_id').val(obj[i].entity_id);
                            $('#entity_id').trigger('change');
                            $('#name').val(obj[i].name);
                            $('#actualPracticeName').val(obj[i].actualPracticeName);
                            $('#medicarePecosId').val(obj[i].medicarePecosId);
                            $('#medicarePecosPwd').val(obj[i].medicarePecosPwd);
                            $('#medicaidProviderId').val(obj[i].medicaidProviderId);
                            $('#medicaidProviderUser').val(obj[i].medicaidProviderUser);
                            $('#medicaidProviderPwd').val(obj[i].medicaidProviderPwd);
                            $('#taxid').val(obj[i].taxid);
                            $('#group_npi1').val(obj[i].group_npi1);
                            $('#group_npi2').val(obj[i].group_npi2);
                            $('#group_npi3').val(obj[i].group_npi3);
                            $('#group_npi4').val(obj[i].group_npi4);
                            $('#hdiid1').val(obj[i].hdiid1);
                            $('#hdiid2').val(obj[i].hdiid2);
                            $('#addressline1').val(obj[i].addressline1);
                            $('#addressline2').val(obj[i].addressline2);
                            $('#city').val(obj[i].city);
                            // console.log(sv[13].trim());
                            //  $('#state').val(obj[i].state);
                            //  $('#state').trigger('change');
                            $('#zip').val(obj[i].zip);
                            $('#fax').val(obj[i].fax);
                            $('#email').val(obj[i].email);
                            $('#contact_phone').val(obj[i].contact_phone);
                            $('#alert_phone').val(obj[i].alert_phone);
                            $('#user_type_id').val(obj[i].user_type_id);
                            $('#user_type_id').trigger('change');
                            $('#clearing_house_id').val(obj[i].clearing_house_id);
                            $('#clearing_house_id').trigger('change');
                            $('#practice_code').val(obj[i].practice_code);
                            $('#commission').val(obj[i].commission);
                            $('#account_id').val(obj[i].account_id);
                            $('#account_id').trigger('change');

                            // $('<option>').val(obj1[i].code).text(obj1[i].state + ' [' + obj1[i].code + '] ').appendTo(select);
                        }
                        //  $('#state').val(sv[13].trim());
                    }
                    /* var sv = response.split('~');
                     $('#practice_id').val(sv[0].trim());
                     $('#practice_id').hide();
                     $('#entity_id').val(sv[1].trim());
                     $('#name').val(sv[2].trim());
                     $('#taxid').val(sv[3].trim());
                     $('#group_npi1').val(sv[4].trim());
                     $('#group_npi2').val(sv[5].trim());
                     $('#group_npi3').val(sv[6].trim());
                     $('#group_npi4').val(sv[7].trim());
                     $('#hdiid1').val(sv[8].trim());
                     $('#hdiid2').val(sv[9].trim());
                     $('#addressline1').val(sv[10].trim());
                     $('#addressline2').val(sv[11].trim());
                     $('#city').val(sv[12].trim());
                     // console.log(sv[13].trim());
                     //  $('#state').val(sv[13].trim());
                     $('#zip').val(sv[14].trim());
                     $('#fax').val(sv[15].trim());
                     $('#email').val(sv[16].trim());
                     $('#contact_phone').val(sv[17].trim());
                     $('#alert_phone').val(sv[18].trim());
                     $('#user_type_id').val(sv[19].trim());
                     $('#clearing_house_id').val(sv[20].trim());
                     $('#practice_code').val(sv[21].trim());
                     $('#commission').val(sv[22].trim());
                     $('#account_id').val(sv[23].trim());
                     $('#account_id').trigger('change'); */

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
                                $('#state').trigger('change');
                            }
                        }
                    });
                }

            });


        });
    </script>  
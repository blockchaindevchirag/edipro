<%@page contentType="text/html"  pageEncoding="UTF-8" autoFlush="true"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<html>
    <head>

        <title>Provider Master</title>
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
                                            <form:form method="POST" id="example-form"  action="editprovider" modelAttribute="editprovider" enctype="multipart/form-data">
                                                <div>
                                                    <h3>Profile</h3>
                                                    <section>
                                                        <div class="row">

                                                            <div class="col-sm-12">
                                                                <div class="form-group">
                                                                    <label class="form-label" for="practice_id" id="lblpractice">Practice <span class="text-danger">*</span></label>
                                                                    <select class="required form-control js-example-placeholder-multiple" id="practice_id" name ="practice_id">
                                                                        <option value = "" >--Select--</option>
                                                                        <c:forEach var="provider" items="${practicelist}">
                                                                            <option value = ${provider.practice_id} >${provider.practice_name}</option>
                                                                        </c:forEach>
                                                                    </select>
                                                                </div>
                                                            </div>


                                                            <div class="col-sm-6">
                                                                <div class="form-group">
                                                                    <label class="form-label">First Name <span class="text-danger">*</span> </label>
                                                                    <input type="text" name="first_name" maxlength="48" class="required form-control" id="first_name" required placeholder="Enter first name" >
                                                                </div>
                                                            </div>
                                                            <div class="col-sm-6">
                                                                <div class="form-group">
                                                                    <label class="form-label">Last Name <span class="text-danger">*</span> </label>
                                                                    <input type="text" name="last_name" maxlength="48" class="required form-control" id="last_name" required placeholder="Enter last name" >
                                                                </div>
                                                            </div>
                                                            <div class="col-sm-6">
                                                                <div class="form-group">
                                                                    <label class="form-label">Middle Name  </label>
                                                                    <input type="text" name="middle_name" class="form-control" id="middle_name" placeholder="Enter middle name" >
                                                                </div>
                                                            </div>
                                                            <div class="col-sm-6">
                                                                <div class="form-group">
                                                                    <label class="form-label" for="user_type_id">User Type <span class="text-danger">*</span></label>
                                                                    <select class="required form-control" id="user_type_id" name ="user_type_id">
                                                                        <option value = "" >--Select--</option>
                                                                        <c:forEach var="provider" items="${usertypelist}">
                                                                            <option value = ${provider.user_type_id} >${provider.user_type}</option>
                                                                        </c:forEach>
                                                                    </select>                             
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
                                                                        <textarea class="form-control" cols="2" id="addressline2"  maxlength="48" name="addressline2" placeholder="Enter Address Line 2"></textarea>
                                                                    </div>
                                                                </div>
                                                                <div class="col-sm-6">
                                                                    <div class="form-group">
                                                                        <label class="form-label">City <span class="text-danger">*</span></label>
                                                                        <input type="text" class="form-control" required id="city" name="city" maxlength="24" placeholder="Enter City">
                                                                        <span id="city_error" style="color: red"></span>
                                                                    </div>
                                                                </div>
                                                                <div class="col-sm-6">
                                                                    <div class="form-group">
                                                                        <label class="form-label">State <span class="text-danger">*</span></label>
                                                                        <!--  <input type="text" class="form-control" id="state" name="state" required placeholder="Enter State"> -->
                                                                        <select class="form-control js-example-placeholder-multiple"  required id="state" name="state" >
                                                                            <option value = "" >--Select--</option>

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
                                                                    </div>
                                                                </div>
                                                                <div class="col-sm-6">
                                                                    <div class="form-group">
                                                                        <label class="form-label">Email <span class="text-danger">*</span></label>
                                                                        <input type="email" class="form-control" required  maxlength="48" id="email" name="email"  placeholder="Enter email">
                                                                        <span id="email_error" style="color: red"></span>
                                                                    </div>
                                                                </div>

                                                                <div class="col-sm-6">
                                                                    <div class="form-group">
                                                                        <label class="form-label">Contact Phone <span class="text-danger">*</span></label>
                                                                        <input type="text" class="form-control" maxlength="24" required id="contact_phone" name="contact_phone" placeholder="Enter contact Phone">
                                                                    </div>
                                                                </div>
                                                                <div class="col-sm-6">
                                                                    <div class="form-group">
                                                                        <label class="form-label">Alternate Phone </label>
                                                                        <input type="text" class="form-control" maxlength="24" id="alert_phone" name="alert_phone" placeholder="Enter Alternate Phone">
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
                                                                    <input type="text" class="form-control" maxlength="24"  id="hdiid1" name ="hdiid1" placeholder="Enter HDI ID-1">
                                                                    <span id="hdi_error" style="color: red"></span>
                                                                </div>
                                                            </div>
                                                            <div class="col-sm-6">
                                                                <div class="form-group">
                                                                    <label class="form-label">PECOS Password </label>
                                                                    <input type="password" class="form-control" id="hdiid2" name="hdiid2" placeholder="Enter PECOS password">
                                                                    <i class="mdi mdi mdi-eye" id="pass_icon1" style="position: absolute; top: 45%; cursor: pointer; right: 11%; font-size:20px;  opacity: 0.7; color: #19BCBF;"></i>
                                                                    <label class="pass_label" id="pass_label1" style="position: absolute; top: 53%;  cursor: pointer; right: 5%; opacity: 0.7; color: #19BCBF; font-size:12px; font-weight: bold;">SHOW</label>
                                                                </div>
                                                            </div>

                                                            <div class="col-sm-6">
                                                                <div class="form-group">
                                                                    <label class="form-label">NPI #<span class="text-danger">*</span></label>
                                                                    <input type="text" class="form-control" maxlength="10" minlength="10" required id="individual_npi" name="individual_npi" placeholder="Enter NPI #">
                                                                    <span id="npi_error" style="color: red"></span>
                                                                </div>
                                                            </div>
                                                            <div class="col-sm-6">
                                                                <div class="form-group">
                                                                    <label class="form-label">Commission (in %)<span class="text-danger">*</span></label>
                                                                    <input type="text" class="form-control" maxlength="10" id="commission" required name="commission" placeholder="Enter commission">
                                                                    <span id="com1_error" style="color: red"></span>
                                                                </div>
                                                            </div>
                                                            <div class="col-sm-6">
                                                                <div class="form-group">
                                                                    <label class="form-label">Medicare PTAN</label>
                                                                    <input type="text" class="form-control" id="medicare_ptan" name="medicare_ptan" placeholder="Enter Medicare ptan">
                                                                    <input type="hidden"  name="provider_id" id="provider_id" style="height:0px;width:0px;" />
                                                                </div>
                                                            </div>
                                                            <div class="col-sm-6">
                                                                <div class="form-group">
                                                                    <label class="form-label">PECOS Username</label>
                                                                    <input type="text" class="form-control" id="tax_id" name="tax_id" placeholder="PECOS Username">
                                                                </div>
                                                            </div>

                                                            <div class="col-sm-6">
                                                                <div class="form-group">
                                                                    <label class="form-label">Medicaid Individual ID number</label>
                                                                    <input type="text" class="form-control" id="medicaidId" name="medicaidId" placeholder="Enter Medicaid Individual ID number">
                                                                </div>
                                                            </div>

                                                            <div class="col-sm-6">
                                                                <div class="form-group">
                                                                    <label class="form-label">State License #<span class="text-danger">*</span></label>
                                                                    <input type="text" class="form-control" id="state_lic_no" maxlength="20" required name="state_lic_no" placeholder="Enter State License #">
                                                                </div>
                                                            </div>
                                                            <div class="col-sm-6">
                                                                <div class="form-group">
                                                                    <label class="form-label">Medicaid Username </label>
                                                                    <input type="text" class="form-control" id="medicaidUserName" name="medicaidUserName" placeholder="Enter Medicaid Username">
                                                                </div>
                                                            </div>

                                                            <div class="col-lg-6">
                                                                <div class="form-group">
                                                                    <label class="form-label">Header </label>
                                                                    <input class="form-control" type="file" name="header" id="header" accept="image/*">  
                                                                </div>
                                                                <span class="headerFile clear" id="headerFile"  style="border:none;height:30px;" ></span>

                                                            </div>

                                                            <div class="col-sm-6">
                                                                <div class="form-group">
                                                                    <label class="form-label">Medicaid Password </label>
                                                                    <input type="password" class="form-control" id="medicaidPassword" name="medicaidPassword" placeholder="Enter Medicaid Password">
                                                                    <i class="mdi mdi mdi-eye" id="pass_icon2" style="position: absolute; top: 33%; cursor: pointer; right: 11%; font-size:20px;  opacity: 0.7; color: #19BCBF;"></i>
                                                                    <label class="pass_labe2" id="pass_label2" style="position: absolute; top: 40%;  cursor: pointer; right: 5%; opacity: 0.7; color: #19BCBF; font-size:12px; font-weight: bold;">SHOW</label>
                                                                </div>
                                                            </div>

                                                            <div class="col-lg-6">
                                                                <div class="form-group">
                                                                    <label class="form-label">Footer </label>
                                                                    <input class="form-control" type="file" name="footer" id="footer" accept="image/*">  
                                                                </div>
                                                                <span class="footerFile clear" id="footerFile"  style="border:none;height:30px;" ></span>
                                                            </div>
                                                            <div class="col-lg-6">
                                                                <div class="form-group">
                                                                    <label class="form-label">Signature </label>
                                                                    <input class="form-control" type="file" name="signature" id="signature" accept="image/*">  
                                                                </div>
                                                                <span class="signatureFile clear" id="signatureFile"  style="border:none;height:30px;" ></span>
                                                            </div>

                                                        </div>
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
            $(function () {
                $('#header').on('change', function (event) {
                    var file1 = event.target.files[0];
                    var filetype = event.target.files[0].type;
                    console.log(filetype);
                    if ((!file1.type.match('image/*'))) {
                        msgbox("Please Upload Image Files.", "Provider Master Form", "error");
                        $(this).val(null);
                        return;
                    }
                    $('#header').val(file1.name);
                });
                
                $(document).ready(function(){
                $('#pass_icon1,#pass_label1').on("click", function(){
                   $('#pass_icon1').toggleClass("mdi-eye-off");
                  if($('#pass_label1').text()==='SHOW')
                  {$('#pass_label1').text('HIDE');}else{$('#pass_label1').text('SHOW');}
                  var type=$('#hdiid2').attr("type") === "password" ? "text" : "password";
                 $('#hdiid2').attr("type", type);
                });
        });
        $(document).ready(function(){
                $('#pass_icon2,#pass_label2').on("click", function(){
                  $('#pass_icon2').toggleClass("mdi-eye-off");
                  if($('#pass_label2').text()==='SHOW')
                  {$('#pass_label2').text('HIDE');}else{$('#pass_label2').text('SHOW');}
                  var type=$('#medicaidPassword').attr("type") === "password" ? "text" : "password";
                 $('#medicaidPassword').attr("type", type);
                });
        });
                $('#footer').on('change', function (event) {
                    var file2 = event.target.files[0];
                    var filetype = event.target.files[0].type;
                    console.log(filetype);
                    if ((!file2.type.match('image/*'))) {
                        msgbox("Please Upload Image Files.", "Provider Master Form", "error");
                        $(this).val(null);
                        return;
                    }
                    $('#footer').val(file2.name);
                });
                $('#signature').on('change', function (event) {
                    var file3 = event.target.files[0];
                    var filetype = event.target.files[0].type;
                    console.log(filetype);
                    if ((!file3.type.match('image/*'))) {
                        msgbox("Please Upload Image Files.", "Provider Master Form", "error");
                        $(this).val(null);
                        return;
                    }
                    $('#signature').val(file3.name);
                });
            });

            function myHeaderFileDownload(e) {
                var x = e.target.value;
                // alert(x);
            }

            $(document).ready(function () {
                $('#contact_phone').mask('999-999-9999');
                $('#zip').mask('99999-9999');
                $('#alert_phone').mask('999-999-9999');
                $('#fax').mask('999-999-9999');

                $('#first_name').keydown(function (e) {
                    if (e.shiftKey || e.ctrlKey || e.altKey) {
                        //  e.preventDefault();
                    } else {
                        var key = e.keyCode;
                        if (!((key == 8) || (key == 32) || (key == 9) || (key == 46) || (key >= 35 && key <= 40) || (key >= 65 && key <= 90))) {
                            if (key !== 188) {
                                e.preventDefault();
                            }
                        }
                    }
                });

                $('#last_name').keydown(function (e) {
                    if (e.shiftKey || e.ctrlKey || e.altKey) {
                        // e.preventDefault();
                    } else {
                        var key = e.keyCode;
                        if (!((key == 8) || (key == 32) || (key == 9) || (key == 46) || (key >= 35 && key <= 40) || (key >= 65 && key <= 90))) {
                            if (key !== 188) {
                                e.preventDefault();
                            }
                        }
                    }
                });

                $('#middle_name').keydown(function (e) {
                    if (e.shiftKey || e.ctrlKey || e.altKey) {
                        // e.preventDefault();
                    } else {
                        var key = e.keyCode;
                        if (!((key == 8) || (key == 32) || (key == 9) || (key == 46) || (key >= 35 && key <= 40) || (key >= 65 && key <= 90))) {
                            if (key !== 188) {
                                e.preventDefault();
                            }
                        }
                    }
                });

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
                    $("#individual_npi").keypress(function (e) {
                        var keyCode = e.keyCode || e.which;
                        $("#npi_error").html("");

                        var regex = /^[0-9-]$/;


                        var isValid = regex.test(String.fromCharCode(keyCode));
                        if (!isValid) {
                            $("#npi_error").html("Not valid");
                        }

                        return isValid;
                    });
                });

                $(function () {
                    $("#hdiid1").keypress(function (e) {
                        var keyCode = e.keyCode || e.which;
                        $("#hdi_error").html("");

                        var regex = /^[a-zA-Z0-9]$/;

                        var isValid = regex.test(String.fromCharCode(keyCode));
                        if (!isValid) {
                            $("#hdi_error").html("Not valid");
                        }

                        return isValid;
                    });
                });

                $(function () {
                    $("#Credentials").keypress(function (e) {
                        var keyCode = e.keyCode || e.which;
                        $("#Credentials_error").html("");

                        var regex = /^[0-9-]$/;


                        var isValid = regex.test(String.fromCharCode(keyCode));
                        if (!isValid) {
                            $("#Credentials_error").html("Not valid");
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


                var provider_id = GetParameterValues('provider_id');
                provider_id = parseInt(provider_id);

                var usertype = '<%=session.getAttribute("UT")%>';
                var practiceid = '<%=session.getAttribute("practiceid")%>';
        <sec:authorize access="hasAnyRole('ROLE_PRACTICE_STAFF,ROLE_PRACTICE_ADMIN')">
                console.log("Practice: " + practiceid);
                $('#practice_id').val(practiceid).change();
                $('#practice_id').attr('disabled', "true");
        </sec:authorize>

                $("form").submit(function () {
                    // alert( $('#practice_id').val());
                    $('#practice_id').removeAttr('disabled');
                });

                $('#user_type_id').change(function () {
                    var pt = $('#user_type_id').val();
                    if ('8' === pt || '9' === pt || '1' === pt) {
                        $('#practice_id').hide();
                        $('#practice_id').next(".select2-container").hide();
                        $('#lblpractice').hide();
                        $('#practice_id').attr('required', false);
                    } else {
                        $('#practice_id').show();
                        $('#practice_id').next(".select2-container").show();
                        $('#lblpractice').show();
                        $('#practice_id').attr('required', true);
                    }
                });

                //  alert(practice_id);

                $.get('getproviderdetails', {
                    provider_id: provider_id
                }, function (response) {
                    // alert(response);
                    if (response.length > 0) {
                        var txt = response;
                        var obj = jQuery.parseJSON(txt);

                        console.log(obj);
                        var parastate = '';

                        if (obj.length > 0) {
                            for (var i = 0; i < obj.length; i++) {

                                $('#provider_id').val(obj[i].provider_id);
                                //   $('#ddlpractice').attr('disabled', "true");
                                $('#provider_id').hide();
                                $('#practice_id').val(obj[i].practice_id);
                                $('#practice_id').trigger('change');
                                $('#first_name').val(obj[i].first_name);
                                $('#last_name').val(obj[i].last_name);
                                $('#middle_name').val(obj[i].middle_name);
                                $('#individual_npi').val(obj[i].individual_npi);
                                $('#medicare_ptan').val(obj[i].medicare_ptan);
                                $('#hdiid1').val(obj[i].hdiid1);
                                $('#hdiid2').val(obj[i].hdiid2);
                                $('#addressline1').val(obj[i].addressline1);
                                $('#addressline2').val(obj[i].addressline2);
                                $('#city').val(obj[i].city);
                                // $('#state').val(sv[12].trim());
                                $('#zip').val(obj[i].zip);
                                $('#fax').val(obj[i].fax);
                                $('#email').val(obj[i].email);
                                $('#contact_phone').val(obj[i].contact_phone);
                                $('#alert_phone').val(obj[i].alert_phone);
                                $('#user_type_id').val(obj[i].user_type_id).change();
                                $('#user_type_id').trigger('change');
                                $('#tax_id').val(obj[i].tax_id);
                                $('#state_lic_no').val(obj[i].state_lic_no);
                                $('#commission').val(obj[i].commission);

                                $('#medicaidId').val(obj[i].medicaidId);
                                $('#medicaidUserName').val(obj[i].medicaidUserName);
                                $('#medicaidPassword').val(obj[i].medicaidPassword);

                                parastate = obj[i].state;



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
                                        if (obj1.length > 0) {
                                            for (var i = 0; i < obj1.length; i++) {
                                                $('<option>').val(obj1[i].code).text(obj1[i].state + ' [' + obj1[i].code + '] ').appendTo(select);
                                            }
                                            $('#state').val(parastate);
                                            $('#state').trigger('change');
                                        }
                                    }
                                });
                                if (((obj[i].header !== '') && typeof (obj[i].header !== "undefined"))) {
                                    $('#headerFile').html("<a href ='../Profile/header/" + obj[i].header + "' target='_blank'>" + obj[i].header + "</a>");
                                } else {
                                    $('.headerFile').hide();
                                }
                                if (((obj[i].footer !== '') && typeof (obj[i].footer !== "undefined"))) {
                                    $('#footerFile').html("<a href ='../Profile/footer/" + obj[i].footer + "' target='_blank'>" + obj[i].footer + "</a>");
                                } else {
                                    $('.footerFile').hide();
                                }
                                if (((obj[i].signature !== '') && typeof (obj[i].signature !== "undefined"))) {
                                    $('#signatureFile').html("<a href ='../Profile/signature/" + obj[i].signature + "' target='_blank'>" + obj[i].signature + "</a>");
                                } else {
                                    $('.signatureFile').hide();
                                }
                            }
                        }
                    }
                });

            });
    </script>  

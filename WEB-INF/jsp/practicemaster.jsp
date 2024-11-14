<%@page contentType="text/html"  pageEncoding="UTF-8" autoFlush="true"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<html>
    <head>

        <title>Practice Master</title>
        <jsp:include page="includes/header.jsp"></jsp:include>
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
            </style>
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
                                            <form:form method="POST" id="example-form"  action="addpracticemaster" modelAttribute="addpracticemaster">
                                                <div>
                                                    <h3>Profile</h3>
                                                    <section>
                                                        <div class="row">
                                                            <div class="col-6">
                                                                <h5>Profile</h5>
                                                                <hr style="margin-top: 0 !important; margin-bottom: 8px  !important;">
                                                                <div class="form-group">
                                                                    <label class="form-label" for="entity_id">Entity <span class="text-danger">*</span></label>
                                                                    <select  class="required form-control js-example-placeholder-multiple" data-placeholder="Select Entity" id="entity_id" name ="entity_id">
                                                                        <option value = "" >--Select--</option>
                                                                        <c:forEach var="practice" items="${entitylist}">
                                                                            <option value = ${practice.entity_id} >${practice.entity_name}</option>
                                                                        </c:forEach>
                                                                    </select>
                                                                </div>
                                                                <div class="form-row">
                                                                    <div class="form-group col-md-6">
                                                                        <label class="form-label">Practice Name <span class="text-danger">*</span> </label>
                                                                        <input type="text" name="name" class="required form-control" id="name" required placeholder="Enter practice name" >

                                                                    </div>
                                                                    <div class="form-group col-md-6">
                                                                        <label class="form-label" for="clearing_house_id">Clearing House<span class="text-danger">*</span></label>
                                                                        <select class="required form-control js-example-placeholder-multiple" data-placeholder="Select Clearing House" id="clearing_house_id" name ="clearing_house_id">
                                                                            <option value = "" >--Select--</option>
                                                                            <c:forEach var="practice" items="${clearinghouselist}">
                                                                                <option value = ${practice.clearing_house_id} >${practice.clearing_house}</option>
                                                                            </c:forEach>
                                                                        </select>
                                                                    </div>
                                                                    <div class="form-group col-md-12">

                                                                        <label class="form-label" for="account_id">Account #</label>                                                                     
                                                                        <select class="required form-control js-example-placeholder-multiple" data-placeholder="Select Account#" id="account_id" name ="account_id" >
                                                                            <option value = "0" >--Select--</option>
                                                                            <c:forEach var="practice" items="${accountnolist}">
                                                                                <option value = "${practice.account_id}" class ="${practice.group_npi1}" >${practice.account_no}</option>
                                                                            </c:forEach>
                                                                        </select>                                                                 

                                                                    </div>

                                                                    <div class="form-group col-md-12">
                                                                        <label class="form-label" for="user_type_id" >Specialty <span class="text-danger">*</span></label>
                                                                        <select class="required form-control js-example-placeholder-multiple" id="user_type_id" data-placeholder="Select Specialty" name ="user_type_id" >
                                                                            <option value = "" >--Select--</option>
                                                                            <c:forEach var="practice" items="${usertypelist}">
                                                                                <option value = ${practice.user_type_id} >${practice.user_type}</option>
                                                                            </c:forEach>
                                                                        </select>

                                                                        <!--<label class="form-label">Practice Code <span class="text-danger">*</span></label> -->
                                                                        <input type="text" class="form-control" id="practice_code" style="display:none;"  name="practice_code" placeholder="Enter clearing house assigned code">

                                                                    </div>
                                                                    <div class="form-group col-md-6">
                                                                        <label class="form-label">Actual Practice Name <span class="text-danger">*</span><span style="font-size:10px; ">(for reporting purposes)</span> </label>
                                                                        <input type="text" name="actualPracticeName" class="required form-control" id="actualPracticeName" required placeholder="Enter actual practice name" >
                                                                    </div>
                                                                </div> 
                                                            </div>
                                                            <div class="col-6" style="background: white;margin-top: -25px;padding-top: 25px;">
                                                                <h5>Contact Information</h5>
                                                                <hr style="margin-top: 0 !important; margin-bottom: 8px  !important;">
                                                                <div class="form-row">
                                                                    <div class="form-group col-md-6">
                                                                        <label class="form-label">Address Line 1 <span class="text-danger">*</span></label>
                                                                        <textarea class="form-control" cols="2" id ="addressline1" maxlength="48" required name="addressline1" placeholder="Enter Address Line 1"></textarea>
                                                                    </div>
                                                                    <div class="form-group col-md-6">
                                                                        <label class="form-label">Address Line 2 </label>
                                                                        <textarea class="form-control" cols="2" maxlength="48" id="addressline2" name="addressline2" placeholder="Enter Address Line 2"></textarea>
                                                                    </div>
                                                                    <div class="form-group col-4">
                                                                        <label class="form-label">City <span class="text-danger">*</span></label>
                                                                        <input type="text" class="form-control" maxlength="24" required id="city" name="city" placeholder="Enter City">
                                                                        <span id="city_error" style="color: red"></span>
                                                                    </div>
                                                                    <div class="form-group col-4">
                                                                        <label class="form-label">State <span class="text-danger">*</span></label>
                                                                        <!-- <input type="text" class="form-control" id="state" name="state" required placeholder="Enter State"> -->
                                                                        <select class="form-control js-example-placeholder-multiple" required id="state" data-placeholder="Select State" name="state" >
                                                                            <option value = "" >--Select--</option>

                                                                        </select> 
                                                                    </div>
                                                                    <div class="form-group col-4">
                                                                        <!-- <span style="float:right" ><a href="#" data-toggle="popover" data-placement="top" title="" data-content="Plus Four codes replaced by zeros" ><i class="fas fa-question-circle"></i></a></span> -->
                                                                        <label class="form-label">Zip <span class="text-danger">*</span></label>
                                                                        <input type="text" class="form-control" required maxlength="10" id="zip" name="zip" placeholder="12345-1234" >
                                                                        <!--<label class="form-label">Note: </label>-->
                                                                        <span id="zip_error" style="color: red"></span>
                                                                    </div>
                                                                    <div class="form-group col-6">
                                                                        <label class="form-label">Fax </label>
                                                                        <input type="text" class="form-control" maxlength="24" id ="fax" name="fax" placeholder="Enter Fax">
                                                                        <span id="fax_error" style="color: red"></span>
                                                                    </div>
                                                                    <div class="form-group col-6">
                                                                        <label class="form-label">Email <span class="text-danger">*</span></label>
                                                                        <input type="email" class="form-control" maxlength="48" required id="email" name="email"  placeholder="Enter email">
                                                                        <span id="email_error" style="color: red"></span>
                                                                    </div>
                                                                    <div class="form-group col-6">
                                                                        <label class="form-label">Contact Phone <span class="text-danger">*</span></label>
                                                                        <input type="text" class="form-control" id="contact_phone" maxlength="24" required name="contact_phone" placeholder="Enter contact Phone">
                                                                        <span id="phone_error" style="color: red"></span>
                                                                    </div>
                                                                    <div class="form-group col-6">
                                                                        <label class="form-label">Alternate Phone </label>
                                                                        <input type="text" class="form-control" id="alert_phone" maxlength="24" name="alert_phone" placeholder="Enter Alternate Phone">
                                                                    </div>

                                                                </div>
                                                            </div>



                                                        </div>
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
                                                                    <label class="form-label">Billing NPI<span class="text-danger">*</span></label>
                                                                    <input type="text" class="form-control" maxlength="10" minlength="10" id="group_npi1" required name="group_npi1" placeholder="Enter NPI">
                                                                    <span id="npi1_error" style="color: red"></span>
                                                                </div>
                                                            </div>

                                                            <div class="col-sm-6">
                                                                <div class="form-group">
                                                                    <label class="form-label">Tax ID </label>
                                                                    <input type="text" class="form-control" maxlength="24" id="taxid" name="taxid" placeholder="Enter Taxid">
                                                                    <span id="tax_error" style="color: red"></span>
                                                                </div>
                                                            </div>

                                                            <div class="col-sm-6">
                                                                <div class="form-group">
                                                                    <label class="form-label">Service Facility NPI <span class="text-danger">*</span></label>
                                                                    <input type="text" class="form-control" required id="group_npi4" maxlength="10" minlength="10" name="group_npi4" placeholder="Enter Service Facility NPI">
                                                                    <span id="npi4_error" style="color: red"></span>
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
                                                                    <label class="form-label" style="display:none;">Group NPI 2</label>
                                                                    <input type="text" class="form-control"  maxlength="10" style="display:none;"  id="group_npi2" name="group_npi2" placeholder="Enter NPI 2">
                                                                    <span id="npi2_error" style="color: red"></span>
                                                                </div>
                                                            </div>
                                                            <div class="col-sm-6">
                                                                <div class="form-group">
                                                                    <label class="form-label" style="display:none;">Group NPI 3</label>
                                                                    <input type="text" class="form-control" style="display:none;" maxlength="10" id="group_npi3" name="group_npi3" placeholder="Enter NPI 3">
                                                                    <span id="npi3_error" style="color: red"></span>
                                                                </div>
                                                            </div>
                                                            <div class="col-sm-6">
                                                                <div class="form-group">
                                                                    <label class="form-label">Medicare Organization PTAN PECOS ID</label>
                                                                    <input type="text" class="form-control" id="medicarePecosId" maxlength="24" name ="medicarePecosId" placeholder="PECOS USERNAME">
                                                                </div>
                                                            </div>
                                                            <div class="col-sm-6">
                                                                <div class="form-group">
                                                                    <label class="form-label">Medicare Organization PTAN PECOS PASSWORD</label>
                                                                    <input type="password" class="form-control" id="medicarePecosPwd" maxlength="24" name ="medicarePecosPwd" placeholder="PECOS PASSWORD">
                                                                    <i class="mdi mdi mdi-eye" id="pass_icon1" style="position: absolute; top: 45%; cursor: pointer; right: 11%; font-size:20px;  opacity: 0.7; color: #19BCBF;"></i>
                                                                    <label class="pass_label" id="pass_label1" style="position: absolute; top: 53%;  cursor: pointer; right: 5%; opacity: 0.7; color: #19BCBF; font-size:12px; font-weight: bold;">SHOW</label>
                                                                </div>
                                                            </div>
                                                            <div class="col-sm-6">
                                                                <div class="form-group">
                                                                    <label class="form-label"> Medicaid Provider ID</label>
                                                                    <input type="text" class="form-control" id="medicaidProviderId" maxlength="24" name ="medicaidProviderId" placeholder="Medicaid Provider ID">
                                                                </div>
                                                            </div>
                                                            <div class="col-sm-6">
                                                                <div class="form-group">
                                                                    <label class="form-label"> Medicaid Provider USERNAME</label>
                                                                    <input type="text" class="form-control"  id="medicaidProviderUser"  name="medicaidProviderUser" maxlength="24" placeholder="Medicaid Provider ID">                                                                    
                                                                </div>
                                                            </div>
                                                            <div class="col-sm-6">
                                                                <div class="form-group">
                                                                    <label class="form-label">Medicaid Provider PASSWORD </label>
                                                                    <input type="password" class="form-control" id="medicaidProviderPwd" name ="medicaidProviderPwd" maxlength="24" placeholder="Medicaid Provider PASSWORD">
                                                                    <i class="mdi mdi mdi-eye" id="pass_icon2" style="position: absolute; top: 45%; cursor: pointer; right: 11%; font-size:20px;  opacity: 0.7; color: #19BCBF;"></i>
                                                                    <label class="pass_label" id="pass_label2" style="position: absolute; top: 53%;  cursor: pointer; right: 5%; opacity: 0.7; color: #19BCBF; font-size:12px; font-weight: bold;">SHOW</label>
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
                /*    $('[data-toggle="popover"]').popover({
                 html: true,
                 title: 'Note'
                 //                title: 'Help<a class="close" href="#">&times;</a>',
                 });
                 $('[data-toggle="popover"]').click(function (e) {
                 e.stopPropagation();
                 });
                 
                 if (($('.popover').has(e.target).length === 0) || $(e.target).is('.close')) {
                 $('[data-toggle="popover"]').popover('hide');
                 }*/
//-------------------------------            
                $('#contact_phone').mask('999-999-9999');
                $('#zip').mask('99999-9999');
                $('#alert_phone').mask('999-999-9999');
                $('#fax').mask('999-999-9999');

                var entity = '<%= session.getAttribute("Entityid")%>';
                //alert(entity);
                $("#entity_id").val(entity);
                $("#entity_id").trigger('change');
                var account_npi = '';
                $('#account_id').change(function () {
                    //  alert($('select#payment_type').attr('class'));
                    //  alert($('select[name="payment_type"] option:selected').attr('class')); 
                    if ($(this).val() !== "")
                    {
                        account_npi = $('select[name="account_id"] option:selected').attr('class');

                    }

                });


                $("#group_npi1").focusout(function () {
                    if (account_npi !== '')
                    {

                        if ($(this).val() !== account_npi)
                        {
                            // msgbox("Practice NPI and Account NPI not Match", "Practice Masster", "warning");
                        }
                    }

                });

                $("form").submit(function () {

                    if (account_npi !== '')
                    {

                        if ($("#group_npi1").val() !== account_npi)
                        {
                            //  msgbox("Practice NPI and Account NPI not Match", "Practice Masster", "warning");
                            //  return false;
                        }
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

                $('#name').keydown(function (e) {
                    if (e.shiftKey || e.ctrlKey || e.altKey) {
                        //  e.preventDefault();
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
                $('#actualPracticeName').keydown(function (e) {
                    if (e.shiftKey || e.ctrlKey || e.altKey) {
                        //  e.preventDefault();
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

                $('#model_close').click(function ()
                {
                    var x = document.getElementById("example-form");
                    function closeDialog() {
                        x.close();
                    }

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
            $(function () {
                $('#pass_icon1,#pass_label1').on("click", function(){
                   $('#pass_icon1').toggleClass("mdi-eye-off");
                  if($('#pass_label1').text()==='SHOW')
                  {$('#pass_label1').text('HIDE');}else{$('#pass_label1').text('SHOW');}
                  var type=$('#medicarePecosPwd').attr("type") === "password" ? "text" : "password";
                 $('#medicarePecosPwd').attr("type", type);
                });
            });
            $(function () {
                $('#pass_icon2,#pass_label2').on("click", function(){
                  $('#pass_icon2').toggleClass("mdi-eye-off");
                  if($('#pass_label2').text()==='SHOW')
                  {$('#pass_label2').text('HIDE');}else{$('#pass_label2').text('SHOW');}
                  var type=$('#medicaidProviderPwd').attr("type") === "password" ? "text" : "password";
                 $('#medicaidProviderPwd').attr("type", type);
                });
            });



                //   $('#user_type_id').hide();
            });
    </script>
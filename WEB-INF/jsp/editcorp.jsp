<%@page contentType="text/html"  pageEncoding="UTF-8" autoFlush="true"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<html>
    <head>

        <title>Edit Corp Master</title>
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
                                            <form:form method="POST" id="example-form"  action="editcorpsubmit" modelAttribute="editcorpsubmit">
                                                <div>
                                                    <h3>Profile</h3>
                                                    <section>
                                                        <div class="row">
                                                            <div class="col-6">
                                                                <h5>Profile</h5>
                                                                <hr style="margin-top: 0 !important; margin-bottom: 8px  !important;">
                                                                <div class="form-group">
                                                                    <label class="form-label" for="entity_id">Entity <span class="text-danger">*</span></label>
                                                                    <select  class="required form-control" id="entity_id" name ="entity_id">
                                                                        <option value = "" >--Select--</option>
                                                                        <c:forEach var="practice" items="${entitylist}">
                                                                            <option value = ${practice.entity_id} >${practice.entity_name}</option>
                                                                        </c:forEach>
                                                                    </select>
                                                                </div>
                                                                <div class="form-row">
                                                                    <div class="form-group col-md-12">
                                                                        <label class="form-label">Name <span class="text-danger">*</span> </label>
                                                                        <input type="text" name="name" class="required form-control" id="name" required placeholder="Enter corporation name" >

                                                                    </div>
                                                                    <div class="form-group col-md-6">
                                                                        <label class="form-label" style="display:none;" for="clearing_house_id">Clearing House<span class="text-danger">*</span></label>
                                                                        <select class="form-control" style="display:none;" id="clearing_house_id" name ="clearing_house_id">
                                                                            <option value = "0" >--Select--</option>
                                                                            <c:forEach var="practice" items="${clearinghouselist}">
                                                                                <option value = ${practice.clearing_house_id} >${practice.clearing_house}</option>
                                                                            </c:forEach>
                                                                        </select>
                                                                    </div>

                                                                    <div class="form-group col-md-12">
                                                                        <label class="form-label" for="practice_id">Practice <span class="text-danger">*</span></label>
                                                                        <select class="form-control js-example-placeholder-multiple col-sm-12" data-placeholder="Select Practice" multiple required id="practice_id" name ="practice_id">
                                                                            <option value = "" >--Select--</option>
                                                                            <c:forEach var="provider" items="${practicelist}">
                                                                                <option value = ${provider.practice_id} >${provider.practice_name}</option>
                                                                            </c:forEach>
                                                                        </select>
                                                                    </div>

                                                                    <div class="form-group col-md-6">
                                                                        <!--  <label class="form-label" for="user_type_id" >User Type <span class="text-danger">*</span></label> -->
                                                                        <select class="form-control" id="user_type_id" name ="user_type_id" >
                                                                            <option value = "0" >--Select--</option>
                                                                            <c:forEach var="practice" items="${usertypelist}">
                                                                                <option value = ${practice.user_type_id} >${practice.user_type}</option>
                                                                            </c:forEach>
                                                                        </select>

                                                                        <!--<label class="form-label">Practice Code <span class="text-danger">*</span></label> -->
                                                                        <input type="text" class="form-control" id="corp_code" style="display:none;"  name="corp_code" placeholder="Enter clearing house assigned code">

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
                                                                        <select class="form-control js-example-placeholder-multiple col-sm-12" data-placeholder="Select State" required id="state" name="state" >
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
                                                                    <label class="form-label">Group NPI</label>
                                                                    <input type="text" class="form-control" maxlength="10" minlength="10" id="group_npi1" name="group_npi1" placeholder="Enter NPI">
                                                                    <span id="npi1_error" style="color: red"></span>
                                                                </div>
                                                            </div>

                                                            <div class="col-sm-6">
                                                                <div class="form-group">
                                                                    <label class="form-label">Tax ID <span class="text-danger">*</span></label>
                                                                    <input type="text" class="form-control" required maxlength="24" id="taxid" name="taxid" placeholder="Enter Taxid">
                                                                    <span id="tax_error" style="color: red"></span>
                                                                </div>
                                                            </div>

                                                            <div class="col-sm-6">
                                                                <div class="form-group">
                                                                    <label class="form-label" style="display:none;">Service Facility NPI</label>
                                                                    <input type="text" class="form-control"  style="display:none;" id="group_npi4" maxlength="10" minlength="10" name="group_npi4" placeholder="Enter Service Facility NPI">
                                                                    <span id="npi4_error" style="color: red"></span>
                                                                </div>
                                                            </div>

                                                            <div class="col-sm-6">
                                                                <div class="form-group">
                                                                    <label class="form-label" style="display:none;">Group NPI 2</label>
                                                                    <input type="text" class="form-control"  maxlength="10" minlength="10" style="display:none;"  id="group_npi2"  name="group_npi2" placeholder="Enter NPI 2">
                                                                    <span id="npi2_error" style="color: red"></span>
                                                                </div>
                                                            </div>
                                                            <div class="col-sm-6">
                                                                <div class="form-group">
                                                                    <label class="form-label" style="display:none;">Group NPI 3</label>
                                                                    <input type="text" class="form-control" style="display:none;" maxlength="10" minlength="10" id="group_npi3" name="group_npi3" placeholder="Enter NPI 3">
                                                                    <span id="npi3_error" style="color: red"></span>
                                                                    <input type="hidden" class="form-control"  id="corp_id" name="corp_id" >
                                                                </div>
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

    <div id="flading" class="loader">

    </div>

    <jsp:include page="includes/footer.jsp"></jsp:include>
    <script src="assets/js/plugins/select2.full.min.js"></script>
    <script src="assets/js/pages/form-select-custom.js"></script>
    <script type="text/javascript">


        $(document).ready(function () {
            $('#user_type_id').hide();
            $('#flading').show();
            $('#contact_phone').mask('999-999-9999');
            $('#zip').mask('99999-9999');
            $('#alert_phone').mask('999-999-9999');
            $('#fax').mask('999-999-9999');

            $('#name').keydown(function (e) {
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
            var tid = GetParameterValues('tid');

            var praacc = practice_id.split(",");

            // $('#practice_id').val(['1000000050', '1000000051']);
            $('#practice_id').val(praacc);
            $('#practice_id').trigger('change');



            //  alert(practice_id);

            $.ajax({
                url: "getcorpmaster",
                type: "get", //send it through get method
                data: {
                    corp_id: tid
                },
                success: function (response) {

                    console.log(response);
                    var txt = response;
                    var obj1 = jQuery.parseJSON(txt);
                    console.log(obj1);
                    if (obj1.length > 0)
                    {
                        $('#corp_id').val(obj1[0].corp_id);
                        //  $('#practice_id').hide();
                        $('#entity_id').val(obj1[0].entity_id);
                        $('#name').val(obj1[0].name);
                        $('#taxid').val(obj1[0].taxid);
                        $('#group_npi1').val(obj1[0].group_npi1);
                        $('#group_npi2').val('');
                        $('#group_npi3').val('');
                        $('#group_npi4').val(obj1[0].group_npi4);
                        $('#hdiid1').val(obj1[0].hdiid1);
                        $('#hdiid2').val(obj1[0].hdiid2);
                        $('#addressline1').val(obj1[0].addressline1);
                        $('#addressline2').val(obj1[0].addressline2);
                        $('#city').val(obj1[0].city);
                        // console.log(sv[13].trim());
                        //  $('#state').val(sv[13].trim());
                        $('#zip').val(obj1[0].zip);
                        $('#fax').val(obj1[0].fax);
                        $('#email').val(obj1[0].email);
                        $('#contact_phone').val(obj1[0].contact_phone);
                        $('#alert_phone').val(obj1[0].alert_phone);
                        $('#user_type_id').val(obj1[0].user_type_id);
                        $('#clearing_house_id').val(obj1[0].clearing_house_id);
                        $('#practice_code').val(obj1[0].practice_code);
                        var state = obj1[0].state;

                        $.ajax({
                            url: "getstatelist",
                            type: "get", //send it through get method
                            success: function (response) {
                                var select = $('#state');
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
                                        $('<option>').val(obj[i].code).text(obj[i].state + ' [' + obj[i].code + '] ').appendTo(select);
                                    }
                                    
                                     $('#state').val(state);
                                }
                            }
                        });


                        $('#flading').hide();
                    }
                },
                error: function (err) {
                    $('#flading').hide();
                }
            });


        });
    </script>  
<%@page contentType="text/html"  pageEncoding="UTF-8" autoFlush="true"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html lang="en">

    <head>
        <title>Clearing House Master</title>

        <jsp:include page="includes/header.jsp"></jsp:include>

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
                                        <div class="card">
                                            <div class="card-body"> 
                                                <form action="addclearinghouse" autocomplete="off" modelAttribute="addclearinghouse" method="POST">
                                                    <div class="row">
                                                        <div class="col-lg-4">
                                                            <div class="form-group">
                                                                <label class="form-label"  for="name">Name <span class="text-danger">*</span></label>
                                                                <input type="text" class="form-control"  name="name" id="name" required  placeholder="Enter clearinghouse name">
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-4">
                                                            <div class="form-group">
                                                                <label class="form-label" for="clearinghouse_id_universal">Universal Id <span class="text-danger">*</span></label>
                                                                <input type="text" class="form-control"  maxlength="48" name="clearinghouse_id_universal" id="clearinghouse_id_universal" required  placeholder="Enter universal id">
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-4">
                                                            <div class="form-group">
                                                                <label class="form-label" for="alt_edi_id">EDI Id</label> 
                                                                <input type="text" class="form-control" maxlength="48"  name="alt_edi_id" id="alt_edi_id"  placeholder="Enter EDI ID">

                                                            </div>					
                                                        </div>					
                                                    </div>									
                                                    <div class="row">
                                                        <div class="col-lg-4">
                                                            <div class="form-group">
                                                                <label class="form-label">Address 1 <span class="text-danger">*</span></label>
                                                                <input  class="form-control" required name="addressline1" maxlength="48" id="addressline1" placeholder="Enter address"   >
                                                            </div>
                                                        </div>

                                                        <div class="col-lg-4">
                                                            <div class="form-group">
                                                                <label class="form-label">Address 2</label>
                                                                <input  class="form-control"  name="addressline2" maxlength="48" id="addressline2" placeholder="Enter address"   >
                                                            </div>
                                                        </div>

                                                        <div class="col-lg-4">
                                                            <div class="form-group">
                                                                <label class="form-label">City </label>
                                                                <input type="text" class="form-control" id="city" name="city" maxlength="24" placeholder="Enter City">
                                                                <span id="city_error" style="color: red"></span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="col-lg-4">
                                                            <div class="form-group">
                                                                <label class="form-label">State <span class="text-danger">*</span></label>
                                                                <!--  <input type="text" class="form-control" name="state"  id = "state" placeholder="Enter state" > -->
                                                                <select class="form-control js-example-placeholder-multiple" data-placeholder="Select State" required id="state" name="state" >
                                                                    <option value = "" >--Select--</option>
                                                                </select>
                                                            </div>
                                                        </div>

                                                        <div class="col-lg-4">
                                                            <div class="form-group">
                                                                <label class="form-label">Zip</label>
                                                                <input type="text" class="form-control" maxlength="10" name="zip"  id = "zip" placeholder="12345-1234" >
                                                                <label class="form-label">Note: Plus Four codes replaced by zeros</label>
                                                                <span id="zip_error" style="color: red"></span>
                                                            </div>
                                                        </div>

                                                        <div class="col-lg-4">
                                                            <div class="form-group">
                                                                <label class="form-label">Fax</label>
                                                                <input type="text" class="form-control" name="fax" maxlength="24" id = "fax" placeholder="Enter fax" >
                                                            </div>
                                                        </div>

                                                    </div>

                                                    <div class="row">

                                                        <!--   <div class="col-lg-4">
                                                               <label class="form-label">Alternate Fax</label>
                                                               <input type="text" class="form-control" id="alt_fax" name="alt_fax" placeholder="Enter your alternate fax" >
                                                           </div> -->

                                                        <div class="col-lg-4">
                                                            <div class="form-group">
                                                                <label class="form-label">Email <span class="text-danger">*</span></label>
                                                                <input type="email" class="form-control" maxlength="48" required id="email" name="email" placeholder="Enter your email" >
                                                                <span id="email_error" style="color: red"></span>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-4">
                                                            <div class="form-group">
                                                                <label class="form-label">Phone #</label>
                                                                <input type="text" class="form-control" id="contact_phone" maxlength="24" name="contact_phone" placeholder="Enter your phone #" >
                                                            </div>
                                                        </div>

                                                        <div class="col-lg-4">
                                                            <div class="form-group">
                                                                <label class="form-label">Alternate Phone #</label>
                                                                <input type="text" class="form-control" id="alt_phone" name="alt_phone" maxlength="24" placeholder="Enter your Alternate phone #" >

                                                            </div>
                                                        </div>

                                                    </div>

                                                    <div class="row">
                                                        <div class="col-lg-4">
                                                            <div class="form-group">
                                                                <label class="form-label">User Id</label>
                                                                <input type="text" class="form-control" id="user_id"  maxlength="24"  name="user_id"  placeholder="Enter user id" >
                                                            </div>
                                                        </div>

                                                        <div class="col-lg-4">
                                                            <div class="form-group">
                                                                <label class="form-label">Password</label>
                                                                <input type="text" class="form-control" id="password"  maxlength="24"  name="password" placeholder="Enter password" >
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-4">
                                                            <div class="form-group">
                                                                <label class="form-label">Password Expire Date</label>
                                                                <input type="text" class="form-control" id="password_expiration_date"  name="password_expiration_date" placeholder="Enter password expire date" >
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <br/>
                                                    <div class="form-group row">                                               
                                                        <div class="col-md-3 offset-md-4">
                                                            <button type="submit" class="btn btn-rounded btn-greenadd btn-block">Submit</button>
                                                        </div>
                                                    </div>
                                                </form>
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
        </div>

        <script>
            //  $('#ddlpractice').selected
        </script>

        <!-- Required Js -->
    <jsp:include page="includes/footer.jsp"></jsp:include>
    <script src="assets/js/plugins/select2.full.min.js"></script>
    <script src="assets/js/pages/form-select-custom.js"></script>
    <script type="text/javascript">
            $('#zip').mask('99999-9999');
            $('#contact_phone').mask('999-999-9999');
            $('#alt_phone').mask('999-999-9999');
            $('#fax').mask('999-999-9999');


            $(document).ready(function () {

                $("#password_expiration_date").datepicker({
                    format: "mm/dd/yyyy",
                    autoclose: true,
                    orientation: "bottom left",
                    endDate: "+5y",
                    startDate: "-5y"
                }).mask('99/99/9999');


                $('#name').keydown(function (e) {
                    if (e.shiftKey || e.ctrlKey || e.altKey) {
                        //  e.preventDefault();
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

                $.ajax({
                    url: "getstatemaster",
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
                        }
                    }
                });

            });
    </script>     
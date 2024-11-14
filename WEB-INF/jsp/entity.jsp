<%@page contentType="text/html"  pageEncoding="UTF-8" autoFlush="true"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html lang="en">

    <head>
        <title>Entity Master</title>

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
                                            <form:form method="POST"   action="addentitymaster" modelAttribute="addentitymaster">
                                                <div class="row">
                                                    <div class="col-lg-4">
                                                        <div class="form-group">
                                                        <label class="form-label"  for="name">Name <span class="text-danger">*</span></label>
                                                        <input type="text" class="form-control"  name="name" id="name" required  placeholder="Enter entity name">
                                                    </div>
                                                    </div>
                                                    <div class="col-lg-4">
                                                        <div class="form-group">
                                                        <label class="form-label" for="taxid">Universal Id <span class="text-danger">*</span></label>
                                                        <input type="text" class="form-control" maxlength="24" name="taxid" id="taxid" required  placeholder="Enter taxid">
                                                        <span id="tax_error" style="color: red"></span>
                                                    </div>
                                                    </div>
                                                    <div class="col-lg-4">
                                                        <div class="form-group">
                                                        <label class="form-label" for="hdiid1">HDI ID</label> 
                                                        <input type="text" class="form-control" maxlength="24" name="hdiid1" id="hdiid1"  placeholder="Enter hdiid">
                                                         <span id="hdi_error" style="color: red"></span>
                                                    </div>					
                                                    </div>					
                                                </div>									
                                                <div class="row">
                                                    <div class="col-lg-4">
                                                        <div class="form-group">
                                                        <label class="form-label">Address Line 1 <span class="text-danger">*</span></label>
                                                        <input  class="form-control"  name="addressline1" maxlength="48" required id="addressline1" placeholder="Enter Address Line 1"   >
                                                    </div>
                                                    </div>

                                                    <div class="col-lg-4">
                                                        <div class="form-group">
                                                        <label class="form-label">Address Line 2</label>
                                                        <input  class="form-control"  name="addressline2" maxlength="48" id="addressline2" placeholder="Enter Address Line 2"   >
                                                    </div>
                                                    </div>
                                                    <div class="col-lg-4">
                                                        <div class="form-group">
                                                        <label class="form-label">City <span class="text-danger">*</span></label>
                                                        <input type="text" class="form-control" name="city" required maxlength="24"  id = "city" placeholder="Enter city" >
                                                          <span id="city_error" style="color: red"></span>
                                                    </div>
                                                    </div>
                                               <div class="col-lg-4">
                                                   <div class="form-group">
                                                        <label class="form-label">State <span class="text-danger">*</span></label>
                                                        <!--  <input type="text" class="form-control" name="state"  id = "state" placeholder="Enter state" > -->
                                                        <select class="form-control js-example-placeholder-multiple" data-placeholder="Select State"   required id="state" name="state" >
                                                            <option value = "" >--Select--</option>
                                                        </select> 
                                                    </div>
                                                    </div>
                                                    <div class="col-lg-4">
                                                        <div class="form-group">
                                                        <label class="form-label">Zip <span class="text-danger">*</span></label>
                                                        <input type="text" class="form-control" name="zip" required maxlength="10"  id = "zip" placeholder="12345-1234" >
                                                        <span id="zip_error" style="color: red"></span>
                                                    </div>
                                                    </div>

                                                    <div class="col-lg-4">
                                                        <div class="form-group">
                                                        <label class="form-label">Fax</label>
                                                        <input type="text" class="form-control" name="fax" maxlength="24" id = "fax" placeholder="Enter fax" >
                                                    </div>
                                                    </div>
                                               <div class="col-lg-4">
                                                   <div class="form-group">
                                                        <label class="form-label">Email <span class="text-danger">*</span></label>
                                                        <input type="email" class="form-control" maxlength="48" required id="email" name="email" placeholder="Enter your email" >
                                                         <span id="email_error" style="color: red"></span>
                                                    </div>
                                                    </div>
                                                    <div class="col-lg-4">
                                                        <div class="form-group">
                                                        <label class="form-label">Phone # <span class="text-danger">*</span></label>
                                                        <input type="text" class="form-control" required maxlength="24" id="alert_phone" name="alert_phone" placeholder="Enter your phone #" >
                                                    </div>
                                                    </div>
                                                </div>
                                                <br/>
                                                <div class="row">                                               
                                                     <div class="col-md-3 offset-md-4">
                                                         <div class="form-group">
                                                        <button type="submit" class="btn btn-rounded btn-greenadd btn-block">Submit</button>
                                                    </div>
                                                    </div>
                                                </div>
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
    </div>

    <script>
        //  $('#ddlpractice').selected
    </script>

    <!-- Required Js -->
    <jsp:include page="includes/footer.jsp"></jsp:include>
<script src="assets/js/plugins/select2.full.min.js"></script>
    <script src="assets/js/pages/form-select-custom.js"></script>
    <script type="text/javascript">


        $(document).ready(function () {

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
                $("#phone").keypress(function (e) {
                    var keyCode = e.keyCode || e.which;
                   

                    var regex = /^[0-9\s\-]$/;


                    var isValid = regex.test(String.fromCharCode(keyCode));
                    if (!isValid) {
                       
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
                $("#taxid").keypress(function (e) {
                    var keyCode = e.keyCode || e.which;
                    $("#tax_error").html("");

                    var regex = /^[0-9a-zA-Z]$/;


                    var isValid = regex.test(String.fromCharCode(keyCode));
                    if (!isValid) {
                        $("#tax_error").html("Not valid");
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
                $("#hdiid1").keypress(function (e) {
                    var keyCode = e.keyCode || e.which;
                    $("#hdi_error").html("");

                    var regex = /^[0-9a-zA-Z]$/;


                    var isValid = regex.test(String.fromCharCode(keyCode));
                    if (!isValid) {
                        $("#hdi_error").html("Not valid");
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
 

        });
    </script>     
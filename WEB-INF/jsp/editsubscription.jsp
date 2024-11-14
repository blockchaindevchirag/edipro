<%@page contentType="text/html"  pageEncoding="UTF-8" autoFlush="true"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html lang="en">

    <head>
        <title>Edit Client Master</title>

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
                                            <form:form method="POST"   action="updatesubscriptionmaster" modelAttribute="subscriptionmaster">

                                                <div class="row">
                                                    <div class="col-lg-4">
                                                        <div class="form-group">
                                                            <label class="form-label" for="account_no">Account No<span class="text-danger">*</span></label>
                                                            <input type="text" class="form-control" readonly tabindex="14"  name="account_no" id="account_no"  required  placeholder="Enter Account#">

                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="row">

                                                    <div class="col-lg-4">
                                                        <div class="form-group">
                                                            <label class="form-label"  for="client_name">Client Name<span class="text-danger">*</span></label>
                                                            <input type="text" class="form-control" tabindex="1" minlength="5" name="client_name" id="client_name"  required  placeholder="Enter client name">
                                                            <span id="name_error" style="color: red"></span>
                                                        </div>
                                                    </div>


                                                    <div class="col-lg-4">
                                                        <div class="form-group">
                                                            <label class="form-label">Tax ID<span class="text-danger">*</span></label>
                                                            <input type="text" class="form-control" minlength="5" tabindex="2" name="tax_id" required  id = "tax_id" placeholder="Enter tax_id" >

                                                        </div>
                                                    </div>

                                                    <div class="col-lg-4">
                                                        <div class="form-group">
                                                            <label class="form-label">Billing Address <span class="text-danger">*</span></label>
                                                            <textarea  rows="3" cols="90" class="form-control" style="white-space: pre-wrap;" required name="billing_address" tabindex="3" id ="billing_address"  title="billing_address"   placeholder="Address"></textarea>

                                                        </div>
                                                    </div>





                                                </div>									


                                                <div class="row">

                                                    <div class="col-lg-4">
                                                        <div class="form-group">
                                                            <label class="form-label">Contact Person <span class="text-danger">*</span></label>
                                                            <input type="text" class="form-control" tabindex="4" name="contact_person" required maxlength="24"  id = "contact_person"  >

                                                        </div>
                                                    </div>

                                                    <div class="col-lg-4">
                                                        <div class="form-group">
                                                            <!-- <label class="form-label">Medicare Tan</label> -->

                                                            <label class="form-label">Group NPI <span class="text-danger">*</span></label>
                                                            <input type="text" class="form-control" tabindex="5" minlength="10" name="group_npi"  required id = "group_npi" maxlength="10" placeholder="Enter group_npi" >

                                                        </div>
                                                    </div>

                                                    <div class="col-lg-4">
                                                        <div class="form-group">
                                                            <label class="form-label">City <span class="text-danger">*</span></label>
                                                            <input type="text" class="form-control" id="city" required name="city" maxlength="48" tabindex="6" placeholder="Enter your city" >
                                                            <span id="city_error" style="color: red"></span>
                                                        </div>
                                                    </div>


                                                </div>
                                                <div class="row">



                                                    <div class="col-lg-4">
                                                        <div class="form-group">
                                                            <label class="form-label">Contact Phone <span class="text-danger">*</span></label>
                                                            <input type="text" class="form-control" name="contact_phone" required tabindex="7" maxlength="24"  id = "contact_phone" placeholder="Enter contact_phone" >
                                                        </div>
                                                    </div>

                                                    <div class="col-lg-4">
                                                        <div class="form-group">
                                                            <label class="form-label">Contract No </label>
                                                            <input  class="form-control" tabindex="8" maxlength="48"  name="contract_no" id="contract_no" placeholder="Enter contract_no"   >
                                                        </div>
                                                    </div>



                                                    <div class="col-lg-4">
                                                        <div class="form-group">
                                                            <label class="form-label">State <span class="text-danger">*</span></label>

                                                            <select class="form-control js-example-placeholder-multiple" data-placeholder="Select State" tabindex="9" required id="state" name="state" >

                                                            </select> 
                                                        </div>
                                                    </div>



                                                </div>

                                                <div class="row">

                                                    <div class="col-lg-4">
                                                        <div class="form-group">
                                                            <label class="form-label"  for="Description">Notes<span class="text-danger">*</span></label>
                                                            <textarea  rows="3" cols="90" class="form-control" style="white-space: pre-wrap;" required name="description" tabindex="10" id ="description"  title="notes"   placeholder="notes"></textarea>

                                                        </div>	
                                                    </div>



                                                    <div class="col-lg-4">
                                                        <div class="form-group">
                                                            <!--  <label class="form-label">Individual NPI</label> -->

                                                            <label class="form-label">Contract Date</label>
                                                            <input type="text" class="datefields form-control" name="contract_date" tabindex="11"  title="contract_date"   id="contract_date" placeholder="contract_date"   />

                                                        </div>
                                                    </div>



                                                    <div class="col-lg-4">
                                                        <div class="form-group">
                                                            <label class="form-label">zip <span class="text-danger">*</span></label>
                                                            <input type="text" class="form-control" id="zip" required name="zip" tabindex="12" maxlength="24" placeholder="Enter your Zip" >
                                                            <span id="zip_error" style="color: red"></span>
                                                        </div>
                                                    </div>
                                                </div>


                                                <br/>
                                                <div class="row">    
                                                    <div class="col-md-3 offset-md-4">
                                                        <div class="form-group">
                                                            <input type="hidden"  name="tid" id="tid" />
                                                            <button type="submit" tabindex="13" class="btn btn-rounded btn-greenadd btn-block">Submit</button>

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


            $('#contact_phone').mask('999-999-9999');
            $('#zip').mask('99999-9999');

            //$("#contact_phone").inputmask({"mask": "(999) 999-9999"});

            /*    $(function () {
             $("#client_name").keypress(function (e) {
             var keyCode = e.keyCode || e.which;
             $("#name_error").html("");
             var regex = /^[a-zA-Z\s]$/;
             var isValid = regex.test(String.fromCharCode(keyCode));
             if (!isValid) {
             $("#name_error").html("Not valid");
             }
             
             return isValid;
             });
             }); */

            /*  $(function () {
             $("#account_no").keypress(function (e) {
             var keyCode = e.keyCode || e.which;
             $("#account_error").html("");
             var regex = /^[a-zA-Z0-9\s]$/;
             var isValid = regex.test(String.fromCharCode(keyCode));
             if (!isValid) {
             $("#account_error").html("Not valid");
             }
             
             return isValid;
             });
             }); */

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
                $("#contact_phone").keypress(function (e) {
                    var keyCode = e.keyCode || e.which;
                    var regex = /^[0-9\s\-]$/;
                    var isValid = regex.test(String.fromCharCode(keyCode));
                    if (!isValid) {

                    }

                    return isValid;
                });
            });

           

            var tid = GetParameterValues('tid');
            $('#tid').val(tid);
            // var address = GetParameterValues('billing_address');
            //  address = decodeURI(address);
            //alert(address);

            $.get('getsubscription', {
                tid: tid
            }, function (response) {
                // alert(democr);
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
                            $('#client_name').val(obj[i].client_name);
                            $('#account_no').val(obj[i].account_no);
                            $('#description').val(obj[i].description);
                            $('#contract_no').val(obj[i].contract_no);
                            $('#contract_date').val(obj[i].contract_date);
                            $('#group_npi').val(obj[i].group_npi);
                            $('#tax_id').val(obj[i].tax_id);
                            $('#contact_person').val(obj[i].contact_person);
                            $('#contact_phone').val(obj[i].contact_phone);
                            $('#billing_address').val(obj[i].billing_address);
                            $('#city').val(obj[i].city);
                            $('#zip').val(obj[i].zip);
                            parastate = obj[i].state;
                        }
                    }

                    /*
                     var sv = response.split('~');
                     console.log(sv);
                     $('#client_name').val(sv[0]);
                     $('#account_no').val(sv[1]);
                     $('#description').val(sv[2]);
                     $('#contract_no').val(sv[3]);
                     $('#contract_date').val(sv[4]);
                     $('#group_npi').val(sv[5]);
                     $('#tax_id').val(sv[6]);
                     $('#contact_person').val(sv[7]);
                     $('#contact_phone').val(sv[8]);
                     $('#billing_address').val(sv[9]);
                     $('#city').val(sv[10]); */

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
<%@page contentType="text/html"  pageEncoding="UTF-8" autoFlush="true"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html lang="en">

    <head>
        <title>Edit Payor </title>

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
                                            <form:form method="POST"   action="editpayor" modelAttribute="editpayor">
                                                <div class="row">
                                                    <!--   <div class="col-lg-4">
                                                           <label class="form-label"  for="ddlpractice">Practice<span class="text-danger">*</span></label>
                                                           <select class="form-control" tabindex="1" required id="ddlpractice"  name="ddlpractice">
                                                           </select>
                                                       </div> -->
                                                    <div class="col-lg-4">
                                                        <div class="form-group">
                                                            <label class="form-label"  for="name">Payor Name<span class="text-danger">*</span></label>
                                                            <input type="text" class="form-control" tabindex="2"  name="name" id="name" maxlength="48" required  placeholder="Enter payor name">
                                                        </div>
                                                    </div>
                                                    <div class="col-lg-4">
                                                        <div class="form-group">
                                                            <label class="form-label" for="payor_id_universal">Payor Code<span class="text-danger">*</span></label>
                                                            <input type="text" class="form-control" tabindex="3"  name="payor_id_universal" id="payor_id_universal" maxlength="24" required  placeholder="Enter payor id">
                                                        </div>
                                                    </div>

                                                    <div class="col-lg-4">
                                                        <div class="form-group">
                                                            <!-- <label class="form-label" for="alt_edi_id">EDI Id</label> -->
                                                            <input type="text" class="form-control"  name="alt_edi_id" id="alt_edi_id"  placeholder="Enter EDI ID">
                                                            <label class="form-label"  for="payor_type">Payor Type<span class="text-danger">*</span></label>
                                                            <select class="form-control" tabindex="4" required id="payor_type_id" name="payor_type_id" >
                                                                <option value = "" >--Select--</option>
                                                                <c:forEach var="payor" items="${payorlist}">
                                                                    <option value = ${payor.payor_type_id} >${payor.payor_type}</option>
                                                                </c:forEach>
                                                            </select> 
                                                        </div>
                                                    </div>

                                                    <div class="col-lg-4">
                                                        <div class="form-group">
                                                            <label class="form-label">Address Line 1 <span class="text-danger">*</span></label>
                                                            <input  class="form-control" tabindex="5" name="addressline1" maxlength="48" required id="addressline1" placeholder="Enter Address Line 1"   >
                                                        </div>
                                                    </div>
                                                    <div class="col-lg-4">
                                                        <div class="form-group">
                                                            <!-- <label class="form-label">Individual NPI</label>-->
                                                            <input type="text" class="form-control"  name="individual_npi" id ="individual_npi"   placeholder="Enter individual npi">
                                                            <label class="form-label">Address Line 2</label>
                                                            <input  class="form-control" tabindex="6"  name="addressline2" maxlength="48" id="addressline2" placeholder="Enter Address Line 2"   >
                                                        </div>
                                                    </div>
                                                    <div class="col-lg-4">
                                                        <div class="form-group">
                                                            <!-- <label class="form-label">Medicare Tan</label> -->
                                                            <input type="text" class="form-control"  name="medicare_tan" id = "medicare_tan"  placeholder="Enter medicare tan#">
                                                            <label class="form-label">City</label>
                                                            <input type="text" class="form-control" tabindex="7" name="city"  id = "city" maxlength="24" placeholder="Enter city" >
                                                            <span id="city_error" style="color: red"></span>
                                                        </div>
                                                    </div>

                                                </div>
                                                <div class="row">

                                                    <div class="col-lg-4">
                                                        <div class="form-group">
                                                            <label class="form-label">State<span class="text-danger">*</span></label>
                                                            <!--  <input type="text" class="form-control" tabindex="8" name="state" required  id = "state" placeholder="Enter state" > -->

                                                            <select class="form-control" tabindex="8" required id="state" name="state" >
                                                               <option value = "fav" >Favourites</option>
                                                                <option value = "OTR" >All Payor List</option>
                                                            </select> 

                                                        </div> 
                                                    </div> 
                                                    <div class="col-lg-4">
                                                        <div class="form-group">
                                                            <label class="form-label">Zip</label>
                                                            <!--<input type="text" class="form-control" maxlength="10" name="zip" tabindex="9" pattern="" id = "zip" placeholder="12345-1234" >-->
                                                            <input type="text" class="form-control"  name="zip"  maxlength="10" tabindex="9"  id ="zip" placeholder="12345-1234" >
                                                            <label class="form-label">Note: Plus Four codes replaced by zeros</label>
                                                            <span id="zip_error" style="color: red"></span>
                                                        </div>
                                                    </div>

                                                    <div class="col-lg-4">
                                                        <div class="form-group">
                                                            <label class="form-label">Fax</label>
                                                            <input type="text" class="form-control" name="fax" maxlength="24"  tabindex="10" id = "fax" placeholder="Enter fax" >
                                                        </div>
                                                    </div>

                                                </div>
                                                <div class="row">


                                                    <div class="col-lg-4">
                                                        <div class="form-group">
                                                            <label class="form-label">Alternate Fax</label>
                                                            <input type="text" class="form-control" id="alt_fax" name="alt_fax" maxlength="24" tabindex="11" placeholder="Enter your alternate fax" >
                                                        </div>
                                                    </div>
                                                    <div class="col-lg-4">
                                                        <div class="form-group">
                                                            <label class="form-label">Email</label>
                                                            <input type="email" class="form-control" id="email"  maxlength="48" name="email" tabindex="12" placeholder="Enter your email" >
                                                            <span id="email_error" style="color: red"></span>
                                                        </div>
                                                    </div>

                                                    <div class="col-lg-4">
                                                        <div class="form-group">
                                                            <label class="form-label">Phone #</label>
                                                            <input type="text" class="form-control" id="contact_phone" tabindex="13" maxlength="24" name="contact_phone" placeholder="Enter your phone #" >
                                                        </div>
                                                    </div>
                                                    <div class="col-lg-4">
                                                        <div class="form-group">
                                                            <label class="form-label">Alternate Phone #</label>
                                                            <input type="text" class="form-control" id="alt_phone" name="alt_phone" tabindex="14" maxlength="24" placeholder="Enter your Alternate phone #" >
                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="row">

                                                    <div class="col-lg-4">
                                                        <div class="form-group">
                                                            <label class="form-label">RTE <span class="text-danger">*</span></label>
                                                            <select class="form-control" tabindex="15" required id="rte" name="rte" >
                                                                <option value = "" >--Select--</option> 
                                                                <option value = "Yes" >Yes</option>
                                                                <option value = "No" >No</option>
                                                            </select> 
                                                        </div>
                                                    </div>

                                                    <div class="col-lg-4">
                                                        <div class="form-group">
                                                            <label class="form-label">RCS <span class="text-danger">*</span></label>
                                                            <select class="form-control" tabindex="16" required id="rcs" name="rcs" >
                                                                <option value = "" >--Select--</option> 
                                                                <option value = "Yes" >Yes</option>
                                                                <option value = "No" >No</option>
                                                            </select> 
                                                        </div>
                                                    </div>

                                                    <div class="col-lg-4">
                                                        <div class="form-group">
                                                            <label class="form-label">EFT <span class="text-danger">*</span></label>
                                                            <select class="form-control" tabindex="17" required id="eft" name="eft" >
                                                                <option value = "" >--Select--</option> 
                                                                <option value = "Yes" >Yes</option>
                                                                <option value = "No" >No</option>
                                                            </select> 
                                                        </div>
                                                    </div>

                                                </div>

                                                <br/>
                                                <div class="row">                                               
                                                    <div class="col-md-3 offset-md-4">
                                                        <div class="form-group">
                                                            <input type="text"  name="payor_id" id="payor_id" style="height:0px;width:0px;"/>
                                                            <button type="submit"  tabindex="18" class="btn btn-rounded btn-greenadd btn-block">Submit</button>
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

        <script type="text/javascript">



            $(document).ready(function () {

                $('#contact_phone').mask('999-999-9999');
                $('#zip').mask('99999-9999');
                $('#alt_phone').mask('999-999-9999');
                $('#fax').mask('999-999-9999');
                $('#alt_fax').mask('999-999-9999');


                $('#alt_edi_id').hide();
                $('#individual_npi').hide();
                $('#medicare_tan').hide();


                $(function () {
                    $("#name").keypress(function (e) {
                        var keyCode = e.keyCode || e.which;
                        $("#name_error").html("");

                        var regex = /^[a-zA-Z]$/;


                        var isValid = regex.test(String.fromCharCode(keyCode));
                        if (!isValid) {
                            $("#name_error").html("Not valid");
                        }

                        return isValid;
                    });
                });

                $(function () {
                    $("#payor_id_universal").keypress(function (e) {
                        var keyCode = e.keyCode || e.which;
                        $("#code_error").html("");

                        var regex = /^[a-zA-Z0-9]$/;


                        var isValid = regex.test(String.fromCharCode(keyCode));
                        if (!isValid) {
                            $("#code_error").html("Not valid");
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
                    $("#alt_fax").keypress(function (e) {
                        var keyCode = e.keyCode || e.which;


                        var regex = /^[0-9\s\-]$/;


                        var isValid = regex.test(String.fromCharCode(keyCode));
                        if (!isValid) {

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

               


                var EId = '<%= session.getAttribute("Entityid")%>';


                if (EId !== '')
                {

                    var payor_id = GetParameterValues('payor_id');
                    payor_id = parseInt(payor_id);
                    $.ajax({
                        url: "payordetails",
                        type: "get", //send it through get method
                        data: {
                            payorid: payor_id
                        },
                        success: function (response) {
                            if (response.length > 0)
                            {
                                // console.log(response);
                                var txt = response;
                                var obj = jQuery.parseJSON(txt);
                                console.log(obj.length);
                                if (obj.length > 0)
                                {
                                    // console.log(obj[0].payor_type_id);
                                    $('#payor_id').val(obj[0].payor_id);
                                    $('#payor_id').hide();
                                    $('#name').val(obj[0].name);
                                    $('#payor_id_universal').val(obj[0].payor_id_universal);
                                    $('#alt_edi_id').val(obj[0].alt_edi_id);
                                    $('#payor_type_id').val(obj[0].payor_type_id);
                                    $('#individual_npi').val(obj[0].individual_npi);
                                    $('#medicare_tan').val(obj[0].medicare_tan);
                                    $('#addressline1').val(obj[0].addressline1);
                                    $('#addressline2').val(obj[0].addressline2);
                                    $('#city').val(obj[0].city);

                                    $('#zip').val(obj[0].zip);
                                    $('#fax').val(obj[0].fax);
                                    $('#alt_fax').val(obj[0].alt_fax);
                                    $('#email').val(obj[0].email);
                                    $('#contact_phone').val(obj[0].contact_phone);
                                    $('#alt_phone').val(obj[0].alt_phone);
                                    //  $('#ddlpractice').val(sv[17].trim());
                                    $('#rte').val(obj[0].rte);
                                    $('#rcs').val(obj[0].rcs);
                                    $('#eft').val(obj[0].eft);
                                     $('#state').val(obj[0].state);
                                    // console.log(obj[0].state);

                                  /*  $.ajax({
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
                                                $('#state').val(obj[0].state);
                                            }
                                        }
                                    }); */
 
                                }
                            }
                        },
                        error: function (err) {
                            console.log(err);
                        }
                    });
 
                } else
                {
                    var payor_id = GetParameterValues('payor_id');
                    payor_id = parseInt(payor_id);

                    $.ajax({
                        url: "payordetails",
                        type: "get", //send it through get method
                        data: {
                            payorid: payor_id
                        },
                        success: function (response) {
                            if (response.length > 0)
                            {
                                // console.log(response);
                                var txt = response;
                                var obj = jQuery.parseJSON(txt);
                                console.log(obj.length);
                                if (obj.length > 0)
                                {
                                    $('#payor_id').val(obj[0].payor_id);
                                    $('#payor_id').hide();
                                    $('#name').val(obj[0].name);
                                    $('#payor_id_universal').val(obj[0].payor_id_universal);
                                    $('#alt_edi_id').val(obj[0].alt_edi_id);
                                    $('#payor_type_id').val(obj[0].payor_type_id);
                                    $('#individual_npi').val(obj[0].individual_npi);
                                    $('#medicare_tan').val(obj[0].medicare_tan);
                                    $('#addressline1').val(obj[0].addressline1);
                                    $('#addressline2').val(obj[0].addressline2);
                                    $('#city').val(obj[0].city);

                                    $('#zip').val(obj[0].zip);
                                    $('#fax').val(obj[0].fax);
                                    $('#alt_fax').val(obj[0].alt_fax);
                                    $('#email').val(obj[0].email);
                                    $('#contact_phone').val(obj[0].contact_phone);
                                    $('#alt_phone').val(obj[0].alt_phone);
                                    //  $('#ddlpractice').val(sv[17].trim());
                                    $('#rte').val(obj[0].rte);
                                    $('#rcs').val(obj[0].rcs);
                                    $('#eft').val(obj[0].eft);
                                     $('#state').val(obj[0].state);
                                    // console.log(obj[0].state);

                                   /* $.ajax({
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
                                                $('#state').val(obj[0].state);
                                            }
                                        }
                                    }); */
 
                                }
                            }
                        },
                        error: function (err) {
                            console.log(err);
                        }
                    });

                }
            });
    </script>    
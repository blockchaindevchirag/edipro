<%@page contentType="text/html"  pageEncoding="UTF-8" autoFlush="true"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<html>
    <head>

        <title>Group Clinic</title>
        <jsp:include page="includes/header.jsp"></jsp:include>
            <style>
                .datepicker>.datepicker-days {
                    display: block;
                }
                .datepicker table tr td.disabled{
                    color: darkgray;
                }

                .filter-option{
                    margin-top: -7px !important;
                    margin-bottom: -4px  !important;
                }

                .bootstrap-select{margin: -5px -14px !important; width: 100%;}

                .select2-container .select2-selection--single {
                    box-sizing: border-box;
                    cursor: pointer;
                    display: block;
                    height: 33px !important;
                    user-select: none;
                    -webkit-user-select: none;
                }

                .select2-container--default .select2-selection--single {
                    background-color: #fff;
                    border: 2px solid #ced4da;
                    border-radius: 4px;
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
                                            <form:form method="POST" id="example-form"  action="addgrouppracticemaster" modelAttribute="addgrouppracticemaster">
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
                                                                        <label class="form-label">Group Name <span class="text-danger">*</span> </label>
                                                                        <input type="text" name="group_name" maxlength="45" required class="form-control" id="group_name" required placeholder="Enter first name" >
                                                                    </div>
                                                                </div> 

                                                                <div class="form-group">
                                                                    <label class="form-label" for="corp_id">Corporate <span class="text-danger">*</span></label>
                                                                    <select class="form-control js-example-placeholder-multiple col-sm-12" data-placeholder="Select Corporate" multiple required id="corp_id" name ="corp_id">
                                                                        <option value = "" >--Select--</option>
                                                                        <c:forEach var="Corporation" items="${corplist}">
                                                                            <option value = ${Corporation.corp_id} >${Corporation.name}</option>
                                                                        </c:forEach>
                                                                    </select>
                                                                </div>

                                                            </div>
                                                            <div class="col-6" style="background: white;margin-top: -25px;padding-top: 25px;">
                                                                <h5>Contact Information</h5>
                                                                <hr style="margin-top: 0 !important; margin-bottom: 8px  !important;">
                                                                <div class="form-row">
                                                                    <div class="form-group col-md-6">
                                                                        <label class="form-label">Address Line 1 </label>
                                                                        <textarea class="form-control" cols="2" id ="addressline1" maxlength="48"  name="addressline1" placeholder="Enter Address Line 1"></textarea>
                                                                    </div>
                                                                    <div class="form-group col-md-6">
                                                                        <label class="form-label">Address Line 2</label>
                                                                        <textarea class="form-control" cols="2" id="addressline2" maxlength="48" name="addressline2" placeholder="Enter Address Line 2"></textarea>
                                                                    </div>
                                                                    <div class="form-group col-md-4">
                                                                        <label class="form-label">City </label>
                                                                        <input type="text" class="form-control" id="city" name="city" maxlength="24" placeholder="Enter City">
                                                                        <span id="city_error" style="color: red"></span>
                                                                    </div>
                                                                    <div class="form-group col-md-4">
                                                                        <label class="form-label">State </label>
                                                                        <!--  <input type="text" class="form-control" id="state" required name="state" placeholder="Enter State"> -->
                                                                        <select class="form-control js-example-placeholder-multiple col-sm-12" data-placeholder="Select State" id="state" name="state" >
                                                                            <option value = "" >--Select--</option></select> 
                                                                    </div>
                                                                    <div class="form-group col-md-4">
                                                                        <label class="form-label">Zip </label>
                                                                        <input type="text" class="form-control" maxlength="10"  id="zip" name="zip" placeholder="12345-1234">
                                                                        <span id="zip_error" style="color: red"></span>
                                                                    </div>
                                                                    <div class="form-group col-md-6">
                                                                        <label class="form-label">Fax </label>
                                                                        <input type="text" class="form-control"  maxlength="24" id ="fax" name="fax" placeholder="Enter Fax">
                                                                    </div>
                                                                    <div class="form-group col-md-6">
                                                                        <label class="form-label">Email </label>
                                                                        <input type="email" class="form-control"  maxlength="48" id="email"  name="email"  placeholder="Enter email">
                                                                        <span id="email_error" style="color: red"></span>
                                                                    </div>

                                                                    <div class="form-group col-md-6">
                                                                        <label class="form-label">Phone </label>
                                                                        <input type="text" class="form-control" id="alert_phone"  maxlength="24" name="alert_phone" placeholder="Enter Phone">
                                                                    </div>
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
            $('.pc-selectpicker').selectpicker();
            $(document).ready(function () {

                console.log("UT:<%=session.getAttribute("UT")%>:");
                var usertype = '<%=session.getAttribute("UT")%>';
                var practiceid = '<%=session.getAttribute("practiceid")%>';

                $('#zip').mask('99999-9999');
                $('#alert_phone').mask('999-999-9999');
                $('#fax').mask('999-999-9999');
                
                 var entity = '<%= session.getAttribute("Entityid")%>';	
	         $("#entity_id").val(entity);


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

<%--
    Document   : patientinsurance
    Created on : 23-Mar-2021, 1:52:36 pm
    Author     : Dell
--%>
<%@page contentType="text/html"  pageEncoding="UTF-8" autoFlush="true"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
    <head>

        <title>Patient Insurance</title>
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

                .filter-option{
                    margin-top: -7px !important;
                    margin-bottom: -4px  !important;
                }

                .bootstrap-select{
                    margin: -5px -14px !important;
                    width: 108%;
                }

                .select2-container .select2-selection--single {
                    box-sizing: border-box;
                    cursor: pointer;
                    display: block;
                    height: 33px !important;
                    user-select: none;
                    -webkit-user-select: none;
                }

                .select2-container--default .select2-selection--single {
                    background-color: #fff !important;
                    border: 2px solid #ced4da !important;
                    border-radius: 4px !important;
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
                                            <form:form method="POST" id="example-form"  action="updatepatientinsurance" modelAttribute="updatepatientinsurance">
                                                <div>
                                                    <h3>Primary</h3>
                                                    <section>
                                                        <div class="row">
                                                            <div class="col-6">
                                                                <h5>Primary</h5>
                                                                <hr style="margin-top: 0 !important; margin-bottom: 8px  !important;">
                                                                <div class="form-row">
                                                                    <div class="form-group col-md-7">
                                                                        <label class="form-label" for="patient_id">Patient <span class="text-danger">*</span></label>
                                                                        <select class="required form-control js-example-placeholder-multiple" id="patient_id" data-placeholder="Select Patient" required name ="patient_id">
                                                                            <option value = "" >--Select--</option>
                                                                            <c:forEach var="patient" items="${patientlist}">
                                                                                <option value = ${patient.ddlpatientid} >${patient.ddlpatient}</option>
                                                                            </c:forEach>
                                                                        </select>
                                                                    </div>                                                                    
                                                                    <div class="form-group col-md-5">
                                                                        <label class="form-label">Practice</label>
                                                                        <input type="text" name="practice" readonly class="form-control" id="practice" />
                                                                    </div>  
                                                                    <div class="form-group col-md-4">
                                                                        <label class="form-label">State</label>
                                                                        <select class="form-control js-example-placeholder-multiple" required id="state" name="state" >
                                                                            <option value = "fav" >Favourites</option>
                                                                            <option value = "OTR" >All Payor List</option>
                                                                        </select>
                                                                    </div>
                                                                    <div class="form-group col-md-8">
                                                                        <label class="form-label" for="payor_id" >Payor <span class="text-danger">*</span></label>
                                                                        <select class="form-control js-example-placeholder-multiple" required id="payor_id" data-placeholder="Select Payor" name="payor_id" >
                                                                            <option value = "" >--Select--</option>
                                                                        </select>
                                                                    </div>

                                                                </div>

                                                                <div class="form-row">
                                                                    <div class="form-group col-md-4" style="display:none;">
                                                                        <label class="form-label">Name on Card <span class="text-danger">*</span> </label>
                                                                        <input type="text" name="name_on_insurance_card"  class="form-control" id="name_on_insurance_card" placeholder="Enter Name on Card" />
                                                                    </div>                                                                    
                                                                    <div class="form-group col-md-6">
                                                                        <label class="form-label">Member ID <span class="text-danger">*</span></label>
                                                                        <input type="text" class="required form-control" name="ins_no" maxlength="48" id ="ins_no" required placeholder="Enter Insurance #"/>
                                                                    </div>
                                                                    <div class="form-group col-md-6">
                                                                        <label class="form-label">Group# </label>
                                                                        <input type="text" class="form-control" id="group_no" maxlength="48" name="group_no" placeholder="Enter Group #"/>
                                                                    </div>
                                                                </div>
                                                                <div class="form-row">                                                                   
                                                                    <div class="form-group col-md-6">
                                                                        <label class="form-label"> Plan </label>
                                                                        <input type="text" class="form-control" id ="plan" name="plan"  placeholder="Enter Plan"/>
                                                                    </div>                                                                    
                                                                    <div class="form-group col-md-6">
                                                                        <label class="form-label"> Effect Date </label>
                                                                        <input type="text" class="form-control"  id="effective_date" name="effective_date" placeholder="Enter Effective Date"/>
                                                                    </div>
                                                                </div>
                                                            </div>

                                                            <div class="col-6" style="background: white;margin-top: -25px;padding-top: 25px;">
                                                                <h5>Secondary</h5>
                                                                <hr style="margin-top: 0 !important; margin-bottom: 8px  !important;">
                                                                <div class="form-row">
                                                                    <div class="form-group col-md-4">
                                                                        <label class="form-label">State</label>
                                                                        <select class="form-control js-example-placeholder-multiple"  required id="sstate" name="sstate" >
                                                                            <option value = "fav" >Favourites</option>
                                                                            <option value = "OTR" >All Payor List</option>
                                                                        </select> 
                                                                    </div>
                                                                    <div class="form-group col-md-8">
                                                                        <label class="form-label" for="sec_payor_id" >Payor</label>
                                                                        <select class="form-control js-example-placeholder-multiple" id="sec_payor_id" data-placeholder="Select Payor" name="sec_payor_id" >
                                                                            <option value = "" >--Select--</option>
                                                                        </select>
                                                                    </div>
                                                                </div>
                                                                <div class="form-row">
                                                                    <div class="form-group col-md-4" style="display:none;">
                                                                        <label class="form-label">Name on Card </label>
                                                                        <input type="text" name="sec_name_on_insurance_card" class="form-control" id="sec_name_on_insurance_card" placeholder="Enter Name on Card" />
                                                                    </div>
                                                                    <div class="form-group col-md-6">
                                                                        <label class="form-label">Member ID </label>
                                                                        <input type="text" class="form-control" name="sec_ins_no" maxlength="48" id ="sec_ins_no" placeholder="Enter Insurance #"/>
                                                                    </div>
                                                                    <div class="form-group col-md-6">
                                                                        <label class="form-label">Group# </label>
                                                                        <input type="text" class="form-control" id="sec_group_no" maxlength="48" name="sec_group_no" placeholder="Enter Group #"/>
                                                                    </div>
                                                                </div>
                                                                <div class="form-row">
                                                                    <div class="form-group col-md-6">
                                                                        <label class="form-label"> Plan</label>
                                                                        <input type="text" class="form-control" id ="sec_plan" name="sec_plan" placeholder="Enter Plan"/>
                                                                    </div>
                                                                    <div class="form-group col-md-6">
                                                                        <label class="form-label"> Effect Date </label>
                                                                        <input type="text" class="form-control"  id="sec_effective_date" name="sec_effective_date"  placeholder="Enter Effective Date"/>
                                                                    </div>
                                                                </div>

                                                            </div>

                                                        </div>
                                                        <p>(<span class="text-danger">*</span>) Mandatory</p>
                                                    </section>

                                                    <h3>Tertiary</h3>
                                                    <section>
                                                        <div class="row">
                                                            <div class="col-sm-4">  
                                                                <div class="form-group">
                                                                    <label class="form-label">State</label>
                                                                    <select class="form-control js-example-placeholder-multiple" required id="tstate" name="tstate" >
                                                                        <option value = "fav" >Favourites</option>
                                                                        <option value = "OTR" >All Payor List</option>
                                                                    </select> 
                                                                </div>
                                                            </div>

                                                            <div class="col-sm-4">
                                                                <div class="form-group">
                                                                    <label class="form-label" for="ter_payor_id" >Payor </label>
                                                                    <select class="form-control js-example-placeholder-multiple"  id="ter_payor_id" data-placeholder="Select Payor" name="ter_payor_id" >

                                                                        <!--  <c:forEach var="benefits" items="${payorlist}">
                                                                              <option value = ${benefits.payorid} >${benefits.payor}</option>
                                                                        </c:forEach> -->
                                                                    </select>
                                                                </div>
                                                            </div>
                                                            <div class="col-sm-4" style="display:none;">
                                                                <div class="form-group">
                                                                    <label class="form-label">Name on Card  </label>
                                                                    <input type="text" name="ter_name_on_insurance_card" class="form-control" id="ter_name_on_insurance_card" placeholder="Enter Name on Card" />
                                                                </div>
                                                            </div>
                                                            <div class="col-md-4">
                                                                <div class="form-group">
                                                                    <label class="form-label">Member ID </label>
                                                                    <input type="text" class="form-control" name="ter_ins_no" maxlength="48" id ="ter_ins_no" placeholder="Enter Insurance #"/>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-4">
                                                                <div class="form-group">
                                                                    <label class="form-label">Group# </label>
                                                                    <input type="text" class="form-control" id="ter_group_no"  maxlength="48" name="ter_group_no" placeholder="Enter Group #">
                                                                </div>
                                                            </div>
                                                            <div class="col-md-4">
                                                                <div class="form-group">
                                                                    <label class="form-label"> Plan </label>
                                                                    <input type="text" class="form-control" id ="ter_plan" name="ter_plan"  placeholder="Enter Plan"/>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-4">
                                                                <div class="form-group">
                                                                    <label class="form-label"> Effect Date </label>
                                                                    <input type="text" class="form-control" id="ter_effective_date"  name="ter_effective_date"  placeholder="Enter Effective Date" />
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


            $('#effective_date').datepicker({
                format: "mm/dd/yyyy",
                autoclose: true,
                orientation: "bottom left",
                endDate: "0",
                startDate: "01/01/1900"
            }).mask('99/99/9999');
            $('#ter_effective_date').datepicker({
                format: "mm/dd/yyyy",
                autoclose: true,
                orientation: "bottom left",
                endDate: "0",
                startDate: "01/01/1900"
            }).mask('99/99/9999');
            $('#sec_effective_date').datepicker({
                format: "mm/dd/yyyy",
                autoclose: true,
                orientation: "bottom left",
                endDate: "0",
                startDate: "01/01/1900" 
            }).mask('99/99/9999');
 
            $('#flading').hide();
            $('#name_on_insurance_card').keydown(function (e) {
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
            $('#sec_name_on_insurance_card').keydown(function (e) {
                if (e.shiftKey || e.ctrlKey || e.altKey) {
                    //   e.preventDefault();
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
            $('#ter_name_on_insurance_card').keydown(function (e) {
                if (e.shiftKey || e.ctrlKey || e.altKey) {
                    //e.preventDefault();
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
            $('#ins_no').keypress(function (e) {
                // alert('muthu');
                var k;
                document.all ? k = e.keyCode : k = e.which;
                return ((k > 64 && k < 91) || (k > 96 && k < 123) || k == 8 || k == 32 || (k >= 48 && k <= 57));
            });
            $('#sec_ins_no').keypress(function (e) {
                // alert('muthu');
                var k;
                document.all ? k = e.keyCode : k = e.which;
                return ((k > 64 && k < 91) || (k > 96 && k < 123) || k == 8 || k == 32 || (k >= 48 && k <= 57));
            });
            $('#ter_ins_no').keypress(function (e) {
                // alert('muthu');
                var k;
                document.all ? k = e.keyCode : k = e.which;
                return ((k > 64 && k < 91) || (k > 96 && k < 123) || k == 8 || k == 32 || (k >= 48 && k <= 57));
            });
           

            var patientid = GetParameterValues('patientid');
            var practiceid = GetParameterValues('practiceid');
            /*  $.ajax({
             url: "getstatelist",
             type: "get", //send it through get method
             success: function (response) {
             var select = $('#state');
             var sselect = $('#sstate');
             var tselect = $('#tstate');
             select.find('option').remove();
             sselect.find('option').remove();
             tselect.find('option').remove();
             
             console.log(response);
             var txt = response;
             var obj = jQuery.parseJSON(txt);
             console.log(obj);
             if (obj.length > 0)
             {
             for (var i = 0; i < obj.length; i++)
             {
             $('<option>').val(obj[i].code).text(obj[i].state + ' [' + obj[i].code + '] ').appendTo(select);
             $('<option>').val(obj[i].code).text(obj[i].state + ' [' + obj[i].code + '] ').appendTo(sselect);
             $('<option>').val(obj[i].code).text(obj[i].state + ' [' + obj[i].code + '] ').appendTo(tselect);
             }
             }
             }
             }); */

            if (typeof (patientid) === 'undefined')
            {
                patientid = 0;
            }
            // alert(patientid);
            if (patientid !== '0')
            {
                var patid = patientid;
                if (patid !== '')
                {

                    $("#patient_id").val(patid);
                    var patientid = patid;
                    $.get('getPatientInsuranceDetail', {
                        patientid: patientid
                    }, function (response) {

                        if (response !== "")
                        {
                            var txt = response;
                            var obj = jQuery.parseJSON(txt);
                            console.log(obj);
                            if (obj.length > 0)
                            {
                                for (var i = 0; i < obj.length; i++)
                                {

                                    $('#name_on_insurance_card').val(obj[i].name_on_insurance_card);
                                    $('#ins_no').val(obj[i].ins_no);
                                    $('#group_no').val(obj[i].group_no);
                                    $('#plan').val(obj[i].plan);
                                    if (obj[i].effective_date !== '1900-01-01')
                                    {
                                        $('#effective_date').val(dateFormat(obj[i].effective_date));
                                        $('#effective_date').datepicker("setDate", new Date(dateFormat(obj[i].effective_date))).mask('99/99/9999');
                                    }
                                    $('#sec_name_on_insurance_card').val(obj[i].sec_name_on_insurance_card);
                                    $('#sec_ins_no').val(obj[i].sec_ins_no);
                                    $('#sec_group_no').val(obj[i].sec_group_no);
                                    $('#sec_plan').val(obj[i].sec_plan);
                                    if (obj[i].sec_effective_date !== '1900-01-01')
                                    {
                                        $('#sec_effective_date').val(dateFormat(obj[i].sec_effective_date));
                                        $('#sec_effective_date').datepicker("setDate", new Date(dateFormat(obj[i].sec_effective_date))).mask('99/99/9999');
                                    }

                                    $('#ter_name_on_insurance_card').val(obj[i].ter_name_on_insurance_card);
                                    $('#ter_ins_no').val(obj[i].ter_ins_no);
                                    $('#ter_group_no').val(obj[i].ter_group_no);
                                    $('#ter_plan').val(obj[i].ter_plan);
                                    if (obj[i].ter_effective_date !== '1900-01-01')
                                    {
                                        $('#ter_effective_date').val(dateFormat(obj[i].ter_effective_date));
                                        $('#ter_effective_date').datepicker("setDate", new Date(dateFormat(obj[i].ter_effective_date))).mask('99/99/9999');
                                    }

                                    var statecode = obj[i].payor_state;
                                    // console.log(statecode);
                                    $('#state').val(statecode);
                                    $('#select2-state-container').text(statecode);
                                    $('#sstate').val(statecode);
                                    $('#select2-sstate-container').text(statecode);
                                    $('#tstate').val(statecode);
                                    $('#select2-tstate-container').text(statecode);
                                    // var statecode = $("select#state").val();
                                    var practiceid = obj[i].practiceid;
                                    statecode = statecode + "-" + practiceid;
                                    $('#practice').val(obj[i].practice);
                                    var pri = obj[i].payor_id;
                                    var sec = obj[i].sec_payor_id;
                                    var tri = obj[i].ter_payor_id;
                                    //Payor
                                    $.ajax({
                                        url: "getStatecode",
                                        type: "get", //send it through get method
                                        data: {
                                            statecode: statecode
                                        },
                                        success: function (response) {
                                            var select = $('#payor_id');
                                            var select1 = $('#sec_payor_id');
                                            var select2 = $('#ter_payor_id');
                                            select.find('option').remove();
                                            select1.find('option').remove();
                                            select2.find('option').remove();
                                            $('<option>').val("").text("--Select--").appendTo(select);
                                            $('<option>').val("").text("--Select--").appendTo(select1);
                                            $('<option>').val("").text("--Select--").appendTo(select2);
                                            console.log(response);
                                            var txt = response;
                                            var obj = jQuery.parseJSON(txt);
                                            console.log(obj);
                                            if (obj.length > 0)
                                            {
                                                for (var i = 0; i < obj.length; i++)
                                                {
                                                    // var sv = value.split('~');
                                                    $('<option>').val(obj[i].payor_id).text(obj[i].name).appendTo(select);
                                                    $('<option>').val(obj[i].payor_id).text(obj[i].name).appendTo(select1);
                                                    $('<option>').val(obj[i].payor_id).text(obj[i].name).appendTo(select2);
                                                }

                                                $('#payor_id').val(pri); // 1
                                                $('#sec_payor_id').val(sec); // 8
                                                $('#ter_payor_id').val(tri); // 16
                                            }
                                        }
                                    });
                                }
                            }
                            $('#flading').hide();
                        } else
                        {
                            // $('#payor_id').val("");
                            $('#name_on_insurance_card').val("");
                            $('#ins_no').val("");
                            $('#group_no').val("");
                            $('#plan').val("");
                            $('#effective_date').val("");
                            // $('#sec_payor_id').val("");
                            $('#sec_name_on_insurance_card').val("");
                            $('#sec_ins_no').val("");
                            $('#sec_group_no').val("");
                            $('#sec_plan').val("");
                            $('#sec_effective_date').val("");
                            // $('#ter_payor_id').val("");
                            $('#ter_name_on_insurance_card').val("");
                            $('#ter_ins_no').val("");
                            $('#ter_group_no').val("");
                            $('#ter_plan').val("");
                            $('#ter_effective_date').val("");
                            $('#state').val('fav');
                            $('#sstate').val('fav');
                            $('#tstate').val('fav');
                            $('#select2-state-container').text("Favourites");
                            $('#select2-sstate-container').text("Favourites");
                            $('#select2-tstate-container').text("Favourites");
                            //Payor
                            $.ajax({
                                url: "getpayorlistwithpatid",
                                type: "get", //send it through get method
                                data: {
                                    payorlistwithpatid: $("#patient_id").val()
                                },
                                success: function (response) {
                                    var select = $('#payor_id');
                                    var select1 = $('#sec_payor_id');
                                    var select2 = $('#ter_payor_id');
                                    select.find('option').remove();
                                    select1.find('option').remove();
                                    select2.find('option').remove();
                                    console.log(response);
                                    var txt = response;
                                    var obj = jQuery.parseJSON(txt);
                                    console.log(obj);
                                    if (obj.length > 0)
                                    {
                                        for (var i = 0; i < obj.length; i++)
                                        {
                                            // var sv = value.split('~');
                                            $('<option>').val(obj[i].payor_id).text(obj[i].name).appendTo(select);
                                            $('<option>').val(obj[i].payor_id).text(obj[i].name).appendTo(select1);
                                            $('<option>').val(obj[i].payor_id).text(obj[i].name).appendTo(select2);
                                        }

                                    }
                                }
                            });
                        }
                    });
                }
            } else
            {

                $("#patient_id option:last").attr("selected", "selected");
            }


            $("form").submit(function () {

                // alert($('#payor_id').val());

            });
            //alert(rid);
            //EV Response
            $('#patient_id').change(function (event) {
                var patientid = $("select#patient_id").val();
                $('#flading').show();
                // alert(patientid);
                if (patientid !== '')
                {
                    $.get('getPatientInsuranceDetail', {
                        patientid: patientid
                    }, function (response) {

                        if (response !== "")
                        {

                            var txt = response;
                            var obj = jQuery.parseJSON(txt);
                            console.log(obj);
                            if (obj.length > 0)
                            {
                                for (var i = 0; i < obj.length; i++)
                                {

                                    $('#name_on_insurance_card').val(obj[i].name_on_insurance_card);
                                    $('#ins_no').val(obj[i].ins_no);
                                    $('#group_no').val(obj[i].group_no);
                                    $('#plan').val(obj[i].plan);
                                    if (obj[i].effective_date !== '1900-01-01')
                                    {
                                       // $('#effective_date').val(obj[i].effective_date);
                                        $('#effective_date').val(dateFormat(obj[i].effective_date));
                                        $('#effective_date').datepicker("setDate", new Date(dateFormat(obj[i].effective_date))).mask('99/99/9999');
                                    }
                                    $('#sec_name_on_insurance_card').val(obj[i].sec_name_on_insurance_card);
                                    $('#sec_ins_no').val(obj[i].sec_ins_no);
                                    $('#sec_group_no').val(obj[i].sec_group_no);
                                    $('#sec_plan').val(obj[i].sec_plan);
                                    if (obj[i].sec_effective_date !== '1900-01-01')
                                    {
                                       // $('#sec_effective_date').val(obj[i].sec_effective_date);
                                        $('#sec_effective_date').val(dateFormat(obj[i].sec_effective_date));
                                        $('#sec_effective_date').datepicker("setDate", new Date(dateFormat(obj[i].sec_effective_date))).mask('99/99/9999');                                        
                                    }

                                    $('#ter_name_on_insurance_card').val(obj[i].ter_name_on_insurance_card);
                                    $('#ter_ins_no').val(obj[i].ter_ins_no);
                                    $('#ter_group_no').val(obj[i].ter_group_no);
                                    $('#ter_plan').val(obj[i].ter_plan);
                                    if (obj[i].ter_effective_date !== '1900-01-01')
                                    {
                                       // $('#ter_effective_date').val(obj[i].ter_effective_date);
                                        $('#ter_effective_date').val(dateFormat(obj[i].ter_effective_date));
                                        $('#ter_effective_date').datepicker("setDate", new Date(dateFormat(obj[i].ter_effective_date))).mask('99/99/9999');  
                                    }

                                    var statecode = "fav";
                                    // console.log(statecode);
                                    $('#state').val(statecode);
                                    $('#select2-state-container').text(statecode);
                                    $('#sstate').val(statecode);
                                    $('#select2-sstate-container').text(statecode);
                                    $('#tstate').val(statecode);
                                    $('#select2-tstate-container').text(statecode);
                                    // var statecode = $("select#state").val();
                                    var practiceid = obj[i].practiceid;
                                    statecode = statecode + "-" + practiceid;
                                    $('#practice').val(obj[i].practice);
                                    var pri = obj[i].payor_id;
                                    var sec = obj[i].sec_payor_id;
                                    var tri = obj[i].ter_payor_id;
                                    //Payor
                                    $.ajax({
                                        url: "getStatecode",
                                        type: "get", //send it through get method
                                        data: {
                                            statecode: statecode
                                        },
                                        success: function (response) {
                                            var select = $('#payor_id');
                                            var select1 = $('#sec_payor_id');
                                            var select2 = $('#ter_payor_id');
                                            select.find('option').remove();
                                            select1.find('option').remove();
                                            select2.find('option').remove();
                                            $('<option>').val("").text("--Select--").appendTo(select);
                                            $('<option>').val("").text("--Select--").appendTo(select1);
                                            $('<option>').val("").text("--Select--").appendTo(select2);
                                            console.log(response);
                                            var txt = response;
                                            var obj = jQuery.parseJSON(txt);
                                            console.log(obj);
                                            if (obj.length > 0)
                                            {
                                                for (var i = 0; i < obj.length; i++)
                                                {
                                                    // var sv = value.split('~');
                                                    $('<option>').val(obj[i].payor_id).text(obj[i].name).appendTo(select);
                                                    $('<option>').val(obj[i].payor_id).text(obj[i].name).appendTo(select1);
                                                    $('<option>').val(obj[i].payor_id).text(obj[i].name).appendTo(select2);
                                                }

                                                if (pri !== "0")
                                                {
                                                    $('#payor_id').val(pri);
                                                } else
                                                {
                                                    $('#payor_id').val('');
                                                }
                                                if (sec !== "0")
                                                {

                                                    $('#sec_payor_id').val(sec);
                                                } else
                                                {
                                                    $('#sec_payor_id').val('');
                                                }

                                                if (tri !== "0")
                                                {
                                                    $('#ter_payor_id').val(tri);
                                                } else
                                                {
                                                    $('#ter_payor_id').val('');
                                                }

                                                $('#flading').hide();
                                            } else
                                            {
                                                $('#flading').hide();
                                            }
                                        }
                                    });
                                }
                            } else
                            {

                                $('#payor_id').val("");
                                $('#name_on_insurance_card').val("");
                                $('#ins_no').val("");
                                $('#group_no').val("");
                                $('#plan').val("");
                                $('#effective_date').val("");
                                $('#sec_payor_id').val("");
                                $('#sec_name_on_insurance_card').val("");
                                $('#sec_ins_no').val("");
                                $('#sec_group_no').val("");
                                $('#sec_plan').val("");
                                $('#sec_effective_date').val("");
                                $('#ter_payor_id').val("");
                                $('#ter_name_on_insurance_card').val("");
                                $('#ter_ins_no').val("");
                                $('#ter_group_no').val("");
                                $('#ter_plan').val("");
                                $('#ter_effective_date').val("");
                                //Practice
                                $.ajax({
                                    url: "practicewtpatientid",
                                    type: "get", //send it through get method
                                    data: {
                                        practicewtpatientid: $("#patient_id").val()
                                    },
                                    success: function (response) {
                                        console.log(response);
                                        var txt = response;
                                        var obj = jQuery.parseJSON(txt);
                                        console.log(obj);
                                        if (obj.length > 0)
                                        {
                                            $('#practice').val(obj[0].name);
                                        }
                                    }
                                });
                                //Payor
                                $.ajax({
                                    url: "getpayorlistwithpatid",
                                    type: "get", //send it through get method
                                    data: {
                                        payorlistwithpatid: $("#patient_id").val()
                                    },
                                    success: function (response) {
                                        var select = $('#payor_id');
                                        var select1 = $('#sec_payor_id');
                                        var select2 = $('#ter_payor_id');
                                        select.find('option').remove();
                                        select1.find('option').remove();
                                        select2.find('option').remove();
                                        console.log(response);
                                        var txt = response;
                                        var obj = jQuery.parseJSON(txt);
                                        console.log(obj);
                                        if (obj.length > 0)
                                        {
                                            for (var i = 0; i < obj.length; i++)
                                            {
                                                // var sv = value.split('~');
                                                $('<option>').val(obj[i].payor_id).text(obj[i].name).appendTo(select);
                                                $('<option>').val(obj[i].payor_id).text(obj[i].name).appendTo(select1);
                                                $('<option>').val(obj[i].payor_id).text(obj[i].name).appendTo(select2);
                                            }
                                            $('#flading').hide();
                                        } else
                                        {
                                            $('#flading').hide();
                                        }
                                    }
                                });
                                $('#flading').hide();
                            }
                            $('#flading').hide();
                        } else
                        {
                            // $('#payor_id').val("");
                            $('#name_on_insurance_card').val("");
                            $('#ins_no').val("");
                            $('#group_no').val("");
                            $('#plan').val("");
                            $('#effective_date').val("");
                            //  $('#sec_payor_id').val("");
                            $('#sec_name_on_insurance_card').val("");
                            $('#sec_ins_no').val("");
                            $('#sec_group_no').val("");
                            $('#sec_plan').val("");
                            $('#sec_effective_date').val("");
                            //  $('#ter_payor_id').val("");
                            $('#ter_name_on_insurance_card').val("");
                            $('#ter_ins_no').val("");
                            $('#ter_group_no').val("");
                            $('#ter_plan').val("");
                            $('#ter_effective_date').val("");
                            $('#state').val('fav');
                            $('#sstate').val('fav');
                            $('#tstate').val('fav');
                            $('#select2-state-container').text("Favourites");
                            $('#select2-sstate-container').text("Favourites");
                            $('#select2-tstate-container').text("Favourites");
                            //Practice
                            $.ajax({
                                url: "practicewtpatientid",
                                type: "get", //send it through get method
                                data: {
                                    practicewtpatientid: $("#patient_id").val()
                                },
                                success: function (response) {
                                    console.log(response);
                                    var txt = response;
                                    var obj = jQuery.parseJSON(txt);
                                    console.log(obj);
                                    if (obj.length > 0)
                                    {
                                        $('#practice').val(obj[0].name);
                                    }
                                }
                            });
                            //Payor
                            $.ajax({
                                url: "getpayorlistwithpatid",
                                type: "get", //send it through get method
                                data: {
                                    payorlistwithpatid: $("#patient_id").val()
                                },
                                success: function (response) {
                                    var select = $('#payor_id');
                                    var select1 = $('#sec_payor_id');
                                    var select2 = $('#ter_payor_id');
                                    select.find('option').remove();
                                    select1.find('option').remove();
                                    select2.find('option').remove();
                                    console.log(response);
                                    var txt = response;
                                    var obj = jQuery.parseJSON(txt);
                                    console.log(obj);
                                    if (obj.length > 0)
                                    {
                                        for (var i = 0; i < obj.length; i++)
                                        {
                                            // var sv = value.split('~');
                                            $('<option>').val(obj[i].payor_id).text(obj[i].name).appendTo(select);
                                            $('<option>').val(obj[i].payor_id).text(obj[i].name).appendTo(select1);
                                            $('<option>').val(obj[i].payor_id).text(obj[i].name).appendTo(select2);
                                        }
                                        $('#flading').hide();
                                    } else
                                    {
                                        $('#flading').hide();
                                    }
                                }
                            });
                        }
                    });
                } else
                {
                    $('#payor_id').val("");
                    $('#name_on_insurance_card').val("");
                    $('#ins_no').val("");
                    $('#group_no').val("");
                    $('#plan').val("");
                    $('#effective_date').val("");
                    $('#sec_payor_id').val("");
                    $('#sec_name_on_insurance_card').val("");
                    $('#sec_ins_no').val("");
                    $('#sec_group_no').val("");
                    $('#sec_plan').val("");
                    $('#sec_effective_date').val("");
                    $('#ter_payor_id').val("");
                    $('#ter_name_on_insurance_card').val("");
                    $('#ter_ins_no').val("");
                    $('#ter_group_no').val("");
                    $('#ter_plan').val("");
                    $('#ter_effective_date').val("");
                    $('#flading').hide();
                }
            });
            $('#state').change(function (event) {

                $('#flading').show();
                var statecode = $("select#state").val();
                var patientid = $("select#patient_id").val();
                //  alert(patientid);
                $.get('getPatientInsuranceDetail', {
                    patientid: patientid
                }, function (response) {

                    if (response !== "")
                    {
                        var txt = response;
                        var obj = jQuery.parseJSON(txt);
                        console.log(obj);
                        if (obj.length > 0)
                        {
                            for (var i = 0; i < obj.length; i++)
                            {
                                statecode = statecode + "-" + obj[i].practiceid;
                                console.log(statecode);
                                var payorid = obj[i].payor_id;
                                //Payor
                                $.ajax({
                                    url: "getStatecode",
                                    type: "get", //send it through get method
                                    data: {
                                        statecode: statecode
                                    },
                                    success: function (response) {
                                        var select = $('#payor_id');
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
                                                // var sv = value.split('~');
                                                $('<option>').val(obj[i].payor_id).text(obj[i].name).appendTo(select);
                                            }
                                            $('#payor_id').val(payorid);
                                            $('#flading').hide();
                                        } else
                                        {
                                            $('#flading').hide();
                                        }
                                    }
                                });
                            }
                        } else
                        {
                            $.ajax({
                                url: "getStatecodewithpatient",
                                type: "get", //send it through get method
                                data: {
                                    Statecodewithpatient: statecode + "-" + patientid
                                },
                                success: function (response) {
                                    var select = $('#payor_id');
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
                                            // var sv = value.split('~');
                                            $('<option>').val(obj[i].payor_id).text(obj[i].name).appendTo(select);
                                        }
                                        $('#flading').hide();
                                    } else
                                    {
                                        $('#flading').hide();
                                    }
                                }
                            });
                            $('#flading').hide();
                        }
                        $('#flading').hide();
                    } else
                    {

                        //Payor

                        $.ajax({
                            url: "getStatecodewithpatient",
                            type: "get", //send it through get method
                            data: {
                                Statecodewithpatient: statecode + "-" + patientid
                            },
                            success: function (response) {
                                var select = $('#payor_id');
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
                                        // var sv = value.split('~');
                                        $('<option>').val(obj[i].payor_id).text(obj[i].name).appendTo(select);
                                    }
                                    $('#flading').hide();
                                } else
                                {
                                    $('#flading').hide();
                                }
                            }
                        });
                    }
                });
            });
            $('#sstate').change(function (event) {
                $('#flading').show();
                var statecode = $("select#sstate").val();
                var patientid = $("select#patient_id").val();
                $.get('getPatientInsuranceDetail', {
                    patientid: patientid
                }, function (response) {

                    if (response !== "")
                    {

                        var txt = response;
                        var obj = jQuery.parseJSON(txt);
                        console.log(obj);
                        if (obj.length > 0)
                        {
                            for (var i = 0; i < obj.length; i++)
                            {
                                statecode = statecode + "-" + obj[i].practiceid;
                                console.log(statecode);
                                var secpayorid = obj[i].sec_payor_id;
                                //Payor
                                $.ajax({
                                    url: "getStatecode",
                                    type: "get", //send it through get method
                                    data: {
                                        statecode: statecode
                                    },
                                    success: function (response) {
                                        var select = $('#sec_payor_id');
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
                                                // var sv = value.split('~');
                                                $('<option>').val(obj[i].payor_id).text(obj[i].name).appendTo(select);
                                            }
                                            $('#sec_payor_id').val(secpayorid);
                                            $('#flading').hide();
                                        } else
                                        {
                                            $('#flading').hide();
                                        }
                                    }
                                });
                            }
                        } else
                        {
                            $.ajax({
                                url: "getStatecodewithpatient",
                                type: "get", //send it through get method
                                data: {
                                    Statecodewithpatient: statecode + "-" + patientid
                                },
                                success: function (response) {
                                    var select = $('#sec_payor_id');
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
                                            // var sv = value.split('~');
                                            $('<option>').val(obj[i].payor_id).text(obj[i].name).appendTo(select);
                                        }
                                        $('#flading').hide();
                                    } else
                                    {
                                        $('#flading').hide();
                                    }
                                }
                            });
                            $('#flading').hide();
                        }
                        $('#flading').hide();
                    } else
                    {

                        $.ajax({
                            url: "getStatecodewithpatient",
                            type: "get", //send it through get method
                            data: {
                                Statecodewithpatient: statecode + "-" + patientid
                            },
                            success: function (response) {
                                var select = $('#sec_payor_id');
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
                                        // var sv = value.split('~');
                                        $('<option>').val(obj[i].payor_id).text(obj[i].name).appendTo(select);
                                    }
                                    $('#flading').hide();
                                } else
                                {
                                    $('#flading').hide();
                                }
                            }
                        });
                    }
                });
            });
            $('#tstate').change(function (event) {
                $('#flading').show();
                var statecode = $("select#tstate").val();
                var patientid = $("select#patient_id").val();
                //  alert(patientid);
                $.get('getPatientInsuranceDetail', {
                    patientid: patientid
                }, function (response) {

                    if (response !== "")
                    {

                        var txt = response;
                        var obj = jQuery.parseJSON(txt);
                        console.log(obj);
                        if (obj.length > 0)
                        {
                            for (var i = 0; i < obj.length; i++)
                            {
                                statecode = statecode + "-" + obj[i].practiceid;
                                console.log(statecode);
                                var tripayorid = obj[i].ter_payor_id;
                                //Payor
                                $.ajax({
                                    url: "getStatecode",
                                    type: "get", //send it through get method
                                    data: {
                                        statecode: statecode
                                    },
                                    success: function (response) {
                                        var select = $('#ter_payor_id');
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
                                                // var sv = value.split('~');
                                                $('<option>').val(obj[i].payor_id).text(obj[i].name).appendTo(select);
                                            }
                                            $('#ter_payor_id').val(tripayorid);
                                            $('#flading').hide();
                                        } else
                                        {
                                            $('#flading').hide();
                                        }
                                    }
                                });
                            }
                        } else
                        {
                            $.ajax({
                                url: "getStatecodewithpatient",
                                type: "get", //send it through get method
                                data: {
                                    Statecodewithpatient: statecode + "-" + patientid
                                },
                                success: function (response) {
                                    var select = $('#ter_payor_id');
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
                                            // var sv = value.split('~');
                                            $('<option>').val(obj[i].payor_id).text(obj[i].name).appendTo(select);
                                        }
                                        $('#flading').hide();
                                    } else
                                    {
                                        $('#flading').hide();
                                    }
                                }
                            });
                            $('#flading').hide();
                        }
                        $('#flading').hide();
                    } else
                    {
                        $.ajax({
                            url: "getStatecodewithpatient",
                            type: "get", //send it through get method
                            data: {
                                Statecodewithpatient: statecode + "-" + patientid
                            },
                            success: function (response) {
                                var select = $('#ter_payor_id');
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
                                        // var sv = value.split('~');
                                        $('<option>').val(obj[i].payor_id).text(obj[i].name).appendTo(select);
                                    }
                                    $('#flading').hide();
                                } else
                                {
                                    $('#flading').hide();
                                }
                            }
                        });
                    }
                });
            });
        });
    </script>
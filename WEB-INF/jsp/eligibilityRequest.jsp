<%@page contentType="text/html"  pageEncoding="UTF-8" autoFlush="true"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<html lang="en">

    <head>
        <title>Benefit Request</title>

        <style>
            .datepicker>.datepicker-days {
                display: block;
            }
            .datepicker table tr td.disabled{
                color: darkgray;
            }
            fieldset.scheduler-border {
                border: 1px solid #ddd !important;
                padding: 0 1.4em 1.4em 1.4em !important;
                margin: 0 0 1.5em 0 !important;
                -webkit-box-shadow: 0px 0px 0px 0px #000;
                box-shadow: 0px 0px 0px 0px #000;
                /*margin-top: 30px !important;*/
            }

            legend.scheduler-border {
                font-size: 14px !important;
                /*font-weight: bold !important;*/
                /*text-align: left !important;*/
                width: auto;
                margin: 0 auto;
                float: none;
                /*padding: 0 10px;*/
                /*border-bottom: none;*/
                /*margin-top: -15px;*/
                /*background-color: white;*/
                /*color: black;*/
            }
            .zeropad:form-control-child { 
                padding:0 !important;
                margin-top: 7px !important;
            }

            .inner show{
                max-height: 300px !important;
            }
            .filter-option{
                margin-top: -7px !important;
                margin-bottom: -4px  !important;
            }

            .bootstrap-select{margin: -5px -14px !important; width: 103%;}

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



            /*                a:hover {
                                color: #ffffff !important;
                                outline: none;
                                text-decoration: none;
                            }
            
                            .loader{
                                position: fixed;
                                left: 0px;
                                top: 0px;
                                width: 100%;
                                height: 100%;
                                z-index: 9999;
                                background: url("data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='40' height='40' viewBox='0 0 50 50'%3E%3Cpath d='M28.43 6.378C18.27 4.586 8.58 11.37 6.788 21.533c-1.791 10.161 4.994 19.851 15.155 21.643l.707-4.006C14.7 37.768 9.392 30.189 10.794 22.24c1.401-7.95 8.981-13.258 16.93-11.856l.707-4.006z'%3E%3CanimateTransform attributeType='xml' attributeName='transform' type='rotate' from='0 25 25' to='360 25 25' dur='0.6s' repeatCount='indefinite'/%3E%3C/path%3E%3C/svg%3E") center / 50px no-repeat;
                            }*/

        </style>
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
                                            <form:form method="POST" action="add" id="eligibilityform" modelAttribute="eligibility">
                                                <input type="hidden" class="form-control" value="0"  name="requestid" id="old_reqeustid"  >
                                                <div class="row">
                                                    <div class="col-md-4">
                                                        <div class="form-group">
                                                            <label class="form-label"  for="ddlpractice">Practice <span class="text-danger">*</span></label>
                                                            <select class="form-control js-example-placeholder-multiple col-sm-12" required id="ddlpractice" data-placeholder="Select Practice" tabindex="1" name="ddlpractice">
                                                            </select>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-4">
                                                        <div class="form-group">
                                                            <label class="form-label" for="ddlprovider">Provider </label>
                                                            <select class="form-control js-example-placeholder-multiple" id="ddlprovider" tabindex="2" data-placeholder="Select Provider" name="ddlprovider">
                                                            </select>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-4">
                                                        <div class="form-group">
                                                            <label class="form-label" for="ddlpatient">Patient <span class="text-danger">*</span></label>
                                                            <select class="form-control js-example-placeholder-multiple col-sm-12" required id="ddlpatient" data-placeholder="Select Patient" tabindex="3"  name="ddlpatient" >
                                                                <!-- <option value="0">--Select--</option> -->
                                                            </select>
                                                        </div>					
                                                    </div>	
                                                    <div class="col-md-4">
                                                        <div class="form-group">
                                                            <label class="form-label">Last Name <span class="text-danger">*</span></label>
                                                            <input type="text" class="form-control" required name="lname" tabindex="4" id = "lname"  placeholder="Enter last name">
                                                        </div><!-- comment -->
                                                    </div>
                                                    <div class="col-md-4">
                                                        <div class="form-group">
                                                            <label class="form-label">First Name <span class="text-danger">*</span></label>
                                                            <input type="text" class="form-control" required name="fname" tabindex="5" id ="fname"   placeholder="Enter first name">
                                                        </div>
                                                    </div>
                                                    <div class="col-md-4">
                                                        <div class="form-group">
                                                            <label class="form-label">Middle Name </label>
                                                            <input type="text" class="form-control"  name="mname" id="mname" tabindex="6" placeholder="Enter middle name">
                                                        </div>
                                                    </div>
                                                    <!-- comment -->
                                                    <input type="text" class="form-control"  name="cname" id="cname"  style="display:none;"  placeholder="Enter name on card">
                                                    <div class="col-2">
                                                        <div class="form-group">
                                                            <label class="form-label">DOB <span class="text-danger">*</span></label>
                                                            <input type="text" class="form-control" required name="dob"  tabindex="7"  id="dob" placeholder="Enter DOB"   >
                                                        </div>
                                                    </div>

                                                    <div class="col-2">
                                                        <div class="form-group">
                                                            <label class="form-label" for="ddlgender">Gender <span class="text-danger">*</span></label>   
                                                            <select class="form-control" required name="ddlgender" tabindex="8" id="ddlgender" >
                                                                <option value = "" >--Select--</option>
                                                                <c:forEach var="benefits" items="${genderlist}">
                                                                    <option value = ${benefits.genderid} >${benefits.gender}</option>
                                                                </c:forEach>
                                                            </select>
                                                        </div>
                                                    </div>

                                                    <div class="col-2">
                                                        <div class="form-group">
                                                            <label class="form-label">DVOB</label>
                                                            <input type="text" class="form-control" name="dos" tabindex="9"  id = "dos" placeholder="Enter DOS" >
                                                        </div>
                                                    </div>
                                                    <div class="col-6">
                                                        <div class="form-group zeropad" style="margin-top: 6px;">
                                                            <label class="form-label">Benefit Type</label>
                                                            <select class="col-30px pc-selectpicker " data-dropup-auto="false" data-size="10" required name="ddlbenefittype" tabindex="10" multiple id="ddlbenefittype">
                                                                <c:forEach var="benefits" items="${benefittypelist}">
                                                                    <option value = ${benefits.benefittypeid} >${benefits.benefittype}</option>
                                                                </c:forEach> 
                                                            </select>
                                                        </div>
                                                    </div>
                                                    <!--                                                    <div class="form-group row">
                                                                                                    <label class="col-form-label col-lg-3 col-sm-12 text-lg-right">Multiple Select</label>
                                                                                                    <div class="col-lg-4 col-md-9 col-sm-12">
                                                                                                        <select class="form-control pc-selectpicker" multiple>
                                                                                                            <option>Mustard</option>
                                                                                                            <option>Ketchup</option>
                                                                                                            <option>Relish</option>
                                                                                                        </select>
                                                                                                    </div>
                                                                                                </div>-->




                                                    <!--   <div class="col-lg-4">
                                                        <label class="form-label">Plan Id</label>
                                                       <input type="text" class="form-control"  id="pid" name="pid" tabindex="13" placeholder="Enter your Plan id" >
                                                   </div> -->



                                                    <!--                                                    <div class="col-md-4">    
                                                                                                            <div class="form-group">
                                                                                                                <label class="form-label">State <span class="text-danger">*</span></label>
                                                                                                                <select class="form-control js-example-placeholder-multiple" tabindex="8" required id="state" name="state" >
                                                                                                                    <option value = "fav" >--Favourite--</option>
                                                    <c:forEach var="state" items="${statelist}">
                                                        <option value = ${state.statecode} >${state.state}</option>
                                                    </c:forEach>
                                                </select> 
                                            </div>
                                        </div>-->



                                                    <!--==================================================================================-->
                                                    <div class="container" style="margin-top:10px;">
                                                        <fieldset class="scheduler-border">
                                                            <legend class="scheduler-border">
                                                                <div class="form-row" style="margin-top: 12px;margin-left:12px;margin-right:12px;">
                                                                    <!---------------------------------------------------->                 
                                                                    <div class="form-group d-inline">
                                                                        <div class="radio radio-success d-inline">
                                                                            <input type="radio" name="insurancetype" id="primaryins" value="1" checked>
                                                                            <label for="primaryins" class="cr">Primary</label>
                                                                        </div>
                                                                    </div>
                                                                    <div class="form-group d-inline">
                                                                        <div class="radio radio-success d-inline">
                                                                            <input type="radio" name="insurancetype" id="secondaryins" value="2" >
                                                                            <label id="lblsecondaryins" for="secondaryins" class="cr">Secondary </label>
                                                                        </div>
                                                                    </div>
                                                                    <!----------------------------------------------------->                 
                                                                </div>
                                                            </legend>
                                                            <div class="row">
                                                                <div class="col-12">
                                                                    <div class="form-row">
                                                                        <div class="form-group col-4">
                                                                            <label class="form-label" for="ddlinsurance">Payor List</label>
                                                                            <select class="form-control js-example-placeholder-multiple" tabindex="8" required id="state" name="state" >
                                                                                <option value = "fav" >Favourites</option>
                                                                                <option value = "OTR" >All Payor List</option>
                                                                                <!-- <c:forEach var="state" items="${statelist}">
                                                                                     <option value = ${state.statecode} >${state.state}</option>
                                                                                </c:forEach> -->
                                                                            </select> 
                                                                        </div>
                                                                        <div class="form-group col-4">
                                                                            <div class="form-group">
                                                                                <label class="form-label contentinsu" for="ddlinsurance"><span class="text-danger">*</span></label>
                                                                                <select class="form-control js-example-placeholder-multiple" data-placeholder="Select Insurance" required id="ddlinsurance" tabindex="11" name="ddlinsurance" >

                                                                                </select>
                                                                            </div>
                                                                        </div>
                                                                        <div class="form-group col-4">
                                                                            <label class="form-label contentinsuid"> <span class="text-danger">*</span></label>
                                                                            <input type="text" class="form-control" id="mid" required name="mid" tabindex="12" placeholder="Enter your Member id" >
                                                                        </div>
                                                                        <!--                </div>
                                                                                        <div class="form-row">-->
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </fieldset>
                                                    </div>
                                                    <!--==================================================================================-->                                                    


                                                </div>


                                                <br/>
                                                <div class="row">                                               
                                                    <div class="col-12 text-right">
                                                        <button tabindex="16" id="submiteligibilitybtn"  class="btn btn-rounded btn-greenadd" style="width: 25%">Submit</button>
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
        <div id="flading" class="loader">

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
        $('.pc-selectpicker').selectpicker();
        $('#pid').hide();

        $("#dob").datepicker({
            format: "mm/dd/yyyy",
            autoclose: true,
            orientation: "bottom left",
            endDate: "0",
            startDate: "01/01/1900"
        }).mask('99/99/9999');

        $("#dos").datepicker({
            format: "mm/dd/yyyy",
            autoclose: true,
            orientation: "bottom left",
            endDate: "0",
            startDate: "01/01/1900"
        }).mask('99/99/9999');

        //$('.contentinsu').hide();
        //$('.contentinsuid').hide();
        $('.contentinsu').html('Primary Insurance <span class="text-danger">*</span>');
        $('.contentinsuid').html('Primary Member Id <span class="text-danger">*</span>');

        $('input:radio').click(function () {
            if ($(this).val() === '1') {
                //alert('primary');
                $('#ddlinsurance').val('');
                $('#mid').val('');
                $('.contentinsu').html('Primary Insurance <span class="text-danger">*</span>');
                $('.contentinsuid').html('Primary Member Id <span class="text-danger">*</span>');

                var patientid = $("select#ddlpatient").val();
                //  alert(patientid);

                if (patientid !== '0')
                {

                    $.ajax({
                        url: "getInsDetails",
                        type: "get", //send it through get method
                        data: {
                            patientid: patientid
                        },
                        success: function (response) {

                            var txt = response;
                            var obj = jQuery.parseJSON(txt);
                            console.log(obj);
                            if (obj.length > 0)
                            {
                                for (var i = 0; i < obj.length; i++)
                                {
                                    //  var sv = response.split('~');
                                    // $('#ddlinsurance').val(sv[5].trim());
                                    $('#mid').val(obj[i].ins_no);
                                    $('#ddlinsurance').val(obj[i].payor_id);
                                    $('#ddlinsurance').trigger('change');
                                }
                            }
                        }
                    });

                }
            } else {
                //alert('secondary');
                $('#ddlinsurance').val('');
                $('#mid').val('');
                $('.contentinsuid').html('Secondary Member Id <span class="text-danger">*</span>');
                $('.contentinsu').html('Secondary Insurance <span class="text-danger">*</span>');

                var patientid = $("select#ddlpatient").val();
                //  alert(patientid);

                if (patientid !== '0')
                {

                    $.ajax({
                        url: "getInsDetails",
                        type: "get", //send it through get method
                        data: {
                            patientid: patientid
                        },
                        success: function (response) {
                            var txt = response;
                            var obj = jQuery.parseJSON(txt);
                            console.log(obj);
                            if (obj.length > 0)
                            {
                                for (var i = 0; i < obj.length; i++)
                                {
                                    //  var sv = response.split('~');
                                    // $('#ddlinsurance').val(sv[5].trim());
                                    $('#mid').val(obj[i].sec_ins_no);
                                    $('#ddlinsurance').val(obj[i].sec_payor_id);
                                    $('#ddlinsurance').trigger('change');
                                }
                            }
                        }
                    });

                }
            }
        });



        $(document).ready(function () {



            $('#submiteligibilitybtn').on("click", function (e) {

                // e.preventDefault();
                $('#flading').show();


                if ($('#dos').val() === "")
                {
                    var now = new Date();
                    var day = '';
                    var month = '';
                    if (now.getDate() < 10)
                    {
                        day = '0' + now.getDate();
                    } else
                    {
                        day = now.getDate();
                    }
                    if ((now.getMonth() + 1) < 10)
                    {
                        month = '0' + parseInt(now.getMonth() + 1);
                    } else
                    {
                        month = parseInt(now.getMonth() + 1);
                    }
                    var today = (month) + '/' + day + '/' + now.getFullYear();
                    document.getElementById("dos").value = today;
                    // $('#dos').datepicker("setDate", new Date(dateFormat(response.Response[0].dos.toString()))).mask('99/99/9999');
                    //  document.getElementById("dos").max = today;
                    document.getElementById("dob").max = today;
                }


                //   e.preventDefault();
                $('#ddlpractice').removeAttr('disabled');
                $('#ddlpatient').removeAttr('disabled');
                var firstname = $('#fname').val();
                var lastname = $('#lname').val();
                var dob = $('#dob').val();
                //  alert(dob);
                var practiceid = $('#ddlpractice').val();
                var patientid = $('#ddlpatient').val();

                // alert($('#dos').val());

                //   alert(firstname.length);
                if ($('#ddlpractice').val() === "") {
                    customnotify("top", "right", "", "danger", "", "", "Please Select Practice");
                    $('#flading').hide();
                } else if ($('#fname').val() === "") {
                    customnotify("top", "right", "", "danger", "", "", "Please enter firstname");
                    $('#flading').hide();
                } else if ($('#lname').val() === "") {
                    customnotify("top", "right", "", "danger", "", "", "Please enter lastname");
                    $('#flading').hide();
                } else if ($('#dob').val() === "") {
                    customnotify("top", "right", "", "danger", "", "", "Please enter date of birth");
                    $('#flading').hide();
                } else if ($('#ddlinsurance').val() === "" || $('#ddlinsurance').val() === null) {
                    customnotify("top", "right", "", "danger", "", "", "Please select Insurance");
                    $('#flading').hide();
                } else if ($('#ddlgender').val() === "" || $('#ddlgender').val() === null) {
                    customnotify("top", "right", "", "danger", "", "", "Please select gender");
                    $('#flading').hide();
                } else if ($('#mid').val() === "") {
                    customnotify("top", "right", "", "danger", "", "", "Please enter member id");
                    $('#flading').hide();
                } else {

                    $.ajax({
                        url: "validatePaitent",
                        type: "get", //send it through get method
                        data: {
                            firstname: firstname,
                            lastname: lastname,
                            dob: dob,
                            practiceid: practiceid
                        },
                        success: function (response) {
                            console.log(response);
                            //   console.log(typeof(response));
                            if (patientid === '0') {
                                //  console.log(patientid);
                                if (response === false) {
                                    $('#eligibilityform').submit();
                                    //   console.log(response);
                                } else {
                                    customnotify("top", "right", "", "danger", "", "", "This Patient already exists in our system");
                                    $('#flading').hide();
                                    //alert("This Patient already exists in our system");
                                }
                            } else {
                                $('#eligibilityform').submit();

                            }
                        }
                    });

                    return false;

                }

            });

            //$('button').click();

            $('#flading').show();

            $('#fname').keydown(function (e) {

                if (e.shiftKey || e.ctrlKey || e.altKey) {
                    //e.preventDefault();
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

            $('#lname').keydown(function (e) {

                if (e.shiftKey || e.ctrlKey || e.altKey) {
                    //e.preventDefault();
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

            $('#mname').keydown(function (e) {

                if (e.shiftKey || e.ctrlKey || e.altKey) {
                    //e.preventDefault();
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



            $('#mid').keypress(function (e) {
                // alert('muthu');
                var k;
                document.all ? k = e.keyCode : k = e.which;
                return ((k > 64 && k < 91) || (k > 96 && k < 123) || k == 8 || k == 32 || (k >= 48 && k <= 57));


            });


            var EId = '<%= session.getAttribute("Entityid")%>';
            var requestid = GetParameterValues('rid');

            if (requestid === undefined) {
                $('#old_reqeustid').val(0);
                $('#ddlpractice').removeAttr('disabled');
                $('#ddlpatient').removeAttr('disabled');
                $('#secondaryins').attr('disabled', "true");
                $('#lblsecondaryins').attr('disabled', "true");


                //alert(requestid);
            } else {
                $('#old_reqeustid').val(requestid);
                $('#ddlpractice').attr('disabled', "true");
                $('#ddlpatient').attr('disabled', "true");
                $('#secondaryins').removeAttr('disabled');
                $('#lblsecondaryins').removeAttr('disabled');
            }

            function GetParameterValues(param) {
                var url = window.location.href.slice(window.location.href.indexOf('?') + 1).split('&');
                for (var i = 0; i < url.length; i++) {
                    var urlparam = url[i].split('=');
                    if (urlparam[0] === param) {
                        return urlparam[1];
                    }
                }
            }


            if (typeof (requestid) !== "undefined")
            {

                $.ajax({
                    url: "getbenrequestid",
                    type: "get", //send it through get method
                    data: {
                        benrequestid: requestid
                    },
                    success: function (dbresponse) {
                        var txt = dbresponse;
                        var response = jQuery.parseJSON(txt);

                        console.log(response);
                        var selectedtype = "";
                        var pra = response.Response[0].practiceid_trn02.toString();
                        var pro = response.Response[0].provider_id.toString();
                        var pat = response.Response[0].patient_id.toString();
                        var pay = response.Response[0].payor_id.toString();
                        var MID = response.Response[0].MID.toString();
                        var state = response.Response[0].state.toString();

                        var insurancetype = response.Response[0].insurancetype.toString();
                        if (insurancetype === "2") {
                            $('.contentinsuid').html('Secondary Member Id <span class="text-danger">*</span>');
                            $('.contentinsu').html('Secondary Insurance <span class="text-danger">*</span>');
                            $('#secondaryins').prop("checked", true);
                        } else if (insurancetype === "1") {
                            $('#primaryins').prop("checked", true);
                        }

                        if (EId !== '')
                        {
                            $.ajax({
                                url: "practicedetailswtentityid",
                                type: "get", //send it through get method
                                data: {
                                    Entityid: EId
                                },
                                success: function (response) {
                                    var select = $('#ddlpractice');
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
                                            $('<option>').val(obj[i].practice_id).text(obj[i].name).appendTo(select);
                                        }
                                        $('#ddlpractice').val(pra);

                                        console.log("UT:<%=session.getAttribute("UT")%>:");
                                        var usertype = '<%=session.getAttribute("UT")%>';
                                        var practiceid = '<%=session.getAttribute("practiceid")%>';
        <sec:authorize access="hasAnyRole('ROLE_PRACTICE_STAFF,ROLE_PRACTICE_ADMIN')">
                                        console.log("Practice: " + practiceid);
                                        $('#ddlpractice').val(practiceid);
                                        $('#ddlpractice').attr('disabled', "true");
        </sec:authorize>


                                        $.ajax({
                                            url: "getbenpracticeid",
                                            type: "get", //send it through get method
                                            data: {
                                                benpracticeid: pra
                                            },
                                            success: function (response1) {
                                                console.log(response1);
                                                if (response1.length > 0) {

                                                    var txt1 = response1;
                                                    var obj1 = jQuery.parseJSON(txt1);

                                                    console.log(obj1);
                                                    var parastate = '';

                                                    if (obj1.length > 0)
                                                    {
                                                        for (var i = 0; i < obj1.length; i++)
                                                        {
                                                            console.log(obj1[i].default_group_id);
                                                            var bentype = obj1[i].default_group_id.split(",");
                                                            $('#ddlbenefittype').val(bentype);
                                                            $('#ddlbenefittype').trigger('change');
                                                            //   console.log(obj[i].optionalval);

                                                        }
                                                    } else
                                                    {
                                                        $('#ddlbenefittype').val('25');
                                                        $('#ddlbenefittype').trigger('change');
                                                    }

                                                }

                                            }
                                        });

                                        // console.log(pra);
                                        $.ajax({
                                            url: "providerdetailswtentityid",
                                            type: "get", //send it through get method
                                            data: {
                                                practiceid: pra
                                            },
                                            success: function (response2) {
                                                var select2 = $('#ddlprovider');
                                                select2.find('option').remove();
                                                $('<option>').val("0").text("--Select--").appendTo(select2);
                                                console.log(response2);
                                                var txt2 = response2;
                                                var obj2 = jQuery.parseJSON(txt2);
                                                console.log(obj2);
                                                if (obj2.length > 0)
                                                {
                                                    for (var i = 0; i < obj2.length; i++)
                                                    {
                                                        // var sv = value.split('~');
                                                        $('<option>').val(obj2[i].provider_id).text(obj2[i].first_name).appendTo(select2);
                                                    }
                                                    $('#ddlprovider').val(pro);
                                                }
                                            }
                                        });

                                        $.ajax({
                                            url: "getPatientwtPracticeid",
                                            type: "get", //send it through get method
                                            data: {
                                                practiceid1: pra
                                            },
                                            success: function (response3) {
                                                var select3 = $('#ddlpatient');
                                                select3.find('option').remove();
                                                $('<option>').val("0").text("New Patient").appendTo(select3);
                                                console.log(response3);
                                                var txt3 = response3;
                                                var obj3 = jQuery.parseJSON(txt3);
                                                console.log(obj3);
                                                if (obj3.length > 0)
                                                {
                                                    for (var i = 0; i < obj3.length; i++)
                                                    {
                                                        $('<option>').val(obj3[i].ddlpatientid).text(obj3[i].Patientname).appendTo(select3);
                                                    }
                                                    $('#ddlpatient').val(pat);
                                                }
                                            }
                                        });


                                        var statecode = state;
                                        var practiceid = pra;
                                        statecode = "fav" + "-" + practiceid;
                                        //Payor
                                        $.ajax({
                                            url: "getStatecode",
                                            type: "get", //send it through get method
                                            data: {
                                                statecode: statecode
                                            },
                                            success: function (response4) {
                                                var select4 = $('#ddlinsurance');
                                                select4.find('option').remove();
                                                $('<option>').val("").text("--Select--").appendTo(select4);
                                                console.log(response4);
                                                var txt4 = response4;
                                                var obj4 = jQuery.parseJSON(txt4);
                                                console.log(obj4);
                                                if (obj4.length > 0)
                                                {
                                                    for (var i = 0; i < obj4.length; i++)
                                                    {
                                                        // var sv = value.split('~');
                                                        $('<option>').val(obj4[i].payor_id).text(obj4[i].name).appendTo(select4);
                                                    }
                                                    $('#ddlinsurance').val(pay);
                                                }
                                            }
                                        });

                                        $('#flading').hide();


                                    } else
                                    {
                                        $('#ddlbenefittype').val('25');
                                        $('#ddlbenefittype').trigger('change');
                                    }
                                }
                            });

                            if (response.Response[0].middle_name !== "") {
                                if (response.Response[0].middle_name !== "null" && response.Response[0].middle_name !== "")
                                {
                                    $('#mname').val(response.Response[0].middle_name);

                                } else
                                {
                                    $('#mname').val("");
                                }
                            }

                            $('#fname').val(response.Response[0].first_name);
                            $('#lname').val(response.Response[0].last_name.toString());
                            $('#dob').val(dateFormat(response.Response[0].DOB.toString()));
                            $('#dob').datepicker("setDate", new Date(convertYMDtoMDY(response.Response[0].DOB.toString()))).mask('99/99/9999');

                            $('#ddlgender').val(response.Response[0].gender_id.toString());
                            // $('#ddlinsurance').val(response.Response[0].payor_id.toString());
                            $('#mid').val(MID);
                            if ($('#ddlsinsurance').val() !== "")
                                    //if(primary_mem_id !== secondary_mem_id)
                                    {
                                        // $('#mid1').val(secondary_mem_id);
                                    }

                            $('#dos').val(dateFormat(response.Response[0].dos.toString()));
                            $('#dos').datepicker("setDate", new Date(dateFormat(response.Response[0].dos.toString()))).mask('99/99/9999');

                        }
                    }
                });

            } else
            {

                if (EId !== '')
                {

                    $.ajax({
                        url: "practicedetailswtentityid",
                        type: "get", //send it through get method
                        data: {
                            Entityid: EId
                        },
                        success: function (response) {
                            var select = $('#ddlpractice');
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
                                    $('<option>').val(obj[i].practice_id).text(obj[i].name).appendTo(select);
                                }
                                //alert(entity);
                                console.log("UT:<%=session.getAttribute("UT")%>:");
                                var usertype = '<%=session.getAttribute("UT")%>';
                                var practiceid = '<%=session.getAttribute("practiceid")%>';
                                if (practiceid > 0) {
                                    console.log("Practice: " + practiceid);
                                    $('#ddlpractice').val(practiceid).change();
                                    $('#ddlpractice').attr('disabled', "true");
                                }

                            }
                        }
                    });

                }


                var now = new Date();
                var day = '';
                var month = '';
                if (now.getDate() < 10)
                {
                    day = '0' + now.getDate();
                } else
                {
                    day = now.getDate();
                }
                if ((now.getMonth() + 1) < 10)
                {
                    month = '0' + parseInt(now.getMonth() + 1);
                } else
                {
                    month = parseInt(now.getMonth() + 1);
                }
                var today = (month) + '/' + day + '/' + now.getFullYear();
                document.getElementById("dos").value = today;
                //  document.getElementById("dos").max = today;
                document.getElementById("dob").max = today;

                $('#flading').hide();

            }

            function findValueInArray(value, arr) {
                var result = "-1";

                for (var i = 0; i < arr.length; i++) {
                    var name = arr[i];
                    if (name === value) {
                        result = '0';
                        break;
                    }
                }

                return result;
            }


            $('#ddlpractice').change(function (event) {
                //  $('#ddlbenefittype').val('');
                var practiceid = $("select#ddlpractice").val();
                if (practiceid !== '')
                {
                    //Proviver
                    $("#secondaryins").attr('disabled', true);

                    $.ajax({
                        url: "providerdetailswtentityid",
                        type: "get", //send it through get method
                        data: {
                            practiceid: practiceid
                        },
                        success: function (response) {
                            var select = $('#ddlprovider');
                            select.find('option').remove();
                            $('<option>').val("0").text("--Select--").appendTo(select);
                            console.log(response);
                            var txt = response;
                            var obj = jQuery.parseJSON(txt);
                            console.log(obj);
                            if (obj.length > 0)
                            {
                                for (var i = 0; i < obj.length; i++)
                                {
                                    // var sv = value.split('~');
                                    $('<option>').val(obj[i].provider_id).text(obj[i].first_name).appendTo(select);
                                }

                            }
                        }
                    });

                    //payor
                    $.ajax({
                        url: "getselectpayorlist",
                        type: "get", //send it through get method
                        data: {
                            selectpayorlist: practiceid
                        },
                        success: function (response) {
                            var select = $('#ddlinsurance');
                            var select1 = $('#ddlsinsurance');
                            select.find('option').remove();
                            $('<option>').val("").text("--Select--").appendTo(select);
                            select1.find('option').remove();
                            $('<option>').val("").text("--Select--").appendTo(select1);
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
                                }

                            }
                        }
                    });

                    //Patient

                    $.ajax({
                        url: "getPatientwtPracticeid",
                        type: "get", //send it through get method
                        data: {
                            practiceid1: practiceid
                        },
                        success: function (response) {
                            var select = $('#ddlpatient');
                            select.find('option').remove();
                            $('<option>').val("0").text("New Patient").appendTo(select);
                            console.log(response);
                            var txt = response;
                            var obj = jQuery.parseJSON(txt);
                            console.log(obj);
                            if (obj.length > 0)
                            {
                                for (var i = 0; i < obj.length; i++)
                                {
                                    $('<option>').val(obj[i].ddlpatientid).text(obj[i].Patientname).appendTo(select);
                                }
                            }
                        }
                    });

                    // Benefit Type

                    $.ajax({
                        url: "getbenpracticeid",
                        type: "get", //send it through get method
                        data: {
                            benpracticeid: practiceid
                        },
                        success: function (response1) {

                            console.log(response1);
                            if (response1.length > 0)
                            {

                                var txt = response1;
                                var obj = jQuery.parseJSON(txt);

                                console.log(obj);
                                var parastate = '';

                                if (obj.length > 0)
                                {
                                    for (var i = 0; i < obj.length; i++)
                                    {
                                        console.log(obj[i].default_group_id);
                                        //   console.log(obj[i].optionalval);
                                        var bentype = obj[i].default_group_id.split(",");
                                        $('#ddlbenefittype').val(bentype);
                                        $('#ddlbenefittype').trigger('change');
                                    }
                                } else
                                {
                                    $('#ddlbenefittype').val('25');
                                    $('#ddlbenefittype').trigger('change');
                                }

                            } else
                            {

                                $('#ddlbenefittype').val('25');
                                $('#ddlbenefittype').trigger('change');
                            }

                        }
                    });


                    $('#mname').val("");
                    $('#cname').val("");
                    $('#fname').val("");
                    $('#lname').val("");
                    $('#dob').val("");
                    $('#dos').val("");
                    $('#ddlgender').val("");
                    $('#ddlinsurance').val("");
                    $('#ddlinsurance').trigger('change');
                    $('#ddlsinsurance').val("");
                    $('#ddlsinsurance').trigger('change');
                    $('#mid').val("");
                    $('#pid').val("");


                } else
                {
                    var select = $('#ddlprovider');
                    select.find('option').remove();
                    $('<option>').val("0").text("--Select--").appendTo(select);

                    var select1 = $('#ddlpatient');
                    select1.find('option').remove();
                    $('<option>').val("0").text("New Patient").appendTo(select1);

                    $('#mname').val("");
                    $('#cname').val("");
                    $('#fname').val("");
                    $('#lname').val("");
                    $('#dob').val("");
                    $('#dos').val("");
                    $('#ddlgender').val("");
                    $('#ddlinsurance').val("");
                    $('#ddlinsurance').trigger('change');
                    $('#ddlsinsurance').val("");
                    $('#ddlsinsurance').trigger('change');
                    $('#mid').val("");
                    $('#pid').val("");

                }
            });


            $('#ddlpatient').change(function (event) {
                var patientid = $("select#ddlpatient").val();
                //  alert(patientid);

                if (patientid !== '0')
                {
                    //Proviver
                    $("#secondaryins").removeAttr('disabled');
                    var instype = $("input[name='insurancetype']:checked").val();

                    $.ajax({
                        url: "getInsDetails",
                        type: "get", //send it through get method
                        data: {
                            patientid: patientid
                        },
                        success: function (response) {
                            var txt = response;
                            var obj = jQuery.parseJSON(txt);
                            console.log(obj);
                            if (obj.length > 0)
                            {
                                for (var i = 0; i < obj.length; i++)
                                {
                                    //     var sv = response.split('~');
                                    $('#cname').val(obj[i].name_on_insurance_card);
                                    if (obj[i].mname !== "null" && obj[i].mname !== "")
                                    {
                                        $('#mname').val(obj[i].mname);
                                    } else
                                    {
                                        $('#mname').val("");
                                    }
                                    $('#fname').val(obj[i].fname);
                                    $('#lname').val(obj[i].lname);
                                    $('#dob').val(dateFormat(obj[i].dob));
                                    $('#dob').datepicker("setDate", new Date(convertYMDtoMDY(obj[i].dob))).mask('99/99/9999');
                                    //   alert(dateFormat(obj[i].dob));
                                    $('#ddlgender').val(obj[i].gender_identity);

                                    $('#pid').val(obj[i].plan);
                                    $('#ddlinsurance').val(obj[i].payor_id);
                                    $('#ddlinsurance').trigger('change');
                                    $('#mid').val(obj[i].ins_no);

                                    if (instype === "1") {
                                        $('#ddlinsurance').val(obj[i].payor_id);
                                        $('#ddlinsurance').trigger('change');
                                    } else if (instype === "2") {
                                        //$('#ddlinsurance').val(sv[9].trim());
                                        $('#mid').val(obj[i].sec_ins_no);
                                        $('#ddlinsurance').val(obj[i].sec_payor_id);
                                        $('#ddlinsurance').trigger('change');
                                    }
                                }

                            } else
                            {
                                $('#cname').val("");
                                $('#mname').val("");
                                $('#fname').val("");
                                $('#lname').val("");
                                $('#dob').val("");
                                $('#dos').val("");
                                $('#ddlgender').val("");
                                $('#ddlinsurance').val("");
                                $('#ddlinsurance').trigger('change');
                                $('#mid').val("");
                                $('#pid').val("");
                                $('#ddlsinsurance').val("");
                                $('#ddlsinsurance').trigger('change');
                                $('#mid1').val("");
                            }
                        }
                    });


                } else
                {
                    //var select = $('#ddlpatient');
                    $("#secondaryins").attr('disabled', true);
                    $('#cname').val("");
                    $('#mname').val("");
                    $('#fname').val("");
                    $('#lname').val("");
                    $('#dob').val("");
                    $('#dos').val("");
                    $('#ddlgender').val("");
                    $('#ddlinsurance').val("");
                    $('#ddlinsurance').trigger('change');
                    $('#mid').val("");
                    $('#pid').val("");
                    $('#ddlsinsurance').val("");
                    $('#ddlsinsurance').trigger('change');
                    $('#mid1').val("");
                }
            });


            $('#state').change(function (event) {
                var statecode = $("select#state").val();
                var practiceid = $("select#ddlpractice").val();
                statecode = statecode + "-" + practiceid;
                //Payor
                $.ajax({
                    url: "getStatecode",
                    type: "get", //send it through get method
                    data: {
                        statecode: statecode
                    },
                    success: function (response) {
                        var select = $('#ddlinsurance');
                        var select1 = $('#ddlsinsurance');
                        select.find('option').remove();
                        $('<option>').val("").text("--Select--").appendTo(select);
                        select1.find('option').remove();
                        $('<option>').val("").text("--Select--").appendTo(select1);
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
                            }

                        }
                    }
                });

            });
        });
    </script>   

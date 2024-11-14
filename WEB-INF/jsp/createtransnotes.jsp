<%@page contentType="text/html"  pageEncoding="UTF-8" autoFlush="true"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="en">

    <head>
        <title> Create Notes </title>

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
                                            <form:form method="POST" action="savetransnotesfile" modelAttribute="savetransnotesfile" enctype="multipart/form-data">

                                                <div class="form-group row">



                                                    <div class="col-lg-4">

                                                        <label class="form-label"  for="ddlpractice">Practice<span class="text-danger">*</span></label>

                                                        <select class="form-control js-example-placeholder-multiple" required data-placeholder="Select Practice" id="ddlpractice" name="ddlpractice" >

                                                        </select> 


                                                    </div>

                                                    <div class="col-lg-4">

                                                        <label class="form-label" for="ddlprovider">Provider <span class="text-danger">*</span></label>
                                                        <select class="form-control js-example-placeholder-multiple" required id="ddlprovider" data-placeholder="Select Provider"  name="ddlprovider">

                                                        </select>
                                                        <input type="hidden" class="form-control" name="providername" id = "providername" >
                                                    </div>


                                                    <div class="col-lg-4">

                                                        <label class="form-label"  for="ddltemplate">Template<span class="text-danger">*</span></label>

                                                        <select class="form-control js-example-placeholder-multiple" required data-placeholder="Select Template" id="ddltemplate" name="ddltemplate" >
                                                            <option value = "" >--Select--</option> 
                                                            <!--  <c:forEach var="Transnotes" items="${templatelist}">
  
                                                                  <option value = ${Transnotes.ddltemplate} >${Transnotes.template}</option>
                                                            </c:forEach>  -->
                                                        </select> 

                                                        <input type="hidden" class="form-control" name="templatename" id = "templatename" >
                                                        <input type="hidden" class="form-control" name="radiologyReportId" id = "radiologyReportId" >
                                                    </div>


                                                </div>

                                                <div class="form-group row">



                                                    <div class="col-lg-4">

                                                        <label class="form-label" for="ddlpatient">Patient <span class="text-danger">*</span></label>
                                                        <select class="form-control js-example-placeholder-multiple" data-placeholder="Select Patient" required id="ddlpatient"  name="ddlpatient" >
                                                            <!-- <option value="0">--Select--</option> -->

                                                        </select>

                                                    </div>

                                                    <div class="col-lg-4">

                                                        <label class="form-label">DOS <span class="text-danger">*</span></label>
                                                        <input type="date" class="form-control"  required name="dos" id = "dos"  placeholder="Enter DOS" >

                                                    </div>

                                                </div>


                                                <br/>
                                                <div class="form-group row">                                               

                                                    <div class="col-lg-4 offset-md-4">

                                                        <button type="submit" id="submitid" class="btn btn-rounded btn-greenadd btn-block">Submit</button>
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
        $('.pc-selectpicker').selectpicker();
        $(document).ready(function () {
            var EId = '<%= session.getAttribute("Entityid")%>';
            var practiceid = '<%= session.getAttribute("practiceid")%>';
            var providerid = '<%= session.getAttribute("providerid")%>';

            /*    $("#dos").datepicker({
             format: "mm/dd/yyyy",
             autoclose: true,
             orientation: "bottom left",
             endDate: "0",
             startDate: "01/01/1900"
             }); */


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
            // var today = (month) + '/' + day + '/' + now.getFullYear();
            var today = now.getFullYear() + '-' + (month) + '-' + day;



            var radiologyId = GetParameterValues('rid');
            var practiceId = GetParameterValues('pid');
            var radiologyReportId = GetParameterValues('id');
            var patientId = GetParameterValues('patid');
            var providerId = GetParameterValues('providerid');
            var doo = GetParameterValues('doo');
            $('#radiologyReportId').val(radiologyReportId);

            //  alert(radiologyId);
            //  alert(radiologyReportId);
            if (EId !== '')
            {
                if (typeof (radiologyId) !== 'undefined')
                {
                    $.ajax({
                        url: "practicelistusingradiology",
                        type: "get", //send it through get method
                        data: {
                            radiologyId: radiologyId
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
                                if (practiceid > 0)
                                {
                                    $('#ddlpractice').val(practiceId);
                                    $('#ddlpractice').trigger('change');
                                    //('#ddlpractice').prop('disabled', true);

                                    $.ajax({
                                        url: "providerdetailswtentityid",
                                        type: "get", //send it through get method
                                        data: {
                                            practiceid: practiceId
                                        },
                                        success: function (response) {
                                            var select = $('#ddlprovider');
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
                                                    $('<option>').val(obj[i].provider_id).text(obj[i].first_name).appendTo(select);
                                                }

                                                $('#ddlprovider').val(providerId);
                                                $('#ddlprovider').trigger('change');
                                                var tn = $("#ddlprovider option:selected").text();
                                                $('#providername').val(tn);
                                                //  $('#ddlprovider').prop('disabled', true);
                                            }
                                        }
                                    });
                                    //Patient

                                    $.ajax({
                                        url: "getPatientwtPracticeid",
                                        type: "get", //send it through get method
                                        data: {
                                            practiceid1: practiceId
                                        },
                                        success: function (response) {
                                            var select = $('#ddlpatient');
                                            select.find('option').remove();
                                            $('<option>').val("").text("New Patient").appendTo(select);
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
                                                $('#ddlpatient').val(patientId);
                                                $('#ddlpatient').trigger('change');
                                            }
                                        }
                                    });
                                    // Template

                                    $.ajax({
                                        url: "templatewtpracticeid",
                                        type: "get", //send it through get method
                                        data: {
                                            practiceid: radiologyId
                                        },
                                        success: function (response) {
                                            var select = $('#ddltemplate');
                                            select.find('option').remove();
                                            $('<option>').val("").text("--Select--").appendTo(select);
                                            console.log(response);
                                            var txt = response;
                                            var obj = jQuery.parseJSON(txt);
                                            console.log(obj);
                                            if (obj.length > 0)
                                            {
                                                for (var i = 0; i < obj.length; i++)
                                                {                                                // var sv = value.split('~');
                                                    $('<option>').val(obj[i].ddltemplate).text(obj[i].template).appendTo(select);
                                                }

                                                //  $('#ddlprovider').prop('disabled', true);
                                            }
                                        }
                                    });
                                }
                            }
                        }
                    });

                    $('#ddlpractice').prop('disabled', true);
                    $('#ddlprovider').prop('disabled', true);
                    $('#ddlpatient').prop('disabled', true);
                    document.getElementById("dos").value = convertMDYtoYMD(doo);
                    //  document.getElementById("dos").max = today;
                    document.getElementById("dos").max = convertMDYtoYMD(today);
                    $('#dos').prop('disabled', true);


                } else
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
                                if (practiceid > 0)
                                {
                                    $('#ddlpractice').val(practiceid);
                                    $('#ddlpractice').trigger('change');
                                    //('#ddlpractice').prop('disabled', true);

                                    $.ajax({
                                        url: "providerdetailswtentityid",
                                        type: "get", //send it through get method
                                        data: {
                                            practiceid: practiceid
                                        },
                                        success: function (response) {
                                            var select = $('#ddlprovider');
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
                                                    $('<option>').val(obj[i].provider_id).text(obj[i].first_name).appendTo(select);
                                                }

                                                $('#ddlprovider').val(providerId);
                                                $('#ddlprovider').trigger('change');
                                                var tn = $("#ddlprovider option:selected").text();
                                                $('#providername').val(tn);
                                                //  $('#ddlprovider').prop('disabled', true);
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
                                            $('<option>').val("").text("New Patient").appendTo(select);
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
                                    // Template

                                    $.ajax({
                                        url: "templatewtpracticeid",
                                        type: "get", //send it through get method
                                        data: {
                                            practiceid: practiceid
                                        },
                                        success: function (response) {
                                            var select = $('#ddltemplate');
                                            select.find('option').remove();
                                            $('<option>').val("").text("--Select--").appendTo(select);
                                            console.log(response);
                                            var txt = response;
                                            var obj = jQuery.parseJSON(txt);
                                            console.log(obj);
                                            if (obj.length > 0)
                                            {
                                                for (var i = 0; i < obj.length; i++)
                                                {                                                // var sv = value.split('~');
                                                    $('<option>').val(obj[i].ddltemplate).text(obj[i].template).appendTo(select);
                                                }

                                                //  $('#ddlprovider').prop('disabled', true);
                                            }
                                        }
                                    });
                                }
                            }
                        }
                    });

                    document.getElementById("dos").value = convertMDYtoYMD(today);
                    //  document.getElementById("dos").max = today;
                    document.getElementById("dos").max = convertMDYtoYMD(today);
                }


            }


            $("#submitid").click(function () {
                //    $('#ddlpractice').val(practiceid);
                $('#ddlpractice').prop('disabled', false);
                $('#ddlprovider').prop('disabled', false);
                $('#ddlpatient').prop('disabled', false);
                $('#dos').prop('disabled', false);
            });


            $('#ddlpractice').change(function (event) {
                var practiceid = $("select#ddlpractice").val();
                console.log(practiceid);
                if (practiceid !== '')
                {
                    //Proviver
                    $.ajax({
                        url: "providerdetailswtentityid",
                        type: "get", //send it through get method
                        data: {
                            practiceid: practiceid
                        },
                        success: function (response) {
                            var select = $('#ddlprovider');
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
                                    $('<option>').val(obj[i].provider_id).text(obj[i].first_name).appendTo(select);
                                }

                                $('#ddlprovider').val(providerId);
                                $('#ddlprovider').trigger('change');
                                var tn = $("#ddlprovider option:selected").text();
                                $('#providername').val(tn);
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
                            $('<option>').val("").text("New Patient").appendTo(select);
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

                    if (typeof (radiologyId) !== 'undefined')
                    {
                        $.ajax({
                            url: "templatewtpracticeid",
                            type: "get", //send it through get method
                            data: {
                                practiceid: radiologyId
                            },
                            success: function (response) {
                                var select = $('#ddltemplate');
                                select.find('option').remove();
                                $('<option>').val("").text("--Select--").appendTo(select);
                                console.log(response);
                                var txt = response;
                                var obj = jQuery.parseJSON(txt);
                                console.log(obj);
                                if (obj.length > 0)
                                {
                                    for (var i = 0; i < obj.length; i++)
                                    {                                                // var sv = value.split('~');
                                        $('<option>').val(obj[i].ddltemplate).text(obj[i].template).appendTo(select);
                                    }

                                    //  $('#ddlprovider').prop('disabled', true);
                                }
                            }
                        });
                    } else
                    {
                        $.ajax({
                            url: "templatewtpracticeid",
                            type: "get", //send it through get method
                            data: {
                                practiceid: practiceid
                            },
                            success: function (response) {
                                var select = $('#ddltemplate');
                                select.find('option').remove();
                                $('<option>').val("").text("--Select--").appendTo(select);
                                console.log(response);
                                var txt = response;
                                var obj = jQuery.parseJSON(txt);
                                console.log(obj);
                                if (obj.length > 0)
                                {
                                    for (var i = 0; i < obj.length; i++)
                                    {                                                // var sv = value.split('~');
                                        $('<option>').val(obj[i].ddltemplate).text(obj[i].template).appendTo(select);
                                    }

                                    //  $('#ddlprovider').prop('disabled', true);
                                }
                            }
                        });
                    }


                } else
                {
                    var select = $('#ddlprovider');
                    select.find('option').remove();
                    $('<option>').val("").text("--Select--").appendTo(select);
                    var select1 = $('#ddlpatient');
                    select1.find('option').remove();
                    $('<option>').val("").text("New Patient").appendTo(select1);
                    var select2 = $('#ddltemplate');
                    select2.find('option').remove();
                    $('<option>').val("").text("--Select--").appendTo(select2);
                }
            });
            $('#ddltemplate').change(function (event) {

               
                var tn = $("#ddltemplate option:selected").text();
                // alert(tn);
                $('#templatename').val(tn);
                var tp = $("#ddlprovider option:selected").text();
                // alert(tp);
                $('#providername').val(tp);
            });
            $('#ddlprovider').change(function (event) {

                var tn = $("#ddlprovider option:selected").text();
                // alert(tn);
                $('#providername').val(tn);
            });
            $('#ddlpatient').change(function (event) {

                var tn = $("#ddlprovider option:selected").text();
                // alert(tn);
                $('#providername').val(tn);
            });
        });
    </script>     
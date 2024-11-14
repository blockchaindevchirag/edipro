<%@page contentType="text/html"  pageEncoding="UTF-8" autoFlush="true"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>



<html lang="en">

    <head>
        <title>Smoking History</title>
        <style>
            .wizard > .steps > ul > li {
                width: 20% !important;
                float: left;
            }
            .filter-option{
                margin-top: -7px !important;
                margin-bottom: -4px  !important;
            }

            .bootstrap-select{margin: -5px -14px !important; width: 108%;}

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
        <script>
            var page = {
                bootstrap: 3
            };

            function swap_bs() {
                page.bootstrap = 3;
            }
        </script>
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
                                            <form:form method="POST" id="smokinghistory"  action="updatepatientdemography" modelAttribute="updatepatientdemography">
                                                <div class="form-group row">
                                                    <div class="col-sm-6">
                                                        <div class="form-group">
                                                            <label class="form-label" for="ddlpatient">Patient <span class="text-danger">*</span></label>
                                                            <select class="required form-control js-example-placeholder-multiple col-sm-12" required id="ddlpatient" data-placeholder="Select Patient" name ="ddlpatient">
                                                                <option value = "" >--Select--</option>
                                                                <c:forEach var="patient" items="${patientlist}">
                                                                    <option value = ${patient.ddlpatientid} >${patient.ddlpatient}</option>
                                                                </c:forEach>
                                                            </select>
                                                        </div>
                                                    </div>

                                                    <div class="col-lg-6">
                                                        <label class="form-label">Practice</label>
                                                        <input type="text" name="practice" readonly class="form-control" id="practice" />
                                                    </div>
                                                </div>

                                                <div class="form-group row">

                                                    <div class="col-lg-6">
                                                        <label class="form-label" for="ddlsmoking">Smoking</label>
                                                        <select class="js-example-placeholder-multiple col-sm-12" id="ddlsmoking" name="ddlsmoking" >
                                                            <option value = "0" >--Select--</option>
                                                            <c:forEach var="patient" items="${smokinglist}">
                                                                <option value = ${patient.ddlsmokingid} >${patient.ddlsmoking}</option>
                                                            </c:forEach>
                                                        </select>
                                                    </div>
                                                    <div class="col-lg-6">
                                                        <label class="form-label" for="ddlfsmoking">Frequency</label>
                                                        <select class="js-example-placeholder-multiple col-sm-12" id="ddlfsmoking" name="ddlfsmoking" >
                                                            <option value = "0" >--Select--</option>
                                                            <c:forEach var="patient" items="${fsmokinglist}">
                                                                <option value = ${patient.ddlfsmokingid} >${patient.ddlfsmoking}</option>
                                                            </c:forEach>
                                                        </select>
                                                    </div>

                                                </div>


                                                <div class="form-group row">

                                                    <div class="col-lg-6">
                                                        <label class="form-label">Smoking Start Date</label>
                                                        <input type="text" class="form-control" id="smoking_start"  name="smoking_start"  placeholder="Enter Smoking Start Date">
                                                    </div>
                                                    <div class="col-lg-6">
                                                        <label class="form-label">Smoking End Date</label>
                                                        <input type="text" class="form-control" id ="smoking_end"  name ="smoking_end"  placeholder="Enter Smoking End Date">
                                                    </div>                                                   

                                                </div>

                                                <div class="form-group row">                                   
                                                    <div class="col-lg-6">
                                                        <label class="form-label" for="ddlothertob">Other Tobacco</label>
                                                        <select class="js-example-placeholder-multiple col-sm-12" id="ddlothertob" name = "ddlothertob">
                                                            <option value = "0" >--Select--</option>
                                                            <c:forEach var="patient" items="${othertoblist}">
                                                                <option value = ${patient.ddlothertobid} >${patient.ddlothertob}</option>
                                                            </c:forEach>
                                                        </select>
                                                    </div>

                                                    <div class="col-lg-6">
                                                        <label class="form-label" for="ddlfothertob">Other Tobacco Frequency</label>
                                                        <select class="js-example-placeholder-multiple col-sm-12" id="ddlfothertob" name ="ddlfothertob">
                                                            <option value = "0" >--Select--</option>
                                                            <c:forEach var="patient" items="${otherftoblist}">
                                                                <option value = ${patient.ddlfothertobid} >${patient.ddlfothertob}</option>
                                                            </c:forEach>
                                                        </select>

                                                    </div>

                                                </div>



                                                <div class="form-group row">

                                                    <div class="col-lg-6">
                                                        <label class="form-label">Tobacco Start Date</label>
                                                        <input type="text" class="form-control" id ="tobacco_start"  name="tobacco_start"  placeholder="Enter Tobacco Start Date">
                                                    </div>
                                                    <div class="col-lg-6">
                                                        <label class="form-label">Tobacco End Date</label>
                                                        <input type="text" class="form-control" id = "tobacco_end"  name="tobacco_end"  placeholder="Enter Tobacco End Date" >

                                                    </div>

                                                </div>
                                                <div class="form-group row">
                                                    <div class="col-lg-6">
                                                        <label class="form-label">Last Tobacco user Review Date</label>
                                                        <input type="text" class="form-control" id = "last_tobacco_use_review"  name="last_tobacco_use_review"  placeholder="Enter Last Tobacco user Review Date" >
                                                    </div>
                                                    <div class="col-lg-6">
                                                        <label class="form-label">Comments</label>
                                                        <textarea class="form-control" id = "smoking_comments" name="smoking_comments" style="height:100px" placeholder="Enter Smoking Comments" ></textarea>
                                                    </div>

                                                </div>


                                                <br/>
                                                <div class="form-group row">
                                                    <div class="col-md-3 offset-md-4">
                                                        <button type="submit" class="btn btn-rounded btn-greenadd btn-block" >Submit</button>
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


    <jsp:include page="includes/footer.jsp"></jsp:include>
    <script src="assets/js/plugins/select2.full.min.js"></script>
    <script src="assets/js/pages/form-select-custom.js"></script>
    <script type="text/javascript">
            $(document).ready(function () {

                $('#smoking_start').datepicker({
                    format: "mm/dd/yyyy",
                    autoclose: true,
                    orientation: "bottom left",
                    endDate: "0",
                    startDate: "01/01/1900"
                }).mask('99/99/9999');
                $('#smoking_end').datepicker({
                    format: "mm/dd/yyyy",
                    autoclose: true,
                    orientation: "bottom left",
                    endDate: "0",
                    startDate: "01/01/1900"
                }).mask('99/99/9999');
                $('#tobacco_start').datepicker({
                    format: "mm/dd/yyyy",
                    autoclose: true,
                    orientation: "bottom left",
                    endDate: "0",
                    startDate: "01/01/1900"
                }).mask('99/99/9999');
                $('#tobacco_end').datepicker({
                    format: "mm/dd/yyyy",
                    autoclose: true,
                    orientation: "bottom left",
                    endDate: "0",
                    startDate: "01/01/1900"
                }).mask('99/99/9999');
                $('#last_tobacco_use_review').datepicker({
                    format: "mm/dd/yyyy",
                    autoclose: true,
                    orientation: "bottom left",
                    endDate: "0",
                    startDate: "01/01/1900"
                }).mask('99/99/9999');




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

                document.getElementById("smoking_start").max = today;
                document.getElementById("smoking_end").max = today;
                document.getElementById("tobacco_start").max = today;
                document.getElementById("tobacco_end").max = today;
                document.getElementById("last_tobacco_use_review").max = today;


                function dateformat(st)
                {
                    alert(st);
                    if (st !== "")
                    {
                        var now = new Date(st);
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
                        var today = day + '/' + (month) + '/' + now.getFullYear();
                        alert(today);
                        return today;

                    } else
                    {
                        return '';
                    }
                }


                var patientid = GetParameterValues('patientid');
                if (typeof patientid === 'undefined')
                {
                    patientid = 0;
                }


                if (patientid !== '0')
                {
                    var patid = patientid;
                    if (patid !== '')
                    {
                        // alert(patid);     
                        $("#ddlpatient").val(patid).trigger('change');
                        $.get('getPatientDetail', {
                            patientid: patientid
                        }, function (response) {
                            var txt = response;
                            var obj = jQuery.parseJSON(txt);
                            console.log(obj);
                            if (obj.length > 0)
                            {
                                for (var i = 0; i < obj.length; i++)
                                {
                                    $('#ddlsmoking').val(obj[i].smoking);
                                    $('#ddlsmoking').trigger('change');
                                    $('#ddlfsmoking').val(obj[i].ddlfsmoking);
                                    $('#ddlfsmoking').trigger('change');
                                    // $('#smoking_start').val(obj[i].smoking_start);
                                    $('#smoking_start').val(dateFormat(obj[i].smoking_start));
                                    $('#smoking_start').datepicker("setDate", new Date(dateFormat(obj[i].smoking_start))).mask('99/99/9999');
                                    // $('#smoking_end').val(obj[i].smoking_end);
                                    $('#smoking_end').val(dateFormat(obj[i].smoking_end));
                                    $('#smoking_end').datepicker("setDate", new Date(dateFormat(obj[i].smoking_end))).mask('99/99/9999');
                                    $('#ddlothertob').val(obj[i].othertobacco);
                                    $('#ddlothertob').trigger('change');
                                    $('#ddlfothertob').val(obj[i].ddlfothertob);
                                    $('#ddlfothertob').trigger('change');
                                    // $('#tobacco_start').val(obj[i].tobacco_start);
                                    $('#tobacco_start').val(dateFormat(obj[i].tobacco_start));
                                    $('#tobacco_start').datepicker("setDate", new Date(dateFormat(obj[i].tobacco_start))).mask('99/99/9999');
                                    // $('#tobacco_end').val(obj[i].tobacco_end);
                                    $('#tobacco_end').val(dateFormat(obj[i].tobacco_end));
                                    $('#tobacco_end').datepicker("setDate", new Date(dateFormat(obj[i].tobacco_end))).mask('99/99/9999');
                                    //  $('#last_tobacco_use_review').val(obj[i].last_tobacco_use_review);
                                    $('#last_tobacco_use_review').val(dateFormat(obj[i].last_tobacco_use_review));
                                    $('#last_tobacco_use_review').datepicker("setDate", new Date(dateFormat(obj[i].last_tobacco_use_review))).mask('99/99/9999');
                                    $('#smoking_comments').val(obj[i].smoking_comments);
                                    $('#practice').val(obj[i].ddlpractice);
                                    if ($('#ddlsmoking').val() === "3")
                                    {
                                        $('#ddlfsmoking').val("0");
                                        $('#ddlfsmoking').prop('disabled', true);
                                        $('#smoking_start').val("");
                                        $('#smoking_start').prop('disabled', true);
                                        $('#smoking_end').val("");
                                        $('#smoking_end').prop('disabled', true);
                                    } else
                                    {
                                        $('#ddlfsmoking').prop('disabled', false);
                                        $('#smoking_start').prop('disabled', false);
                                        $('#smoking_end').prop('disabled', false);
                                    }

                                    if ($('#ddlothertob').val() === "12")
                                    {
                                        $('#ddlfothertob').val("0");
                                        $('#ddlfothertob').prop('disabled', true);
                                        $('#tobacco_start').val("");
                                        $('#tobacco_start').prop('disabled', true);
                                        $('#tobacco_end').val("");
                                        $('#tobacco_end').prop('disabled', true);
                                    } else
                                    {
                                        $('#ddlfothertob').prop('disabled', false);
                                        $('#tobacco_start').prop('disabled', false);
                                        $('#tobacco_end').prop('disabled', false);
                                    }
                                }
                            }


                        });


                    }
                }

                $('#ddlpatient').change(function (event) {
                    var patientid = $("select#ddlpatient").val();
                    //  alert(patientid);
                    if (patientid !== '')
                    {
                        // alert(patientid);
                        $.get('getPatientDetail', {
                            patientid: patientid
                        }, function (response) {

                            var txt = response;
                            var obj = jQuery.parseJSON(txt);
                            console.log(obj);
                            if (obj.length > 0)
                            {
                                for (var i = 0; i < obj.length; i++)
                                {
                                    $('#ddlsmoking').val(obj[i].smoking);
                                    $('#ddlsmoking').trigger('change');
                                    $('#ddlfsmoking').val(obj[i].ddlfsmoking);
                                    $('#ddlfsmoking').trigger('change');
                                    // $('#smoking_start').val(obj[i].smoking_start);
                                    $('#smoking_start').val(dateFormat(obj[i].smoking_start));
                                    $('#smoking_start').datepicker("setDate", new Date(dateFormat(obj[i].smoking_start))).mask('99/99/9999');
                                    // $('#smoking_end').val(obj[i].smoking_end);
                                    $('#smoking_end').val(dateFormat(obj[i].smoking_end));
                                    $('#smoking_end').datepicker("setDate", new Date(dateFormat(obj[i].smoking_end))).mask('99/99/9999');
                                    $('#ddlothertob').val(obj[i].othertobacco);
                                    $('#ddlothertob').trigger('change');
                                    $('#ddlfothertob').val(obj[i].ddlfothertob);
                                    $('#ddlfothertob').trigger('change');
                                    //  $('#tobacco_start').val(obj[i].tobacco_start);
                                    $('#tobacco_start').val(dateFormat(obj[i].tobacco_start));
                                    $('#tobacco_start').datepicker("setDate", new Date(dateFormat(obj[i].tobacco_start))).mask('99/99/9999');
                                    //   $('#tobacco_end').val(obj[i].tobacco_end);
                                    $('#tobacco_end').val(dateFormat(obj[i].tobacco_end));
                                    $('#tobacco_end').datepicker("setDate", new Date(dateFormat(obj[i].tobacco_end))).mask('99/99/9999');
                                    //  $('#last_tobacco_use_review').val(obj[i].last_tobacco_use_review);
                                    $('#last_tobacco_use_review').val(dateFormat(obj[i].last_tobacco_use_review));
                                    $('#last_tobacco_use_review').datepicker("setDate", new Date(dateFormat(obj[i].last_tobacco_use_review))).mask('99/99/9999');
                                    $('#smoking_comments').val(obj[i].smoking_comments);
                                    $('#practice').val(obj[i].ddlpractice);

                                    if ($('#ddlsmoking').val() === "3")
                                    {
                                        $('#ddlfsmoking').val("0");
                                        $('#ddlfsmoking').prop('disabled', true);
                                        $('#smoking_start').val("");
                                        $('#smoking_start').prop('disabled', true);
                                        $('#smoking_end').val("");
                                        $('#smoking_end').prop('disabled', true);
                                    } else
                                    {
                                        $('#ddlfsmoking').prop('disabled', false);
                                        $('#smoking_start').prop('disabled', false);
                                        $('#smoking_end').prop('disabled', false);
                                    }

                                    if ($('#ddlothertob').val() === "12")
                                    {
                                        $('#ddlfothertob').val("0");
                                        $('#ddlfothertob').prop('disabled', true);
                                        $('#tobacco_start').val("");
                                        $('#tobacco_start').prop('disabled', true);
                                        $('#tobacco_end').val("");
                                        $('#tobacco_end').prop('disabled', true);
                                    } else
                                    {
                                        $('#ddlfothertob').prop('disabled', false);
                                        $('#tobacco_start').prop('disabled', false);
                                        $('#tobacco_end').prop('disabled', false);
                                    }

                                }
                            }

                        });
                    } else
                    {
                        $('#ddlsmoking').val("0");
                        $('#ddlfsmoking').val("0");
                        $('#smoking_start').val("");
                        $('#smoking_end').val("");
                        $('#ddlothertob').val("0");
                        $('#ddlfothertob').val("0");
                        $('#tobacco_start').val("");
                        $('#tobacco_end').val("");
                        $('#last_tobacco_use_review').val("");
                        $('#smoking_comments').val("");
                        $('#practice').val("");

                    }
                });

                $('#ddlsmoking').change(function () {
                    if ($('#ddlsmoking').val() === "3")
                    {
                        $('#ddlfsmoking').val("0");
                        $('#ddlfsmoking').prop('disabled', true);
                        $('#smoking_start').val("");
                        $('#smoking_start').prop('disabled', true);
                        $('#smoking_end').val("");
                        $('#smoking_end').prop('disabled', true);
                    } else
                    {
                        $('#ddlfsmoking').prop('disabled', false);
                        $('#smoking_start').prop('disabled', false);
                        $('#smoking_end').prop('disabled', false);
                    }

                });

                $('#ddlothertob').change(function () {
                    if ($('#ddlothertob').val() === "12")
                    {
                        $('#ddlfothertob').val("0");
                        $('#ddlfothertob').prop('disabled', true);
                        $('#tobacco_start').val("");
                        $('#tobacco_start').prop('disabled', true);
                        $('#tobacco_end').val("");
                        $('#tobacco_end').prop('disabled', true);
                    } else
                    {
                        $('#ddlfothertob').prop('disabled', false);
                        $('#tobacco_start').prop('disabled', false);
                        $('#tobacco_end').prop('disabled', false);
                    }
                });


                $("form").submit(function () {
                    $('#ddlfsmoking').prop('disabled', false);
                    $('#smoking_start').prop('disabled', false);
                    $('#smoking_end').prop('disabled', false);
                    $('#ddlfothertob').prop('disabled', false);
                    $('#tobacco_start').prop('disabled', false);
                    $('#tobacco_end').prop('disabled', false);
                });

            });
    </script>     
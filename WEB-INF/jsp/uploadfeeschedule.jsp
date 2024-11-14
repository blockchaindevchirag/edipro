<%@page contentType="text/html"  pageEncoding="UTF-8" autoFlush="true"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="en">

    <head>
        <title>Upload Fee Schedule</title>
        <jsp:include page="includes/header.jsp"></jsp:include>
            <!--            <style>
                            a:hover {
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
                            }
            
                            .custom-select, .form-control1 {
                                padding: 10px 16px;
                                font-size: 13px;
                                height: 16px;
                                box-shadow: 0 1px 2px 0 rgb(57 70 92 / 5%);
                                border-radius: 0.375rem;
                                border-width: 2px;
                                width: auto;
                            }
            
                            .custom-select, .form-controllabel {
                                padding: 10px 16px;
                                font-size: 13px;
                                height: 16px;
                                box-shadow: 0 1px 2px 0 rgb(57 70 92 / 5%);
                                border-radius: 0.375rem;
                                border-width: 2px;
                                width: auto;
                            }
            
                            .nav-tabs .nav-link:hover {
                                color: #19BCBF !important;
                            }
                            .error{
                                color: red !important;
                            }
            
            
            
            
                        </style>-->
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
                                            <form:form method="POST" id="feeform"  action="importxls" modelAttribute="importxls" enctype="multipart/form-data">
                                                <div class="form-group row">
                                                    <div class="col">
                                                        <label class="form-label"  for="practice">Practice</label>
                                                        <select class="form-control" required id="practice" tabindex="1" name="practice">
                                                        </select>
                                                    </div>

                                                    <div class="col">
                                                        <label class="form-label" for="billing_provider_npi">Billing Provider NPI</label>
                                                        <input type="text" class="form-control" required name="billing_provider_npi" tabindex="2" id = "billing_provider_npi"  placeholder="Enter Contracted Billing Provider NPI">
                                                    </div>

                                                    <div class="col">
                                                        <label class="form-label">Contract Start Date</label>
                                                        <input type="date" max="9999-12-31" class="form-control" required name="startdate" tabindex="3" id = "startdate"  placeholder="Enter Contract Start Date">
                                                    </div><!-- comment -->

                                                    <div class="col">
                                                        <label class="form-label">Contract End Date</label>
                                                        <input type="date" max="9999-12-31" class="form-control" required name="enddate" id="enddate" tabindex="4" placeholder="Enter Contract End Date">
                                                    </div>

                                                    <div class="col">
                                                        <label class="form-label" for="medicare_schedule_year">Medicare Schedule Year</label>
                                                        <input type="number" value="2000" min="1900" max="2500" step="1" class="form-control" required name="medicare_schedule_year" tabindex="5" id = "medicare_schedule_year"  placeholder="Enter Medicare Schedule Year">
                                                        <!-- <option value="0">--Select--</option> -->

                                                    </div>

                                                </div>		<br>							
                                                <div class="row justify-content-between">
                                                    <div class="col">
                                                        <label class="form-label" for="payer">Payor</label>
                                                        <select class="form-control" required id="payer" tabindex="6" name="payer" >
                                                            <option value = "" >--Select--</option>
                                                            <c:forEach var="benefits" items="${payorlist}">
                                                                <option value = ${benefits.payorid} >${benefits.payor}</option>
                                                            </c:forEach>
                                                        </select>
                                                    </div>
                                                    <div class="col">
                                                        <label class="form-label">Payor Desc</label>
                                                        <input type="text" class="form-control" id="payerdesc"  name="payerdesc" tabindex="7" placeholder="Enter Payer Desc" >
                                                    </div>


                                                    <div class="col" id="divplanid">
                                                        <label class="form-label">Plan Id</label> <button type="button" tabindex="12" class="button" id="backplanid">:</button>

                                                        <input type="text" class="form-control"  id="planid" required name="planid" tabindex="9" placeholder="Enter your Plan id" >  

                                                        <select class="form-control" required id="ddlplan" tabindex="8" name="ddlplan" >
                                                            <option value = "0" >--Select--</option>

                                                            <c:forEach var="benefits" items="${planlist}">
                                                                <option value = ${benefits.planid} >${benefits.plandes}</option>
                                                            </c:forEach>
                                                        </select>

                                                    </div>


                                                    <div class="col">
                                                        <label class="form-label">Plan Desc</label>
                                                        <input type="text" class="form-control" id="plandesc"  name="plandesc" tabindex="10" placeholder="Enter Plan Desc" >
                                                    </div>

                                                </div>
                                                <hr>


                                                <div class="col-sm-12">


                                                    <ul class="nav nav-tabs" id="myTab" role="tablist">
                                                        <li class="nav-item">
                                                            <a class="nav-link active text-uppercase" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true">Upload</a>
                                                        </li>


                                                    </ul>

                                                    <div class="tab-content" id="myTabContent">
                                                        <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">


                                                            <div class="form-group row">
                                                                <div class="col-lg-4">

                                                                    <input type="file" required name="file" tabindex="41" id="fileUpload">  

                                                                </div>

                                                                <div class="col-lg-4">
                                                                    <button type="submit"  id="btnsubmit" tabindex="42" class="btn btn-rounded btn-greenadd btn-block">Submit</button>
                                                                </div>

                                                                <div class="col-lg-4"> Download : 
                                                                    <button class="btn btn-success md-trigger" id="download"  data-modal="modal-1">Sample Template <i class='fas fa-download m-r-5'></i></button>
                                                                </div>

                                                            </div>


                                                        </div><!-- comment -->
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

        <script type="text/javascript">
            $('.pc-selectpicker').selectpicker();



            $(document).ready(function () {

                var filename = '';

                $('#fileUpload').change(function (e) {
                    filename = e.target.files[0].name;
                    //  alert(geekss + ' is the selected file .');
                });


                $('#download').click(function () {
                    var urls = [];

                    urls.push("../TRANSCRIPTS/Template.xls");


                    if (urls.length > 0)
                    {

                        for (var i = 0; i < urls.length; i++) {
                            var iframe = $('<iframe style="visibility: collapse;"></iframe>');
                            $('body').append(iframe);
                            var content = iframe[0].contentDocument;
                            var form = '<form action="' + urls[i] + '" method="GET"></form>';
                            console.log(form);
                            content.write(form);
                            $('form', content).submit();
                            setTimeout((function (iframe) {
                                return function () {
                                    iframe.remove();
                                }
                            })(iframe), 2000);
                        }
                    } else
                    {
                        // alert('Select atleast one note(s).');
                        msgbox("Select atleast one note(s).", "Fee Schedule Form", "warning");

                    }

                });

                function isNumber(evt, element) {

                    var charCode = (evt.which) ? evt.which : event.keyCode

                    if (
                            (charCode != 45 || $(element).val().indexOf('-') != -1) && // “-” CHECK MINUS, AND ONLY ONE.
                            (charCode != 46 || $(element).val().indexOf('.') != -1) && // “.” CHECK DOT, AND ONLY ONE.
                            (charCode < 48 || charCode > 57))
                        return false;

                    return true;
                }

                $('.form-control1').keypress(function (event) {
                    return isNumber(event, this)
                });

                $('#ddlplan').hide();
                $('#flading').hide();

                var EId = '<%= session.getAttribute("Entityid")%>';
                var requestid = GetParameterValues('rid');
                var pra = '<%= session.getAttribute("practiceid")%>';
              

                if (typeof (requestid) !== "undefined")
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
                                var select = $('#practice');
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
                                    $('#practice').val(pra);
                                }
                            }
                        });


                    }

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
                                var select = $('#practice');
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

                                }
                            }
                        });

                    }

                }

                $('#practice').change(function (event) {
                    $('#flading').show();
                    var practiceid = $("select#practice").val();
                    if (practiceid !== '')
                    {

                        $.get('getpracticedetails', {
                            practice_id: practiceid
                        }, function (response) {
                            // alert(response);
                            if (response.length > 0)
                            {
                                var txt = response;
                                var obj1 = jQuery.parseJSON(txt);
                                console.log(obj1);
                                if (obj1.length > 0)
                                {
                                    for (var i = 0; i < obj1.length; i++)
                                    {
                                        $('#billing_provider_npi').val(obj1[i].group_npi1);
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
                                var select = $('#payer');
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

                                }
                            }
                        });


                        $('#flading').hide();

                    } else
                    {
                        $('#billing_provider_npi').val('');
                        $('#flading').hide();
                        var select = $('#payer');
                        select.find('option').remove();
                    }
                });

                $('#ddlplan').change(function (event) {

                    if ($("select#ddlplan").val() !== "0")
                    {
                        var planid = $("#ddlplan option:selected").val();
                        var plan = $("#ddlplan option:selected").text();

                        $('#planid').val(planid);
                        $('#plandesc').val(plan);
                        $('#ddlplan').hide();
                    } else
                    {
                        $('#planid').val('');
                        $('#plandesc').val('');
                        $('#ddlplan').hide();
                    }

                });


                $('#backplanid').click(function () {
                    $('#ddlplan').show();
                });

            });
    </script>     
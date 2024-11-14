<%@page contentType="text/html"  pageEncoding="UTF-8" autoFlush="true"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="en">

    <head>
        <title>Fee Schedule</title>
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
                                            <form:form method="POST" id="feeform"  action="addfee" modelAttribute="addfee">
                                                <div class="row">
                                                    <div class="col">
                                                        <div class="form-group">
                                                            <label class="form-label"  for="practice">Practice</label>
                                                            <select class="form-control" required id="practice" tabindex="1" name="practice">
                                                            </select>
                                                        </div>
                                                    </div>

                                                    <div class="col">
                                                        <div class="form-group">
                                                            <label class="form-label" for="billing_provider_npi">Billing Provider NPI</label>
                                                            <input type="text" class="form-control" required name="billing_provider_npi" tabindex="2" id = "billing_provider_npi"  placeholder="Enter Contracted Billing Provider NPI">
                                                        </div>
                                                    </div>

                                                    <div class="col">
                                                        <div class="form-group">
                                                            <label class="form-label">Contract Start Date</label>
                                                            <input type="date" max="9999-12-31" class="form-control" required name="startdate" tabindex="3" id = "startdate"  placeholder="Enter Contract Start Date">
                                                        </div><!-- comment -->
                                                    </div><!-- comment -->

                                                    <div class="col">
                                                        <div class="form-group">
                                                            <label class="form-label">Contract End Date</label>
                                                            <input type="date" max="9999-12-31" class="form-control" required name="enddate" id="enddate" tabindex="4" placeholder="Enter Contract End Date">
                                                        </div>
                                                    </div>

                                                    <div class="col">
                                                        <div class="form-group">
                                                            <label class="form-label" for="medicare_schedule_year">Medicare Schedule Year</label>
                                                            <input type="number" value="2000" min="1900" max="2500" step="1" class="form-control" required name="medicare_schedule_year" tabindex="5" id = "medicare_schedule_year"  placeholder="Enter Medicare Schedule Year">
                                                            <!-- <option value="0">--Select--</option> -->

                                                        </div>
                                                    </div>

                                                </div>	<br>								
                                                <div class="row justify-content-between">
                                                    <div class="col">
                                                        <div class="form-group">
                                                            <label class="form-label" for="payer">Payor</label>
                                                            <select class="form-control" required id="payer" tabindex="6" name="payer" >
                                                                <!-- <option value = "" >--Select--</option>
                                                                <c:forEach var="benefits" items="${payorlist}">
                                                                    <option value = ${benefits.payorid} >${benefits.payor}</option>
                                                                </c:forEach> -->
                                                            </select>
                                                        </div>
                                                    </div>
                                                    <div class="col">
                                                        <div class="form-group">
                                                            <label class="form-label">Payor Desc</label>
                                                            <input type="text" class="form-control" id="payerdesc"  name="payerdesc" tabindex="7" placeholder="Enter Payer Desc" >
                                                        </div>
                                                    </div>


                                                    <div class="col" id="divplanid">
                                                        <div class="form-group">
                                                            <label class="form-label">Plan Id</label> <button type="button" tabindex="12" class="button" id="backplanid">:</button>

                                                            <input type="text" class="form-control"  id="planid" required name="planid" tabindex="9" placeholder="Enter your Plan id" >  

                                                            <select class="form-control" required id="ddlplan" tabindex="8" name="ddlplan" >
                                                                <option value = "0" >--Select--</option>

                                                                <c:forEach var="benefits" items="${planlist}">
                                                                    <option value = ${benefits.planid} >${benefits.plandes}</option>
                                                                </c:forEach>
                                                            </select>

                                                        </div>
                                                    </div>


                                                    <div class="col">
                                                        <div class="form-group">
                                                            <label class="form-label">Plan Desc</label>
                                                            <input type="text" class="form-control" id="plandesc"  name="plandesc" tabindex="10" placeholder="Enter Plan Desc" >
                                                        </div>
                                                    </div>

                                                </div>
                                                <hr>
                                                <div class="col-sm-12">
                                                    <ul class="nav nav-tabs" id="myTab" role="tablist">
                                                        <li class="nav-item">
                                                            <a class="nav-link active text-uppercase" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true">Entry</a>
                                                        </li>
                                                    </ul>
                                                    <div class="tab-content" id="myTabContent">
                                                        <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
                                                            <!--<div class="form-group row">-->                                                 
                                                            <!--                                                                <div class="col-lg-3">
                                                                                                                                <label class="form-label">CPT Code</label> 
                                                                                                                            </div>
                                                                                                                            <div class="col-lg-3">
                                                                                                                                <label class="form-label">Allowed Amount</label> 
                                                                                                                            </div>
                                                                                                                            <div class="col-lg-3">
                                                                                                                                <label class="form-label">Medicare Allowed Amount</label> 
                                                                                                                            </div>-->
                                                            <!--                                                                <div class="col-lg-3">
                                                                                                                                <button type="submit" tabindex="42" class="btn btn-rounded btn-warning btn-block">Submit</button>
                                                                                                                            </div>-->
                                                            <!--</div>--> 

                                                            <div class="form-group row">                                                                
                                                                <div class="col-lg-3">
                                                                    <label class="form-label">CPT Code</label> 
                                                                    <input type="text" class="form-form-controllabel" id="cptcode"  name="cptcode" required tabindex="11" placeholder="CPT Code" >
                                                                </div>
                                                                <div class="col-lg-3">
                                                                    <label class="form-label">Allowed Amount</label> 
                                                                    <input type="text" onkeypress="return isNumberKey(this)"  class="form-control1" id="allowedamount"  name="allowedamount"   tabindex="12" placeholder="Allowed Amount" >
                                                                </div>
                                                                <div class="col-lg-3">
                                                                    <label class="form-label">Medicare Allowed Amount</label>
                                                                    <input type="text" onkeypress="return isNumberKey(this)"  class="form-control1" id="medicare_allowedamount"  name="medicare_allowedamount"  tabindex="13" placeholder="Medicare Allowed Amount" >
                                                                </div>

                                                                <div class="col-lg-3">
                                                                    <button type="submit" tabindex="42" class="btn btn-rounded btn-greenadd btn-block">Submit</button>
                                                                </div>

                                                            </div>

                                                            <div class="form-group row">

                                                                <div class="col-lg-3">
                                                                    <input type="text" class="form-form-controllabel" id="cptcode1"  name="cptcode1"  tabindex="14" placeholder="CPT Code" >
                                                                </div>
                                                                <div class="col-lg-3">
                                                                    <input type="text" class="form-control1" id="allowedamount1"  name="allowedamount1"  tabindex="15" placeholder="Allowed Amount" >
                                                                </div>
                                                                <div class="col-lg-3">
                                                                    <input type="text"  class="form-control1" id="medicare_allowedamount1"  name="medicare_allowedamount1" tabindex="16" placeholder="Medicare Allowed Amount" >
                                                                </div>

                                                                <div class="col-lg-3">

                                                                </div>

                                                            </div>

                                                            <div class="form-group row">

                                                                <div class="col-lg-3">
                                                                    <input type="text" class="form-form-controllabel" id="cptcode2"  name="cptcode2"  tabindex="17" placeholder="CPT Code" >
                                                                </div>
                                                                <div class="col-lg-3">
                                                                    <input type="text" class="form-control1" id="allowedamount2"  name="allowedamount2"  tabindex="18" placeholder="Allowed Amount" >
                                                                </div>
                                                                <div class="col-lg-3">
                                                                    <input type="text" class="form-control1" id="medicare_allowedamount2"  name="medicare_allowedamount2" tabindex="19" placeholder="Medicare Allowed Amount" >
                                                                </div>
                                                                <div class="col-lg-3">

                                                                </div>

                                                            </div>

                                                            <div class="form-group row">

                                                                <div class="col-lg-3">
                                                                    <input type="text" class="form-form-controllabel" id="cptcode3"  name="cptcode3"  tabindex="20" placeholder="CPT Code" >
                                                                </div>
                                                                <div class="col-lg-3">
                                                                    <input type="text" class="form-control1" id="allowedamount3"  name="allowedamount3"  tabindex="21" placeholder="Allowed Amount" >
                                                                </div>
                                                                <div class="col-lg-3">
                                                                    <input type="text" class="form-control1" id="medicare_allowedamount3"  name="medicare_allowedamount3" tabindex="22" placeholder="Medicare Allowed Amount" >
                                                                </div>
                                                                <div class="col-lg-3">

                                                                </div>

                                                            </div>

                                                            <div class="form-group row">

                                                                <div class="col-lg-3">
                                                                    <input type="text" class="form-form-controllabel" id="cptcode4"  name="cptcode4"  tabindex="23" placeholder="CPT Code" >
                                                                </div>
                                                                <div class="col-lg-3">
                                                                    <input type="text" class="form-control1" id="allowedamount4"  name="allowedamount4"  tabindex="24" placeholder="Allowed Amount" >
                                                                </div>
                                                                <div class="col-lg-3">
                                                                    <input type="text" class="form-control1" id="medicare_allowedamount4"  name="medicare_allowedamount4" tabindex="25" placeholder="Medicare Allowed Amount" >
                                                                </div>
                                                                <div class="col-lg-3">

                                                                </div>

                                                            </div>

                                                            <div class="form-group row">

                                                                <div class="col-lg-3">
                                                                    <input type="text" class="form-form-controllabel" id="cptcode5"  name="cptcode5"  tabindex="26" placeholder="CPT Code" >
                                                                </div>
                                                                <div class="col-lg-3">
                                                                    <input type="text" class="form-control1" id="allowedamount5"  name="allowedamount5"  tabindex="27" placeholder="Allowed Amount" >
                                                                </div>
                                                                <div class="col-lg-3">
                                                                    <input type="text" class="form-control1" id="medicare_allowedamount5"  name="medicare_allowedamount5" tabindex="28" placeholder="Medicare Allowed Amount" >
                                                                </div>
                                                                <div class="col-lg-3">

                                                                </div>

                                                            </div>

                                                            <div class="form-group row">

                                                                <div class="col-lg-3">
                                                                    <input type="text" class="form-form-controllabel" id="cptcode6"  name="cptcode6"  tabindex="29" placeholder="CPT Code" >
                                                                </div>
                                                                <div class="col-lg-3">
                                                                    <input type="text" class="form-control1" id="allowedamount6"  name="allowedamount6"  tabindex="30" placeholder="Allowed Amount" >
                                                                </div>
                                                                <div class="col-lg-3">
                                                                    <input type="text" class="form-control1" id="medicare_allowedamount6"  name="medicare_allowedamount6" tabindex="31" placeholder="Medicare Allowed Amount" >
                                                                </div>
                                                                <div class="col-lg-3">

                                                                </div>
                                                            </div>

                                                            <div class="form-group row">

                                                                <div class="col-lg-3">
                                                                    <input type="text" class="form-form-controllabel" id="cptcode7"  name="cptcode7"  tabindex="32" placeholder="CPT Code" >
                                                                </div>
                                                                <div class="col-lg-3">
                                                                    <input type="text" class="form-control1" id="allowedamount7"  name="allowedamount7"  tabindex="33" placeholder="Allowed Amount" >
                                                                </div>
                                                                <div class="col-lg-3">
                                                                    <input type="text" class="form-control1" id="medicare_allowedamount7"  name="medicare_allowedamount7" tabindex="34" placeholder="Medicare Allowed Amount" >
                                                                </div>
                                                                <div class="col-lg-3">

                                                                </div>

                                                            </div>

                                                            <div class="form-group row">

                                                                <div class="col-lg-3">
                                                                    <input type="text" class="form-form-controllabel" id="cptcode8"  name="cptcode8"  tabindex="35" placeholder="CPT Code" >
                                                                </div>
                                                                <div class="col-lg-3">
                                                                    <input type="text" class="form-control1" id="allowedamount8"  name="allowedamount8"  tabindex="36" placeholder="Allowed Amount" >
                                                                </div>
                                                                <div class="col-lg-3">
                                                                    <input type="text" class="form-control1" id="medicare_allowedamount8"  name="medicare_allowedamount8" tabindex="37" placeholder="Medicare Allowed Amount" >
                                                                </div>
                                                                <div class="col-lg-3">

                                                                </div>

                                                            </div> 

                                                            <div class="form-group row">

                                                                <div class="col-lg-3">
                                                                    <input type="text" class="form-form-controllabel" id="cptcode9"  name="cptcode9"  tabindex="38" placeholder="CPT Code" >
                                                                </div>
                                                                <div class="col-lg-3">
                                                                    <input type="text" class="form-control1" id="allowedamount9"  name="allowedamount9"  tabindex="39" placeholder="Allowed Amount" >
                                                                </div>
                                                                <div class="col-lg-3">
                                                                    <input type="text" class="form-control1" id="medicare_allowedamount9"  name="medicare_allowedamount9" tabindex="40" placeholder="Medicare Allowed Amount" >
                                                                </div>
                                                                <div class="col-lg-3">

                                                                </div>

                                                            </div>  

                                                        </div>
                                                        <div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">

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

                function isNumber(evt, element) {

                    var charCode = (evt.which) ? evt.which : event.keyCode

                    if (
                            (charCode != 45 || $(element).val().indexOf('-') != -1) && // “-” CHECK MINUS, AND ONLY ONE.
                            (charCode != 46 || $(element).val().indexOf('.') != -1) && // “.” CHECK DOT, AND ONLY ONE.
                            (charCode < 48 || charCode > 57))
                        return false;

                    return true;
                }

                $("form").submit(function () {
                    setTimeout(function ()
                    {
                        // swal("Record Saved", "", "success");
                        msgbox("Record Saved", "Fee Schedule Form", "success");
                    }, 3000);
                });

                $('.form-control1').keypress(function (event) {
                    return isNumber(event, this)
                });

                $('#ddlplan').hide();
                $('#flading').hide();

                var EId = '<%= session.getAttribute("Entityid")%>';
                var pra = '<%= session.getAttribute("practiceid")%>';
                var requestid = GetParameterValues('rid');

          

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
                    // $("select#ddlplan").val(0);
                    $('#ddlplan').show();
                });

            });
    </script>     
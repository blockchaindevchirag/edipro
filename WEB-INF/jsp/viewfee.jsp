<%-- 
    Document   : view_eligibility_request
    Created on : 07-Mar-2021, 1:55:15 pm
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
    <head>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View Fees</title>
 
        <jsp:include page="includes/header.jsp"></jsp:include>
        <section class="pcoded-main-container">
            <div class="pcoded-wrapper">
                <div style="padding: 15px" class="pcoded-content">
                    <div class="pcoded-inner-content">
                        <div class="main-body">
                            <div class="page-wrapper">
                                <div class="row">
                                    <div class="col-lg-12">
                                        <button class="md-trigger btn btn-sm btn-primary" id="btnadd" data-modal="modal-1" ><i class="fa fa-plus"></i>Add</button>
                                    </div>
                                </div>
                                <div class="row">
                                    <!-- Zero config table start -->
                                    <div   class="col-sm-12">
                                        <div class="card">
                                            <div class="card-body">
                                                <div class="dt-responsive1 table-responsive1">
                                                    <div class="tableFixHead1 tablehide">
                                                        <table  id="simpletable" width="98%" style="width: 0px;" class="table table-striped table-bordered nowrap">
                                                            <thead>
                                                                <tr>
                                                                    <th style="position: sticky; top: 0; z-index: 1;"><input id="headercheck" type="checkbox"></th>
                                                                    <th style="position: sticky; top: 0; z-index: 1;">Practice</th>
                                                                    <th style="position: sticky; top: 0; z-index: 1;">NPI</th>
                                                                    <th style="position: sticky; top: 0; z-index: 1;">Start</th>
                                                                    <th style="position: sticky; top: 0; z-index: 1;">End</th>
                                                                    <th style="position: sticky; top: 0; z-index: 1;">Payor</th>
                                                                    <th style="position: sticky; top: 0; z-index: 1;">Plan</th>
                                                                    <th style="position: sticky; top: 0; z-index: 1;">Medicare_Year</th>
                                                                    <th style="position: sticky; top: 0; z-index: 1;">practiceid</th>
                                                                    <th style="position: sticky; top: 0; z-index: 1;">payerid</th>
                                                                    <th style="position: sticky; top: 0; z-index: 1;">planid</th>
                                                                    <th style="position: sticky; top: 0; z-index: 1;"></th>
                                                                    <th style="position: sticky; top: 0; z-index: 1;"></th>
                                                                </tr>
                                                            </thead>
                                                            <tbody>   
                                                            </tbody>


                                                        </table>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- [ Main Content ] end -->
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </section>     

        <div id="modalConfirmYesNo" class="modal fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" 
                                class="close" data-dismiss="modal" aria-label="Close">

                        </button>
                        <h4 id="lblTitleConfirmYesNo" class="modal-title">Confirmation</h4>
                    </div>
                    <div class="modal-body">
                        <p id="lblMsgConfirmYesNo"></p>
                    </div>
                    <div class="modal-footer">
                        <button id="btnYesConfirmYesNo" 
                                type="button" class="btn btn-primary">Yes</button>
                        <button id="btnNoConfirmYesNo" 
                                type="button" class="btn btn-default">No</button>
                    </div>
                </div>
            </div>
        </div>


        <div id="flading" class="loader">

        </div>

        <div class="q-view">
            <div class="overlay"></div>
            <div class="content">
                <div class="card-body">
                    <h4>Raise Ticket</h4>
                    <div class="border-bottom pb-3 pt-3">
                        <div class="row">
                            <div class="col-md-7">

                                <p class="list-inline-item mb-0">By <label class="mb-0" id="raiseduser" ></label></p>
                            </div>
                            <div class="col-md-5 text-right">
                                <p class="d-inline-block mb-0"><i class="feather icon-calendar mr-1"></i><label class="mb-0" id="currentdate" ></label></p>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- [ tinymce editor ] start -->
                <div class="col-sm-12">
                    <div class="card border-0 shadow-none">
                        <div class="card-body pr-0 pl-0 pt-0">

                            <!--   <h3 class="model-bg-custom">Raise Ticket <button type="button" id="model_close1" class="close" style="font-size:12px; padding-left:20px" data-dismiss="modal" aria-hidden="true">X</button></h3> -->


                            <div>
                            <form:form method="POST" action="uploadticketatt" modelAttribute="uploadticketatt" enctype="multipart/form-data">

                                <div class="form-group row">
                                    <div class="col-lg-6">
                                        <label class="form-label" for="ticket_type_id">Type <span class="text-danger">*</span></label>
                                        <select class="form-control" required id="ticket_type_id" name ="ticket_type_id">
                                            <option value = "" >--Select--</option>
                                            <c:forEach var="ticket" items="${tickettypelist}">
                                                <option value = ${ticket.tid} >${ticket.ticket_type}</option>
                                            </c:forEach>
                                        </select>
                                    </div>

                                    <div class="col-lg-6">
                                        <label class="form-label" for="ticket_priority_id">Priority <span class="text-danger">*</span></label>
                                        <select class="form-control" required id="ticket_priority_id" name ="ticket_priority_id">
                                            <c:forEach var="ticket" items="${ticketprioritylist}">
                                                <option value = ${ticket.tid}>${ticket.ticket_priority}</option>
                                            </c:forEach>
                                        </select>

                                    </div>


                                </div>									
                                <div class="form-group row">

                                    <div class="col-lg-6">
                                        <label class="form-label">Browse </label>

                                        <input class="form-control" type="file" name="file" id="attachment_id" multiple accept="application/pdf, image/jpeg">  


                                        <div class="preview"></div>
                                        <div class="progress1" style="display:none">
                                            <div class="progress-bar1"  id="ticketprogress" role="progressbar" aria-valuenow="0"
                                                 aria-valuemin="0" aria-valuemax="100" style="width:0%">
                                                0%
                                            </div>
                                        </div>
                                    </div>	

                                    <div class="col-lg-6">
                                        <label class="form-label"  for="assigned_to">Assign To</label>

                                        <select class="form-control js-example-placeholder-multiple" id="assigned_to"  name="assigned_to">
                                            <option value = "0" >--Select--</option>
                                            <c:forEach var="ticket" items="${assignuserlist}">
                                                <option value = ${ticket.user_id}>${ticket.username}</option>
                                            </c:forEach>
                                        </select>
                                    </div>

                                </div>

                                <div class="form-group row">
                                    <div class="col-lg-12">

                                        <!-- <input type="text" name="description" class="required form-control" id="description" required placeholder="Enter description" > -->
                                        <div class="card-body">

                                            <div id="summernote">

                                                <p>
                                                </p>

                                            </div>
                                        </div>
                                    </div><!-- comment -->

                                </div>


                                <div class="form-group row">                                               
                                    <div class="col-lg-4">
                                        <button type="submit"  id="btnsubmit" class="btn btn-rounded btn-greenadd btn-block">Submit</button>
                                    </div>
                                </div>
                            </form:form>

                        </div>

                    </div>



                </div>
            </div>
            <!-- [ tinymce editor ] end -->
        </div>

    </div>

    <div class="modal fade" id="modal-1" role="dialog" data-backdrop="static" data-keyboard="false">
        <div class="modal-dialog modal-md">    
            <div class="modal-content" id="addmodel">
                <div class="modal-header">
                    <h4 class="modal-title">Update Fee Schedule</h4>
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>

                <div class="modal-body">

                    <div class="form-group">

                        <label class="form-label"  for="practice">Practice <span class="text-danger">*</span></label>
                        <select class="form-control" required id="practice" tabindex="1" name="practice">
                        </select>
                    </div>

                    <div class="form-group">
                        <label class="form-label" for="billing_provider_npi">Billing Provider NPI <span class="text-danger">*</span></label>
                        <input type="text" class="form-control" required name="billing_provider_npi" tabindex="2" id = "billing_provider_npi"  placeholder="Enter Contracted Billing Provider NPI">
                    </div>

                    <div class="form-group">
                        <label class="form-label">Contract Start Date <span class="text-danger">*</span></label>
                        <input type="date" max="9999-12-31" class="form-control" required name="startdate" tabindex="3" id = "startdate"  placeholder="Enter Contract Start Date">
                    </div><!-- comment -->

                    <div class="form-group">
                        <label class="form-label">Contract End Date <span class="text-danger">*</span></label>
                        <input type="date" max="9999-12-31" class="form-control" required name="enddate" id="enddate" tabindex="4" placeholder="Enter Contract End Date">
                    </div>

                    <div class="form-group">
                        <label class="form-label" for="medicare_schedule_year">Medicare Schedule Year <span class="text-danger">*</span></label>
                        <input type="number" value="2000" min="1900" max="2500" step="1" class="form-control" required name="medicare_schedule_year" tabindex="5" id = "medicare_schedule_year"  placeholder="Enter Medicare Schedule Year">
                    </div>

                    <div class="form-group">
                        <label class="form-label" for="payer">Payor <span class="text-danger">*</span></label>
                        <select class="form-control" required id="payer" tabindex="6" name="payer" >

                        </select>
                    </div>

                    <div class="form-group">
                        <label class="form-label">Plan Id <span class="text-danger">*</span></label> 
                        <select class="form-control" required id="ddlplan" tabindex="8" name="ddlplan" >
                            <option value = "0" >--Select--</option>
                            <c:forEach var="benefits" items="${planlist}">
                                <option value = ${benefits.planid} >${benefits.plandes}</option>
                            </c:forEach>
                        </select>
                        <input type="text" class="form-control" id="plandesc"  name="plandesc" tabindex="10" placeholder="Enter Plan Desc" >
                    </div>



                    <div class="card-footer text-right">

                        <button class="btn btn-rounded btn-greenadd btn-block" id = "btnsave">Submit</button>

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
                $(".tableFixHead1").removeClass("tablehide");
                $(".tableFixHead1").addClass("tableshow");
                var checked = 0;
                var notflag = 'N';
                var total = 0;
                $('#flading').hide();

                var UT = '<%= session.getAttribute("UT")%>';

                console.log(UT);
                // $('#btnadd').hide();
                $('#btnadd').click(function () {

                    $('#practice').removeAttr('disabled');
                    $('#payer').removeAttr('disabled');
                    $('#medicare_schedule_year').removeAttr('disabled');

                    $('#billing_provider_npi').val('');
                    $('#practice').val('');
                    $('#payer').val('');
                    var select = $('#payer');
                    select.find('option').remove();
                    document.getElementById("startdate").value = '';
                    document.getElementById("enddate").value = '';
                    $('#ddlplan').val('0');

                    $('#plandesc').val('');


                    $('#addmodel').show();
                    $('#modal-1').modal('show');
                    //  $('.md-show').removeAttr("visibility", "hidden");
                    $('.md-overlay').css("visibility", "visible");
                    $('.md-show').css("visibility", "visible");
                });

                $('#model_close').click(function () {
                    $('#modal-1').modal('hide');
                    $('.md-show').css("visibility", "hidden");
                    // div.setAttribute("style", "visibility: hidden; ");
                    // $('.md-overlay').setAttribute('style', 'visibility: hidden; opacity: 0 !important;');
                    $('.md-overlay').css("visibility", "hidden");
                    // $('.md-overlay').attr('visibility', 'hidden');
                });


                $('#practice').change(function () {
                    //payor
                    $.ajax({
                        url: "getselectpayorlist",
                        type: "get", //send it through get method
                        data: {
                            selectpayorlist: $('#practice').val()
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

                });

                $(document).on("click", "#simpletable button.editbutton", function () {
                    //  $('#btnadd').click();

                    $('#addmodel').show();
                    $('#modal-1').modal('show');
                    //  $('.md-show').removeAttr("visibility", "hidden");
                    $('.md-overlay').css("visibility", "visible");
                    $('.md-show').css("visibility", "visible");


                    let tr = $(this).closest('tr');
                    let a = tr.find('td:eq(8)').text();
                    let b = tr.find('td:eq(9)').text();
                    let c = tr.find('td:eq(10)').text();
                    let d = tr.find('td:eq(3)').text();
                    let e = tr.find('td:eq(4)').text();
                    let f = tr.find('td:eq(7)').text();

                    $("#practice").val(a);
                    $('#practice').attr('disabled', "true");
                    $('#payer').attr('disabled', "true");
                    $('#medicare_schedule_year').attr('disabled', "true");
                    $('#billing_provider_npi').val('');
                    document.getElementById("startdate").value = '';
                    document.getElementById("enddate").value = '';
                    $('#flading').show();
                    var practiceid = a;
                    if (practiceid !== '')
                    {
                        /*  $.get('getpracticedetails', {
                         practice_id: a
                         }, function (response) {
                         // alert(response);
                         if (response.length > 0)
                         {
                         
                         var sv = response.split('~');
                         
                         $('#billing_provider_npi').val(sv[4].trim());
                         
                         
                         }
                         }); */

                        $.get('getpracticedetails', {
                            practice_id: a
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
                                    $('#payer').val(b);
                                }
                            }
                        });


                        var now = new Date(d);
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
                        var dd = now.getFullYear() + '-' + (month) + '-' + day;
                        document.getElementById("startdate").value = dd;
                        var now = new Date(e);
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
                        var ee = now.getFullYear() + '-' + (month) + '-' + day;

                        document.getElementById("enddate").value = ee;
                        // $('#enddate').text(e);
                        $('#ddlplan').val(c);
                        $('#medicare_schedule_year').val(f);
                        $('#flading').hide();
                        var plan = $("#ddlplan option:selected").text().trim().split('-');
                        $('#plandesc').val(plan[0]);

                    } else
                    {
                        $('#billing_provider_npi').val('');
                        $('#flading').hide();
                        var select = $('#payer');
                        select.find('option').remove();
                        document.getElementById("startdate").value = '';
                        document.getElementById("enddate").value = '';
                        $('#ddlplan').val('0');
                        $('#medicare_schedule_year').val('');
                        $('#plandesc').val('');
                        $('#flading').hide();
                    }



                });

                var EId = '<%= session.getAttribute("Entityid")%>';

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

                $('#btnsave').click(function () {
                    $('#flading').show();

                    $.ajax({
                        url: "updatefeescheduledetails",
                        type: "get", //send it through get method
                        data: {
                            updatefeeschedule_val: $('#practice').val() + '~' + $('#billing_provider_npi').val() + '~' + $('#startdate').val() + '~' + $('#enddate').val() + '~' + $('#medicare_schedule_year').val() + '~' + $('#payer').val() + '~' + $('#ddlplan').val() + '~' + $('#plandesc').val()
                        },
                        success: function (response) {
                            console.log(response);
                            msgbox("Record Saved", "Fee Schedule Form", "success");
                            //  swal("Record Saved", "", "success");
                            $('#flading').hide();
                            window.location.reload();
                        },
                        error: function (err) {
                            console.log(err);
                            msgbox("Record Not Saved", "Fee Schedule Form", "error");
                            $('#flading').hide();
                        }
                    });


                    $('#model_close').click();

                });


                $('#ddlplan').change(function (event) {


                    if ($("select#ddlplan").val() !== "0")
                    {
                        var plan = $("#ddlplan option:selected").text().trim().split('-');

                        $('#plandesc').val(plan[0]);

                    } else
                    {
                        $('#plandesc').val('');
                    }

                });


                $(document).on("click", "#simpletable button.deleted", function () {

                    let tr = $(this).closest('tr');

                    let a = tr.find('td:eq(7)').text();
                    let b = tr.find('td:eq(8)').text();
                    let c = tr.find('td:eq(9)').text();

                    if (confirm("Are you sure, you want to delete?")) {

                        $('#flading').show();

                        $.ajax({
                            url: "deletebulkfeescheduledetails",
                            type: "get", //send it through get method
                            data: {
                                deletebulkfeeschedule_val: b + '~' + c + '~' + a
                            },
                            success: function (response) {
                                console.log(response);
                                msgbox("Record Deleted", "Fee Schedule Form", "success");
                                //  swal("Record Saved", "", "success");
                                $('#flading').hide();
                                window.location.reload();
                            },
                            error: function (err) {
                                console.log(err);
                                msgbox("Record Not Deleted", "Fee Schedule Form", "error");
                                $('#flading').hide();
                            }
                        });

                    }


                });

                function ShowConfirmYesNo() {
                    AsyncConfirmYesNo(
                            "Confirmation Box",
                            "You are about to create multiple tickets, Do you wish to continue?",
                            MyYesFunction,
                            MyNoFunction
                            );
                }

                function MyYesFunction() {
                    // alert("Time to get off your workstation!");
                    // $("#lblTestResult").html("You are hungry");
                    $(".q-view").addClass("active");

                }
                function MyNoFunction() {
                    $(".overlay").click();
                    // $("#lblTestResult").html("You are not hungry");
                    $('#headercheck').prop('checked', false);
                    $('#simpletable tbody input[type=checkbox]').each(function () {
                        $(this).prop('checked', false);
                        if (checked > 0)
                        {
                            checked--;
                        }
                    });

                }

                function AsyncConfirmYesNo(title, msg, yesFn, noFn) {
                    var $confirm = $("#modalConfirmYesNo");
                    $confirm.modal('show');
                    $("#lblTitleConfirmYesNo").html(title);
                    $("#lblMsgConfirmYesNo").html(msg);

                    $("#btnYesConfirmYesNo").off('click').click(function () {
                        yesFn();
                        $confirm.modal("hide");

                    });
                    $("#btnNoConfirmYesNo").off('click').click(function () {
                        noFn();
                        $confirm.modal("hide");

                    });
                }
                $('#headercheck').prop('checked', false);


                //   $('#btnnot').hide();
                var entity = '<%= session.getAttribute("Entityid")%>';
                var entity_user = '';
                var entity_user_to = '';
                var entity_user_cc = '';
                var entity_user_bcc = '';
                var now = new Date();
                var day = '';
                var month = '';
                var hr = '';
                var min = '';
                var sec = '';
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
                if ((now.getHours()) < 10)
                {
                    hr = '0' + parseInt(now.getHours());
                } else
                {
                    hr = parseInt(now.getHours());
                }
                if (now.getMinutes() < 10)
                {
                    min = '0' + parseInt(now.getMinutes());

                } else
                {
                    min = parseInt(now.getMinutes());

                }
                if (now.getSeconds() < 10)
                {
                    sec = '0' + parseInt(now.getSeconds());

                } else
                {
                    sec = parseInt(now.getSeconds());

                }
                var today = now.getFullYear() + '-' + (month) + '-' + day + "T" + hr + ":" + min + ":" + sec;
                var today1 = (month) + '/' + day + '/' + now.getFullYear() + " " + hr + ":" + min + ":" + sec;

                $('#currentdate').text(today1);
                var LoginUsername = '<%= session.getAttribute("LoginUsername")%>';
                $('#raiseduser').text(LoginUsername);

                $(".hd-body").click(function () {

                });

                $(".overlay").click(function () {
                    $(".q-view").removeClass("active");

                });




                var brid = '';
                $('#brid').hide();
                // $('#raiseticket').hide();



                $('#simpletable').DataTable({
                    "aaSorting": [[1, "desc"]], // Sort by first column descending
                    "lengthMenu": [10, 30, 50, 100, 500],
                    fixedHeader: {
                        header: true,
                        footer: true
                    },

                    // "ajax": "eligibilitydata",
                    //"processing": true,
                    "columnDefs": [{
                            "targets": '_all',
                            "createdCell": function (td, cellData, rowData, row, col) {

                            }
                        }],
                    drawCallback: function (settings, json) {

                        $('[data-toggle="tooltip"]').tooltip('update');
                        //$("#list-of-product tbody tr > td").tooltip('hide');
                    },
                    "ajax": {
                        "type": "GET",
                        "url": 'feescheduledata',
                        "contentType": 'application/json'
                    },
                    "columns": [
                        {"data": function (data) {
                                return '<input type="checkbox" class = "check">';
                            }, "orderable": false, "searchable": false, "name": "check"},
                        {"data": "spracticename", "orderable": true, "searchable": true, "name": "practicename"},
                        {"data": "billing_provider_npi", "orderable": true, "searchable": true, "name": "billing_provider_npi"},
                        {"data": "startdate", "orderable": true, "searchable": true, "name": "startdate"},
                        {"data": "enddate", "orderable": true, "searchable": true, "name": "enddate"},
                        {"data": "spayername", "orderable": true, "searchable": true, "name": "spayername"},
                        {"data": function (data) {
                                return  data.planid + " - " + data.splandesc;
                            }, "orderable": true, "searchable": true, "name": "Plan"},
                        {"data": function (data) {
                                return "<span><a  class= 'badge badge-light-primary f-16' href= 'viewfeeschedule?practice=" + data.practice + "&payor=" + data.payer + "&medicare_schedule_year=" + data.medicare_schedule_year + "'><span style='color: green; font-weight: bold;'>" + data.medicare_schedule_year + "</span></a></span>";
                            }, "orderable": true, "searchable": true, "name": "medicare_schedule_year"},
                        {"data": "practice", "orderable": true, "searchable": true, "name": "practice"},
                        {"data": "payer", "orderable": true, "searchable": true, "name": "payer"},
                        {"data": "planid", "orderable": true, "searchable": true, "name": "planid"},
                        {"data": function (data) {
                                return "<button id ='btnedit' class='btn-success md-trigger editbutton'><span class='feather icon-edit' style='font-size:15px; margin:0 3px;color:#2DCEE3;' /> </button>";
                            }, "orderable": false, "searchable": false, "name": "medicare_schedule_year"},
                        {"data": function (data) {
                                return "<button id ='btndelete' class='btn-danger md-trigger deleted'><span class='feather icon-delete'/></button>";
                            }, "orderable": false, "searchable": false, "name": "medicare_schedule_year"}

                    ],
                    createdRow: function (row, data, dataIndex) {
                        // add tooltip when row is created
                        $(row).find('td:eq(1)').attr('data-toggle', "tooltip");
                        $(row).find('td:eq(1)').attr('data-original-title', data["practicename"].toString());
                        $(row).find('td:eq(5)').attr('data-toggle', "tooltip");
                        $(row).find('td:eq(5)').attr('data-original-title', data["payername"].toString());
                        $(row).find('td:eq(6)').attr('data-toggle', "tooltip");
                        $(row).find('td:eq(6)').attr('data-original-title', data["plandesc"].toString());
                        $(row).find('td:eq(8)').hide();
                        $(row).find('td:eq(9)').hide();
                        $(row).find('td:eq(10)').hide();


                        if (UT === "2")
                        {
                            $(row).find('td:eq(12)').show();
                        } else
                        {
                            $(row).find('td:eq(12)').hide();
                        }

                    }

                });
                //  setInterval('refreshPage()', 300000);


                var practice_id = GetParameterValues('practice');
                var payor_id = GetParameterValues('payor');
                var plan_id = GetParameterValues('planid');
                var medicare_schedule_year = GetParameterValues('medicare_schedule_year');

                if (typeof (practice_id) !== 'undefined')
                {
                    var searchtext = practice_id + ' ' + payor_id + ' ' + plan_id + ' ' + medicare_schedule_year;
                    var table = $('#simpletable').DataTable();
                    table.search(searchtext).draw();
                }

                $('#simpletable').find('thead').find('tr').each(function () {

                    $(this).find('th:eq(8)').hide();
                    $(this).find('th:eq(9)').hide();
                    $(this).find('th:eq(10)').hide();
                    if (UT === "2")
                    {
                        $(this).find('th:eq(12)').show();
                    } else
                    {
                        $(this).find('th:eq(12)').hide();
                    }
                });


                $('#simpletable').find('tfoot').find('tr').each(function () {


                });


                $('#simpletable').find('tbody').find('tr').each(function () {


                    if (UT === "2")
                    {
                        $(this).find('td:eq(12)').show();
                    } else
                    {
                        $(this).find('td:eq(12)').hide();
                    }

                });


                var ticketsource = '<%=session.getAttribute("source")%>';
                var files = '';

                var progressbar = $('.progress-bar1');
                $("#btnsubmit").click(function () {
                    $('#flading').show();
                    // alert(files);
                    //  if (files !== "")
                    // {

                    $("form").ajaxForm(
                            {
                                beforeSend: function () {
                                    $(".progress1").css("display", "block");
                                    progressbar.width('0%');
                                    progressbar.text('0%');
                                },
                                uploadProgress: function (event, position, total, percentComplete) {
                                    if (percentComplete <= 100)
                                    {
                                        progressbar.width(percentComplete + '%');
                                        progressbar.text(percentComplete + '%');
                                    }

                                },
                                complete: function (xhr) {
                                    //  window.location = "uploadeobdoc"
                                    //   location.reload();

                                    $('#attachment_id').val('');
                                    // $('#ddlpractice').val("");


                                    $(".progress1").css("display", "block");
                                    progressbar.width('0%');
                                    progressbar.text('0%');
                                    $('#flading').hide();
                                    //    $('#btnsubmit').removeAttr('disabled');
                                }
                            });
                    // }
                });
                var mulfilename = '';
                // var filesize = '';
                // var filetype = ''
                $('#attachment_id').change(function (e) {
                    mulfilename = e.target.files.name;

                });


                $("form").submit(function () {
                    $('#flading').show();

                    files = $('#attachment_id').prop("files");
                    var names = $.map(files, function (val) {
                        // var fn = val.name;
                        // return fn.replaceAll(',', '');
                        return val.name;
                    });
                    var size = $.map(files, function (val) {
                        return val.size;
                    });
                    let namestext = names.toString();
                    let sizetext = size.toString();

                    var fns = '';
                    for (let i = 0; i < names.length; i++) {
                        fns += names[i].replaceAll(',', '').replaceAll('#', '') + ",";
                    }

                    fns = fns.substring(0, fns.length - 1);

                    //  namestext = namestext.replaceAll('#', '');
                    var ticketstatus = 1;
                    var tstatus = '';
                    if ($("select#assigned_to").val() === "0")
                    {
                        ticketstatus = 1;
                        tstatus = 'Created';
                    } else
                    {
                        ticketstatus = 2;
                        tstatus = 'Assigned';
                    }

                    var tsource = '';
                    if (ticketsource === 1)
                    {
                        tsource = 'Practice';
                    } else if (ticketsource === 2)
                    {
                        tsource = 'Entity';
                    } else
                    {
                        tsource = 'Practice';
                    }
                    var tickettype = $("#ticket_type_id option:selected").text();
                    var ticketpriority = $("#ticket_priority_id option:selected").text();
                    var assignto = $("#assigned_to option:selected").text();

                    $.ajax({
                        url: "create_bulk_ticket",
                        type: "get", //send it through get method
                        data: {
                            type_of_ticket: "10",
                            descriptions: $(".note-editable").html(),
                            ticket_status: ticketstatus,
                            assigned_to: $("select#assigned_to").val(),
                            attachmentfile: fns,
                            attachmentfilesize: sizetext,
                            ticket_source: ticketsource,
                            ticket_priority: $("select#ticket_priority_id").val(),
                            segment: "L",
                            currentdt: today,
                            request_id: brid
                        },
                        success: function (response) {
                            console.log(response);
                            $("select#ticket_type_id").val('10');
                            $("select#assigned_to").val('0');
                            $(".note-editable").html('');
                            //  swal("Record Saved", "", "success");
                            msgbox("Record Saved", "Fee Schedule Form", "success");
                            //  window.location.reload();
                            $('#flading').hide();
                            $('#modal-1').modal('hide');
                            // div.setAttribute("style", "visibility: hidden; ");
                            // $('.md-overlay').setAttribute('style', 'visibility: hidden; opacity: 0 !important;');
                            $('.md-overlay').css("visibility", "hidden");
                            $(".overlay").click();
                            // $('.md-overlay').attr('visibility', 'hidden')
                        },
                        error: function (err) {
                            console.log(err);
                            msgbox("Ticket Not Saved", "Ticket Form", "error");
                            $('#flading').hide();
                            $(".overlay").click();
                        }
                    });
                    if ($("select#assigned_to").val() !== "0")
                    {
                        var strcontent = "Hi " + assignto + ", <br><br>" + "Type: " + tickettype + "<br>Source: " + tsource + "<br>Priority: " + ticketpriority + "<br> Assign To: " + assignto + "<br>Segment: Benefit View [A]" + "<br><br>" + $(".note-editable").html();
                        // Email Config
                        $.post('eMail', {
                            recipient: entity_user_to,
                            subject: 'Ticket Raised from [Benefit View] Form: ' + tickettype + ' : ' + tstatus + ' to ' + assignto,
                            content: strcontent,
                            cc: entity_user_cc,
                            bcc: entity_user_bcc

                        }, function (response) {

                            console.log(response);

                        });
                    }


                });


                $('#assigned_to').change(function (event) {
                    var user_id = $("select#assigned_to").val();
                    if (user_id !== "0")
                    {
                        $('#flading').show();
                        //Payor

                        $.ajax({
                            url: "ticketentityuserdetails",
                            type: "get", //send it through get method
                            data: {
                                user_id: user_id,
                                def_ticket_type_id: $('#ticket_type_id').val()
                            },
                            success: function (response) {
                                // console.log(response);
                                // console.log(response.length);
                                var txt = response;
                                var obj = jQuery.parseJSON(txt);
                                if (obj.length > 0)
                                {
                                    $.each(obj, function (index, value) {
                                        entity_user_to = obj[index].username;
                                        entity_user_cc = obj[index].assigned_to;
                                        console.log(entity_user_to);
                                        console.log(entity_user_cc);
                                        $('#flading').hide();
                                    });
                                } else
                                {
                                    $('#flading').hide();
                                }
                            }
                        });


                    }
                });



                $('#raiseticket').click(function () {


                    brid = '';
                    var table = $('#simpletable').DataTable();
                    table.$('input[type="checkbox"]').each(function () {
                        // If checkbox doesn't exist in DOM

                        // If checkbox is checked
                        if (this.checked) {
                            // Create a hidden element

                            //  alert(this);
                            let tr = $(this).closest('tr');
                            brid = tr.find('td:eq(8)').text() + '~' + tr.find('td:eq(9)').text() + '~' + tr.find('td:eq(10)').text() + '~' + tr.find('td:eq(7)').text() + ',' + brid;

                        }

                    });

                    brid = brid.substring(0, brid.length - 1);
                    console.log(brid);
                    if (brid !== '')
                    {

                        console.log(notflag);

                        $('#ticket_type_id').val("10");
                        var ticket_type_id = $("select#ticket_type_id").val();
                        $('#ticket_type_id').attr('disabled', "true");
                        $('#flading').show();

                        if (notflag === 'Y')
                        {
                            ShowConfirmYesNo();
                        } else
                        {
                            $(".q-view").addClass("active");
                        }
                        //Payor

                        $.ajax({
                            url: "tickettypedescdetails",
                            type: "get", //send it through get method
                            data: {
                                ticket_type_id: ticket_type_id
                            },
                            success: function (response) {
                                console.log(response);
                                if (response.length > 0)
                                {
                                    var txt = response;
                                    var obj = jQuery.parseJSON(txt);
                                    console.log(obj.length);
                                    if (obj.length > 0)
                                    {
                                        $(".note-editable").html(obj[0].auto_desc);
                                        $('#flading').hide();
                                    }
                                } else
                                {
                                    $(".note-editable").html('');
                                    $('#flading').hide();
                                }

                            },
                            error: function (err) {
                                console.log(err);
                                $(".note-editable").html('');
                                $('#flading').hide();
                            }
                        });


                        $.ajax({
                            url: "ticketdefaultuserdetails",
                            type: "get", //send it through get method
                            data: {
                                def_ticket_type_id: ticket_type_id,
                                entity_id: entity
                            },
                            success: function (response) {
                                // console.log(response);
                                // console.log(response.length);
                                var txt = response;
                                var obj = jQuery.parseJSON(txt);
                                if (obj.length > 0)
                                {
                                    $.each(obj, function (index, value) {
                                        entity_user = obj[index].assigned_to;
                                        entity_user_to = obj[index].to;
                                        entity_user_cc = obj[index].cc;
                                        entity_user_bcc = obj[index].bcc;
                                        console.log(entity_user);
                                        console.log(entity_user_to);

                                    });
                                    $("select#assigned_to").val(entity_user);
                                    $('#assigned_to').trigger('change');
                                    $('#flading').hide();
                                } else
                                {
                                    $('#flading').hide();
                                }
                            }
                        });


                    } else
                    {

                        msgbox("select atleast one fee schedule..!", "Fee Schedule Form", "warning");
                    }

                });

                $(function () {
                    $('#summernote').summernote({
                        height: 250,
                        codemirror: {
                            mode: 'text/html',
                            htmlMode: true,
                            lineNumbers: true,
                            theme: 'monokai'
                        }
                    });
                });



                $('#simpletable tbody').on('change', 'input[type="checkbox"]', function () {

                    var table = $('#simpletable').DataTable();

                    total = table.column(3, {
                        page: 'current'
                    }).data().count();

                    //alert(count);

                    var isSelected = $(this).is(':checked');



                    if (isSelected) {
                        //  alert('click');
                        $('#modal-1').modal('hide');
                        $('.md-overlay').css("visibility", "hidden");
                        //  $('#raiseticket').show();
                        checked++;
                    } else
                    {
                        $('#modal-1').modal('hide');
                        $('.md-overlay').css("visibility", "hidden");
                        checked--;
                        if (checked > 0)
                        {
                            //     $('#raiseticket').show();
                        } else
                        {
                            // $('#raiseticket').hide();
                        }
                    }
                    // console.log(checked);
                    if (checked === total)
                    {
                        $('#headercheck').prop('checked', true);

                        //$('#btnnot').click();

                        if (checked > 1)
                        {

                            notflag = 'Y';
                        }


                    } else
                    {
                        $('#headercheck').prop('checked', false);
                        if (checked > 1)
                        {

                            notflag = 'Y';
                        } else
                        {
                            notflag = 'N';
                        }
                    }

                });




                $('#headercheck').change(function () {

                    var table = $('#simpletable').DataTable();

                    total = table.column(3, {
                        page: 'current'
                    }).data().count();


                    checked = 0;

                    var isSelected = $(this).is(':checked');

                    if (isSelected) {
                        $('#simpletable tbody input[type=checkbox]').each(function () {
                            $(this).prop('checked', true);
                            if (checked <= total)
                            {
                                checked++;
                            }
                        });

                        // $('#btnnot').click();
                        if (checked > 1)
                        {

                            notflag = 'Y';
                        }
                        //   $('#raiseticket').show();
                    } else
                    {
                        $('#simpletable tbody input[type=checkbox]').each(function () {
                            $(this).prop('checked', false);
                            if (checked > 0)
                            {
                                checked--;
                            }
                        });
                        notflag = 'N';
                        //   $('#raiseticket').hide();
                    }
                    //alert('muthu');


                });

            });


    </script>     


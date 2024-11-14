<%-- 
    Document   : view_eligibility_request
    Created on : 07-Mar-2021, 1:55:15 pm
    Author     : Dell
--%>


<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>


<!DOCTYPE html>
<html>
    <head>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View Fee Schedule</title>
 
        <jsp:include page="includes/header.jsp"></jsp:include>


        <section class="pcoded-main-container">
            <div class="pcoded-wrapper">
                <div style="padding: 15px" class="pcoded-content">
                    <div class="pcoded-inner-content">
                        <div class="main-body">
                            <div class="page-wrapper">

                                <div class="row">
                                    <div class="col-lg-12">
                                        <button class="md-trigger" id="btnadd" data-modal="modal-1" ></button>

                                    </div>
                                </div>

                                <div class="row">
                                    <!-- Zero config table start -->
                                    <div   class="col-sm-12">
                                        <div class="card">
                                            <div class="card-body">
                                                <div class="dt-responsive1 table-responsive1">
                                                    <div class="tableFixHead1">
                                                        <table  id="simpletable" width="100%" class="display compact table table-striped table-bordered nowrap">
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
                                                                    <th style="position: sticky; top: 0; z-index: 1;">CPT</th>
                                                                    <th style="position: sticky; top: 0; z-index: 1;">Desc</th>
                                                                    <th style="position: sticky; top: 0; z-index: 1;">Allowed</th>
                                                                    <th style="position: sticky; top: 0; z-index: 1;">Medicare</th>
                                                                    <th style="position: sticky; top: 0; z-index: 1;">Tid</th>
                                                                    <th style="position: sticky; top: 0; z-index: 1;"></th>
                                                                    <th style="position: sticky; top: 0; z-index: 1;"></th>

                                                                </tr>
                                                            </thead>
                                                            <tbody>

                                                            <c:forEach var="feeschedule" items="${feeschedulelist}">
                                                                <tr>
                                                                    <td><input type="checkbox" class = "check"></td>
                                                                    <td data-toggle="tooltip" data-placement="top" title="" data-original-title="${feeschedule.practicename}">${feeschedule.spracticename}</td>
                                                                    <td>${feeschedule.billing_provider_npi}</td>
                                                                    <td>${feeschedule.startdate}</td>
                                                                    <td>${feeschedule.enddate}</td>
                                                                    <td data-toggle="tooltip" data-placement="top" title="" data-original-title="${feeschedule.payername}">${feeschedule.spayername}</td>
                                                                    <td data-toggle="tooltip" data-placement="top" title="" data-original-title="${feeschedule.plandesc}">${feeschedule.planid}, ${feeschedule.splandesc}</td>
                                                                    <td>${feeschedule.medicare_schedule_year}</td>
                                                                    <td>${feeschedule.cptcode}</td>
                                                                    <td>${feeschedule.des}</td>
                                                                    <td>${feeschedule.allowedamount}</td>
                                                                    <td>${feeschedule.medicare_allowedamount}</td>
                                                                    <td>${feeschedule.tid}</td>
                                                                    <td> <button id ="btnedit" class="btn-success md-trigger editbutton"><span class="feather icon-edit"></span></button></td>
                                                                    <td> <button id ="btndelete" class="btn-danger md-trigger deleted"><span class="feather icon-delete"></span></button></td>


                                                                </tr>

                                                            </c:forEach>

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


    <div class="md-modal md-effect-1" id="modal-1">
        <div class="md-content" id="addmodel">
            <h3 class="model-bg-custom">Fee Schedule <button type="button" id="model_close" class="close" style="font-size:24px; padding-left:20px" data-dismiss="modal" aria-hidden="true">X</button></h3>
            <div>

                <div class="form-group">
                    <label class="form-label">  CPT Code <span class="text-danger">*</span></label>
                    <input type="text" class="form-control" required name="cpt" id = "cpt" placeholder="Enter CPT Code">
                </div>
                <div class="form-group">
                    <label class="form-label">  Allowed Amount</label>
                    <input type="text" class="form-control"  name="allowed" id = "allowed" placeholder="Enter Allowed Amount">
                </div>

                <div class="form-group">
                    <label class="form-label">  Medicare Allowed Amount</label>
                    <input type="text" class="form-control"  name="medicare" id = "medicare" placeholder="Enter Medicate Allowed">
                </div>

                <div class="form-group">
                    <label class="form-label"> Desc</label>
                    <input type="text" class="form-control"  name="des" id = "des" placeholder="Enter Desc">
                </div>


                <div class="card-footer text-right">
                    <input type="hidden"   name="tid" id = "tid" />
                    <button class="btn btn-rounded btn-greenadd btn-block" id = "btnsave">Submit</button>

                </div>



            </div>
        </div>
    </div>

    <div class="md-overlay"></div>

    <jsp:include page="includes/footer.jsp"></jsp:include>

        <script src="assets/js/plugins/select2.full.min.js"></script>
        <script src="assets/js/pages/form-select-custom.js"></script>

        <script type="text/javascript">
            $(document).ready(function () {
                var checked = 0;
                var notflag = 'N';
                var UT = '<%= session.getAttribute("UT")%>';
                // $('#btnadd').hide();
                $('#btnadd').click(function () {
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


                $(document).on("click", "#simpletable button.editbutton", function () {


                    // alert(flag);

                    $('#btnadd').click();

                    let tr = $(this).closest('tr');


                    let a = tr.find('td:eq(8)').text();
                    let b = tr.find('td:eq(10)').text();
                    let c = tr.find('td:eq(11)').text();
                    let d = tr.find('td:eq(12)').text();
                    let e = tr.find('td:eq(9)').text();

                    // console.log(d);
                    $('#cpt').val(a);
                    $('#allowed').val(b);
                    $('#medicare').val(c);
                    $('#tid').val(d);
                    $('#des').val(e);

                });


                $('#btnsave').click(function () {
                    $('#flading').show();
                    var des = '-';
                    if ($('#des').val() !== '')
                    {
                        des = $('#des').val();
                    }

                    $.ajax({
                        url: "editfeescheduledetails",
                        type: "get", //send it through get method
                        data: {
                            feeschedule_val: $('#cpt').val() + '~' + $('#allowed').val() + '~' + $('#medicare').val() + '~' + $('#tid').val() + '~' + des
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

                $(document).on("click", "#simpletable button.deleted", function () {

                    let tr = $(this).closest('tr');

                    let d = tr.find('td:eq(12)').text();

                    if (confirm("Are you sure, you want to delete?")) {

                        $('#flading').show();

                        $.ajax({
                            url: "deletefeescheduledetails",
                            type: "get", //send it through get method
                            data: {
                                deletefeescheduleid: d
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

                $('#flading').hide();

                $(".overlay").click(function () {
                    $(".q-view").removeClass("active");
                });

             
                $('#simpletable').dataTable({
                    "lengthMenu": [10, 30, 50, 100, 500],
                    "aaSorting": [[1, "desc"]], // Sort by first column descending
                    "pageLength": 10,
                    'columnDefs': [{

                        },
                        {
                            bSortable: false,
                            aTargets: [0]
                        }],

                    createdRow: function (row, data, dataIndex) {
                        // add tooltip when row is created
                        $(row).find('td:eq(1)').hide();
                        $(row).find('td:eq(2)').hide();
                        $(row).find('td:eq(3)').hide();
                        $(row).find('td:eq(4)').hide();
                        $(row).find('td:eq(5)').hide();
                        $(row).find('td:eq(6)').hide();
                        $(row).find('td:eq(7)').hide();
                        $(row).find('td:eq(12)').hide();

        <sec:authorize access="hasAnyRole('ROLE_ENTITY_ADMIN,ROLE_CORP_ADMIN,ROLE_GROUPCLINIC_ADMIN,ROLE_BILLING_ADMIN,ROLE_PRACTICE_ADMIN')">

                        $(row).find('td:eq(14)').show();


        </sec:authorize>


        <sec:authorize access="hasAnyRole('ROLE_ADMIN,ROLE_USER,ROLE_ENTITY_STAFF,ROLE_CORP_PRACTICE,ROLE_CORP_STAFF,ROLE_GROUPCLINIC_PROVIDER,ROLE_GROUPCLINIC_STAFF,ROLE_BILLING_STAFF,ROLE_EDITOR,ROLE_PROOFER,ROLE_PRACTICE_PROVIDER,ROLE_PRACTICE_STAFF,ROLE_REFERING_PROVIDER,ROLE_PATIENT')">

                        $(row).find('td:eq(14)').hide();


        </sec:authorize>


                        //  console.log(data["amount"])
                    }
                });

                var not_tid = GetParameterValues('tid');
                if (typeof (not_tid) !== 'undefined')
                {
                    var table = $('#simpletable').DataTable();
                    table.column(11).search(not_tid).draw();
                }

                var total = 0;

                $('#simpletable tbody').on('change', 'input[type="checkbox"]', function () {

                    var table = $('#simpletable').DataTable();

                    total = table.column(3, {
                        page: 'current'
                    }).data().count();

                    //alert(count);

                    var isSelected = $(this).is(':checked');



                    if (isSelected) {

                        checked++;
                    } else
                    {

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

                $('#simpletable').find('thead').find('tr').each(function () {

                    $(this).find('th:eq(1)').hide();
                    $(this).find('th:eq(2)').hide();
                    $(this).find('th:eq(3)').hide();
                    $(this).find('th:eq(4)').hide();
                    $(this).find('th:eq(5)').hide();
                    $(this).find('th:eq(6)').hide();
                    $(this).find('th:eq(7)').hide();
                    $(this).find('th:eq(12)').hide();
                    //  $(this).find('th:eq(11)').hide();


        <sec:authorize access="hasAnyRole('ROLE_ENTITY_ADMIN,ROLE_CORP_ADMIN,ROLE_GROUPCLINIC_ADMIN,ROLE_BILLING_ADMIN,ROLE_PRACTICE_ADMIN')">

                    $(this).find('th:eq(14)').show();


        </sec:authorize>


        <sec:authorize access="hasAnyRole('ROLE_ADMIN,ROLE_USER,ROLE_ENTITY_STAFF,ROLE_CORP_PRACTICE,ROLE_CORP_STAFF,ROLE_GROUPCLINIC_PROVIDER,ROLE_GROUPCLINIC_STAFF,ROLE_BILLING_STAFF,ROLE_EDITOR,ROLE_PROOFER,ROLE_PRACTICE_PROVIDER,ROLE_PRACTICE_STAFF,ROLE_REFERING_PROVIDER,ROLE_PATIENT')">

                    $(this).find('th:eq(14)').hide();


        </sec:authorize>


                });


                $('#simpletable').find('tbody').find('tr').each(function () {



        <sec:authorize access="hasAnyRole('ROLE_ENTITY_ADMIN,ROLE_CORP_ADMIN,ROLE_GROUPCLINIC_ADMIN,ROLE_BILLING_ADMIN,ROLE_PRACTICE_ADMIN')">

                    $(this).find('td:eq(14)').show();


        </sec:authorize>


        <sec:authorize access="hasAnyRole('ROLE_ADMIN,ROLE_USER,ROLE_ENTITY_STAFF,ROLE_CORP_PRACTICE,ROLE_CORP_STAFF,ROLE_GROUPCLINIC_PROVIDER,ROLE_GROUPCLINIC_STAFF,ROLE_BILLING_STAFF,ROLE_EDITOR,ROLE_PROOFER,ROLE_PRACTICE_PROVIDER,ROLE_PRACTICE_STAFF,ROLE_REFERING_PROVIDER,ROLE_PATIENT')">

                    $(this).find('td:eq(14)').hide();


        </sec:authorize>

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

                var brid = '';
                $('#brid').hide();

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
                            brid = tr.find('td:eq(12)').text() + ',' + brid;

                        }

                    });

                    brid = brid.substring(0, brid.length - 1);
                    console.log(brid);
                    if (brid !== '')
                    {
                        if (notflag === 'Y')
                        {
                            ShowConfirmYesNo();
                        } else
                        {
                            $(".q-view").addClass("active");
                        }
                        //  $('#btnclick').click(); -- Main

                        //  $('#modal-1').modal('toggle');
                        //  $('.md-overlay').css("visibility", "visible");

                        $('#ticket_type_id').val("10");
                        var ticket_type_id = $("select#ticket_type_id").val();
                        $('#ticket_type_id').attr('disabled', "true");
                        $('#flading').show();
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


                var ticketsource = '<%=session.getAttribute("source")%>';
                var files = '';

                var progressbar = $('.progress-bar1');
                $("#btnsubmit").click(function () {
                    $('#flading').show();
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
                            segment: "K",
                            currentdt: today,
                            request_id: brid
                        },
                        success: function (response) {
                            console.log(response);
                            $("select#ticket_type_id").val('10');
                            $("select#assigned_to").val('0');
                            $(".note-editable").html('');
                            // swal("Record Saved", "", "success");
                            msgbox("Ticket Saved", "Ticket Form", "success");
                            //  window.location.reload();
                            $('#flading').hide();
                            $(".overlay").click();
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
                        var strcontent = "Hi " + assignto + ", <br><br>" + "Type: " + tickettype + "<br>Source: " + tsource + "<br>Priority: " + ticketpriority + "<br> Assign To: " + assignto + "<br>Segment: Fee Schedule [K]" + "<br><br>" + $(".note-editable").html();
                        // Email Config
                        $.post('eMail', {
                            recipient: entity_user_to,
                            subject: 'Ticket Raised from [Fee Schedule] Form: ' + tickettype + ' : ' + tstatus + ' to ' + assignto,
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



            });


    </script>     


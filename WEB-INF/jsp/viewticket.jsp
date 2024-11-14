<%-- 
    Document   : view_eligibility_request
    Created on : 07-Mar-2021, 1:55:15 pm
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View Ticket</title>


        <jsp:include page="includes/header.jsp"></jsp:include>


        <div class="pcoded-main-container">
            <div class="pcoded-wrapper">
                <div style="padding: 15px" class="pcoded-content">
                    <div class="pcoded-inner-content">
                        <div class="main-body">
                            <button id="btnclick" class="md-trigger" style="width:0px;height:0px;border:0;" data-modal="modal-1"></button>
                            <div class="page-wrapper">
                                <div class="row">
                                    <div class="card">
                                        <div class="card-body">
                                            <div class="text-center">
                                                <div class="form-group d-inline">
                                                    <div class="radio radio-primary d-inline">
                                                        <input class="form-check-input" type="radio" name="createdby" id="createdby" value="option1" checked>
                                                        <label for="createdby" class="cr">Created by me</label>
                                                    </div>
                                                </div>

                                                <div class="form-group d-inline">
                                                    <div class="radio radio-success d-inline">
                                                        <input class="form-check-input" type="radio" name="createdby" id="assignedto" value="option2">
                                                        <label for="assignedto" class="cr">Assigned to me</label>
                                                    </div>
                                                </div>

                                                <div class="form-group d-inline">
                                                    <div class="radio radio-warning d-inline">
                                                        <input class="form-check-input" type="radio" name="createdby" id="reassignbyme" value="option3">
                                                        <label for="reassignbyme" class="cr">Reassigned</label>
                                                    </div>
                                                </div>

                                                <div class="form-group d-inline">
                                                    <div class="radio radio-danger d-inline">
                                                        <!-- <input class="form-check-input" type="radio" name="createdby" id="excalated" value="option4">
                                                         <label for="excalated" class="cr">Escalated tickets</label> -->
                                                    </div>
                                                </div>

                                                <div class="form-group d-inline" id="header">
                                                    <div class="radio radio-dark d-inline" id="headallticket">
                                                        <input class="form-check-input" type="radio" name="createdby" id="allticket" value="option5">
                                                        <label for="allticket" class="cr" id="lblallticket"> All tickets</label>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="dt-responsive table-responsive">
                                                <div class="tableFixHead1 tablehide">
                                                    <table  id="eligibilitytable" width="98%"  class="display  compact table table-striped table-bordered nowrap">
                                                        <thead>
                                                            <tr>
                                                                <th style="position: sticky; top: 0; z-index: 1;">ID</th>
                                                                <th style="position: sticky; top: 0; z-index: 1;">Type</th>
                                                                <th style="position: sticky; top: 0; z-index: 1;">Created By</th>
                                                                <th style="position: sticky; top: 0; z-index: 1;">Created On</th>
                                                                <th style="position: sticky; top: 0; z-index: 1;">Assigned To</th>
                                                                <th style="position: sticky; top: 0; z-index: 1;">Last Assigned</th>
                                                                <th style="position: sticky; top: 0; z-index: 1;">Priority</th>
                                                                <th style="position: sticky; top: 0; z-index: 1;">Status</th>
                                                                <th style="position: sticky; top: 0; z-index: 1;">Elapsed</th>
                                                                <th style="position: sticky; top: 0; z-index: 1;"></th>
                                                                <th style="position: sticky; top: 0; z-index: 1;">type_of_ticket_id</th>
                                                                <th style="position: sticky; top: 0; z-index: 1;">ticket_status_id</th>
                                                                <th style="position: sticky; top: 0; z-index: 1;">assigned_to_id</th>
                                                                <th style="position: sticky; top: 0; z-index: 1;">ticket_source_id</th>
                                                                <th style="position: sticky; top: 0; z-index: 1;">ticket_priority_id</th>
                                                                <th style="position: sticky; top: 0; z-index: 1;">Source</th>
                                                                <th style="position: sticky; top: 0; z-index: 1;">Created_by_id</th>
                                                                <th style="position: sticky; top: 0; z-index: 1;">Desc</th>
                                                                <th style="position: sticky; top: 0; z-index: 1;"></th>
                                                                <th style="position: sticky; top: 0; z-index: 1;"><span class='fas fa-edit'></span></th>


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




        <div class="q-view" id="qv1">
            <div class="overlay" id="ov1"></div>
            <div class="content">
                <div class="card-body">
                    <h4>Ticket<span class="badge badge-danger text-uppercase ml-2 f-12">Ticket#: <label class="mb-0" id="ticket_badge" ></label></span></h4>
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

                <div class="col-sm-12">
                    <div class="card border-0 shadow-none">
                        <div class="card-body pr-0 pl-0 pt-0">

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
                                        <label class="form-label" for="ticket_status_id">Status <span class="text-danger">*</span></label>
                                        <select class="form-control" required id="ticket_status_id" name ="ticket_status_id">
                                            <!--    <c:forEach var="ticket" items="${ticketstatuslist}">
                                                    <option value = ${ticket.tid}>${ticket.ticket_status}</option>
                                            </c:forEach> -->
                                        </select>

                                    </div>

                                    <div class="col-lg-6">
                                        <label class="form-label">Browse </label>

                                        <input class="form-control" type="file" name="file" id="attachment_id" multiple >  


                                        <div class="preview"></div>
                                        <div class="progress" style="display:none">
                                            <div class="progress-bar"  id="ticketprogress" role="progressbar" aria-valuenow="0"
                                                 aria-valuemin="0" aria-valuemax="100" style="width:0%">
                                                0%
                                            </div>
                                        </div>
                                    </div>	

                                </div>
                                <div class="form-group row">
                                    <div class="col-lg-6">
                                        <label class="form-label"  for="assigned_to">Assign To <span class="text-danger">*</span></label>

                                        <select class="form-control js-example-placeholder-multiple" id="assigned_to" required name="assigned_to">
                                            <option value = "" >--Select--</option>
                                            <c:forEach var="ticket" items="${assignuserlist}">
                                                <option value = ${ticket.user_id}>${ticket.username}</option>
                                            </c:forEach>
                                        </select>
                                    </div>

                                    <div class="col-lg-6">
                                        <label class="form-label" id="lblticketsource">Ticket Source</label>

                                        <input type="text" class="form-control"  name="ticket_source" id = "ticket_source" disabled placeholder="Enter ticket source">

                                        <select class="form-control" id="action_code" required name="action_code">
                                            <option value = "0" >--Select--</option>
                                            <c:forEach var="ticket" items="${denialactionlist}">
                                                <option value = ${ticket.action_code_id}>${ticket.action_code}</option>
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
                                        <button type="submit" id="btnsubmit" onclick="removeAttr()" class="btn btn-rounded btn-greenadd btn-block">Submit</button>

                                    </div>
                                    <hr/>
                                    <div class="col-lg-8"><div id="attachment"></div></div>
                                </div>
                            </form:form>

                        </div>



                    </div>



                </div>
            </div>

        </div>

    </div>


    <div class="q-view" id="qv2">
        <div class="overlay" id="ov2"></div>
        <div class="content">
            <div class="col-sm-12">
                <div>
                    <div class="row">
                        <div class="col">
                            <div class="card">
                                <div class="bg-c-blue p-4">
                                    <h5 class="text-white mb-0"><i class="feather icon-lock mr-1"></i>Ticket #<span id="ticketid"></span></h5>
                                </div>
                                <div class="card-body topic-name">
                                    <div class="row align-items-center">
                                        <div class="col-md-8">
                                            <h3 class="d-inline-block mb-0"><span id="tickettype"></span></h3>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="btn-star">
                                                <!--   <a href="#!" class="btn btn-primary btn-sm">Mark as unread</a>
                                                   <a href="#!"><i class="feather icon-star f-20 text-muted"></i></a> -->
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="bg-light p-3">
                                    <div class="row align-items-center">
                                        <div class="col-md-12">
                                            <!--    <button type="button" class="btn btn-secondary text-uppercase"><i class="fas fa-comment-alt"></i>Post a reply <span class="badge badge-light m-l-10">R</span></button>
                                                <button type="button" class="btn btn-secondary text-uppercase"><i class="fas fa-pen"></i>Post a Note <span class="badge badge-light m-l-10">N</span></button>
                                                <button type="button" class="btn btn-secondary text-uppercase"><i class="fas fas fa-address-book"></i>Customer Notes</button> -->
                                        </div>
                                    </div>
                                </div>

                                <div id="card1">

                                </div>

                            </div>
                        </div>

                    </div>

                </div>

            </div>

        </div>

    </div>




    <div class="md-modal md-effect-1" id="modal-1">
        <div class="md-content" id="tickettag">


        </div>
    </div>
    <div class="md-overlay"></div>

    <div id="flading" class="loader">

    </div>

    <jsp:include page="includes/footer.jsp"></jsp:include>
        <script src="assets/js/plugins/select2.full.min.js"></script>
        <script src="assets/js/pages/form-select-custom.js"></script>
        <script type="text/javascript">
                                            $(document).ready(function () {

                                                var weburl = '';
        <c:forEach var="url" items="${weburl}">
                                                weburl = '${url}';
        </c:forEach>
                                                $(".tableFixHead1").removeClass("tablehide");
                                                $(".tableFixHead1").addClass("tableshow");
                                                var entity = '<%= session.getAttribute("Entityid")%>';
                                                var LoginUsername = '<%= session.getAttribute("LoginUsername")%>';
                                                var entity_user = '';
                                                var entity_user_to = '';
                                                var entity_user_cc = '';
                                                var entity_user_bcc = '';
                                                var segmentid = '';

                                                var UT = '<%= session.getAttribute("UT")%>';
                                                console.log(UT);

                                                if (UT === "1" || UT === "2" || UT === "9")
                                                {
                                                    // $('#allticket').show();
                                                    // $('#lblallticket').show();
                                                } else
                                                {
                                                    $('#allticket').hide();
                                                    $('#lblallticket').hide();
                                                }

                                                $("#ov1").click(function () {
                                                    $("#qv1").removeClass("active");
                                                });
                                                $("#ov2").click(function () {
                                                    $("#qv2").removeClass("active");
                                                });


                                                $('#flading').hide();
                                                var ticketid = '';
                                                var entity = '<%= session.getAttribute("Entityid")%>';
                                                var userid = '<%= session.getAttribute("Userid")%>';
                                                var usertype = '<%=session.getAttribute("UT")%>';
                                                var ticketsource = '<%=session.getAttribute("source")%>';


                                                var table = $('#eligibilitytable').DataTable({
                                                    "aaSorting": [[0, "desc"]], // Sort by first column descending
                                                    "lengthMenu": [10, 30, 50, 100, 500],
                                                    "iDisplayLength": 10,
                                                    stateSave: true,
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

                                                        $('[role="tooltip"]').tooltip('update');
                                                        //$("#list-of-product tbody tr > td").tooltip('hide');
                                                    },
                                                    "ajax": {
                                                        "type": "GET",
                                                        "url": 'assignedbydata',
                                                        "contentType": 'application/json'
                                                    },
                                                    "columns": [
                                                        {"data": "ticket_id", "orderable": true, "searchable": true, "name": "ticket_id"},
                                                        {"data": function (data) {
                                                                var ticket_type = data.ticket_type;
                                                                ticket_type = ticket_type.substring(0, 10);
                                                                return  ticket_type;
                                                            },
                                                            "orderable": true, "searchable": true, "name": "ticket_type"},
                                                        {"data": "created_by", "orderable": true, "searchable": true, "name": "created_by"},
                                                        {"data": function (data) {
                                                                return  convertLocalDateToUTCDate(data.creation_timestamp);
                                                                //  var date =  new Date('2021-12-13T23:34:05Z');
                                                                // return date.toString();
                                                            }, "orderable": true, "searchable": true, "name": "creation_timestamp"},
                                                        {"data": function (data) {
                                                                var assigned_to = data.assigned_to;
                                                                assigned_to = assigned_to.substring(0, 15);
                                                                return  assigned_to;
                                                            },
                                                            "orderable": true, "searchable": true, "name": "assigned_to"},
                                                        {"data": function (data) {
                                                                return  convertLocalDateToUTCDate(data.assigned_timestamp);
                                                            }, "orderable": true, "searchable": true, "name": "assigned_timestamp"},
                                                        {"data": "ticket_priority", "orderable": true, "searchable": true, "name": "ticket_priority"},
                                                        {"data": function (data) {
                                                                return data.ticket_status + "~" + data.segment;
                                                                // target='_blank' href= 'ticketdetails?ticket_id=" + data.ticket_id + "&type=" + data.ticket_type + "
                                                            }, "orderable": true, "searchable": true, "name": "ticket_status"},
                                                        {"data": "difference", "orderable": true, "searchable": true, "name": "difference"},

                                                        {"data": function (data) {
                                                                return "<a id ='btnedit' class='badge f-16 editbutton' role='tooltip' data-microtip-position='left' aria-label='Edit'><i class='fas fa-edit' style='font-size:15px; margin:0 3px;color:#2DCEE3;'></i></a>";
                                                            }, "orderable": false, "searchable": true, "name": "ticket_id"},
                                                        {"data": "ticket_type_id", "orderable": false, "searchable": false, "name": "ticket_type_id"},
                                                        {"data": "ticket_status_id", "orderable": false, "searchable": false, "name": "ticket_status_id"},
                                                        {"data": "assigned_to_id", "orderable": false, "searchable": false, "name": "assigned_to_id"},
                                                        {"data": "ticket_source_id", "orderable": false, "searchable": false, "name": "ticket_source_id"},
                                                        {"data": "ticket_priority_id", "orderable": false, "searchable": false, "name": "ticket_priority_id"},
                                                        {"data": "ticket_source", "orderable": true, "searchable": true, "name": "ticket_source"},
                                                        {"data": "created_by_id", "orderable": false, "searchable": false, "name": "created_by_id"},
                                                        {"data": "auto_desc", "orderable": false, "searchable": false, "name": "auto_desc"},
                                                        {"data": function (data) {
                                                                return "<a  class= 'badge f-16 historybutton' role='tooltip' data-microtip-position='left' data-microtip-size='small' aria-label='view history'><i class='fas fa-history' style='font-size:15px; margin:0 3px; color:#FF9764;'></i></a>";
                                                                // target='_blank' href= 'ticketdetails?ticket_id=" + data.ticket_id + "&type=" + data.ticket_type + "
                                                            }, "orderable": false, "searchable": false, "name": "created_by "},
                                                        {"data": function (data) {
                                                                return data.flag;
                                                                // target='_blank' href= 'ticketdetails?ticket_id=" + data.ticket_id + "&type=" + data.ticket_type + "
                                                            }, "orderable": false, "searchable": false, "name": "flag"}
                                                    ],
                                                    createdRow: function (row, data, dataIndex) {

                                                        //  $(row).find('td:eq(20)').hide();
                                                        $(row).find('td:eq(10)').hide();
                                                        $(row).find('td:eq(11)').hide();
                                                        $(row).find('td:eq(12)').hide();
                                                        $(row).find('td:eq(13)').hide();
                                                        $(row).find('td:eq(14)').hide();
                                                        $(row).find('td:eq(15)').hide();
                                                        $(row).find('td:eq(16)').hide();
                                                        $(row).find('td:eq(17)').hide();
                                                        if (data["ticket_type"].toString() !== '') {
                                                            $(row).find('td:eq(1)').attr('role', "tooltip");
                                                            $(row).find('td:eq(1)').attr('data-microtip-position', "right");
                                                            $(row).find('td:eq(1)').attr('data-microtip-size', "medium");
                                                            $(row).find('td:eq(1)').attr('aria-label', data["ticket_type"].toString());
                                                        }
                                                        if (data["assigned_to"].toString() !== '') {
                                                            $(row).find('td:eq(4)').attr('role', "tooltip");
                                                            $(row).find('td:eq(4)').attr('data-microtip-position', "left");
                                                            $(row).find('td:eq(4)').attr('data-microtip-size', "medium");
                                                            $(row).find('td:eq(4)').attr('data-original-title', data["assigned_to"].toString());
                                                        }

                                                        var flagval = $(row).find('td:eq(7)').text().split('~');
                                                        // console.log()
                                                        $(row).find('td:eq(7)').html(flagval[0]);
                                                        $(row).find('td:eq(7)').attr('id', flagval[1]);
                                                        // console.log(flagval[0]);


                                                        if (data.flag === 'N')
                                                        {
                                                            $(row).attr('style', 'font-weight: bold; !important;');
                                                        }



                                                    }

                                                }).on('click', 'tr', function () {


                                                });


                                                var para = GetParameterValues('para');
                                                if (typeof (para) !== 'undefined')
                                                {
                                                    $('#assignedto').prop('checked', true);
                                                    $('#flading').show();
                                                    table.ajax.url("assignedtodata").load();
                                                    $('#flading').hide();
                                                }

                                                var notticket_id = GetParameterValues('ticketid');
                                                var notticket_type = GetParameterValues('tickettype');

                                                if (typeof (notticket_id) !== 'undefined')
                                                {
                                                    $.ajax({
                                                        url: "editticketnotyupdatedetails",
                                                        type: "get", //send it through get method
                                                        data: {
                                                            noty_ticket_id: notticket_id
                                                        },
                                                        success: function (response) {
                                                            console.log(response);

                                                        },
                                                        error: function (err) {
                                                            console.log(err);

                                                        }
                                                    });

                                                    $('#assignedto').prop('checked', true);
                                                    var table = $('#eligibilitytable').DataTable();
                                                    table.ajax.url("assignedtodata").load();
                                                    table.search(notticket_id).draw();

                                                    $('#flading').show();
                                                    $('#qv2').find('#card1').html('');
                                                    $('#flading').hide();

                                                }

                                                $('#eligibilitytable').find('thead').find('tr').each(function () {

                                                    $(this).find('th:eq(10)').hide();
                                                    $(this).find('th:eq(11)').hide();
                                                    $(this).find('th:eq(12)').hide();
                                                    $(this).find('th:eq(13)').hide();
                                                    $(this).find('th:eq(14)').hide();
                                                    $(this).find('th:eq(15)').hide();
                                                    $(this).find('th:eq(16)').hide();
                                                    $(this).find('th:eq(17)').hide();
                                                    //  $(this).find('th:eq(20)').hide();


                                                });


                                                var checktab = 0;
                                                $('#createdby').click(function () {

                                                    $('#flading').show();
                                                    table.ajax.url("assignedbydata").load();
                                                    checktab = 1;
                                                    $('#flading').hide();
                                                });
                                                //alert();

                                                $('#assignedto').click(function () {
                                                    $('#flading').show();
                                                    table.ajax.url("assignedtodata").load();
                                                    checktab = 2;
                                                    $('#flading').hide();
                                                });
                                                $('#reassignbyme').click(function () {
                                                    $('#flading').show();
                                                    table.ajax.url("reassignedbyme").load();
                                                    checktab = 3;
                                                    $('#flading').hide();
                                                });
                                                $('#allticket').click(function () {
                                                    $('#flading').show();
                                                    table.ajax.url("allticketlist").load();
                                                    checktab = 4;
                                                    $('#flading').hide();
                                                });
                                                //allticketlist

                                                $('#btnclick').click(function () {

                                                    $('#modal-1').modal('show');
                                                    $('.md-overlay').css("visibility", "visible");
                                                    $('.md-show').css("visibility", "visible");
                                                });
                                                $('#model_close').click(function () {
                                                    $('#modal-1').modal('hide');
                                                    $('.md-show').removeAttr("visibility", "hidden");
                                                    $('.md-overlay').css("visibility", "hidden");
                                                });
                                                var progressbar = $('.progress-bar');

                                                function IsNullOrWhiteSpace(value) {

                                                    if (value === null)
                                                    {
                                                        return false;
                                                    } else
                                                    {
                                                        return true;
                                                    }

                                                    //  return value.replace(/\s/g, '').length == 0;
                                                }

                                                $("#btnsubmit").click(function () {
                                                    var user_id = $("select#assigned_to").val();
                                                    var statusId = $("select#ticket_status_id").val();
                                                    console.log(IsNullOrWhiteSpace(user_id));
                                                    if (user_id !== "" && statusId !== "")
                                                    {
                                                        if (IsNullOrWhiteSpace(user_id))
                                                        {
                                                            $('#flading').show();
                                                            $("form").ajaxForm(
                                                                    {
                                                                        beforeSend: function () {
                                                                            $(".progress").css("display", "block");
                                                                            progressbar.width('0%');
                                                                            progressbar.text('0%');
                                                                        },
                                                                        uploadProgress: function (event, position, total, percentComplete) {
                                                                            //    progressbar.width(percentComplete + '%');
                                                                            //    progressbar.text(percentComplete + '%');

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


                                                                            $(".progress").css("display", "block");
                                                                            progressbar.width('0%');
                                                                            progressbar.text('0%');
                                                                            $('#flading').hide();
                                                                            //    $('#btnsubmit').removeAttr('disabled');
                                                                        }
                                                                    });
                                                        }
                                                    }
                                                });
                                                var mulfilename = '';
                                                // var filesize = '';
                                                // var filetype = ''
                                                $('#attachment_id').change(function (e) {
                                                    mulfilename = e.target.files.name;
                                                    //  filesize = e.target.files[0].size;
                                                    //   filetype = e.target.files[0].type;
                                                    //  alert(geekss + ' is the selected file .');
                                                });
                                                $("form").submit(function () {

                                                    var totalSize = 0;
                                                    var user_id = $("select#assigned_to").val();
                                                    console.log(user_id);
                                                    if (user_id !== "")
                                                    {
                                                        if (IsNullOrWhiteSpace(user_id))
                                                        {
                                                            $('#flading').show();

                                                            $('#assigned_to').removeAttr('disabled');
                                                            $('#ticket_priority_id').removeAttr('disabled');

                                                            var files = $('#attachment_id').prop("files");
                                                            var names = $.map(files, function (val) {
                                                                var filename = val.name;
                                                                var extension = filename.split('.').pop();
                                                                console.log(extension);
                                                                if (filename.endsWith('.exe')) {
                                                                    msgbox("Uploading EXE files are not allowed", "Ticket Form", "error");
//                                                                                            $(this).next('.custom-file-label').html("Choose file...");
                                                                    $(this).val(null);
                                                                    return;
                                                                } else if (filename.endsWith('.dll')) {
                                                                    msgbox("Uploading DLL files are not allowed", "Ticket Form", "error");
//                                                                                            $(this).next('.custom-file-label').html("Choose file...");
                                                                    $(this).val(null);
                                                                    return;
                                                                } else if (filename.endsWith('.sh')) {
                                                                    msgbox("Uploading sh files are not allowed", "Ticket Form", "error");
//                                                                                            $(this).next('.custom-file-label').html("Choose file...");
                                                                    $(this).val(null);
                                                                    return;
                                                                } else if (filename.endsWith('.bat')) {
                                                                    msgbox("Uploading bat files are not allowed", "Ticket Form", "error");
//                                                                                            $(this).next('.custom-file-label').html("Choose file...");
                                                                    $(this).val(null);
                                                                    return;
                                                                }
//                                                                                        $(this).next('.custom-file-label').html(filename);
                                                                // var fn = val.name;
                                                                // return fn.replaceAll(',', '');
                                                                return val.name;
                                                            });
                                                            var size = $.map(files, function (val) {
//                                                                for (var i = 0; i < files.length; i++) {
//                                                                    totalSize += val.size;
//                                                                }
//                                                                alert(totalSize);
//                                                                if (totalSize > 50000000)
//                                                                {
//                                                                    msgbox("Uploaded file size exceeded 50MB", "Ticket Form", "error");
//                                                                    $(this).val(null);
//                                                                    totalSize = 0;
//                                                                    return;
//                                                                }
                                                                return val.size;
                                                            });
                                                            let namestext = names.toString();
                                                            let sizetext = size.toString();

                                                            var fns = '';
                                                            for (let i = 0; i < names.length; i++) {
                                                                fns += names[i].replaceAll(',', '').replaceAll('#', '') + ",";
                                                            }

                                                            fns = fns.substring(0, fns.length - 1);

                                                            // namestext = namestext.replaceAll('#', '');
                                                            //  console.log($(".note-editable").html());

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
                                                            var checkac = false;
                                                            if (segmentid === "O" || segmentid === "P")
                                                            {
                                                                if ($("select#action_code").val() !== "0")
                                                                {
                                                                    checkac = true;
                                                                } else
                                                                {
                                                                    msgbox("Select Action Code..!", "Ticket Form", "error");
                                                                    checkac = false;
                                                                }
                                                            } else
                                                            {
                                                                checkac = true;
                                                            }

                                                            if (checkac)
                                                            {
                                                                $.ajax({
                                                                    url: "editraiseticket",
                                                                    type: "get", //send it through get method
                                                                    data: {
                                                                        descriptions: $(".note-editable").html(),
                                                                        ticket_status: $("select#ticket_status_id").val(),
                                                                        assigned_to: $("select#assigned_to").val(),
                                                                        attachmentfile: fns,
                                                                        attachmentfilesize: sizetext,
                                                                        ticket_priority: $("select#ticket_priority_id").val(),
                                                                        ticket_id: ticketid,
                                                                        currentdt: today,
                                                                        updated_by: userid,
                                                                        action_code: $("select#action_code").val()
                                                                    },
                                                                    success: function (response) {
                                                                        console.log(response);
                                                                        $("select#assigned_to").val('');
                                                                        $("#assigned_to").trigger('change');
                                                                        $(".note-editable").html('');
                                                                        // swal("Record Saved", "", "success");
                                                                        msgbox("Ticket Saved", "Ticket Form", "success");
                                                                        //   window.location.reload();
                                                                        if (checktab === 1)
                                                                        {
                                                                            table.ajax.url("assignedbydata").load();
                                                                        } else if (checktab === 2)
                                                                        {
                                                                            table.ajax.url("assignedtodata").load();
                                                                        } else if (checktab === 3)
                                                                        {
                                                                            table.ajax.url("reassignedbyme").load();
                                                                        } else if (checktab === 4)
                                                                        {
                                                                            table.ajax.url("allticketlist").load();
                                                                        } else
                                                                        {
                                                                            table.ajax.url("assignedbydata").load();
                                                                        }

                                                                        $('#flading').hide();
                                                                        $("#ov1").click();
                                                                    },
                                                                    error: function (err) {
                                                                        console.log(err);
                                                                        msgbox("Ticket Not Saved", "Ticket Form", "error");
                                                                        $('#flading').hide();
                                                                        $("#ov1").click();
                                                                    }
                                                                });


                                                                if ($("select#assigned_to").val() !== "")
                                                                {
                                                                    var strcontent = "Hi " + assignto + ", <br><br>" + "Ticket#: <a href='" + weburl + "viewticket?ticketid=" + ticketid + "&tickettype=" + tickettype + "'>" + ticketid + "</a><br>Type: " + tickettype + "<br>Source: " + tsource + "<br>Priority: " + ticketpriority + "<br> Assign To: " + assignto + "<br><br>" + $(".note-editable").html();
                                                                    // console.log($("#ticket_status_id option:selected").text());
                                                                    // Email Config
                                                                    //  'Ticket Raised from [Claim Detailed View] Form: ' + tickettype + ' : ' + tstatus + ' to ' + assignto,
                                                                    console.log(strcontent);
                                                                    $.post('eMail', {
                                                                        recipient: entity_user_to,
                                                                        subject: 'Ticket #' + ticketid + ' - ' + tickettype + ' : ' + $("#ticket_status_id option:selected").text() + ' to ' + assignto,
                                                                        content: strcontent,
                                                                        cc: entity_user_cc,
                                                                        bcc: entity_user_bcc


                                                                    }, function (response) {

                                                                        console.log(response);

                                                                    });
                                                                }
                                                            }

                                                        }
                                                    }
                                                });


                                                $(document).on("click", "#eligibilitytable a.editbutton", function () {
                                                    $('#flading').show();
                                                    let tr = $(this).closest('tr');
                                                    $("#qv1").addClass("active");
                                                    // $('#btnclick').click();
                                                    var tab_text = '';
                                                    $(".note-editable").html('');
                                                    let a = tr.find('td:eq(10)').text();

                                                    let b = tr.find('td:eq(14)').text();
                                                    let c = tr.find('td:eq(12)').text();
                                                    let d = tr.find('td:eq(11)').text();
                                                    let e = tr.find('td:eq(15)').text();
                                                    let createdby = tr.find('td:eq(2)').text();
                                                    $('#ticket_type_id').val(a);
                                                    $('#ticket_priority_id').val(b);
                                                    var exists = 0 !== $('#assigned_to option[value=' + c + ']').length;

                                                    if (exists)
                                                    {
                                                        $('#assigned_to').val(c);
                                                        $("#assigned_to").trigger('change');
                                                    } else
                                                    {
                                                        $('#assigned_to').val("");
                                                        $("#assigned_to").trigger('change');
                                                    }

                                                    $('#ticket_status_id').val(d);
                                                    $('#ticket_source').val(e);
                                                    $('#ticket_type_id').attr('disabled', "true");
                                                    ticketid = tr.find('td:eq(0)').text();
                                                    //  var heading = "Ticket#: " + ticketid + "&nbsp;&nbsp;&nbsp;Created By: " + createdby + "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Created On: " + tr.find('td:eq(3)').text();
                                                    // $('#span_Prov').html(heading);


                                                    $('#raiseduser').text(createdby);
                                                    $('#currentdate').text(tr.find('td:eq(3)').text());
                                                    $('#ticket_badge').text(ticketid);

                                                    $('#action_code').val("0");

                                                    let s = tr.find('td:eq(7)').attr("id");
                                                    segmentid = s;
                                                    console.log("segmentid: " + segmentid);

                                                    if (s === "P" || s === "O")
                                                    {
                                                        $('#lblticketsource').text('Action Code');
                                                        $('#ticket_source').hide();
                                                        $('#action_code').show();
                                                    } else
                                                    {
                                                        $('#lblticketsource').text('Ticket Source');
                                                        $('#ticket_source').show();
                                                        $('#action_code').hide();
                                                    }

                                                    $.ajax({
                                                        url: "editticketnotyupdatedetails",
                                                        type: "get", //send it through get method
                                                        data: {
                                                            noty_ticket_id: ticketid
                                                        },
                                                        success: function (response) {
                                                            console.log(response);

                                                        },
                                                        error: function (err) {
                                                            console.log(err);

                                                        }
                                                    });

                                                    //  console.log(entity);
                                                    if (d === "1")
                                                    {

                                                        $.ajax({
                                                            url: "ticketdefaultuserdetails",
                                                            type: "get", //send it through get method
                                                            data: {
                                                                def_ticket_type_id: a,
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
                                                                    $("#assigned_to").trigger('change');
                                                                    $('#flading').hide();
                                                                } else
                                                                {
                                                                    $("#assigned_to").val("");
                                                                    $("#assigned_to").trigger('change');
                                                                    $('#flading').hide();
                                                                }
                                                            }
                                                        });

                                                    } else
                                                    {
                                                        $.ajax({
                                                            url: "ticketentityuserdetails",
                                                            type: "get", //send it through get method
                                                            data: {
                                                                user_id: c,
                                                                def_ticket_type_id: a
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

                                                    $.ajax({
                                                        url: "ticketStatusDetails",
                                                        type: "get", //send it through get method
                                                        data: {
                                                            ticket_status_id: d
                                                        },
                                                        success: function (response) {
                                                            var select = $('#ticket_status_id');
                                                            select.find('option').remove();
                                                            console.log(response);
                                                            if (response.length > 0)
                                                            {
                                                                var txt = response;
                                                                var obj = jQuery.parseJSON(txt);
                                                                //  console.log(obj);
                                                                $.each(obj, function (index, value) {
                                                                    // var sv = value.split('~');
                                                                    $('<option>').val(obj[index].tid).text(obj[index].ticket_status).appendTo(select);
                                                                });
                                                            }
                                                        }
                                                    });

                                                    var desc = tr.find('td:eq(17)').html();

                                                    if (desc.indexOf('table') === -1)
                                                    {
                                                        $('#flading').show();
                                                        $.ajax({
                                                            url: "ticketDataElementDetails",
                                                            type: "get", //send it through get method
                                                            data: {
                                                                ticket_id: ticketid
                                                            },
                                                            success: function (response) {
                                                                console.log(response);
                                                                console.log(response.length);
                                                                if (response.length > 0)
                                                                {
                                                                    var sv = response.split('~');
                                                                    console.log(sv.length);
                                                                    if (sv.length > 0)
                                                                    {
                                                                        // var sv = response.split('~');

                                                                        tab_text = "<table class='table table-striped table-bordered nowrap' style='width: 100%;margin-bottom: -1rem !important;color: #212529;border: 1px solid #e2e5e8;'><thead><tr>";
                                                                        if (sv[15] !== "null" && sv[15] !== "") // 7th Element
                                                                        {
                                                                            tab_text = tab_text + "<th style='background: #79838b !important;'>" + sv[15] + "</th>";
                                                                        }
                                                                        if (sv[16] !== "null" && sv[16] !== "") // 7th Element
                                                                        {
                                                                            tab_text = tab_text + "<th style='background: #79838b !important;'>" + sv[16] + "</th>";
                                                                        }
                                                                        if (sv[17] !== "null" && sv[17] !== "") // 7th Element
                                                                        {
                                                                            tab_text = tab_text + "<th style='background: #79838b !important;'>" + sv[17] + "</th>";
                                                                        }
                                                                        if (sv[18] !== "null" && sv[18] !== "") // 7th Element
                                                                        {
                                                                            tab_text = tab_text + "<th style='background: #79838b !important;'>" + sv[18] + "</th>";
                                                                        }
                                                                        if (sv[19] !== "null" && sv[19] !== "") // 7th Element
                                                                        {
                                                                            tab_text = tab_text + "<th style='background: #79838b !important;'>" + sv[19] + "</th>";
                                                                        }
                                                                        if (sv[20] !== "null" && sv[20] !== "") // 7th Element
                                                                        {
                                                                            tab_text = tab_text + "<th style='background: #79838b !important;'>" + sv[20] + "</th>";
                                                                        }

                                                                        if (sv[21] !== "null" && sv[21] !== "") // 7th Element
                                                                        {
                                                                            tab_text = tab_text + "<th style='background: #79838b !important;'>" + sv[21] + "</th>";
                                                                        }
                                                                        if (sv[22] !== "null" && sv[22] !== "") // 8th Element
                                                                        {
                                                                            tab_text = tab_text + "<th style='background: #79838b !important;'>" + sv[22] + "</th>";
                                                                        }
                                                                        if (sv[23] !== "null" && sv[23] !== "") // 9th Element
                                                                        {
                                                                            tab_text = tab_text + "<th style='background: #79838b !important;'>" + sv[23] + "</th>";
                                                                        }
                                                                        if (sv[24] !== "null" && sv[24] !== "") // 10th Element
                                                                        {
                                                                            tab_text = tab_text + "<th style='background: #79838b !important;'>" + sv[24] + "</th>";
                                                                        }
                                                                        if (sv[25] !== "null" && sv[25] !== "") // 11th Element
                                                                        {
                                                                            tab_text = tab_text + "<th style='background: #79838b !important;'>" + sv[25] + "</th>";
                                                                        }
                                                                        if (sv[26] !== "null" && sv[26] !== "") // 12th Element
                                                                        {
                                                                            tab_text = tab_text + "<th style='background: #79838b !important;'>" + sv[26] + "</th>";
                                                                        }

                                                                        tab_text = tab_text + "</tr></thead> <tbody><tr>";
                                                                        // tab_text = tab_text + "<td>" + sv[2] + "</td>" + "<td>" + sv[3] + "</td>" + "<td>" + sv[4] + "</td>" + "<td>" + sv[5] + "</td>" + "<td>" + sv[6] + "</td>" + "<td>" + sv[7] + "</td>";
                                                                        //<th>Payor</th> < th > Group < /th><th>Ded_Fam_Rem</th > <th>Ded_Ind_Rem</th> < th > OOP_Fam_Rem < /th><th>OOP_Ind_Rem</th > <th>CoIns_Fam</th> < th > CoIns_Ind < /th><th>CoPay_Fam</th > <th>CoPay_Ind</th> < th > Ded_Fam_CY < /th><th>Ded_Ind_CY</th > <th>OOP_Fam_CY</th> < th > OOP_Ind_CY < /th><th>PCP_Copay_IN</th > <th>Error Msg</th> </tr><tr>";

                                                                        if (sv[2] !== "null" && sv[2] !== "") // 7th Element
                                                                        {
                                                                            tab_text = tab_text + "<td style='text-align: center;'>" + sv[2] + "</td>";
                                                                        }
                                                                        if (sv[3] !== "null" && sv[3] !== "") // 7th Element
                                                                        {
                                                                            tab_text = tab_text + "<td style='text-align: center;'>" + sv[3] + "</td>";
                                                                        }
                                                                        if (sv[4] !== "null" && sv[4] !== "") // 7th Element
                                                                        {
                                                                            tab_text = tab_text + "<td style='text-align: center;'>" + sv[4] + "</td>";
                                                                        }
                                                                        if (sv[5] !== "null" && sv[5] !== "") // 7th Element
                                                                        {
                                                                            tab_text = tab_text + "<td style='text-align: center;'>" + sv[5] + "</td>";
                                                                        }
                                                                        if (sv[6] !== "null" && sv[6] !== "") // 7th Element
                                                                        {
                                                                            tab_text = tab_text + "<td style='text-align: center;'>" + sv[6] + "</td>";
                                                                        }
                                                                        if (sv[7] !== "null" && sv[7] !== "") // 7th Element
                                                                        {
                                                                            tab_text = tab_text + "<td style='text-align: center;'>" + sv[7] + "</td>";
                                                                        }
                                                                        if (sv[8] !== "null" && sv[8] !== "") // 7th Element
                                                                        {
                                                                            tab_text = tab_text + "<td style='text-align: center;'>" + sv[8] + "</td>";
                                                                        }
                                                                        if (sv[9] !== "null" && sv[9] !== "") // 8th Element
                                                                        {
                                                                            tab_text = tab_text + "<td style='text-align: center;'>" + sv[9] + "</td>";
                                                                        }
                                                                        if (sv[10] !== "null" && sv[10] !== "") // 9th Element
                                                                        {
                                                                            tab_text = tab_text + "<td style='text-align: center;'>" + sv[10] + "</td>";
                                                                        }
                                                                        if (sv[11] !== "null" && sv[11] !== "") // 10th Element
                                                                        {
                                                                            tab_text = tab_text + "<td style='text-align: center;'>" + sv[11] + "</td>";
                                                                        }
                                                                        if (sv[12] !== "null" && sv[12] !== "") // 11th Element
                                                                        {
                                                                            tab_text = tab_text + "<td style='text-align: center;'>" + sv[12] + "</td>";
                                                                        }
                                                                        if (sv[13] !== "null" && sv[13] !== "") // 12th Element
                                                                        {
                                                                            tab_text = tab_text + "<td style='text-align: center;'>" + sv[13] + "</td>";
                                                                        }
                                                                        // if (sv[27] !== "null") // 12th Element
                                                                        //  {
                                                                        //      tab_text = tab_text + "<td style='text-align: center;'><a href='" + sv[27] + "' target='_blank'>View</a></td>";
                                                                        //  }
                                                                        console.log(sv[1]);

                                                                        if (sv[1] === "P" || sv[1] === "O")
                                                                        {
                                                                            $('#lblticketsource').text('Action Code');
                                                                            $('#ticket_source').hide();
                                                                            $('#action_code').show();
                                                                        } else
                                                                        {
                                                                            $('#lblticketsource').text('Ticket Source');
                                                                            $('#ticket_source').show();
                                                                            $('#action_code').hide();
                                                                        }

                                                                        var link = '';
                                                                        if (sv[1] === "O")
                                                                        {
                                                                            link = sv[27].replaceAll('^', '~');
                                                                        } else
                                                                        {
                                                                            link = sv[27].replaceAll('^', '~');
                                                                        }
                                                                        console.log('link');
                                                                        console.log(link);
                                                                        tab_text = tab_text + "</tr> </tbody></table><br><a href='" + weburl + link + "' target='_blank'>View Data</a><br>" + desc;
                                                                        $(".note-editable").html(tab_text);
                                                                        $('#flading').hide();

                                                                    } else
                                                                    {
                                                                        $(".note-editable").html(desc);
                                                                        $('#flading').hide();
                                                                    }

                                                                } else
                                                                {
                                                                    $(".note-editable").html(desc);
                                                                    $('#flading').hide();
                                                                }

                                                                if (checktab === 1)
                                                                {
                                                                    table.ajax.url("assignedbydata").load();
                                                                } else if (checktab === 2)
                                                                {
                                                                    table.ajax.url("assignedtodata").load();
                                                                } else if (checktab === 3)
                                                                {
                                                                    table.ajax.url("reassignedbyme").load();
                                                                } else if (checktab === 4)
                                                                {
                                                                    table.ajax.url("allticketlist").load();
                                                                } else
                                                                {
                                                                    table.ajax.url("assignedbydata").load();
                                                                }

                                                            }
                                                        });


                                                    } else
                                                    {


                                                        if (checktab === 1)
                                                        {
                                                            table.ajax.url("assignedbydata").load();
                                                        } else if (checktab === 2)
                                                        {
                                                            table.ajax.url("assignedtodata").load();
                                                        } else if (checktab === 3)
                                                        {
                                                            table.ajax.url("reassignedbyme").load();
                                                        } else if (checktab === 4)
                                                        {
                                                            table.ajax.url("allticketlist").load();
                                                        } else
                                                        {
                                                            table.ajax.url("assignedbydata").load();
                                                        }

                                                        $(".note-editable").html(desc);
                                                        // $('#flading').hide();
                                                    }

                                                    $('#attachment').html('');
                                                    setTimeout(function ()
                                                    {
                                                        $('#flading').show();
                                                        var attach = '<br><b><i><center>Attachments</center></i></b><hr>';
                                                        var footertag = '';

                                                        $.ajax({
                                                            url: "ticketAttDetails",
                                                            type: "get", //send it through get method
                                                            data: {
                                                                ticket_att_id: ticketid
                                                            },
                                                            success: function (response) {
                                                                if (response.length > 0)
                                                                {
                                                                    var txt = response;
                                                                    var obj = jQuery.parseJSON(txt);
                                                                    if (obj.length > 0)
                                                                    {
                                                                        $.each(obj, function (index, value) {
                                                                            // var sv = value.split('~');
                                                                            var wtspace = obj[index].fileName.replaceAll(' ', '%20');
                                                                            footertag = footertag + '<div class="row text-center mb-2"><div class="col-lg-12"><a href=../Ticketatt/' + wtspace + ' target="_blank" data-toggle="lightbox" data-gallery="example-gallery">' + obj[index].fileName + ' (' + obj[index].fileSize + ')' + '</a></div></div>';
                                                                        });
                                                                    }
                                                                    $('#attachment').append(attach + footertag);
                                                                    $('#flading').hide();
                                                                } else
                                                                {
                                                                    $('#flading').hide();
                                                                }
                                                            }
                                                        });

                                                    }, 4000);
                                                    // alert(a);
                                                });


                                                $('#assigned_to').change(function (event) {
                                                    var user_id = $("select#assigned_to").val();
                                                    if (user_id !== "")
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
                                                                console.log(response);
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



                                                $(document).on("click", "#eligibilitytable a.historybutton", function () {

                                                    $('#flading').show();
                                                    $('#qv2').find('#card1').html('');
                                                    let tr = $(this).closest('tr');
                                                    // $('#btnclick').click();


                                                    let ticket_id = tr.find('td:eq(0)').text();
                                                    let ticket_type = tr.find('td:eq(1)').attr('aria-label');
                                                    $('#tickettype').text(ticket_type);
                                                    $('#ticketid').text(ticket_id);
                                                    var htmltag = '';

                                                    $.ajax({
                                                        url: "ticketHistoryDetails",
                                                        type: "get", //send it through get method
                                                        data: {
                                                            ticket_history_id: ticket_id
                                                        },
                                                        success: function (response) {
                                                            // console.log(response);
                                                            if (response.length > 0)
                                                            {
                                                                var txt = response;
                                                                var obj = jQuery.parseJSON(txt);
                                                                //  console.log(obj);

                                                                $.each(obj, function (index, value) {

                                                                    var path = "";
                                                                    if (obj[index].picture === "null" || obj[index].picture === "")
                                                                    {
                                                                        path = "assets/images/user/picture1.png";
                                                                    } else
                                                                    {

                                                                        path = "../Profile/" + obj[index].picture;

                                                                    }

                                                                    if (index % 2 === 0) {

                                                                        var user = '';
                                                                        if (userid === obj[index].created_by)
                                                                        {
                                                                            user = 'You';
                                                                        } else
                                                                        {
                                                                            user = obj[index].assigned_to;
                                                                        }
                                                                        var priority = ' Priority : ' + obj[index].ticket_priority;
                                                                        var link = obj[index].auto_desc.replaceAll('^', '~');

                                                                        htmltag = htmltag + '<div class="card-body hd-detail hdd-admin border-bottom"><div class="row"><div class="col-auto text-center">' +
                                                                                '<img class="media-object wid-60 img-radius mb-2" src="' + path + '" alt="">' +
                                                                                '<p>' + obj[index].ticket_status + '</p></div>' +
                                                                                '<div class="col"><div class="comment-top"><h3>' + user + ' <small class="text-muted f-w-400">replied </small></h3><p>' + convertLocalDateToUTCDate(obj[index].assigned_timestamp) + '</p>' + priority + '</div>' +
                                                                                '<div class="comment-content" style="overflow:auto !important;"><p>' + link +
                                                                                '</p></div>' +
                                                                                '</div>' +
                                                                                '<div class="col-auto pl-0 col-right"><div class="card-body text-center"><ul class="list-unstyled mb-0 edit-del">' +
                                                                                '</div></div> </div></div>';
                                                                    } else {

                                                                        var user = '';
                                                                        if (userid === obj[index].created_by)
                                                                        {
                                                                            user = 'You';
                                                                        } else
                                                                        {
                                                                            user = obj[index].assigned_to;
                                                                        }
                                                                        var priority = ' Priority : ' + obj[index].ticket_priority;
                                                                        var link = obj[index].auto_desc.replaceAll('^', '~');
                                                                        htmltag = htmltag + '<div class="card-body hd-detail hdd-user border-bottom bg-light"> <div class="row"><div class="col-auto text-center">' +
                                                                                '<img class="media-object wid-60 img-radius mb-2" src="' + path + '" alt="">' +
                                                                                '<p>' + obj[index].ticket_status + '</p></div>' +
                                                                                '<div class="col"><div class="comment-top"><h3>' + user + ' <small class="text-muted f-w-400">replied </small></h3><p>' + convertLocalDateToUTCDate(obj[index].assigned_timestamp) + '</p>' + priority + '</div>' +
                                                                                '<div class="comment-content" style="overflow:auto !important;">' + link +
                                                                                '</div>' +
                                                                                '</div>' +
                                                                                '<div class="col-auto pl-0 col-right"><div class="card-body text-center"></div></div></div></div>';
                                                                    }


                                                                });

                                                                /*   $.each(obj, function (index, value) {
                                                                 //  console.log(index);
                                                                 var sv = value.split('~');
                                                                 // console.log(index);
                                                                 //  console.log(sv);
                                                                 
                                                                 var path = "";
                                                                 if (sv[7].trim() === "null" || sv[7].trim() === "")
                                                                 {
                                                                 path = "assets/images/user/picture1.png";
                                                                 } else
                                                                 {
                                                                 
                                                                 path = "../Profile/" + sv[7].trim();
                                                                 
                                                                 }
                                                                 
                                                                 if (index % 2 === 0) {
                                                                 
                                                                 var user = '';
                                                                 if (userid === sv[5])
                                                                 {
                                                                 user = 'You';
                                                                 } else
                                                                 {
                                                                 user = sv[1];
                                                                 }
                                                                 var priority = ' Priority : ' + sv[6];
                                                                 var link = sv[3].replaceAll('^', '~');
                                                                 
                                                                 htmltag = htmltag + '<div class="card-body hd-detail hdd-admin border-bottom"><div class="row"><div class="col-auto text-center">' +
                                                                 '<img class="media-object wid-60 img-radius mb-2" src="' + path + '" alt="">' +
                                                                 '<p>' + sv[4] + '</p></div>' +
                                                                 '<div class="col"><div class="comment-top"><h3>' + user + ' <small class="text-muted f-w-400">replied </small></h3><p>' + convertLocalDateToUTCDate(sv[2]) + '</p>' + priority + '</div>' +
                                                                 '<div class="comment-content" style="overflow:auto !important;"><p>' + link +
                                                                 '</p></div>' +
                                                                 '</div>' +
                                                                 '<div class="col-auto pl-0 col-right"><div class="card-body text-center"><ul class="list-unstyled mb-0 edit-del">' +
                                                                 '</div></div> </div></div>';
                                                                 } else {
                                                                 
                                                                 var user = '';
                                                                 if (userid === sv[5])
                                                                 {
                                                                 user = 'You';
                                                                 } else
                                                                 {
                                                                 user = sv[1];
                                                                 }
                                                                 var priority = ' Priority : ' + sv[6];
                                                                 var link = sv[3].replaceAll('^', '~');
                                                                 htmltag = htmltag + '<div class="card-body hd-detail hdd-user border-bottom bg-light"> <div class="row"><div class="col-auto text-center">' +
                                                                 '<img class="media-object wid-60 img-radius mb-2" src="' + path + '" alt="">' +
                                                                 '<p>' + sv[4] + '</p></div>' +
                                                                 '<div class="col"><div class="comment-top"><h3>' + user + ' <small class="text-muted f-w-400">replied </small></h3><p>' + convertLocalDateToUTCDate(sv[2]) + '</p>' + priority + '</div>' +
                                                                 '<div class="comment-content" style="overflow:auto !important;">' + link +
                                                                 '</div>' +
                                                                 '</div>' +
                                                                 '<div class="col-auto pl-0 col-right"><div class="card-body text-center"></div></div></div></div>';
                                                                 }
                                                                 
                                                                 
                                                                 }); */

                                                                setTimeout(function ()
                                                                {
                                                                    $('#flading').show();
                                                                    var attach = '<b><i><center>Attachments</center></i></b><hr>';
                                                                    var footertag = '';
                                                                    // <a target='_blank' href= '..//${Document.fn}' class='btn-icon singledownbutton' id="singledown"><i class='fas fa-file-export m-r-5'></i></a>

                                                                    $.ajax({
                                                                        url: "ticketAttDetails",
                                                                        type: "get", //send it through get method
                                                                        data: {
                                                                            ticket_att_id: ticket_id
                                                                        },
                                                                        success: function (response1) {
                                                                            if (response1.length > 0)
                                                                            {
                                                                                var txt = response1;
                                                                                var obj = jQuery.parseJSON(txt);
                                                                                if (obj.length > 0)
                                                                                {
                                                                                    $.each(obj, function (index, value) {
                                                                                        // var sv = value.split('~');
                                                                                        var wtspace = obj[index].fileName.replaceAll(' ', '%20');
                                                                                        footertag = footertag + '<div class="row text-center mb-2"><div class="col-lg-12"><a href=../Ticketatt/' + wtspace + ' target="_blank" data-toggle="lightbox" data-gallery="example-gallery">' + obj[index].fileName + ' (' + obj[index].fileSize + ')' + '</a></div></div>';
                                                                                    });
                                                                                }
                                                                                $('#qv2').find('#card1').append(htmltag + attach + footertag);
                                                                                $('#flading').hide();
                                                                                $("#qv2").addClass("active");
                                                                                $('#flading').hide();
                                                                            } else
                                                                            {
                                                                                $('#flading').hide();
                                                                            }
                                                                        }
                                                                    });


                                                                }, 3000);

                                                            } else
                                                            {
                                                                $('#flading').hide();
                                                            }
                                                        }
                                                    });

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

                                                $('#ticket_status_id').change(function () {
                                                    var status_id = $("select#ticket_status_id").val();
                                                    if (status_id === "5" || status_id === "4" || status_id === "8" || status_id === "7")
                                                    {
                                                        $('#assigned_to').attr('disabled', "true");
                                                        $('#assigned_to').val(userid);
                                                        $("#assigned_to").trigger('change');
                                                        $('#ticket_priority_id').attr('disabled', "true");
                                                    } else
                                                    {
                                                        $('#assigned_to').removeAttr('disabled');
                                                        $('#ticket_priority_id').removeAttr('disabled');
                                                    }
                                                });
                                            });

                                            function removeAttr() {
                                                $('#assigned_to').removeAttr('disabled');
                                                $('#ticket_priority_id').removeAttr('disabled');
                                            }

    </script>     


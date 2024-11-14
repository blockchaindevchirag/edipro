<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Patient Master</title>
        <jsp:include page="includes/header.jsp"></jsp:include>
            <style>
                .table-responsive {
                    display: block;
                    width: 100%;
                    overflow-x: hidden !important;
                    -webkit-overflow-scrolling: touch;
                }

            </style>


        <section class="pcoded-main-container">
            <div class="pcoded-wrapper">
                <div class="pcoded-content">
                    <div class="pcoded-inner-content">
                        <div class="main-body">
                            <div class="page-wrapper">
                                <div class="row">
                                    <!-- Zero config table start -->
                                    <div class="col-sm-12">
                                        <div class="card">

                                            <div class="card-body">
                                                <div class="dt-responsive table-responsive tablehide">
                                                    <div class="tableFixHead1">
                                                        <table id="eligibilitytable" width="98%" cellspacing="0" class="table table-striped table-bordered nowrap display compact">
                                                            <thead>
                                                                <tr>
                                                                    <th style="position: sticky; top: 0; z-index: 1;"><input id="headercheck" type="checkbox"></th>
                                                                    <th style="position: sticky; top: 0; z-index: 1;">ID</th>
                                                                    <th style="position: sticky; top: 0; z-index: 1;">Patient</th>
                                                                    <th style="position: sticky; top: 0; z-index: 1;">Practice</th>
                                                                    <th style="position: sticky; top: 0; z-index: 1;">DOB</th>
                                                                    <th style="position: sticky; top: 0; z-index: 1;">Address</th>
                                                                    <th style="position: sticky; top: 0; z-index: 1;">City</th>
                                                                    <th style="position: sticky; top: 0; z-index: 1;">State</th>
                                                                    <th style="position: sticky; top: 0; z-index: 1;">Member#</th>
                                                                    <th style="position: sticky; top: 0; z-index: 1;">Payor</th>
                                                                    <th style="position: sticky; top: 0; z-index: 1;"></th>
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


    <jsp:include page="includes/footer.jsp"></jsp:include>
        <script src="assets/js/plugins/select2.full.min.js"></script>
        <script src="assets/js/pages/form-select-custom.js"></script>

        <script type="text/javascript">
            $(document).ready(function () {
                $(".table-responsive").removeClass("tablehide");
                $(".table-responsive").addClass("tableshow");
                var checked = 0;
                var notflag = 'N';
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
                    $('#eligibilitytable tbody input[type=checkbox]').each(function () {
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

                $(".hd-body").click(function () {

                });

                $(".overlay").click(function () {
                    $(".q-view").removeClass("active");
                });

                $('#flading').hide();


                var table = $('#eligibilitytable').DataTable({
                    "aaSorting": [[1, "desc"]], // Sort by first column descending
                    "lengthMenu": [10, 30, 50, 100, 200],
                    "iDisplayLength": 10,
                    stateSave: true,
                    scrollY: "300px",
                    scrollX: true,
                    scrollCollapse: false,
                    paging: true,
                    //  fixedHeader: true,
                    // display everything
                    'columnDefs': [{
                            'visible': false,
                            'ordering': false,
                            'targets': [12] // column index (start from 0)
                        }],

                    "ajax": {
                        "type": "GET",
                        "url": 'patientdata',
                        "contentType": 'application/json'
                    },
                    dom: 'frtipl',
                    "columns": [

                        {"data": function (data) {
                                return '<input type="checkbox" class = "check">';
                            }, "orderable": false, "searchable": false, "name": "check"},

                        {"data": function (data) {
                                return data.ddlpatientid;
                            },
                            "orderable": true, "searchable": true, "name": "ddlpatientid"},
                        {"data": "spatient", "orderable": true, "searchable": true, "name": "spatient"},
                        {"data": "spractice", "orderable": true, "searchable": true, "name": "spractice"},
                        {"data": "dob", "orderable": true, "searchable": true, "name": "dob"},
                        {"data": "sadd1", "orderable": true, "searchable": true, "name": "sadd1"},
                        {"data": "city", "orderable": true, "searchable": false, "name": "city"},
                        {"data": "state", "orderable": true, "searchable": false, "name": "state"},
                        {"data": "hdi1", "orderable": true, "searchable": false, "name": "hdi1"},
                        {"data": "sinsurance", "orderable": true, "searchable": false, "name": "sinsurance"},
                        {"data": function (data) {
                                return "<a class='vu-idbole' target='_blank' href='patientdemography?patientid=" + data.ddlpatientid + "&practice=" + data.ddlpractice + "' role='tooltip' data-microtip-placement='top' title='' aria-label='Edit'><i class='fas fa-edit' style='font-size:15px; margin:0 3px;color:#2DCEE3;'></i></a>";
                            },
                            "orderable": true, "searchable": true, "name": "requestid"},
                        {"data": function (data) {
                                if (data.flag === 'Y')
                                {
                                    //  return data.flag;
        <sec:authorize access="hasAuthority('DELETE_DOCUMENT_PRIVILEGE')">
                                    return "<a id='deletePatient' role='tooltip' data-microtip-position='left' title='' aria-label='Delete' class='btn-icon deletePatient'><i class='fas fa-trash-alt' style='font-size:15px; margin:0 3px;color:#FF425C;'></i></a>";
        </sec:authorize>
                                } else if (data.flag === 'N')
                                {
        <sec:authorize access="hasAuthority('RECOVER_DOCUMENT_PRIVILEGE')">
                                    //  return data.flag;
                                    return "<a id='recoverPatient' class='btn-icon recoverPatient' role='tooltip' data-microtip-position='left' title='' aria-label='Recover'  ><i class='mdi mdi-restore' style='font-size:18px; margin:0 3px;color:#FF425C;'></i></a>";
        </sec:authorize>
                                }

                            }, "orderable": true, "searchable": true, "name": "flag"},
                        {"data": "flag", "orderable": true, "searchable": false, "name": "flag"}
                    ],
                    drawCallback: function (settings, json) {

                        $('[data-toggle="tooltip"]').tooltip('update');
                        //$("#list-of-product tbody tr > td").tooltip('hide');
                    },
                    createdRow: function (row, data, dataIndex) {
                        // add tooltip when row is created


                        if ($(row).find('td:eq(11)').find('a:eq(1)').attr('id') === 'recoverPatient' || $(row).find('td:eq(11)').find('a:eq(0)').attr('id') === 'recoverPatient')
                        {
                            $(row).find('td').not(':eq(11)').attr('style', 'font-weight: bold; !important; text-decoration:line-through; color:red;');
                            // $(row).find('td:eq(8)').find('#singledown').hide();
                            $(row).find('td').find('a').removeAttr('href');
                            $(row).find('td').find('a').removeAttr('target');
                        }

                        // $(row).find('td:eq(14)').hide();
                        $(row).find('td:eq(2)').attr('role', "tooltip");
                        $(row).find('td:eq(2)').attr('data-microtip-position', "right");
                        $(row).find('td:eq(2)').attr('data-microtip-size', "medium");
                        $(row).find('td:eq(2)').attr('aria-label', data["fname"].toString());

                        $(row).find('td:eq(3)').attr('role', "tooltip");
                        $(row).find('td:eq(3)').attr('data-microtip-position', "left");
                        $(row).find('td:eq(3)').attr('data-microtip-size', "medium");
                        $(row).find('td:eq(3)').attr('aria-label', data["ddlpractice"].toString());

                        if (data["add1"].toString() !== '')
                        {
                            $(row).find('td:eq(5)').attr('role', "tooltip");
                            $(row).find('td:eq(5)').attr('data-microtip-position', "left");
                            $(row).find('td:eq(5)').attr('data-microtip-size', "medium");
                            $(row).find('td:eq(5)').attr('aria-label', data["add1"].toString());
                        }

                        if (data["hdi2"].toString() !== '')
                        {
                            $(row).find('td:eq(9)').attr('role', "tooltip");
                            $(row).find('td:eq(9)').attr('data-microtip-position', "left");
                            $(row).find('td:eq(9)').attr('data-microtip-size', "medium");
                            $(row).find('td:eq(9)').attr('aria-label', data["hdi2"].toString());
                        }


                    }, footerCallback: function (tfoot, data, start, end, display) {
                        $('#flading').hide();
                    }
                });

                $(document).on("click", "#eligibilitytable a.deletePatient", function () {
                    if (confirm("Are you sure you want to delete this record?")) {
                        let tr = $(this).closest('tr');
                        let patid = tr.find('td:eq(1)').text();
                        //  alert(tr.find('td:eq(8)').find('#deleteDocument').html());
                        $('#flading').show();
                        $.ajax({
                            url: "deletePatient",
                            type: "get", //send it through get method
                            data: {
                                patientID: patid
                            },
                            success: function (response) {
                                if (response.length > 0)
                                {
                                    console.log(response);
                                    msgbox("Patient Deleted", "Patient Portal", "success");
                                    table.ajax.url("patientdata").load();
                                }
                            },
                            error: function (err) {
                                console.log(err);
                                msgbox(err, "Patient Portal", "error");
                            }
                        });
                    }
                });


                $(document).on("click", "#eligibilitytable a.recoverPatient", function () {
                    let tr = $(this).closest('tr');
                    let patid = tr.find('td:eq(1)').text();
                    $('#flading').show();
                    //  alert(tr.find('td:eq(8)').find('#recoverDocument').html());
                    $.ajax({
                        url: "recoverPatient",
                        type: "get", //send it through get method
                        data: {
                            patientID: patid
                        },
                        success: function (response) {
                            if (response.length > 0)
                            {
                                console.log(response);
                                msgbox("Patient Recovered", "Patient Portal", "success");
                                table.ajax.url("patientdata").load();

                            }
                        },
                        error: function (err) {
                            console.log(err);
                            msgbox(err, "Patient Portal", "error");
                        }
                    });
                });


                var not_patid = GetParameterValues('tid');
                if (typeof (not_patid) !== 'undefined')
                {
                    var table = $('#eligibilitytable').DataTable();
                    table.column(1).search(not_patid).draw();
                }

                var total = 0;

                $('#eligibilitytable tbody').on('change', 'input[type="checkbox"]', function () {

                    var table = $('#eligibilitytable').DataTable();

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




                $('#headercheck').change(function () {

                    var table = $('#eligibilitytable').DataTable();

                    total = table.column(3, {
                        page: 'current'
                    }).data().count();

                    checked = 0;

                    var isSelected = $(this).is(':checked');

                    if (isSelected) {
                        $('#eligibilitytable tbody input[type=checkbox]').each(function () {
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
                        $('#eligibilitytable tbody input[type=checkbox]').each(function () {
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


                $('#raiseticket').click(function () {


                    brid = '';
                    var table = $('#eligibilitytable').DataTable();
                    table.$('input[type="checkbox"]').each(function () {
                        // If checkbox doesn't exist in DOM

                        // If checkbox is checked
                        if (this.checked) {
                            // Create a hidden element

                            //  alert(this);
                            let tr = $(this).closest('tr');
                            brid = tr.find('td:eq(1)').text() + ',' + brid;

                        }

                    });

                    brid = brid.substring(0, brid.length - 1);
                    // console.log(brid);
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

                        msgbox("select atleast one patient..!", "Ticke Portal", "warning");
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
                            segment: "J",
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
                        var strcontent = "Hi " + assignto + ", <br><br>" + "Type: " + tickettype + "<br>Source: " + tsource + "<br>Priority: " + ticketpriority + "<br> Assign To: " + assignto + "<br>Segment: View Patient [J]" + "<br><br>" + $(".note-editable").html();
                        // Email Config
                        $.post('eMail', {
                            recipient: entity_user_to,
                            subject: 'Ticket Raised from [View Patient] Form: ' + tickettype + ' : ' + tstatus + ' to ' + assignto,
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
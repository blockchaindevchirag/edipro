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
        <title>View Trans Notes</title>
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

                                                <div class="m-t-10">
                                                    <div class="form-group d-inline">
                                                        <div class="radio radio-primary d-inline">
                                                            <input class="form-check-input" type="radio" name="transcriber" id="transcriber" value="option1" checked>
                                                            <label for="transcriber" class="cr">Transcriber</label>
                                                        </div>
                                                    </div>

                                                    <div class="form-group d-inline">
                                                        <div class="radio radio-danger d-inline">
                                                            <input class="form-check-input" type="radio" name="transcriber" id="editor" value="option2">
                                                            <label for="editor" class="cr">Editor</label>
                                                        </div>
                                                    </div>

                                                    <div class="form-group d-inline">
                                                        <div class="radio radio-warning d-inline">
                                                            <input class="form-check-input" type="radio" name="transcriber" id="proofer" value="option3">
                                                            <label for="proofer" class="cr">Proofer</label>
                                                        </div>
                                                    </div>

                                                </div>

                                                <div class="col-md-3" style="margin-top: -31px;margin-left: 269px;">
                                                    <div class="form-group">

                                                        <select class="form-control" required id="ddluser" name="ddluser">
                                                        </select>


                                                    </div>
                                                </div>

                                                <div class="col-md-2" style="margin-top: -40px;margin-left: 500px;">
                                                    <div class="form-group">

                                                        <button type="button" id="btnsubmit"  class="btn btn-primary btn-sm" style="padding:5px 25px;">Submit</button>
                                                    </div></div>


                                                <div class="dt-responsive table-responsive">
                                                    <div class="tableFixHead1 tablehide">
                                                        <table id="simpletable" width="98%" class="display compact table table-striped table-bordered nowrap dataTable">
                                                            <thead>
                                                                <tr>
                                                                    <th style="position: sticky; top: 0; z-index: 1;"><input id="headercheck" type="checkbox" ></th>
                                                                    <th style="position: sticky; top: 0; z-index: 1;">ID</th>
                                                                    <th style="position: sticky; top: 0; z-index: 1;">Practice</th>
                                                                    <th style="position: sticky; top: 0; z-index: 1;">Provider</th>
                                                                    <th style="position: sticky; top: 0; z-index: 1;">Patient</th>
                                                                    <th style="position: sticky; top: 0; z-index: 1;">Template</th>
                                                                    <th>DOS</th>
                                                                    <th>Date</th>
                                                                    <th>Dr.Comments</th>
                                                                    <th>Status</th>
                                                                    <th>Statusid</th>
                                                                    <th>Doc</th>
                                                                    <th>Assignee</th>
                                                                    <th>Practice</th>
                                                                    <th>Template</th>
                                                                    <th>DOs</th>
                                                                    <th>Date</th>
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
        <div id="flading" class="loader">
        </div>
    <jsp:include page="includes/footer.jsp"></jsp:include>
        <script type="text/javascript">
            $(document).ready(function () {
                $(".tableFixHead1").removeClass("tablehide");
                $(".tableFixHead1").addClass("tableshow");
                $('#flading').hide();
                var UT = '<%= session.getAttribute("UT")%>';
                var EId = '<%= session.getAttribute("Entityid")%>';
                //  $('#transcriber').trigger();
                $('#flading').show();
                $.ajax({
                    url: "gettransdictanotes",
                    type: "get", //send it through get method
                    data: {
                        Assignee: 'Trans'
                    },
                    success: function (response) {
                        var select = $('#ddluser');
                        select.find('option').remove();
                        $('<option>').val("").text("--Select--").appendTo(select);
                        console.log(response);
                        var txt = response;
                        var obj = jQuery.parseJSON(txt);
                        console.log(obj);
                        if (obj.length > 0) {
                            for (var i = 0; i < obj.length; i++) {
                                // var sv = value.split('~');
                                $('<option>').val(obj[i].id).text(obj[i].username).appendTo(select);
                            }
                            $('#flading').hide();
                        } else {
                            $('#flading').hide();
                        }
                    }
                });
                $('#transcriber').click(function () {
                    $('#flading').show();
                    $.ajax({
                        url: "gettransdictanotes",
                        type: "get", //send it through get method
                        data: {
                            Assignee: 'Trans'
                        },
                        success: function (response) {
                            var select = $('#ddluser');
                            select.find('option').remove();
                            $('<option>').val("").text("--Select--").appendTo(select);
                            console.log(response);
                            var txt = response;
                            var obj = jQuery.parseJSON(txt);
                            console.log(obj);
                            if (obj.length > 0) {
                                for (var i = 0; i < obj.length; i++) {
                                    // var sv = value.split('~');
                                    $('<option>').val(obj[i].id).text(obj[i].username).appendTo(select);
                                }
                                $('#flading').hide();
                            } else {
                                $('#flading').hide();
                            }
                        }
                    });
                });
                $('#editor').click(function () {
                    $('#flading').show();
                    $.ajax({
                        url: "gettransdictanotes",
                        type: "get", //send it through get method
                        data: {
                            Assignee: 'Edit'
                        },
                        success: function (response) {
                            var select = $('#ddluser');
                            select.find('option').remove();
                            $('<option>').val("").text("--Select--").appendTo(select);
                            console.log(response);
                            var txt = response;
                            var obj = jQuery.parseJSON(txt);
                            console.log(obj);
                            if (obj.length > 0) {
                                for (var i = 0; i < obj.length; i++) {
                                    // var sv = value.split('~');
                                    $('<option>').val(obj[i].id).text(obj[i].username).appendTo(select);
                                }
                                $('#flading').hide();
                            } else {
                                $('#flading').hide();
                            }
                        }
                    });
                });
                $('#proofer').click(function () {
                    $('#flading').show();
                    $.ajax({
                        url: "gettransdictanotes",
                        type: "get", //send it through get method
                        data: {
                            Assignee: 'Proof'
                        },
                        success: function (response) {
                            var select = $('#ddluser');
                            select.find('option').remove();
                            $('<option>').val("").text("--Select--").appendTo(select);
                            console.log(response);
                            var txt = response;
                            var obj = jQuery.parseJSON(txt);
                            console.log(obj);
                            if (obj.length > 0) {
                                for (var i = 0; i < obj.length; i++) {
                                    // var sv = value.split('~');
                                    $('<option>').val(obj[i].id).text(obj[i].username).appendTo(select);
                                }
                                $('#flading').hide();
                            } else {
                                $('#flading').hide();
                            }
                        }
                    });
                });

                $('#btnsubmit').click(function () {
                    var arrcheckstatus = ["18", "6", "10", "12", "15", "17", "20", "7"];
                    if ($('#ddluser').val() !== "") {
                        var brid = '';
                        var table = $('#simpletable').DataTable();
                        table.$('input[type="checkbox"]').each(function () {
                            // If checkbox doesn't exist in DOM
                            // If checkbox is checked
                            if (this.checked) {
                                // Create a hidden element
                                //  alert(this);
                                let tr = $(this).closest('tr');
                                var checkstatus = tr.find('td:eq(10)').text().trim();
                                if ($.inArray(checkstatus, arrcheckstatus) === -1) {
                                    // alert(checkstatus);
                                    brid = tr.find('td:eq(1)').text() + ',' + brid;
                                }
                            }
                        });

                        brid = brid.substring(0, brid.length - 1);
                        // console.log(brid);
                        if (brid !== '') {
                            if (document.getElementById('transcriber').checked) {
                                $('#flading').show();
                                $.get('getnotes_assignment', {
                                    assignee: $('#ddluser').val(),
                                    dictaid: brid,
                                    assignment: 'Trans'
                                }, function (response) {
                                    table.ajax.url("dictanotesdata").load();
                                    $('#flading').hide();
                                });
                                // alert('Trans: ' + brid);
                            } else if (document.getElementById('editor').checked) {
                                $('#flading').show();
                                $.get('getnotes_assignment', {
                                    assignee: $('#ddluser').val(),
                                    dictaid: brid,
                                    assignment: 'Edit'
                                }, function (response) {
                                    table.ajax.url("dictanotesdata").load();
                                    $('#flading').hide();
                                });
                                // alert('Edit:  ' + brid);
                            } else {
                                $('#flading').show();
                                $.get('getnotes_assignment', {
                                    assignee: $('#ddluser').val(),
                                    dictaid: brid,
                                    assignment: 'Proof'
                                }, function (response) {
                                    table.ajax.url("dictanotesdata").load();
                                    $('#flading').hide();
                                });
                                // alert('Proff: ' + brid);
                            }
                        } else {
                            msgbox("Select atleast one note..!", "Notes Form", "warning");
                        }
                    } else {
                        msgbox("Select User..!", "Notes Form", "warning");
                    }
                });

                $('#simpletable').find('thead').find('tr').each(function () {
                    $(this).find('th:eq(10)').hide();
                    $(this).find('th:eq(13)').hide();
                    $(this).find('th:eq(14)').hide();
                    $(this).find('th:eq(15)').hide();
                    $(this).find('th:eq(16)').hide();
                });


                $('#simpletable').DataTable({
                    "aaSorting": [[1, "desc"]], // Sort by first column descending
                    "lengthMenu": [10, 30, 50, 100, 200],
                    "iDisplayLength": 10,
                    stateSave: true,
                    scrollY: false,
                    scrollX: true,
                    paging: true,
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
                        "url": 'dictanotesdata',
                        "contentType": 'application/json'
                    },
                    "columns": [
                        {"data": function (data) {
                                return '<input type="checkbox" class = "check">';
                            }, "orderable": false, "searchable": false, "name": "check"},
                        {"data": "id", "orderable": true, "searchable": true, "name": "id"},
                        {"data": "spractice", "orderable": true, "searchable": true, "name": "practice"},
                        {"data": "provider", "orderable": true, "searchable": true, "name": "provider"},
                        {"data": "patient_name", "orderable": true, "searchable": true, "name": "patient_name"},
                        {"data": function (data) {
                                var template = data.template;
                                return  template.substring(0, 10);
                            }, "orderable": true, "searchable": true, "name": "template"},
                        {"data": "ddos", "orderable": true, "searchable": false, "name": "ddos"},
                        {"data": "screated_timestamp", "orderable": true, "searchable": false, "name": "screated_timestamp"},
                        {"data": "sdoccomments", "orderable": true, "searchable": false, "name": "sdoccomments"},
                        {"data": function (data) {
                                if (data.status === 'Signed') {
                                    return data.status;
                                } else {
                                    return data.status;
                                }
                            }, "orderable": true, "searchable": true, "name": "status"}, // 9
                        {"data": "statusid", "orderable": true, "searchable": false, "name": "statusid"},
                        {"data": function (data) {
                                if (data.statusid === 6) {
                                    return "<a target= '_blank' href=../Trans_PDF/" + data.signedcontent + " class='btn-icon'><i class='fas fa-file m-r-5'></i></a>";
                                } else {
                                    return "";
                                }
                            }, "orderable": true, "searchable": true, "name": "signedcontent"},
                        {"data": "assignee", "orderable": true, "searchable": false, "name": "assignee"},
                        {"data": "practice", "orderable": true, "searchable": true, "name": "practice"}, // 13
                        {"data": "template", "orderable": true, "searchable": true, "name": "template"},
                        {"data": "dos", "orderable": true, "searchable": true, "name": "dos"},
                        {"data": "created_timestamp", "orderable": true, "searchable": true, "name": "created_timestamp"}
                    ],
                    dom: 'fBrtipl',
                    buttons: [
                        {
                            extend: 'csv',
                            text: '<img src="assets/images/excelicon.png">',
                            className: 'dt-pdf-btn',
                            titleAttr: 'Download list in excel Format',
                            exportOptions: {
                                columns: [1, 13, 3, 4, 14, 15, 16, 8, 9, 12]
                            }
                        },
//                        'csv',
                        {
                            extend: 'pdfHtml5',
                            orientation: 'landscape',
                            text: '<img src="assets/images/pdficon.png">',
                            className: 'dt-pdf-btn',
                            titleAttr: 'Download list in PDF Format',
                            pageSize: 'LEGAL',
                            exportOptions: {
                                columns: [1, 13, 3, 4, 14, 15, 16, 8, 9, 12]
                            }
                        }
                    ],
                    createdRow: function (row, data, dataIndex) {

                        $(row).find('td:eq(6)').text(data["dos"].toString());
                        $(row).find('td:eq(7)').text(data["created_timestamp"].toString());
                        if (data["doccomments"].toString() !== '') {
                            $(row).find('td:eq(8)').attr('role', "tooltip");
                            $(row).find('td:eq(8)').attr('data-microtip-position', "left");
                            $(row).find('td:eq(8)').attr('data-microtip-size', "medium");
                            $(row).find('td:eq(8)').attr('aria-label', data["doccomments"].toString());
                        }
                        if (data["practice"].toString() !== '') {
                            $(row).find('td:eq(2)').attr('role', "tooltip");
                            $(row).find('td:eq(2)').attr('data-microtip-position', "right");
                            $(row).find('td:eq(2)').attr('data-microtip-size', "medium");
                            $(row).find('td:eq(2)').attr('aria-label', data["practice"].toString());
                        }
                        if (data["template"].toString() !== '') {
                            $(row).find('td:eq(5)').attr('role', "tooltip");
                            $(row).find('td:eq(5)').attr('data-microtip-position', "right");
                            $(row).find('td:eq(5)').attr('data-microtip-size', "medium");
                            $(row).find('td:eq(5)').attr('aria-label', data["template"].toString());
                        }
                        $(row).find('td:eq(10)').hide();
                        $(row).find('td:eq(13)').hide();
                        $(row).find('td:eq(14)').hide();
                        $(row).find('td:eq(15)').hide();
                        $(row).find('td:eq(16)').hide();
                    }
                });
                var total = 0;
                var checked = 0;
                $('#simpletable tbody').on('change', 'input[type="checkbox"]', function () {
                    var table = $('#simpletable').DataTable();
                    total = table.column(3, {
                        page: 'current'
                    }).data().count();
                    //alert(count);
                    var isSelected = $(this).is(':checked');
                    if (isSelected) {
                        checked++;
                    } else {
                        checked--;
                    }
                    // console.log(checked);
                    if (checked === total) {
                        $('#headercheck').prop('checked', true);
                    } else {
                        $('#headercheck').prop('checked', false);
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
                            if (checked <= total) {
                                checked++;
                            }
                        });
                    } else {
                        $('#simpletable tbody input[type=checkbox]').each(function () {
                            $(this).prop('checked', false);
                            if (checked > 0) {
                                checked--;
                            }
                        });
                    }
                });
            });
    </script>


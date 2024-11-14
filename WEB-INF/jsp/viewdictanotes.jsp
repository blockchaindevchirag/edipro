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

                                <!--                                <div class="row">
                                                                    <div class="col-lg-12">
                                                                        <button class="btn btn-success md-trigger" id="download"  data-modal="modal-1">Download  <i class='fas fa-download m-r-5'></i></button>
                                                                        <br><br>
                                                                    </div>
                                                                </div>-->

                                <div class="row">
                                    <!-- Zero config table start -->
                                    <div class="col-sm-12">
                                        <div class="card">
                                            <div class="card-body">

                                                <div class="" id="filterid">
                                                    <div class="form-group d-inline">
                                                        <div class="radio radio-primary d-inline">
                                                            <input class="form-check-input" type="radio" name="transcriber" id="assignedtome" value="option1">
                                                            <label for="assignedtome" class="cr">Assigned to Me</label>
                                                        </div>
                                                    </div>

                                                    <div class="form-group d-inline">
                                                        <div class="radio radio-danger d-inline">
                                                            <input class="form-check-input" type="radio" name="transcriber" id="new" value="option2">
                                                            <label for="new" class="cr">New</label>
                                                        </div>
                                                    </div>

                                                    <div class="form-group d-inline">
                                                        <div class="radio radio-warning d-inline">
                                                            <input class="form-check-input" type="radio" name="transcriber" id="all" value="option3" checked>
                                                            <label for="all" class="cr">All</label>
                                                        </div>
                                                    </div>

                                                </div>


                                                <div class="dt-responsive table-responsive">
                                                    <div class="tableFixHead1 tablehide">
                                                        <table id="simpletable" width="98%" style="width: 0px;" class="display compact table table-striped table-bordered nowrap dataTable">
                                                            <thead>
                                                                <tr>
                                                                    <th style="position: sticky; top: 0; z-index: 1;">ID</th>
                                                                    <th style="position: sticky; top: 0; z-index: 1;">Practice</th>
                                                                    <th style="position: sticky; top: 0; z-index: 1;">Provider</th>
                                                                    <th style="position: sticky; top: 0; z-index: 1;">Patient</th>
                                                                    <th style="position: sticky; top: 0; z-index: 1;">Template</th>
                                                                    <th>DOS</th>
                                                                    <th>Date</th>
                                                                    <th>Status</th>
                                                                    <th>Audio</th>
                                                                    <th>Doc</th>
                                                                    <th>Assignee</th>
                                                                    <th style="display:none;">Practice</th>
                                                                    <th style="display:none;">DOS</th>
                                                                    <th style="display:none;">Date</th>
                                                                    <th style="display:none;">Template</th>
                                                                    <th style="display:none;">Audio</th>

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
                if (UT === '4' || UT === '18' || UT === '20' || UT === '8' || UT === '9') {
                    $('#filterid').hide();
                }
                var table = $('#simpletable').DataTable({
                    "aaSorting": [[0, "desc"]], // Sort by first column descending
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
                        {"data": "id", "orderable": true, "searchable": true, "name": "id"},
                        {"data": "spractice", "orderable": true, "searchable": true, "name": "practice"},
                        {"data": "provider", "orderable": true, "searchable": true, "name": "provider"}, //2
                        {"data": "patient_name", "orderable": true, "searchable": true, "name": "patient_name"},
                        {"data": function (data) {
                                var template = data.template;
                                return  template.substring(0, 10);
                            }, "orderable": true, "searchable": true, "name": "template"}, //4
                        {"data": "ddos", "orderable": true, "searchable": false, "name": "ddos"}, //5
                        {"data": "screated_timestamp", "orderable": true, "searchable": false, "name": "screated_timestamp"}, //6
                        {"data": function (data) {
                                // Role Updated
                                if (UT === '14') {
                                    if (data.statusid === 9 || data.statusid === 19) {
                                        return "<a class='vu-idbole' href='dictanotesstatus?id=" + data.id + "&statusid=" + data.statusid + "&user=Trans" + "&patient=" + data.patient_name.replace(/'/g, '') + "&patient_id=" + data.patient_id + "&dos=" + data.dos + "'>" + data.status + "</a>";
                                    } else {
                                        return data.status;
                                    }
                                } else if (UT === '15') {
                                    if (data.statusid === 4 || data.statusid === 19 || data.statusid === 11) {
                                        return "<a class='vu-idbole' href='dictanotesstatus?id=" + data.id + "&statusid=" + data.statusid + "&user=Edit" + "&patient=" + data.patient_name.replace(/'/g, '') + "&patient_id=" + data.patient_id + "&dos=" + data.dos + "'>" + data.status + "</a>";
                                    } else {
                                        return data.status;
                                    }
                                } else if (UT === '16') {
                                    if (data.statusid === 4 || data.statusid === 13 || data.statusid === 19 || data.statusid === 14) {
                                        return "<a class='vu-idbole' href='dictanotesstatus?id=" + data.id + "&statusid=" + data.statusid + "&user=Proof" + "&patient=" + data.patient_name.replace(/'/g, '') + "&patient_id=" + data.patient_id + "&dos=" + data.dos + "'>" + data.status + "</a>";
                                    } else {
                                        return data.status;
                                    }
                                } else if (UT === '18' || UT === '8' || UT === '9' || UT === '20') {
                                    if (data.statusid === 5) {
                                        return "<a class='vu-idbole' href='dictanotesstatus?id=" + data.id + "&statusid=" + data.statusid + "&user=Sign" + "&patient=" + data.patient_name.replace(/'/g, '') + "&patient_id=" + data.patient_id + "&dos=" + data.dos + "'>" + data.status + "</a>";
                                    } else {
                                        return data.status;
                                    }
                                } else {
                                    return data.status;
                                }
                            }, "orderable": true, "searchable": true, "name": "status"}, //7
                        {"data": function (data) {
                                if (data.filename !== '') {
                                    return "<a target= '_blank' href=../Audio/" + data.filename + " class='btn-icon'><i class='fas fa-file-audio m-r-5'></i></a>";
                                } else {
                                    return "No Dictation";
                                }
                            }, "orderable": true, "searchable": true, "name": "filename"}, //8
                        {"data": function (data) {
                                if (UT === '18' || UT === '20' || UT === '8' || UT === '9') {
                                    if (data.statusid === 6) {
                                        return "<a target= '_blank' href=../Trans_PDF/" + data.signedcontent + " class='btn-icon'><i class='fas fa-file m-r-5'></i></a>";
                                    } else {
                                        return "";
                                    }
                                } else {
                                    return "";
                                }
                            }, "orderable": true, "searchable": true, "name": "signedcontent"}, //9
                        {"data": "assignee", "orderable": true, "searchable": false, "name": "assignee"}, //10
                        {"data": "practice", "orderable": true, "searchable": false, "name": "practice"}, //11
                        {"data": "dos", "orderable": true, "searchable": false, "name": "dos"}, //12
                        {"data": "created_timestamp", "orderable": true, "searchable": false, "name": "created_timestamp"}, //13
                        {"data": "template", "orderable": true, "searchable": false, "name": "template"}, //14
                        {"data": "filename", "orderable": true, "searchable": false, "name": "filename"}
                    ],
                    dom: 'fBrtipl',
                    buttons: [
                        {
                            extend: 'csv',
                            text: '<img src="assets/images/excelicon.png">',
                            className: 'dt-pdf-btn',
                            titleAttr: 'Download list in excel Format',
                            exportOptions: {
                                columns: [0, 11, 2, 3, 14, 12, 13, 7, 10]
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
                                columns: [0, 11, 2, 3, 14, 12, 13, 7, 10]
                            }
                        }
                    ],
                    createdRow: function (row, data, dataIndex) {
                        $(row).find('td:eq(5)').text(data["dos"].toString());
                        $(row).find('td:eq(6)').text(data["created_timestamp"].toString());
                        if (data["practice"].toString() !== '') {
                            $(row).find('td:eq(1)').attr('role', "tooltip");
                            $(row).find('td:eq(1)').attr('data-microtip-position', "top");
                            $(row).find('td:eq(1)').attr('data-microtip-size', "medium");
                            $(row).find('td:eq(1)').attr('aria-label', data["practice"].toString());
                        }
                        if (data["template"].toString() !== '') {
                            $(row).find('td:eq(4)').attr('role', "tooltip");
                            $(row).find('td:eq(4)').attr('data-microtip-position', "right");
                            $(row).find('td:eq(4)').attr('data-microtip-size', "medium");
                            $(row).find('td:eq(4)').attr('aria-label', data["template"].toString());
                        }
                        /* if (UT === '18' || UT === '20' || UT === '8' || UT === '9')   {
                         $(row).find('td:eq(9)').show();
                         } else  {
                         $(row).find('td:eq(9)').hide();
                         } */
                        $(row).find('td:eq(11)').hide();
                        $(row).find('td:eq(12)').hide();
                        $(row).find('td:eq(13)').hide();
                        $(row).find('td:eq(14)').hide();
                        $(row).find('td:eq(15)').hide();
                    }
                });
                $(window).on('resize', function () {
                    $('#simpletable').DataTable().columns.adjust();
                });
                $('#simpletable').find('thead').find('tr').each(function () {
                    $(this).find('th:eq(11)').hide();
                    $(this).find('th:eq(12)').hide();
                    $(this).find('th:eq(13)').hide();
                    $(this).find('th:eq(14)').hide();
                    $(this).find('th:eq(15)').hide();
                    /*   if (UT === '18' || UT === '20' || UT === '8' || UT === '9')   {
                     $(this).find('th:eq(9)').show();
                     } else  {
                     $(this).find('th:eq(9)').hide();
                     } */
                });
                $('#assignedtome').click(function () {
                    table.ajax.url("dictanotesdatawtuser").load();
                    table.column(7).search('').draw();
                });
                $('#new').click(function () {
                    // table.ajax.url("assignedbydata").load();
                    table.ajax.url("dictanotesdata").load();
                    table.column(7).search('New').draw();
                });
                $('#all').click(function () {
                    table.ajax.url("dictanotesdata").load();
                    table.column(7).search('').draw();
                });
            });
    </script>


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
                                                <div class="dt-responsive table-responsive">
                                                    <div class="tableFixHead1 tablehide">
                                                        <table id="simpletable" width="98%" style="width: 0px;" class="display compact table table-striped table-bordered nowrap dataTable">
                                                            <thead>
                                                                <tr>
                                                                    <th style="position: sticky; top: 0; z-index: 1;">ID</th>
                                                                    <th style="position: sticky; top: 0; z-index: 1;">Patient</th>
                                                                    <th style="position: sticky; top: 0; z-index: 1;">DOS</th>
                                                                    <th style="position: sticky; top: 0; z-index: 1;">Template</th>
                                                                    <th style="position: sticky; top: 0; z-index: 1;">Status</th>
                                                                    <th style="position: sticky; top: 0; z-index: 1;">Created On</th>
                                                                    <!-- <th></th> -->
                                                                    <th>DOS</th>
                                                                    <th>Created On</th>
                                                                    <th></th>
                                                                    <th></th>
                                                                </tr>
                                                            </thead>
                                                            <tbody>
                                                                <!--   <c:forEach var="Transnotes" items="${transnoteslist}">
       
                                                                       <tr>
       
                                                                           <td>${Transnotes.id}</td>
                                                                           <td>${Transnotes.patient_name}</td>
                                                                           <td>${Transnotes.ddos}</td>
                                                                           <td>${Transnotes.template}</td>
                                                                           <td>${Transnotes.status}</td>
                                                                           <td>${Transnotes.screated_timestamp}</td>
                                                                           <td><a href= '#' class='btn-icon'><i class='fas fa-edit m-r-5'></i></a></td>
                                                                           <td>${Transnotes.dos}</td>
                                                                           <td>${Transnotes.created_timestamp}</td>
                                                                       </tr>
                                                            </c:forEach>  -->

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

                $('#simpletable').find('thead').find('tr').each(function () {
                    $(this).find('th:eq(6)').hide();
                    $(this).find('th:eq(7)').hide();


                });


                $('#simpletable').DataTable({
                    "aaSorting": [[0, "desc"]], // Sort by first column descending
                    "lengthMenu": [10, 30, 50, 100, 200],
                    "iDisplayLength": 10,
                    stateSave: true,
                    scrollY: false,
                    scrollX: true,
                    paging: true,
                    "ajax": {
                        "type": "GET",
                        "url": 'transnotesdata',
                        "contentType": 'application/json'
                    },
                    "columns": [
                        {"data": "id", "orderable": true, "searchable": true, "name": "id"},
                        {"data": "patient_name", "orderable": true, "searchable": true, "name": "patient_name"},
                        {"data": "ddos", "orderable": true, "searchable": true, "name": "ddos"},
                        {"data": "display", "orderable": true, "searchable": true, "name": "template"},
                        {"data": function (data) {
                                if (UT === '4' || UT === '5')
                                {
                                    if (data.status === 'Assigned' || data.status === 'Incomplete'  || data.status === 'NoDictation' || data.status === 'Dictated')
                                    {
                                        return "<a class='vu-idbole' href='editnotespost?id=" + data.id + "&patient=" + data.patient_id + "&templatetype=" + data.ddltemplate + "&template=" + data.display + "&status=" + data.transstatusid + "&provider=" + data.username + "&dos=" + data.dos + "'>" + data.status + "</a>";
                                    } else
                                    {
                                        return data.status;
                                    }
                                } else
                                {
                                    return data.status;
                                }
                            }, "orderable": true, "searchable": true, "name": "status"},
                        {"data": "screated_timestamp", "orderable": true, "searchable": false, "name": "screated_timestamp"},
                        {"data": "dos", "orderable": true, "searchable": false, "name": "dos"},
                        {"data": "created_timestamp", "orderable": true, "searchable": false, "name": "created_timestamp"},
                        {"data": function (data) {
                                if (UT === '4' || UT === '5' || UT === '2')
                                {
                                    if (data.status === 'Transcribed' || data.status === 'Proofed' || data.status === 'Signed')
                                    {
                                        return "<a class='vu-idbole' href='transnotesstatus?id=" + data.id + "&patient=" + data.patient_id + "&templatetype=" + data.ddltemplate + "&template=" + data.display + "&status=" + data.transstatusid + "&provider=" + data.username + "&dos=" + data.dos + "'>View</a>";
                                    } else
                                    {
                                        return "";
                                    }
                                } else
                                {
                                    return "";
                                }
                            }, "orderable": true, "searchable": true, "name": "status"},
                        {"data": function (data) {
                                if (UT === '4' || UT === '5' || UT === '2')
                                {
                                    if (data.status === 'Signed')
                                    {
                                        if (data.pdfname !== 'undefined')
                                        {
                                            return "<a target= '_blank' href=../Trans_PDF/" + data.pdfname + " class='btn-icon'><i class='fas fa-download m-r-5'></i></a>";
                                        }
                                        //   return "<a class='vu-idbole' href='transnotesstatus?id=" + data.id + "&patient=" + data.patient_id + "&templatetype=" + data.ddltemplate + "&template=" + data.display + "&status=" + data.transstatusid + "&provider=" + data.username + "&dos=" + data.dos + "'>View</a>";
                                    } else
                                    {
                                        return "";
                                    }
                                } else
                                {
                                    return "";
                                }
                            }, "orderable": true, "searchable": true, "name": "status"}
                    ],
                    dom: 'fBrtipl',
                    buttons: [
                        {
                            extend: 'csv',
                            text: '',
                            className: 'dt-pdf-btn',
                            titleAttr: 'Download list in excel Format',
                            exportOptions: {
                                columns: [0, 1, 6, 3, 4, 7]
                            }
                        },
                       
                        {
                            extend: 'pdfHtml5',
                            orientation: 'landscape',
                            text: '',
                            className: 'dt-pdf-btn',
                            titleAttr: 'Download list in PDF Format',
                            pageSize: 'LEGAL',
                            exportOptions: {
                                columns: [0, 1, 6, 3, 4, 7]
                            }
                        }],
                    createdRow: function (row, data, dataIndex) {
                        // add tooltip when row is created
                        // text: '<img src="assets/images/excelicon.png">',
                        // text: '<img src="assets/images/pdficon.png">',
                        $(row).find('td:eq(2)').text(data["dos"].toString());
                        $(row).find('td:eq(5)').text(data["created_timestamp"].toString());
                        $(row).find('td:eq(6)').hide();
                        $(row).find('td:eq(7)').hide();
                        if (UT === '4' || UT === '5' || UT === '2')
                        {
                            $(row).find('td:eq(8)').show();
                        } else
                        {

                            $(row).find('td:eq(8)').hide();
                        }

                    }
                });

                $('#simpletable').find('thead').find('tr').each(function () {


                    if (UT === '4' || UT === '5' || UT === '2')
                    {
                        $(this).find('th:eq(8)').show();
                    } else
                    {

                        $(this).find('th:eq(8)').hide();
                    }

                });

            });
    </script>


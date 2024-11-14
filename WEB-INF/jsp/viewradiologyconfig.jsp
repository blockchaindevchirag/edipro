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
        <title>View Radiology Config</title>
        <jsp:include page="includes/header.jsp"></jsp:include>

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
                                                                    <th style="position: sticky; top: 0; z-index: 1;">Rad ID</th>
                                                                    <th style="position: sticky; top: 0; z-index: 1;">Radiology</th>
                                                                    <th style="position: sticky; top: 0; z-index: 1;">Practice</th>     
                                                                    <th></th> 
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

                $('#simpletable').find('thead').find('tr').each(function () {


                });



                $('#simpletable').DataTable({
                    "aaSorting": [[0, "desc"]], // Sort by first column descending
                    "lengthMenu": [10, 30, 50, 100, 200],
                    "iDisplayLength": 10,
                    drawCallback: function (settings, json) {

                        $('[data-toggle="tooltip"]').tooltip('update');
                        //$("#list-of-product tbody tr > td").tooltip('hide');
                    },
                    "ajax": {
                        "type": "GET",
                        "url": 'radiologyconfigdata',
                        "contentType": 'application/json'
                    },
                    "columns": [
                        {"data": "configid", "orderable": true, "searchable": true, "name": "configid"},
                        {"data": "radiologyid", "orderable": true, "searchable": true, "name": "radiologyid"},
                        {"data": "radiologist", "orderable": true, "searchable": true, "name": "radiologist"},
                        {"data": function (data) {
                                var practiceid = data.practiceid;
                                return  practiceid.substring(0, 25) + "...";
                            }, "orderable": true, "searchable": true, "name": "practiceid"},                       
                        {"data": function (data) {
                                var edit = "";
        <sec:authorize access="hasAuthority('EDIT_RADIOLOGY_CONFIG_PRIVILEGE')">
                                edit = "<a class='vu-idbole' href='editradiologyconfig?configid=" + data.configid + "&radiology=" + data.radiologyid + "'>Edit</a>";
        </sec:authorize>
                                return edit;
                            }, "orderable": true, "searchable": true, "name": "radiologist"}

                    ],
                    dom: 'fBrtipl',
                    buttons: [
                        {
                            extend: 'csv',
                            text: '<img src="assets/images/excelicon.png">',
                            className: 'dt-pdf-btn',
                            titleAttr: 'Download list in excel Format'

                        },
                        //                      'csv',
                        {
                            extend: 'pdfHtml5',
                            orientation: 'landscape',
                            text: '<img src="assets/images/pdficon.png">',
                            className: 'dt-pdf-btn',
                            titleAttr: 'Download list in PDF Format',
                            pageSize: 'LEGAL'
                        }],
                    createdRow: function (row, data, dataIndex) {
                        // add tooltip when row is created

                        $(row).find('td:eq(3)').attr('data-toggle', "tooltip");
                        $(row).find('td:eq(3)').attr('data-original-title', data["practice"].toString());

                    }
                });


            });
    </script>


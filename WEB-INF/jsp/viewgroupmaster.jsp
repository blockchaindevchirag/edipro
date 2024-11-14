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
        <title>View Group Clinic</title>
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
                                                                    <th style="position: sticky; top: 0; z-index: 1;">Group</th>
                                                                    <th style="position: sticky; top: 0; z-index: 1;">Corp</th>
                                                                    <th style="position: sticky; top: 0; z-index: 1;">Corp</th>
                                                                    <th style="position: sticky; top: 0; z-index: 1;">Address</th>
                                                                    <th style="position: sticky; top: 0; z-index: 1;">Address</th>
                                                                    <th style="position: sticky; top: 0; z-index: 1;">State</th>
                                                                    <th style="position: sticky; top: 0; z-index: 1;">Created By</th>
                                                                    <th>Created On</th>
                                                                    <th>Updated By</th>
                                                                    <th>Updated Date</th>
                                                                    <th style="position: sticky; top: 0; z-index: 1;">Entity</th>
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

                var UT = '<%= session.getAttribute("UT")%>';

                $('#simpletable').find('thead').find('tr').each(function () {
                    $(this).find('th:eq(3)').hide();
                    $(this).find('th:eq(5)').hide();


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
                        "url": 'grouppracticedata',
                        "contentType": 'application/json'
                    },
                    "columns": [
                        {"data": "group_id", "orderable": true, "searchable": true, "name": "group_id"},
                        {"data": "group_name", "orderable": true, "searchable": true, "name": "group_name"},
                        {"data": "scorp_name", "orderable": true, "searchable": true, "name": "scorp_name"},
                        {"data": "corp_name", "orderable": true, "searchable": true, "name": "corp_name"},
                        {"data": "saddressline1", "orderable": true, "searchable": true, "name": "saddressline1"},
                        {"data": "addressline1", "orderable": true, "searchable": true, "name": "addressline1"},
                        {"data": "state", "orderable": true, "searchable": false, "name": "state"},
                        {"data": "created_by", "orderable": true, "searchable": false, "name": "created_by"},
                        {"data": "created_date", "orderable": true, "searchable": false, "name": "created_date"},
                        {"data": "updated_by", "orderable": true, "searchable": false, "name": "updated_by"},
                        {"data": "updated_date", "orderable": true, "searchable": false, "name": "updated_date"},
                        {"data": "entity", "orderable": true, "searchable": false, "name": "entity"},
                        {"data": function (data) {

                                return "<span><a href= 'editgroupmaster?tid=" + data.group_id + "&corp=" + data.corp_id + "'><i class='fas fa-edit' style='font-size:15px; margin:0 3px;color:#2DCEE3;'></i></a></span>";

                            }, "orderable": true, "searchable": true, "name": "group_id"}
                    ],
                    dom: 'fBrtipl',
                    buttons: [
                        {
                            extend: 'csv',
                            text: '',
                            className: 'dt-pdf-btn',
                            titleAttr: 'Download list in excel Format',
                            exportOptions: {
                                columns: [0, 1, 3, 5, 6, 7, 8, 9, 10]
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
                                columns: [0, 1, 3, 5, 6, 7, 8, 9, 10]
                            }
                        }],
                    createdRow: function (row, data, dataIndex) {
                        $(row).find('td:eq(2)').attr('data-toggle', "tooltip");
                        $(row).find('td:eq(2)').attr('data-original-title', data["corp_name"].toString());
                        $(row).find('td:eq(4)').attr('data-toggle', "tooltip");
                        $(row).find('td:eq(4)').attr('data-original-title', data["addressline1"].toString());
                        $(row).find('td:eq(3)').hide();
                        $(row).find('td:eq(5)').hide();

                    }
                });


            });
    </script>


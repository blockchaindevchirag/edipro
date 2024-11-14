<%-- 
    Document   : Invoice Details
    Created on : 23-May-2022, 1:17:51 am
    Author     : Muthu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%> 
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html> 
<html>
    <title>Subscription Invoice Report</title>
    <script>
        var page = {
            bootstrap: 3
        };

        function swap_bs() {
            page.bootstrap = 3;
        }
    </script>
    <style>
        .datepicker>.datepicker-days {
            display: block;
        }
        .datepicker tbody tr > td.day.range {
            background: #c0b5b5 !important;
        }
        ol.linenums {
            margin: 0 0 0 -8px;
        }
         .dataTables_scrollBody thead tr[role="row"]{
                visibility: collapse !important;
            }
    </style>

    <link rel="stylesheet" href="assets/plugins/data-tables/css/datatables.min.css">
    <link rel="stylesheet" href="assets/plugins/data-tables/css/select.dataTables.min.css">
    <link rel="stylesheet" href="assets/css/plugins/bootstrap-select.min.css">
    <link rel="stylesheet" href="assets/css/style.css">
    <link rel="stylesheet" href="assets/css/evd_style.css">

    <section class="">
        <div class="pcoded-wrapper">
            <div class="pcoded-content">
                <div class="pcoded-inner-content">
                    <div class="main-body">
                        <div class="page-wrapper">
                            <div class="row printcss" id="printTable">
                                <section class="app-invoice-wrapper  printable-content">
                                    <div class="row">
                                        <div class="col-xl-12 col-md-12 col-12">
                                            <!-- using a bootstrap card -->
                                            <div class="card">
                                                <!-- card body -->
                                                <div class="card-body">
                                                    <!-- card-header -->


                                                    <!--product details table -->
                                                    <div class="table-responsive">
                                                        <table id="simpletable" width="100%" class="table table-striped table-bordered nowrap">
                                                            <thead>
                                                                <tr style="text-align: center">     

                                                                    <th scope="col">Username</th>
                                                                    <th scope="col">Role</th>
                                                                    <th scope="col">Account</th>
                                                                    <th scope="col">Linked With</th>
                                                                    <th scope="col">Fee</th>



                                                                </tr>
                                                            </thead>
                                                            <tbody>

                                                                <c:forEach var="invoice" items="${subinvoicelist}">
                                                                    <tr style="text-align: left">                                                                      
                                                                        <td>${invoice.user_name}</td>
                                                                        <td style="vertical-align: left;">${invoice.user_type}</td>
                                                                        <td style="vertical-align: left;">${invoice.account_name}</td>
                                                                        <td style="vertical-align: left;">${invoice.practice}</td>                                                                        
                                                                        <td class="font-weight-bold" style="text-align: end;"><span style="margin: 15px;">${invoice.fee}</span></td>
                                                                    </tr>
                                                                </c:forEach>

                                                            </tbody>


                                                        </table>
                                                    </div>




                                                    <hr>

                                                    <!-- invoice total -->

                                                </div>
                                            </div>
                                        </div>

                                    </div>

                                </section>


                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- [ Invoice-right ] end -->



        <!-- [ Main Content ] end -->

    </section>    


    <jsp:include page="includes/footer.jsp"></jsp:include>

    <script type="text/javascript">

        $(document).ready(function () {
            $('#flading').hide();
            $('#simpletable').dataTable({
                // 'rowsGroup': [2],
                'rowsGroup': [2],
                "aaSorting": [[1, "desc"]], // Sort by first column descending
                stateSave: true,
                scrollY: "300px",
                scrollX: true,
                scrollCollapse: false,
                paging: true,
                fixedHeader: true,
                "iDisplayLength": 15,
                "lengthMenu": [15, 25, 50, 100, 200],
                "oLanguage": {
                    "sEmptyTable": "No Data..."
                },
                "pageLength": 15,
                dom: 'fBrtipl',
                buttons: [
                    {
                        extend: 'csv',
                        text: '<img src="assets/images/excelicon.png">',
                        className: 'dt-pdf-btn',
                        titleAttr: 'Download list in excel Format',
                        exportOptions: {
                            columns: [0,1, 2, 3, 4]
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
                            columns: [0,1, 2, 3, 4]
                        }}]
            });



        });


    </script>  
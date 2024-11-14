<%-- 
    Document   : view_eligibility_request
    Created on : 07-Mar-2021, 1:55:15 pm
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View EOB</title>
        <jsp:include page="includes/header.jsp"></jsp:include>

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
                                                <div class="row justify-content-end row-hgt">
                                                    <div class="col-4">
                                                        <!--<label for="exampleInputEmail1">Total Amount</label>-->
                                                        <div class="card support-bar">
                                                            <div class="card-footer bg-c-info text-white" style="padding: 0 25px !important;height: 33px;">
                                                                <div class="row text-center">
                                                                    <div class="col" title="Total Amount" data-toggle="tooltip" data-placement="top" style="padding-top: 7px">
                                                                        <h5 class="m-0 text-white" title="Total Amount" style="font-size:15px;">Total Amount : <span id="totoalamt"></span></h5>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-4">
                                                        <!--<label for="exampleInputEmail1">Screen Total</label>-->
                                                        <div class="card support-bar">
                                                            <div class="card-footer bg-c-yellow text-white" style="padding: 0 25px !important;height: 33px;">
                                                                <div class="row text-center">
                                                                    <div class="col" title="Screen Total" data-toggle="tooltip" data-placement="top" style="padding-top: 7px">
                                                                        <h5 class="m-0 text-white" title="Screen Total" style="font-size: 15px">Screen Total : <span id="screentotoal"></span></h5>
                                                                        <!--<span>Screen Total</span>-->
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <hr class="hrtopbtm">
                                                <div class="dt-responsive table-responsive tablehide">
                                                    <table id="simpletable" width="100%" style="width: 0px;" class="table table-striped table-bordered nowrap dataTable">
                                                        <thead>
                                                            <tr>
                                                                <th>TaxID</th>
                                                                <th>Draft #</th>
                                                                <th>Pay Week</th>
                                                                <th>Pay Date</th>
                                                                <th>Billed</th>
                                                                <th>Discount</th>
                                                                <th>Allowed</th>
                                                                <th>Other</th>
                                                                <th>Seq Amount</th>
                                                                <th>Pat Obl.</th>
                                                                <th>Paid</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>


                                                        </tbody>

                                                        <!--                                                        <tfoot style="background: antiquewhite;">
                                                                                                                    <tr>
                                                        
                                                                                                                        <th colspan="11"></th>
                                                                                                                    </tr>
                                                        
                                                                                                                </tfoot>-->
                                                    </table>
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

    <jsp:include page="includes/footer.jsp"></jsp:include>

    <script type="text/javascript">
        $(document).ready(function () {
                $(".table-responsive").removeClass("tablehide");
                $(".table-responsive").addClass("tableshow");
            $('#simpletable').DataTable({
                "aaSorting": [[0, "desc"]], // Sort by first column descending
                "lengthMenu": [15, 40, 80, 200],
                // "ajax": "eligibilitydata",
                //"processing": true,
                "columnDefs": [{
                        "targets": '_all',
                        "createdCell": function (td, cellData, rowData, row, col) {

                        }
                    }],
                drawCallback: function (settings, json) {

                    $('[data-toggle="tooltip"]').tooltip('update');

                },
                "ajax": {
                    "type": "GET",
                    "url": 'bulk-eob-data',
                    "contentType": 'application/json'
                },
                "columns": [
                    {"data": "TaxID", "orderable": true, "searchable": true, "name": "TaxID"},
                    {"data": function (data) {
                            return "<a target='_blank' href= 'eobdetails?TaxID=" + data.TaxID + "&EPCDraftNumber=" + data.EPCDraftNumber + "&PaymentWeek=" + data.PaymentWeek + "&PaymentDate=" + data.PaymentDate + "&BilledAmount=" + data.BilledAmount + "&Providerdiscount=" + data.Providerdiscount + "&AllowedAmount=" + data.AllowedAmount + "&Otherinsurance=" + data.Otherinsurance + "&Sequestration=" + data.Sequestration + "&Patientobligation=" + data.Patientobligation + "&PaidAmount=" + data.PaidAmount + "'>" + data.EPCDraftNumber + "</a>";
                        },
                        "orderable": true, "searchable": true, "name": "EPCDraftNumber"},
                    {"data": "PaymentWeek", "orderable": true, "searchable": true, "name": "PaymentWeek"},
                    {"data": "PaymentDate", "orderable": true, "searchable": true, "name": "PaymentDate"},
                    {"data": "BilledAmount", "orderable": true, "searchable": true, "name": "BilledAmount"},
                    {"data": "Providerdiscount", "orderable": true, "searchable": true, "name": "Providerdiscount"},
                    {"data": "AllowedAmount", "orderable": true, "searchable": true, "name": "AllowedAmount"},
                    {"data": "Otherinsurance", "orderable": true, "searchable": true, "name": "Otherinsurance"},
                    {"data": "Sequestration", "orderable": true, "searchable": true, "name": "Sequestration"},
                    {"data": "Patientobligation", "orderable": true, "searchable": true, "name": "Patientobligation"},
                    {"data": "PaidAmount", "orderable": true, "searchable": true, "name": "PaidAmount"}

                ],
                dom: 'fBrtipl',
                buttons: [
                    {
                        extend: 'csv',
                        text: '<img src="assets/images/excelicon.png">',
                        className: 'dt-pdf-btn',
                        titleAttr: 'Download list in excel Format'
                    },
//                        'csv',
                    {
                        extend: 'pdfHtml5',
                        orientation: 'landscape',
                        text: '<img src="assets/images/pdficon.png">',
                        className: 'dt-pdf-btn',
                        titleAttr: 'Download list in PDF Format',
                        pageSize: 'LEGAL'}],
                createdRow: function (row, data, dataIndex) {
                    // add tooltip when row is created
                    //  $(row).find('td:eq(4)').attr('data-toggle', "tooltip")
                    //  $(row).find('td:eq(4)').attr('data-original-title', data["payer"].toString())
                    //  $(row).find('td:eq(6)').attr('data-toggle', "tooltip")
                    //   $(row).find('td:eq(6)').attr('data-original-title', data["payee"].toString())
                    //  console.log(data["amount"])
                },
                footerCallback: function (tfoot, data, start, end, display) {
                    var api = this.api(), data;


                    var intVal = function (i) {
                        return typeof i === 'string' ?
                                i.replace(/[\$,]/g, '') * 1 :
                                typeof i === 'number' ?
                                i : 0;
                    };

                    // Total over all pages
                    var total = api
                            .column(7)
                            .data()
                            .reduce(function (a, b) {
                                return intVal(a) + intVal(b);
                            }, 0);

                    // Total over this page
                    var pageTotal = api
                            .column(7, {page: 'current'})
                            .data()
                            .reduce(function (a, b) {
                                return intVal(a) + intVal(b);
                            }, 0);

                    // Update footer
                    $(api.column(0).footer()).html(
                            "Total Amount: " + total.toFixed(2) + "   | Screen Total: " + pageTotal.toFixed(2)
                            // '$' + pageTotal + ' ( $' + total + ' total)'
                            );
                    $('#totoalamt').html('$ ' + total.toFixed(2));
                    $('#screentotoal').html('$ ' + pageTotal.toFixed(2));
                }

            });

        });

    </script>     
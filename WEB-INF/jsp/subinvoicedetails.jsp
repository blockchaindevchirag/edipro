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
    <title>Subscription Invoice Details</title>
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
    </style>
    <jsp:include page="includes/header.jsp"></jsp:include>

        <script>
            function printDiv(printareas) {
                var printContents = document.getElementById(printareas).innerHTML;
                var originalContents = document.body.innerHTML;
                document.body.innerHTML = printContents;

                document.title = $('#payee').text() + "_Invoice_" + $('#invid').text();
                window.print();
                document.body.innerHTML = originalContents;
                window.location.reload();
            }
        </script>


        <section class="pcoded-main-container">
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
                                                    <div class="card-body p-2">
                                                        <!-- card-header -->
                                                        <div class="card-header px-0">
                                                            <h4 style="text-align:center; text-decoration: underline; color:#0E51C2 !important;">SUBSCRIPTION INVOICE</h4>
                                                            <br><br>
                                                            <div class="row">
                                                                <div class="col-4 col-md-4 col-lg-4 col-xl-4 mb-50">
                                                                    <img src="assets/images/AmeriDenti-Logo-header2.png" alt="company-logo" height="40"
                                                                         width="104"><br>
                                                                    <p>14451 Chambers Rd., STE 150, Tustin, CA 92780</br>                                                                        
                                                                    </p>
                                                                </div>
                                                                <div class="col-4 col-lg-4 col-md-4 col-xl-4" style="text-align: center;">
                                                                    <img src="assets/images/dontpay.png" alt="payment" >                           
                                                                </div>
                                                                <div class="col-4 col-md-4 col-lg-4 col-xl-4">
                                                                    <div class="d-flex align-items-center justify-content-end justify-content-xs-start">
                                                                        <div class="issue-date pr-2">
                                                                            <span class="font-weight-bold no-wrap">INVOICE NUMBER : </span>
                                                                            #<span id="invid"></span><br>
                                                                            <span class="font-weight-bold no-wrap">INVOICE DATE : </span>
                                                                            <span id="createddate"></span><br>
                                                                            <span class="font-weight-bold no-wrap">ACCOUNT#: </span>
                                                                            <span id="accountno"></span><br>
                                                                            <span class="font-weight-bold no-wrap">SUBSCRIPTION MONTH: </span>
                                                                            <span id="invmon"></span>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="row py-2">
                                                            <div class="col-md-4 col-sm-12">
                                                                <div class="card card-border-c-blue">
                                                                    <!--                                            <div class="card-header">
                                                                                                                    <h6>Client Information</h6>
                                                                                                                </div>-->
                                                                    <div class="card-body card-task">
                                                                        <div class="row">
                                                                            <div class="col-sm-12">
                                                                                <p style="margin: 0;
                                                                                   font-weight: bold; color: #111"><span id="payee">
                                                                                </p>
                                                                                <p style="margin: 0;"> <span id="addressline1"/>, <span id="city"/>, <span id="state"/>. <span id="zip"/></p>
                                                                                <p style="margin: 0;"><span id="contact_phone"/></p>

                                                                            </div>
                                                                        </div>
                                                                        <hr>
                                                                    </div>
                                                                </div>
                                                            </div>


                                                        </div>

                                                        <!--product details table -->
                                                        <div class="table-responsive" style="margin-top: -29px;">
                                                            <table id="simpletable" width="100%" class="table table-striped table-bordered nowrap">
                                                                <thead>
                                                                    <tr style="text-align: center">     
                                                                        <th scope="col">SNo</th>        
                                                                        <th scope="col">Username</th>
                                                                        <th scope="col">Role</th>
                                                                        <th scope="col">Linked With</th>
                                                                        <th scope="col">Fee</th>



                                                                    </tr>
                                                                </thead>
                                                                <tbody>

                                                                <c:forEach var="invoice" items="${subinvoicelist}">
                                                                    <tr>
                                                                        <td style="vertical-align: middle;"></td>
                                                                        <td style="vertical-align: left;">${invoice.user_name}</td>
                                                                        <td style="vertical-align: left;">${invoice.user_type}</td>
                                                                        <td style="vertical-align: left;">${invoice.practice}</td>
                                                                        <td class="font-weight-bold" style="text-align: right;"><span style="margin: 15px;">${invoice.fee}</span></td>
                                                                    </tr>
                                                                </c:forEach>

                                                            </tbody>



                                                        </table>
                                                    </div>




                                                    <hr>

                                                    <!-- invoice total -->
                                                    <div class="invoice-total py-2">
                                                        <div class="row">
                                                            <div class="col-4 col-sm-8 mt-75">
                                                                <img src="assets/images/paid.png" alt="paid" id="paidimg" class="p-5" style="margin: auto;display: block;" >   
                                                                <img src="assets/images/due.png" alt="due" id="dueimg" class="p-5" style="margin: auto;display: block;" >  
                                                                <img src="assets/images/writeoff.png" alt="due" id="writeoffimg" class="p-5" style="margin: auto;display: block;" >  
                                                            </div>
                                                            <div class="col-8 col-sm-4 justify-content-end mt-75">
                                                                <ul class="list-group cost-list">

                                                                    <li class="d-flex justify-content-between list-group-item">
                                                                        <span class="cost-title mr-2">Discount :</span>
                                                                        <span id="ndiscount" class="cost-value"></span>
                                                                    </li>
                                                                    <li class="d-flex justify-content-between list-group-item">
                                                                        <span class="cost-title mr-2">Invoice Total :</span>
                                                                        <span id="ntotal" class="cost-value"></span>
                                                                    </li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                    </div>

                                </section>

                                <!---------------------------------------------------------------------------------->                            
                                <div class="row">
                                    <div class="col-lg-12">
                                        <div class="card select-card">
                                            <div class="card-body" id="privilegeContainer">
                                                <div style="padding:5px;text-align: center;"><strong>******************Disclaimer*****************</strong>
                                                </div>
                                                <div style="padding:5px;text-align: center"><strong>
                                                        The following information was sent from the insurance company. If you have a  question or concern please contact the insurance company directly.</strong>
                                                </div>

                                                <div style="padding:5px;text-align: center"><strong>
                                                        ***********************************************************************************</strong></div>

                                            </div>
                                        </div>
                                    </div>
                                </div> 
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- [ Invoice-right ] end -->
        <div class="col-12 text-center">
            <a class="btn btn-primary btn-print-invoice m-b-10" title="Print" onclick="printDiv('printTable')">
                Print
            </a>
        </div>


        <!-- [ Main Content ] end -->

    </section>    

    <div id="flading" class="loader">

    </div>



    <jsp:include page="includes/footer.jsp"></jsp:include>

    <script type="text/javascript">



        $(document).ready(function () {

            $('#flading').show();
         

            $('#simpletable').dataTable({
                // 'rowsGroup': [2],
                "aaSorting": [[2, "desc"]], // Sort by first column descending
                "iDisplayLength": 100,
                "oLanguage": {
                    "sEmptyTable": "No Data..."
                },
                "pageLength": 100,
                dom: '',
                buttons: [
                    {
                        text: '<img src="assets/images/backbtnicon_blue.png">',
                        className: 'dt-pdf-btn',
                        titleAttr: 'Download list in excel Format',
                        action: function (e, dt, node, config) {
                            goBack();
                        }
                    }

                ]
            });

            $('#simpletable').find('tbody').find('tr').each(function (index) {

                $(this).find('td:eq(0)').text(index + 1);

            });

            var invid = GetParameterValues('invid');
            invid = decodeURI(invid);
            if (typeof (invid) !== "undefined")
            {
                $('#invid').text(decodeURI(invid));

            }
            var invdate = GetParameterValues('invdate');
            invdate = decodeURI(invdate);
            if (typeof (invdate) !== "undefined")
            {
                $('#createddate').text(decodeURI(invdate));

                const monthNames = ["JAN", "FEB", "MAR", "APR", "MAY", "JUN",
                    "JUL", "AUG", "SEP", "OCT", "NOV", "DEC"
                ];

                const d = new Date($('#createddate').text());
                $('#invmon').html(monthNames[d.getMonth()] + "'" + d.getFullYear());

            }
            var net = GetParameterValues('net');
            net = decodeURI(net);
            if (typeof (net) !== "undefined")
            {
                //  $('#ntotal').text(decodeURI(net));
                $('#ntotal').html('$ ' + net);
            }

            var discount = GetParameterValues('discount');
            discount = decodeURI(discount);
            if (typeof (net) !== "undefined")
            {
                // $('#ndiscount').text(decodeURI(discount));
                $('#ndiscount').html('$ ' + discount);

            }
            var account_id = GetParameterValues('account_id');
            account_id = decodeURI(account_id);
            //  console.log(payerval);

            var invstatus = GetParameterValues('invstatus');
            invstatus = decodeURI(invstatus);
            //   console.log(paypat);


            //  alert(practice_id);
            $('#paidimg').hide();
            $('#dueimg').hide();
            $('#writeoffimg').hide();
            if (typeof (invstatus) !== "undefined")
            {
                if (invstatus === 'Paid')
                {
                    $('#paidimg').show();
                    $('#dueimg').hide();
                    $('#writeoffimg').hide();
                } else if (invstatus === 'Generated')
                {
                    $('#paidimg').hide();
                    $('#dueimg').show();
                    $('#writeoffimg').hide();
                } else if (invstatus === 'Written off')
                {
                    $('#paidimg').hide();
                    $('#dueimg').hide();
                    $('#writeoffimg').show();
                }
            }



            if (typeof (account_id) !== "undefined")
            {

                $.get('getaccountdetails', {
                    account_id: account_id
                }, function (response) {

                      console.log(response);
                    if (response.length > 0)
                    {

                        var txt = response;
                        var obj = jQuery.parseJSON(txt);
                        console.log(obj);
                        if (obj.length > 0)
                        {
                            for (var i = 0; i < obj.length; i++)
                            {
                                $('#addressline1').html(obj[i].billing_address);
                                $('#city').html(obj[i].city);
                                $('#state').html(obj[i].state);
                                $('#zip').html(obj[i].zip);
                                $('#contact_phone').html(obj[i].contact_phone);
                                $('#payee').html(obj[i].client_name);
                                $('#accountno').html(obj[i].account_no);
                                $('#flading').hide();
                            }
                        }
                        else
                        {
                              $('#flading').hide();
                        }



                    } else
                    {
                        $('#flading').hide();
                    }

                });
            }


        });


    </script>  
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
    <title>Service Invoice Details</title>
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
                                                            <div class="row">
                                                                <div class="col-4 col-md-4 col-lg-4 col-xl-4 mb-50">
                                                                    <img src="assets/images/Ameridenti_invoice.png" alt="company-logo" height="95"
                                                                         width="164">
                                                                    <p><strong><span style="color: #db9008; font-weight: 410;">Ameridenti LLC </span></strong>(Billing Service Invoice)<br>14451 Chambers Rd., STE 150, Tustin, CA 92780</br>
                                                                        Accounting@AmeriDenti.com
                                                                    </p>
                                                                </div>
                                                                <div class="col-4 col-lg-4 col-md-4 col-xl-4 mt-4" style="padding-left:100px;">
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
                                                                            <span id="accountno"></span>

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
                                                                                <p style="margin: 0;"> <span id="email"/> </p>
                                                                            </div>
                                                                        </div>
                                                                        <hr>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-4 col-sm-12">
                                                                <div class="card card-border-c-yellow">
                                                                    <!--                                            <div class="card-header">
                                                                                                                    <h6>EFT Information</h6>
                                                                                                                </div>-->
                                                                    <div class="card-body card-task">
                                                                        <div class="row">
                                                                            <div class="col-12">
                                                                                <span class="d-block">
                                                                                    <span style="font-weight: bold"> EFT/Chk #:</span>
                                                                                    <a class="float-right f-w-400" id="eft" target="_blank"><span class="float-right f-w-400"></span> </a>                                                   
                                                                                </span>
                                                                                <span class="d-block">
                                                                                    <span style="font-weight: bold">Chk Date :</span>
                                                                                    <span id="dor" class="float-right f-w-400"></span>                                                    
                                                                                </span>
                                                                                <span class="d-block">
                                                                                    <span style="font-weight: bold">Payor :</span>
                                                                                    <span id="payer" class="float-right f-w-400"></span>                                                    
                                                                                </span>
                                                                                <span class="d-block">
                                                                                    <span style="font-weight: bold">Draft Date:</span>
                                                                                    <span id="draft" class="float-right f-w-400"></span>                                                    
                                                                                </span>
                                                                            </div>
                                                                        </div>
                                                                        <hr>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-4 col-sm-12">
                                                                <div class="card card-border-c-green">
                                                                    <!--                                            <div class="card-header">
                                                                                                                    <a class="text-secondary">&nbsp; </a>
                                                                                                                </div>-->
                                                                    <div class="card-body card-task">
                                                                        <div class="row">
                                                                            <div class="col-12">
                                                                                <!--  <table>
          
                                                                                      <tr>
                                                                                          <th>ORIGINAL INVOICE  </th>
                                                                                          <td>:&emsp;</td>
                                                                                          <td><span id="originalinv" class="float-right f-w-400" style="padding-left: 126px;"></span></td>
                                                                                      </tr>
                                                                                      <tr>
                                                                                          <th>UPDATED INVOICE  </th>
                                                                                          <td>:&emsp;</td>
                                                                                          <td> <span id="updatedinv" class="float-right f-w-400" style="padding-left: 126px;"></span></td>
                                                                                      </tr>
          
                                                                                  </table> -->

                                                                                <span class="d-block">
                                                                                    <span style="font-weight: bold">ORIGINAL INVOICE:</span>
                                                                                    <span id="originalinv" class="float-right f-w-400"></span>                                                    
                                                                                </span>
                                                                                <span class="d-block">
                                                                                    <span style="font-weight: bold">UPDATED INVOICE:</span>
                                                                                    <span id="updatedinv" class="float-right f-w-400"></span>                                                    
                                                                                </span>


                                                                            </div>

                                                                        </div>

                                                                    </div>
                                                                    <hr>
                                                                </div>
                                                            </div>

                                                        </div>

                                                        <!--product details table -->
                                                        <div class="table-responsive" style="margin-top: -29px;">
                                                            <table id="simpletable" width="100%" class="table table-borderless table-striped">
                                                                <thead>
                                                                    <tr style="text-align: center">     
                                                                        <th scope="col">SNo</th>        
                                                                        <th scope="col">Claim #</th>
                                                                        <th scope="col">Patient</th>
                                                                        <th scope="col">Charge</th>
                                                                        <th scope="col">Covered Amount</th>
                                                                        <th scope="col">Invoice Amount</th>


                                                                    </tr>
                                                                </thead>
                                                                <tbody>

                                                                <c:forEach var="Claim" items="${claimlistera}">
                                                                    <tr style="text-align: center">
                                                                        <td></td>
                                                                        <td><a class="vu-idbole" target="_blank" href= 'patientwise?rid=${Claim.claimno}&pr=${Claim.patientres}&icn=${Claim.payericn}&payer=${Claim.payer}&file=${Claim.fn}&payee=${Claim.payee}~${Claim.lname}, ${Claim.fname}~${Claim.fn}~${Claim.chargeamt}~${Claim.paidamt}~${Claim.insid}~${Claim.inslname}, ${Claim.insfname}~${Claim.rendproid}~${Claim.rendprolname}, ${Claim.rendprofname}'>${Claim.claimno}</a></td>
                                                                        <td>${Claim.lname}, ${Claim.fname}</td>
                                                                        <td class="font-weight-bold" style="text-align: end;"><span style="margin: 15px;">${Claim.chargeamt}</span></td>
                                                                        <td class="font-weight-bold" style="text-align: end;"><span style="margin: 15px;">${Claim.covered}</span></td>
                                                                        <td class="font-weight-bold" style="text-align: end;"><span style="margin: 15px;"></span></td>
                                                                    </tr>
                                                                </c:forEach>

                                                            </tbody>



                                                        </table>
                                                    </div>


                                                    <!--        <div class="table-responsive" style="margin-top: -29px;">
                                                                <table class="table table-borderless table-striped">
                                                                    <thead>
                                                                        <tr style="text-align: center">
                                                                            <th scope="col">CLAIM #</th>
                                                                            <th scope="col">PATIENT</th>
                                                                            <th scope="col">CHARGE</th>
                                                                            <th scope="col">PAID AMOUNT</th>
                                                                            <th scope="col">INVOICE AMOUNT</th>
                                                                        </tr>
                                                                    </thead>
                                                                    <tbody>
                                                                        <tr style="text-align: center">
                                                                            <td>2822015523</td>
                                                                            <td>SENNA, RICHARD</td>
                                                                            <td>2668.34</td>
                                                                            <td>1744.15</td>
                                                                            <td class="font-weight-bold" style="text-align: end">
                                                                                <span style="margin: 15px;">261.62</span>
                                                                            </td>
                                                                        </tr>
                                                                        <tr style="text-align: center">
                                                                            <td>2822015523</td>
                                                                            <td>SENNA, RICHARD</td>
                                                                            <td>2668.34</td>
                                                                            <td>1744.15</td>
                                                                            <td class="font-weight-bold" style="text-align: end">
                                                                                <span style="margin: 15px;">261.62</span>
                                                                            </td>
                                                                        </tr>
                                                                        <tr style="text-align: center">
                                                                            <td>2822015523</td>
                                                                            <td>SENNA, RICHARD</td>
                                                                            <td>2668.34</td>
                                                                            <td>1744.15</td>
                                                                            <td class="font-weight-bold" style="text-align: end">
                                                                                <span style="margin: 15px;">261.62</span>
                                                                            </td>
                                                                        </tr>
                                                                    </tbody>
                                                                </table>
                                                            </div> -->


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
                                                                        <span class="cost-title mr-2">Subtotal </span>
                                                                        <span id="totalamount" class="cost-value"></span>
                                                                    </li>
                                                                    <li class="d-flex justify-content-between list-group-item">
                                                                        <span class="cost-title mr-2">Adjustment : </span>
                                                                        <span id="discount" class="cost-value"></span>
                                                                    </li>
                                                                    <!--  <li class="dropdown-divider"></li>
                                                                <li class="d-flex justify-content-between list-group-item">
                                                                       <span class="cost-title mr-2">Total :</span>
                                                                       <span id="gtotal" class="cost-value"></span>
                                                                   </li>
                                                                   <li class="d-flex justify-content-between list-group-item" >
                                                                       <span id="ptype" class="cost-title mr-2" > </span>
                                                                       <span id="ptypecalval" class="cost-value" ></span>
                                                                   </li>
                                                                   <li class="dropdown-divider"></li> -->

                                                                    <li class="d-flex justify-content-between list-group-item">
                                                                        <span class="cost-title mr-2">Net :</span>
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
                                <!--  <div class="row">
                                      <div class="col-sm-12">
                                          <div class="card select-card">
                                              <div class="card-body" id="privilegeContainer">
                                                  <div style="padding:5px;text-align: center;"><strong>******************Remittance Notice(s) from Insurance Company *****************</strong>
                                                  </div>
                                                  <div style="padding:5px;text-align: center"><strong>
                                                          The following information was sent from the insurance company. If you have a  question or concern please contact the insurance company directly.</strong>
                                                  </div>
  
                                                  <div style="padding:5px;text-align: center"><strong>
                                                          ***********************************************************************************</strong></div>
  
                                              </div>
                                          </div>
                                      </div>
                                  </div> -->
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
                "aaSorting": [[1, "desc"]], // Sort by first column descending
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

            var eft = GetParameterValues('rid');

            var payerval = GetParameterValues('payer');
            var invid = GetParameterValues('invid');
            //  console.log(payerval);
            var paypat = GetParameterValues('payee');
            var discount = GetParameterValues('discount');
            var percent = GetParameterValues('percent');
            var ptype = GetParameterValues('ptype');
            var ptypeval = GetParameterValues('ptypeval');
            var commission = GetParameterValues('commission');
            var createddate = GetParameterValues('createddate');
            var servicechr = GetParameterValues('servicechr');
            var invstatus = GetParameterValues('invstatus');
            invstatus = decodeURI(invstatus);
            //   console.log(paypat);
            var dor = '';


            var practice_id = GetParameterValues('practiceid');
            practice_id = parseInt(practice_id);
            //  alert(practice_id);
            $('#paidimg').hide();
            $('#dueimg').hide();
            $('#writeoffimg').hide();
            if (invstatus === 'Paid')
            {
                $('#paidimg').show();
                $('#dueimg').hide();
                $('#writeoffimg').hide();
            } else if (invstatus === 'Due')
            {
                $('#paidimg').hide();
                $('#dueimg').show();
                $('#writeoffimg').hide();
            } else
            {
                $('#paidimg').hide();
                $('#dueimg').hide();
                $('#writeoffimg').show();
            }

            /*  $.get('getpracticedetails', {
             practice_id: practice_id
             }, function (response) {
             
             console.log(response);
             if (response.length > 0)
             {
             
             var sv = response.split('~');
             $('#addressline1').html(sv[10].trim());
             $('#city').html(sv[12].trim());
             $('#state').html(sv[13].trim());
             $('#zip').html(sv[14].trim());
             $('#email').html(sv[16].trim());
             $('#contact_phone').html(sv[17].trim());
             $('#accountno').html(sv[24].trim());
             $('#flading').hide();
             
             } else
             {
             $('#flading').hide();
             }
             
             }); */

            $.get('getpracticedetails', {
                practice_id: practice_id
            }, function (response) {


                if (response.length > 0)
                {
                    var txt = response;
                    var obj = jQuery.parseJSON(txt);

                    console.log(obj.length);

                    if (obj.length > 0)
                    {
                        for (var i = 0; i < obj.length; i++)
                        {
                            $('#addressline1').html(obj[i].addressline1);
                            $('#city').html(obj[i].city);
                            $('#state').html(obj[i].state);
                            $('#zip').html(obj[i].zip);
                            $('#email').html(obj[i].email);
                            $('#contact_phone').html(obj[i].contact_phone);
                            $('#accountno').html(obj[i].accountno);
                        }
                        $('#flading').hide();

                    } else
                    {
                        $('#flading').hide();
                    }
                }

            });

            function addDays(date, days) {
                var result = new Date(date);
                result.setDate(result.getDate() + days);
                var day;
                var month;

                // var newDate =  (result.getMonth() + 1)result.getFullYear() + "-" + result.getMonth()  + "-" + result.getDate();
                if (result.getDate() < 10)
                {
                    day = '0' + result.getDate();
                } else
                {
                    day = result.getDate();
                }
                if ((result.getMonth() + 1) < 10)
                {
                    month = '0' + parseInt(result.getMonth() + 1);
                } else
                {
                    month = parseInt(result.getMonth() + 1);
                }
                var draftdate = month + '/' + day + '/' + result.getFullYear();

                return draftdate;
            }


            if (typeof (payerval) !== "undefined")
            {
                $('#payer').text(decodeURI(payerval));

            }

            if (typeof (invid) !== "undefined")
            {
                $('#invid').text(decodeURI(invid));

            }

            if (typeof (createddate) !== "undefined")
            {
                $('#createddate').text(decodeURI(createddate));
            }

            var totalamount = 0;
            if (typeof (paypat) !== "undefined")
            {
                var res = paypat.split("~");
                var payeeval = res[0];
                dor = res[1].replace('#!', '');
                //   amount = res[2].replace('#!', '');
                //  fn = res[3].replace('#!', '');
                //   mode = res[4].replace('#!', '');
                //   type = res[5].replace('#!', '');
                //   cd = res[6].replace('#!', '');

                //  totalamount = amount;

                $('#payee').text(decodeURI(payeeval));
                $('#eft').text(decodeURI(eft));
                $('#eft').attr("href", "eobwise?eft=" + decodeURI(eft));
                $('#dor').text(decodeURI(dor));
                //  $('#amount').text(decodeURI(amount));
                //  $('#fn').text(decodeURI(fn));
                //  $('#mode').text(decodeURI(mode));
                //  $('#type').text(decodeURI(type));
                //  $('#cd').text(decodeURI(cd));
                if (decodeURI(dor) !== '')
                {
                    var draftdate = addDays(decodeURI(dor), 7);
                    $('#draft').text(draftdate);
                }

                // $('#card2').show();
                //  $('#card3').show();
            } else
            {
                // $('#card2').hide();
                // $('#card3').hide();
            }

            if (typeof (eft) !== "undefined")
            {
                var tp = 0.00;


                $('#simpletable').find('tbody').find('tr').each(function (index) {

                    var inv = 0;
                    $(this).find('td:eq(0)').text(index + 1);
                    inv = parseFloat(commission) * parseFloat($(this).find('td:eq(4)').text());
                    inv = inv + (inv * 0.035);
                    tp = tp + inv;
                    $(this).find('td:eq(5)').find('span').text(inv.toFixed(2));

                });


                $('#totalamount').html('$ ' + tp.toFixed(2));
                var gtotal = tp.toFixed(2) - (parseFloat(discount).toFixed(2));
                $('#gtotal').html('$ ' + gtotal.toFixed(2));
                $('#discount').html('$ ' + (parseFloat(discount).toFixed(2)));
                $('#percent').html('(' + percent + '%)');
                if (decodeURI(ptype) !== '' && decodeURI(ptype) !== 'Nil')
                {
                    $('#ptype').html(decodeURI(ptype) + ' (' + ptypeval + '%)');
                } else
                {
                    $('#ptype').html('Processing Fee' + ' (' + ptypeval + '%)');
                }

                // var tax = gtotal * (ptypeval / 100);
                $('#ptypecalval').html('$ ' + decodeURI(servicechr));
                var net = parseFloat(gtotal) + parseFloat(decodeURI(servicechr));
                $('#ntotal').html('$ ' + net.toFixed(2));

                $('#originalinv').html('$ ' + tp.toFixed(2));
                $('#updatedinv').html('$ ' + gtotal.toFixed(2));

                //$('#ptypeval').html('(' + ptypeval + '%)');

            }

        });


    </script>  
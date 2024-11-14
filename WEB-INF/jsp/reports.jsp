<%@page contentType="text/html"  pageEncoding="UTF-8" autoFlush="true"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html> 
<html >
    <head> 
        <title>Reports</title>
        <jsp:include page="includes/header.jsp"></jsp:include> 

        <section class="pcoded-main-container">
            <div class="pcoded-wrapper">
                <div class="pcoded-content">
                    <div class="pcoded-inner-content">
                        <div class="main-body">
                            <div class="page-wrapper">
                                <!-- [ breadcrumb ] end -->
                                <!-- [ Main Content ] start -->
                                <div class="row">
                                    <div class="col-md-6 col-xl-3">
                                        <div class="card social-widget-card">
                                            <div class="card-body-big bg-facebook">
                                                <h3 class="text-white m-0" id="paidera"></h3>
                                                <span class="m-t-10" > 
                                                    Paid ERA</span> 
                                            </div>
                                        </div>
                                    </div>
                                    <!-- Facebook card end -->
                                    <!-- Twitter card start -->
                                    <div class="col-md-6 col-xl-3">
                                        <div class="card social-widget-card">
                                            <div class="card-body-big bg-twitter">
                                                <h3 class="text-white m-0" id="recoupment"></h3>
                                                <span class="m-t-10">Recoupment</span> 
                                            </div>
                                        </div>
                                    </div>
                                    <!-- Twitter card end -->
                                    <!-- Linked in card start -->
                                    <div class="col-md-6 col-xl-3">
                                        <div class="card social-widget-card">
                                            <div class="card-body-big bg-linkedin">
                                                <h3 class="text-white m-0" id="paidclaim"></h3>
                                                <span class="m-t-10">Claim Paid</span> 
                                            </div>
                                        </div>
                                    </div>
                                    <!-- Linked in card end -->
                                    <!-- Google-plus card start -->
                                    <div class="col-md-6 col-xl-3">
                                        <div class="card social-widget-card">
                                            <div class="card-body-big bg-googleplus">
                                                <h3 class="text-white m-0" id="superbill"></h3>
                                                <span class="m-t-10">Super Bill</span> 
                                            </div>
                                        </div>
                                    </div>
                                    <!-- Daily total amount of Paid ERAs -->
                                    <!-- storage-activity start -->
                                    <div class="col-xl-6 col-md-12" id = "1">
                                        <div class="card" id="dailytotal">
                                            <div class="card-body pb-0">
                                                <!--Place--> 

                                                <div class="row">
                                                    <div class="col-auto p-r-0 p-l-5">
                                                        <h6 id="ebhead"></h6>
                                                    </div>
                                                    <div class="col">
                                                        <div class="form-group">
                                                            <div class='pull-right' id='eb-daterangepicker' style="width:45px; float:right">
                                                                <a class="dropdown-toggle text-c-blue" href="javascript:void(0);" >Period</a>
                                                                <!--                                                                <input type='text' readonly="" class="form-control" placeholder="Select date range" />-->
                                                                <!--                                                                <span class="input-group-text"><i class="feather icon-calendar"></i></span>-->
                                                            </div>
                                                        </div>
                                                        <!--                                                        <div class="dropdown float-right">
                                                                                                                    <a class="dropdown-toggle text-c-blue" href="javascript:void(0);" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Period</a>
                                                                                                                    <div class="dropdown-menu dropdown-menu-right">
                                                                                                                        <a class="dropdown-item" id="ebmon" href="javascript:void(0);">This Month</a>
                                                                                                                        <a class="dropdown-item" id="ebpremon" href="javascript:void(0);">Previous Month</a>
                                                                                                                        <a class="dropdown-item" id="eb30"  href="javascript:void(0);">30 Days</a>
                                                                                                                        <a class="dropdown-item" id="eb60"  href="javascript:void(0);">60 Days</a>
                                                                                                                        <a class="dropdown-item" id="eb90"  href="javascript:void(0);">90 Days</a>
                                                                                                                    </div>
                                                                                                                </div>-->
                                                    </div>
                                                </div>

                                                <!--    <div class="row justify-content-around">
                                                            <div class="col-4 col-30px">
                                                                <div class="form-group">
                                                                   
                                                                    <div class="input-daterange input-group" id="datepicker_range" style="width: 226px;height: 33px;">
                                                                        <input type="text" class="form-control text-center" placeholder="Start date" name="start" id="d_today" style="padding-top: 6px !important;padding-right: 16px;padding-bottom: 6px !important;padding-left: 16px; height: 33px;border-radius: 0.375rem">
                                                                        <input type="text" class="form-control text-center" placeholder="End date" name="end" id="d_disable" style="padding-top: 6px !important;padding-right: 16px;padding-bottom: 6px !important;padding-left: 16px; height: 33px;border-radius: 0.375rem">
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="form-group" style="margin-top: -3px;">
                                                               
                                                                <div class="form-inline">
                                                                    <select class="form-control" id="monthid" style="width:auto;" name="monthid">
                                                                        <option selected hidden>-Month-</option> 
                                                                        <option value="00"></option> 
                                                                        <option value="01">Jan</option> 
                                                                        <option value="02">Feb</option> 
                                                                        <option value="03">Mar</option> 
                                                                        <option value="04">Apr</option> 
                                                                        <option value="05">May</option> 
                                                                        <option value="06">Jun</option> 
                                                                        <option value="07">Jul</option> 
                                                                        <option value="08">Aug</option> 
                                                                        <option value="09">Sep</option> 
                                                                        <option value="10">Oct</option> 
                                                                        <option value="11">Nov</option> 
                                                                        <option value="12">Dec</option> 
                                                                    </select>
                                                                    <div class="input-group m-1">
                                                                        <select class="form-control" id="yearid" style="width:auto;" name="yearid"></select>  
                                                                    </div>  
                                                                    
                                                                </div>
                                                            </div>
                                                        </div>  -->

                                                <div class="row mt-2">

                                                    <div class="col-auto p-r-0 p-l-5">
                                                        <span class="d-block"><i class="fas fa-circle text-c-blue f-10 m-r-10"></i>Count</span>
                                                        <h6 class="ml-3 mt-1" id="eobcount"></h6>
                                                    </div>
                                                    <div class="col">
                                                        <span class="d-block"><i class="fas fa-circle text-c-purple f-10 m-r-10"></i>Amount</span>
                                                        <h6 class="ml-3 mt-1" id="eobamount"></h6>
                                                    </div>

                                                </div>




                                            </div>
                                            <div id="storage-chart1" style="height:250px;"></div>
                                        </div>
                                    </div>
                                    <!-- storage-activity end -->
                                    <!-- account-section start -->

                                    <div class="col-xl-6 col-md-12" id="4">
                                        <div class="card" id="total-amount-paid-claims">
                                            <div class="card-body pb-0">
                                                <div class="row">
                                                    <div class="col-auto p-r-0 p-l-5">
                                                        <h6 id="clhead"></h6>
                                                    </div>
                                                    <div class="col">
                                                        <div class="form-group">
                                                            <div class='pull-right' id='cl-daterangepicker' style="width:45px; float:right">
                                                                <a class="dropdown-toggle text-c-blue" href="javascript:void(0);" >Period</a>
                                                                <!--                                                                <input type='text' readonly="" class="form-control" placeholder="Select date range" />-->
                                                                <!--                                                                <span class="input-group-text"><i class="feather icon-calendar"></i></span>-->
                                                            </div>
                                                        </div>
                                                        <!--                                                        <div class="dropdown float-right">
                                                                                                                    <a class="dropdown-toggle text-c-blue" href="javascript:void(0);" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Period</a>
                                                                                                                    <div class="dropdown-menu dropdown-menu-right">
                                                                                                                        <a class="dropdown-item" id="clmon" href="javascript:void(0);">This Month</a>
                                                                                                                        <a class="dropdown-item" id="clpremon" href="javascript:void(0);">Previous Month</a>
                                                                                                                        <a class="dropdown-item" id="cl30" href="javascript:void(0);">30 Days</a>
                                                                                                                        <a class="dropdown-item" id="cl60" href="javascript:void(0);">60 Days</a>
                                                                                                                        <a class="dropdown-item" id="cl90" href="javascript:void(0);">90 Days</a>
                                                                                                                    </div>
                                                                                                                </div>-->
                                                    </div>
                                                </div>
                                                <div class="row mt-2">
                                                    <div class="col-auto">
                                                        <span class="d-block"><i class="fas fa-circle text-c-blue f-10 m-r-10"></i>Count</span>
                                                        <h6 class="ml-3 mt-1" id="clcount"></h6>
                                                    </div>
                                                    <div class="col">
                                                        <span class="d-block"><i class="fas fa-circle text-c-purple f-10 m-r-10"></i>Amount</span>
                                                        <h6 class="ml-3 mt-1" id="clamount"></h6>
                                                    </div>
                                                </div>
                                            </div>
                                            <div id="storage-chart2" style="height:250px;"></div>
                                        </div>
                                    </div>


                                    <div class="col-xl-6 col-md-12" id="2">
                                        <div class="card" id="total-amount-of-recoupment">
                                            <div class="card-body pb-0">
                                                <div class="row">
                                                    <div class="col-auto p-r-0 p-l-5">
                                                        <h6 id="adhead"></h6>
                                                    </div>
                                                    <div class="col">
                                                        <div class="form-group">
                                                            <div class='pull-right' id='ad-daterangepicker' style="width:45px; float:right">
                                                                <a class="dropdown-toggle text-c-blue" href="javascript:void(0);" >Period</a>
                                                                <!--                                                                <input type='text' readonly="" class="form-control" placeholder="Select date range" />-->
                                                                <!--                                                                <span class="input-group-text"><i class="feather icon-calendar"></i></span>-->
                                                            </div>
                                                        </div>
                                                        <!--                                                        <div class="dropdown float-right">
                                                                                                                    <a class="dropdown-toggle text-c-blue" href="#total-amount-of-recoupment" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Period</a>
                                                                                                                    <div class="dropdown-menu dropdown-menu-right">
                                                                                                                        <a class="dropdown-item" id="admon" href="#total-amount-of-recoupment">This Month</a>
                                                                                                                        <a class="dropdown-item" id="adpremon" href="#total-amount-of-recoupment">Previous Month</a>
                                                                                                                        <a class="dropdown-item" id="ad30" href="#total-amount-of-recoupment">30 Days</a>
                                                                                                                        <a class="dropdown-item" id="ad60" href="#total-amount-of-recoupment">60 Days</a>
                                                                                                                        <a class="dropdown-item" id="ad90" href="#total-amount-of-recoupment">90 Days</a>
                                                                                                                    </div>
                                                                                                                </div>-->
                                                    </div>
                                                </div>
                                                <div class="row mt-2">
                                                    <div class="col-auto">
                                                        <span class="d-block"><i class="fas fa-circle text-c-blue f-10 m-r-10"></i>Count</span>
                                                        <h6 class="ml-3 mt-1" id="adcount"></h6>
                                                    </div>
                                                    <div class="col">
                                                        <span class="d-block"><i class="fas fa-circle text-c-purple f-10 m-r-10"></i>Amount</span>
                                                        <h6 class="ml-3 mt-1" id="adamount"></h6>
                                                    </div>
                                                </div>
                                            </div>
                                            <div id="storage-chart5" style="height:250px;"></div>
                                        </div>
                                    </div>


                                    <!-- Payor contribution (Paid ERAs)  -->
                                    <!-- storage-activity start -->
                                    <div class="col-xl-6 col-md-12" id="9">
                                        <div class="card" id="payor-contribution">
                                            <div class="card-body pb-0">
                                                <div class="row">
                                                    <div class="col-auto p-r-0 p-l-5">
                                                        <h6 id="payerhead"> </h6>
                                                    </div>
                                                    <div class="col">
                                                        <div class="form-group">
                                                            <div class='pull-right' id='payer-daterangepicker' style="width:45px; float:right">
                                                                <a class="dropdown-toggle text-c-blue" href="javascript:void(0);" >Period</a>
                                                                <!--                                                                <input type='text' readonly="" class="form-control" placeholder="Select date range" />-->
                                                                <!--                                                                <span class="input-group-text"><i class="feather icon-calendar"></i></span>-->
                                                            </div>
                                                        </div>
                                                        <!--                                                        <div class="dropdown float-right">
                                                                                                                    <a class="dropdown-toggle text-c-blue" href="#payor-contribution" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Period</a>
                                                                                                                    <div class="dropdown-menu dropdown-menu-right">
                                                                                                                        <a class="dropdown-item" id="payermon" href="#payor-contribution">This Month</a>
                                                                                                                        <a class="dropdown-item" id="payerpremon" href="#payor-contribution">Previous Month</a>
                                                                                                                        <a class="dropdown-item" id="payer30" href="#payor-contribution">30 Days</a>
                                                                                                                        <a class="dropdown-item" id="payer60" href="#payor-contribution">60 Days</a>
                                                                                                                        <a class="dropdown-item" id="payer90" href="#payor-contribution">90 Days</a>
                                                                                                                    </div>
                                                                                                                </div>-->
                                                    </div>
                                                </div>
                                                <div class="row mt-2">

                                                    <div class="col">
                                                        <span class="d-block"><i class="fas fa-circle text-c-purple f-10 m-r-10"></i>Amount</span>
                                                        <h6 class="ml-3 mt-1" id="payeramount"></h6>
                                                    </div>
                                                </div>
                                            </div>
                                            <div id="piechart3" style="height:250px;"></div>
                                        </div>
                                    </div>


                                    <div class="col-xl-6 col-md-12" id ="14">
                                        <div class="card" id="No-of-Ess">
                                            <div class="card-body pb-0">
                                                <div class="row">
                                                    <div class="col-auto p-r-0">
                                                        <h6 id="eshead"></h6>
                                                    </div>
                                                    <div class="col">
                                                        <div class="form-group">
                                                            <div class='pull-right' id='es-daterangepicker' style="width:45px; float:right">
                                                                <a class="dropdown-toggle text-c-blue" href="javascript:void(0);" >Period</a>
                                                                <!--                                                                <input type='text' readonly="" class="form-control" placeholder="Select date range" />-->
                                                                <!--                                                                <span class="input-group-text"><i class="feather icon-calendar"></i></span>-->
                                                            </div>
                                                        </div>
                                                        <!--                                                        <div class="dropdown float-right">
                                                                                                                    <a class="dropdown-toggle text-c-blue" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Period</a>
                                                                                                                    <div class="dropdown-menu dropdown-menu-right">
                                                                                                                        <a class="dropdown-item" id="esmon" href="#No-of-ESuberBill">This Month</a>
                                                                                                                        <a class="dropdown-item" id="espremon" href="#No-of-ESuberBill">Previous Month</a>
                                                                                                                        <a class="dropdown-item" id="es30" href="#No-of-ESuberBill">30 Days</a>
                                                                                                                        <a class="dropdown-item" id="es60" href="#No-of-ESuberBill">60 Days</a>
                                                                                                                        <a class="dropdown-item" id="es90" href="#No-of-ESuberBill">90 Days</a>
                                                                                                                    </div>
                                                                                                                </div>-->
                                                    </div>
                                                </div>
                                                <div class="row mt-2">
                                                    <div class="col-auto">
                                                        <span class="d-block"><i class="fas fa-circle text-c-blue f-10 m-r-10"></i>Count</span>
                                                        <h6 class="ml-3 mt-1" id="escount"></h6>
                                                    </div>

                                                </div>
                                            </div>
                                            <div id="storage-chart8" style="height:250px;"></div>
                                        </div>
                                    </div>


                                    <div class="col-xl-6 col-md-12" id="3">
                                        <div class="card" id="claims">
                                            <div class="card-body pb-0">
                                                <div class="row">
                                                    <div class="col-auto p-r-0 p-l-5">
                                                        <h6 id="claimprocesshead"> </h6>
                                                    </div>
                                                    <div class="col">
                                                        <div class="form-group">
                                                            <div class='pull-right' id='claimprocess-daterangepicker' style="width:45px; float:right">
                                                                <a class="dropdown-toggle text-c-blue" href="javascript:void(0);" >Period</a>
                                                                <!--                                                                <input type='text' readonly="" class="form-control" placeholder="Select date range" />-->
                                                                <!--                                                                <span class="input-group-text"><i class="feather icon-calendar"></i></span>-->
                                                            </div>
                                                        </div>
                                                        <!--                                                        <div class="dropdown float-right">
                                                                                                                    <a class="dropdown-toggle text-c-blue" href="#claims" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Period</a>
                                                                                                                    <div class="dropdown-menu dropdown-menu-right">
                                                                                                                        <a class="dropdown-item" id="claimprocessmon" href="#claims">This Month</a>
                                                                                                                        <a class="dropdown-item" id="claimprocesspremon" href="#claims">Previous Month</a>
                                                                                                                        <a class="dropdown-item" id="claimprocess30" href="#claims">30 Days</a>
                                                                                                                        <a class="dropdown-item" id="claimprocess60" href="#claims">60 Days</a>
                                                                                                                        <a class="dropdown-item" id="claimprocess90" href="#claims">90 Days</a>
                                                                                                                    </div>
                                                                                                                </div>-->
                                                    </div>
                                                </div>
                                                <div class="row mt-2">
                                                    <div class="col-auto">
                                                        <span class="d-block"><i class="fas fa-circle text-c-blue f-10 m-r-10"></i>Count</span>
                                                        <h6 class="ml-3 mt-1" id="claimprocesscount"></h6>
                                                    </div>
                                                    <div class="col">
                                                        <span class="d-block"><i class="fas fa-circle text-c-purple f-10 m-r-10"></i>Amount</span>
                                                        <h6 class="ml-3 mt-1" id="claimprocessamount"></h6>
                                                    </div>
                                                </div>

                                            </div>
                                            <div id="storage-chart7" style="height:250px;"></div>
                                        </div>
                                    </div>


                                    <!-- storage-activity end -->
                                    <!-- Charge Value of denied Claims -->
                                    <div class="col-xl-6 col-md-12" id="5">
                                        <div class="card" id="fully-denied-claims">
                                            <div class="card-body pb-0">
                                                <div class="row">
                                                    <div class="col-auto p-r-0 p-l-5">
                                                        <h6 id="chargehead"> </h6>
                                                    </div>
                                                    <div class="col">
                                                        <div class="form-group">
                                                            <div class='pull-right' id='charge-daterangepicker' style="width:45px; float:right">
                                                                <a class="dropdown-toggle text-c-blue" href="javascript:void(0);" >Period</a>
                                                                <!--                                                                <input type='text' readonly="" class="form-control" placeholder="Select date range" />-->
                                                                <!--                                                                <span class="input-group-text"><i class="feather icon-calendar"></i></span>-->
                                                            </div>
                                                        </div>
                                                        <!--                                                        <div class="dropdown float-right">
                                                                                                                    <a class="dropdown-toggle text-c-blue"  href="javascript:void(0);" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Period</a>
                                                                                                                    <div class="dropdown-menu dropdown-menu-right">
                                                                                                                        <a class="dropdown-item" id="chargemon"  href="javascript:void(0);">This Month</a>
                                                                                                                        <a class="dropdown-item" id="chargepremon"  href="javascript:void(0);">Previous Month</a>
                                                                                                                        <a class="dropdown-item" id="charge30"  href="javascript:void(0);">30 Days</a>
                                                                                                                        <a class="dropdown-item" id="charge60"  href="javascript:void(0);">60 Days</a>
                                                                                                                        <a class="dropdown-item" id="charge90"  href="javascript:void(0);">90 Days</a>
                                                                                                                    </div>
                                                                                                                </div>-->
                                                    </div>
                                                </div>


                                                <div class="row mt-2">
                                                    <div class="col-auto">
                                                        <span class="d-block"><i class="fas fa-circle text-c-blue f-10 m-r-10"></i>Count</span>
                                                        <h6 class="ml-3 mt-1" id="chargecount"></h6>
                                                    </div>
                                                    <div class="col">
                                                        <span class="d-block"><i class="fas fa-circle text-c-purple f-10 m-r-10"></i>Amount</span>
                                                        <h6 class="ml-3 mt-1" id="chargeamount"></h6>
                                                    </div>
                                                </div>


                                            </div>
                                            <div id="storage-chart3" style="height:250px;"></div>
                                        </div>
                                    </div>


                                    <!-- Charge Value of partly paid Claims -->
                                    <div class="col-xl-6 col-md-12" id="6">
                                        <div class="card" id="partly-denied-claims">
                                            <div class="card-body pb-0">
                                                <div class="row">
                                                    <div class="col-auto p-r-0 p-l-5">
                                                        <h6 id="partychargehead"> </h6>
                                                    </div>
                                                    <div class="col">
                                                        <div class="form-group">
                                                            <div class='pull-right' id='partycharge-daterangepicker' style="width:45px; float:right">
                                                                <a class="dropdown-toggle text-c-blue" href="javascript:void(0);" >Period</a>
                                                                <!--                                                                <input type='text' readonly="" class="form-control" placeholder="Select date range" />-->
                                                                <!--                                                                <span class="input-group-text"><i class="feather icon-calendar"></i></span>-->
                                                            </div>
                                                        </div>
                                                        <!--                                                        <div class="dropdown float-right">
                                                                                                                    <a class="dropdown-toggle text-c-blue" href="javascript:void(0);"data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Period</a>
                                                                                                                    <div class="dropdown-menu dropdown-menu-right">
                                                                                                                        <a class="dropdown-item" id="partychargemon"  href="javascript:void(0);">This Month</a>
                                                                                                                        <a class="dropdown-item" id="partychargepremon"  href="javascript:void(0);">Previous Month</a>
                                                                                                                        <a class="dropdown-item" id="partycharge30" href="javascript:void(0);">30 Days</a>
                                                                                                                        <a class="dropdown-item" id="partycharge60"  href="javascript:void(0);">60 Days</a>
                                                                                                                        <a class="dropdown-item" id="partycharge90"  href="javascript:void(0);">90 Days</a>
                                                                                                                    </div>
                                                                                                                </div>-->
                                                    </div>
                                                </div>
                                                <div class="row mt-2">
                                                    <div class="col-auto">
                                                        <span class="d-block"><i class="fas fa-circle text-c-blue f-10 m-r-10"></i>Count</span>
                                                        <h6 class="ml-3 mt-1" id="partychargecount"></h6>
                                                    </div>
                                                    <div class="col">
                                                        <span class="d-block"><i class="fas fa-circle text-c-purple f-10 m-r-10"></i>Amount</span>
                                                        <h6 class="ml-3 mt-1" id="partychargeamount"></h6>
                                                    </div>
                                                </div>

                                            </div>
                                            <div id="storage-chart6" style="height:250px;"></div>
                                        </div>
                                    </div>

                                    <!-- Charge Value of Claims Processed -->

                                    <!-- No.of EVs -->
                                    <div class="col-xl-6 col-md-12" id ="10">
                                        <div class="card" id="No-of-EVs">
                                            <div class="card-body pb-0">
                                                <div class="row">
                                                    <div class="col-auto p-r-0 p-l-5">
                                                        <h6 id="evhead"></h6>
                                                    </div>
                                                    <div class="col">
                                                        <div class="form-group">
                                                            <div class='pull-right' id='ev-daterangepicker' style="width:45px; float:right">
                                                                <a class="dropdown-toggle text-c-blue" href="javascript:void(0);" >Period</a>
                                                                <!--                                                                <input type='text' readonly="" class="form-control" placeholder="Select date range" />-->
                                                                <!--                                                                <span class="input-group-text"><i class="feather icon-calendar"></i></span>-->
                                                            </div>
                                                        </div>
                                                        <!--                                                        <div class="dropdown float-right">
                                                                                                                    <a class="dropdown-toggle text-c-blue" href="javascript:void(0);" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Period</a>
                                                                                                                    <div class="dropdown-menu dropdown-menu-right">
                                                                                                                        <a class="dropdown-item" id="evmon" href="javascript:void(0);">This Month</a>
                                                                                                                        <a class="dropdown-item" id="evpremon" href="javascript:void(0);">Previous Month</a>
                                                                                                                        <a class="dropdown-item" id="ev30" href="javascript:void(0);">30 Days</a>
                                                                                                                        <a class="dropdown-item" id="ev60" href="javascript:void(0);">60 Days</a>
                                                                                                                        <a class="dropdown-item" id="ev90" href="javascript:void(0);">90 Days</a>
                                                                                                                    </div>
                                                                                                                </div>-->
                                                    </div>
                                                </div>
                                                <div class="row mt-2">
                                                    <div class="col-auto">
                                                        <span class="d-block"><i class="fas fa-circle text-c-blue f-10 m-r-10"></i>Count</span>
                                                        <h6 class="ml-3 mt-1" id="evcount"></h6>
                                                    </div>

                                                </div>
                                            </div>
                                            <div id="storage-chart" style="height:250px;"></div>
                                        </div>
                                    </div>

                                    <div class="col-xl-6 col-md-12" id = "13">
                                        <div class="card" id="EV-utilization-status">
                                            <div class="card-body pb-0">
                                                <div class="row">
                                                    <div class="col-auto p-r-0 p-l-5">
                                                        <h6 id="evstatushead"> </h6>
                                                    </div>
                                                    <div class="col">
                                                        <div class="form-group">
                                                            <div class='pull-right' id='evstatus-daterangepicker' style="width:45px; float:right">
                                                                <a class="dropdown-toggle text-c-blue" href="javascript:void(0);" >Period</a>
                                                                <!--                                                                <input type='text' readonly="" class="form-control" placeholder="Select date range" />-->
                                                                <!--                                                                <span class="input-group-text"><i class="feather icon-calendar"></i></span>-->
                                                            </div>
                                                        </div>
                                                        <!--                                                        <div class="dropdown float-right">
                                                                                                                    <a class="dropdown-toggle text-c-blue"  href="javascript:void(0);" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Period</a>
                                                                                                                    <div class="dropdown-menu dropdown-menu-right">
                                                                                                                        <a class="dropdown-item" id="evstatusmon"  href="javascript:void(0);">This Month</a>
                                                                                                                        <a class="dropdown-item" id="evstatuspremon"  href="javascript:void(0);">Previous Month</a>
                                                                                                                        <a class="dropdown-item" id="evstatus30"  href="javascript:void(0);">30 Days</a>
                                                                                                                        <a class="dropdown-item" id="evstatus60"  href="javascript:void(0);">60 Days</a>
                                                                                                                        <a class="dropdown-item" id="evstatus90"  href="javascript:void(0);">90 Days</a>
                                                                                                                    </div>
                                                                                                                </div>-->
                                                    </div>
                                                </div>
                                                <div class="row mt-2">

                                                    <div class="col">
                                                        <span class="d-block"><i class="fas fa-circle text-c-purple f-10 m-r-10"></i>Count</span>
                                                        <h6 class="ml-3 mt-1" id="evstatusamount"></h6>
                                                    </div>
                                                </div>
                                            </div>
                                            <div id="piechart4" style="height:250px;"></div>
                                        </div>
                                    </div>


                                    <!-- Practice contribution (Paid ERAs)  -->
                                    <!-- storage-activity start -->
                                    <div class="col-xl-6 col-md-12" id="8">
                                        <div class="card" id="practice-contribution">
                                            <div class="card-body pb-0">
                                                <div class="row">
                                                    <div class="col-auto p-r-0 p-l-5">
                                                        <h6 id="practicehead"> </h6>
                                                    </div>
                                                    <div class="col">
                                                        <div class="form-group">
                                                            <div class='pull-right' id='payee-daterangepicker' style="width:45px; float:right">
                                                                <a class="dropdown-toggle text-c-blue" href="javascript:void(0);" >Period</a>
                                                                <!--                                                                <input type='text' readonly="" class="form-control" placeholder="Select date range" />-->
                                                                <!--                                                                <span class="input-group-text"><i class="feather icon-calendar"></i></span>-->
                                                            </div>
                                                        </div>
                                                        <!--                                                        <div class="dropdown float-right">
                                                                                                                    <a class="dropdown-toggle text-c-blue"  href="javascript:void(0);" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Period</a>
                                                                                                                    <div class="dropdown-menu dropdown-menu-right">
                                                                                                                        <a class="dropdown-item" id="payeemon"  href="javascript:void(0);">This Month</a>
                                                                                                                        <a class="dropdown-item" id="payeepremon"  href="javascript:void(0);">Previous Month</a>
                                                                                                                        <a class="dropdown-item" id="payee30"  href="javascript:void(0);">30 Days</a>
                                                                                                                        <a class="dropdown-item" id="payee60"  href="javascript:void(0);">60 Days</a>
                                                                                                                        <a class="dropdown-item" id="payee90"  href="javascript:void(0);">90 Days</a>
                                                                                                                    </div>
                                                                                                                </div>-->
                                                    </div>
                                                </div>
                                                <div class="row mt-2">

                                                    <div class="col">
                                                        <span class="d-block"><i class="fas fa-circle text-c-purple f-10 m-r-10"></i>Amount</span>
                                                        <h6 class="ml-3 mt-1" id="payeeamount"></h6>
                                                    </div>
                                                </div>
                                            </div>
                                            <div id="piechart1" style="height:250px;"></div>
                                        </div>
                                    </div>
                                    <!-- storage-activity end -->
                                    <!-- account-section start -->

                                    <!-- Daily total amount of Adjustment -->
                                    <!-- account-section start -->



                                    <!-- session-device end -->
                                    <!-- storage-activity start -->




                                    <div class="col-xl-6 col-md-12" id="12">
                                        <div class="card" id="EV-utilization">
                                            <div class="card-body pb-0">
                                                <div class="row">
                                                    <div class="col-auto p-r-0 p-l-5">
                                                        <h6 id="evutilhead"> </h6>
                                                    </div>
                                                    <div class="col">
                                                        <div class="form-group">
                                                            <div class='pull-right' id='evutil-daterangepicker' style="width:45px; float:right">
                                                                <a class="dropdown-toggle text-c-blue" href="javascript:void(0);" >Period</a>
                                                                <!--                                                                <input type='text' readonly="" class="form-control" placeholder="Select date range" />-->
                                                                <!--                                                                <span class="input-group-text"><i class="feather icon-calendar"></i></span>-->
                                                            </div>
                                                        </div>
                                                        <!--                                                        <div class="dropdown float-right">
                                                                                                                    <a class="dropdown-toggle text-c-blue"  href="javascript:void(0);" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Period</a>
                                                                                                                    <div class="dropdown-menu dropdown-menu-right">
                                                                                                                        <a class="dropdown-item" id="evutilmon"  href="javascript:void(0);">This Month</a>
                                                                                                                        <a class="dropdown-item" id="evutilpremon"  href="javascript:void(0);">Previous Month</a>
                                                                                                                        <a class="dropdown-item" id="evutil30"  href="javascript:void(0);">30 Days</a>
                                                                                                                        <a class="dropdown-item" id="evutil60"  href="javascript:void(0);">60 Days</a>
                                                                                                                        <a class="dropdown-item" id="evutil90"  href="javascript:void(0);">90 Days</a>
                                                                                                                    </div>
                                                                                                                </div>-->
                                                    </div>
                                                </div>
                                                <div class="row mt-2">

                                                    <div class="col">
                                                        <span class="d-block"><i class="fas fa-circle text-c-purple f-10 m-r-10"></i>Count</span>
                                                        <h6 class="ml-3 mt-1" id="evamount"></h6>
                                                    </div>
                                                </div>
                                            </div>
                                            <div id="piechart2" style="height:250px;"></div>
                                        </div>
                                    </div>




                                    <!-- session-device end -->
                                    <!-- storage-activity start -->


                                    <!-- No.of Esuperbill -->






                                    <!--   <div class="col-xl-6 col-md-12">
                                           <div class="card">
                                               <div class="card-body pb-0">
                                                   <div class="row">
                                                       <div class="col-auto">
                                                           <h6 id="hoteshead"> </h6>
                                                       </div>
                                                       <div class="col">
                                                           <div class="dropdown float-right">
                                                               <a class="dropdown-toggle text-c-blue" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Period</a>
                                                               <div class="dropdown-menu dropdown-menu-right">
                                                                   <a class="dropdown-item" id="notesmon" href="#">This Month</a>
                                                                   <a class="dropdown-item" id="notespremon" href="#">Previous Month</a>
                                                                   <a class="dropdown-item" id="notes30" href="#">30 Days</a>
                                                                   <a class="dropdown-item" id="notes60" href="#">60 Days</a>
                                                                   <a class="dropdown-item" id="notes90" href="#">90 Days</a>
                                                               </div>
                                                           </div>
                                                       </div>
                                                   </div>
                                                   <div class="col">
                                                       <span class="d-block"><i class="fas fa-circle text-c-purple f-10 m-r-10"></i>Count</span>
                                                       <h6 class="ml-3 mt-1" id="notesamount"></h6>
                                                   </div>
                                               </div>
                                               <div id="storage-chart4" style="height:250px;"></div>
                                           </div>
                                       </div> -->



                                </div>
                            </div>
                            <!-- [ Main Content ] end -->
                        </div>
                    </div>
                </div>
            </div>

            <div id="flading" class="loader">

            </div>

        </section>

    <jsp:include page="includes/footer.jsp"></jsp:include>

    <script type = "text/javascript">
        google.charts.load('current', {packages: ['corechart']});
    </script>

    <!-- peity chart js -->
    <script src="assets/plugins/chart-peity/js/jquery.peity.min.js"></script>


    <script type="text/javascript">
        $(document).ready(function () {
            function drawpie(id, response, h1, h2, type) {
                var strbuilder = "[[\"" + h1 + "\", \"" + h2 + "\"],";
                var substringbuilder = '';
                if (type === "Practice")
                {
                    for (var i = 0; i < response.length; i++)
                    {
                        substringbuilder = substringbuilder + "[\"" + response[i].payee + "\"," + response[i].value + "],";
                    }
                } else if (type === "EV")
                {
                    for (var i = 0; i < response.length; i++)
                    {
                        substringbuilder = substringbuilder + "[\"" + response[i].practice_name + "\"," + response[i].value + "],";
                    }
                } else if (type === "Payer")
                {
                    for (var i = 0; i < response.length; i++)
                    {
                        substringbuilder = substringbuilder + "[\"" + response[i].payor + "\"," + response[i].value + "],";
                    }
                } else if (type === "EV_Status")
                {
                    for (var i = 0; i < response.length; i++)
                    {
                        substringbuilder = substringbuilder + "[\"" + response[i].edi_status + "\"," + response[i].value + "],";
                    }
                }

                substringbuilder = substringbuilder.substring(0, substringbuilder.length - 1);
                strbuilder = strbuilder + substringbuilder + "]";
                var obj = $.parseJSON(strbuilder);
                function drawChart() {


                    var data = google.visualization.arrayToDataTable(obj);
                    if (type === "EV")
                    {
                        var options = {
                            title: '',
                            pieHole: 0.4,
                        };
                    } else if (type === "EV_Status")
                    {
                        var options = {
                            title: '',
                            pieHole: 0.4,
                        };
                    } else
                    {
                        var options = {
                            title: '',
                            is3D: true,
                        };
                    }

                    var chart = new google.visualization.PieChart(document.getElementById(id));
                    chart.draw(data, options);
                }
                google.charts.setOnLoadCallback(drawChart);
                $('#flading').hide();
            }


            function drawbar(id, response, h1, h2, h3, segment)
            {
                if (segment === 2)
                {
                    var strbuilder = "[[\"" + h1 + "\", \"" + h2 + "\"],";
                    var substringbuilder = '';
                    for (var i = 0; i < response.length; i++)
                    {
                        substringbuilder = substringbuilder + "[\"" + response[i].date + "\"," + response[i].value + "],";
                    }
                    substringbuilder = substringbuilder.substring(0, substringbuilder.length - 1);
                    strbuilder = strbuilder + substringbuilder + "]";
                    var obj = $.parseJSON(strbuilder);
                    //  console.log(obj);

                    function drawChart() {
                        var data = google.visualization.arrayToDataTable(obj);
                        var options = {title: '', isStacked: true};
                        // Instantiate and draw the chart.
                        var chart = new google.visualization.ColumnChart(document.getElementById(id));
                        chart.draw(data, options);
                    }
                    google.charts.setOnLoadCallback(drawChart);
                    $('#flading').hide();
                } else if (segment === 3)
                {
                    var strbuilder = "[[\"" + h1 + "\", \"" + h2 + "\", \"" + h3 + "\"],";
                    var substringbuilder = '';
                    for (var i = 0; i < response.length; i++)
                    {
                        substringbuilder = substringbuilder + "[\"" + response[i].date + "\"," + response[i].value1 + "," + response[i].value + "],";
                    }
                    substringbuilder = substringbuilder.substring(0, substringbuilder.length - 1);
                    strbuilder = strbuilder + substringbuilder + "]";
                    var obj = $.parseJSON(strbuilder);
                    // console.log(obj);

                    function drawChart() {
                        var data = google.visualization.arrayToDataTable(obj);
                        // var options = {title: '', isStacked: true};
                        // Instantiate and draw the chart.
                        var classicOptions = {

                            series: {
                                0: {targetAxisIndex: 0},
                                1: {targetAxisIndex: 1}
                            },
                            title: '',
                            vAxes: {
                                // Adds titles to each axis.
                                0: {title: 'amount'},
                                1: {title: 'count'}
                            }
                        };
                        //  var chart = new google.visualization.ColumnChart(document.getElementById(id));
                        //  chart.draw(data, options);
                        var chart = new google.visualization.ColumnChart(document.getElementById(id));
                        chart.draw(data, classicOptions);
                    }
                    google.charts.setOnLoadCallback(drawChart);
                    $('#flading').hide();
                }



            }

            //  drawpie("id", "data");
            //  $('#flading').show();
            function evchart(response)
            {

                var txt = response;
                var obj = jQuery.parseJSON(txt);
                // alert(obj);
                console.log(obj.length);
                var evcount = 0;
                if (obj.length > 0)
                {
                    for (var i = 0; i < obj.length; i++)
                    {
                        evcount = evcount + parseFloat(obj[i].value);
                    }
                    drawbar("storage-chart", obj, "date", "Count", "Amount", 2);
                }
                $('#evcount').html(evcount.toFixed(0));
                // console.log(myJsonString);
                // storage_chart("storage-chart", myJsonString);

            }

            function eschart(response)
            {
                var txt = response;
                var obj = jQuery.parseJSON(txt);
                console.log(obj.length);
                var escount = 0;
                if (obj.length > 0)
                {
                    for (var i = 0; i < obj.length; i++)
                    {
                        escount = escount + parseFloat(obj[i].value);
                    }
                    drawbar("storage-chart8", obj, "date", "Count", "Amount", 2);
                }
                $('#escount').html(escount.toFixed(0));
            }


            function denialchart(response)
            {
                var txt = response;
                var obj = jQuery.parseJSON(txt);
                console.log(obj.length);
                var chargeamount = 0;
                var chargecount = 0;
                if (obj.length > 0)
                {
                    for (var i = 0; i < obj.length; i++)
                    {
                        chargeamount = chargeamount + parseFloat(obj[i].value1);
                        chargecount = chargecount + parseFloat(obj[i].value);
                    }
                    drawbar("storage-chart3", obj, "date", "Amount", "Count", 3);
                }
                $('#chargeamount').html('$ ' + chargeamount.toFixed(0));
                $('#chargecount').html(chargecount.toFixed(0));
                // console.log(myJsonString);
                // storage_chart("storage-chart", myJsonString);

            }


            function partydenialchart(response)
            {
                var txt = response;
                var obj = jQuery.parseJSON(txt);
                console.log(obj.length);
                var chargeamount = 0;
                var chargecount = 0;
                if (obj.length > 0)
                {
                    for (var i = 0; i < obj.length; i++)
                    {
                        chargeamount = chargeamount + parseFloat(obj[i].value1);
                        chargecount = chargecount + parseFloat(obj[i].value);
                    }
                    drawbar("storage-chart6", obj, "date", "Amount", "Count", 3);
                }
                $('#partychargeamount').html('$ ' + chargeamount.toFixed(0));
                $('#partychargecount').html(chargecount.toFixed(0));
                // console.log(myJsonString);
                // storage_chart("storage-chart", myJsonString);

            }


            function noteschart(response)
            {
                var myJsonString = JSON.stringify(response.Response);
                var notesamount = 0;
                for (var i = 0; i < response.Response.length; i++)
                {
                    notesamount = notesamount + parseFloat(response.Response[i].value);
                }
                $('#notesamount').html(notesamount.toFixed(0));
                //console.log(myJsonString);
                // storage_chart("storage-chart", myJsonString);
                drawbar("storage-chart4", response, "date", "Count", "Amount", 2);
            }

            function eobchart(response)
            {
                var txt = response;
                var obj = jQuery.parseJSON(txt);
                console.log(obj.length);
                //console.log(myJsonString);
                var eobcount = 0;
                var eobamount = 0;
                if (obj.length > 0)
                {
                    for (var i = 0; i < obj.length; i++)
                    {
                        eobcount = eobcount + parseFloat(obj[i].value);
                        //eobcount = eobcount + parseFloat(1);
                        eobamount = eobamount + parseFloat(obj[i].value1);
                    }
                    drawbar("storage-chart1", obj, "date", "Amount", "Count", 3);
                }
                $('#eobcount').html(eobcount.toFixed(0));
                $('#eobamount').html('$ ' + eobamount.toFixed(2));
            }

            function claimchart(response)
            {
                var txt = response;
                var obj = jQuery.parseJSON(txt);
                console.log(obj.length);
                //console.log(myJsonString);
                var clcount = 0;
                var clamount = 0;
                if (obj.length > 0)
                {
                    for (var i = 0; i < obj.length; i++)
                    {
                        clcount = clcount + parseFloat(obj[i].value);
                        clamount = clamount + parseFloat(obj[i].value1);
                    }
                    drawbar("storage-chart2", obj, "date", "Amount", "Count", 3);
                }
                $('#clcount').html(clcount.toFixed(0));
                $('#clamount').html('$ ' + clamount.toFixed(2));
            }


            function claimprocesschart(response)
            {
                var txt = response;
                var obj = jQuery.parseJSON(txt);
                console.log(obj.length);
                var clcount = 0;
                var clamount = 0;
                if (obj.length > 0)
                {
                    for (var i = 0; i < obj.length; i++)
                    {
                        clcount = clcount + parseFloat(obj[i].value);
                        clamount = clamount + parseFloat(obj[i].value1);
                    }
                    drawbar("storage-chart7", obj, "date", "Amount", "Count", 3);
                }
                $('#claimprocesscount').html(clcount.toFixed(0));
                $('#claimprocessamount').html('$ ' + clamount.toFixed(2));
                // storage_chart("storage-chart2", myJsonString);

            }

            function adjustchart(response)
            {
                var txt = response;
                var obj = jQuery.parseJSON(txt);
                console.log(obj.length);
                var adcount = 0;
                var adamount = 0;
                if (obj.length > 0)
                {
                    for (var i = 0; i < obj.length; i++)
                    {
                        adcount = adcount + parseFloat(obj[i].value);
                        adamount = adamount + parseFloat(obj[i].value1);
                    }
                    drawbar("storage-chart5", obj, "date", "Amount", "Count", 3);
                }
                $('#adcount').html(adcount.toFixed(0));
                $('#adamount').html('$ ' + adamount.toFixed(2));
                // storage_chart("storage-chart2", myJsonString);

            }


            function piechart_payee(response)
            {
                var txt = response;
                var obj = jQuery.parseJSON(txt);
                console.log(obj.length);
                var payeeamount = 0;
                if (obj.length > 0)
                {
                    for (var i = 0; i < obj.length; i++)
                    {
                        payeeamount = payeeamount + parseFloat(obj[i].value);
                    }
                    drawpie("piechart1", obj, "payee", "Count", "Practice");
                }

                $('#payeeamount').html('$ ' + payeeamount.toFixed(2));
                //piechart("piechart1", myJsonString, "payee", "value");

            }

            function piechart_ev(response)
            {
                var txt = response;
                var obj = jQuery.parseJSON(txt);
                console.log(obj.length);
                var evamount = 0;
                if (obj.length > 0)
                {
                    for (var i = 0; i < obj.length; i++)
                    {
                        evamount = evamount + parseFloat(obj[i].value);
                    }
                    drawpie("piechart2", obj, "practice_name", "Count", "EV");
                }
                $('#evamount').html(evamount.toFixed(0));
                //piechart("piechart2", myJsonString, "practice_name", "value");

            }

            function piechart_payer(response)
            {
                var txt = response;
                var obj = jQuery.parseJSON(txt);
                console.log(obj.length);
                var payeramount = 0;
                if (obj.length > 0)
                {
                    for (var i = 0; i < obj.length; i++)
                    {
                        payeramount = payeramount + parseFloat(obj[i].value);
                    }
                    drawpie("piechart3", obj, "payer", "Count", "Payer");
                }
                $('#payeramount').html('$ ' + payeramount.toFixed(2));
                //  piechart("piechart3", myJsonString, "payer", "value");

            }

            function piechart_ev_status(response)
            {
                var txt = response;
                var obj = jQuery.parseJSON(txt);
                console.log(obj.length);
                var evamount = 0;
                if (obj.length > 0)
                {
                    for (var i = 0; i < obj.length; i++)
                    {
                        evamount = evamount + parseFloat(obj[i].value);
                    }
                    drawpie("piechart4", obj, "Status", "Count", "EV_Status");
                }
                $('#evstatusamount').html(evamount.toFixed(0));
                //piechart("piechart2", myJsonString, "practice_name", "value");

            }

            // updated by sivananthi
            $.ajax({
                url: "evchart",
                type: "get", //send it through get method
                data: {
//                    ev_value: ((new Date).getDate()) - 1
                    startDate: moment().startOf('month').format('YYYY-MM-DD'),
                    endDate: moment().endOf('month').format('YYYY-MM-DD')
                },
                success: function (response) {
                    console.log(response);
                    var txt = response;
                    var obj = jQuery.parseJSON(txt);
                    if (obj.length > 0)
                    {
                        $('#evhead').html('');
                        $('#evhead').html('No.of EVs [This month]');
                        evchart(response);
                    } else
                    {
                        $('#evhead').html('');
                        $('#evhead').html('No.of EVs [This month]');
                        $('#flading').hide();
                    }
                }
            });
            //ES
            // updated by sivananthi
            $.ajax({
                url: "sbdtchart",
                type: "get", //send it through get method
                data: {
//                    sb_value: ((new Date).getDate()) - 1
                    startDate: moment().startOf('month').format('YYYY-MM-DD'),
                    endDate: moment().endOf('month').format('YYYY-MM-DD')
                }, success: function (response) {
                    var txt = response;
                    var obj = jQuery.parseJSON(txt);
                    if (obj.length > 0)
                    {
                        $('#eshead').html('');
                        $('#eshead').html('No.of E-Superbill [This month]');
                        eschart(response);
                    } else
                    {
                        $('#eshead').html('');
                        $('#eshead').html('No.of E-Superbill [This month]');
                        $('#flading').hide();
                    }
                }

            });
            //EOB
            //----------------------------- updated by sivananthi
            $.ajax({
                url: "eobchart",
                type: "get", //send it through get method
                data: {
                    startDate: moment().startOf('month').format('YYYY-MM-DD'),
                    endDate: moment().endOf('month').format('YYYY-MM-DD')

                            // eob_value: ((new Date).getDate()) - 1

                }, success: function (response) {
                    var txt = response;
                    var obj = jQuery.parseJSON(txt);
                    let  eobcount = 0.0;
                    let  eobamount = 0.0;
                    console.log(obj);
                    console.log(response);
                    if (obj.length > 0)
                    {
                        $('#ebhead').html('');
                        $('#ebhead').html('Daily total amount of Paid ERAs [This month]');
                        for (var i = 0; i < obj.length; i++)
                        {
                            // eobcount = eobcount + parseFloat(1);
                            eobcount = eobcount + parseFloat(obj[i].value);
                            eobamount = eobamount + parseFloat(obj[i].value1);
                        }


                        $('#paidera').html('$ ' + eobamount.toFixed(0) + ' (' + eobcount.toFixed(0) + ') ');
                        eobchart(response);
                    } else
                    {
                        $('#paidera').html('$ ' + eobamount + ' (' + eobcount + ') ');
                        $('#ebhead').html('');
                        $('#ebhead').html('Daily total amount of Paid ERAs [This month]');
                        $('#flading').hide();
                    }
                }
            });


            //Claim
            //----------------------------- updated by sivananthi
            $.ajax({
                url: "claimchart",
                type: "get", //send it through get method
                data: {
//                    claim_value: ((new Date).getDate()) - 1
                    startDate: moment().startOf('month').format('YYYY-MM-DD'),
                    endDate: moment().endOf('month').format('YYYY-MM-DD')

                }, success: function (response) {
                    var txt = response;
                    var obj = jQuery.parseJSON(txt);
                    var claimcount = 0;
                    var claimamount = 0;
                    if (obj.length > 0)
                    {
                        $('#clhead').html('');
                        $('#clhead').html('Daily total amount of Paid Claims [This month]');
                        for (var i = 0; i < obj.length; i++)
                        {
                            claimcount = claimcount + parseFloat(obj[i].value);
                            claimamount = claimamount + parseFloat(obj[i].value1);
                        }

                        $('#paidclaim').html('$ ' + claimamount.toFixed(0) + ' (' + claimcount.toFixed(0) + ') ');
                        claimchart(response);
                    } else
                    {
                        $('#paidclaim').html('$ ' + claimamount.toFixed(0) + ' (' + claimcount.toFixed(0) + ') ');
                        $('#clhead').html('');
                        $('#clhead').html('Daily total amount of Paid Claims [This month]');
                        $('#flading').hide();
                    }
                }
            });
            //Claim processed
            //----------------------------- updated by sivananthi
            $.ajax({
                url: "claimtrackerchart",
                type: "get", //send it through get method
                data: {
//                    claim_tracker: ((new Date).getDate()) - 1
                    startDate: moment().startOf('month').format('YYYY-MM-DD'),
                    endDate: moment().endOf('month').format('YYYY-MM-DD')
                }, success: function (response) {
                    var txt = response;
                    var obj = jQuery.parseJSON(txt);
                    if (obj.length > 0)
                    {
                        $('#claimprocesshead').html('');
                        $('#claimprocesshead').html('Claims Generated [This month]');
                        claimprocesschart(response);
                    } else
                    {
                        $('#claimprocesshead').html('');
                        $('#claimprocesshead').html('Claims Generated [This month]');
                        $('#flading').hide();
                    }
                }
            });
            //adjustment
            //----------------------------- updated by sivananthi
            $.ajax({
                url: "adjustmentchart",
                type: "get", //send it through get method
                data: {
                    // adjustment: ((new Date).getDate()) - 1
                    startDate: moment().startOf('month').format('YYYY-MM-DD'),
                    endDate: moment().endOf('month').format('YYYY-MM-DD')
                }, success: function (response) {
                    //   console.log(response);
                    var adcount = 0;
                    var adamount = 0;
                    var txt = response;
                    var obj = jQuery.parseJSON(txt);
                    if (obj.length > 0)
                    {
                        $('#adhead').html('');
                        $('#adhead').html('Daily total amount of Recoupment [This month]');
                        for (var i = 0; i < obj.length; i++)
                        {
                            adcount = adcount + parseFloat(obj[i].value);
                            adamount = adamount + parseFloat(obj[i].value1);
                        }

                        $('#recoupment').html('$ ' + adamount.toFixed(0) + ' (' + adcount.toFixed(0) + ') ');
                        adjustchart(response);
                    } else
                    {
                        $('#recoupment').html('$ ' + adamount.toFixed(0) + ' (' + adcount.toFixed(0) + ') ');
                        $('#adhead').html('');
                        $('#adhead').html('Daily total amount of Recoupment [This month]');
                        $('#flading').hide();
                    }
                }
            });
            //Practice Contribution
            //----------------------------- updated by sivananthi
            $.ajax({
                url: "pracontrichart",
                type: "get", //send it through get method
                data: {
//                    pra_contri: ((new Date).getDate()) - 1
                    startDate: moment().startOf('month').format('YYYY-MM-DD'),
                    endDate: moment().endOf('month').format('YYYY-MM-DD')
                }, success: function (response) {
                    //   console.log(response);
                    var txt = response;
                    var obj = jQuery.parseJSON(txt);
                    if (obj.length > 0)
                    {
                        $('#practicehead').html('');
                        $('#practicehead').html('Practice contribution (Paid ERAs) [This month]');
                        piechart_payee(response);
                    } else
                    {
                        $('#practicehead').html('');
                        $('#practicehead').html('Practice contribution (Paid ERAs) [This month]');
                        $('#flading').hide();
                    }
                }
            });
            //Ev Utilization
            //----------------------------- updated by sivananthi
            $.ajax({
                url: "evutilchart",
                type: "get", //send it through get method
                data: {
//                    ev_util: ((new Date).getDate()) - 1
                    startDate: moment().startOf('month').format('YYYY-MM-DD'),
                    endDate: moment().endOf('month').format('YYYY-MM-DD')
                }, success: function (response) {
                    var txt = response;
                    var obj = jQuery.parseJSON(txt);
                    if (obj.length > 0)
                    {
                        $('#evutilhead').html('');
                        $('#evutilhead').html('EV Utilization - (Practices using EV) [This month]');
                        piechart_ev(response);
                    } else
                    {
                        $('#evutilhead').html('');
                        $('#evutilhead').html('EV Utilization - (Practices using EV) [This month]');
                        $('#flading').hide();
                    }
                }
            });
            //Payer Utilization
            //----------------------------- updated by sivananthi
            $.ajax({
                url: "payorcontrichart",
                type: "get", //send it through get method
                data: {
//                    payor_util: ((new Date).getDate()) - 1
                    startDate: moment().startOf('month').format('YYYY-MM-DD'),
                    endDate: moment().endOf('month').format('YYYY-MM-DD')
                }, success: function (response) {
                    var txt = response;
                    var obj = jQuery.parseJSON(txt);
                    if (obj.length > 0)
                    {
                        $('#payerhead').html('');
                        $('#payerhead').html('Payor contribution [This month]');
                        piechart_payer(response);
                    } else
                    {
                        $('#payerhead').html('');
                        $('#payerhead').html('Payor contribution [This month]');
                        $('#flading').hide();
                    }
                }
            });
            // alert(((new Date).getDate()) - 1);
            //Denial
            //----------------------------- updated by sivananthi
            $.ajax({
                url: "denialchart",
                type: "get", //send it through get method
                data: {
//                    denial_value: ((new Date).getDate()) - 1
                    startDate: moment().startOf('month').format('YYYY-MM-DD'),
                    endDate: moment().endOf('month').format('YYYY-MM-DD')
                }, success: function (response) {
                    var txt = response;
                    var obj = jQuery.parseJSON(txt);
                    if (obj.length > 0)
                    {
                        $('#chargehead').html('');
                        $('#chargehead').html('Charge Value of denied Claims [This month]');
                        denialchart(response);
                    } else
                    {
                        $('#chargehead').html('');
                        $('#chargehead').html('Charge Value of denied Claims [This month]');
                        $('#flading').hide();
                    }
                }
            });
            // console.log(((new Date).getDate()) - 1);
            //Party Denial
            //----------------------------- updated by sivananthi
            $.ajax({
                url: "partlydenialchart",
                type: "get", //send it through get method
                data: {
//                    part_denial_value: ((new Date).getDate()) - 1
                    startDate: moment().startOf('month').format('YYYY-MM-DD'),
                    endDate: moment().endOf('month').format('YYYY-MM-DD')
                }, success: function (response) {
                    var txt = response;
                    var obj = jQuery.parseJSON(txt);
                    if (obj.length > 0)
                    {
                        $('#partychargehead').html('');
                        $('#partychargehead').html('Charge Value of partly paid Claims [This month]');
                        partydenialchart(response);
                    } else
                    {
                        $('#partychargehead').html('');
                        $('#partychargehead').html('Charge Value of partly paid Claims [This month]');
                        $('#flading').hide();
                    }
                }
            });
            //Ev Status
            //----------------------------- updated by sivananthi
            $.ajax({
                url: "evstatuschart",
                type: "get", //send it through get method
                data: {
//                    ev_status: ((new Date).getDate()) - 1
                    startDate: moment().startOf('month').format('YYYY-MM-DD'),
                    endDate: moment().endOf('month').format('YYYY-MM-DD')
                }, success: function (response) {
                    var txt = response;
                    var obj = jQuery.parseJSON(txt);
                    if (obj.length > 0)
                    {
                        $('#evstatushead').html('');
                        $('#evstatushead').html('EV Utilization - (Status using EV) [This month]');
                        piechart_ev_status(response);
                    } else
                    {
                        $('#evstatushead').html('');
                        $('#evstatushead').html('EV Utilization - (Status using EV) [This month]');
                        $('#flading').hide();
                    }
                }
            });
            // alert(alert(((new Date).getDate()) - 1));
            //Super Bill
            $.ajax({
                url: "sbchart",
                type: "get", //send it through get method
                data: {
                    //  sb_value: ((new Date).getDate()) - 1
                    startDate: moment().startOf('month').format('YYYY-MM-DD'),
                    endDate: moment().endOf('month').format('YYYY-MM-DD')
                }, success: function (response) {
                    var txt = response;
                    var obj = jQuery.parseJSON(txt);
                    var adcount = 0;
                    if (obj.length > 0)
                    {
                        for (var i = 0; i < obj.length; i++)
                        {
                            adcount = adcount + parseFloat(obj[i].value);
                        }
                        $('#superbill').text(adcount.toFixed(0));
                        //  adjustchart(response);
                    } else
                    {
                        $('#superbill').text(adcount.toFixed(0));
                    }
                }
            });
            // Notes 

            //EV Buttons
//            $('#ev30').click(function () {
//                $('#flading').show();
//                $.ajax({
//                    url: "evchart",
//                    type: "get", //send it through get method
//                    data: {
//                        ev_value: 30
//                    },
//                    success: function (response) {
//                        // console.log(response);
//                        var txt = response;
//                        var obj = jQuery.parseJSON(txt);
//                        if (obj.length > 0)
//                        {
//                            setTimeout(function ()
//                            {
//                                $('#evhead').html('');
//                                $('#evhead').html('No.of EVs [30 days]');
//                                evchart(response);
//                            }, 5000);
//                        } else
//                        {
//                            // alert('No Data');
//                            msgbox("No Data", "Reports Form", "warning");
//                            $('#flading').hide();
//                        }
//                    }
//                });
//            });
//            $('#ev60').click(function () {
//                $('#flading').show();
//                $.ajax({
//                    url: "evchart",
//                    type: "get", //send it through get method
//                    data: {
//                        ev_value: 60
//                    },
//                    success: function (response) {
//                        var txt = response;
//                        var obj = jQuery.parseJSON(txt);
//                        if (obj.length > 0)
//                        {
//                            setTimeout(function ()
//                            {
//                                $('#evhead').html('');
//                                $('#evhead').html('No.of EVs [60 days]');
//                                evchart(response);
//                            }, 5000);
//                        } else
//                        {
//                            msgbox("No Data", "Reports Form", "warning");
//                            $('#flading').hide();
//                        }
//                    }
//                });
//            });
//            $('#ev90').click(function () {
//                $('#flading').show();
//                $.ajax({
//                    url: "evchart",
//                    type: "get", //send it through get method
//                    data: {
//                        ev_value: 90
//                    },
//                    success: function (response) {
//                        var txt = response;
//                        var obj = jQuery.parseJSON(txt);
//                        if (obj.length > 0)
//                        {
//                            setTimeout(function ()
//                            {
//                                $('#evhead').html('');
//                                $('#evhead').html('No.of EVs [90 days]');
//                                evchart(response);
//                            }, 5000);
//                        } else
//                        {
//                            msgbox("No Data", "Reports Form", "warning");
//                            $('#flading').hide();
//                        }
//                    }
//                });
//            });
//            $('#evmon').click(function () {
//                $('#flading').show();
//                $.ajax({
//                    url: "evchart",
//                    type: "get", //send it through get method
//                    data: {
//                        ev_value: ((new Date).getDate()) - 1
//                    },
//                    success: function (response) {
//                        var txt = response;
//                        var obj = jQuery.parseJSON(txt);
//                        if (obj.length > 0)
//                        {
//                            setTimeout(function ()
//                            {
//                                $('#evhead').html('');
//                                $('#evhead').html('No.of EVs [This Month]');
//                                evchart(response);
//                            }, 5000);
//                        } else
//                        {
//                            msgbox("No Data", "Reports Form", "warning");
//                            $('#flading').hide();
//                        }
//                    }
//                });
//            });
//            $('#evpremon').click(function () {
//                $('#flading').show();
//                $.ajax({
//                    url: "evchart",
//                    type: "get", //send it through get method
//                    data: {
//                        ev_value: 31
//                    },
//                    success: function (response) {
//                        var txt = response;
//                        var obj = jQuery.parseJSON(txt);
//                        if (obj.length > 0)
//                        {
//                            setTimeout(function ()
//                            {
//                                $('#evhead').html('');
//                                $('#evhead').html('No.of EVs [Previous Month]');
//                                evchart(response);
//                            }, 5000);
//                        } else
//                        {
//                            msgbox("No Data", "Reports Form", "warning");
//                            $('#flading').hide();
//                        }
//                    }
//                });
//            });
            //ES Buttons
//            $('#es30').click(function () {
//                $('#flading').show();
//                $.ajax({
//                    url: "sbdtchart",
//                    type: "get", //send it through get method
//                    data: {
//                        sb_value: 30
//                    }, success: function (response) {
//                        var txt = response;
//                        var obj = jQuery.parseJSON(txt);
//                        if (obj.length > 0)
//                        {
//                            setTimeout(function ()
//                            {
//                                $('#eshead').html('');
//                                $('#eshead').html('No.of E-Superbill [30 days]');
//                                eschart(response);
//                            }, 5000);
//                        } else
//                        {
//                            // alert('No Data');
//                            msgbox("No Data", "Reports Form", "warning");
//                            $('#flading').hide();
//                        }
//                    }
//                });
//            });
//            $('#es60').click(function () {
//                $('#flading').show();
//                $.ajax({
//                    url: "sbdtchart",
//                    type: "get", //send it through get method
//                    data: {
//                        sb_value: 60
//                    }, success: function (response) {
//                        var txt = response;
//                        var obj = jQuery.parseJSON(txt);
//                        if (obj.length > 0)
//                        {
//                            setTimeout(function ()
//                            {
//                                $('#eshead').html('');
//                                $('#eshead').html('No.of E-Superbill [60 days]');
//                                eschart(response);
//                            }, 5000);
//                        } else
//                        {
//                            // alert('No Data');
//                            msgbox("No Data", "Reports Form", "warning");
//                            $('#flading').hide();
//                        }
//                    }
//                });
//            });
//            $('#es90').click(function () {
//                $('#flading').show();
//                $.ajax({
//                    url: "sbdtchart",
//                    type: "get", //send it through get method
//                    data: {
//                        sb_value: 90
//                    }, success: function (response) {
//                        var txt = response;
//                        var obj = jQuery.parseJSON(txt);
//                        if (obj.length > 0)
//                        {
//                            setTimeout(function ()
//                            {
//                                $('#eshead').html('');
//                                $('#eshead').html('No.of E-Superbill [90 days]');
//                                eschart(response);
//                            }, 5000);
//                        } else
//                        {
//                            // alert('No Data');
//                            msgbox("No Data", "Reports Form", "warning");
//                            $('#flading').hide();
//                        }
//                    }
//                });
//            });
//            $('#esmon').click(function () {
//                $('#flading').show();
//                $.ajax({
//                    url: "sbdtchart",
//                    type: "get", //send it through get method
//                    data: {
//                        sb_value: ((new Date).getDate()) - 1
//                    }, success: function (response) {
//                        var txt = response;
//                        var obj = jQuery.parseJSON(txt);
//                        if (obj.length > 0)
//                        {
//                            setTimeout(function ()
//                            {
//                                $('#eshead').html('');
//                                $('#eshead').html('No.of E-Superbill [This Month]');
//                                eschart(response);
//                            }, 5000);
//                        } else
//                        {
//                            msgbox("No Data", "Reports Form", "warning");
//                            $('#flading').hide();
//                        }
//                    }
//                });
//            });
//            $('#espremon').click(function () {
//                $('#flading').show();
//                $.ajax({
//                    url: "sbdtchart",
//                    type: "get", //send it through get method
//                    data: {
//                        sb_value: 31
//                    }, success: function (response) {
//                        var txt = response;
//                        var obj = jQuery.parseJSON(txt);
//                        if (obj.length > 0)
//                        {
//                            setTimeout(function ()
//                            {
//                                $('#eshead').html('');
//                                $('#eshead').html('No.of E-Superbill [Previous Month]');
//                                eschart(response);
//                            }, 5000);
//                        } else
//                        {
//                            msgbox("No Data", "Reports Form", "warning");
//                            $('#flading').hide();
//                        }
//                    }
//                });
//            });
            // EB Buttons
//                $('#eb30').click(function () {
//        $('#flading').show();
//                $.ajax({
//                url: "eobchart",
//                        type: "get", //send it through get method
//                        data: {
//                        eob_value: 30
//                        }, success: function (response) {
//                var txt = response;
//                        var obj = jQuery.parseJSON(txt);
//                        if (obj.length > 0)
//                {
//                setTimeout(function ()
//                {
//                $('#ebhead').html('');
//                        $('#ebhead').html('Daily total amount of Paid ERAs [30 days]');
//                        eobchart(response);
//                }, 5000);
//                } else
//                {
//                msgbox("No Data", "Reports Form", "warning");
//                        $('#flading').hide();
//                }
//                }
//                });
//        });
//                $('#eb60').click(function () {
//        $('#flading').show();
//                $.ajax({
//                url: "eobchart",
//                        type: "get", //send it through get method
//                        data: {
//                        eob_value: 60
//                        }, success: function (response) {
//                var txt = response;
//                        var obj = jQuery.parseJSON(txt);
//                        if (obj.length > 0)
//                {
//                setTimeout(function ()
//                {
//                $('#ebhead').html('');
//                        $('#ebhead').html('Daily total amount of Paid ERAs [60 days]');
//                        eobchart(response);
//                }, 5000);
//                } else
//                {
//                msgbox("No Data", "Reports Form", "warning");
//                        $('#flading').hide();
//                }
//                }
//                });
//        });
//                $('#eb90').click(function () {
//        $('#flading').show();
//                $.ajax({
//                url: "eobchart",
//                        type: "get", //send it through get method
//                        data: {
//                        eob_value: 90
//                        }, success: function (response) {
//                var txt = response;
//                        var obj = jQuery.parseJSON(txt);
//                        if (obj.length > 0)
//                {
//                setTimeout(function ()
//                {
//                $('#ebhead').html('');
//                        $('#ebhead').html('Daily total amount of Paid ERAs [90 days]');
//                        eobchart(response);
//                }, 5000);
//                } else
//                {
//                msgbox("No Data", "Reports Form", "warning");
//                        $('#flading').hide();
//                }
//                }
//
//                });
//        });
//                $('#ebmon').click(function () {
//        $('#flading').show();
//                //  alert(((new Date).getDate())); ((new Date).getDate()) - 1
//                $.ajax({
//                url: "eobchart",
//                        type: "get", //send it through get method
//                        data: {
//                        eob_value: ((new Date).getDate()) - 1
//                        }, success: function (response) {
//                var txt = response;
//                        var obj = jQuery.parseJSON(txt);
//                        if (obj.length > 0)
//                {
//                setTimeout(function ()
//                {
//                $('#ebhead').html('');
//                        $('#ebhead').html('Daily total amount of Paid ERAs [This Month]');
//                        eobchart(response);
//                }, 5000);
//                } else
//                {
//                msgbox("No Data", "Reports Form", "warning");
//                        $('#flading').hide();
//                }
//                }
//                });
//        });
//                $('#ebpremon').click(function () {
//        $('#flading').show();
//                $.ajax({
//                url: "eobchart",
//                        type: "get", //send it through get method
//                        data: {
//                        eob_value: 31
//                        }, success: function (response) {
//                var txt = response;
//                        var obj = jQuery.parseJSON(txt);
//                        if (obj.length > 0)
//                {
//                setTimeout(function ()
//                {
//                $('#ebhead').html('');
//                        $('#ebhead').html('Daily total amount of Paid ERAs [Previous Month]');
//                        eobchart(response);
//                }, 5000);
//                } else
//                {
//                msgbox("No Data", "Reports Form", "warning");
//                        $('#flading').hide();
//                }
//                }
//                });
//        });
            //Claim Buttons
//            $('#cl30').click(function () {
//                $('#flading').show();
//                $.ajax({
//                    url: "claimchart",
//                    type: "get", //send it through get method
//                    data: {
//                        claim_value: 30
//                    }, success: function (response) {
//                        var txt = response;
//                        var obj = jQuery.parseJSON(txt);
//                        if (obj.length > 0)
//                        {
//                            setTimeout(function ()
//                            {
//                                $('#clhead').html('');
//                                $('#clhead').html('Daily total amount of Paid Claims [30 days]');
//                                claimchart(response);
//                            }, 5000);
//                        } else
//                        {
//                            msgbox("No Data", "Reports Form", "warning");
//                            $('#flading').hide();
//                        }
//                    }
//                });
//            });
//            $('#cl60').click(function () {
//                $('#flading').show();
//                $.ajax({
//                    url: "claimchart",
//                    type: "get", //send it through get method
//                    data: {
//                        claim_value: 60
//                    }, success: function (response) {
//                        var txt = response;
//                        var obj = jQuery.parseJSON(txt);
//                        if (obj.length > 0)
//                        {
//                            setTimeout(function ()
//                            {
//                                $('#clhead').html('');
//                                $('#clhead').html('Daily total amount of Paid Claims [60 days]');
//                                claimchart(response);
//                            }, 5000);
//                        } else
//                        {
//                            msgbox("No Data", "Reports Form", "warning");
//                            $('#flading').hide();
//                        }
//                    }
//
//                });
//            });
//            $('#cl90').click(function () {
//                $('#flading').show();
//                $.ajax({
//                    url: "claimchart",
//                    type: "get", //send it through get method
//                    data: {
//                        claim_value: 90
//                    }, success: function (response) {
//                        var txt = response;
//                        var obj = jQuery.parseJSON(txt);
//                        if (obj.length > 0)
//                        {
//                            setTimeout(function ()
//                            {
//                                $('#clhead').html('');
//                                $('#clhead').html('Daily total amount of Paid Claims [90 days]');
//                                claimchart(response);
//                            }, 5000);
//                        } else
//                        {
//                            msgbox("No Data", "Reports Form", "warning");
//                            $('#flading').hide();
//                        }
//                    }
//
//                });
//            });
//            $('#clmon').click(function () {
//                $('#flading').show();
//                $.ajax({
//                    url: "claimchart",
//                    type: "get", //send it through get method
//                    data: {
//                        claim_value: ((new Date).getDate()) - 1
//                    }, success: function (response) {
//                        var txt = response;
//                        var obj = jQuery.parseJSON(txt);
//                        if (obj.length > 0)
//                        {
//                            setTimeout(function ()
//                            {
//                                $('#clhead').html('');
//                                $('#clhead').html('Daily total amount of Paid Claims [This Month]');
//                                claimchart(response);
//                            }, 5000);
//                        } else
//                        {
//                            msgbox("No Data", "Reports Form", "warning");
//                            $('#flading').hide();
//                        }
//                    }
//
//                });
//            });
//            $('#clpremon').click(function () {
//                $('#flading').show();
//                $.ajax({
//                    url: "claimchart",
//                    type: "get", //send it through get method
//                    data: {
//                        claim_value: 31
//                    }, success: function (response) {
//                        var txt = response;
//                        var obj = jQuery.parseJSON(txt);
//                        if (obj.length > 0)
//                        {
//                            setTimeout(function ()
//                            {
//                                $('#clhead').html('');
//                                $('#clhead').html('Daily total amount of Paid Claims [Previous Month]');
//                                claimchart(response);
//                            }, 5000);
//                        } else
//                        {
//                            msgbox("No Data", "Reports Form", "warning");
//                            $('#flading').hide();
//                        }
//                    }
//                });
//            });
            //Claim Generated Buttons
//            $('#claimprocess30').click(function () {
//                $('#flading').show();
//                $.ajax({
//                    url: "claimtrackerchart",
//                    type: "get", //send it through get method
//                    data: {
//                        claim_tracker: 30
//                    }, success: function (response) {
//                        var txt = response;
//                        var obj = jQuery.parseJSON(txt);
//                        if (obj.length > 0)
//                        {
//                            setTimeout(function ()
//                            {
//                                $('#claimprocesshead').html('');
//                                $('#claimprocesshead').html('Claims Generated [30 days]');
//                                claimprocesschart(response);
//                            }, 5000);
//                        } else
//                        {
//                            msgbox("No Data", "Reports Form", "warning");
//                            $('#flading').hide();
//                        }
//                    }
//                });
//            });
//            $('#claimprocess60').click(function () {
//                $('#flading').show();
//                $.ajax({
//                    url: "claimtrackerchart",
//                    type: "get", //send it through get method
//                    data: {
//                        claim_tracker: 60
//                    }, success: function (response) {
//                        var txt = response;
//                        var obj = jQuery.parseJSON(txt);
//                        if (obj.length > 0)
//                        {
//                            setTimeout(function ()
//                            {
//                                $('#claimprocesshead').html('');
//                                $('#claimprocesshead').html('Claims Generated [60 days]');
//                                claimprocesschart(response);
//                            }, 5000);
//                        } else
//                        {
//                            msgbox("No Data", "Reports Form", "warning");
//                            $('#flading').hide();
//                        }
//                    }
//                });
//            });
//            $('#claimprocess90').click(function () {
//                $('#flading').show();
//                $.ajax({
//                    url: "claimtrackerchart",
//                    type: "get", //send it through get method
//                    data: {
//                        claim_tracker: 90
//                    }, success: function (response) {
//                        var txt = response;
//                        var obj = jQuery.parseJSON(txt);
//                        if (obj.length > 0)
//                        {
//                            setTimeout(function ()
//                            {
//                                $('#claimprocesshead').html('');
//                                $('#claimprocesshead').html('Claims Generated [90 days]');
//                                claimprocesschart(response);
//                            }, 5000);
//                        } else
//                        {
//                            msgbox("No Data", "Reports Form", "warning");
//                            $('#flading').hide();
//                        }
//                    }
//
//                });
//            });
//            $('#claimprocessmon').click(function () {
//                $('#flading').show();
//                $.ajax({
//                    url: "claimtrackerchart",
//                    type: "get", //send it through get method
//                    data: {
//                        claim_tracker: ((new Date).getDate()) - 1
//                    }, success: function (response) {
//                        var txt = response;
//                        var obj = jQuery.parseJSON(txt);
//                        if (obj.length > 0)
//                        {
//                            setTimeout(function ()
//                            {
//                                $('#claimprocesshead').html('');
//                                $('#claimprocesshead').html('Claims Generated [This Month]');
//                                claimprocesschart(response);
//                            }, 5000);
//                        } else
//                        {
//                            msgbox("No Data", "Reports Form", "warning");
//                            $('#flading').hide();
//                        }
//                    }
//                });
//            });
//            $('#claimprocesspremon').click(function () {
//                $('#flading').show();
//                $.ajax({
//                    url: "claimtrackerchart",
//                    type: "get", //send it through get method
//                    data: {
//                        claim_tracker: 31
//                    }, success: function (response) {
//                        var txt = response;
//                        var obj = jQuery.parseJSON(txt);
//                        if (obj.length > 0)
//                        {
//                            setTimeout(function ()
//                            {
//                                $('#claimprocesshead').html('');
//                                $('#claimprocesshead').html('Claims Generated [Previous Month]');
//                                claimprocesschart(response);
//                            }, 5000);
//                        } else
//                        {
//                            msgbox("No Data", "Reports Form", "warning");
//                            $('#flading').hide();
//                        }
//                    }
//                });
//            });
            //Payee Buttons
//            $('#payee30').click(function () {
//                $('#flading').show();
//                $.ajax({
//                    url: "pracontrichart",
//                    type: "get", //send it through get method
//                    data: {
//                        pra_contri: 30
//                    }, success: function (response) {
//                        //   console.log(response);
//                        var txt = response;
//                        var obj = jQuery.parseJSON(txt);
//                        if (obj.length > 0)
//                        {
//                            setTimeout(function ()
//                            {
//                                $('#practicehead').html('');
//                                $('#practicehead').html('Practice contribution (Paid ERAs) [30 days]');
//                                piechart_payee(response);
//                            }, 5000);
//                        } else
//                        {
//                            msgbox("No Data", "Reports Form", "warning");
//                            $('#flading').hide();
//                        }
//                    }
//                });
//            });
//            $('#payee60').click(function () {
//                $('#flading').show();
//                $.ajax({
//                    url: "pracontrichart",
//                    type: "get", //send it through get method
//                    data: {
//                        pra_contri: 60
//                    }, success: function (response) {
//                        //   console.log(response);
//                        var txt = response;
//                        var obj = jQuery.parseJSON(txt);
//                        if (obj.length > 0)
//                        {
//                            setTimeout(function ()
//                            {
//                                $('#practicehead').html('');
//                                $('#practicehead').html('Practice contribution (Paid ERAs) [60 days]');
//                                piechart_payee(response);
//                            }, 5000);
//                        } else
//                        {
//                            msgbox("No Data", "Reports Form", "warning");
//                            $('#flading').hide();
//                        }
//                    }
//                });
//            });
//            $('#payee90').click(function () {
//                $('#flading').show();
//                $.ajax({
//                    url: "pracontrichart",
//                    type: "get", //send it through get method
//                    data: {
//                        pra_contri: 90
//                    }, success: function (response) {
//                        //   console.log(response);
//                        var txt = response;
//                        var obj = jQuery.parseJSON(txt);
//                        if (obj.length > 0)
//                        {
//                            setTimeout(function ()
//                            {
//                                $('#practicehead').html('');
//                                $('#practicehead').html('Practice contribution (Paid ERAs) [90 days]');
//                                piechart_payee(response);
//                            }, 5000);
//                        } else
//                        {
//                            msgbox("No Data", "Reports Form", "warning");
//                            $('#flading').hide();
//                        }
//                    }
//                });
//            });
//            $('#payeemon').click(function () {
//                $('#flading').show();
//                $.ajax({
//                    url: "pracontrichart",
//                    type: "get", //send it through get method
//                    data: {
//                        pra_contri: ((new Date).getDate()) - 1
//                    }, success: function (response) {
//                        //   console.log(response);
//                        var txt = response;
//                        var obj = jQuery.parseJSON(txt);
//                        if (obj.length > 0)
//                        {
//                            setTimeout(function ()
//                            {
//                                $('#practicehead').html('');
//                                $('#practicehead').html('Practice contribution (Paid ERAs) [This Month]');
//                                piechart_payee(response);
//                            }, 5000);
//                        } else
//                        {
//                            msgbox("No Data", "Reports Form", "warning");
//                            $('#flading').hide();
//                        }
//                    }
//                });
//            });
//            $('#payeepremon').click(function () {
//                $('#flading').show();
//                $.ajax({
//                    url: "pracontrichart",
//                    type: "get", //send it through get method
//                    data: {
//                        pra_contri: 31
//                    }, success: function (response) {
//                        //   console.log(response);
//                        var txt = response;
//                        var obj = jQuery.parseJSON(txt);
//                        if (obj.length > 0)
//                        {
//                            setTimeout(function ()
//                            {
//                                $('#practicehead').html('');
//                                $('#practicehead').html('Practice contribution (Paid ERAs) [Previous Month]');
//                                piechart_payee(response);
//                            }, 5000);
//                        } else
//                        {
//                            msgbox("No Data", "Reports Form", "warning");
//                            $('#flading').hide();
//                        }
//                    }
//                });
//            });
            //EV Util Buttons
//            $('#evutil30').click(function () {
//                $('#flading').show();
//                $.ajax({
//                    url: "evutilchart",
//                    type: "get", //send it through get method
//                    data: {
//                        ev_util: 30
//                    }, success: function (response) {
//                        var txt = response;
//                        var obj = jQuery.parseJSON(txt);
//                        if (obj.length > 0)
//                        {
//                            setTimeout(function ()
//                            {
//                                $('#evutilhead').html('');
//                                $('#evutilhead').html('EV Utilization - (Practices using EV) [30 days]');
//                                piechart_ev(response);
//                            }, 5000);
//                        } else
//                        {
//                            msgbox("No Data", "Reports Form", "warning");
//                            $('#flading').hide();
//                        }
//                    }
//                });
//            });
//            $('#evutil60').click(function () {
//                $('#flading').show();
//                $.ajax({
//                    url: "evutilchart",
//                    type: "get", //send it through get method
//                    data: {
//                        ev_util: 60
//                    }, success: function (response) {
//                        var txt = response;
//                        var obj = jQuery.parseJSON(txt);
//                        if (obj.length > 0)
//                        {
//                            setTimeout(function ()
//                            {
//                                $('#evutilhead').html('');
//                                $('#evutilhead').html('EV Utilization - (Practices using EV) [60 days]');
//                                piechart_ev(response);
//                            }, 5000);
//                        } else
//                        {
//                            msgbox("No Data", "Reports Form", "warning");
//                            $('#flading').hide();
//                        }
//                    }
//                });
//            });
//            $('#evutil90').click(function () {
//                $('#flading').show();
//                $.ajax({
//                    url: "evutilchart",
//                    type: "get", //send it through get method
//                    data: {
//                        ev_util: 90
//                    }, success: function (response) {
//                        var txt = response;
//                        var obj = jQuery.parseJSON(txt);
//                        if (obj.length > 0)
//                        {
//                            setTimeout(function ()
//                            {
//                                $('#evutilhead').html('');
//                                $('#evutilhead').html('EV Utilization - (Practices using EV) [90 days]');
//                                piechart_ev(response);
//                            }, 5000);
//                        } else
//                        {
//                            msgbox("No Data", "Reports Form", "warning");
//                            $('#flading').hide();
//                        }
//                    }
//                });
//            });
//            $('#evutilmon').click(function () {
//                $('#flading').show();
//                $.ajax({
//                    url: "evutilchart",
//                    type: "get", //send it through get method
//                    data: {
//                        ev_util: ((new Date).getDate()) - 1
//                    }, success: function (response) {
//                        var txt = response;
//                        var obj = jQuery.parseJSON(txt);
//                        if (obj.length > 0)
//                        {
//                            setTimeout(function ()
//                            {
//                                $('#evutilhead').html('');
//                                $('#evutilhead').html('EV Utilization - (Practices using EV) [This month]');
//                                piechart_ev(response);
//                            }, 5000);
//                        } else
//                        {
//                            msgbox("No Data", "Reports Form", "warning");
//                            $('#flading').hide();
//                        }
//                    }
//                });
//            });
//            $('#evutilpremon').click(function () {
//                $('#flading').show();
//                $.ajax({
//                    url: "evutilchart",
//                    type: "get", //send it through get method
//                    data: {
//                        ev_util: 31
//                    }, success: function (response) {
//                        var txt = response;
//                        var obj = jQuery.parseJSON(txt);
//                        if (obj.length > 0)
//                        {
//                            setTimeout(function ()
//                            {
//                                $('#evutilhead').html('');
//                                $('#evutilhead').html('EV Utilization - (Practices using EV) [Previous month]');
//                                piechart_ev(response);
//                            }, 5000);
//                        } else
//                        {
//                            msgbox("No Data", "Reports Form", "warning");
//                            $('#flading').hide();
//                        }
//                    }
//                });
//            });
            //EV Status Buttons
//            $('#evstatus30').click(function () {
//                $('#flading').show();
//                $.ajax({
//                    url: "evstatuschart",
//                    type: "get", //send it through get method
//                    data: {
//                        ev_status: 30
//                    }, success: function (response) {
//                        var txt = response;
//                        var obj = jQuery.parseJSON(txt);
//                        if (obj.length > 0)
//                        {
//                            setTimeout(function ()
//                            {
//                                $('#evstatushead').html('');
//                                $('#evstatushead').html('EV Utilization - (Status using EV) [30 days]');
//                                piechart_ev_status(response);
//                            }, 5000);
//                        } else
//                        {
//                            msgbox("No Data", "Reports Form", "warning");
//                            $('#flading').hide();
//                        }
//                    }
//                });
//            });
//            $('#evstatus60').click(function () {
//                $('#flading').show();
//                $.ajax({
//                    url: "evstatuschart",
//                    type: "get", //send it through get method
//                    data: {
//                        ev_status: 60
//                    }, success: function (response) {
//                        var txt = response;
//                        var obj = jQuery.parseJSON(txt);
//                        if (obj.length > 0)
//                        {
//                            setTimeout(function ()
//                            {
//                                $('#evstatushead').html('');
//                                $('#evstatushead').html('EV Utilization - (Status using EV) [60 days]');
//                                piechart_ev_status(response);
//                            }, 5000);
//                        } else
//                        {
//                            msgbox("No Data", "Reports Form", "warning");
//                            $('#flading').hide();
//                        }
//                    }
//                });
//            });
//            $('#evstatus90').click(function () {
//                $('#flading').show();
//                $.ajax({
//                    url: "evstatuschart",
//                    type: "get", //send it through get method
//                    data: {
//                        ev_status: 90
//                    }, success: function (response) {
//                        var txt = response;
//                        var obj = jQuery.parseJSON(txt);
//                        if (obj.length > 0)
//                        {
//                            setTimeout(function ()
//                            {
//                                $('#evstatushead').html('');
//                                $('#evstatushead').html('EV Utilization - (Status using EV) [90 days]');
//                                piechart_ev_status(response);
//                            }, 5000);
//                        } else
//                        {
//                            msgbox("No Data", "Reports Form", "warning");
//                            $('#flading').hide();
//                        }
//                    }
//                });
//            });
//            $('#evstatusmon').click(function () {
//                $('#flading').show();
//                $.ajax({
//                    url: "evstatuschart",
//                    type: "get", //send it through get method
//                    data: {
//                        ev_status: ((new Date).getDate()) - 1
//                    }, success: function (response) {
//                        var txt = response;
//                        var obj = jQuery.parseJSON(txt);
//                        if (obj.length > 0)
//                        {
//                            setTimeout(function ()
//                            {
//                                $('#evstatushead').html('');
//                                $('#evstatushead').html('EV Utilization - (Status using EV) [This month]');
//                                piechart_ev_status(response);
//                            }, 5000);
//                        } else
//                        {
//                            msgbox("No Data", "Reports Form", "warning");
//                            $('#flading').hide();
//                        }
//                    }
//                });
//            });
//            $('#evstatuspremon').click(function () {
//                $('#flading').show();
//                $.ajax({
//                    url: "evstatuschart",
//                    type: "get", //send it through get method
//                    data: {
//                        ev_status: 31
//                    }, success: function (response) {
//                        var txt = response;
//                        var obj = jQuery.parseJSON(txt);
//                        if (obj.length > 0)
//                        {
//                            setTimeout(function ()
//                            {
//                                $('#evstatushead').html('');
//                                $('#evstatushead').html('EV Utilization - (Status using EV) [Previous month]');
//                                piechart_ev_status(response);
//                            }, 5000);
//                        } else
//                        {
//                            msgbox("No Data", "Reports Form", "warning");
//                            $('#flading').hide();
//                        }
//                    }
//                });
//            });
            //Payer Contribution Buttons
//            $('#payer30').click(function () {
//                $('#flading').show();
//                $.ajax({
//                    url: "payorcontrichart",
//                    type: "get", //send it through get method
//                    data: {
//                        payor_util: 30
//                    }, success: function (response) {
//                        var txt = response;
//                        var obj = jQuery.parseJSON(txt);
//                        if (obj.length > 0)
//                        {
//                            setTimeout(function ()
//                            {
//                                $('#payerhead').html('');
//                                $('#payerhead').html('Payor contribution [30 days]');
//                                piechart_payer(response);
//                            }, 5000);
//                        } else
//                        {
//                            msgbox("No Data", "Reports Form", "warning");
//                            $('#flading').hide();
//                        }
//                    }
//                });
//            });
//            $('#payer60').click(function () {
//                $('#flading').show();
//                $.ajax({
//                    url: "payorcontrichart",
//                    type: "get", //send it through get method
//                    data: {
//                        payor_util: 60
//                    }, success: function (response) {
//                        var txt = response;
//                        var obj = jQuery.parseJSON(txt);
//                        if (obj.length > 0)
//                        {
//                            setTimeout(function ()
//                            {
//                                $('#payerhead').html('');
//                                $('#payerhead').html('Payor contribution [60 days]');
//                                piechart_payer(response);
//                            }, 5000);
//                        } else
//                        {
//                            msgbox("No Data", "Reports Form", "warning");
//                            $('#flading').hide();
//                        }
//                    }
//                });
//            });
//            $('#payer90').click(function () {
//                $('#flading').show();
//                $.ajax({
//                    url: "payorcontrichart",
//                    type: "get", //send it through get method
//                    data: {
//                        payor_util: 90
//                    }, success: function (response) {
//                        var txt = response;
//                        var obj = jQuery.parseJSON(txt);
//                        if (obj.length > 0)
//                        {
//                            setTimeout(function ()
//                            {
//                                $('#payerhead').html('');
//                                $('#payerhead').html('Payor contribution [90 days]');
//                                piechart_payer(response);
//                            }, 5000);
//                        } else
//                        {
//                            msgbox("No Data", "Reports Form", "warning");
//                            $('#flading').hide();
//                        }
//                    }
//                });
//            });
//            $('#payermon').click(function () {
//                $('#flading').show();
//                $.ajax({
//                    url: "payorcontrichart",
//                    type: "get", //send it through get method
//                    data: {
//                        payor_util: ((new Date).getDate()) - 1
//                    }, success: function (response) {
//                        var txt = response;
//                        var obj = jQuery.parseJSON(txt);
//                        if (obj.length > 0)
//                        {
//                            setTimeout(function ()
//                            {
//                                $('#payerhead').html('');
//                                $('#payerhead').html('Payor contribution [This Month]');
//                                piechart_payer(response);
//                            }, 5000);
//                        } else
//                        {
//                            msgbox("No Data", "Reports Form", "warning");
//                            $('#flading').hide();
//                        }
//                    }
//                });
//            });
//            $('#payerpremon').click(function () {
//                $('#flading').show();
//                $.ajax({
//                    url: "payorcontrichart",
//                    type: "get", //send it through get method
//                    data: {
//                        payor_util: 31
//                    }, success: function (response) {
//                        var txt = response;
//                        var obj = jQuery.parseJSON(txt);
//                        if (obj.length > 0)
//                        {
//                            setTimeout(function ()
//                            {
//                                $('#payerhead').html('');
//                                $('#payerhead').html('Payor contribution [Previous Month]');
//                                piechart_payer(response);
//                            }, 5000);
//                        } else
//                        {
//                            msgbox("No Data", "Reports Form", "warning");
//                            $('#flading').hide();
//                        }
//                    }
//                });
//            });
            //Fully denial Charge Buttons
//            $('#charge30').click(function () {
//                $('#flading').show();
//                $.ajax({
//                    url: "denialchart",
//                    type: "get", //send it through get method
//                    data: {
//                        denial_value: 30
//                    }, success: function (response) {
//                        var txt = response;
//                        var obj = jQuery.parseJSON(txt);
//                        if (obj.length > 0)
//                        {
//                            setTimeout(function ()
//                            {
//                                $('#chargehead').html('');
//                                $('#chargehead').html('Charge Value of denied Claims [30 days]');
//                                denialchart(response);
//                            }, 5000);
//                        } else
//                        {
//                            msgbox("No Data", "Reports Form", "warning");
//                            $('#flading').hide();
//                        }
//                    }
//                });
//            });
//            $('#charge60').click(function () {
//                $('#flading').show();
//                $.ajax({
//                    url: "denialchart",
//                    type: "get", //send it through get method
//                    data: {
//                        denial_value: 60
//                    }, success: function (response) {
//                        var txt = response;
//                        var obj = jQuery.parseJSON(txt);
//                        if (obj.length > 0)
//                        {
//                            setTimeout(function ()
//                            {
//                                $('#chargehead').html('');
//                                $('#chargehead').html('Charge Value of denied Claims [60 days]');
//                                denialchart(response);
//                            }, 5000);
//                        } else
//                        {
//                            msgbox("No Data", "Reports Form", "warning");
//                            $('#flading').hide();
//                        }
//                    }
//                });
//            });
//            $('#charge90').click(function () {
//                $('#flading').show();
//                $.ajax({
//                    url: "denialchart",
//                    type: "get", //send it through get method
//                    data: {
//                        denial_value: 90
//                    }, success: function (response) {
//                        var txt = response;
//                        var obj = jQuery.parseJSON(txt);
//                        if (obj.length > 0)
//                        {
//                            setTimeout(function ()
//                            {
//                                $('#chargehead').html('');
//                                $('#chargehead').html('Charge Value of denied Claims [90 days]');
//                                denialchart(response);
//                            }, 5000);
//                        } else
//                        {
//                            msgbox("No Data", "Reports Form", "warning");
//                            $('#flading').hide();
//                        }
//                    }
//                });
//            });
//            $('#chargemon').click(function () {
//                $('#flading').show();
//                $.ajax({
//                    url: "denialchart",
//                    type: "get", //send it through get method
//                    data: {
//                        denial_value: ((new Date).getDate()) - 1
//                    }, success: function (response) {
//                        var txt = response;
//                        var obj = jQuery.parseJSON(txt);
//                        if (obj.length > 0)
//                        {
//                            setTimeout(function ()
//                            {
//                                $('#chargehead').html('');
//                                $('#chargehead').html('Charge Value of denied Claims [This Month]');
//                                denialchart(response);
//                            }, 5000);
//                        } else
//                        {
//                            msgbox("No Data", "Reports Form", "warning");
//                            $('#flading').hide();
//                        }
//                    }
//                });
//            });
//            $('#chargepremon').click(function () {
//                $('#flading').show();
//                $.ajax({
//                    url: "denialchart",
//                    type: "get", //send it through get method
//                    data: {
//                        denial_value: 31
//                    }, success: function (response) {
//                        var txt = response;
//                        var obj = jQuery.parseJSON(txt);
//                        if (obj.length > 0)
//                        {
//                            setTimeout(function ()
//                            {
//                                $('#chargehead').html('');
//                                $('#chargehead').html('Charge Value of denied Claims [Previous Month]');
//                                denialchart(response);
//                            }, 5000);
//                        } else
//                        {
//                            msgbox("No Data", "Reports Form", "warning");
//                            $('#flading').hide();
//                        }
//                    }
//                });
//            });
            //Partly Denial Charge Buttons
//            $('#partycharge30').click(function () {
//                $('#flading').show();
//                $.ajax({
//                    url: "partlydenialchart",
//                    type: "get", //send it through get method
//                    data: {
//                        part_denial_value: 30
//                    }, success: function (response) {
//                        var txt = response;
//                        var obj = jQuery.parseJSON(txt);
//                        if (obj.length > 0)
//                        {
//                            setTimeout(function ()
//                            {
//                                $('#partychargehead').html('');
//                                $('#partychargehead').html('Charge Value of partly paid Claims [30 days]');
//                                partydenialchart(response);
//                            }, 5000);
//                        } else
//                        {
//                            msgbox("No Data", "Reports Form", "warning");
//                            $('#flading').hide();
//                        }
//                    }
//                });
//            });
//            $('#partycharge60').click(function () {
//                $('#flading').show();
//                $.ajax({
//                    url: "partlydenialchart",
//                    type: "get", //send it through get method
//                    data: {
//                        part_denial_value: 60
//                    }, success: function (response) {
//                        var txt = response;
//                        var obj = jQuery.parseJSON(txt);
//                        if (obj.length > 0)
//                        {
//                            setTimeout(function ()
//                            {
//                                $('#partychargehead').html('');
//                                $('#partychargehead').html('Charge Value of partly paid Claims [60 days]');
//                                partydenialchart(response);
//                            }, 5000);
//                        } else
//                        {
//                            msgbox("No Data", "Reports Form", "warning");
//                            $('#flading').hide();
//                        }
//                    }
//                });
//            });
//            $('#partycharge90').click(function () {
//                $('#flading').show();
//                $.ajax({
//                    url: "partlydenialchart",
//                    type: "get", //send it through get method
//                    data: {
//                        part_denial_value: 90
//                    }, success: function (response) {
//                        var txt = response;
//                        var obj = jQuery.parseJSON(txt);
//                        if (obj.length > 0)
//                        {
//                            setTimeout(function ()
//                            {
//                                $('#partychargehead').html('');
//                                $('#partychargehead').html('Charge Value of partly paid Claims [90 days]');
//                                partydenialchart(response);
//                            }, 5000);
//                        } else
//                        {
//                            msgbox("No Data", "Reports Form", "warning");
//                            $('#flading').hide();
//                        }
//                    }
//                });
//            });
//            $('#partychargemon').click(function () {
//                $('#flading').show();
//                $.ajax({
//                    url: "partlydenialchart",
//                    type: "get", //send it through get method
//                    data: {
//                        part_denial_value: ((new Date).getDate()) - 1
//                    }, success: function (response) {
//                        var txt = response;
//                        var obj = jQuery.parseJSON(txt);
//                        if (obj.length > 0)
//                        {
//                            setTimeout(function ()
//                            {
//                                $('#partychargehead').html('');
//                                $('#partychargehead').html('Charge Value of partly paid Claims [This Month]');
//                                partydenialchart(response);
//                            }, 5000);
//                        } else
//                        {
//                            msgbox("No Data", "Reports Form", "warning");
//                            $('#flading').hide();
//                        }
//                    }
//                });
//            });
//            $('#partychargepremon').click(function () {
//                $('#flading').show();
//                $.ajax({
//                    url: "partlydenialchart",
//                    type: "get", //send it through get method
//                    data: {
//                        part_denial_value: 31
//                    }, success: function (response) {
//                        var txt = response;
//                        var obj = jQuery.parseJSON(txt);
//                        if (obj.length > 0)
//                        {
//                            setTimeout(function ()
//                            {
//                                $('#partychargehead').html('');
//                                $('#partychargehead').html('Charge Value of partly paid Claims [Previous Month]');
//                                partydenialchart(response);
//                            }, 5000);
//                        } else
//                        {
//                            msgbox("No Data", "Reports Form", "warning");
//                            $('#flading').hide();
//                        }
//                    }
//                });
//            });
            //Adjustment
//            $('#ad30').click(function () {
//                $('#flading').show();
//                $.ajax({
//                    url: "adjustmentchart",
//                    type: "get", //send it through get method
//                    data: {
//                        adjustment: 30
//                    }, success: function (response) {
//                        //   console.log(response);
//                        var txt = response;
//                        var obj = jQuery.parseJSON(txt);
//                        if (obj.length > 0)
//                        {
//                            setTimeout(function ()
//                            {
//                                $('#adhead').html('');
//                                $('#adhead').html('Daily total amount of Recoupment [30 days]');
//                                adjustchart(response);
//                            }, 5000);
//                        } else
//                        {
//                            msgbox("No Data", "Reports Form", "warning");
//                            $('#flading').hide();
//                        }
//                    }
//                });
//            });
//            $('#ad60').click(function () {
//                $('#flading').show();
//                $.ajax({
//                    url: "adjustmentchart",
//                    type: "get", //send it through get method
//                    data: {
//                        adjustment: 60
//                    }, success: function (response) {
//                        //   console.log(response);
//                        var txt = response;
//                        var obj = jQuery.parseJSON(txt);
//                        if (obj.length > 0)
//                        {
//                            setTimeout(function ()
//                            {
//                                $('#adhead').html('');
//                                $('#adhead').html('Daily total amount of Recoupment [60 days]');
//                                adjustchart(response);
//                            }, 5000);
//                        } else
//                        {
//                            msgbox("No Data", "Reports Form", "warning");
//                            $('#flading').hide();
//                        }
//                    }
//                });
//            });
//            $('#ad90').click(function () {
//                $('#flading').show();
//                $.ajax({
//                    url: "adjustmentchart",
//                    type: "get", //send it through get method
//                    data: {
//                        adjustment: 90
//                    }, success: function (response) {
//                        //   console.log(response);
//                        var txt = response;
//                        var obj = jQuery.parseJSON(txt);
//                        if (obj.length > 0)
//                        {
//                            setTimeout(function ()
//                            {
//                                $('#adhead').html('');
//                                $('#adhead').html('Daily total amount of Recoupment [90 days]');
//                                adjustchart(response);
//                            }, 5000);
//                        } else
//                        {
//                            msgbox("No Data", "Reports Form", "warning");
//                            $('#flading').hide();
//                        }
//                    }
//                });
//            });
//            $('#admon').click(function () {
//                $('#flading').show();
//                $.ajax({
//                    url: "adjustmentchart",
//                    type: "get", //send it through get method
//                    data: {
//                        adjustment: ((new Date).getDate()) - 1
//                    }, success: function (response) {
//                        //   console.log(response);
//                        var txt = response;
//                        var obj = jQuery.parseJSON(txt);
//                        if (obj.length > 0)
//                        {
//                            setTimeout(function ()
//                            {
//                                $('#adhead').html('');
//                                $('#adhead').html('Daily total amount of Recoupment [This Month]');
//                                adjustchart(response);
//                            }, 5000);
//                        } else
//                        {
//                            msgbox("No Data", "Reports Form", "warning");
//                            $('#flading').hide();
//                        }
//                    }
//                });
//            });
//            $('#adpremon').click(function () {
//                $('#flading').show();
//                $.ajax({
//                    url: "adjustmentchart",
//                    type: "get", //send it through get method
//                    data: {
//                        adjustment: 31
//                    }, success: function (response) {
//                        //   console.log(response);
//                        var txt = response;
//                        var obj = jQuery.parseJSON(txt);
//                        if (obj.length > 0)
//                        {
//                            setTimeout(function ()
//                            {
//                                $('#adhead').html('');
//                                $('#adhead').html('Daily total amount of Recoupment [Previous Month]');
//                                adjustchart(response);
//                            }, 5000);
//                        } else
//                        {
//                            msgbox("No Data", "Reports Form", "warning");
//                            $('#flading').hide();
//                        }
//                    }
//                });
//            });


            //----------------------------- updated by sivananthi
            var start, end;
            var ebdt = localStorage.getItem("ebdate");
            if (ebdt === null) {
                start = moment().startOf('month');
                end = moment();
                $('#eb-daterangepicker .form-control').val(start.format('MM/DD/YYYY') + ' / ' + end.format('MM/DD/YYYY'));
            } else {
                var currentVal = ebdt;
                start = currentVal.split(" / ")[0];
                end = currentVal.split(" / ")[1];
                $('#eb-daterangepicker .form-control').val(moment(start).format("MM/DD/YYYY") + ' / ' + moment(end).format("MM/DD/YYYY"));
                localStorage.setItem("ebdate", moment(start).format("MM/DD/YYYY") + ' / ' + moment(end).format("MM/DD/YYYY"));
            }

            $('#eb-daterangepicker').daterangepicker({
                parentEl: '1',
                buttonClasses: 'btn',
                applyClass: 'btn-primary',
                cancelClass: 'btn-secondary',
                startDate: start,
                endDate: end,
                showDropdowns: true,
                minDate: moment().subtract(10, 'year'),
                maxDate: moment(),
                ranges: {
                    'Last Year': [moment().subtract(1, 'year').startOf('year'), moment().subtract(1, 'year').endOf('year')],
                    'This Year': [moment().startOf('year'), moment().endOf('year')],
                    'This Month': [moment().startOf('month'), moment().endOf('month')],
                    'Previous Month': [moment().subtract(1, 'month').startOf('month'), moment().subtract(1, 'month').endOf('month')],
                    'Last 30 Days': [moment().subtract(29, 'days'), moment()],
                    'Last 60 Days': [moment().subtract(59, 'days'), moment()],
                    'Last 90 Days': [moment().subtract(89, 'days'), moment()]
                }
            },
                    function (startVal, endVal, label) {
                        $('#flading').show();
                        start = startVal.format('YYYY-MM-DD');
                        end = endVal.format('YYYY-MM-DD');
                        //alert(start);
                        // alert(end);
                        $.ajax({
                            url: "eobchart",
                            type: "get", //send it through get method
                            data: {
                                startDate: start,
                                endDate: end
                            }, success: function (response) {
                                var txt = response;
                                var obj = jQuery.parseJSON(txt);
                                let  eobcount = 0.0;
                                let  eobamount = 0.0;
                                console.log(obj);
                                console.log(response);
                                if (obj.length > 0)
                                {
                                    $('#ebhead').html('');
                                    if (label === "Custom Range")
                                    {
                                        var startRange = startVal.format('MM/DD/YYYY');
                                        var endRange = endVal.format('MM/DD/YYYY');
                                        $('#ebhead').html('Daily total amount of Paid ERAs ' + ' <span style="font-size:12px;">[' + startRange + "-" + endRange + ']</span>');
                                    } else
                                    {
                                        $('#ebhead').html('Daily total amount of Paid ERAs' + ' [' + label + ']');
                                    }
                                    for (var i = 0; i < obj.length; i++)
                                    {
                                        // eobcount = eobcount + parseFloat(1);
                                        eobcount = eobcount + parseFloat(obj[i].value);
                                        eobamount = eobamount + parseFloat(obj[i].value1);
                                    }


                                    $('#paidera').html('$ ' + eobamount.toFixed(0) + ' (' + eobcount.toFixed(0) + ') ');
                                    eobchart(response);
                                } else
                                {
                                    msgbox("No Data", "Reports Form", "warning");
                                    $('#flading').hide();
                                }
                            }
                        });
                    });
            var ebdt = localStorage.getItem("ebdate");
            if (ebdt === null) {
                start = moment().startOf('month');
                end = moment();
                $('#cl-daterangepicker .form-control').val(start.format('MM/DD/YYYY') + ' / ' + end.format('MM/DD/YYYY'));
            } else {
                var currentVal = ebdt;
                start = currentVal.split(" / ")[0];
                end = currentVal.split(" / ")[1];
                $('#cl-daterangepicker .form-control').val(moment(start).format("MM/DD/YYYY") + ' / ' + moment(end).format("MM/DD/YYYY"));
                localStorage.setItem("ebdate", moment(start).format("MM/DD/YYYY") + ' / ' + moment(end).format("MM/DD/YYYY"));
            }

            $('#cl-daterangepicker').daterangepicker({
                buttonClasses: 'btn',
                applyClass: 'btn-primary',
                cancelClass: 'btn-secondary',
                startDate: start,
                endDate: end,
                showDropdowns: true,
                minDate: moment().subtract(10, 'year'),
                maxDate: moment(),
                ranges: {
                    'Last Year': [moment().subtract(1, 'year').startOf('year'), moment().subtract(1, 'year').endOf('year')],
                    'This Year': [moment().startOf('year'), moment().endOf('year')],
                    'This Month': [moment().startOf('month'), moment().endOf('month')],
                    'Previous Month': [moment().subtract(1, 'month').startOf('month'), moment().subtract(1, 'month').endOf('month')],
                    'Last 30 Days': [moment().subtract(29, 'days'), moment()],
                    'Last 60 Days': [moment().subtract(59, 'days'), moment()],
                    'Last 90 Days': [moment().subtract(89, 'days'), moment()]
                }
            },
                    function (startVal, endVal, label) {
                        $('#flading').show();
                        start = startVal.format('YYYY-MM-DD');
                        end = endVal.format('YYYY-MM-DD');
                        $.ajax({
                            url: "claimchart",
                            type: "get", //send it through get method
                            data: {
//                    claim_value: ((new Date).getDate()) - 1
                                startDate: start,
                                endDate: end

                            }, success: function (response) {
                                var txt = response;
                                var obj = jQuery.parseJSON(txt);
                                var claimcount = 0;
                                var claimamount = 0;
                                if (obj.length > 0)
                                {
                                    $('#clhead').html('');
                                    if (label == "Custom Range")
                                    {
                                        var startRange = startVal.format('MM/DD/YYYY');
                                        var endRange = endVal.format('MM/DD/YYYY');
                                        $('#clhead').html('Daily total amount of Paid Claims ' + '<span style="font-size:12px;"> [' + startRange + "-" + endRange + ']</span>');
                                    } else
                                    {
                                        $('#clhead').html('Daily total amount of Paid Claims' + ' [' + label + ']');
                                    }
                                    for (var i = 0; i < obj.length; i++)
                                    {
                                        claimcount = claimcount + parseFloat(obj[i].value);
                                        claimamount = claimamount + parseFloat(obj[i].value1);
                                    }

                                    $('#paidclaim').html('$ ' + claimamount.toFixed(0) + ' (' + claimcount.toFixed(0) + ') ');
                                    claimchart(response);
                                } else
                                {
                                    msgbox("No Data", "Reports Form", "warning");
                                    $('#flading').hide();
                                }
                            }
                        });
                    });
            var ebdt = localStorage.getItem("ebdate");
            if (ebdt === null) {
                start = moment().startOf('month');
                end = moment();
                $('#ad-daterangepicker .form-control').val(start.format('MM/DD/YYYY') + ' / ' + end.format('MM/DD/YYYY'));
            } else {
                var currentVal = ebdt;
                start = currentVal.split(" / ")[0];
                end = currentVal.split(" / ")[1];
                $('#ad-daterangepicker .form-control').val(moment(start).format("MM/DD/YYYY") + ' / ' + moment(end).format("MM/DD/YYYY"));
                localStorage.setItem("ebdate", moment(start).format("MM/DD/YYYY") + ' / ' + moment(end).format("MM/DD/YYYY"));
            }

            $('#ad-daterangepicker').daterangepicker({
                buttonClasses: 'btn',
                applyClass: 'btn-primary',
                cancelClass: 'btn-secondary',
                startDate: start,
                endDate: end,
                showDropdowns: true,
                minDate: moment().subtract(10, 'year'),
                maxDate: moment(),
                ranges: {
                    'Last Year': [moment().subtract(1, 'year').startOf('year'), moment().subtract(1, 'year').endOf('year')],
                    'This Year': [moment().startOf('year'), moment().endOf('year')],
                    'This Month': [moment().startOf('month'), moment().endOf('month')],
                    'Previous Month': [moment().subtract(1, 'month').startOf('month'), moment().subtract(1, 'month').endOf('month')],
                    'Last 30 Days': [moment().subtract(29, 'days'), moment()],
                    'Last 60 Days': [moment().subtract(59, 'days'), moment()],
                    'Last 90 Days': [moment().subtract(89, 'days'), moment()]
                }
            },
                    function (startVal, endVal, label) {
                        $('#flading').show();
                        start = startVal.format('YYYY-MM-DD');
                        end = endVal.format('YYYY-MM-DD');
                        $.ajax({
                            url: "adjustmentchart",
                            type: "get", //send it through get method
                            data: {
                                // adjustment: ((new Date).getDate()) - 1
                                startDate: start,
                                endDate: end
                            }, success: function (response) {
                                //   console.log(response);
                                var adcount = 0;
                                var adamount = 0;
                                var txt = response;
                                var obj = jQuery.parseJSON(txt);
                                if (obj.length > 0)
                                {
                                    $('#adhead').html('');
                                    if (label == "Custom Range")
                                    {
                                        var startRange = startVal.format('MM/DD/YYYY');
                                        var endRange = endVal.format('MM/DD/YYYY');
                                        $('#adhead').html('Daily total amount of Recoupment ' + '<span style="font-size:12px;">[' + startRange + "-" + endRange + ']</span>');
                                    } else
                                    {
                                        $('#adhead').html('Daily total amount of Recoupment' + ' [' + label + ']');
                                    }
                                    for (var i = 0; i < obj.length; i++)
                                    {
                                        adcount = adcount + parseFloat(obj[i].value);
                                        adamount = adamount + parseFloat(obj[i].value1);
                                    }

                                    $('#recoupment').html('$ ' + adamount.toFixed(0) + ' (' + adcount.toFixed(0) + ') ');
                                    adjustchart(response);
                                } else
                                {
                                    msgbox("No Data", "Reports Form", "warning");
                                    $('#flading').hide();
                                }
                            }
                        });
                    });
            var ebdt = localStorage.getItem("ebdate");
            if (ebdt === null) {
                start = moment().startOf('month');
                end = moment();
                $('#payer-daterangepicker .form-control').val(start.format('MM/DD/YYYY') + ' / ' + end.format('MM/DD/YYYY'));
            } else {
                var currentVal = ebdt;
                start = currentVal.split(" / ")[0];
                end = currentVal.split(" / ")[1];
                $('#payer-daterangepicker .form-control').val(moment(start).format("MM/DD/YYYY") + ' / ' + moment(end).format("MM/DD/YYYY"));
                localStorage.setItem("ebdate", moment(start).format("MM/DD/YYYY") + ' / ' + moment(end).format("MM/DD/YYYY"));
            }

            $('#payer-daterangepicker').daterangepicker({
                buttonClasses: 'btn',
                applyClass: 'btn-primary',
                cancelClass: 'btn-secondary',
                startDate: start,
                endDate: end,
                showDropdowns: true,
                minDate: moment().subtract(10, 'year'),
                maxDate: moment(),
                ranges: {
                    'Last Year': [moment().subtract(1, 'year').startOf('year'), moment().subtract(1, 'year').endOf('year')],
                    'This Year': [moment().startOf('year'), moment().endOf('year')],
                    'This Month': [moment().startOf('month'), moment().endOf('month')],
                    'Previous Month': [moment().subtract(1, 'month').startOf('month'), moment().subtract(1, 'month').endOf('month')],
                    'Last 30 Days': [moment().subtract(29, 'days'), moment()],
                    'Last 60 Days': [moment().subtract(59, 'days'), moment()],
                    'Last 90 Days': [moment().subtract(89, 'days'), moment()]
                }
            },
                    function (startVal, endVal, label) {
                        $('#flading').show();
                        start = startVal.format('YYYY-MM-DD');
                        end = endVal.format('YYYY-MM-DD');
                        $.ajax({
                            url: "payorcontrichart",
                            type: "get", //send it through get method
                            data: {
//                    payor_util: ((new Date).getDate()) - 1
                                startDate: start,
                                endDate: end
                            }, success: function (response) {
                                var txt = response;
                                var obj = jQuery.parseJSON(txt);
                                if (obj.length > 0)
                                {
                                    $('#payerhead').html('');
                                    if (label == "Custom Range")
                                    {
                                        var startRange = startVal.format('MM/DD/YYYY');
                                        var endRange = endVal.format('MM/DD/YYYY');
                                        $('#payerhead').html('Payor contribution  ' + '<span style="font-size:12px;">[' + startRange + "-" + endRange + ']</span>');
                                    } else
                                    {
                                        $('#payerhead').html('Payor contribution ' + ' [' + label + ']');
                                    }
                                    piechart_payer(response);
                                } else
                                {
                                    msgbox("No Data", "Reports Form", "warning");
                                    $('#flading').hide();
                                }
                            }
                        });
                    });
            var ebdt = localStorage.getItem("ebdate");
            if (ebdt === null) {
                start = moment().startOf('month');
                end = moment();
                $('#es-daterangepicker .form-control').val(start.format('MM/DD/YYYY') + ' / ' + end.format('MM/DD/YYYY'));
            } else {
                var currentVal = ebdt;
                start = currentVal.split(" / ")[0];
                end = currentVal.split(" / ")[1];
                $('#es-daterangepicker .form-control').val(moment(start).format("MM/DD/YYYY") + ' / ' + moment(end).format("MM/DD/YYYY"));
                localStorage.setItem("ebdate", moment(start).format("MM/DD/YYYY") + ' / ' + moment(end).format("MM/DD/YYYY"));
            }

            $('#es-daterangepicker').daterangepicker({
                buttonClasses: 'btn',
                applyClass: 'btn-primary',
                cancelClass: 'btn-secondary',
                startDate: start,
                endDate: end,
                showDropdowns: true,
                minDate: moment().subtract(10, 'year'),
                maxDate: moment(),
                ranges: {
                    'Last Year': [moment().subtract(1, 'year').startOf('year'), moment().subtract(1, 'year').endOf('year')],
                    'This Year': [moment().startOf('year'), moment().endOf('year')],
                    'This Month': [moment().startOf('month'), moment().endOf('month')],
                    'Previous Month': [moment().subtract(1, 'month').startOf('month'), moment().subtract(1, 'month').endOf('month')],
                    'Last 30 Days': [moment().subtract(29, 'days'), moment()],
                    'Last 60 Days': [moment().subtract(59, 'days'), moment()],
                    'Last 90 Days': [moment().subtract(89, 'days'), moment()]
                }
            },
                    function (startVal, endVal, label) {
                        $('#flading').show();
                        start = startVal.format('YYYY-MM-DD');
                        end = endVal.format('YYYY-MM-DD');
                        $.ajax({
                            url: "sbdtchart",
                            type: "get", //send it through get method
                            data: {
//                    sb_value: ((new Date).getDate()) - 1
                                startDate: start,
                                endDate: end
                            }, success: function (response) {
                                var txt = response;
                                var obj = jQuery.parseJSON(txt);
                                if (obj.length > 0)
                                {
                                    $('#eshead').html('');
                                    if (label == "Custom Range")
                                    {
                                        var startRange = startVal.format('MM/DD/YYYY');
                                        var endRange = endVal.format('MM/DD/YYYY');
                                        $('#eshead').html('No.of E-Superbill ' + '<span style="font-size:12px;">[' + startRange + "-" + endRange + ']</span>');
                                    } else
                                    {
                                        $('#eshead').html('No.of E-Superbill ' + ' [' + label + ']');
                                    }
                                    eschart(response);
                                } else
                                {
                                    msgbox("No Data", "Reports Form", "warning");
                                    $('#flading').hide();
                                }
                            }

                        });
                    });

            var ebdt = localStorage.getItem("ebdate");
            if (ebdt === null) {
                start = moment().startOf('month');
                end = moment();
                $('#claimprocess-daterangepicker .form-control').val(start.format('MM/DD/YYYY') + ' / ' + end.format('MM/DD/YYYY'));
            } else {
                var currentVal = ebdt;
                start = currentVal.split(" / ")[0];
                end = currentVal.split(" / ")[1];
                $('#claimprocess-daterangepicker .form-control').val(moment(start).format("MM/DD/YYYY") + ' / ' + moment(end).format("MM/DD/YYYY"));
                localStorage.setItem("ebdate", moment(start).format("MM/DD/YYYY") + ' / ' + moment(end).format("MM/DD/YYYY"));
            }

            $('#claimprocess-daterangepicker').daterangepicker({
                buttonClasses: 'btn',
                applyClass: 'btn-primary',
                cancelClass: 'btn-secondary',
                startDate: start,
                endDate: end,
                showDropdowns: true,
                minDate: moment().subtract(10, 'year'),
                maxDate: moment(),
                ranges: {
                    'Last Year': [moment().subtract(1, 'year').startOf('year'), moment().subtract(1, 'year').endOf('year')],
                    'This Year': [moment().startOf('year'), moment().endOf('year')],
                    'This Month': [moment().startOf('month'), moment().endOf('month')],
                    'Previous Month': [moment().subtract(1, 'month').startOf('month'), moment().subtract(1, 'month').endOf('month')],
                    'Last 30 Days': [moment().subtract(29, 'days'), moment()],
                    'Last 60 Days': [moment().subtract(59, 'days'), moment()],
                    'Last 90 Days': [moment().subtract(89, 'days'), moment()]}
            },
                    function (startVal, endVal, label) {
                        $('#flading').show();
                        start = startVal.format('YYYY-MM-DD');
                        end = endVal.format('YYYY-MM-DD');
                        $.ajax({
                            url: "claimtrackerchart",
                            type: "get", //send it through get method
                            data: {
//                    claim_tracker: ((new Date).getDate()) - 1
                                startDate: start,
                                endDate: end
                            }, success: function (response) {
                                var txt = response;
                                var obj = jQuery.parseJSON(txt);
                                if (obj.length > 0)
                                {
                                    $('#claimprocesshead').html('');
                                    if (label == "Custom Range")
                                    {
                                        var startRange = startVal.format('MM/DD/YYYY');
                                        var endRange = endVal.format('MM/DD/YYYY');
                                        $('#claimprocesshead').html('Claims Generated' + '<span style="font-size:12px;">[' + startRange + "-" + endRange + ']</span>');
                                    } else
                                    {
                                        $('#claimprocesshead').html('Claims Generated ' + ' [' + label + ']');
                                    }
                                    claimprocesschart(response);
                                } else
                                {
                                    msgbox("No Data", "Reports Form", "warning");
                                    $('#flading').hide();
                                }
                            }
                        });
                    });
            var ebdt = localStorage.getItem("ebdate");
            if (ebdt === null) {
                start = moment().startOf('month');
                end = moment();
                $('#charge-daterangepicker .form-control').val(start.format('MM/DD/YYYY') + ' / ' + end.format('MM/DD/YYYY'));
            } else {
                var currentVal = ebdt;
                start = currentVal.split(" / ")[0];
                end = currentVal.split(" / ")[1];
                $('#charge-daterangepicker .form-control').val(moment(start).format("MM/DD/YYYY") + ' / ' + moment(end).format("MM/DD/YYYY"));
                localStorage.setItem("ebdate", moment(start).format("MM/DD/YYYY") + ' / ' + moment(end).format("MM/DD/YYYY"));
            }

            $('#charge-daterangepicker').daterangepicker({
                buttonClasses: 'btn',
                applyClass: 'btn-primary',
                cancelClass: 'btn-secondary',
                startDate: start,
                endDate: end,
                showDropdowns: true,
                minDate: moment().subtract(10, 'year'),
                maxDate: moment(),
                ranges: {
                    'Last Year': [moment().subtract(1, 'year').startOf('year'), moment().subtract(1, 'year').endOf('year')],
                    'This Year': [moment().startOf('year'), moment().endOf('year')],
                    'This Month': [moment().startOf('month'), moment().endOf('month')],
                    'Previous Month': [moment().subtract(1, 'month').startOf('month'), moment().subtract(1, 'month').endOf('month')],
                    'Last 30 Days': [moment().subtract(29, 'days'), moment()],
                    'Last 60 Days': [moment().subtract(59, 'days'), moment()],
                    'Last 90 Days': [moment().subtract(89, 'days'), moment()]
                }
            },
                    function (startVal, endVal, label) {
                        $('#flading').show();
                        start = startVal.format('YYYY-MM-DD');
                        end = endVal.format('YYYY-MM-DD');
                        $.ajax({
                            url: "denialchart",
                            type: "get", //send it through get method
                            data: {
//                    denial_value: ((new Date).getDate()) - 1
                                startDate: start,
                                endDate: end
                            }, success: function (response) {
                                var txt = response;
                                var obj = jQuery.parseJSON(txt);
                                if (obj.length > 0)
                                {
                                    $('#chargehead').html('');
                                    if (label == "Custom Range")
                                    {
                                        var startRange = startVal.format('MM/DD/YYYY');
                                        var endRange = endVal.format('MM/DD/YYYY');
                                        $('#chargehead').html('Charge Value of denied Claims' + '<span style="font-size:12px;">[' + startRange + "-" + endRange + ']</span>');
                                    } else
                                    {
                                        $('#chargehead').html('Charge Value of denied Claims ' + ' [' + label + ']');
                                    }
                                    denialchart(response);
                                } else
                                {
                                    msgbox("No Data", "Reports Form", "warning");
                                    $('#flading').hide();
                                }
                            }
                        });
                    });
            var ebdt = localStorage.getItem("ebdate");
            if (ebdt === null) {
                start = moment().startOf('month');
                end = moment();
                $('#partycharge-daterangepicker .form-control').val(start.format('MM/DD/YYYY') + ' / ' + end.format('MM/DD/YYYY'));
            } else {
                var currentVal = ebdt;
                start = currentVal.split(" / ")[0];
                end = currentVal.split(" / ")[1];
                $('#partycharge-daterangepicker .form-control').val(moment(start).format("MM/DD/YYYY") + ' / ' + moment(end).format("MM/DD/YYYY"));
                localStorage.setItem("ebdate", moment(start).format("MM/DD/YYYY") + ' / ' + moment(end).format("MM/DD/YYYY"));
            }

            $('#partycharge-daterangepicker').daterangepicker({
                buttonClasses: 'btn',
                applyClass: 'btn-primary',
                cancelClass: 'btn-secondary',
                startDate: start,
                endDate: end,
                showDropdowns: true,
                minDate: moment().subtract(10, 'year'),
                maxDate: moment(),
                ranges: {
                    'Last Year': [moment().subtract(1, 'year').startOf('year'), moment().subtract(1, 'year').endOf('year')],
                    'This Year': [moment().startOf('year'), moment().endOf('year')],
                    'This Month': [moment().startOf('month'), moment().endOf('month')],
                    'Previous Month': [moment().subtract(1, 'month').startOf('month'), moment().subtract(1, 'month').endOf('month')],
                    'Last 30 Days': [moment().subtract(29, 'days'), moment()],
                    'Last 60 Days': [moment().subtract(59, 'days'), moment()],
                    'Last 90 Days': [moment().subtract(89, 'days'), moment()]
                }
            },
                    function (startVal, endVal, label) {
                        $('#flading').show();
                        start = startVal.format('YYYY-MM-DD');
                        end = endVal.format('YYYY-MM-DD');
                        $.ajax({
                            url: "partlydenialchart",
                            type: "get", //send it through get method
                            data: {
//                    part_denial_value: ((new Date).getDate()) - 1
                                startDate: start,
                                endDate: end
                            }, success: function (response) {
                                var txt = response;
                                var obj = jQuery.parseJSON(txt);
                                if (obj.length > 0)
                                {
                                    $('#partychargehead').html('');
                                    if (label == "Custom Range")
                                    {
                                        var startRange = startVal.format('MM/DD/YYYY');
                                        var endRange = endVal.format('MM/DD/YYYY');
                                        $('#partychargehead').html('Charge Value of partly paid Claims' + '<span style="font-size:12px;">[' + startRange + "-" + endRange + ']</span>');
                                    } else
                                    {
                                        $('#partychargehead').html('Charge Value of partly paid Claims ' + ' [' + label + ']');
                                    }
                                    partydenialchart(response);
                                } else
                                {
                                    msgbox("No Data", "Reports Form", "warning");
                                    $('#flading').hide();
                                }
                            }
                        });
                    });
            var ebdt = localStorage.getItem("ebdate");
            if (ebdt === null) {
                start = moment().startOf('month');
                end = moment();
                $('#ev-daterangepicker .form-control').val(start.format('MM/DD/YYYY') + ' / ' + end.format('MM/DD/YYYY'));
            } else {
                var currentVal = ebdt;
                start = currentVal.split(" / ")[0];
                end = currentVal.split(" / ")[1];
                $('#ev-daterangepicker .form-control').val(moment(start).format("MM/DD/YYYY") + ' / ' + moment(end).format("MM/DD/YYYY"));
                localStorage.setItem("ebdate", moment(start).format("MM/DD/YYYY") + ' / ' + moment(end).format("MM/DD/YYYY"));
            }

            $('#ev-daterangepicker').daterangepicker({
                buttonClasses: 'btn',
                applyClass: 'btn-primary',
                cancelClass: 'btn-secondary',
                startDate: start,
                endDate: end,
                showDropdowns: true,
                minDate: moment().subtract(10, 'year'),
                maxDate: moment(),
                ranges: {
                    'Last Year': [moment().subtract(1, 'year').startOf('year'), moment().subtract(1, 'year').endOf('year')],
                    'This Year': [moment().startOf('year'), moment().endOf('year')],
                    'This Month': [moment().startOf('month'), moment().endOf('month')],
                    'Previous Month': [moment().subtract(1, 'month').startOf('month'), moment().subtract(1, 'month').endOf('month')],
                    'Last 30 Days': [moment().subtract(29, 'days'), moment()],
                    'Last 60 Days': [moment().subtract(59, 'days'), moment()],
                    'Last 90 Days': [moment().subtract(89, 'days'), moment()]}
            },
                    function (startVal, endVal, label) {
                        $('#flading').show();
                        start = startVal.format('YYYY-MM-DD');
                        end = endVal.format('YYYY-MM-DD');
                        $.ajax({
                            url: "evchart",
                            type: "get", //send it through get method
                            data: {
//                    ev_value: ((new Date).getDate()) - 1
                                startDate: start,
                                endDate: end
                            },
                            success: function (response) {
                                console.log(response);
                                var txt = response;
                                var obj = jQuery.parseJSON(txt);
                                if (obj.length > 0)
                                {
                                    $('#evhead').html('');
                                    if (label == "Custom Range")
                                    {
                                        var startRange = startVal.format('MM/DD/YYYY');
                                        var endRange = endVal.format('MM/DD/YYYY');
                                        $('#evhead').html('No.of EVs ' + '<span style="font-size:12px;">[' + startRange + "-" + endRange + ']</span>');
                                    } else
                                    {
                                        $('#evhead').html('No.of EVs ' + ' [' + label + ']');
                                    }
                                    evchart(response);
                                } else
                                {
                                    msgbox("No Data", "Reports Form", "warning");
                                    $('#flading').hide();
                                }
                            }
                        });
                    });
            var ebdt = localStorage.getItem("ebdate");
            if (ebdt === null) {
                start = moment().startOf('month');
                end = moment();
                $('#evstatus-daterangepicker .form-control').val(start.format('MM/DD/YYYY') + ' / ' + end.format('MM/DD/YYYY'));
            } else {
                var currentVal = ebdt;
                start = currentVal.split(" / ")[0];
                end = currentVal.split(" / ")[1];
                $('#evstatus-daterangepicker .form-control').val(moment(start).format("MM/DD/YYYY") + ' / ' + moment(end).format("MM/DD/YYYY"));
                localStorage.setItem("ebdate", moment(start).format("MM/DD/YYYY") + ' / ' + moment(end).format("MM/DD/YYYY"));
            }

            $('#evstatus-daterangepicker').daterangepicker({
                buttonClasses: 'btn',
                applyClass: 'btn-primary',
                cancelClass: 'btn-secondary',
                startDate: start,
                endDate: end,
                showDropdowns: true,
                minDate: moment().subtract(10, 'year'),
                maxDate: moment(),
                ranges: {
                    'Last Year': [moment().subtract(1, 'year').startOf('year'), moment().subtract(1, 'year').endOf('year')],
                    'This Year': [moment().startOf('year'), moment().endOf('year')],
                    'This Month': [moment().startOf('month'), moment().endOf('month')],
                    'Previous Month': [moment().subtract(1, 'month').startOf('month'), moment().subtract(1, 'month').endOf('month')],
                    'Last 30 Days': [moment().subtract(29, 'days'), moment()],
                    'Last 60 Days': [moment().subtract(59, 'days'), moment()],
                    'Last 90 Days': [moment().subtract(89, 'days'), moment()]
                }
            },
                    function (startVal, endVal, label) {
                        $('#flading').show();
                        start = startVal.format('YYYY-MM-DD');
                        end = endVal.format('YYYY-MM-DD');
                        $.ajax({
                            url: "evstatuschart",
                            type: "get", //send it through get method
                            data: {
//                    ev_status: ((new Date).getDate()) - 1
                                startDate: start,
                                endDate: end
                            }, success: function (response) {
                                var txt = response;
                                var obj = jQuery.parseJSON(txt);
                                if (obj.length > 0)
                                {
                                    $('#evstatushead').html('');
                                    if (label == "Custom Range")
                                    {
                                        var startRange = startVal.format('MM/DD/YYYY');
                                        var endRange = endVal.format('MM/DD/YYYY');
                                        $('#evstatushead').html('EV Utilization - (Status using EV) ' + '<span style="font-size:12px;">[' + startRange + "-" + endRange + ']</span>');
                                    } else
                                    {
                                        $('#evstatushead').html('EV Utilization - (Status using EV) ' + ' [' + label + ']');
                                    }
                                    piechart_ev_status(response);
                                } else
                                {
                                    msgbox("No Data", "Reports Form", "warning");
                                    $('#flading').hide();
                                }
                            }
                        });
                    });
            var ebdt = localStorage.getItem("ebdate");
            if (ebdt === null) {
                start = moment().startOf('month');
                end = moment();
                $('#payee-daterangepicker .form-control').val(start.format('MM/DD/YYYY') + ' / ' + end.format('MM/DD/YYYY'));
            } else {
                var currentVal = ebdt;
                start = currentVal.split(" / ")[0];
                end = currentVal.split(" / ")[1];
                $('#payee-daterangepicker .form-control').val(moment(start).format("MM/DD/YYYY") + ' / ' + moment(end).format("MM/DD/YYYY"));
                localStorage.setItem("ebdate", moment(start).format("MM/DD/YYYY") + ' / ' + moment(end).format("MM/DD/YYYY"));
            }

            $('#payee-daterangepicker').daterangepicker({
                buttonClasses: 'btn',
                applyClass: 'btn-primary',
                cancelClass: 'btn-secondary',
                startDate: start,
                endDate: end,
                showDropdowns: true,
                minDate: moment().subtract(10, 'year'),
                maxDate: moment(),
                ranges: {
                    'Last Year': [moment().subtract(1, 'year').startOf('year'), moment().subtract(1, 'year').endOf('year')],
                    'This Year': [moment().startOf('year'), moment().endOf('year')],
                    'This Month': [moment().startOf('month'), moment().endOf('month')],
                    'Previous Month': [moment().subtract(1, 'month').startOf('month'), moment().subtract(1, 'month').endOf('month')],
                    'Last 30 Days': [moment().subtract(29, 'days'), moment()],
                    'Last 60 Days': [moment().subtract(59, 'days'), moment()],
                    'Last 90 Days': [moment().subtract(89, 'days'), moment()]
                }
            },
                    function (startVal, endVal, label) {
                        $('#flading').show();
                        start = startVal.format('YYYY-MM-DD');
                        end = endVal.format('YYYY-MM-DD');
                        $.ajax({
                            url: "pracontrichart",
                            type: "get", //send it through get method
                            data: {
//                    pra_contri: ((new Date).getDate()) - 1
                                startDate: start,
                                endDate: end
                            }, success: function (response) {
                                //   console.log(response);
                                var txt = response;
                                var obj = jQuery.parseJSON(txt);
                                if (obj.length > 0)
                                {
                                    $('#practicehead').html('');
                                    if (label == "Custom Range")
                                    {
                                        var startRange = startVal.format('MM/DD/YYYY');
                                        var endRange = endVal.format('MM/DD/YYYY');
                                        $('#practicehead').html('Practice contribution (Paid ERAs) ' + '<span style="font-size:12px;">[' + startRange + "-" + endRange + ']</span>');
                                    } else
                                    {
                                        $('#practicehead').html('Practice contribution (Paid ERAs) ' + ' [' + label + ']');
                                    }
                                    piechart_payee(response);
                                } else
                                {
                                    msgbox("No Data", "Reports Form", "warning");
                                    $('#flading').hide();
                                }
                            }
                        });
                    });
            var ebdt = localStorage.getItem("ebdate");
            if (ebdt === null) {
                start = moment().startOf('month');
                end = moment();
                $('#evutil-daterangepicker .form-control').val(start.format('MM/DD/YYYY') + ' / ' + end.format('MM/DD/YYYY'));
            } else {
                var currentVal = ebdt;
                start = currentVal.split(" / ")[0];
                end = currentVal.split(" / ")[1];
                $('#evutil-daterangepicker .form-control').val(moment(start).format("MM/DD/YYYY") + ' / ' + moment(end).format("MM/DD/YYYY"));
                localStorage.setItem("ebdate", moment(start).format("MM/DD/YYYY") + ' / ' + moment(end).format("MM/DD/YYYY"));
            }

            $('#evutil-daterangepicker').daterangepicker({
                buttonClasses: 'btn',
                applyClass: 'btn-primary',
                cancelClass: 'btn-secondary',
                startDate: start,
                endDate: end,
                showDropdowns: true,
                minDate: moment().subtract(10, 'year'),
                maxDate: moment(),
                ranges: {
                    'Last Year': [moment().subtract(1, 'year').startOf('year'), moment().subtract(1, 'year').endOf('year')],
                    'This Year': [moment().startOf('year'), moment().endOf('year')],
                    'This Month': [moment().startOf('month'), moment().endOf('month')],
                    'Previous Month': [moment().subtract(1, 'month').startOf('month'), moment().subtract(1, 'month').endOf('month')],
                    'Last 30 Days': [moment().subtract(29, 'days'), moment()],
                    'Last 60 Days': [moment().subtract(59, 'days'), moment()],
                    'Last 90 Days': [moment().subtract(89, 'days'), moment()]
                }
            },
                    function (startVal, endVal, label) {
                        $('#flading').show();
                        start = startVal.format('YYYY-MM-DD');
                        end = endVal.format('YYYY-MM-DD');
                        $.ajax({
                            url: "evutilchart",
                            type: "get", //send it through get method
                            data: {
//                    ev_util: ((new Date).getDate()) - 1
                                startDate: start,
                                endDate: end
                            }, success: function (response) {
                                var txt = response;
                                var obj = jQuery.parseJSON(txt);
                                if (obj.length > 0)
                                {
                                    $('#evutilhead').html('');
                                    if (label == "Custom Range")
                                    {
                                        var startRange = startVal.format('MM/DD/YYYY');
                                        var endRange = endVal.format('MM/DD/YYYY');
                                        $('#evutilhead').html('EV Utilization - (Practices using EV) ' + ' <span style="font-size:12px;">[' + startRange + "-" + endRange + ']</span>');
                                    } else
                                    {
                                        $('#evutilhead').html('EV Utilization - (Practices using EV) ' + ' [' + label + ']');
                                    }
                                    piechart_ev(response);
                                } else
                                {
                                    msgbox("No Data", "Reports Form", "warning");
                                    $('#flading').hide();
                                }
                            }
                        });
                    });
        });



    </script>



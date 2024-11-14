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
        <title>Job Details</title>
        <jsp:include page="includes/header.jsp"></jsp:include>

            <style>

                .loader{
                    position: fixed;
                    left: 0px;
                    top: 0px;
                    width: 100%;
                    height: 100%;
                    z-index: 9999;
                    background: url("data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='40' height='40' viewBox='0 0 50 50'%3E%3Cpath d='M28.43 6.378C18.27 4.586 8.58 11.37 6.788 21.533c-1.791 10.161 4.994 19.851 15.155 21.643l.707-4.006C14.7 37.768 9.392 30.189 10.794 22.24c1.401-7.95 8.981-13.258 16.93-11.856l.707-4.006z'%3E%3CanimateTransform attributeType='xml' attributeName='transform' type='rotate' from='0 25 25' to='360 25 25' dur='0.6s' repeatCount='indefinite'/%3E%3C/path%3E%3C/svg%3E") center / 50px no-repeat;
                }
                .card .card-block, .card .card-body {
                    padding: 7px 25px !important;
                }


                .note-view{
                    display:none !important;
                }

                .progress-bar1 {
                    background: linear-gradient(
                        -45deg, #19BCBF, #149698);
                }
                .progress-bar1 {
                    display: -ms-flexbox;
                    display: flex;
                    -ms-flex-direction: column;
                    flex-direction: column;
                    -ms-flex-pack: center;
                    justify-content: center;
                    color: #fff;
                    text-align: center;
                    white-space: nowrap;
                    background-color: #007bff;
                    transition: width .6s ease;
                }

                .progress1 {
                    height: 12px;
                    font-size: 10px;
                    background-color: #eff3f6;
                    border-radius: 0;
                    overflow: visible;
                }
                .progress1 {
                    display: -ms-flexbox;
                    display: flex;
                    height: 1rem;
                    overflow: hidden;
                    font-size: .75rem;
                    background-color: #e9ecef;
                    border-radius: 0.25rem;
                }


                .dataTables_scrollBody thead tr[role="row"]{
                    visibility: visible !important;
                }


            </style>


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
                                            <div class="dt-responsive table-responsive">

                                                <table class="table table-striped table-bordered nowrap">
                                                    <thead>
                                                        <tr>
                                                            <th rowspan="1" colspan="5" style="background: antiquewhite !important; color: black !important;">Job number : <span id="jobnumber" /></th>
                                                            <th rowspan="1" colspan="5" style="background: antiquewhite !important; color: black !important;">Job Type : <span id="job_type" /></th>
                                                            <th rowspan="1" colspan="5" style="background: antiquewhite !important; color: black !important;">Scheduled : <span id="scheduled" /></th>
                                                        </tr>
                                                        <tr style="background: antiquewhite !important;">  
                                                            <th rowspan="1" colspan="5" style="background: antiquewhite !important; color: black !important;">Schedule Type : <span id="schedule_type" /></th>
                                                            <th rowspan="1" colspan="5" style="background: antiquewhite !important; color: black !important;">Filename :  <span id="filename" /></th>
                                                            <th rowspan="1" colspan="5" style="background: antiquewhite !important; color: black !important;">Job Status : <span id="job_status" /></th>
                                                        </tr>
                                                        <tr style="background: antiquewhite !important;">  
                                                            <th rowspan="1" colspan="5" style="background: antiquewhite !important; color: black !important;">Practice : <span id="jobpractice" /></th>
                                                            <th rowspan="1" colspan="5" style="background: antiquewhite !important; color: black !important;">Provider : <span id="jobprovider" /></th> 
                                                            <th rowspan="1" colspan="5" style="background: antiquewhite !important; color: black !important;">Created By : <span id="username" /></th>
                                                        </tr>
                                                        <tr>
                                                    </thead></table>
                                                <br><br>

                                                <div class="tableFixHead1 tablehide" style="overflow:scroll;">  
                                                    <table id="simpletable" width="98%" style="width: 0px;" class="table table-striped table-bordered nowrap">
                                                        <thead>

                                                            <tr>
                                                                <th>Jobid</th>
                                                                <th>BRID</th>
                                                                <th>Status</th>
                                                                <th>Pat_name</th>
                                                                <th>Mem_ID</th>
                                                                <th>Pay_ID</th>
                                                                <th>DOS</th>
                                                                <th>Sex</th>
                                                                <th>Plan </th>
                                                                <th>Payor</th>
                                                                <th>Group</th>
                                                                <th>Ded_Fam_Rem</th>
                                                                <th>Ded_Ind_Rem</th>
                                                                <th>OOP_Fam_Rem</th>
                                                                <th>OOP_Ind_Rem</th>
                                                                <th>CoIns_Fam</th>
                                                                <th>CoIns_Ind</th>
                                                                <th>CoPay_Fam</th>
                                                                <th>CoPay_Ind</th>
                                                                <th>Ded_Fam_CY</th>
                                                                <th>Ded_Ind_CY</th>
                                                                <th>OOP_Fam_CY</th>
                                                                <th>OOP_Ind_CY</th>
                                                                <th>PCP_Copay_IN</th>
                                                                <th>Error_Msg</th>
                                                                <th>Subscriber</th>
                                                                <th>Sub. DOB</th>
                                                                <th>Relationship</th>
                                                                <th>Dependent</th>
                                                                <th>Dep. DOB</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>

                                                        <c:forEach var="job" items="${jobdetailslist}">


                                                            <tr>
                                                                <td>${job.jobid}</td>
                                                                <td><a target='_blank'  href='eligibilityresponse?rid=${job.request_id}' class='btn-icon'>${job.request_id}</a></td>
                                                                <td>${job.active}</td>
                                                                <td>${job.patientname} ${job.dob} </td>
                                                                <td>${job.memberid}</td>
                                                                <td>${job.payor_code}</td>   
                                                                <td>${job.dos}</td>
                                                                <td>${job.gender}</td>
                                                                <td  data-toggle="tooltip" data-placement="top" title="" data-original-title="${job.plan}">${job.plan}</td>
                                                                <td>${job.payor}</td>
                                                                <td>${job.group_id}</td>
                                                                <td>${job.fam_ded_rem}</td>
                                                                <td>${job.ind_ded_rem}</td>
                                                                <td>${job.fam_oop_rem}</td>
                                                                <td>${job.ind_oop_rem}</td>
                                                                <td>${job.coins}</td>
                                                                <td>${job.coins_ind}</td>
                                                                <td>${job.copay}</td>
                                                                <td>${job.copay_ind}</td>
                                                                <td>${job.fam_ded_cal}</td>
                                                                <td>${job.ind_ded_cal}</td>
                                                                <td>${job.fam_oop_cal}</td>
                                                                <td>${job.ind_oop_cal}</td>
                                                                <td>${job.pcp_copay}</td>
                                                                <td>${job.errormsg}</td>
                                                                <td>${job.subscriber}</td>
                                                                <td>${job.subdob}</td>
                                                                <td>${job.relationship}</td>      
                                                                <td>${job.dependent}</td>
                                                                <td>${job.depdob}</td>
                                                            </tr>

                                                        </c:forEach>



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
    <iframe id="txtArea1" style="display:none"></iframe>

</section>     

<div id="modalConfirmYesNo" class="modal fade">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" 
                        class="close" data-dismiss="modal" aria-label="Close">

                </button>
                <h4 id="lblTitleConfirmYesNo" class="modal-title">Confirmation</h4>
            </div>
            <div class="modal-body">
                <p id="lblMsgConfirmYesNo"></p>
            </div>
            <div class="modal-footer">
                <button id="btnYesConfirmYesNo" 
                        type="button" class="btn btn-primary">Yes</button>
                <button id="btnNoConfirmYesNo" 
                        type="button" class="btn btn-default">No</button>
            </div>
        </div>
    </div>
</div>

<div id="flading" class="loader">

</div>

<div class="q-view">
    <div class="overlay"></div>
    <div class="content">
        <div class="card-body">
            <h4>Raise Ticket</h4>
            <div class="border-bottom pb-3 pt-3">
                <div class="row">
                    <div class="col-md-7">

                        <p class="list-inline-item mb-0">By <label class="mb-0" id="raiseduser" ></label></p>
                    </div>
                    <div class="col-md-5 text-right">
                        <p class="d-inline-block mb-0"><i class="feather icon-calendar mr-1"></i><label class="mb-0" id="currentdate" ></label></p>
                    </div>
                </div>
            </div>
        </div>

        <!-- [ tinymce editor ] start -->
        <div class="col-sm-12">
            <div class="card border-0 shadow-none">
                <div class="card-body pr-0 pl-0 pt-0">

                    <!--   <h3 class="model-bg-custom">Raise Ticket <button type="button" id="model_close1" class="close" style="font-size:12px; padding-left:20px" data-dismiss="modal" aria-hidden="true">X</button></h3> -->


                    <div>
                        <form:form method="POST" action="uploadticketatt" modelAttribute="uploadticketatt" enctype="multipart/form-data">

                            <div class="form-group row">
                                <div class="col-lg-6">
                                    <label class="form-label" for="ticket_type_id">Type <span class="text-danger">*</span></label>
                                    <select class="form-control" required id="ticket_type_id" name ="ticket_type_id">
                                        <option value = "" >--Select--</option>
                                        <c:forEach var="ticket" items="${tickettypelist}">
                                            <option value = ${ticket.tid} >${ticket.ticket_type}</option>
                                        </c:forEach>
                                    </select>
                                </div>

                                <div class="col-lg-6">
                                    <label class="form-label" for="ticket_priority_id">Priority <span class="text-danger">*</span></label>
                                    <select class="form-control" required id="ticket_priority_id" name ="ticket_priority_id">
                                        <c:forEach var="ticket" items="${ticketprioritylist}">
                                            <option value = ${ticket.tid}>${ticket.ticket_priority}</option>
                                        </c:forEach>
                                    </select>

                                </div>


                            </div>									
                            <div class="form-group row">

                                <div class="col-lg-6">
                                    <label class="form-label">Browse </label>

                                    <input class="form-control" type="file" name="file" id="attachment_id" multiple accept="application/pdf, image/jpeg">  


                                    <div class="preview"></div>
                                    <div class="progress1" style="display:none">
                                        <div class="progress-bar1"  id="ticketprogress" role="progressbar" aria-valuenow="0"
                                             aria-valuemin="0" aria-valuemax="100" style="width:0%">
                                            0%
                                        </div>
                                    </div>
                                </div>	

                                <div class="col-lg-6">
                                    <label class="form-label"  for="assigned_to">Assign To</label>

                                    <select class="form-control js-example-placeholder-multiple" id="assigned_to"  name="assigned_to">
                                        <option value = "0" >--Select--</option>
                                        <c:forEach var="ticket" items="${assignuserlist}">
                                            <option value = ${ticket.user_id}>${ticket.username}</option>
                                        </c:forEach>
                                    </select>
                                </div>

                            </div>

                            <div class="form-group row">
                                <div class="col-lg-12">

                                    <!-- <input type="text" name="description" class="required form-control" id="description" required placeholder="Enter description" > -->
                                    <div class="card-body">

                                        <div id="summernote">

                                            <p>
                                            </p>

                                        </div>
                                    </div>
                                </div><!-- comment -->

                            </div>


                            <div class="form-group row">                                               
                                <div class="col-lg-4">
                                    <button type="submit"  id="btnsubmit" class="btn btn-rounded btn-greenadd btn-block">Submit</button>
                                </div>
                            </div>
                        </form:form>

                    </div>

                </div>



            </div>
        </div>
        <!-- [ tinymce editor ] end -->
    </div>

</div>


<jsp:include page="includes/footer.jsp"></jsp:include>
    <script src="assets/js/plugins/select2.full.min.js"></script>
    <script src="assets/js/pages/form-select-custom.js"></script>

    <script type="text/javascript">
        $(document).ready(function () {
            $(".tableFixHead1").removeClass("tablehide");
            $(".tableFixHead1").addClass("tableshow");
            var checked = 0;
            var notflag = 'N';
            function ShowConfirmYesNo() {
                AsyncConfirmYesNo(
                        "Confirmation Box",
                        "You are about to create multiple tickets, Do you wish to continue?",
                        MyYesFunction,
                        MyNoFunction
                        );
            }

            function MyYesFunction() {
                // alert("Time to get off your workstation!");
                // $("#lblTestResult").html("You are hungry");
                $(".q-view").addClass("active");
            }
            function MyNoFunction() {
                $(".overlay").click();
                // $("#lblTestResult").html("You are not hungry");
                $('#headercheck').prop('checked', false);
                $('#simpletable tbody input[type=checkbox]').each(function () {
                    $(this).prop('checked', false);
                    if (checked > 0)
                    {
                        checked--;
                    }
                });
            }

            function AsyncConfirmYesNo(title, msg, yesFn, noFn) {
                var $confirm = $("#modalConfirmYesNo");
                $confirm.modal('show');
                $("#lblTitleConfirmYesNo").html(title);
                $("#lblMsgConfirmYesNo").html(msg);
                $("#btnYesConfirmYesNo").off('click').click(function () {
                    yesFn();
                    $confirm.modal("hide");
                });
                $("#btnNoConfirmYesNo").off('click').click(function () {
                    noFn();
                    $confirm.modal("hide");
                });
            }
            $('#headercheck').prop('checked', false);

            var entity = '<%= session.getAttribute("Entityid")%>';
            var entity_user = '';
            var entity_user_to = '';
            var entity_user_cc = '';
            var entity_user_bcc = '';
            var now = new Date();
            var day = '';
            var month = '';
            var hr = '';
            var min = '';
            var sec = '';
            if (now.getDate() < 10) {
                day = '0' + now.getDate();
            } else {
                day = now.getDate();
            }
            if ((now.getMonth() + 1) < 10) {
                month = '0' + parseInt(now.getMonth() + 1);
            } else {
                month = parseInt(now.getMonth() + 1);
            }
            if ((now.getHours()) < 10) {
                hr = '0' + parseInt(now.getHours());
            } else {
                hr = parseInt(now.getHours());
            }
            if (now.getMinutes() < 10) {
                min = '0' + parseInt(now.getMinutes());
            } else {
                min = parseInt(now.getMinutes());
            }
            if (now.getSeconds() < 10) {
                sec = '0' + parseInt(now.getSeconds());
            } else {
                sec = parseInt(now.getSeconds());
            }
            var today = now.getFullYear() + '-' + (month) + '-' + day + "T" + hr + ":" + min + ":" + sec;
            var today1 = (month) + '/' + day + '/' + now.getFullYear() + " " + hr + ":" + min + ":" + sec;
            $('#currentdate').text(today1);
            var LoginUsername = '<%= session.getAttribute("LoginUsername")%>';
            $('#raiseduser').text(LoginUsername);
            $(".hd-body").click(function () {
            });
            $(".overlay").click(function () {
                $(".q-view").removeClass("active");
            });
            $('#flading').hide();

            function uniqueArray2(arr) {
                var a = [];
                for (var i = 0, l = arr.length; i < l; i++)
                    if (a.indexOf(arr[i]) === -1 && arr[i] !== '')
                        a.push(arr[i]);
                return a;
            }


            //  $('#flading').show();
            $('#simpletable').find('tbody').find('tr').each(function () {
                var dedrem = $(this).find('td:eq(12)').text();
                var coins = $(this).find('td:eq(15)').text();
                var coinsind = $(this).find('td:eq(16)').text();
                var copay = $(this).find('td:eq(17)').text();
                var copayind = $(this).find('td:eq(18)').text();
                var pcpcopayind = $(this).find('td:eq(23)').text();
                var dedremarr = uniqueArray2(dedrem.split('~'));
                var coinsarr = uniqueArray2(coins.split('~'));
                var coinsindsarr = uniqueArray2(coinsind.split('~'));
                var copaysarr = uniqueArray2(copay.split('~'));
                var copayindsarr = uniqueArray2(copayind.split('~'));
                var pcpcopayindsarr = uniqueArray2(pcpcopayind.split('~'));
                var countpcp = pcpcopayindsarr;
                // console.log(countpcp);
                if (countpcp.length > 1)
                {
                    var temp, size;
                    var array = countpcp;
                    size = array.length;
                    for (var i = 0; i < size; i++) {

                        for (var j = i + 1; j < size; j++) {
                            if (array[i] > array[j]) {
                                temp = array[i];
                                array[i] = array[j];
                                array[j] = temp;
                            }
                        }
                    }
                    // console.log(array[0]);
                    $(this).find('td:eq(23)').html(array[0]);
                } else {
                    var tagpcppayind = pcpcopayindsarr.join("<br style='mso-data-placement:same-cell;'>");
                    $(this).find('td:eq(23)').html(tagpcppayind);
                }

                var tagcoins = coinsarr.join("<br style='mso-data-placement:same-cell;'>");
                var tagcoinsind = coinsindsarr.join("<br style='mso-data-placement:same-cell;'>");
                var tagpay = copaysarr.join("<br style='mso-data-placement:same-cell;'>");
                var tagpayind = copayindsarr.join("<br style='mso-data-placement:same-cell;'>");
                var tagdedrem = dedremarr.join("<br style='mso-data-placement:same-cell;'>");
                //console.log(dedremarr);
                if (dedremarr.length > 1) {
                    $(this).find('td:eq(12)').html(dedremarr[0]);
                } else {
                    $(this).find('td:eq(12)').html(dedremarr[0]);
                }

                //  $(this).find('td:eq(11)').html(tagdedrem);
                $(this).find('td:eq(15)').html(tagcoins);
                $(this).find('td:eq(16)').html(tagcoinsind);
                $(this).find('td:eq(17)').html(tagpay);
                $(this).find('td:eq(18)').html(tagpayind);
                var err = $(this).find('td:eq(24)').text().trim();
                if (err === "Invalid Participant identification. Values in GS02 or GS03 is invalid.") {
                    $(this).find('td:eq(24)').html(err + "<br style='mso-data-placement:same-cell;'>" + "Payor not enrolled/RTE in OA. <br>**Check manually & contact admin.");
                } else {
                    $(this).find('td:eq(24)').html(err);
                }
            });
            function GetParameterValues(param) {
                var url = window.location.href.slice(window.location.href.indexOf('?') + 1).split('&');
                for (var i = 0; i < url.length; i++) {
                    var urlparam = url[i].split('=');
                    if (urlparam[0] === param) {
                        return urlparam[1];
                    }
                }
            }


            var jobnumber = GetParameterValues('jobno');
            $('#jobnumber').text(decodeURI(jobnumber));
            var type = GetParameterValues('type');
            $('#job_type').text(decodeURI(type));
            //  console.log(payerval);
            var scheduledval = GetParameterValues('scheduled');
            var scheduled = '';
            var schedule_type = '';
            var filename = '';
            var job_status = '';
            var practice = '';
            var providerval = '';
            var username = '';
            if (typeof (scheduledval) !== "undefined") {
                var res = scheduledval.split("~");
                var scheduled = convertLocalDateToUTCDate(decodeURI(res[0]));
                $('#scheduled').text(scheduled);
                schedule_type = res[1].replace('#!', '');
                $('#schedule_type').text((schedule_type));
                practice = res[2].replace('#!', '');
                $('#jobpractice').text(decodeURI(practice));
                providerval = res[3].replace('#!', '');
                $('#jobprovider').text(decodeURI(providerval));
                username = res[4].replace('#!', '');
                $('#username').text(decodeURI(username));
                filename = res[5].replace('#!', '');
                $('#filename').text(decodeURI(filename));
                job_status = res[6].replace('#!', '');
                $('#job_status').text(decodeURI(job_status));
                // $('#card2').show();
                //  $('#card3').show();
            }

            $('#simpletable').dataTable({
                "aaSorting": [[1, "desc"]], // Sort by first column descending
                "pageLength": 100,
                scrollY: "300px",
                scrollX: true,
                scrollCollapse: false,
                paging: true,
                fixedHeader: true,
                fixedColumns: {
                    leftColumns: 3
                },
                dom: 'Bfrtip',
                "oLanguage": {
                    "sEmptyTable": "Data Loading..."
                },
                buttons: [
                    'copyHtml5',
                    {
                        text: 'Excel',
                        action: function (e, dt, node, config) {
                            fnExcelReport();
                            //  $.fn.dataTable.ext.buttons.excelHtml5.action(e, dt, node, config);
                        }
                    }
                ]

            });


            // $('#simpletable').append('<button id = "btnexport" class="btn btn-secondary buttons-csv buttons-html5"><i class="fa fa-file"></i> Export</button>');

            function fnExcelReport() {
                var tab_text = "<table border='2px'><tr bgcolor='#87AFC6'><th>JobId</th><th>BRID</th><th>Status</th><th>Pat_name</th><th>Mem_ID</th><th>Pay_Code</th><th>DOS</th><th>Sex</th><th height='10px'>Plan </th><th>Payor</th><th>Group</th><th>Ded_Fam_Rem</th><th>Ded_Ind_Rem</th><th>OOP_Fam_Rem</th><th>OOP_Ind_Rem</th><th>CoIns_Fam</th><th>CoIns_Ind</th><th>CoPay_Fam</th><th>CoPay_Ind</th><th>Ded_Fam_CY</th><th>Ded_Ind_CY</th><th>OOP_Fam_CY</th><th>OOP_Ind_CY</th><th>PCP_Copay_IN</th><th>Error Msg</th><th>Subcriber</th><th>Sub DOB</th><th>Relationship</th><th>Dependent</th><th>Dep DOB</th></tr><tr>";
                var textRange;
                var j = 0;
                var tab = document.getElementById('simpletable'); // id of table
                for (j = 1; j < tab.rows.length; j++) {
                    tab_text = tab_text + tab.rows[j].innerHTML + "</tr>";
                    //tab_text=tab_text+"</tr>";
                }

                tab_text = tab_text + "</table>";
                tab_text = tab_text.replace(/<A[^>]*>|<\/A>/g, ""); //remove if u want links in your table
                tab_text = tab_text.replace(/<img[^>]*>/gi, ""); // remove if u want images in your table
                tab_text = tab_text.replace(/<input[^>]*>|<\/input>/gi, ""); // reomves input params
                var ua = window.navigator.userAgent;
                var msie = ua.indexOf("MSIE ");
                // var txtArea1;
                // var sa;


                if (msie > 0 || !!navigator.userAgent.match(/Trident.*rv\:11\./)) {
                    txtArea1.document.open("txt/html", "replace");
                    txtArea1.document.write(tab_text);
                    txtArea1.document.close();
                    txtArea1.focus();
                    sa = txtArea1.document.execCommand("SaveAs", true, "EVreport_" + jobnumber + ".xls");
                    return (sa);
                } else {//other browser not tested on IE 11
                    // sa = txtArea1.document.execCommand("SaveAs", true, "EVreport_" + jobnumber + ".xls");
                    // window.open('data:application/vnd.ms-excel,' + encodeURIComponent(tab_text));
                    // sa.document.title = "EVreport_" + jobnumber;
                    // e.preventDefault();
                    var excelFileURL = document.createElement("a");
                    document.body.appendChild(excelFileURL);
                    var TableDataType = 'application/vnd.ms-excel';
                    var filename = filename ? filename + '.xls' : "EVreport_" + jobnumber + '.xls';
                    if (navigator.msSaveOrOpenBlob) {
                        var blob = new Blob(['\ufeff', encodeURIComponent(tab_text)], {
                            type: TableDataType
                        });
                        navigator.msSaveOrOpenBlob(blob, filename);
                    } else {

                        excelFileURL.href = 'data:' + TableDataType + ', ' + encodeURIComponent(tab_text);
                        excelFileURL.download = filename;
                        excelFileURL.click();
                    }

                }

                // return (sa);
            }


            var not_brid = GetParameterValues('brid');
            if (typeof (not_brid) !== 'undefined') {
                var table = $('#simpletable').DataTable();
                table.column(1).search(not_brid).draw();
            }

            var total = 0;

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
                    if (checked > 1) {
                        notflag = 'Y';
                    }
                } else {
                    $('#headercheck').prop('checked', false);
                    if (checked > 1) {
                        notflag = 'Y';
                    } else {
                        notflag = 'N';
                    }
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
                    if (checked > 1) {
                        notflag = 'Y';
                    }
                    //   $('#raiseticket').show();
                } else {
                    $('#simpletable tbody input[type=checkbox]').each(function () {
                        $(this).prop('checked', false);
                        if (checked > 0) {
                            checked--;
                        }
                    });
                    notflag = 'N';
                    //   $('#raiseticket').hide();
                }

            });
            var brid = '';
            $('#brid').hide();
            $('#raiseticket').click(function () {
                brid = '';
                var table = $('#simpletable').DataTable();
                table.$('input[type="checkbox"]').each(function () {
                    // If checkbox doesn't exist in DOM

                    // If checkbox is checked
                    if (this.checked) {
                        // Create a hidden element

                        //  alert(this);
                        let tr = $(this).closest('tr');
                        brid = tr.find('td:eq(1)').text() + ',' + brid;
                    }

                });
                brid = brid.substring(0, brid.length - 1);
                //  console.log(brid);
                if (brid !== '') {

                    if (notflag === 'Y') {
                        ShowConfirmYesNo();
                    } else {
                        $(".q-view").addClass("active");
                    }
                    //  $('#btnclick').click(); -- Main

                    //  $('#modal-1').modal('toggle');
                    //  $('.md-overlay').css("visibility", "visible");

                    $('#ticket_type_id').val("2");
                    var ticket_type_id = $("select#ticket_type_id").val();
                    $('#ticket_type_id').attr('disabled', "true");
                    $('#flading').show();
                    //Payor

                    $.ajax({
                        url: "tickettypedescdetails",
                        type: "get", //send it through get method
                        data: {
                            ticket_type_id: ticket_type_id
                        },
                        success: function (response) {
                            console.log(response);
                            if (response.length > 0) {
                                var txt = response;
                                var obj = jQuery.parseJSON(txt);
                                console.log(obj.length);
                                if (obj.length > 0) {
                                    $(".note-editable").html(obj[0].auto_desc);
                                    $('#flading').hide();
                                }
                            } else {
                                $(".note-editable").html('');
                                $('#flading').hide();
                            }

                        },
                        error: function (err) {
                            console.log(err);
                            $(".note-editable").html('');
                            $('#flading').hide();
                        }
                    });


                    $.ajax({
                        url: "ticketdefaultuserdetails",
                        type: "get", //send it through get method
                        data: {
                            def_ticket_type_id: ticket_type_id,
                            entity_id: entity
                        },
                        success: function (response) {
                            // console.log(response);
                            // console.log(response.length);
                            var txt = response;
                            var obj = jQuery.parseJSON(txt);
                            if (obj.length > 0) {
                                $.each(obj, function (index, value) {
                                    entity_user = obj[index].assigned_to;
                                    entity_user_to = obj[index].to;
                                    entity_user_cc = obj[index].cc;
                                    entity_user_bcc = obj[index].bcc;
                                    console.log(entity_user);
                                    console.log(entity_user_to);
                                });
                                $("select#assigned_to").val(entity_user);
                                $('#assigned_to').trigger('change');
                                $('#flading').hide();
                            } else {
                                $('#flading').hide();
                            }
                        }
                    });

                } else
                {
                    msgbox("select atleast one job..!", "Ticket Portal", "warning");
                }

            });
            $(function () {
                $('#summernote').summernote({
                    height: 250,
                    codemirror: {
                        mode: 'text/html',
                        htmlMode: true,
                        lineNumbers: true,
                        theme: 'monokai'
                    }
                });
            });

            var ticketsource = '<%=session.getAttribute("source")%>';
            var files = '';
            var progressbar = $('.progress-bar1');
            $("#btnsubmit").click(function () {
                $('#flading').show();
                $("form").ajaxForm({
                    beforeSend: function () {
                        $(".progress1").css("display", "block");
                        progressbar.width('0%');
                        progressbar.text('0%');
                    },
                    uploadProgress: function (event, position, total, percentComplete) {
                        if (percentComplete <= 100)
                        {
                            progressbar.width(percentComplete + '%');
                            progressbar.text(percentComplete + '%');
                        }

                    },
                    complete: function (xhr) {
                        //  window.location = "uploadeobdoc"
                        //   location.reload();

                        $('#attachment_id').val('');
                        // $('#ddlpractice').val("");


                        $(".progress1").css("display", "block");
                        progressbar.width('0%');
                        progressbar.text('0%');
                        $('#flading').hide();
                        //    $('#btnsubmit').removeAttr('disabled');
                    }
                });
                // }
            });
            var mulfilename = '';
            // var filesize = '';
            // var filetype = ''
            $('#attachment_id').change(function (e) {
                mulfilename = e.target.files.name;
            });
            $("form").submit(function () {
                $('#flading').show();
                files = $('#attachment_id').prop("files");
                var names = $.map(files, function (val) {
                    // var fn = val.name;
                    // return fn.replaceAll(',', '');
                    return val.name;
                });
                var size = $.map(files, function (val) {
                    return val.size;
                });
                let namestext = names.toString();
                let sizetext = size.toString();
                var fns = '';
                for (let i = 0; i < names.length; i++) {
                    fns += names[i].replaceAll(',', '').replaceAll('#', '') + ",";
                }

                fns = fns.substring(0, fns.length - 1);
                //  namestext = namestext.replaceAll('#', '');
                var ticketstatus = 1;
                var tstatus = '';
                if ($("select#assigned_to").val() === "0") {
                    ticketstatus = 1;
                    tstatus = 'Created';
                } else {
                    ticketstatus = 2;
                    tstatus = 'Assigned';
                }

                var tsource = '';
                if (ticketsource === 1) {
                    tsource = 'Practice';
                } else if (ticketsource === 2) {
                    tsource = 'Entity';
                } else {
                    tsource = 'Practice';
                }
                var tickettype = $("#ticket_type_id option:selected").text();
                var ticketpriority = $("#ticket_priority_id option:selected").text();
                var assignto = $("#assigned_to option:selected").text();

                $.ajax({
                    url: "create_bulk_ticket",
                    type: "get", //send it through get method
                    data: {
                        type_of_ticket: "2",
                        descriptions: $(".note-editable").html(),
                        ticket_status: ticketstatus,
                        assigned_to: $("select#assigned_to").val(),
                        attachmentfile: fns,
                        attachmentfilesize: sizetext,
                        ticket_source: ticketsource,
                        ticket_priority: $("select#ticket_priority_id").val(),
                        segment: "C",
                        currentdt: today,
                        request_id: brid
                    },
                    success: function (response) {
                        console.log(response);
                        $("select#ticket_type_id").val('2');
                        $("select#assigned_to").val('0');
                        $(".note-editable").html('');
                        // swal("Record Saved", "", "success");
                        msgbox("Ticket Saved", "Ticket Form", "success");
                        //  window.location.reload();
                        $('#flading').hide();
                        $(".overlay").click();
                    },
                    error: function (err) {
                        console.log(err);
                        msgbox("Ticket Not Saved", "Ticket Form", "error");
                        $('#flading').hide();
                        $(".overlay").click();
                    }
                });

                if ($("select#assigned_to").val() !== "0") {
                    var strcontent = "Hi " + assignto + ", <br><br>" + "Type: " + tickettype + "<br>Source: " + tsource + "<br>Priority: " + ticketpriority + "<br> Assign To: " + assignto + "<br>Segment: EV Job Details [C]" + "<br><br>" + $(".note-editable").html();
                    // Email Config
                    $.post('eMail', {
                        recipient: entity_user_to,
                        subject: 'Ticket Raised from [EV Job Details] Form: ' + tickettype + ' : ' + tstatus + ' to ' + assignto,
                        content: strcontent,
                        cc: entity_user_cc,
                        bcc: entity_user_bcc

                    }, function (response) {
                        console.log(response);
                    });
                }

            });
            $('#assigned_to').change(function (event) {
                var user_id = $("select#assigned_to").val();
                if (user_id !== "0") {
                    $('#flading').show();
                    //Payor

                    $.ajax({
                        url: "ticketentityuserdetails",
                        type: "get", //send it through get method
                        data: {
                            user_id: user_id,
                            def_ticket_type_id: $('#ticket_type_id').val()
                        },
                        success: function (response) {
                            // console.log(response);
                            // console.log(response.length);
                            var txt = response;
                            var obj = jQuery.parseJSON(txt);
                            if (obj.length > 0) {
                                $.each(obj, function (index, value) {
                                    entity_user_to = obj[index].username;
                                    entity_user_cc = obj[index].assigned_to;
                                    console.log(entity_user_to);
                                    console.log(entity_user_cc);
                                    $('#flading').hide();
                                });
                            } else {
                                $('#flading').hide();
                            }
                        }
                    });

                }
            });
        });

</script>     
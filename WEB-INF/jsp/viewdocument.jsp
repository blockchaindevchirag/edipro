<%-- 
    Document   : viewdocument
    Created on : 7 Nov, 2022, 8:41:03 PM
    Author     : Dell
--%>


<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@page import="java.util.Properties"%> 
<!DOCTYPE html>

<spring:eval expression="@environment.getProperty('web_server')" var="webserverUrl" />
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View Document</title>

        <jsp:include page="includes/header.jsp"></jsp:include>
        <section class="pcoded-main-container">
            <div class="pcoded-wrapper">
                <div class="pcoded-content">
                    <div class="pcoded-inner-content">
                        <div class="main-body">
                            <div class="page-wrapper">

                                <!--          <div class="row">
                                              <div class="col-lg-12">
                                                  <button class="btn btn-success md-trigger" id="download"  data-modal="modal-1">Download  <i class='fas fa-download m-r-5'></i></button>
                                                  <br><br>
                                              </div>
                                          </div> -->

                                <div class="row">
                                    <!-- Zero config table start -->
                                    <div class="col-sm-12">
                                        <div class="card">
                                            <div class="card-body">
                                                <div class="dt-responsive table-responsive tablehide">
                                                    <div class="tableFixHead_viewdoc1">
                                                        <table id="simpletable" width="98%" class="table table-striped table-bordered nowrap">
                                                            <thead>
                                                                <tr>
                                                                    <th style="position: sticky; top: 0; z-index: 1;"><input id="headercheck" type="checkbox"></th>
                                                                    <th style="position: sticky; top: 0; z-index: 1;">Doc #</th>
                                                                    <th style="position: sticky; top: 0; z-index: 1;">Practice</th>
                                                                    <th style="position: sticky; top: 0; z-index: 1;">Type</th>
                                                                    <th style="position: sticky; top: 0; z-index: 1;">Patient</th>
                                                                    <th style="position: sticky; top: 0; z-index: 1;">Status</th>
                                                                    <th style="position: sticky; top: 0; z-index: 1;">Upload By, DT</th>                                                                
                                                                    <th style="position: sticky; top: 0; z-index: 1;">File</th>
                                                                    <th style="position: sticky; top: 0; z-index: 1;"></th>
                                                                    <th style="position: sticky; top: 0; z-index: 1;"></th>
                                                                    <th style="position: sticky; top: 0; z-index: 1;"></th>
                                                                </tr>
                                                            </thead>
                                                            <tbody>
                                                            <c:forEach var="Document" items="${documentlist}">

                                                                <tr>
                                                                    <td> <input type="checkbox"  class = "check" id="headercheck" data-is-deleted="false"></td>
                                                                    <td>${Document.uploadid}</td>
                                                                    <td role="tooltip" data-microtip-position="top" data-microtip-size="medium" title="" aria-label="${Document.practice}">${Document.spractice}</td>
                                                                    <td>${Document.typeofupload}</td>
                                                                    <td>${Document.patient}</td>
                                                                    <td>${Document.status}</td>
                                                                    <td>${Document.uploadedby}, ${Document.updatetime}</td>                                                                
                                                                    <td role="tooltip" data-microtip-position="top" data-microtip-size="medium" title="" aria-label="${Document.up_fn}">${Document.sup_fn}  </td>
                                                                    <td><a target='_blank' href= '../EOB/${Document.fn}' data-id='${Document.fn}' class='btn-icon singledownbutton' id="singledown" data-toggle="tooltip" data-placement="left" title="" data-original-title="Download"><i class="fas fa-download" style="font-size:15px; margin:0 3px;color: #19BCBF;"></i></a>
                                                                            <sec:authorize access="hasAuthority('DELETE_DOCUMENT_PRIVILEGE')">
                                                                                <c:if test = "${Document.flag == 'Y'}" >
                                                                                <a id="deleteDocument" class='btn-icon deleteDocument' role="tooltip" data-microtip-position="left" title="" aria-label="Delete"><i class="fas fa-trash-alt" style="font-size:15px; margin:0 3px;color:#FF425C;"></i></a>
                                                                                </c:if>                                                                             
                                                                            </sec:authorize>
                                                                            <sec:authorize access="hasAuthority('RECOVER_DOCUMENT_PRIVILEGE')">
                                                                                <c:if test = "${Document.flag == 'N'}" >
                                                                                <a id="recoverDocument" class='btn-icon recoverDocument' role="tooltip" data-microtip-position="left" title="" aria-label="Recover"><i class="mdi mdi-restore" style="font-size:18px; margin:0 3px;color:#FF425C;"></i></a>
                                                                                </c:if>                                                                        
                                                                            </sec:authorize>
                                                                    </td>
                                                                    <td>${webserverUrl}</td>
                                                                    <td>${Document.flag}</td>
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
                $(".table-responsive").removeClass("tablehide");
                $(".table-responsive").addClass("tableshow");
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

                var userid = '<%= session.getAttribute("Userid")%>';
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

                $('#simpletable').dataTable({
                    fixedHeader: {
                        header: true,
                        footer: true
                    },
                    stateSave: true,
                    // display everything
                    'columnDefs': [{
                            'targets': [0], // column index (start from 0)
                            'orderable': false // set orderable false for selected columns
                        }],
                    "aaSorting": [[1, "desc"]], // Sort by first column descending
                    dom: 'fBrtipl',
                    stateSave: true,
                    buttons: [
                        {
                            className: 'dt-pdf-btn',
                            text: '<img src="assets/images/downloadicon.png">',
                            action: function (e, dt, node, config) {
                                pagedownload();

                            }
                        },
                        {
                            className: 'dt-pdf-btn',
                            text: '<img src="assets/images/zipdownload.png" width="25" height="25">',
                            action: function (e, dt, node, config) {
                                pagezipdownload();

                            }
                        }
                        /* {
                         extend: 'csv',
                         text: '<img src="assets/images/excelicon.png">',
                         className: 'dt-pdf-btn'
                         },
                         'csv',
                         {
                         extend: 'pdfHtml5',
                         orientation: 'landscape',
                         text: '<img src="assets/images/pdficon.png">',
                         className: 'dt-pdf-btn',
                         pageSize: 'LEGAL'} */

                    ],
                    createdRow: function (row, data, dataIndex) {                       // add tooltip when row is created

                        if ($(row).find('td:eq(10)').text() === 'N') {
                            $(row).find('td').not(':eq(8)').attr('style', 'font-weight: bold; !important; text-decoration:line-through; color:red;vertical-align: middle;line-height:1;');
                            // $(row).find('td:eq(8)').find('#singledown').hide();
                            $(row).find('td:eq(8)').find('a').removeAttr('href');
                            $(row).find('td:eq(8)').find('a').find('i').css('color', 'red');
                            $(row).find('td:eq(8)').find('a').removeAttr('target');
                            $(row).find('td:eq(8)').find('a').removeClass('singledownbutton');
                            $(row).find('td:eq(0)').find('input').prop('disabled', 'true');
                        }
                        $(row).find('td:eq(9)').hide();
                        $(row).find('td:eq(10)').hide();
                    }

                });


                function pagezipdownload() {
                    var ids = [];
                    var files = [];
                    $('#simpletable').find('tbody input[type=checkbox]:checked:not(:disabled)').each(function () {
                        var file = $(this).closest("tr").find('td:eq(8)').find('a').attr('data-id');
                        var id = $(this).closest("tr").find('td:eq(1)').text();
                        ids.push(id);
                        files.push(file);
                        $(this).closest("tr").find('td:eq(5)').text("Downloaded");
                    });

                    if (files.length > 0) {
                        for (var i = 0; i < files.length; i++) {
                            var dociduser = ids[i] + "~" + userid;
                            $.ajax({
                                url: "documentdetails",
                                type: "get", //send it through get method
                                data: {
                                    documentid: dociduser
                                },
                                success: function (response) {
                                    if (response.length > 0) {
                                        console.log(response);
                                    }
                                },
                                error: function (err) {
                                    console.log(err);
                                }
                            });
                            console.log(dociduser);
                        }
                    }

                    if (files.length > 0) {
                        $.ajax({
                            url: "download_zip_file",
                            type: "POST",
                            data: JSON.stringify(files),
                            contentType: "application/json",
                            xhrFields: {
                                responseType: "blob"
                            },
                            success: function (response) {
                                var blob = new Blob([response]);
                                var link = document.createElement("a");
                                link.href = window.URL.createObjectURL(blob);
                                link.download = "documentfiles.zip";
                                document.body.appendChild(link);
                                link.click();
                                document.body.removeChild(link);
                            },
                            error: function (xhr, status, error) {
                                console.log("Error downloading zip file: " + error);
                            }
                        });
                    } else {
                        msgbox("Select atleast one document(s).", "Document Portal", "warning");
                    }
                }
                function pagedownload() {
                    var urls = [];
                    var ids = [];
                    var hid = '';
                    $('#simpletable').find('tbody input[type=checkbox]:checked').each(function () {
                        var file = $(this).closest("tr").find('td:eq(8)').find('a').attr('href');
                        var id = $(this).closest("tr").find('td:eq(1)').text();
                        hid = $(this).closest("tr").find('td:eq(9)').text();
                        urls.push(file.replace('..', hid));
                        ids.push(id);
                        $(this).closest("tr").find('td:eq(5)').text("Downloaded");
                    });

                    if (urls.length > 0) {
                        for (var i = 0; i < urls.length; i++) {
                            var dociduser = ids[i] + "~" + userid;
                            $.ajax({
                                url: "documentdetails",
                                type: "get", //send it through get method
                                data: {
                                    documentid: dociduser
                                },
                                success: function (response) {
                                    if (response.length > 0) {
                                        console.log(response);
                                    }
                                },
                                error: function (err) {
                                    console.log(err);
                                }
                            });
                            console.log(dociduser);
                        }
                    }

                    if (urls.length > 0) {
                        var link = document.createElement('a');
                        document.body.appendChild(link);
                        for (var i = 0; i < urls.length; i++) {
                            link.setAttribute('download', urls[i].replace(hid, ''));
                            link.style.display = 'none';
                            link.setAttribute('href', urls[i].replace(hid, ''));
                            link.setAttribute('target', '_blank');
                            link.click();
                        }
                        document.body.removeChild(link);
                    } else {
                        msgbox("Select atleast one document(s).", "Document Portal", "warning");
                    }
                }

                var not_docid = GetParameterValues('tid');
                if (typeof (not_docid) !== 'undefined') {
                    var table = $('#simpletable').DataTable();
                    table.column(1).search(not_docid).draw();
                    // table.search(not_brid).draw();
                }
                var total = 0;
                $('#simpletable tbody tr').each(function () {
                    $(this).find('td:eq(9)').hide();
                    $(this).find('td:eq(10)').hide();
                    total++;
                });
                $('#simpletable').find('thead').find('tr').each(function () {
                    $(this).find('th:eq(9)').hide();
                    $(this).find('th:eq(10)').hide();
                });
                $('#simpletable tbody input[type=checkbox]').change(function () {
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

                $(document).on("click", "#simpletable a.singledownbutton", function () {
                    let tr = $(this).closest('tr');
                    let docid = tr.find('td:eq(1)').text();
                    var dociduser = docid + "~" + userid;
                    tr.find('td:eq(5)').text("Downloaded");
                    $.ajax({
                        url: "documentdetails",
                        type: "get", //send it through get method
                        data: {
                            documentid: dociduser
                        },
                        success: function (response) {
                            if (response.length > 0) {
                                console.log(response);
                            }
                        },
                        error: function (err) {
                            console.log(err);
                        }
                    });
                });


                $(document).on("click", "#simpletable a.deleteDocument", function () {
                    if (confirm("Are you sure you want to delete this record?")) {
                        let tr = $(this).closest('tr');
                        let docid = tr.find('td:eq(1)').text();
                        //  alert(tr.find('td:eq(8)').find('#deleteDocument').html());

                        $.ajax({
                            url: "deleteDocument",
                            type: "get", //send it through get method
                            data: {
                                documentid: docid
                            },
                            success: function (response) {
                                if (response.length > 0) {
                                    console.log(response);
                                    msgbox("Document Deleted", "Document Portal", "success");
                                    location.reload(true);
                                }
                            },
                            error: function (err) {
                                console.log(err);
                                msgbox(err, "Document Portal", "error");
                            }
                        });
                    }
                });


                $(document).on("click", "#simpletable a.recoverDocument", function () {
                    let tr = $(this).closest('tr');
                    let docid = tr.find('td:eq(1)').text();
                    //  alert(tr.find('td:eq(8)').find('#recoverDocument').html());
                    $.ajax({
                        url: "recoverDocument",
                        type: "get", //send it through get method
                        data: {
                            documentid: docid
                        },
                        success: function (response) {
                            if (response.length > 0) {
                                console.log(response);
                                msgbox("Document Recovered", "Document Portal", "success");
                                location.reload(true);
                            }
                        },
                        error: function (err) {
                            console.log(err);
                            msgbox(err, "Document Portal", "error");
                        }
                    });
                });


                $('#headercheck').change(function () {
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
                    } else
                    {
                        $('#simpletable tbody input[type=checkbox]').each(function () {
                            $(this).prop('checked', false);
                            if (checked > 0) {
                                checked--;
                            }
                        });
                        notflag = 'N';
                    }
                });

                $('#singledown').click(function () {
                    //  console.log('single document click..');
                });

                var brid = '';
                $('#brid').hide();
                $('#raiseticket').click(function () {
                    brid = '';
                    var table = $('#simpletable').DataTable();
                    table.$('input[type="checkbox"]').each(function () {
                        if (this.checked) {
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
                        $('#ticket_type_id').val("9");
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
                                    $("#assigned_to").trigger('change');
                                    $('#flading').hide();
                                } else {
                                    $("#assigned_to").val("");
                                    $("#assigned_to").trigger('change');
                                    $('#flading').hide();
                                }
                            }
                        });

                    } else {
                        msgbox("Select atleast one eob(s).", "Ticket Portal", "warning");
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

                var userid = '<%= session.getAttribute("Userid")%>';
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
                            if (percentComplete <= 100) {
                                progressbar.width(percentComplete + '%');
                                progressbar.text(percentComplete + '%');
                            }

                        },
                        complete: function (xhr) {
                            $('#attachment_id').val('');
                            $(".progress1").css("display", "block");
                            progressbar.width('0%');
                            progressbar.text('0%');
                            $('#flading').hide();
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
                            type_of_ticket: "9",
                            descriptions: $(".note-editable").html(),
                            ticket_status: ticketstatus,
                            assigned_to: $("select#assigned_to").val(),
                            attachmentfile: fns,
                            attachmentfilesize: sizetext,
                            ticket_source: ticketsource,
                            ticket_priority: $("select#ticket_priority_id").val(),
                            segment: "H",
                            currentdt: today,
                            request_id: brid
                        },
                        success: function (response) {
                            console.log(response);
                            $("select#ticket_type_id").val('9');
                            $("select#assigned_to").val('0');
                            $(".note-editable").html('');
                            //swal("Record Saved", "", "success");
                            msgbox("Ticket Saved", "Document Form", "success");
                            //  window.location.reload();
                            $('#flading').hide();
                            $(".overlay").click();
                        },
                        error: function (err) {
                            console.log(err);
                            msgbox("Ticket Not Saved", "Document Form", "error");
                            $('#flading').hide();
                            $(".overlay").click();
                        }
                    });

                    if ($("select#assigned_to").val() !== "0") {
                        var strcontent = "Hi " + assignto + ", <br><br>" + "Type: " + tickettype + "<br>Source: " + tsource + "<br>Priority: " + ticketpriority + "<br> Assign To: " + assignto + "<br>Segment: View Document [H]" + "<br><br>" + $(".note-editable").html();
                        // Email Config
                        $.post('eMail', {
                            recipient: entity_user_to,
                            subject: 'Ticket Raised from [View Document] Form: ' + tickettype + ' : ' + tstatus + ' to ' + assignto,
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

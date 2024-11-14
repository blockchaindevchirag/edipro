<%@page contentType="text/html"  pageEncoding="UTF-8" autoFlush="true"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="en">

    <head>
        <title>Raise Ticket</title>
        <jsp:include page="includes/header.jsp"></jsp:include>
            <style>
                a:hover {
                    color: #ffffff !important;
                    outline: none;
                    text-decoration: none;
                }

                .loader{
                    position: fixed;
                    left: 0px;
                    top: 0px;
                    width: 100%;
                    height: 100%;
                    z-index: 9999;
                    background: url("data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='40' height='40' viewBox='0 0 50 50'%3E%3Cpath d='M28.43 6.378C18.27 4.586 8.58 11.37 6.788 21.533c-1.791 10.161 4.994 19.851 15.155 21.643l.707-4.006C14.7 37.768 9.392 30.189 10.794 22.24c1.401-7.95 8.981-13.258 16.93-11.856l.707-4.006z'%3E%3CanimateTransform attributeType='xml' attributeName='transform' type='rotate' from='0 25 25' to='360 25 25' dur='0.6s' repeatCount='indefinite'/%3E%3C/path%3E%3C/svg%3E") center / 50px no-repeat;
                }



                .note-view{
                    display:none !important;
                }



            </style>

            <!-- [ Main Content ] start -->
        <div class="pcoded-main-container">
            <div class="pcoded-wrapper">
                <div class="pcoded-content">
                    <div class="pcoded-inner-content">
                        <div class="main-body">
                            <div class="page-wrapper">

                                <div class="row">
                                    <!-- [ form-element ] start -->
                                    <div class="col-lg-12">

                                        <div class="card">

                                            <div class="card-body">

                                            <form:form method="POST" action="uploadticketatt" modelAttribute="uploadticketatt" enctype="multipart/form-data">

                                                <div class="form-group row">
                                                    <div class="col-lg-4">
                                                        <label class="form-label" for="ticket_type_id">Type <span class="text-danger">*</span></label>
                                                        <select class="form-control js-example-placeholder-multiple" required id="ticket_type_id" name ="ticket_type_id" style="height:36px !important; line-height:35px !important;">
                                                            <option value = "" >--Select--</option>
                                                            <c:forEach var="ticket" items="${tickettypelist}">
                                                                <option value = ${ticket.tid} >${ticket.ticket_type}</option>
                                                            </c:forEach>
                                                        </select>
                                                    </div>

                                                    <div class="col-lg-4">
                                                        <label class="form-label" for="ticket_priority_id">Priority <span class="text-danger">*</span></label>
                                                        <select class="form-control" required id="ticket_priority_id" name ="ticket_priority_id" style="height:36px !important;">
                                                            <option value = "" >--Select--</option>
                                                            <c:forEach var="ticket" items="${ticketprioritylist}">
                                                                <option value = ${ticket.tid}>${ticket.ticket_priority}</option>
                                                            </c:forEach>
                                                        </select>

                                                    </div>

                                                    <div class="col-lg-4">
                                                        <label class="form-label">Browse </label>

                                                        <input class="form-control" type="file" name="file" id="attachment_id" multiple>  


                                                        <div class="preview"></div>
                                                        <div class="progress" style="display:none">
                                                            <div class="progress-bar" role="progressbar" aria-valuenow="0"
                                                                 aria-valuemin="0" aria-valuemax="100" style="width:0%">
                                                                0%
                                                            </div>
                                                        </div>
                                                    </div>					
                                                </div>									
                                                <div class="form-group row">
                                                    <div class="col-lg-4">
                                                        <label class="form-label"  for="assigned_to">Assign To</label>

                                                        <select class="form-control js-example-placeholder-multiple" id="assigned_to"  name="assigned_to" style="height:36px !important; line-height:35px!important;">
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


                                                <br/>
                                                <div class="form-group row">                                               
                                                    <div class="col-lg-2">
                                                        <button type="submit" id="btnsubmit" class="btn btn-rounded btn-warning btn-block">Submit</button>
                                                    </div>
                                                </div>
                                            </form:form>
                                        </div>
                                    </div>
                                </div>
                                <!-- [ form-element ] end -->
                            </div>
                            <!-- [ Main Content ] end -->
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div id="flading" class="loader">

        </div>


    </div>

    <script>
        //  $('#ddlpractice').selected
    </script>

    <!-- Required Js -->
    <jsp:include page="includes/footer.jsp"></jsp:include>
        <script src="assets/js/plugins/select2.full.min.js"></script>
        <script src="assets/js/pages/form-select-custom.js"></script>
        <script type="text/javascript">
              function unDefined(responseVal) {
                return typeof (responseVal) === "undefined" ? "" : responseVal;
              }

        $(document).ready(function () {

            $('#flading').hide();
            var entity = '<%= session.getAttribute("Entityid")%>';
            var userid = '<%= session.getAttribute("Userid")%>';
            var usertype = '<%=session.getAttribute("UT")%>';
            var ticketsource = '<%=session.getAttribute("source")%>';
            var LoginUsername = '<%= session.getAttribute("LoginUsername")%>';
            var entity_user = '';
            var entity_user_to = '';
            var entity_user_cc = '';
            var entity_user_bcc = '';


            var progressbar = $('.progress-bar');
            $("#btnsubmit").click(function () {
                $('#flading').show();
                $("form").ajaxForm(
                        {
                            beforeSend: function () {
                                $(".progress").css("display", "block");
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


                                $(".progress").css("display", "block");
                                progressbar.width('0%');
                                progressbar.text('0%');
                                window.location.replace("viewticket");
                                $('#flading').hide();
                                //    $('#btnsubmit').removeAttr('disabled');
                            }
                        });
            });
            var mulfilename = '';
            // var filesize = '';
            // var filetype = ''
            $('#attachment_id').change(function (e) {
                mulfilename = e.target.files.name;
                //  filesize = e.target.files[0].size;
                //   filetype = e.target.files[0].type;
                //  alert(geekss + ' is the selected file .');
            });
            
           

            $("form").submit(function () {
                $('#flading').show();

                if ($("select#ticket_type_id").val() !== "")
                {

                    $('#flading').show();

                    var files = $('#attachment_id').prop("files");

                    var names = $.map(files, function (val) {
                        //alert(val.name);
                        var filename = val.name;
                        var extension = filename.split('.').pop();
                        console.log(extension);
                        if (filename.endsWith('.exe')) {
                            msgbox("Uploading EXE files are not allowed", "Ticket Form", "error");
//                                                                                            $(this).next('.custom-file-label').html("Choose file...");
                            $(this).val(null);
                            return;
                        } else if (filename.endsWith('.dll')) {
                            msgbox("Uploading DLL files are not allowed", "Ticket Form", "error");
//                                                                                            $(this).next('.custom-file-label').html("Choose file...");
                            $(this).val(null);
                            return;
                        } else if (filename.endsWith('.sh')) {
                            msgbox("Uploading sh files are not allowed", "Ticket Form", "error");
//                                                                                            $(this).next('.custom-file-label').html("Choose file...");
                            $(this).val(null);
                            return;
                        } else if (filename.endsWith('.bat')) {
                            msgbox("Uploading bat files are not allowed", "Ticket Form", "error");
//                                                                                            $(this).next('.custom-file-label').html("Choose file...");
                            $(this).val(null);
                            return;
                        }
//                                                                                        $(this).next('.custom-file-label').html(filename);  
                        return  val.name;

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
                    var tstatus = '';
                    //  console.log(fns);
                    // namestext = namestext.replaceAll('#', '');
                    //  namestext = namestext.replaceAll('#', '');
                    var ticketstatus = 1;
                    if ($("select#assigned_to").val() === "0")
                    {
                        ticketstatus = 1;
                        tstatus = "Created";
                    } else
                    {
                        ticketstatus = 2;
                        tstatus = "Assigned";
                    }

                    var now = new Date();
                    var day = '';
                    var month = '';
                    var hr = '';
                    var min = '';
                    var sec = '';
                    if (now.getDate() < 10)
                    {
                        day = '0' + now.getDate();
                    } else
                    {
                        day = now.getDate();
                    }
                    if ((now.getMonth() + 1) < 10)
                    {
                        month = '0' + parseInt(now.getMonth() + 1);
                    } else
                    {
                        month = parseInt(now.getMonth() + 1);
                    }
                    if ((now.getHours()) < 10)
                    {
                        hr = '0' + parseInt(now.getHours());
                    } else
                    {
                        hr = parseInt(now.getHours());
                    }
                    if (now.getMinutes() < 10)
                    {
                        min = '0' + parseInt(now.getMinutes());

                    } else
                    {
                        min = parseInt(now.getMinutes());

                    }
                    if (now.getSeconds() < 10)
                    {
                        sec = '0' + parseInt(now.getSeconds());

                    } else
                    {
                        sec = parseInt(now.getSeconds());

                    }
                    var today = now.getFullYear() + '-' + (month) + '-' + day + "T" + hr + ":" + min + ":" + sec;

                    var tsource = '';
                    if (ticketsource === 1)
                    {
                        tsource = 'Practice';
                    } else if (ticketsource === 2)
                    {
                        tsource = 'Entity';
                    } else
                    {
                        tsource = 'Practice';
                    }
                    var tickettype = $("#ticket_type_id option:selected").text();
                    var ticketpriority = $("#ticket_priority_id option:selected").text();
                    var assignto = $("#assigned_to option:selected").text();

                   
                    
                    $.ajax({
                        url: "addraiseticket",
                        type: "get", //send it through get method
                        data: {
                            type_of_ticket: $("select#ticket_type_id").val(),
                            descriptions: $(".note-editable").html(),
                            ticket_status: ticketstatus,
                            assigned_to: $("select#assigned_to").val(),
                            attachmentfile: fns,
                            attachmentfilesize: sizetext,
                            ticket_source: ticketsource,
                            ticket_priority: $("select#ticket_priority_id").val(),
                            currentdt: today,
                            created_by: userid
                        },
                        success: function (response) {
                            console.log(response);
                            $("select#ticket_type_id").val('');
                            $("#ticket_type_id").trigger('change');
                            $("select#assigned_to").val('0');
                            $("#assigned_to").trigger('change');
                            $(".note-editable").html('');
                            //  swal("Record Saved", "", "success");
                            msgbox("Ticket Saved", "Ticket Form", "success");
                            //  window.location.reload();
                            $('#flading').hide();
                        },
                        error: function (err) {
                            console.log(err);
                            msgbox("Ticket Not Saved", "Ticket Form", "error");
                            $('#flading').hide();
                        }
                    });
                    if ($("select#assigned_to").val() !== "0")
                    {
                       entity_user_cc = unDefined(entity_user_cc);
                       entity_user_bcc = unDefined(entity_user_bcc);
                        var strcontent = "Hi " + assignto + ", <br><br>" + "Type: " + tickettype + "<br>Source: " + tsource + "<br>Priority: " + ticketpriority + "<br> Assign To: " + assignto + "<br><br>" + $(".note-editable").html();
                        // Email Config
                        $.post('eMail', {
                            recipient: entity_user_to,
                            subject: 'New Ticket raised : Ticket Type' + ' - ' + tickettype + ' to ' + assignto,
                            content: strcontent,
                            cc: entity_user_cc,
                            bcc: entity_user_bcc

                        }, function (response) {

                            console.log(response);

                        });
                    }
                }

                return true;

            });




            $('#ticket_type_id').val("10");
            $('#ticket_type_id').trigger('change');
            var ticket_type_id = "10";
            // $('#flading').show();
            //Payor

            $.ajax({
                url: "tickettypedescdetails",
                type: "get", //send it through get method
                data: {
                    ticket_type_id: ticket_type_id
                },
                success: function (response) {
                    console.log(response);
                    if (response.length > 0)
                    {
                        var txt = response;
                        var obj = jQuery.parseJSON(txt);
                        console.log(obj.length);
                        if (obj.length > 0)
                        {
                            $(".note-editable").html(obj[0].auto_desc);
                            $('#flading').hide();
                        }
                    } else
                    {
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
                    if (obj.length > 0)
                    {
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
                    } else
                    {
                        $('#flading').hide();
                    }
                }
            });

            $('#ticket_type_id').change(function (event) {
                var ticket_type_id = $("select#ticket_type_id").val();
                if (ticket_type_id !== "")
                {
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
                            if (response.length > 0)
                            {
                                var txt = response;
                                var obj = jQuery.parseJSON(txt);
                                console.log(obj.length);
                                if (obj.length > 0)
                                {
                                    $(".note-editable").html(obj[0].auto_desc);
                                    $('#flading').hide();
                                }
                            } else
                            {
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
                            if (obj.length > 0)
                            {
                                $.each(obj, function (index, value) {
                                    entity_user = obj[index].assigned_to;
                                    entity_user_to = obj[index].to;
                                    entity_user_cc = obj[index].cc;
                                    entity_user_bcc = obj[index].bcc;
                                    console.log(entity_user);
                                    console.log(entity_user_to);

                                });
                                $("select#assigned_to").val(entity_user);
                                $('#flading').hide();
                            } else
                            {
                                $('#flading').hide();
                            }
                        }
                    });

                } else
                {
                    $(".note-editable").html('');
                }
            });

            $('#assigned_to').change(function (event) {
                var user_id = $("select#assigned_to").val();
                if (user_id !== "0")
                {
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
                            if (obj.length > 0)
                            {
                                $.each(obj, function (index, value) {
                                    entity_user_to = obj[index].username;
                                    entity_user_cc = obj[index].assigned_to;
                                    console.log(entity_user_to);
                                    console.log(entity_user_cc);
                                    $('#flading').hide();
                                });
                            } else
                            {
                                $('#flading').hide();
                            }
                        }
                    });

                }
            });


            $(function () {
                $('#summernote').summernote({
                    height: 150,
                    codemirror: {
                        mode: 'text/html',
                        htmlMode: true,
                        lineNumbers: true,
                        theme: 'monokai'
                    }
                });
            });


        });
    </script>     
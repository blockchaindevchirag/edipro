<%@page contentType="text/html"  pageEncoding="UTF-8" autoFlush="true"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false" %>
<html lang="en">

    <head>
        <title>Bulk EV</title>
        <jsp:include page="includes/header.jsp"></jsp:include>

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
                                            <form:form method="POST" id="benefituploadform" name="bulkev"  onsubmit="removeAttr()" action="importbenxls" modelAttribute="importbenxls" enctype="multipart/form-data">
                                                <ul class="nav nav-tabs" id="myTab" role="tablist">
                                                    <li class="nav-item">
                                                        <a class="nav-link active text-uppercase" id="home-tab" tabindex="1"  data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true">Upload</a>
                                                    <li class="nav-item">
                                                        <a class="nav-link text-uppercase" id="error-tab" tabindex="2"  data-toggle="tab" href="#error" role="tab" aria-controls="error" aria-selected="false">Upload Log</a>
                                                    </li>
                                                    <li class="nav-item">
                                                        <a class="nav-link text-uppercase" id="sample-tab" tabindex="3"  data-toggle="tab" href="#sample" role="tab" aria-controls="sample" aria-selected="false">Sample</a>
                                                    </li>
                                                </ul>
                                                <div class="tab-content" id="myTabContent">
                                                    <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
                                                        <div class="row">
                                                            <div class="col-lg-6">
                                                                <div class="form-group">
                                                                    <label class="form-label"  for="ddlpractice">Practice</label>
                                                                    <select class="form-control js-example-placeholder-multiple col-sm-12" required id="ddlpractice" data-placeholder="Select Practice" tabindex="4" name="ddlpractice">
                                                                    </select>
                                                                </div>
                                                            </div>
                                                            <div class="col-lg-6">
                                                                <div class="form-group">
                                                                    <label class="form-label" for="ddlprovider">Provider</label>
                                                                    <select class="form-control js-example-placeholder-multiple col-sm-12" id="ddlprovider" tabindex="5" data-placeholder="Select Provider" name="ddlprovider">
                                                                    </select>
                                                                </div>
                                                            </div>
                                                            <div class="col-lg-4">
                                                                <div class="form-group">
                                                                    <label class="form-label" for="jobtypeid">Job Type <span class="text-danger">*</span></label>
                                                                    <select class="required form-control" id="jobtypeid"  tabindex="6" name ="jobtypeid">

                                                                        <c:forEach var="Job" items="${jobtypelist}">
                                                                            <option value = ${Job.jobtypeid} >${Job.job_type}</option>
                                                                        </c:forEach>
                                                                    </select>
                                                                </div>
                                                            </div>
                                                            <div class="col-lg-4">
                                                                <div class="form-group">
                                                                    <label class="form-label" for="schedule_type_id">Schedule <span class="text-danger">*</span></label>
                                                                    <select class="required form-control" id="schedule_type_id" tabindex="7" name ="schedule_type_id">

                                                                        <c:forEach var="Job" items="${scheduletypelist}">
                                                                            <option value = ${Job.schedule_type_id} >${Job.schedule_type}</option>
                                                                        </c:forEach>
                                                                    </select>
                                                                </div>
                                                            </div>

                                                            <div class="col-lg-4">
                                                                <div class="form-group">
                                                                    <label class="form-label"> Schedule Date <span class="text-danger">*</span></label>
                                                                    <input type="datetime-local" class="form-control" tabindex="8" id="schdate"  name="schdate" required />
                                                                </div>
                                                            </div>



                                                            <input type="text" style="width:0px;height:0px;border:0px;"  id="createdby" name="createdby" tabindex="12" placeholder="Created By" />
                                                            <div class="col-lg-4">
                                                                <div class="form-group">
                                                                    <label class="form-label">Document   <span class="text-danger">  (Only .xls file type)  </span></label>
                                                                    <input type="file" class="form-control" required  name="file" class="upload" tabindex="9" id="fileUpload">  
                                                                    <input id="uploadFile" placeholder="Choose File" style="display:none;" disabled="disabled" />
                                                                </div>
                                                            </div>




                                                            <!--     <div class="col-lg-4">
                                                                     <div class="form-group">
                                                                         <div class="input-group">
                                                                             <input type="text" class="form-control" readonly>
                                                                             <div class="input-group-btn">
                                                                                 <span class="fileUpload btn btn-success">
                                                                                     <span class="upl" id="upload">Upload single file</span>
                                                                                     <input type="file" class="upload up" id="up" id="fileUpload" onchange="readURL(this);" />
                                                                                 </span>
                                                                             </div>
                                                                         </div>
                                                                     </div>
                                                                   
                                                                 </div> -->
                                                            <div class="col-lg-4">
                                                                <div class="form-group">
                                                                    <label class="form-label">&nbsp;</label>
                                                                    <button type="submit" id="btnsubmit" onclick="removeAttr()" class="btn btn-rounded btn-greenadd btn-block" tabindex="10">Submit</button>
                                                                </div>
                                                            </div>

                                                            <div class="col-lg-4">
                                                                <div class="form-group">
                                                                    <button class="btn btn-success md-trigger" id="download" tabindex="11" style="display:none;"   data-modal="modal-1">Sample Template <i class='fas fa-download m-r-5'></i></button>
                                                                </div>
                                                            </div>

                                                            <div class="col-lg-4" style="display:none;">
                                                                <div class="form-group">
                                                                    <label class="form-label"> DOS </label>
                                                                    <input type="date" class="form-control" tabindex="9" id="dos"  name="dos" />
                                                                </div>
                                                            </div>


                                                        </div>


                                                        <div class="alert alert-danger" id="alertdangertag">
                                                            <span></span>
                                                        </div>

                                                        <div class="alert alert-success" id="alertsuccesstag">
                                                            <span></span>
                                                        </div>



                                                    </div><!-- comment -->

                                                    <div class="tab-pane fade show" id="error" role="tabpanel" aria-labelledby="error-tab">

                                                        <!--                                                        <div class="col-sm-12">
                                                                                                                    <div class="card">
                                                                                                                        <div class="card-body">-->
                                                        <div class="dt-responsive table-responsive tablehide">
                                                            <table id="simpletable" width="98%" class="table table-striped table-bordered nowrap">
                                                                <thead>
                                                                    <tr>
                                                                        <th>Job#</th>
                                                                        <th>Practice</th>
                                                                        <th>Provider</th>
                                                                        <th>Type</th>
                                                                        <th>Schedule</th>
                                                                        <th>Scheduled</th>
                                                                        <th>File Name</th>
                                                                        <th>By</th>
                                                                        <th>Date</th>
                                                                        <th>Status</th>
                                                                        <th>Sschedule</th>
                                                                        <th>Ddate</th>


                                                                    </tr>
                                                                </thead>
                                                                <tbody>
                                                                    <!--    <c:forEach var="Job" items="${jobloglist}">
    
                                                                            <tr>
                                                                                <td>${Job.jobnumber}</td>
                                                                                <td  data-toggle="tooltip" data-placement="top" title="" data-original-title="${Job.practice}"> ${Job.spractice}</td>
                                                                                <td>${Job.provider}</td>
                                                                                <td>${Job.job_type}</td>
                                                                                <td>${Job.schedule_type}</td>
                                                                                <td>${Job.scheduled}</td>
                                                                                <td>${Job.filename}</td>
                                                                                <td>${Job.username}</td>
                                                                                <td>${Job.created_on}</td>
                                                                                <td>${Job.job_status}</td>
                                                                                <td>${Job.sscheduled}</td><!-- comment -->
                                                                    <td>${Job.ccreated_on}</td>
                                                                    </tr>
                                                                </c:forEach> -->

                                                                </tbody>



                                                            </table>
                                                        </div>
                                                        <!--                                                                </div>
                                                                                                                    </div>
                                                                                                                </div>-->
                                                    </div> 



                                                    <div class="tab-pane fade show" id="sample" role="tabpanel" aria-labelledby="sample-tab">

                                                        <!--<div class="col-sm-12">-->
                                                        <!--<div class="card">-->
                                                        <!--<div class="card-body">-->
                                                        <div class="dt-responsive table-responsive">
                                                            <table id="order-table" class="table table-striped table-bordered nowrap">
                                                                <thead>
                                                                    <tr>
                                                                        <th>S.No</th>
                                                                        <th>Template</th>
                                                                        <th>Created On</th>
                                                                        <th>Created By</th>
                                                                        <th>Created For</th>
                                                                        <th></th>


                                                                    </tr>
                                                                </thead>
                                                                <tbody>
                                                                    <c:forEach var="Job" items="${Templatelist}">

                                                                        <tr>

                                                                            <td>${Job.jobtypeid}</td>
                                                                            <td>${Job.job_type}</td>
                                                                            <td>${Job.created_on}</td>
                                                                            <td>${Job.username}</td>
                                                                            <td>${Job.createdfor}</td>
                                                                            <td  data-toggle="tooltip" data-placement="top" title="" data-original-title="${Job.filename}"><a target='_self' href= '../Upload/${Job.filename}' class='btn-icon'><i class='fas fa-download' style='font-size:15px; margin:0 3px;color: #19BCBF;'></i></a></td>

                                                                        </tr>
                                                                    </c:forEach>

                                                                </tbody>
                                                            </table>
                                                        </div>
                                                        <!--                                                                </div>
                                                                                                                    </div>
                                                                                                                </div>-->
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
        function removeAttr() {
            $('#ddlpractice').removeAttr('disabled');
            $('#schdate').removeAttr('disabled');
        }


        $(document).ready(function () {
            $(".table-responsive").removeClass("tablehide");
            $(".table-responsive").addClass("tableshow");
            $('#createdby').hide();
            $('#alertsuccesstag').hide();
            $('#alertdangertag').hide();
            $('#schdate').attr('readonly', true);
            $('#schdate').attr('disabled', 'true');
            $('#flading').show();
            //var lastjobno = '${lastjobid}';
            // alert(lastjobno);

            $('#simpletable').DataTable({
                "aaSorting": [[5, "desc"]], // Sort by first column descending
                "lengthMenu": [10, 30, 50, 100, 200],
                "iDisplayLength": 10,
                fixedHeader: {
                    header: true,
                    footer: true
                },
                "ajax": {
                    "type": "GET",
                    "url": 'logdata',
                    "contentType": 'application/json'
                },
                drawCallback: function (settings, json) {

                    $('[data-toggle="tooltip"]').tooltip('update');
                    //$("#list-of-product tbody tr > td").tooltip('hide');
                },
                "columns": [

                    {"data": "jobnumber", "orderable": true, "searchable": true, "name": "jobnumber"},
                    {"data": "spractice", "orderable": true, "searchable": true, "name": "practice"},
                    {"data": "provider", "orderable": true, "searchable": true, "name": "provider"},
                    {"data": "job_type", "orderable": true, "searchable": true, "name": "job_type"},
                    {"data": "schedule_type", "orderable": true, "searchable": false, "name": "schedule_type"},
                    {"data": "sscheduled", "orderable": true, "searchable": false, "name": "scheduled"},
                    {"data": "sfilename", "orderable": true, "searchable": false, "name": "filename"},
                    {"data": "username", "orderable": true, "searchable": false, "name": "username"},
                    {"data": "ccreated_on", "orderable": true, "searchable": false, "name": "created_on"},
                    {"data": "job_status", "orderable": true, "searchable": false, "name": "job_status"}


                ],

                createdRow: function (row, data, dataIndex) {
                    $(row).find('td:eq(1)').attr('data-toggle', "tooltip");
                    $(row).find('td:eq(1)').attr('data-original-title', data["practice"].toString());
                    $(row).find('td:eq(6)').attr('data-toggle', "tooltip");
                    $(row).find('td:eq(6)').attr('data-original-title', data["filename"].toString());

                    $(row).find('td:eq(5)').text(data["scheduled"].toString());
                    $(row).find('td:eq(8)').text(data["created_on"].toString());

                }
            });

            $('#simpletable').find('thead').find('tr').each(function () {


                $(this).find('th:eq(10)').hide();
                $(this).find('th:eq(11)').hide();

            });

            var filename = '';

            $('#fileUpload').change(function (e) {
                filename = e.target.files[0].name;
              
                /* getting file extenstion eg- .jpg,.png, etc */
                var extension = filename.substr(filename.lastIndexOf("."));

                /* define allowed file types */
                var allowedExtensionsRegx = /(\.xls)$/i;

                /* testing extension with regular expression */
                var isAllowed = allowedExtensionsRegx.test(extension);

                if (isAllowed) {
                    alert("File type is valid for the upload.");
                    $('#btnsubmit').removeAttr('disabled');
                    /* file upload logic goes here... */
                } else {
                    alert("Invalid File Type. Upload only .xls file.");
                    $('#btnsubmit').attr('disabled', "true");
                    return false;
                }


                //  alert(geekss + ' is the selected file .');
            });

            document.getElementById("fileUpload").onchange = function () {
                document.getElementById("uploadFile").value = this.value;
            };

            var createdby = '<%= session.getAttribute("Userid")%>';
            var EId = '<%= session.getAttribute("Entityid")%>';
            $('#createdby').val(createdby);




            if (EId !== '')
            {
                $.ajax({
                    url: "practicedetailswtentityid",
                    type: "get", //send it through get method
                    data: {
                        Entityid: EId
                    },
                    success: function (response) {
                        var select = $('#ddlpractice');
                        select.find('option').remove();

                        $('<option>').val("").text("--Select--").appendTo(select);

                        console.log(response);
                        var txt = response;
                        var obj = jQuery.parseJSON(txt);
                        console.log(obj);
                        if (obj.length > 0)
                        {
                            for (var i = 0; i < obj.length; i++)
                            {
                                // var sv = value.split('~');
                                $('<option>').val(obj[i].practice_id).text(obj[i].name).appendTo(select);
                            }
                            console.log("UT:<%=session.getAttribute("UT")%>:");
                            var usertype = '<%=session.getAttribute("UT")%>';
                            var practiceid = '<%=session.getAttribute("practiceid")%>';
                            if (practiceid > 0) {
                                console.log("Practice: " + practiceid);
                                $('#ddlpractice').val(practiceid).change();
                                $('#ddlpractice').attr('disabled', "true");
                            }
                        }
                    }
                });

            }


            $('#ddlpractice').change(function (event) {
                $('#ddlbenefittype').val('');
                var practiceid = $("select#ddlpractice").val();
                if (practiceid !== '')
                {
                    //Proviver

                    $.ajax({
                        url: "providerdetailswtentityid",
                        type: "get", //send it through get method
                        data: {
                            practiceid: practiceid
                        },
                        success: function (response) {
                            var select = $('#ddlprovider');
                            select.find('option').remove();
                            $('<option>').val("0").text("--Select--").appendTo(select);
                            console.log(response);
                            var txt = response;
                            var obj = jQuery.parseJSON(txt);
                            console.log(obj);
                            if (obj.length > 0)
                            {
                                for (var i = 0; i < obj.length; i++)
                                {
                                    // var sv = value.split('~');
                                    $('<option>').val(obj[i].provider_id).text(obj[i].first_name).appendTo(select);
                                }

                            }
                        }
                    });

                } else
                {
                    var select = $('#ddlprovider');
                    select.find('option').remove();
                    $('<option>').val("0").text("--Select--").appendTo(select);
                }
            });

            $('#schedule_type_id').change(function (event) {

                var schedule_type_id = $("select#schedule_type_id").val();


                var now = new Date();
                var day = '';
                var month = '';
                var hr = '';
                var min = '';
                var pmin = '';
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

                    pmin = parseInt(now.getMinutes()) + parseInt(5);
                    if (pmin < 10)
                    {
                        pmin = '0' + pmin;
                    }

                } else
                {
                    min = parseInt(now.getMinutes());
                    if (min < 55)
                    {
                        pmin = parseInt(now.getMinutes()) + parseInt(5);
                    } else
                    {
                        pmin = '00';
                    }
                }
                var today = now.getFullYear() + '-' + (month) + '-' + day + "T" + hr + ":" + min;
                var today_plus5 = now.getFullYear() + '-' + (month) + '-' + day + "T" + hr + ":" + pmin;

                if (schedule_type_id === "1")
                {

                    $('#schdate').val(today);
                    $('#schdate').attr('readonly', true);
                    $('#schdate').attr('disabled', "true");

                } else
                {

                    $('#schdate').val(today_plus5);
                    $('#schdate').removeAttr('disabled');
                    $('#schdate').attr('readonly', false);
                    $('#schdate').attr('min', today);

                }
            });

            $('#schdate').focusout(function (event) {

                var schedule_type_id = $("select#schedule_type_id").val();
                if (schedule_type_id === "2")
                {

                    var now = new Date();

                    var day = '';
                    var month = '';
                    var hr = '';
                    var min = '';
                    var pmin = '';
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
                        pmin = parseInt(now.getMinutes()) + parseInt(5);
                        if (pmin < 10)
                        {
                            pmin = '0' + pmin;
                        }

                    } else
                    {
                        min = parseInt(now.getMinutes());
                        if (min < 55)
                        {
                            pmin = parseInt(now.getMinutes()) + parseInt(5);
                        } else
                        {
                            pmin = '05';
                        }
                    }



                    var today = now.getFullYear() + '-' + (month) + '-' + day + "T" + hr + ":" + pmin;
                    var currdate = now.getFullYear() + '-' + (month) + '-' + day;
                    var sptstr = $(this).val().split('T');
                    var spthr = sptstr[1].split(':');



                    if (currdate === sptstr[0])
                    {
                        console.log('selected hr : ' + parseInt(spthr[0]));
                        console.log('selected min : ' + parseInt(spthr[1]));
                        console.log('current hr: ' + parseInt(hr));
                        console.log('current min: ' + parseInt(min));
                        if (spthr[0] < hr)
                        {


                            msgbox("Past date and time not allowed..! atleast max (5 minutes different from current time).", "Upload Benefit Form", "warning");
                            $('#schdate').val(today);


                        }

                        if (spthr[1] <= min)
                        {

                            msgbox("Past date and time not allowed..! atleast max (5 minutes different from current time).", "Upload Benefit Form", "warning");
                            $('#schdate').val(today);
                        }

                    } else {
                        var selecteddate = new Date(sptstr[0]);
                        var currselect = new Date(currdate);
                        console.log(selecteddate);
                        console.log(currselect);

                        if (new Date(selecteddate).getTime() < new Date(currselect).getTime())
                        {

                            msgbox("Past date and time not allowed..! atleast max (5 minutes different from current time).", "Upload Benefit Form", "warning");
                            $('#schdate').val(today);
                        }

                    }
                }

            });


            var now = new Date();
            var day = '';
            var month = '';
            var hr = '';
            var min = '';
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
            var today = now.getFullYear() + '-' + (month) + '-' + day + "T" + hr + ":" + min;
            $('#schdate').val(today);

            $('#schdate').attr('readonly', true);
            $('#schdate').attr('disabled', 'disabled');
            $('#flading').hide();

            // var modelAttributeValue = '<%= session.getAttribute("Result")%>';

            // console.log(Result);

            /*  var modelAttributeValuer = '${Result}';
             var modelAttributeValuee = '${Error}';
             console.log(modelAttributeValuer);
             console.log(modelAttributeValuee);
             
             if (modelAttributeValuer !== "")
             {
             $('#alertsuccesstag').show();
             $('#alertsuccesstag').find('span').html(modelAttributeValuer);
             
             }
             
             
             if (modelAttributeValuee !== "")
             {
             
             $('#alertdangertag').show();
             $('#alertdangertag').find('span').html(modelAttributeValuee);
             
             } */

            var modelAttributeValuer = '<c:out value="${Result}" />';
            console.log('<c:out value="${Result}" />');
            if (modelAttributeValuer !== "")
            {
                //  alert(modelAttributeValuer);

                $('#alertsuccesstag').show();
                $('#alertsuccesstag').find('span').html('<c:out value="${Result}"  escapeXml="false"/>');

            }

            $("form[name='bulkev']").submit(function ()
            {
                //   alert('Muthu');
                $('#flading').show();
            });

            /*   $('#order-table').find('tbody').find('tr').each(function () {
             
             var status = $(this).find('td').eq(6).text().trim();
             var fn = $(this).find('td').eq(5).text().trim();
             
             // alert(requestid);
             if (status === 'Download')
             {
             $(this).find('td').eq(6).html("<input type='button' value='Download' onclick='downtem("+fn+");' />");
             // $(this).find('td').eq(0).html("<a href= 'editevresult?practice_id=" + practice_id + "&df=" + df + "&op=" + op + "&hi="+hi+"'>" + status + "</a>");
             //"<a onclick='downtem("+fn+");'>" + status + "</a>"
             }
             });
             
             
             
             function downtem(filename)
             {
             //alert(filename);
             var urls = [];
             
             urls.push("../TRANSCRIPTS/" + filename);
             
             
             if (urls.length > 0)
             {
             
             for (var i = 0; i < urls.length; i++) {
             var iframe = $('<iframe style="visibility: collapse;"></iframe>');
             $('body').append(iframe);
             var content = iframe[0].contentDocument;
             var form = '<form action="' + urls[i] + '" method="GET"></form>';
             console.log(form);
             content.write(form);
             $('form', content).submit();
             setTimeout((function (iframe) {
             return function () {
             iframe.remove();
             }
             })(iframe), 2000);
             }
             }
             }
             */

            // $('#flading').hide();

        });
    </script>     
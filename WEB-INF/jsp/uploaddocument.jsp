<%@page contentType="text/html"  pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <title>Document Upload   </title>

        <jsp:include page="includes/header.jsp"></jsp:include>
            <style>
                .ui-pnotify-closer, .ui-pnotify-sticker{
                    display: none !important;
                }
            </style>
            <!--            <style>
            
            
                            .loader{
                                position: fixed;
                                left: 0px;
                                top: 0px;
                                width: 100%;
                                height: 100%;
                                z-index: 9999;
                                background: url("data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='40' height='40' viewBox='0 0 50 50'%3E%3Cpath d='M28.43 6.378C18.27 4.586 8.58 11.37 6.788 21.533c-1.791 10.161 4.994 19.851 15.155 21.643l.707-4.006C14.7 37.768 9.392 30.189 10.794 22.24c1.401-7.95 8.981-13.258 16.93-11.856l.707-4.006z'%3E%3CanimateTransform attributeType='xml' attributeName='transform' type='rotate' from='0 25 25' to='360 25 25' dur='0.6s' repeatCount='indefinite'/%3E%3C/path%3E%3C/svg%3E") center / 50px no-repeat;
                            }
                        </style>-->
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
                                            <form:form method="POST" action="uploadeobdoc" modelAttribute="uploadeobdoc" enctype="multipart/form-data">

                                                <div class="form-group row">

                                                    <div class="col-lg-4">

                                                        <label class="form-label"  for="ddlpractice">Practice<span class="text-danger">*</span></label>

                                                        <select class="form-control js-example-placeholder-multiple" required id="ddlpractice" data-placeholder="Select Practice" name="ddlpractice" >

                                                        </select> 


                                                    </div>
                                                    <div class="col-lg-4">

                                                        <label class="form-label"  for="ddltypeofupload">Type<span class="text-danger">*</span></label>

                                                        <select class="form-control js-example-placeholder-multiple" required id="ddltypeofupload" data-placeholder="Select Upload Type" name="ddltypeofupload" >

                                                        </select> 



                                                    </div>

                                                    <div class="col-lg-4">

                                                        <label class="form-label" for="ddlpatient">Patient </label>
                                                        <select class="form-control js-example-placeholder-multiple" data-placeholder="Select Patient" id="ddlpatient" name="ddlpatient" >
                                                            <!-- <option value="0">--Select--</option> -->

                                                        </select>

                                                    </div>					

                                                </div>									




                                                <div class="form-group row">



                                                    <div class="col-lg-4">                                                  


                                                        <label class="form-label" for="ddlinsurance">Payor <span class="text-danger">*</span></label>
                                                        <select class="form-control js-example-placeholder-multiple" required id="ddlinsurance"  name="ddlinsurance">

                                                        </select>

                                                    </div>

                                                    <div class="col-lg-4">

                                                        <label class="form-label">Payor List</label>
                                                        <select class="form-control"   id="state" name="state" >
                                                            <option value = "fav" >Favourites</option>
                                                            <option value = "OTR" >All Payor List</option>
                                                        </select> 


                                                    </div>

                                                    <div class="col-lg-4">
                                                        <label class="form-label">Browse <span class="text-danger">*</span></label>

                                                        <input class="form-control" style="padding: 4px 15px !important;" type="file" name="file" required id="fileUpload" >  


                                                        <div class="preview"></div>
                                                        <div class="progress" style="display:none">
                                                            <div class="progress-bar" role="progressbar" aria-valuenow="0"
                                                                 aria-valuemin="0" aria-valuemax="100" style="width:0%">
                                                                0%
                                                            </div>
                                                        </div>

                                                    </div>

                                                </div>
                                                <br/>
                                                <div class="form-group row">                                               
                                                    <div class="col-md-4 offset-sm-4">
                                                        <input  type="hidden" name="entityid"  id="entityid" /> 
                                                        <button type="submit"  id="btnsubmit" class="btn btn-rounded btn-greenadd btn-block">Submit</button>
                                                        <!--  <button type="button"  id="btnsubmit" class="btn btn-rounded btn-warning btn-block">apply</button> -->
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
    </div>

    <div id="flading" class="loader">

    </div>
    <script>
        //  $('#ddlpractice').selected

    </script>




    <!-- Required Js -->
    <jsp:include page="includes/footer.jsp"></jsp:include>

        <script src="assets/js/plugins/select2.full.min.js"></script>
        <script src="assets/js/pages/form-select-custom.js"></script>
        <script type="text/javascript">
        $('.pc-selectpicker').selectpicker();


        /*  function uploadform() {
         
         $('form').ajaxForm({
         beforeSend: function (xhr) {
         
         },
         uploadProgress: function (event, position, total, percentComplete) {
         var percentVal = percentComplete + '%';
         //  $('#percent').html(percentVal);
         //   $('#bar').width(percentVal);
         console.log(percentVal);
         },
         complete: function (xhr) {
         //  window.location = "uploadeobdoc"
         }
         });
         } */


        $(document).ready(function () {
            $('#flading').hide();
            var userid = '<%= session.getAttribute("Userid")%>';
            var EId = '<%= session.getAttribute("Entityid")%>';
            var LoginUsername = '<%= session.getAttribute("LoginUsername")%>';
            var entity_user = '';
            var entity_user_to = '';
            var entity_user_cc = '';
            var entity_user_bcc = '';
            $('#entityid').val(EId);
            var practiceid = '<%= session.getAttribute("practiceid")%>';
            var progressbar = $('.progress-bar');
            $("#btnsubmit").click(function () {

                $('#ddlpractice').prop('disabled', false);
                //  $("#btnsubmit").attr('disabled', 'disabled');
                $("form").ajaxForm({
                    beforeSend: function () {
                        $(".progress").css("display", "block");
                        progressbar.width('0%');
                        progressbar.text('0%');
                    },
                    uploadProgress: function (event, position, total, percentComplete) {
                        progressbar.width(percentComplete + '%');
                        progressbar.text(percentComplete + '%');
                    },
                    complete: function (xhr) {
                        $('#flading').show();
                        $('#fileUpload').val('');
                        $('#ddltypeofupload').val("");
                        $('#ddltypeofupload').trigger('change');
                        $('#ddlpatient').val('0');
                        $('#ddlpatient').trigger('change');
                        $('#state').val("fav");
                        $('#ddlinsurance').val('3342');
                        $('#ddlinsurance').trigger('change');
                        $('#ddlpatient').prop('disabled', false);
                        $('#ddlinsurance').prop('disabled', false);
                        $('#state').prop('disabled', false);
                        console.log(practiceid);
                        if (practiceid > 0) {
                            $('#ddlpractice').val(practiceid);
                            $('#ddlpractice').trigger('change');
                            $('#ddlpractice').prop('disabled', true);
                        } else {
                            $('#ddlpractice').val("");
                            $('#ddlpractice').trigger('change');
                        }
                        msgbox("Record Saved", "Document Form", "success");
                        $(".progress").css("display", "block");
                        progressbar.width('0%');
                        progressbar.text('0%');
                        $('#flading').hide();
                    },
                    error: function ()
                    {
                        $('#flading').hide();
                    }
                });
            });


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
                        if (obj.length > 0) {
                            for (var i = 0; i < obj.length; i++) {
                                // var sv = value.split('~');
                                $('<option>').val(obj[i].practice_id).text(obj[i].name).appendTo(select);
                            }
                            //alert(entity);
                            if (practiceid > 0) {
                                $('#ddlpractice').val(practiceid);
                                $('#ddlpractice').trigger('change');
                                $('#ddlpractice').prop('disabled', true);
                            }
                        }
                    }
                });
            }


            /*  $.ajax({
             url: "getstatelist",
             type: "get", //send it through get method
             success: function (response) {
             var select = $('#state');
             select.find('option').remove();
             $('<option>').val("fav").text("--Favourite--").appendTo(select);
             console.log(response);
             var txt = response;
             var obj = jQuery.parseJSON(txt);
             console.log(obj);
             if (obj.length > 0)
             {
             for (var i = 0; i < obj.length; i++)
             {
             $('<option>').val(obj[i].code).text(obj[i].state + ' [' + obj[i].code + '] ').appendTo(select);
             }
             }
             }
             
             }); */






            $.ajax({
                url: "getloadtypeofupload",
                type: "get", //send it through get method
                success: function (response) {
                    var select = $('#ddltypeofupload');
                    select.find('option').remove();
                    $('<option>').val("").text("--Select--").appendTo(select);
                    console.log(response);
                    var txt = response;
                    var obj1 = jQuery.parseJSON(txt);
                    console.log(obj1);
                    if (obj1.length > 0) {
                        for (var i = 0; i < obj1.length; i++) {
                            $('<option>').val(obj1[i].typeofuploadid).text(obj1[i].typeofupload).appendTo(select);
                        }
                    }
                }
            });
            var statecode = "fav";
            var practiceid = practiceid;
            statecode = statecode + "-" + practiceid;
            console.log(statecode);
            //Payor
            $.ajax({
                url: "getStatecode",
                type: "get", //send it through get method
                data: {
                    statecode: statecode
                },
                success: function (response) {
                    var select = $('#ddlinsurance');
                    select.find('option').remove();
                    $('<option>').val("3342").text("--Others--").appendTo(select);
                    console.log(response);
                    var txt = response;
                    var obj = jQuery.parseJSON(txt);
                    console.log(obj);
                    if (obj.length > 0) {
                        for (var i = 0; i < obj.length; i++) {
                            // var sv = value.split('~');
                            $('<option>').val(obj[i].payor_id).text(obj[i].name).appendTo(select);
                        }
                    }
                }
            });
            $.ajax({
                url: "getPatientwtPracticeid",
                type: "get", //send it through get method
                data: {
                    practiceid1: practiceid
                },
                success: function (response) {
                    var select = $('#ddlpatient');
                    select.find('option').remove();
                    $('<option>').val("0").text("Multiple").appendTo(select);
                    console.log(response);
                    var txt = response;
                    var obj = jQuery.parseJSON(txt);
                    console.log(obj);
                    if (obj.length > 0) {
                        for (var i = 0; i < obj.length; i++) {
                            $('<option>').val(obj[i].ddlpatientid).text(obj[i].Patientname).appendTo(select);
                        }
                    }
                }
            });
            $('#state').change(function (event) {
                var statecode = $("select#state").val();
                var practiceid = $("select#ddlpractice").val();
                statecode = statecode + "-" + practiceid;
                //Payor
                $.ajax({
                    url: "getStatecode",
                    type: "get", //send it through get method
                    data: {
                        statecode: statecode
                    },
                    success: function (response) {
                        var select = $('#ddlinsurance');
                        select.find('option').remove();
                        $('<option>').val("3342").text("--Others--").appendTo(select);
                        console.log(response);
                        var txt = response;
                        var obj = jQuery.parseJSON(txt);
                        console.log(obj);
                        if (obj.length > 0) {
                            for (var i = 0; i < obj.length; i++) {
                                // var sv = value.split('~');
                                $('<option>').val(obj[i].payor_id).text(obj[i].name).appendTo(select);
                            }

                        }
                    }
                });
            });
            $('#ddltypeofupload').change(function (event) {
                if ($('#ddlpractice').val() !== "") {

                    $('#flading').show();
                    var type = $('#ddltypeofupload').val();
                    if (type !== "") {
                        if (type === "1") {
                            $('#ddlpatient').val('0');
                            $('#ddlpatient').trigger('change');
                            $('#ddlinsurance').val('3342');
                            $('#ddlinsurance').trigger('change');
                            $('#ddlpatient').prop('disabled', false);
                            $('#ddlinsurance').prop('disabled', true);
                            $('#state').prop('disabled', true);
                        }
                        if (type === "4") {
                            $('#ddlpatient').val('0');
                            $('#ddlpatient').trigger('change');
                            $('#ddlinsurance').val('3342');
                            $('#ddlinsurance').trigger('change');
                            $('#ddlpatient').prop('disabled', true);
                            $('#ddlinsurance').prop('disabled', false);
                            $('#state').prop('disabled', false);
                        }
                        if (type === "8" || type === "17" || type === "18" || type === "19" || type === "20" || type === "21" || type === "22" || type === "23") {
                            $('#ddlinsurance').val('3342');
                            $('#ddlinsurance').trigger('change');
                            $('#ddlpatient').prop('disabled', false);
                            $('#ddlinsurance').prop('disabled', true);
                            $('#state').prop('disabled', true);
                        }
                        if (type === "10" || type === "11" || type === "12" || type === "13" || type === "15" || type === "16") {
                            $('#ddlpatient').val('0');
                            $('#ddlpatient').trigger('change');
                            $('#ddlinsurance').val('3342');
                            $('#ddlinsurance').trigger('change');
                            $('#ddlpatient').prop('disabled', false);
                            $('#ddlinsurance').prop('disabled', true);
                            $('#state').prop('disabled', true);
                        }
                        if (type === "14") {
                            $('#ddlpatient').prop('disabled', false);
                            $('#ddlinsurance').prop('disabled', false);
                            $('#state').prop('disabled', false);
                        }


                        $.ajax({
                            url: "tickettypeofdocumentdetails",
                            type: "get", //send it through get method
                            data: {
                                entity_id: EId,
                                practice_id: $('#ddlpractice').val(),
                                type_of_document: type
                            },
                            success: function (response) {
                                console.log(response);
                                // console.log(response.length);
                                var txt = response;
                                var obj = jQuery.parseJSON(txt);
                                if (obj.length > 0) {
                                    $.each(obj, function (index, value) {
                                        // var sv = value.split('~');
                                        entity_user_to = obj[index].to;
                                        entity_user_cc = obj[index].cc;
                                        entity_user_bcc = obj[index].bcc;
                                        $('#flading').hide();
                                    });
                                } else {
                                    $('#flading').hide();
                                }
                            },
                            error: function (xhr, status, error) {
                                console.log(error); // log the error message to the console
                                $('#flading').hide();
                            }
                        });
                    } else {
                        $('#flading').hide();
                    }
                } else {
                    //  alert('Please, select practice..!');
                    //   msgbox("Please, select practice..!", "Upload Document Form", "warning");
                }


            });
            var filename = '';
            var filesize = '';
            var filetype = '';
            var file = '';
            $('#fileUpload').change(function (e) {
                file = e.target.files[0];
                filesize = e.target.files[0].size;
                filetype = e.target.files[0].type;
                if (file.name.endsWith('.exe')) {
                    msgbox("Uploading EXE files are not allowed", "Document Portal", "error");
                    $(this).next('.custom-file-label').html("Choose file...");
                    $(this).val(null);
                    return;
                } else if (file.name.endsWith('.dll')) {
                    msgbox("Uploading DLL files are not allowed", "Document Portal", "error");
                    $(this).next('.custom-file-label').html("Choose file...");
                    $(this).val(null);
                    return;
                } else if (file.name.endsWith('.sh')) {
                    msgbox("Uploading sh files are not allowed", "Document Portal", "error");
                    $(this).next('.custom-file-label').html("Choose file...");
                    $(this).val(null);
                    return;
                } else if (file.name.endsWith('.bat')) {
                    msgbox("Uploading bat files are not allowed", "Document Portal", "error");
                    $(this).next('.custom-file-label').html("Choose file...");
                    $(this).val(null);
                    return;
                }
//                                                                             alert(fileSize);
                if (filesize > 50000000)
                {
                    msgbox("Uploaded file size exceeded 50MB", "Document Portal", "error");
                    $(this).next('.custom-file-label').html("Choose file...");
                    $(this).val(null);
                    return;
                }
                //replace the "Choose a file" label
                $(this).next('.custom-file-label').html(file.name);
                //$('#getfile1').val(file.name);
                filename = file.name;
                //  alert(geekss + ' is the selected file .');
            });
            $("form").submit(function () {
                $('#flading').show();
                $('#ddlpatient').prop('disabled', false);
                $('#ddlinsurance').prop('disabled', false);
                var now = new Date();
                var day = '';
                var month = '';
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
                var today = now.getFullYear() + '-' + (month) + '-' + day;
                var fn = filename.substr(0, filename.lastIndexOf('.'));
                var ext = filename.replace(/^.*\./, '');
                var ufn = filename.replaceAll('#', '');
                // alert("Patient:  " + ufn);
                var patientid = $("select#ddlpatient").val();
                filename = fn.replaceAll('#', '') + "~" + EId + "_" + $("select#ddlpractice").val() + "_" + $("select#ddltypeofupload").val() + "_" + $("select#ddlpatient").val() + "_" + $("select#ddlinsurance").val() + "." + ext;
                $.ajax({
                    url: "createtypeofupload",
                    type: "get", //send it through get method
                    data: {
                        Userid: userid,
                        practice: $("select#ddlpractice").val(),
                        entity: EId,
                        filename: filename.replace(/ +?/g, '').replace(/[^a-z0-9.\s]/gi, '_'),
                        filesize: filesize,
                        filetype: filetype,
                        patientid: patientid,
                        ufilename: ufn,
                        typeofupload: $("select#ddltypeofupload").val()
                    },
                    success: function (response) {
                        console.log(response);
                        //msgbox("Record Saved", "Religion Form", "success");
                    },
                    error: function (err) {
                        console.log(err);
                        // msgbox("Record Not Saved", "Religion Form", "error: " + err);
                    }
                });
                //  alert(entity_user_to);
                //   entity_user_to = 'muthu@healthomation.com';
                if (entity_user_to !== "0") {
                    var patname = $("#ddlpatient option:selected").text();
                    var splpatname = patname.split('-');
                    //    alert(splpatname[0]);
                    // Email Config
                    $.post('eMail', {
                        recipient: entity_user_to,
                        subject: 'Document Upload for the practice: ' + $("#ddlpractice option:selected").text() + ' - ' + $("#ddltypeofupload option:selected").text(),
                        content: "Hi, <br>" + "Practice: " + $("#ddlpractice option:selected").text() + "<br>Type of Document: " + $("#ddltypeofupload option:selected").text() + "<br> Patient: " + splpatname[0] + "<br> Filename: " + filename + "  [" + filesize + " kb]" + "<br>Filetype: " + filetype,
                        cc: entity_user_cc,
                        bcc: entity_user_bcc

                    }, function (response) {
                        console.log(response);
                    });
                }
                $('#flading').hide();
            });
            $('#ddlpractice').change(function (event) {
                $("#ddltypeofupload").val('');
                $("#ddltypeofupload").trigger('change');
                var practiceid = $("select#ddlpractice").val();
                if (practiceid !== '') {
                    //Patient
                    $.ajax({
                        url: "getPatientwtPracticeid",
                        type: "get", //send it through get method
                        data: {
                            practiceid1: practiceid
                        },
                        success: function (response) {
                            var select = $('#ddlpatient');
                            select.find('option').remove();
                            $('<option>').val("0").text("Multiple").appendTo(select);
                            console.log(response);
                            var txt = response;
                            var obj = jQuery.parseJSON(txt);
                            console.log(obj);
                            if (obj.length > 0) {
                                for (var i = 0; i < obj.length; i++) {
                                    $('<option>').val(obj[i].ddlpatientid).text(obj[i].Patientname).appendTo(select);
                                }
                            }
                        }
                    });
                    var statecode = "fav";
                    var practiceid = practiceid;
                    statecode = statecode + "-" + practiceid;
                    console.log(statecode);
                    //Payor
                    $.ajax({
                        url: "getStatecode",
                        type: "get", //send it through get method
                        data: {
                            statecode: statecode
                        },
                        success: function (response) {
                            var select = $('#ddlinsurance');
                            select.find('option').remove();
                            $('<option>').val("3342").text("--Others--").appendTo(select);
                            console.log(response);
                            var txt = response;
                            var obj = jQuery.parseJSON(txt);
                            console.log(obj);
                            if (obj.length > 0) {
                                for (var i = 0; i < obj.length; i++) {
                                    // var sv = value.split('~');
                                    $('<option>').val(obj[i].payor_id).text(obj[i].name).appendTo(select);
                                }
                                $('#state').val('fav');
                            }
                        }
                    });
                } else {
                    var select1 = $('#ddlpatient');
                    select1.find('option').remove();
                    $('<option>').val("0").text("Multiple").appendTo(select1);
                }
            });
        });
    </script>     
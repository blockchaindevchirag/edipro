<%@page contentType="text/html"  pageEncoding="UTF-8" autoFlush="true"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML>
<html lang="en">

    <head>
        <title> View Notes </title>

        <jsp:include page="includes/header.jsp"></jsp:include>
            <script src="assets/plugins/audio/recorder.js"></script>
            <script src="assets/plugins/audio/Fr.voice.js"></script>
            <script src="assets/plugins/audio/sound_jquery.js"></script>
            <script src="assets/plugins/audio/app.js"></script>

            <script>
                var page = {
                    bootstrap: 3
                };

                function swap_bs() {
                    page.bootstrap = 3;
                }
                ;

            </script>
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


                                            <form:form method="POST" action="updatetransnotesstatus" modelAttribute="updatetransnotesstatus" >

                                                <div class="row" style="margin-bottom: -23px; display:none;">
                                                    <div class="col-md-12 col-xl-3">
                                                        <div class="card card-social">
                                                            <div class="card-block brd-btm" style="height: 30px;">
                                                                <div class="row align-items-center justify-content-center card-active">
                                                                    <div class="col-sm-3" style="padding: 4px 6px 0px;margin-left: -9px;">
                                                                        <h6 class="text-left" style="font-size: 11px;">Patient</h6>
                                                                    </div>
                                                                    <div class="col-sm">
                                                                        <h6 class="text-left  m-b-10" style="font-size: 11px;" id="patientval"></h6>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="card-block brd-btm" style="height: 30px">
                                                                <div class="row align-items-center justify-content-center card-active">
                                                                    <div class="col-sm-3" style="padding: 0px 6px 0px;margin-left: -9px;">
                                                                        <h6 class="text-left" style="font-size: 11px;">DOB</h6>
                                                                    </div>
                                                                    <div class="col-sm">
                                                                        <h6 class="text-left  m-b-10" style="font-size: 11px;" id="dob"></h6>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="card-block brd-btm"  style="height: 30px">
                                                                <div class="row align-items-center justify-content-center card-active">
                                                                    <div class="col-sm-3" style="padding: 6px 6px 0px;margin-left: -9px;">
                                                                        <h6 class="text-left" style="font-size: 11px;margin-top: -6px">Gender</h6>
                                                                    </div>
                                                                    <div class="col-sm">
                                                                        <h6 class="text-left  m-b-10" style="font-size: 11px;" id="gender"></h6>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-12 col-xl-4">
                                                        <div class="card card-social">
                                                            <div class="card-block brd-btm" style="height: 30px;">
                                                                <div class="row align-items-center justify-content-center card-active">
                                                                    <div class="col-sm" style="padding: 4px 6px 0px;margin-left: -9px;">
                                                                        <h6 class="text-left" style="font-size: 11px;">Primary Payor</h6>
                                                                    </div>
                                                                    <div class="col-sm">
                                                                        <h6 class="text-left" style="font-size: 11px;" id="ppayor"></h6>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="card-block brd-btm" style="height: 30px">
                                                                <div class="row align-items-center justify-content-center card-active">
                                                                    <div class="col-sm" style="padding: 0px 6px 0px;margin-left: -9px;">
                                                                        <h6 class="text-left" style="font-size: 11px;">Primary #</h6>
                                                                    </div>
                                                                    <div class="col-sm">
                                                                        <h6 class="text-left  m-b-10" style="font-size: 11px;" id="ppid"></h6>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="card-block brd-btm"  style="height: 30px">
                                                                <div class="row align-items-center justify-content-center card-active">
                                                                    <div class="col-sm" style="padding: 6px 6px 0px;margin-left: -9px;">
                                                                        <h6 class="text-left" style="font-size: 11px;margin-top: -6px">Doctor</h6>
                                                                    </div>
                                                                    <div class="col-sm">
                                                                        <h6 class="text-left  m-b-10" style="font-size: 11px;" id="refdr"></h6>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-12 col-xl-5">
                                                        <div class="card card-social">
                                                            <div class="card-block brd-btm" style="height: 30px;">
                                                                <div class="row align-items-center justify-content-center card-active">
                                                                    <div class="col-sm" style="padding: 4px 6px 0px;margin-left: -9px;">
                                                                        <h6 class="text-left" style="font-size: 11px;">Secondary Payor</h6>
                                                                    </div>
                                                                    <div class="col-sm">
                                                                        <h6 class="text-left" style="font-size: 11px;" id="secpayor"></h6>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="card-block brd-btm" style="height: 30px">
                                                                <div class="row align-items-center justify-content-center card-active">
                                                                    <div class="col-sm" style="padding: 0px 6px 0px;margin-left: -9px;">
                                                                        <h6 class="text-left" style="font-size: 11px;">Secondary #</h6>
                                                                    </div>
                                                                    <div class="col-sm">
                                                                        <h6 class="text-left  m-b-10" style="font-size: 11px;" id="spid"></h6>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="card-block brd-btm"  style="height: 30px">
                                                                <div class="row align-items-center justify-content-center card-active">
                                                                    <div class="col-sm" style="padding: 6px 6px 0px;margin-left: -9px;">
                                                                        <h6 class="text-left" style="font-size: 11px;margin-top: -6px">DOS</h6>
                                                                    </div>
                                                                    <div class="col-sm">
                                                                        <h6 class="text-left  m-b-10" style="font-size: 11px;" id="dosvalue"></h6>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!--     <hr class="hrtopbtm"> -->
                                                <div class="form-group row">                                               
                                                    <div class="col-lg-12">
                                                        <h3 class="text-center  m-b-10" id="templatetype" style="display:none;"></h3>
                                                        <input type="hidden" class="form-control" name="id" id = "id" />
                                                        <input type="hidden" class="form-control" name="content" id = "content" />
                                                        <input type="hidden" name="header" id="header" />
                                                        <input type="hidden" class="form-control" name="patient_name" id = "patient_name" />
                                                        <input type="hidden" class="form-control" name="dos" id = "dos" />
                                                        <input type="hidden" class="form-control" name="status" id = "status" />
                                                    </div>
                                                </div>

                                                <!--   <hr class="hrtopbtm"> -->
                                                <br>
                                                <div class="row" id="insidenotes">
                                                    <div class="form-group row">
                                                        
                                                      <!--  <div class="col-lg-12">                                                          
                                                            <div class="card-body">

                                                                <div id="summerynote">

                                                                    <p>
                                                                    </p>

                                                                </div>
                                                            </div>
                                                        </div> -->
                                                      
                                                      <div class="col-lg-12">
                                                        <div class="card">
                                                            <div class="card-header">
                                                               
                                                            </div>
                                                            <div class="card-body">
                                                                <textarea id="pc-tinymce-4" name="pc-tinymce-4" class="tox-target">
                           
                                                                </textarea>
                                                            </div>
                                                        </div>
                                                    </div>

                                                    </div>
                                                    <!--===========================-->
                                                    <div class="form-group row">                                               
                                                        <div class="col-lg-12 offset-md-1">
                                                            <button type="submit" id="submitid" class="btn btn-rounded btn-greenadd btn-block"></button>

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

            <script type="text/javascript">
                $().removeClass('activeaudio');
                var EId = '<%= session.getAttribute("Entityid")%>';
                var practiceid = '<%= session.getAttribute("practiceid")%>';
                var userid = '<%= session.getAttribute("Userid")%>';
                var UT = '<%= session.getAttribute("UT")%>';

              

                var patientid = GetParameterValues('patient');
                var template = GetParameterValues('templatetype');
                var dos = decodeURI(GetParameterValues('dos')).replace('#!', '');
                var templatename = GetParameterValues('template');
                var temprovider = GetParameterValues('provider');
                var status = GetParameterValues('status');
                var tid = GetParameterValues('id');


                var notescontent = '';
                var headerval = '';
                $(document).ready(function () {
                    var UT = '<%= session.getAttribute("UT")%>';

                    $('#id').val(tid);


                    $('#status').val(status);

                    $('#templatetype').text(decodeURI(templatename));
                    var d = new Date(dos);
                    var day = "";
                    var month = "";
                    var year = d.getFullYear();

                    if (d.getDate() < 10)
                    {
                        day = '0' + d.getDate();
                    } else
                    {
                        day = d.getDate();
                    }
                    if ((d.getMonth() + 1) < 10)
                    {
                        month = '0' + parseInt(d.getMonth() + 1);
                    } else
                    {
                        month = parseInt(d.getMonth() + 1);
                    }


                    //  alert(month + '/' + day + '/'+ year);
                    $('#dosvalue').text(month + '/' + day + '/' + year);
                    $('#dos').val(month + '_' + day + '_' + year);
                    $('#refdr').text(temprovider);
                    $('#flading').hide();


                    if (UT === '2')
                    {
                        $('#submitid').html("PROOF");
                    } else
                    {
                        if (status === '5')
                        {
                            $('#submitid').html("SIGN");
                            $('#submitid').show();
                        } else
                        {
                            $('#submitid').hide();
                        }
                    }


                    $("#submitid").click(function () {

                       // $('#content').val($(".note-editable").html());
                         $('#content').val(tinymce.activeEditor.getContent());
                        $('#header').val(headerval);
                        console.log($('#header').val());
                    });




                    if (template !== '0')
                    {
                        $('#flading').show();

                        var democr = '';
                        if (patientid !== '0')
                        {
                            //  alert(patientid);
                            $.get('getPatientInsDetail', {
                                patientid: patientid
                            }, function (response) {

                                var txt = response;
                                var obj = jQuery.parseJSON(txt);
                                console.log(obj);
                                if (obj.length > 0)
                                {
                                    for (var i = 0; i < obj.length; i++)
                                    {
                                        //   var sv = response.split('~');

                                        var name = obj[i].lname + ", " + obj[i].fname;
                                        console.log(name);
                                        $('#patientval').text(name);
                                        $('#patient_name').val(name);

                                        $('#dob').text(obj[i].dob);

                                        if (obj[i].ddlgender === "1")
                                        {
                                            $('#gender').text("Male");
                                        } else if (obj[i].ddlgender === "2")
                                        {
                                            $('#gender').text("Female");
                                        } else
                                        {
                                            $('#gender').text("Other");
                                        }
                                        //  console.log(sv[22].trim());
                                        $('#ppayor').text(obj[i].ins_no);
                                        $('#ppid').text(obj[i].insurance);
                                        $('#secpayor').text(obj[i].sec_ins_no);
                                        $('#spid').text(obj[i].sinsurance);
                                        democr = "<hr>Patient Name: " + $('#patientval').text() + "<br>" + "DOB: " + $('#dob').text() + "<br>"
                                                + "Gender: " + $('#gender').text() + "<br>" + "DOS: " + $('#dos').text() + "<br>" + "<hr>";
                                    }
                                }

                                if (status === '6')
                                {
                                    $.get('gettransnote_for_id', {
                                        templatecontent: tid
                                    }, function (response) {
                                        // alert(democr);
                                        if (response.length > 0)
                                        {
//                                                    $.each(response, function (index, value) {
                                            var sv = response.split('~');
                                            headerval = sv[4];

//                                                    });
                                        }
                                    });

                                    $.get('gettrans_signedcontent', {
                                        signid: tid
                                    }, function (response) {
                                        //  alert(response);
                                        if (response.length > 0)
                                        {
//                                                    $.each(response, function (index, value) {
                                            var sv = response.split('~');
                                            console.log(response);

                                            notescontent = notescontent + sv[0];
                                            // console.log(sv[1]);
//                                                    });

                                            $('#flading').hide();

                                            //   var head =  "<img src=../Profile/header/" + headerval + "><br>"
                                          //  $(".note-editable").html(notescontent);
                                             tinymce.activeEditor.setContent(notescontent);

                                        } else
                                        {
                                            $('#flading').hide();
                                        }
                                    });



                                } else if (status === '5')
                                {

                                    $.get('gettransnote_for_id', {
                                        templatecontent: tid
                                    }, function (response) {
                                        // alert(democr);
                                        if (response.length > 0)
                                        {
//       $.each(response, function (index, value) {
                                            var sv = response.split('~');
                                            headerval = sv[4];

//                                                    });
                                        }
                                    });


                                    $.get('gettrans_proofcontent', {
                                        proofid: tid
                                    }, function (response) {
                                        //  alert(response);
                                        if (response.length > 0)
                                        {
//                                            $.each(response, function (index, value) {
                                            var sv = response.split('~');
                                            console.log(response);

                                            notescontent = notescontent + sv[0];
                                            // console.log(sv[1]);
//                                            });

                                            $('#flading').hide();

                                            //  var head =  "<img src=../Profile/header/" + headerval + "><br>"
                                         //   $(".note-editable").html(notescontent);
                                            tinymce.activeEditor.setContent(notescontent);

                                        } else
                                        {
                                            $('#flading').hide();
                                        }
                                    });

                                } else
                                {
                                    $.get('gettransnote_for_id', {
                                        templatecontent: tid
                                    }, function (response) {
                                        // alert(democr);
                                        if (response.length > 0)
                                        {

//                                                    $.each(response, function (index, value) {
                                            var sv = response.split('~');
                                            console.log(response);
                                            headerval = sv[4];
                                            // notescontent = "<img src=../Profile/header/"+sv[1]+"><br><br>" + notescontent + sv[0];
                                            notescontent = notescontent + "<b>" + sv[1] + "</b>" + "<br><br>" + sv[3];
                                            // console.log(sv[1]);
//                                                    });


                                            $('#flading').hide();

                                            //  var head =  "<img src=../Profile/header/" + headerval + "><br>"
                                            notescontent = "<center><h3>" + $('#templatetype').text() + "</h3></center>" + democr + notescontent + "<br><br>" + $('#refdr').text();
                                           // $(".note-editable").html(notescontent);
                                            tinymce.activeEditor.setContent(notescontent);

                                        } else
                                        {
                                            $('#flading').hide();
                                        }
                                    });


                                }


//                                    });
//
//                                } else
//                                {
//                                    $('#patient').text("");
//                                    $('#dob').text("");
//                                    $('#gender').text("");
//                                    $('#ppayor').text("");
//                                    $('#ppid').text("");
//                                    $('#secpayor').text("");
//                                    $('#spid').text("");
//                                    $('#flading').hide();
//                                }
                            });

                        }
                    }


                    $(function () {
                        $('#summerynote').summernote({
                            toolbar: [
                                ['style', ['style']],
                                ['fontsize', ['fontsize']],
                                ['font', ['bold', 'italic', 'underline', 'clear']],
                                ['fontname', ['fontname']],
                                ['color', ['color']],
                                ['para', ['ul', 'ol', 'paragraph']],
                                ['insert', ['picture', 'hr']],
                                ['table', ['table']]
                            ],
                            height: 500,
                            width: 950,
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
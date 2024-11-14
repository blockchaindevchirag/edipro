<%@page contentType="text/html"  pageEncoding="UTF-8" autoFlush="true"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="en">

    <head>
        <title> Notes </title>

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


                                            <form:form method="GET" action="viewtransnotes" modelAttribute="notes" enctype="multipart/form-data">

                                                <div class="row" style="margin-bottom: -23px">
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
                                                                        <h6 class="text-left  m-b-10" style="font-size: 11px;" id="dos"></h6>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <hr class="hrtopbtm">
                                                <div class="form-group row">                                               
                                                    <div class="col-lg-12">
                                                        <h3 class="text-center  m-b-10" id="templatetype"></h3>
                                                        <input type="hidden" class="form-control" name="templateid" id = "templateid" >
                                                    </div>
                                                </div>

                                                <hr class="hrtopbtm">
                                                <div class="row" id="insidenotes"></div>
                                                <!--===========================-->
                                                <div class="form-group row">                                               
                                                    <div class="col-md-3 offset-md-4">
                                                        <button type="submit" class="btn btn-rounded btn-greenadd btn-block">Back to View</button>
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

          

            var patientid = GetParameterValues('patient');
            var template = GetParameterValues('templatetype');
            var dos = decodeURI(GetParameterValues('dos')).replace('#!', '');
            var templatename = GetParameterValues('template');
            var temprovider = GetParameterValues('provider');
            var status = GetParameterValues('status');
            var tid = GetParameterValues('id');

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
            dos = year + '-' + month + '-' + day;
            //  alert(templatename);
            function restore(i) {
                $("#record" + i + ", #live").removeClass("disabled");
                $("#pause" + i).replaceWith('<a class="one" id="pause' + i + '><i class="fas fa-pause pauseicon"></i></a>');
                $(".one").addClass("disabled");
                Fr.voice.stop();
            }

            var enabled = true;
            var upload = false;
            var recorded = false;
            var recordid;
            var vbase64 = '';
            function record(i, j) {
                enabled = true;
                upload = false;
                var aud = document.getElementById('audio' + j);
                aud.currentTime = 0;
                aud.pause();
                //  alert(recorded);
                if (recorded === false)
                {
                    //  $('#checkshow' + j).hide();
                    //  $('#edtcheckshow' + j).hide();
                    $('#record' + j).removeClass('activeaudio');
                    $('#stop' + j).removeClass('activeaudio');
                    $('#play' + j).removeClass('activeaudio');
                    $('#save' + j).removeClass('activeaudio');
                    $('#pause' + j).removeClass('activeaudio');

                    $('#record' + j).removeClass('activeaudio');
                    $('#record' + j).addClass('activeaudio');

                    recordid = j;
                    recorded = true;
                    vbase64 = '';
                    $('#level' + j).show();
                    //  $(document).on("click", '#' + i + ':not(.disabled)', function () {

                    Fr.voice.record($("#live").is(":checked"), function () {
                        $('#' + i + " .recordButton").addClass("disabled");
                        $('#' + i + " .stopButton").addClass("disabled");
                        // $("#stop" + j).on('click');
                        $(".one").removeClass("disabled");

                        makeWaveform(j);
                    });
                    // });
                }
            }

            function stop(i, j, h) {
                $('#level' + j).show();
                if (enabled) {
                    //  alert(recordid);
                    //  alert(patientid);
                    //   alert(dos);
                    if (recordid === j)
                    {
                        $('#checkshow' + j).show();
                        $('#stop' + j).removeClass('activeaudio');
                        //  $('#stop' + j).addClass('activeaudio');

                        var notes = $(".note-editable").eq(j).html();
                        $('#flading').show();
                        Fr.voice.export(function (base64) {
                            $("#audio" + j).attr("src", base64);

                            $.ajax({
                                url: "addaudiodetails",
                                type: "post", //send it through get method
                                data: {
                                    patient_id: patientid,
                                    patient: $('#patientval').text().replace(/ +?/g, ''),
                                    created_by: userid,
                                    ref_dr_id: 0,
                                    dos: dos,
                                    template_id: template,
                                    notes_box_id: h,
                                    notes: notes,
                                    noteid: tid,
                                    audio: base64
                                },
                                success: function (response) {
                                    console.log(response);
                                    vbase64 = base64;
                                    $('#flading').hide();
                                },
                                error: function (err) {
                                    console.log(response);
                                    msgbox(response, "Notes Form", "error");
                                    $('#flading').hide();
                                }
                            });

                        }, "base64");

                        restore(i);
                        var aud = document.getElementById('audio' + j);
                        aud.addEventListener("ended", function () {
                            this.currentTime = 0;
                            this.pause();
                        });
                        upload = true;
                        recorded = false;
                        enabled = !enabled;
                        $('#record' + j).removeClass('activeaudio');
                        $('#play' + j).removeClass('activeaudio');
                        $('#save' + j).removeClass('activeaudio');
                        $('#pause' + j).removeClass('activeaudio');
                    }

                } else
                {
                }
            }

            function pause(i, j) {
                // alert(recordid);
                if (recordid === j)
                {
                    $('#pause' + j).removeClass('activeaudio');
                    $('#pause' + j).addClass('activeaudio');
                    //  alert(j);
                    $(document).on("click", '#' + i + ':not(.disabled)', function () {
                        if ($('#' + i).hasClass("resume")) {
                            $('#level' + j).show();
                            $('#ad' + j).text('Recording...');
                            Fr.voice.resume();
                            $('#' + i).replaceWith('<a class="one activeaudio" title= "Paused" id=' + i + '><i class="fas fa-pause pauseicon"></i></a>');
                            // $('#level' + j).removeClass("disabled");
                        } else {
                            $('#level' + j).hide();
                            Fr.voice.pause();

                            $('#ad' + j).text('Paused...');
                            $('#' + i).replaceWith('<a class="one resume activeaudio" title= "Record" id=' + i + '><i class="fas fa-play-circle recordicon"></i></a>');
                            // $('#level' + j).addClass("disabled");
                        }
                        $('#record' + j).removeClass('activeaudio');
                        $('#stop' + j).removeClass('activeaudio');
                        $('#play' + j).removeClass('activeaudio');
                        $('#save' + j).removeClass('activeaudio');
                        //   $('.resume').removeClass('activeaudio');
                    });
                }
            }

            function play(i, j) {
                $('#record' + j).removeClass('activeaudio');
                $('#stop' + j).removeClass('activeaudio');
                $('#play' + j).removeClass('activeaudio');
                $('#save' + j).removeClass('activeaudio');
                $('#pause' + j).removeClass('activeaudio');

                $('#play' + j).removeClass('activeaudio');
                $('#play' + j).addClass('activeaudio');
                Fr.voice.export(function (url) {
                    $("#audio" + j).attr("src", url);
                    $("#audio" + j)[0].play();
                }, "URL");
            }



            function save(i, j, h) {

                var notes = $(".note-editable").eq(j).html();
                if (vbase64 !== '' && notes === '<p></p>')
                {
                    $('#ad' + j).text('Audio Uploaded...');
                } else if (notes !== '<p></p>' && vbase64 === '')
                {
                    $('#ad' + j).text('Text Uploaded...');
                } else if (vbase64 !== '' && notes !== '<p></p>')
                {
                    $('#ad' + j).text('Audio and Text Uploaded...');
                    vbase64 = '';
                }
                $('#level' + j).show();
                if (upload)
                {
                    $('#edtcheckshow' + j).show();
                    $('#record' + j).removeClass('activeaudio');
                    $('#stop' + j).removeClass('activeaudio');
                    $('#play' + j).removeClass('activeaudio');
                    $('#save' + j).removeClass('activeaudio');
                    $('#pause' + j).removeClass('activeaudio');

                    $('#save' + j).removeClass('activeaudio');
                    $('#save' + j).addClass('activeaudio');
                    $('#flading').show();
                    notes = $(".note-editable").eq(j).html();

                    $.ajax({
                        url: "addaudiodetails",
                        type: "post", //send it through get method
                        data: {
                            patient_id: patientid,
                            patient: $('#patientval').text().replace(/ +?/g, ''),
                            created_by: userid,
                            ref_dr_id: 0,
                            dos: dos,
                            template_id: template,
                            notes_box_id: h,
                            notes: notes,
                            noteid: tid,
                            audio: ''
                        },
                        success: function (response) {
                            console.log(response);
                            $('#flading').hide();
                            msgbox("Upload Successfull.", "Notes Form", "success");
                        },
                        error: function (err) {
                            console.log(response);
                            msgbox(response, "Notes Form", "error");
                            $('#flading').hide();
                        }
                    });


                } else
                {
                    if (!recorded)
                    {
                        $('#flading').show();
                        //  $('#edtcheckshow' + j).show();
                        var notes = $(".note-editable").eq(j).html();
                        if (notes !== "<p></p>")
                        {
                            $('#edtcheckshow' + j).show();

                            $.ajax({
                                url: "addaudiodetails",
                                type: "post", //send it through get method
                                data: {
                                    patient_id: patientid,
                                    patient: $('#patientval').text().replace(/ +?/g, ''),
                                    created_by: userid,
                                    ref_dr_id: 0,
                                    dos: dos,
                                    template_id: template,
                                    notes_box_id: h,
                                    notes: notes,
                                    noteid: tid,
                                    audio: ''
                                },
                                success: function (response) {
                                    console.log(response);
                                    $('#flading').hide();
                                    msgbox("Upload Successfull.", "Notes Form", "success");
                                },
                                error: function (err) {
                                    console.log(response);
                                    msgbox(response, "Notes Form", "error");
                                    $('#flading').hide();
                                }
                            });

                        } else
                        {
                            msgbox("No Record Found", "Notes Form", "success");

                            $('#flading').hide();
                        }
                    } else
                    {
                        if (recordid === j)
                        {
                            msgbox("Stop record and then save.", "Notes Form", "warning");

                        }
                    }
                }
            }

            $(document).ready(function () {

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
                $('#dos').text(month + '/' + day + '/' + year);
                $('#refdr').text(temprovider);
                $('#flading').hide();

                if (template !== '0')
                {
                    $('#flading').show();

                    if (status === '7')
                    {
                        $.get('templatedetail', {
                            templateid: template
                        }, function (response) {
                            //  alert(response);
                            if (response.length > 0)
                            {
//                                $.each(response, function (index, value) {
                                var sv = response.split('~');

//                                $('#insidenotes').append('<p><u><b>' + sv[1] + '</b></u></p>');
//                                $('#insidenotes').append('<div id=' + sv[1] + '_' + index + '><p></p></div>');
                                var tr_str = "<div class='col-xl-8 col-md-6'>" +
                                        "<div class='card1 table-card1' style='border-top: 1px solid #f1f3f4;'>" +
                                        "<div class='card-header'>" +
                                        "<span class='aud-check' id='edtcheckshow" + index + "'><i class='fas fa-check'></i></span>" +
                                        "<h5>" + sv[1] + "</h5>" +
                                        "</div>" +
                                        "<div class='card-body px-0 py-0' id=notes_" + index + "><p></p>" +
                                        "</div>" +
                                        "</div>" +
                                        "</div>" +
                                        "<div class='col-md-6 col-xl-4' id='MenuBar'>" +
                                        "<div class='card user-card'>" +
                                        "<div class='card-header'>" +
                                        "<span class='aud-check' id='checkshow" + index + "'><i class='fas fa-check'></i></span>" +
                                        "<h5 id = ad" + index + ">Audio Record</h5>" +
                                        "</div>" +
                                        "<div class='card-body text-center' style='margin-left:-25px'>" +
                                        "<audio controls id=" + "audio" + index + " style='width:255px'></audio>" +
                                        "<hr>" +
                                        "<div class='row'>" +
                                        "<div class='col-12'>" +
                                        "<canvas id=" + "level" + index + " class='audiobase'></canvas>" +
                                        "</div>" +
                                        "</div>" +
                                        "<hr>" +
                                        "<div class='row justify-content-center user-social-link'>" +
                                        "<div class='col-auto postaudio" + index + "' id='Navigation'>" +
                                        "<a class='recordButton' id=" + "record" + index + " title ='Record' onClick = record('" + 'record' + index + "','" + index + "');><i class='fas fa-microphone recordicon'></i></a>" +
                                        "</div>" +
                                        "<div class='col-auto postaudio" + index + "'>" +
                                        "<a class='stopButton disabled one' title ='Stop and Upload Dictation' id=" + "stop" + index + " onClick = stop('" + 'stop' + index + "','" + index + "','" + sv[2] + "');><i class='fas fa-stop stopicon'></i></a>" +
                                        "</div>" +
                                        "<div class='col-auto postaudio" + index + "'>" +
                                        "<a class='disabled one' title ='Pause' id=" + "Pause" + index + " onClick = pause('" + 'pause' + index + "','" + index + "');><i class='fas fa-pause pauseicon'></i></a>" +
                                        "</div>" +
                                        // "<div class='col-auto'>" +
                                        // "<a class='disabled one' id=" + "down" + index + " onClick = down('" + 'down' + index + "','" + index + "');><i class='fas fa-play playicon'></i></a>" +
                                        // "</div>" +
                                        "<div class='col-auto postaudio" + index + "'>" +
                                        "<a class='disabled one' title ='Upload Dictation and Text' id=" + "save" + index + " onClick = save('" + 'save' + index + "','" + index + "','" + sv[2] + "');><i class='fas fa-cloud-upload-alt cloudicon'></i></a>" +
                                        "</div>" +
                                        "</div>" +
                                        "</div>" +
                                        "</div>" +
                                        "</div>";



                                $('#insidenotes').append(tr_str);

                                $('#notes_' + index).summernote({
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
                                    height: 165,
//                                    width: 750,
                                    codemirror: {
                                        mode: 'text/html',
                                        htmlMode: true,
                                        lineNumbers: true,
                                        theme: 'monokai'
                                    }
                                });
                                // console.log(sv[1]);
                                $('#checkshow' + index).hide();
                                $('#edtcheckshow' + index).hide();
                                $('#flading').hide();
//                                });
                            } else
                            {
                                $('#flading').hide();
                            }
                        });

                    } else
                    {
                        $.get('gettransnote', {
                            templatepostid: tid
                        }, function (response) {
                            //  alert(response);
                            if (response.length > 0)
                            {
//                                $.each(response, function (index, value) {
                                var sv = response.split('~');
                                console.log(response);

                                console.log(status);
                                if (status === '3')
                                {
                                    var tr_str = "<div class='col-xl-8 col-md-6'>" +
                                            "<div class='card1 table-card1' style='border-top: 1px solid #f1f3f4;'>" +
                                            "<div class='card-header'>" +
                                            "<h5>" + sv[1] + "</h5>" +
                                            "</div>" +
                                            "<div class='card-body px-0 py-0' id=notes_" + index + "><p></p>" +
                                            "</div>" +
                                            "</div>" +
                                            "</div>" +
                                            "<div class='col-md-6 col-xl-4' id='MenuBar'>" +
                                            "<div class='card user-card'>" +
                                            "<div class='card-header'>" +
                                            "<h5 id = ad" + index + ">Audio Record</h5>" +
                                            "</div>" +
                                            "<div class='card-body  text-center'>" +
                                            "<audio controls id=" + "audio" + index + "" + " src= " + "../Audio/" + sv[4] + " style='width:255px'></audio>" +
                                            //"<audio controls id=" + "audio" + index + " src='" + sv[4] + "' style='width:255px'></audio>" +
                                            "<hr>" +
                                            "<div class='row'>" +
                                            "<div class='col-12'>" +
                                            "<canvas id=" + "level" + index + " class='audiobase'></canvas>" +
                                            "</div>" +
                                            "</div>" +
                                            "<hr>" +
                                            "<div class='row justify-content-center user-social-link'>" +
                                            "<div class='col-auto postaudio" + index + "' id='Navigation'>" +
                                            "<a class='recordButton' title ='Record' id=" + "record" + index + " onClick = record('" + 'record' + index + "','" + index + "');><i class='fas fa-microphone recordicon'></i></a>" +
                                            "</div>" +
                                            "<div class='col-auto postaudio" + index + "'>" +
                                            "<a class='stopButton disabled one' title ='Stop and Upload Dictation' id=" + "stop" + index + " onClick = stop('" + 'stop' + index + "','" + index + "','" + sv[2] + "');><i class='fas fa-stop stopicon'></i></a>" +
                                            "</div>" +
                                            "<div class='col-auto postaudio" + index + "'>" +
                                            "<a class='disabled one' title ='Pause' id=" + "pause" + index + " onClick = pause('" + 'pause' + index + "','" + index + "');><i class='fas fa-pause pauseicon'></i></a>" +
                                            "</div>" +
                                            "<div class='col-auto postaudio" + index + "'>" +
                                            "<a class='disabled one' title ='Upload Dictation and Text' id=" + "save" + index + " onClick = save('" + 'save' + index + "','" + index + "','" + sv[2] + "');><i class='fas fa-cloud-upload-alt cloudicon'></i></a>" +
                                            "</div>" +
                                            "</div>" +
                                            "</div>" +
                                            "</div>" +
                                            "</div>";

                                    //  $("#audio" + index).load();
                                    // $("#audio" + index).play();


                                } else
                                {
                                    var tr_str = "<div class='col-xl-8 col-md-6'>" +
                                            "<div class='card1 table-card1' style='border-top: 1px solid #f1f3f4;'>" +
                                            "<div class='card-header'>" +
                                            "<h5>" + sv[1] + "</h5>" +
                                            "</div>" +
                                            "<div class='card-body px-0 py-0' id=notes_" + index + "><p></p>" +
                                            "</div>" +
                                            "</div>" +
                                            "</div>" +
                                            "<div class='col-md-6 col-xl-4' id='MenuBar'>" +
                                            "<div class='card user-card'>" +
                                            "<div class='card-header'>" +
                                            "<h5 id = ad" + index + ">Audio Record</h5>" +
                                            "</div>" +
                                            "<div class='card-body  text-center'>" +
                                            "<audio controls id=" + "audio" + index + "" + " src= " + "../Audio/" + sv[4] + " style='width:255px'></audio>" +
                                            "<hr>" +
                                            "<div class='row'>" +
                                            "<div class='col-12'>" +
                                            "<canvas id=" + "level" + index + " class='audiobase'></canvas>" +
                                            "</div>" +
                                            "</div>" +
                                            "<hr>" +
                                            "<div class='row justify-content-center user-social-link'>" +
                                            "<div class='col-auto postaudio" + index + "' id='Navigation'>" +
                                            "<a class='recordButton' title ='Record' style='display:none;' id=" + "record" + index + " onClick = record('" + 'record' + index + "','" + index + "');><i class='fas fa-microphone recordicon'></i></a>" +
                                            "</div>" +
                                            "<div class='col-auto postaudio" + index + "'>" +
                                            "<a class='stopButton' style='display:none;' title ='Stop and Upload Dictation' id=" + "stop" + index + " onClick = stop('" + 'stop' + index + "','" + index + "','" + sv[2] + "');><i class='fas fa-stop stopicon'></i></a>" +
                                            "</div>" +
                                            "<div class='col-auto postaudio" + index + "'>" +
                                            "<a class='disabled one' style='display:none;' title ='Pause' id=" + "pause" + index + " onClick = pause('" + 'pause' + index + "','" + index + "');><i class='fas fa-pause pauseicon'></i></a>" +
                                            "</div>" +
                                            // "<div class='col-auto'>" +
                                            // "<a class='disabled one' id=" + "down" + index + " onClick = down('" + 'down' + index + "','" + index + "');><i class='fas fa-play playicon'></i></a>" +
                                            // "</div>" +
                                            "<div class='col-auto postaudio" + index + "'>" +
                                            "<a class='disabled one' title ='Upload Dictation and Text' id=" + "save" + index + " onClick = save('" + 'save' + index + "','" + index + "','" + sv[2] + "');><i class='fas fa-cloud-upload-alt cloudicon'></i></a>" +
                                            "</div>" +
                                            "</div>" +
                                            "</div>" +
                                            "</div>" +
                                            "</div>";

                                }

                                $('#insidenotes').append(tr_str);


                                $('#notes_' + index).summernote({
                                    height: 165,
//                                    width: 750,
                                    codemirror: {
                                        mode: 'text/html',
                                        htmlMode: true,
                                        lineNumbers: true,
                                        theme: 'monokai'
                                    }
                                });

                                $(".note-editable").eq(index).html(sv[3]);

                                $('#checkshow' + index).hide();
                                $('#edtcheckshow' + index).hide();

                                // console.log(sv[1]);
//                                });

                                $('#flading').hide();
                            } else
                            {
                                $('#flading').hide();
                            }
                        });
                    }

                }


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
                                var name = obj[i].lname + ", " + obj[i].fname;
                                console.log(name);
                                $('#patientval').text(name);

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

                            }
                        }

                    });

                }

            });

    </script>     
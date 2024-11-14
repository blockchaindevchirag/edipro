<%@page import="org.springframework.boot.web.servlet.server.Session"%>
<%@page contentType="text/html"  pageEncoding="UTF-8" autoFlush="true"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML>
<html lang="en">

    <head>
        <title> Notes</title>
        <!-- <script type="text/javascript" -->
        <!-- 			src="https://speechanywhere.nuancehdp.com/Mainline/scripts/Nuance.SpeechAnywhere.js"></script> -->
        <script  src="assets/plugins/ckeditor/ckeditor.js"></script>
        <script  src="assets/plugins/ckeditor/config.js"></script>
        <link rel="stylesheet" href="assets/plugins/ckeditor/samples/css/samples.css">
        <style>
            .ckEditor
            {
                border: 1px black solid;
            }
            .ckEditor b, strong {
				  font-weight: bolder ! important;
			}
            .modal {
                padding: 20px;
                border-radius: 3px;
                background-color: transparent !important;
                max-width: 700px;
                -webkit-box-sizing: border-box;
                -moz-box-sizing: border-box;
                box-sizing: border-box;
                width: 80% !important;
                top: 47% !important;
                position: fixed;
                left: 750px !important;
                -webkit-transform: translate(-50%, -50%) !important;
                -moz-transform: translate(-50%, -50%) !important;
                -o-transform: translate(-50%, -50%) !important;
                -ms-transform: translate(-50%, -50%) !important;
                transform: translate(-50%, -50%) !important;
            }
        </style>
        <script type="text/javascript">
            CKEDITOR.editorConfig = function (config) {
                config.language = 'es';
                config.uiColor = '#F7B42C';
                config.height = 500;
                config.toolbarCanCollapse = true;
                config.extraPlugins = 'font';
            };
            function NUSA_configure() {
                console.log("NUSA_configure");
                NUSA_userId = '<%= session.getAttribute("NUSA_userId")%>';
                NUSA_applicationName = '<%= session.getAttribute("NUSA_applicationName")%>';
            }
            function onInit() {
                if (!NUSA_initializeVuiForm()) {
                    console.log("failed to init vuiForm");
                } else {
                    console.log("Suceess NUSA_initializeVuiForm");
                }
            }

        </script>
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

        <div id="exampleModalLive" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="exampleModalLiveLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLiveLabel">Confirmation !</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    </div>
                    <div class="modal-body">
                        <p>Whether the Report is complete?</p>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-light" data-dismiss="modal">No</button>
                        <!-- <button type="button" id="signandlock" class="btn btn-rounded btn-warning btn-block">Sign & Lock</button> -->
                        <button type="button" id="signandlock" class="btn btn-primary">Yes</button>
                    </div>
                </div>
            </div>
        </div>


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


                                            <form:form action="" modelAttribute="notes" enctype="multipart/form-data">

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
                                                        <h3 class="text-center" id="templatetype"></h3>
                                                        <input type="hidden" class="form-control" name="templateid" id = "templateid" >
                                                    </div>                                                       
                                                </div>

                                                <div class="row" id="insidenotes">

                                                    <div class="col-xl-8 col-md-6">
                                                        <div class="card1 table-card1" style="border-top: 1px solid #f1f3f4;">
                                                            <div class="card-header">
                                                                <span class="aud-check" id="edtcheckshow0"><i class="fas fa-check"></i></span>                                           
                                                            </div>
                                                            <div class="card-body px-0 py-0" id="notes_0"><textarea id='pc-tinymce-4' name='pc-tinymce-4' class='tox-target'></textarea>
                                                            </div>
                                                            <div class="card-body px-0 py-0" style="display: none;border: 1px black solid;" id="notes_1">
                                                                <textarea id="dragon_content" class="ckEditor areaNotes">
                                                                </textarea>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6 col-xl-4" id="MenuBar">
                                                        <div class="card card-social">
                                                            <div class="card-block brd-btm" style="height: 45px;">
                                                                <div class="row align-items-center justify-content-center card-active">
                                                                    <div class="col-sm" style="padding: 4px 6px 0px;margin-left: -9px;">
                                                                        <h6 class="text-left" style="font-size: 11px;">Audio Type:</h6>
                                                                    </div>
                                                                    <div class="col-sm">
                                                                        <h6 class="text-left" style="font-size: 11px;">
                                                                            <input type="radio" class="audioOpt" name="audio_record_opt" value="audio_record" onclick="handleClick(this);"> Audio Record
                                                                        </h6>
                                                                    </div>
                                                                    <div class="col-sm" style="padding: 4px 6px 0px;margin-left: -9px;">
                                                                        <h6 class="text-left" style="font-size: 11px;">
                                                                            <input type="radio" class="audioOpt" name="audio_record_opt" value="transcript" onclick="handleClick(this);" checked>
                                                                            Audio Transcript
                                                                        </h6>
                                                                    </div>
                                                                    <div class="col-sm" style="padding: 4px 6px 0px;margin-left: -9px;">
                                                                        <h6 class="text-left" style="font-size: 11px;">
                                                                            <input type="radio" class="audioOpt" name="audio_record_opt" value="dragon" onclick="handleClick(this);">
                                                                            Dragon Transcript
                                                                        </h6>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="card user-card" id="audioDiv" style="display: none">
                                                            <div class="card-header">
                                                                <span class="aud-check" id="checkshow0"><i class="fas fa-check"></i></span>
                                                                <h5 id = "ad0">Audio Record</h5>
                                                            </div>
                                                            <div class="card-body text-center" style="margin-left:-25px">
                                                                <audio controls id="audio0" style="width:255px"></audio>
                                                                <hr>
                                                                <div class="row">
                                                                    <div class="col-12">
                                                                        <canvas id="level0" class="audiobase"></canvas>
                                                                    </div>
                                                                </div>
                                                                <hr>
                                                                <div class="row justify-content-center user-social-link">
                                                                    <div class="col-auto postaudio0" id="Navigation">
                                                                        <a class="recordButton" data-toggle="tooltip" data-placement="top" data-original-title="Record" title ="Record" id="record0" onClick = "record('record0', '0');"><i class="fas fa-microphone recordicon"></i></a>
                                                                    </div>
                                                                    <div class='col-auto postaudio0'>
                                                                        <a class="stopButton disabled one" data-toggle="tooltip" data-placement="top" data-original-title="Stop and Upload Dictation" title = "Stop and Upload Dictation"  id="stop0" onClick = "stop('stop0', '0', '0');"><i class="fas fa-stop stopicon"></i></a>
                                                                    </div>
                                                                    <div class='col-auto postaudio0'>
                                                                        <a class="disabled one" data-toggle="tooltip" data-placement="top" data-original-title="Pause" title = "Pause"  id="pause0" onClick = "pause('pause0', '0');"><i class="fas fa-pause pauseicon"></i></a>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="card user-card" id="dragonTransDiv" style="display: none">
                                                            <div class="card-header">
                                                                <h5 id="transTitle">Dragon Transcription</h5>
                                                            </div>
                                                            <div class="card-body text-center">
                                                                <div class="row">
                                                                    <div id="speechBarContainer" style="margin-left: 20px;" ></div>
                                                                </div>
                                                            </div>
                                                        </div>

                                                        <div class="card user-card" id="audioTransDiv">
                                                            <div class="card-header">
                                                                <h5 id = "transTitle">Audio Transcription</h5>
                                                            </div>
                                                            <div class="card-body text-center" style="margin-left:-25px">
                                                                <!--<audio controls id="transAudio" style="width:255px"></audio>-->
                                                                <div class="row">
                                                                    <div class="col" style="display: none">
                                                                        <input type="password" id="access_id" value='<%= session.getAttribute("access_key")%>' />
                                                                        <input type="password" id="secret_key" value='<%= session.getAttribute("secret_key")%>' />
                                                                        <select id="language">
                                                                            <optgroup label="English">
                                                                                <option value="en-US" selected="selected">US English (en-US)</option>
                                                                                <option value="en-AU">Australian English (en-AU)</option>
                                                                                <option value="en-GB">British English (en-GB)</option>
                                                                            </optgroup>
                                                                        </select>
                                                                        <select id="region">
                                                                            <option value="us-east-1" selected="selected">US East (N. Virginia)</option>
                                                                            <option value="us-east-2">US East (Ohio)</option>
                                                                            <option value="us-west-2">US West (Oregon)</option>
                                                                            <option value="ap-southeast-2">Asia Pacific (Sydney)</option>
                                                                            <option value="ca-central-1">Canada (Central)</option>
                                                                            <option value="eu-west-1">EU (Ireland)</option>
                                                                        </select>
                                                                    </div>
                                                                </div>
                                                                <div class="row">
                                                                    <div class="col-6">
                                                                        <label>Select Specialty</label>
                                                                    </div>
                                                                    <div class="col-6">
                                                                        <select id="specialty" style="width: inherit;">
                                                                            <option value="PRIMARYCARE" selected="selected">Dental</option>
                                                                            <option value="PRIMARYCARE">Primary Care</option>
                                                                            <option value="CARDIOLOGY">Cardiology</option>
                                                                            <option value="NEUROLOGY">Neurology</option>
                                                                            <option value="ONCOLOGY">Oncology</option>
                                                                            <option value="RADIOLOGY">Radiology</option>
                                                                            <option value="UROLOGY">Urology</option>
                                                                        </select>
                                                                    </div>

                                                                </div>
                                                                <div class="row">
                                                                    <div class="col-12">
                                                                        <canvas id="level1" class="audiobase"></canvas>
                                                                    </div>
                                                                </div>
                                                                <div class="row justify-content-center user-social-link">
                                                                    <div class="col-auto postaudio0" id="Navigation">
                                                                        <button class="recordButton" style="border: none;" onclick="return false;" title ="Record" id="start-button"><i class="fas fa-microphone recordicon"></i></button>
                                                                    </div>
                                                                    <div class='col-auto postaudio0'>
                                                                        <button class="stopButton disabled one" style="border: none;" onclick="return false;" title = "Stop Dictation"  id="stop-button" ><i class="fas fa-stop stopicon"></i></button>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-sm-9 mx-auto">
                                                            <button type="button" width="75px" class="btn btn-greenadd btn-block" role='tooltip' data-microtip-position='bottom' title='' aria-label='If Template is not load, click me!' id="loadTemplate">Load Template</button>

                                                        </div>
                                                    </div> 
                                                </div>

                                                <!--===========================-->
                                                <div class="col-md-12">
                                                    <div class="form-group row"> Comments [Max. 250 Character.]</div>
                                                    <div class="form-group row">     
                                                        <textarea class="form-control" maxlength="250" name="comments" id = "comments"></textarea>


                                                    </div>

                                                </div>

                                                <div class="col-md-12">
                                                    <div class="form-group row">                                               
                                                        <div class="col-md-3">
                                                            <button type="button" id="savefortrans" class="btn btn-rounded btn-greenadd btn-block">Save for Trans</button>

                                                        </div>
                                                        <div class="col-md-3">

                                                            <button type="button" class="btn btn-rounded btn-greenadd btn-block" data-toggle="modal" data-target="#exampleModalLive">Sign & Lock</button>
                                                        </div>

                                                        <div class="col-md-3">
                                                            <button type="button" id="delete" class="btn btn-rounded btn-greenadd btn-block" >Delete</button>

                                                        </div>

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
    <script  src="assets/js/ebill/medTrans/bundle.js"></script>
    <!-- Required Js -->
    <jsp:include page="includes/footer.jsp"></jsp:include>

        <script type="text/javascript">
        $().removeClass('activeaudio');
        var EId = '<%= session.getAttribute("Entityid")%>';
        var practiceid = '<%= session.getAttribute("practiceid")%>';
        var patientid = '<%= session.getAttribute("patientidparam")%>';
        var template = '<%= session.getAttribute("typeoftemplate")%>';
        var para_practice_id = '<%= session.getAttribute("para_practice_id")%>';
        var para_provider_id = '<%= session.getAttribute("para_provider_id")%>';
        var userid = '<%= session.getAttribute("Userid")%>';
        var dos = '<%= session.getAttribute("notesdos")%>';
        var templatename = '<%= session.getAttribute("templatename")%>';
        var temprovider = '<%= session.getAttribute("temprovider")%>';
        var noteid = '<%= session.getAttribute("dictationid")%>';
        var radiologyReportId = '<%= session.getAttribute("radiologyReportId")%>';
        var accessKey = '<%= session.getAttribute("access_key")%>';
        var secretKey = '<%= session.getAttribute("secret_key")%>';
        var header = '';
        var signature = '';
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
            $(".audioOpt").attr('disabled', true);
            var aud = document.getElementById('audio' + j);
            aud.currentTime = 0;
            aud.pause();
            //  alert(recorded);
            if (recorded === false)
            {
                //  $('#checkshow' + j).show();
                // $('#edtcheckshow' + j).hide();
                $('#record' + j).removeClass('activeaudio');
                $('#stop' + j).removeClass('activeaudio');
                $('#play' + j).removeClass('activeaudio');
                $('#save' + j).removeClass('activeaudio');
                $('#pause' + j).removeClass('activeaudio');
                $('#ad' + j).text('Recording...');
                $('#record' + j).addClass('activeaudio');
                $('#level' + j).show();
                recordid = j;
                recorded = true;
                vbase64 = '';
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
            $(".audioOpt").attr('disabled', false);
            if (enabled) {
                //    alert(recordid);
                if (recordid === j)
                {
                    $('#checkshow' + j).show();
                    $('#stop' + j).removeClass('activeaudio');
                    $('#ad' + j).text('Stopped and Audio uploaded...');
                    $('#pause' + j).removeClass('resume');
                    $('#pause' + j).find('i').removeClass('fas fa-play-circle recordicon').addClass('fas fa-pause pauseicon');
                    //                        $('#stop' + j).addClass('activeaudio');
                    upload = false;
                    //  var notes = $(".note-editable").eq(j).html();
                    var notes = tinymce.activeEditor.getContent();
                    // $('#flading').show();

                    Fr.voice.export(function (base64) {
                        $('#audio' + j).attr("src", base64);
                        //   $('#b64').val(base64);

                        var data = new FormData();
                        data.append('patient_id', patientid);
                        data.append('patient', $('#patientval').text().replace(/ +?/g, '').replace(/[^a-z0-9.\s]/gi, '_'));
                        data.append('dos', dos);
                        data.append('noteid', noteid);
                        data.append('dic_audio', base64);
                        // console.log(base64);
                        //  $("<a href='"+base64+"' download='D:\MyRecording.wav'></a>")[0].click();

                        $.ajax({
                            url: "adddicaudiodetails",
                            type: "post", //send it through get method
                            data: data,
                            contentType: false,
                            processData: false,
                            success: function (response) {
                                console.log(response);
                                vbase64 = base64;
                                $('#flading').hide();
                            },
                            error: function (err) {
                                console.log(err);
                                msgbox(err, "Notes Form", "error");
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
            //                 alert(recordid);
            if (recordid === j)
            {
                $('#pause' + j).removeClass('activeaudio');
                //  alert(j);
                $(document).on("click", '#' + i + ':not(.disabled)', function () {
                    if ($('#' + i).hasClass("resume")) {
                        $('#record' + j).addClass('activeaudio');
                        // $('#record' + j).prop('title', 'Recording..');
                        $('#ad' + j).text('Recording...');
                        $('#level' + j).show();
                        Fr.voice.resume();
                        $('#' + i).replaceWith('<a class="one" title= "Pause" id=' + i + '><i class="fas fa-pause pauseicon"></i></a>');
                        // $('#level' + j).removeClass("disabled");
                    } else {
                        $('#level' + j).hide();
                        Fr.voice.pause();
                        $('#ad' + j).text('Paused...');
                        $('#record' + j).removeClass('activeaudio');
                        // $('#record' + j).prop('title', 'Paused..');
                        $('#' + i).replaceWith('<a class="one resume" title= "Record" id=' + i + '><i class="fas fa-play-circle recordicon"></i></a>');
                        // $('#level' + j).addClass("disabled");
                    }
                    $('#stop' + j).removeClass('activeaudio');
                    $('#play' + j).removeClass('activeaudio');
                    $('#save' + j).removeClass('activeaudio');
                    //                        $('.resume').removeClass('activeaudio');
                });
            }
        }

        function play(i, j) {

            // $('#ad' + j).text('Recording...');
            $('#record' + j).addClass('activeaudio');
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

        $(document).ready(function () {

            $("#Close").hover(function () {
                $(this).css("color", "white !important");
            });
            $('#templatetype').text(templatename);
            $('#templatetype').hide();
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
            $('#dos').text(convertYMDtoMDY(dos));
            $('#refdr').text(temprovider);
            $('#flading').show();
            var tn = '';


            function loadTemplate()
            {
                if (template !== '0')
                {
                    var democr = '';
                    if (patientid !== '0')
                    {
                        //  alert(patientid);
                        $.get('getPatientInsDetail', {
                            patientid: patientid
                        }, function (response) {
                            //  alert(response);
                            $('#flading').show();
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
                                    $('#ppayor').text(obj[i].insurance);
                                    $('#ppid').text(obj[i].ins_no);
                                    $('#secpayor').text(obj[i].sinsurance);
                                    $('#spid').text(obj[i].sec_ins_no);
                                    democr = "<br><b>Patient Name: </b>" + $('#patientval').text() + "<br>" + "<b>DOB: </b>" + $('#dob').text() + "<br>"
                                            + "<b>Gender: </b>" + $('#gender').text() + "<br>" + "<b>Primary Payor: </b>" + $('#ppayor').text() + "<br>" + "<b>Primary #: </b>" + $('#ppid').text() + "<br>" + "<b>Secondary Payor: </b>" + $('#secpayor').text() + "<br>" + "<b>Secondary # </b>" + $('#spid').text() + "<br>" + "<b>Admission Date: </b>" + "<br>" + "<b>Service Date: </b>" + $('#dos').text() + "<br>" + "<b>MR/Chart ID: </b>" + patientid + "";
                                }
                            }

                            //  alert(patientid);


                            $.get('gettranstemplate', {
                                dic_templateid: template,
                                para_practice_id: para_practice_id,
                                para_provider_id: para_provider_id
                            }, function (response) {

                                if (response.length > 0)
                                {

                                    var sv = response.split('~');
                                    tn = sv[0];

                                    header = sv[3];
                                    signature = sv[4];

                                    var notescontent = democr + sv[2] + "<br><br>" + $('#refdr').text();
                                    tinymce.activeEditor.setContent(notescontent);
                                    $("textarea#dragon_content").val(notescontent);

                                    $('#checkshow0').hide();
                                    $('#edtcheckshow0').hide();

                                    $('#flading').hide();
                                } else
                                {
                                    $('#flading').hide();
                                }
                            });

                        });
                    }
                }
            }

            loadTemplate();

            $('#loadTemplate').click(function () {
                loadTemplate();
            });


            $('#savefortrans').click(function () {

                $('#flading').show();
                var audio_type = $("input[type='radio'][name='audio_record_opt']:checked").val();
                var content_notes = tinymce.activeEditor.getContent();
                if (audio_type == 'dragon') {
                    content_notes = CKEDITOR.instances['dragon_content'].getData();
                }
                console.log(content_notes);
                var data = new FormData();
                data.append('patient_id', patientid);
                data.append('patient', $('#patientval').text().replace(/ +?/g, '').replace(/[^a-z0-9.\s]/gi, '_'));
                data.append('dos', dos);
                data.append('noteid', noteid);
                data.append('status', 8);
                data.append('folder', "Trans");
                data.append('header', '');
                data.append('signature', '');
                data.append('comments', $('#comments').val());
                data.append('notes_content', content_notes);
                data.append('radiologyId', radiologyReportId);
                // console.log(base64);
                //  $("<a href='"+base64+"' download='D:\MyRecording.wav'></a>")[0].click();

                $.ajax({
                    url: "dictanotesdetails",
                    type: "post", //send it through get method
                    data: data,
                    contentType: false,
                    processData: false,
                    success: function (response) {
                        console.log(response);
                        msgbox("Dictation Saved", "Notes Form", "success");
                        $('#flading').hide();
                        window.location.replace('viewdictanotes');
                    },
                    error: function (err) {
                        console.log(err);
                        msgbox(err, "Notes Form", "error");
                        $('#flading').hide();
                    }
                });




                /*   $.ajax({
                 url: "dictanotesdetails",
                 type: "get", //send it through get method
                 data: {
                 patient_id: patientid,
                 patient: $('#patientval').text().replace(/ +?/g, '').replace(/[^a-z0-9.\s]/gi, '_'),
                 dos: dos,
                 noteid: noteid,
                 status: "8",
                 folder: "Trans",
                 header: '',
                 signature: '',
                 comments: $('#comments').val(),
                 notes_content: tinymce.activeEditor.getContent(),
                 radiologyId: radiologyReportId
                 },
                 success: function (response) {
                 console.log(response);
                 msgbox("Dictation Saved", "Notes Form", "success");
                 $('#flading').hide();
                 window.location.replace('viewdictanotes');
                 },
                 error: function (err) {
                 console.log(err);
                 msgbox(err, "Notes Form", "error");
                 $('#flading').hide();
                 }
                 }); */


            });
            $('#signandlock').click(function () {
                $('#flading').show();
                var audio_type = $("input[type='radio'][name='audio_record_opt']:checked").val();
                //  alert(radiologyReportId);                
                var content_notes = tinymce.activeEditor.getContent();
                console.log(content_notes);
                if (audio_type == 'dragon') {
                    content_notes = CKEDITOR.instances['dragon_content'].getData();
                }
                var data = new FormData();
                data.append('patient_id', patientid);
                data.append('patient', $('#patientval').text().replace(/ +?/g, '').replace(/[^a-z0-9.\s]/gi, '_'));
                data.append('dos', dos);
                data.append('noteid', noteid);
                data.append('status', 6);
                data.append('folder', "Locked");
                data.append('header', header);
                data.append('signature', signature);
                data.append('comments', $('#comments').val());
                data.append('notes_content', content_notes);
                data.append('radiologyId', radiologyReportId);


                // console.log(base64);
                //  $("<a href='"+base64+"' download='D:\MyRecording.wav'></a>")[0].click();

                $.ajax({
                    url: "dictanotesdetails",
                    type: "POST", //send it through get method
                    data: data,
                    contentType: false,
                    processData: false,
                    success: function (response) {
                        console.log(response);
                        msgbox("Dictation Saved", "Notes Form", "success");
                        $('#flading').hide();
                        window.location.replace('viewdictanotes');
                    },
                    error: function (err) {
                        console.log(err);
                        msgbox(err, "Notes Form", "error");
                        $('#flading').hide();
                    }
                });




                /*     $.ajax({
                 url: "dictanotesdetails",
                 type: "get", //send it through get method
                 data: {
                 patient_id: patientid,
                 patient: $('#patientval').text().replace(/ +?/g, '').replace(/[^a-z0-9.\s]/gi, '_'),
                 dos: dos,
                 noteid: noteid,
                 status: "6",
                 folder: "Locked",
                 header: header,
                 signature: signature,
                 comments: $('#comments').val(),
                 notes_content: tinymce.activeEditor.getContent(),
                 radiologyId: radiologyReportId
                 },
                 success: function (response) {
                 console.log(response);
                 msgbox("Dictation Saved", "Notes Form", "success");
                 $('#flading').hide();
                 window.location.replace('viewdictanotes');
                 },
                 error: function (err) {
                 console.log(err);
                 msgbox(err, "Notes Form", "error");
                 $('#flading').hide();
                 }
                 }); */


            });
            $('#delete').click(function () {

                $('#flading').show();


                $.ajax({
                    url: "updatedictanotesstatus",
                    type: "get", //send it through get method
                    data: {
                        noteid: noteid,
                        comments: $('#comments').val(),
                        dic_status: "18"
                    },
                    success: function (response) {
                        console.log(response);
                        msgbox("Dictation Saved", "Notes Form", "success");
                        $('#flading').hide();
                        window.location.replace('viewdictanotes');
                    },
                    error: function (err) {
                        console.log(err);
                        msgbox(err, "Notes Form", "error");
                        $('#flading').hide();
                    }
                });


            });
        });
        function handleClick(audioOpt) {
            var audioDiv = document.getElementById("audioDiv");
            var transDiv = document.getElementById("audioTransDiv");
            var dragonTransDiv = document.getElementById("dragonTransDiv");
            if (audioOpt.value === "audio_record")
            {
                audioDiv.style.display = "block";
                dragonTransDiv.style.display = "none";
                transDiv.style.display = "none";
                $("#notes_0").show();
                $("#notes_1").hide();

            } else if (audioOpt.value === "dragon")
            {
                audioDiv.style.display = "none";
                dragonTransDiv.style.display = "block";
                transDiv.style.display = "none";
                $("#notes_0").hide();
                $("#notes_1").show();
                CKEDITOR.inline('dragon_content');
                var script = document.createElement("script");
                script.type = "text/javascript";
                script.src = "https://speechanywhere.nuancehdp.com/Mainline/scripts/Nuance.SpeechAnywhere.js";
                document.getElementsByTagName("head")[0].appendChild(script);
                setTimeout(() => {
                    NUSA_embedSpeechBar(document.getElementById("speechBarContainer"));
                    NUSA_reinitializeVuiForm();
                }, 3000);

            } else {

                audioDiv.style.display = "none";
                dragonTransDiv.style.display = "none";
                transDiv.style.display = "block";
                $("#notes_0").show();
                $("#notes_1").hide();

            }
        }
    </script>     
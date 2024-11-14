<%@page contentType="text/html"  pageEncoding="UTF-8" autoFlush="true"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML>
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

        <div id="exampleModalLive" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="exampleModalLiveLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLiveLabel">Confirmation !</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    </div>
                    <div class="modal-body">
                        <p>Are you sure to send the report to the doctor for approval?</p>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-light" data-dismiss="modal">No</button>
                        <!-- <button type="button" id="signandlock" class="btn btn-rounded btn-warning btn-block">Sign & Lock</button> -->
                        <button type="button" id="trans_proof" class="btn btn-primary">Yes</button>
                    </div>
                </div>
            </div>
        </div>


        <div id="exampleModalLive1" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="exampleModalLiveLabel1" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLiveLabel1">Confirmation !</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    </div>
                    <div class="modal-body">
                        <p>Are you sure to discard this Notes?</p>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-light" data-dismiss="modal">No</button>
                        <!-- <button type="button" id="signandlock" class="btn btn-rounded btn-warning btn-block">Sign & Lock</button> -->
                        <button type="button" id="provider_discard" class="btn btn-primary">Yes</button>
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


                                                <div class="row" id="insidenotes">
                                                    <div class="col-xl-8 col-md-6">
                                                        <div class="card1 table-card1" style="border-top: 1px solid #f1f3f4;">
                                                            <div class="card-header">
                                                                <span class="aud-check" id="edtcheckshow0"><i class="fas fa-check"></i></span>                                           
                                                            </div>
                                                            <div class="card-body px-0 py-0" id="notes_0"><textarea id='pc-tinymce-4' name='pc-tinymce-4' class='tox-target'></textarea>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6 col-xl-4" id="MenuBar">
                                                        <div class="card user-card">
                                                            <div class="card-header">
                                                                <span class="aud-check" id="checkshow0"><i class="fas fa-check"></i></span>
                                                                <h5 id = "ad0">Audio Record</h5>
                                                            </div>
                                                            <div class="card-body text-center" style="margin-left:-25px">

                                                                <audio controls id="audio0"  style='width:255px'></audio>
                                                                <hr>
                                                                <div class="row">
                                                                    <div class="col-12">
                                                                        <canvas id="level0" class="audiobase"></canvas>
                                                                    </div>
                                                                </div>
                                                                <hr>
                                                                <div class="row justify-content-center user-social-link">

                                                                </div>
                                                            </div>
                                                            <div class="col-sm-6 mx-auto">
                                                                <button type="button" width="75px" class="btn btn-greenadd btn-block" role='tooltip' data-microtip-position='bottom' title='' aria-label='If Template is not load, click me!' id="loadTemplate">Load Template</button>

                                                            </div>

                                                        </div>
                                                    </div> 




                                                </div>
                                                <!--===========================-->
                                                <div class="col-md-12">

                                                    <div class="form-group row"> 
                                                        <div class="col-md-6">
                                                            <div class="" id="commentid"></div>
                                                            <textarea class="form-control" maxlength="250" name="comments" id = "comments" disabled></textarea>
                                                        </div>
                                                        <div class="col-md-6">
                                                            <div class="" id="commentid1"> </div>
                                                            <textarea class="form-control" maxlength="250" name="usercomments" id = "usercomments"></textarea>
                                                        </div>

                                                    </div>

                                                </div>


                                                <!-- Transcriber -->
                                                <div class="col-md-12" id="transpart">
                                                    <div class="form-group row">                                               
                                                        <div class="col-md-2">
                                                            <button type="button" id="trans_transcribed" class="btn btn-rounded btn-greenadd btn-block">Transcribed</button>
                                                        </div>
                                                        <div class="col-md-2">
                                                            <button type="button" class="btn btn-rounded btn-greenadd btn-block" data-toggle="modal" data-target="#exampleModalLive">Proofed</button>
                                                        </div>
                                                        <div class="col-md-2">
                                                            <button type="button" id="nodictation" class="btn btn-rounded btn-greenadd btn-block">No Dictation</button>
                                                        </div>
                                                        <div class="col-md-2">
                                                            <button type="button" id="incomplete" class="btn btn-rounded btn-greenadd btn-block">In Complete</button>
                                                        </div>
                                                        <div class="col-md-2">
                                                            <button type="button" id="trans_return" class="btn btn-rounded btn-greenadd btn-block">Return</button>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!-- Editor -->
                                                <div class="col-md-12" id="editpart">
                                                    <div class="form-group row">                                               
                                                        <div class="col-md-3">
                                                            <button type="button" id="edit_edited" class="btn btn-rounded btn-greenadd btn-block">Edited</button>
                                                        </div>
                                                        <div class="col-md-3">
                                                            <button type="button" id="edit_proof" class="btn btn-rounded btn-greenadd btn-block">Proofed</button>
                                                        </div>
                                                        <div class="col-md-3">
                                                            <button type="button" id="edit_return" class="btn btn-rounded btn-greenadd btn-block">Return</button>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!-- Proofer -->
                                                <div class="col-md-12" id="proofpart">
                                                    <div class="form-group row">                                               
                                                        <div class="col-md-3">
                                                            <button type="button" id="proofed" class="btn btn-rounded btn-greenadd btn-block">Proofed</button>
                                                        </div>

                                                        <div class="col-md-3">
                                                            <button type="button" id="proof_return" class="btn btn-rounded btn-greenadd btn-block">Return</button>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!-- Provider -->
                                                <div class="col-md-12" id="providerpart">
                                                    <div class="form-group row">                                               
                                                        <div class="col-md-3">
                                                            <button type="button" id="provider_sign" class="btn btn-rounded btn-greenadd btn-block">Sign</button>
                                                        </div>
                                                        <div class="col-md-3">
                                                            <button type="button" class="btn btn-rounded btn-greenadd btn-block" data-toggle="modal" data-target="#exampleModalLive1">Discard</button>
                                                        </div>
                                                        <div class="col-md-3">
                                                            <button type="button" id="provider_rework" class="btn btn-rounded btn-greenadd btn-block">Rework</button>
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

    <!-- Required Js -->
    <jsp:include page="includes/footer.jsp"></jsp:include>

        <script type="text/javascript">
            $().removeClass('activeaudio');
            var EId = '<%= session.getAttribute("Entityid")%>';
            var practiceid = '<%= session.getAttribute("practiceid")%>';


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


            function stop(i, j, h) {
                $('#level' + j).show();
                if (enabled) {
                    //    alert(recordid);
                    if (recordid === j)
                    {
                        $('#checkshow' + j).show();
                        $('#stop' + j).removeClass('activeaudio');
                        $('#ad' + j).text('Stopped and Audio uploaded...');
                        $('#pause' + j).removeClass('resume');
                        $('#pause' + j).find('i').removeClass('fas fa-play-circle recordicon').addClass('fas fa-pause pauseicon');
                        upload = false;

                        $('#flading').show();

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

                if (recordid === j)
                {
                    $('#pause' + j).removeClass('activeaudio');

                    $(document).on("click", '#' + i + ':not(.disabled)', function () {
                        if ($('#' + i).hasClass("resume")) {
                            $('#record' + j).addClass('activeaudio');
                            // $('#record' + j).prop('title', 'Recording..');
                            $('#ad' + j).text('Recording...');
                            $('#level' + j).show();
                            Fr.voice.resume();
                            $('#' + i).replaceWith('<a class="one" title= "Pause" id=' + i + '><i class="fas fa-pause pauseicon"></i></a>');

                        } else {
                            $('#level' + j).hide();
                            Fr.voice.pause();
                            $('#ad' + j).text('Paused...');
                            $('#record' + j).removeClass('activeaudio');

                            $('#' + i).replaceWith('<a class="one resume" title= "Record" id=' + i + '><i class="fas fa-play-circle recordicon"></i></a>');

                        }
                        $('#stop' + j).removeClass('activeaudio');
                        $('#play' + j).removeClass('activeaudio');
                        $('#save' + j).removeClass('activeaudio');

                    });
                }
            }


            $(document).ready(function () {

                $("#Close").hover(function () {
                    $(this).css("color", "white !important");
                });

               
                var id = GetParameterValues('id');
                var statusid = GetParameterValues('statusid');
                var user = GetParameterValues('user');
                var patientid = GetParameterValues('patient_id');
                var patient = decodeURI(GetParameterValues('patient'));
                var dos = decodeURI(GetParameterValues('dos'));

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

                var dosval = year + '-' + month + '-' + day;


                if (user === "Trans")
                {
                    $('#commentid').html('Doctor Comments [Max. 250 Character.]');
                    $('#commentid1').html('Your Comments [Max. 250 Character.]');
                    $('#transpart').show();
                    $('#editpart').hide();
                    $('#proofpart').hide();
                    $('#providerpart').hide();
                } else if (user === "Edit")
                {
                    $('#commentid').html('Transcriber Comments [Max. 250 Character.]');
                    $('#commentid1').html('Your Comments [Max. 250 Character.]');
                    $('#transpart').hide();
                    $('#editpart').show();
                    $('#proofpart').hide();
                    $('#providerpart').hide();
                } else if (user === "Proof")
                {
                    $('#commentid').html('Editor Comments [Max. 250 Character.]');
                    $('#commentid1').html('Your Comments [Max. 250 Character.]');
                    $('#transpart').hide();
                    $('#editpart').hide();
                    $('#proofpart').show();
                    $('#providerpart').hide();
                } else if (user === "Sign")
                {
                    $('#commentid').html('Proofer Comments [Max. 250 Character.]');
                    $('#commentid1').html('Your Comments [Max. 250 Character.]');
                    $('#transpart').hide();
                    $('#editpart').hide();
                    $('#proofpart').hide();
                    $('#providerpart').show();
                }


                $('#flading').show();

                var template = id;
                var header = '';
                var signature = '';
                if (template !== '0')
                {
                    //  alert(patientid);
                    $.get('getdictation', {
                        user: user,
                        dic_notesid: template
                    }, function (response) {

                        if (response.length > 0)
                        {
//                            $.each(response, function (index, value) {
                            var sv = response.split('~');

                            $('#audio0').attr("src", "../Audio/" + sv[2]);


                            //  $(".note-editable").eq(0).html(sv[0]);
                            tinymce.activeEditor.setContent(sv[0]);

                            $('#comments').val(sv[1]);
                            header = sv[3];
                            signature = sv[4];
                            console.log(sv[1]);
                            $('#checkshow0').hide();
                            $('#edtcheckshow0').hide();
//                            });
                            $('#flading').hide();
                        } else
                        {
                            $('#flading').hide();
                        }
                    });

                }

                // Transcriber Part Starts
                $('#trans_transcribed').click(function () {

                    $('#flading').show();

                    var content_notes = tinymce.activeEditor.getContent();
                    console.log(content_notes);
                    var data = new FormData();
                    data.append('patient_id', patientid);
                    data.append('patient', patient.replace(/ +?/g, '').replace(/[^a-z0-9.\s]/gi, '_'));
                    data.append('dos', dosval);
                    data.append('noteid', id);
                    data.append('status', 4);
                    data.append('folder', "Edit");
                    data.append('header', '');
                    data.append('signature', '');
                    data.append('comments', $('#usercomments').val());
                    data.append('notes_content', content_notes);
                    data.append('radiologyId', "0");

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

                    /* $.ajax({
                     url: "dictanotesdetails",
                     type: "get", //send it through get method
                     data: {
                     patient_id: patientid,
                     patient: patient.replace(/ +?/g, '').replace(/[^a-z0-9.\s]/gi, '_'),
                     dos: dosval,
                     noteid: id,
                     status: "4",
                     folder: "Edit",
                     header: '',
                     signature: '',
                     comments: $('#usercomments').val(),
                     notes_content: tinymce.activeEditor.getContent(),
                     radiologyId: "0"
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

                $('#trans_proof').click(function () {
                    $('#flading').show();

                    var content_notes = tinymce.activeEditor.getContent();
                    console.log(content_notes);
                    var data = new FormData();
                    data.append('patient_id', patientid);
                    data.append('patient', patient.replace(/ +?/g, '').replace(/[^a-z0-9.\s]/gi, '_'));
                    data.append('dos', dosval);
                    data.append('noteid', id);
                    data.append('status', 5);
                    data.append('folder', "Sign");
                    data.append('header', '');
                    data.append('signature', '');
                    data.append('comments', $('#usercomments').val());
                    data.append('notes_content', content_notes);
                    data.append('radiologyId', "0");

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
                     patient: patient.replace(/ +?/g, '').replace(/[^a-z0-9.\s]/gi, '_'),
                     dos: dosval,
                     noteid: id,
                     status: "5",
                     folder: "Sign",
                     header: '',
                     signature: '',
                     comments: $('#usercomments').val(),
                     notes_content: tinymce.activeEditor.getContent(),
                     radiologyId: "0"
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

                $('#trans_return').click(function () {
                    $('#flading').show();

                    $.ajax({
                        url: "updatedictanotesstatus",
                        type: "get", //send it through get method
                        data: {
                            noteid: id,
                            comments: $('#usercomments').val(),
                            dic_status: "21"
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

                $('#nodictation').click(function () {
                    $('#flading').show();

                    $.ajax({
                        url: "updatedictanotesstatus",
                        type: "get", //send it through get method
                        data: {
                            noteid: id,
                            comments: $('#usercomments').val(),
                            dic_status: "7"
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

                $('#incomplete').click(function () {
                    $('#flading').show();

                    $.ajax({
                        url: "updatedictanotesstatus",
                        type: "get", //send it through get method
                        data: {
                            noteid: id,
                            comments: $('#usercomments').val(),
                            dic_status: "3"
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
                // Transcriber Part End


                // Editor Part Start
                $('#edit_edited').click(function () {
                    $('#flading').show();

                    var content_notes = tinymce.activeEditor.getContent();
                    console.log(content_notes);
                    var data = new FormData();
                    data.append('patient_id', patientid);
                    data.append('patient', patient.replace(/ +?/g, '').replace(/[^a-z0-9.\s]/gi, '_'));
                    data.append('dos', dosval);
                    data.append('noteid', id);
                    data.append('status', 13);
                    data.append('folder', "Proof");
                    data.append('header', '');
                    data.append('signature', '');
                    data.append('comments', $('#usercomments').val());
                    data.append('notes_content', content_notes);
                    data.append('radiologyId', "0");

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

                    /*  $.ajax({
                     url: "dictanotesdetails",
                     type: "get", //send it through get method
                     data: {
                     patient_id: patientid,
                     patient: patient.replace(/ +?/g, '').replace(/[^a-z0-9.\s]/gi, '_'),
                     dos: dosval,
                     noteid: id,
                     status: "13",
                     folder: "Proof",
                     header: '',
                     signature: '',
                     comments: $('#usercomments').val(),
                     notes_content: tinymce.activeEditor.getContent(),
                     radiologyId: "0"
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

                $('#edit_proof').click(function () {
                    $('#flading').show();

                    var content_notes = tinymce.activeEditor.getContent();
                    console.log(content_notes);
                    var data = new FormData();
                    data.append('patient_id', patientid);
                    data.append('patient', patient.replace(/ +?/g, '').replace(/[^a-z0-9.\s]/gi, '_'));
                    data.append('dos', dosval);
                    data.append('noteid', id);
                    data.append('status', 5);
                    data.append('folder', "Sign");
                    data.append('header', '');
                    data.append('signature', '');
                    data.append('comments', $('#usercomments').val());
                    data.append('notes_content', content_notes);
                    data.append('radiologyId', "0");

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

                    /* $.ajax({
                     url: "dictanotesdetails",
                     type: "get", //send it through get method
                     data: {
                     patient_id: patientid,
                     patient: patient.replace(/ +?/g, '').replace(/[^a-z0-9.\s]/gi, '_'),
                     dos: dosval,
                     noteid: id,
                     status: "5",
                     folder: "Sign",
                     header: '',
                     signature: '',
                     comments: $('#usercomments').val(),
                     notes_content: tinymce.activeEditor.getContent(),
                     radiologyId: "0"
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

                $('#edit_return').click(function () {
                    $('#flading').show();

                    $.ajax({
                        url: "updatedictanotesstatus",
                        type: "get", //send it through get method
                        data: {
                            noteid: id,
                            comments: $('#usercomments').val(),
                            dic_status: "22"
                        },
                        success: function (response) {
                            console.log(response);
                            msgbox("Dictation Deleted", "Notes Form", "success");
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
                // Editor Part Ends

                // Proofer Part Starts
                $('#proofed').click(function () {
                    $('#flading').show();

                    var content_notes = tinymce.activeEditor.getContent();
                    console.log(content_notes);
                    var data = new FormData();
                    data.append('patient_id', patientid);
                    data.append('patient', patient.replace(/ +?/g, '').replace(/[^a-z0-9.\s]/gi, '_'));
                    data.append('dos', dosval);
                    data.append('noteid', id);
                    data.append('status', 5);
                    data.append('folder', "Sign");
                    data.append('header', '');
                    data.append('signature', '');
                    data.append('comments', $('#usercomments').val());
                    data.append('notes_content', content_notes);
                    data.append('radiologyId', "0");

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

                    /* $.ajax({
                     url: "dictanotesdetails",
                     type: "get", //send it through get method
                     data: {
                     patient_id: patientid,
                     patient: patient.replace(/ +?/g, '').replace(/[^a-z0-9.\s]/gi, '_'),
                     dos: dosval,
                     noteid: id,
                     status: "5",
                     folder: "Sign",
                     header: '',
                     signature: '',
                     comments: $('#usercomments').val(),
                     notes_content: tinymce.activeEditor.getContent(),
                     radiologyId: "0"
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

                $('#proof_return').click(function () {
                    $('#flading').show();
                    $.ajax({
                        url: "updatedictanotesstatus",
                        type: "get", //send it through get method
                        data: {
                            noteid: id,
                            comments: $('#usercomments').val(),
                            dic_status: "22"
                        },
                        success: function (response) {
                            console.log(response);
                            msgbox("Dictation Deleted", "Notes Form", "success");
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
                // Proofer Part Ends

                // Provider Part Starts          
                $('#provider_sign').click(function () {
                    $('#flading').show();


                    var content_notes = tinymce.activeEditor.getContent();
                    console.log(content_notes);
                    var data = new FormData();
                    data.append('patient_id', patientid);
                    data.append('patient', patient.replace(/ +?/g, '').replace(/[^a-z0-9.\s]/gi, '_'));
                    data.append('dos', dosval);
                    data.append('noteid', id);
                    data.append('status', 6);
                    data.append('folder', "Locked");
                    data.append('header', header);
                    data.append('signature', signature);
                    data.append('comments', $('#usercomments').val());
                    data.append('notes_content', content_notes);
                    data.append('radiologyId', "0");

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

                    /*  $.ajax({
                     url: "dictanotesdetails",
                     type: "get", //send it through get method
                     data: {
                     patient_id: patientid,
                     patient: patient.replace(/ +?/g, '').replace(/[^a-z0-9.\s]/gi, '_'),
                     dos: dosval,
                     noteid: id,
                     status: "6",
                     folder: "Locked",
                     header: header,
                     signature: signature,
                     comments: $('#usercomments').val(),
                     notes_content: tinymce.activeEditor.getContent(),
                     radiologyId: "0"
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


                $('#provider_discard').click(function () {
                    $('#flading').show();

                    $.ajax({
                        url: "updatedictanotesstatus",
                        type: "get", //send it through get method
                        data: {
                            noteid: id,
                            comments: $('#usercomments').val(),
                            dic_status: "20"
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

                $('#provider_rework').click(function () {
                    $('#flading').show();
                    $.ajax({
                        url: "updatedictanotesstatus",
                        type: "get", //send it through get method
                        data: {
                            noteid: id,
                            comments: $('#usercomments').val(),
                            dic_status: "19"
                        },
                        success: function (response) {
                            console.log(response);
                            msgbox("Dictation move to Rework", "Notes Form", "success");
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
                //Provider Part Ends



                function loadTemplate()
                {
                    if (template !== '0')
                    {
                        //  alert(patientid);
                        $.get('getdictation', {
                            user: user,
                            dic_notesid: template
                        }, function (response) {

                            if (response.length > 0)
                            {
//                            $.each(response, function (index, value) {
                                var sv = response.split('~');

                                $('#audio0').attr("src", "../Audio/" + sv[2]);


                                //  $(".note-editable").eq(0).html(sv[0]);
                                tinymce.activeEditor.setContent(sv[0]);

                                $('#comments').val(sv[1]);
                                header = sv[3];
                                signature = sv[4];
                                console.log(sv[1]);
                                $('#checkshow0').hide();
                                $('#edtcheckshow0').hide();
//                            });
                                $('#flading').hide();
                            } else
                            {
                                $('#flading').hide();
                            }
                        });

                    }
                }



                $('#loadTemplate').click(function () {
                    loadTemplate();
                });

            });

    </script>     
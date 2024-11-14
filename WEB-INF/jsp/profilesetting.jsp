<%@page contentType="text/html"  pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Profile</title>

        <style>
            .md-modal {
                position: fixed;
                top: 50%;
                left: 50%;
                width: 75% !important;
                max-width: 75% !important;
                min-width: 320px;
                height: auto;
                z-index: 2000;
                visibility: hidden;
                -webkit-backface-visibility: hidden;
                backface-visibility: hidden;
                -webkit-transform: translateX(-50%) translateY(-50%);
                transform: translateX(-50%) translateY(-50%);
            }

            .card .card-block, .card .card-body {
                padding: 7px 25px !important;
            }

            .md-content button {
                display: block;
                margin: 0 auto;
                font-size: 1.4em !important;
            }

            .modal-backdrop.show {
                opacity: 0 !important;
            }
        </style>
        <script>
            var page = {
                bootstrap: 3
            };

            function swap_bs() {
                page.bootstrap = 3;
            }
        </script>
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
                                    <div class="col-sm-10 offset-md-1" >
                                        <div class="card">
                                            <div class="card-body text-center">
                                            <form:form method="POST" autocomplete="test" action="saveprofile" modelAttribute="profile" enctype="multipart/form-data">
                                                <h5 class="mb-4"></h5>



                                                <div class="form-group mb-3 text-center">
                                                    <input type="image" id="profileimg" class="media-object wid-60 img-radius mb-2"  alt="User-Profile-Image" />
                                                </div>
                                                <div class="form-group mb-3 text-center">

                                                    <input type="file" class="" accept="image/png, image/gif, image/jpeg" id="file" name="file" >
                                                </div>

                                                <hr>
                                                <section>
                                                    <div class="row">
                                                        <div class="col-sm-4">
                                                            <div class="form-group">
                                                                <label class="form-label">User Name</label>
                                                                <input type="email" id="un" required readonly class="form-control"  placeholder="Name">
                                                            </div>
                                                        </div>
                                                        <div class="col-sm-4">
                                                            <div class="form-group">
                                                                <label class="form-label">User Type</label>
                                                                <input type="text" id = "ut" class="form-control" readonly placeholder="User Type">
                                                            </div>
                                                        </div>
                                                        <div class="col-sm-4">
                                                            <div class="form-group">
                                                                <label class="form-label">Entity</label>
                                                                <input type="text" id="entity_id" class="form-control" readonly placeholder="Entity">

                                                            </div>
                                                        </div>
                                                    </div>


                                                    <div class="row">    
                                                        <div class="col-sm-4">
                                                            <div class="form-group">
                                                                <label class="form-label">First Name</label>
                                                                <input type="text" id="firstName" required  class="form-control"  placeholder="First Name">
                                                            </div>
                                                        </div>
                                                        <div class="col-sm-4">
                                                            <div class="form-group">
                                                                <label class="form-label">Last Name</label>
                                                                <input type="text" id = "lastName" class="form-control"  placeholder="Last Name">
                                                            </div>
                                                        </div>
                                                        <div class="col-sm-4">
                                                            <div class="form-group">
                                                                <label class="form-label">Mobile Number</label>
                                                                <input type="text" autocomplete="off" class="form-control" required name="mobileNumber" id = "mobileNumber" maxlength="10" minlength="10" placeholder="Enter User Mobile Number">
                                                                <span id="mobileNumber_error" style="color: red"></span>    
                                                            </div>
                                                        </div>
                                                    </div>    
                                                    <div class="row">    
                                                        <div class="col-sm-4">
                                                            <div class="form-group">
                                                                <label class="form-label">Password</label>
                                                                <input type="password" name="txtpass" autocomplete="off"  class="form-control"  required id="password">
                                                                <i class="far fa-eye eyeiconshow" id="togglePassword"></i>
                                                            </div>
                                                        </div>
                                                        <!--                                                        <div class="col-sm-1">
                                                                                                                    <div class="form-group"><br>
                                                                                                                        <label class="form-label">&nbsp;</label>
                                                                                                                        <span class="far fa-eye eyeiconshow" id="togglePassword" ></span>
                                                                                                                    </div>
                                                                                                                </div>-->
                                                        <div class="col-sm-4">
                                                            <div class="form-group">
                                                                <label class="form-label">Confirm Password</label>
                                                                <input type="password" id="confirm_password"  name="confirmpassword" class="cpassword form-control" required>
                                                                <span id='message'></span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </section>
                                            </div>

                                            <div class="card-body text-center">
                                                <div class="form-group mb-3 text-left">
                                                    <label class="form-label">Signature</label>
                                                    <div id="summernote">

                                                        <p>
                                                        </p>

                                                    </div>
                                                </div>

                                                <hr>
                                                <button type="submit" id="btnsubmit" class="btn btn-primary mb-4">Update</button>
                                                <button type="button" id="btnclose" class="btn btn-primary mb-4">Close</button>
                                            </form:form>
                                        </div>
                                    </div>

                                </div>
                            </div>
                            <!-- [ profile-settings ] end -->
                        </div>
                    </div> 
                    <!-- [ profile-settings ] end -->
                </div><!-- comment -->
            </div>

            <!-- [ profile-settings ] end -->
        </div>
    </div>
    <div id="flading" class="loader">

    </div>

    <!-- Required Js -->
    <jsp:include page="includes/footer.jsp"></jsp:include>


        <script type="text/javascript">

            const togglePassword = document.querySelector('#togglePassword');
            const password = document.querySelector('#password');
            togglePassword.addEventListener('click', function (e) {
                // toggle the type attribute
                const type = password.getAttribute('type') === 'password' ? 'text' : 'password';
                password.setAttribute('type', type);
                // toggle the eye slash icon
                this.classList.toggle('fa-eye-slash');
            });
            // Confirm password list======
            $('#password, #confirm_password').on('keyup', function () {
                if ($('#password').val() === $('#confirm_password').val()) {
                    if ($('#password').val() !== "" || $('#confirm_password').val() !== "")
                    {
                        $('#message').html('Matching').css('color', 'green');
                    } else
                    {
                        $('#message').html('').css('color', 'green');
                    }
                } else
                if ($('#password').val() !== "" || $('#confirm_password').val() !== "")
                {
                    $('#message').html('Not Matching').css('color', 'red');
                } else
                {
                    $('#message').html('').css('color', 'green');
                }
            });

            $(document).ready(function () {
                var user_id = '<%= session.getAttribute("Userid")%>';
                var oldpassword = '';
                // $('#un').removeAttr('disabled',"true");

                //  document.getElementById("password").prop("autocomplete", "off");
                //  document.getElementById("confirm_password").prop("autocomplete", "off");
                $('#flading').hide();
                $("#profileimg").click(function () {
                    // $("input[id='file']").click();
                });

                var filename = '';
                var flag = 'N';

                $('#file').change(function (e) {
                    filename = e.target.files[0].name;
                    var selectedFile = e.target.files[0];
                    var idxDot = selectedFile.name.lastIndexOf(".") + 1;
                    var extFile = selectedFile.name.substr(idxDot, selectedFile.name.length).toLowerCase();
                    if (extFile === "jpg" || extFile === "jpeg" || extFile === "png" || extFile === "gif") {
                        //do whatever want to do
                        flag = 'Y';

                    } else {

                        msgbox("Only jpg/jpeg, png and gif files are allowed!", "Profile Form", "warning");
                        $('#file').val('');
                    }
                    //  alert(geekss + ' is the selected file .');
                });

                //   $("input[id='file']").click(function () {
                // alert("Click");
                //   });


                var msg = '';

                $('#password').focusout(function () {
                    let password = $('#password').val();
                    msg = '';
                    if (!(/^(.{8,20}$)/.test(password))) {

                        msg = 'be 8 to 20 characters long.\n';
                    }
                    if (!(/^(?=.*[A-Z])/.test(password))) {
                        msg += 'contain at least one uppercase.\n';
                    }
                    if (!(/^(?=.*[a-z])/.test(password))) {
                        msg += 'contain at least one lowercase.\n';
                    }
                    if (!(/^(?=.*[0-9])/.test(password))) {
                        msg += 'contain at least one digit.\n';
                    }
                    if (!(/^(?=.*[@#$%&])/.test(password))) {
                        msg += "contain special characters from @#$%&.";
                    }


                    if (msg !== '')
                    {
                        msgbox("", "Password should \n"+msg, "success");

                    }

                });
                
                $('#firstName').focusout(function () {
                    var message='';
                    let fName = $('#firstName').val();
                    if ((/^[A-Za-z]+( [A-Za-z]+)?$/.test(fName)) || $('#firstName').val()==='' ) {                       
                       return true;
                    }else {
                         message += "Enter only alphabet characters. \n";
                    }
                    if (message !== '')
                    {
                        msgbox("", message, "success");
                        $('#firstName').val('');
                    }
                    });
                    
                $('#lastName').focusout(function () {
                    var message='';
                    let lName = $('#lastName').val();
                    if ((/^[A-Za-z]+( [A-Za-z]+)?$/.test(lName)) || $('#lastName').val()==='' ) {                       
                       return true;
                    }else {
                         message += "Enter only alphabet characters. \n";
                    }
                    if (message !== '')
                    {
                        msgbox("", message, "success");
                        $('#lastName').val('');
                    }
                    });


                $("form").submit(function () {

                    // $('#file').val(filename);

                    let password = $('#password').val();

                    if (password === oldpassword)
                    {
                        msg = 'Enter New Password, Not same as old password.\n';
                    }



                    if (msg !== '')
                    {
                        msgbox("", msg, "success");

                    } else
                    {
                        if ($('#password').val() === $('.cpassword').val())
                        {
                            $('#flading').show();
                            $.post('userdetail', {
                                profieImageFile: filename,
                                signature: $(".note-editable").html(),
                                password: $("#password").val(),
                                user_id: user_id,
                                firstName: $("#firstName").val(),
                                lastName: $("#lastName").val(),
                                mobileNumber: $("#mobileNumber").val()
                            }, function (response) {
                                //   console.log(response);
                                if (response === "Success")
                                {
                                    //  swal("Record Saved", "", "success");
                                    //msgbox("Record Saved", "Profile Form", "success");
                                    $('#un').val('');
                                    $('#entity_id').val('');
                                    $('#ut').val('');
                                    $('#myFile').val('');
                                    $('#password').val('');
                                    // alert(payor_id);
                                    $.get('userdetail', {
                                        userid: user_id
                                    }, function (response) {
                                        // alert(response);


                                        if (response.length > 0) {
                                            var txt = response;
                                            var obj = jQuery.parseJSON(txt);

                                            console.log(obj);

                                            if (obj.length > 0) {
                                                for (var i = 0; i < obj.length; i++) {
                                                   // var sv = response.split('~');

                                                    $('#un').val(obj[i].username);
                                                    if (obj[i].profieImageFile === "null" || obj[i].profieImageFile === "") {
                                                        $('#profileimg').attr("src", "assets/images/user/picture1.png");
                                                        // $(".note-editable").html(tab_text);
                                                    } else {
                                                        // var path = "D://" + sv[8].trim();
                                                        var path = "../Profile/" + obj[i].profieImageFile;
                                                     
                                                        $('#profileimg').attr("src", path);
                                                    }

                                                    if (obj[i].signature !== "null" && obj[i].signature !== "") {
                                                        $(".note-editable").html(obj[i].signature);
                                                    }
                                                    oldpassword = obj[i].password;
                                                    //  $('#password').val(sv[2].trim());
                                                    //   $('.cpassword').val(sv[2].trim());
                                                    $('#entity_id').val(obj[i].entity);
                                                    $('#ut').val(obj[i].user_type);
                                                }
                                            }
                                        } 
                                    });

                                    $('#flading').hide();
                                    msgbox("Record Saved successfully", "Profile Form", "success");
                                    setTimeout(function() {
  window.location.replace('logout');
}, 2000);
                                } else {

                                    msgbox(response, "Profile Form", "error");
                                    $('#flading').hide();
                                }
                                //alert("Record Saved");
                            });

                        } else {
                            msgbox("Confirm Password mismatch...!", "Profile Form", "warning");
                        }
                    }
                });

                $('#btnclose').click(function () {
                    window.location.replace('logout');
                });

                $("#btnsubmit").click(function () {

                    //$('#flading').show();
                    $("form").ajaxForm(
                            {
                                beforeSend: function () {

                                },
                                uploadProgress: function (event, position, total, percentComplete) {
                                    //    progressbar.width(percentComplete + '%');
                                    //    progressbar.text(percentComplete + '%');

                                    if (percentComplete <= 100)
                                    {
                                        //   progressbar.width(percentComplete + '%');
                                        // progressbar.text(percentComplete + '%');
                                    }


                                },
                                complete: function (xhr) {
                                    //  window.location = "uploadeobdoc"
                                    //   location.reload();

                                    $('#file').val('');
                                    // $('#ddlpractice').val("");


                                    //   $(".progress").css("display", "block");
                                    //    progressbar.width('0%');
                                    //  progressbar.text('0%');
                                    // $('#flading').hide();
                                    //    $('#btnsubmit').removeAttr('disabled');
                                }
                            });

                });


                $('#un').val('');
                $('#entity_id').val('');
                $('#ut').val('');
                $('#myFile').val('');
                $(".note-editable").html('');
                $('#password').val('');
                $('.cpassword').val('');

                // alert(payor_id);
                $.get('userdetail', {
                    userid: user_id
                }, function (response) {


                    if (response.length > 0)
                    {
                        var txt = response;
                        var obj = jQuery.parseJSON(txt);

                        console.log(obj);


                        if (obj.length > 0)
                        {
                            for (var i = 0; i < obj.length; i++)
                            {
                                var sv = response.split('~');

                                $('#un').val(obj[i].username);
                                $('#firstName').val(obj[i].firstName);
                                $('#lastName').val(obj[i].lastName);
                                $('#mobileNumber').val(obj[i].mobileNumber);
                                if (obj[i].profieImageFile === "null" || obj[i].profieImageFile === "")
                                {
                                    $('#profileimg').attr("src", "assets/images/user/picture1.png");
                                    // $(".note-editable").html(tab_text);
                                } else
                                {
                                    // var path = "D://" + sv[8].trim();
                                    var path = "../Profile/" + obj[i].profieImageFile;

                                    // $(".note-editable").html(tab_text);
                                    flag = 'Y';
                                    filename = obj[i].profieImageFile;
                                    $('#profileimg').attr("src", path);
                                }

                                if (obj[i].signature !== "null" && obj[i].signature !== "")
                                {
                                    $(".note-editable").html(obj[i].signature);
                                }
                                oldpassword = obj[i].password;
                                //  $('#password').val(sv[2].trim());
                                //   $('.cpassword').val(sv[2].trim());
                                $('#entity_id').val(obj[i].entity);
                                $('#ut').val(obj[i].user_type);
                            }
                        }
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

                $(function () {
                    $("#mobileNumber").keypress(function (e) {
                        var keyCode = e.keyCode || e.which;
                        $("#mobileNumber_error").html("");
                        var regex = /^[0-9]$/;
                        var isValid = regex.test(String.fromCharCode(keyCode));
                        if (!isValid) {
                            $("#mobileNumber_error").html("Not valid");
                        }

                        return isValid;
                    });
                });

                //$('#mobileNumber').mask('999-999-9999');


            });


    </script>     
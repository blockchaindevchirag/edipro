<%@page contentType="text/html"  pageEncoding="UTF-8" autoFlush="true"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<html lang="en">

    <head>
        <title>Edit User Master</title>

        <jsp:include page="includes/header.jsp"></jsp:include>
            <style>
                form i {
                    margin-left: 0px;
                    cursor: pointer;
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
                                            <form method="POST" autocomplete="off" action="editusermas" modelAttribute="editusermas" >
                                                <div class="card-body">

                                                    <div class="form-group row">
                                                        <div class="col-sm-4">
                                                            <label class="form-label"  for="Username">Username [must be email id]<span class="text-danger">*</span></label>
                                                            <input type="email" autocomplete="off" class="form-control" required name="Username" id = "Username" placeholder="Enter User Name">
                                                        </div>
                                                    <%-- <div class="col-sm-4">
                                                         <label class="form-label" for="password">password<span class="text-danger">*</span></label>
                                                         <input type="password" autocomplete="off" class="form-control" required name="password" id = "password" placeholder="Enter password">
                                                         <i class="far fa-eye eyeiconshow" id="togglePassword"></i>
                                                     </div>

                                                        <div class="col-sm-4">
                                                            <div class="form-group">
                                                                <label class="form-label">Confirm Password</label>
                                                                <input type="password" autocomplete="off" id="confirm_password" name="confirmpassword" class="cpassword form-control" required>
                                                                <span id='message'></span>
                                                            </div>
                                                        </div>--%>	

                                                    <div class="col-lg-4">
                                                        <!--   <label class="form-label" for="alt_edi_id">EDI Id</label> -->
                                                        <label class="form-label" for="user_type_id">User Type <span class="text-danger">*</span></label>
                                                        <select class="form-control" required id="user_type_id" name ="user_type_id">
                                                            <option value = "0">--Select User Type--</option>
                                                            <c:forEach var="Benefits" items="${usertypelist}">
                                                                <option value = ${Benefits.usertypeid} >${Benefits.usertype}</option>
                                                            </c:forEach>
                                                        </select>          
                                                    </div>					

                                                    <div class="col-lg-4">
                                                        <label class="form-label" for="entity_id">Entity <span class="text-danger">*</span></label>
                                                        <select class="form-control" required id="entity_id" name ="entity_id">
                                                            <option value = "0" >--Select Entity--</option>
                                                            <c:forEach var="practice" items="${entitylist}">
                                                                <option value = ${practice.entity_id} >${practice.entity_name}</option>
                                                            </c:forEach>
                                                        </select>        
                                                    </div>

                                                </div> 	
                                                
                                                <div class="form-group row">
                                                    <div class="col-sm-4">
                                                        <label class="form-label"  for="firstName">First Name<span class="text-danger">*</span></label>
                                                        <input type="text" autocomplete="off" class="form-control" required name="firstName" id = "firstName" placeholder="Enter User First Name">
                                                    </div>
                                                    <div class="col-sm-4">
                                                        <label class="form-label"  for="lastName">Last Name<span class="text-danger">*</span></label>
                                                        <input type="text" autocomplete="off" class="form-control" required name="lastName" id = "lastName" placeholder="Enter User Last Name">
                                                    </div>
                                                    <div class="col-sm-4">
                                                        <label class="form-label"  for="mobileNumber">Mobile Number<span class="text-danger">*</span></label>
                                                        <input type="text" autocomplete="off" class="form-control" required name="mobileNumber" id = "mobileNumber" maxlength="10" minlength="10" placeholder="Enter User Mobile Number">
                                                        <span id="mobileNumber_error" style="color: red"></span>
                                                    </div>
                                                </div>


                                                <div class="form-group row">
                                                    <div class="col-lg-4">
                                                        <label class="form-label" id="labelpractice" for="practice_id">Practice </label>
                                                        <select class="form-control" id="practice_id" name ="practice_id">
                                                            <option value = "0" >--Select Practice--</option>
                                                            <!--    <c:forEach var="provider" items="${practicelist}">
                                                                    <option value = ${provider.practice_id} >${provider.practice_name}</option>
                                                            </c:forEach> -->
                                                        </select>    
                                                    </div>

                                                    <div class="col-lg-4">
                                                        <label class="form-label" for="Active">Active </label>
                                                        <select class="form-control" id="active" name ="active">
                                                            <option value = "1" >Yes</option>
                                                            <option value = "0" >No</option>
                                                        </select> 
                                                    </div>

                                                    <div class="col-lg-4">
                                                        <label class="form-label" for="fee">Fee <span class="text-danger">*</span></label>   
                                                        <div class="input-group">
                                                            <div class="input-group-prepend" style="background: #edf1f4">
                                                                <span class="input-group-text">
                                                                    <i class="fas fa-dollar-sign"></i>
                                                                </span>
                                                            </div>
                                                            <input type="text" class="form-control" name="feeval" required  id = "feeval"  title="fee" placeholder="fee" />
                                                        </div> </div>
                                                </div>

                                                <div class="form-group row">
                                                    <div class="col-lg-4">
                                                        <!--  <label class="form-label">Individual NPI</label> -->
                                                        <label class="form-label" id="lblgroup" for="group_id">Group </label>
                                                        <select class="form-control" id="group_id" name ="group_id">
                                                            <option value = "0" >--Select Group--</option>
                                                            <c:forEach var="group" items="${groupdetailslist}">
                                                                <option value = ${group.group_id} >${group.group_name}</option>
                                                            </c:forEach>
                                                        </select>    
                                                    </div>

                                                    <div class="col-lg-4">
                                                        <label class="form-label" id="lblcorp" for="corp_id">Corp </label>
                                                        <select class="form-control" id="corp_id" name ="corp_id">
                                                            <option value = "0" >--Select Corp--</option>
                                                            <c:forEach var="Corporation" items="${corplist}">
                                                                <option value = ${Corporation.corp_id} >${Corporation.name}</option>
                                                            </c:forEach>
                                                        </select>    
                                                    </div>
                                                    <div class="col-lg-4">
                                                        <!--  <label class="form-label">Individual NPI</label> -->
                                                        <label id="lblprovider" class="form-label" for="provider_id">Provider </label>
                                                        <select class="form-control" id="provider_id" name ="provider_id">
                                                            <option value = "0" >--Select--</option>

                                                        </select>    
                                                    </div>
                                                </div>



                                            </div>

                                            <br/>
                                            <div class="row form-group row">   
                                                <div class="col-md-2 offset-md-3">
                                                    <a  href="usermas" class="btn btn-rounded btn-greenadd btn-block">Back</a>
                                                </div>

                                                <div class="col-md-2 ml-1">
                                                    <input type="text"  name="user_id" id="user_id" style="height:0px;width:0px;" />
                                                    <button type="submit" id="btnsubmit" class="btn btn-rounded btn-greenadd btn-block">Submit</button>

                                                </div>
                                            </div>
                                        </form>
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

    <!-- Required Js -->
    <jsp:include page="includes/footer.jsp"></jsp:include>
        <script src="assets/js/plugins/select2.full.min.js"></script>
        <script src="assets/js/pages/form-select-custom.js"></script>

        <script type="text/javascript">
            $(document).ready(function () {


                function isNumber(evt, element) {

                    var charCode = (evt.which) ? evt.which : event.keyCode

                    if (
                            (charCode != 45 || $(element).val().indexOf('-') != -1) && // “-” CHECK MINUS, AND ONLY ONE.
                            (charCode != 46 || $(element).val().indexOf('.') != -1) && // “.” CHECK DOT, AND ONLY ONE.
                            (charCode < 48 || charCode > 57))
                        return false;

                    return true;
                }

                /*  const togglePassword = document.querySelector('#togglePassword');
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
                 });*/

                var EId = '<%= session.getAttribute("Entityid")%>';
                if (EId !== '')
                {
                    $('#entity_id').val(EId);

                }

                var UT = '<%= session.getAttribute("UT")%>';
                $('#entity_id').attr('readonly', "false");

        <sec:authorize access="hasAnyRole('ROLE_ADMIN')">
                //alert(UT);

                $('#entity_id').removeAttr('readonly');

        </sec:authorize>



                $('#entity_id').change(function (event) {

                    $.ajax({
                        url: "practicedetailswtentityid",
                        type: "get", //send it through get method
                        data: {
                            Entityid: $('select#entity_id').val()
                        },
                        success: function (response) {
                            var select = $('#practice_id');
                            select.find('option').remove();
                            $('<option>').val("0").text("--Select--").appendTo(select);

                            var txt = response;
                            var obj = jQuery.parseJSON(txt);

                            if (obj.length > 0)
                            {
                                for (var i = 0; i < obj.length; i++)
                                {
                                    // var sv = value.split('~');
                                    $('<option>').val(obj[i].practice_id).text(obj[i].name).appendTo(select);
                                }

                            }
                        }
                    });

                });


              

                var user_id = GetParameterValues('user_id');
                var user_name = GetParameterValues('user_name');
                console.log(user_id);
                user_id = parseInt(user_id);

                $('#provider_id').hide();
                $('#lblprovider').hide();
                $('#practice_id').hide();
                $('#group_id').hide();
                $('#labelpractice').hide();
                $('#lblgroup').hide();
                $('#corp_id').hide();
                $('#lblcorp').hide();
                $('#flading').hide();

                var msg = '';
                var invalid = '';
                //   $('#btnsubmit').removeAttr('disabled', "true");
                $('#Username').focusout(function () {

                    var upd_user_name = $('#Username').val().trim();

                    if (upd_user_name !== user_name.trim())
                    {
                        $('#btnsubmit').attr('disabled', "true");
                        $('#flading').show();
                        $.ajax({
                            url: "getusername",
                            type: "get", //send it through get method
                            data: {
                                username: $('#Username').val().trim()
                            },
                            success: function (response) {

                                console.log(response);
                                var txt = response;
                                var obj1 = jQuery.parseJSON(txt);
                                console.log(obj1);
                                if (obj1.length > 0)
                                {
                                    invalid = 'invalid';

                                    if (invalid === 'invalid')
                                    {
                                        msg += 'Username is already exist, please change and try...!\n';
                                    }
                                    msgbox("", msg, "success");
                                    $('#flading').hide();

                                } else
                                {
                                    invalid = '';
                                    $('#flading').hide();
                                    $('#btnsubmit').removeAttr('disabled');
                                }

                            },
                            error: function (error) {
                                msgbox("", error, "warning");
                            }

                        });
                    }
                });

                /* $('#password').focusout(function () {
                 let password = $('#password').val();
                 msg = '';
                 if (!(/^(.{8,20}$)/.test(password))) {
                 
                 msg = '8 to 20 characters long.\n';
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
                 msgbox("", msg, "success");
                 
                 }
                 
                 });*/

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
                $(function () {
                    $("#feeval").keypress(function (e) {
                        return isNumber(e, this);
                        /* var keyCode = e.keyCode || e.which;
                         $("#ndis_error").html("");
                         var regex = "/^[1-9]\d*(\.\d+)?$/";
                         var isValid = regex.test(String.fromCharCode(keyCode));
                         if (!isValid) {
                         $("#ndis_error").html("Not valid");
                         }
                         
                         return isValid; */
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

                $('#btnsubmit').click(function () {

                    msg = '';
                    if (invalid === 'invalid')
                    {
                        msg += 'Username is already exist, please change and try...!\n';
                    }

                    if ($('#Username').val() === "") {
                        //  alert("Entity can't be blank");
                        msg += "Email ID can't be blank\n";

                    }

                    if ($('#entity_id').val() === "0") {
                        //  alert("Entity can't be blank");
                        msg += "Entity can't be blank\n";

                    }

                    /* if ($('#password').val() === "") {
                     //  alert("Entity can't be blank");
                     msg += "Password can't be blank\n";
                     
                     }*/


                    if ($('#user_type_id').val() === "0") {
                        //  alert("User Type can't be blank");
                        msg += "User Type can't be blank\n";

                    }

                    var user_type_id = $("select#user_type_id").val();
                    if (user_type_id === '18' || user_type_id === '20')
                    {
                        if ($('#practice_id').val() === "0") {
                            // alert("Practice can't be blank");
                            msg += "Practice can't be blank\n";

                        }
                        if ($('#provider_id').val() === "0") {
                            //   alert("Provider can't be blank");
                            msg += "Provider can't be blank\n";

                        }
                    }

                    if (user_type_id === '19' || user_type_id === '17')
                    {
                        if ($('#practice_id').val() === "0") {
                            // alert("Practice can't be blank");
                            msg += "Practice can't be blank\n";

                        }

                    }

                    if (user_type_id === '10' || user_type_id === '11' || user_type_id === '9')
                    {
                        if ($('#group_id').val() === "0") {
                            // alert("Practice can't be blank");
                            msg += "Group can't be blank\n";

                        }

                    }

                    if (user_type_id === '6' || user_type_id === '7' || user_type_id === '8')
                    {
                        if ($('#corp_id').val() === "0") {
                            // alert("Practice can't be blank");
                            msg += "Corp can't be blank\n";

                        }

                    }

                    if (user_type_id === '9' || user_type_id === '8')
                    {
                        if ($('#provider_id').val() === "0") {
                            //   alert("Provider can't be blank");
                            msg += "Provider can't be blank\n";

                        }

                    }

                    /* if ($('#password').val() !== $('#confirm_password').val())
                     {
                     msg += 'Confirm Password mismatch...!\n';
                     //alert('Confirm Password mismatch...!');
                     
                     }*/

                    if ($('#feeval').val() === '')
                    {
                        msg += "Fee can't be blank\n";
                    }

                    if (msg !== '')
                    {
                        msgbox("", msg, "success");
                        return false;
                    } else
                    {
                        return true;
                    }



                });


                $('#user_type_id').change(function (event) {

                  
                    var user_type_id = $("select#user_type_id").val();

                    if (user_type_id === '18' || user_type_id === '20')
                    {
                        $('#provider_id').show();
                        $('#lblprovider').show();
                        $('#practice_id').show();
                        $('#labelpractice').show();
                        $('#group_id').hide();
                        $('#lblgroup').hide();
                        $('#corp_id').hide();
                        $('#lblcorp').hide();

                        $('#corp_id').val('0');
                        $('#group_id').val('0');
                        var practiceid = $("select#practice_id").val();
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
                                    var select = $('#provider_id');
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


                        }
                    } else if (user_type_id === '19' || user_type_id === '17')
                    {
                        $('#provider_id').hide();
                        $('#lblprovider').hide();
                        $('#group_id').hide();
                        $('#lblgroup').hide();
                        $('#practice_id').show();
                        $('#labelpractice').show();
                        $('#corp_id').hide();
                        $('#lblcorp').hide();
                        $('#corp_id').val('0');
                        $('#group_id').val('0');
                    } else if (user_type_id === '10' || user_type_id === '11')
                    {
                        $('#group_id').show();
                        $('#lblgroup').show();
                        $('#provider_id').hide();
                        $('#lblprovider').hide();
                        $('#practice_id').hide();
                        $('#labelpractice').hide();
                        $('#corp_id').hide();
                        $('#lblcorp').hide();
                        $('#corp_id').val('0');
                    } else if (user_type_id === '9')
                    {
                        $('#provider_id').show();
                        $('#lblprovider').show();
                        $('#practice_id').hide();
                        $('#labelpractice').hide();
                        $('#lblgroup').show();
                        $('#group_id').show();
                        $('#corp_id').hide();
                        $('#lblcorp').hide();
                        $('#corp_id').val('0');

                        //Proviver
                        $.ajax({
                            url: "groupproviderdetailswtentityid",
                            type: "get", //send it through get method
                            success: function (response) {
                                var select = $('#provider_id');
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

                    } else if (user_type_id === '6' || user_type_id === '7')
                    {
                        $('#group_id').hide();
                        $('#lblgroup').hide();
                        $('#provider_id').hide();
                        $('#lblprovider').hide();
                        $('#practice_id').hide();
                        $('#labelpractice').hide();
                        $('#corp_id').show();
                        $('#lblcorp').show();

                        $('#group_id').val('0');
                    } else if (user_type_id === '8')
                    {
                        $('#provider_id').show();
                        $('#lblprovider').show();
                        $('#practice_id').hide();
                        $('#labelpractice').hide();
                        $('#lblgroup').hide();
                        $('#group_id').hide();
                        $('#corp_id').show();
                        $('#lblcorp').show();

                        $('#group_id').val('0');
                        //Proviver
                        $.ajax({
                            url: "corpproviderdetailswtentityid",
                            type: "get", //send it through get method
                            success: function (response) {
                                var select = $('#provider_id');
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
                        var select = $('#provider_id');
                        select.find('option').remove();
                        $('<option>').val("0").text("").appendTo(select);
                        $('#provider_id').hide();
                        $('#lblprovider').hide();
                        $('#practice_id').hide();
                        $('#labelpractice').hide();
                        $('#group_id').hide();
                        $('#lblgroup').hide();
                        $('#corp_id').hide();
                        $('#lblcorp').hide();
                        $('#corp_id').val('0');
                        $('#group_id').val('0');
                        $('#provider_id').val('0');
                    }

                });

                $('#practice_id').change(function (event) {

                    var user_type_id = $("select#user_type_id").val();

                    if (user_type_id === '18' || user_type_id === '20')
                    {
                        $('#provider_id').show();
                        $('#lblprovider').show();
                        $('#group_id').hide();
                        $('#lblgroup').hide();
                        $('#corp_id').hide();
                        $('#lblcorp').hide();
                        var practiceid = $("select#practice_id").val();
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
                                    var select = $('#provider_id');
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

                        }
                    } else
                    {
                        var select = $('#provider_id');
                        select.find('option').remove();
                        $('<option>').val("0").text("").appendTo(select);
                        $('#provider_id').hide();
                        $('#lblprovider').hide();
                        $('#group_id').hide();
                        $('#lblgroup').hide();
                        $('#corp_id').hide();
                        $('#lblcorp').hide();
                    }
                });


                $.ajax({
                    url: "practicedetailswtentityid",
                    type: "get", //send it through get method
                    data: {
                        Entityid: EId
                    },
                    success: function (response) {
                        var select = $('#practice_id');
                        select.find('option').remove();
                        $('<option>').val("0").text("--Select--").appendTo(select);

                        var txt = response;
                        var obj1 = jQuery.parseJSON(txt);

                        if (obj1.length > 0)
                        {
                            for (var i = 0; i < obj1.length; i++)
                            {
                                // var sv = value.split('~');
                                $('<option>').val(obj1[i].practice_id).text(obj1[i].name).appendTo(select);
                            }

                            // alert(payor_id);
                            $.get('userdetail', {
                                userid: user_id
                            }, function (response) {
                                // alert(response);
                                if (response.length > 0)
                                {
                                    var txt = response;
                                    var obj = jQuery.parseJSON(txt);

                                    console.log(obj);


                                    if (obj.length > 0)
                                    {


                                        for (var i = 0; i < obj.length; i++)
                                        {

                                            $('#user_id').val(obj[i].user_id);
                                            $('#user_id').hide();
                                            $('#Username').val(obj[i].username);
                                            
                                            $('#firstName').val(obj[i].firstName);
                                            $('#lastName').val(obj[i].lastName);
                                           
                                            $('#mobileNumber').val(obj[i].mobileNumber);
                                            

                                            //                        $('#password').val(sv[2].trim()); //dont show password
                                            $('#user_type_id').val(obj[i].user_type_id);
                                           // $('#user_type_id').trigger('change');
                                            $('#entity_id').val(obj[i].entity_id);

                                            //                        $('.cpassword').val(sv[2].trim()); //dont show password
                                            //   alert(sv[6].trim());

                                            var active = obj[i].active;
                                            if (active)
                                            {
                                                $('#active').val('1');
                                            } else
                                            {
                                                $('#active').val('0');
                                            }


                                            var user_type_id = obj[i].user_type_id;

                                            $('#group_id').val(obj[i].group_id);
                                            $('#corp_id').val(obj[i].corp_id);
                                            $('#feeval').val(obj[i].feeval);
                                            var practice_id = obj[i].practice_id;
                                            var provider_id = obj[i].provider_id;

                                            //    alert(practice_id);

                                            if (user_type_id === 18 || user_type_id === 20)
                                            {
                                                //  console.log(practice_id);
                                                // alert(practice_id);
                                                $('#provider_id').show();
                                                $('#lblprovider').show();
                                                $('#practice_id').show();
                                                $('#labelpractice').show();
                                                $('#group_id').hide();
                                                $('#lblgroup').hide();
                                                $('#corp_id').hide();
                                                $('#lblcorp').hide();
                                                $('#practice_id').val(practice_id);
                                                $('#corp_id').val('0');
                                                $('#group_id').val('0');

                                                if (practice_id !== '')
                                                {
                                                    //Proviver

                                                    $.ajax({
                                                        url: "providerdetailswtentityid",
                                                        type: "get", //send it through get method
                                                        data: {
                                                            practiceid: practice_id
                                                        },
                                                        success: function (response) {
                                                            var select = $('#provider_id');
                                                            select.find('option').remove();
                                                            $('<option>').val("0").text("--Select--").appendTo(select);
                                                            console.log(response);
                                                            var txt = response;
                                                            var obj1 = jQuery.parseJSON(txt);
                                                            console.log(obj1);
                                                            if (obj1.length > 0)
                                                            {
                                                                for (var i = 0; i < obj1.length; i++)
                                                                {
                                                                    // var sv = value.split('~');
                                                                    $('<option>').val(obj1[i].provider_id).text(obj1[i].first_name).appendTo(select);
                                                                }

                                                                $('#provider_id').val(provider_id);
                                                            }
                                                        }
                                                    });
                                                }

                                            } else if (user_type_id === 19 || user_type_id === 17)
                                            {
                                                $('#provider_id').hide();
                                                $('#lblprovider').hide();
                                                $('#group_id').hide();
                                                $('#lblgroup').hide();
                                                $('#practice_id').show();
                                                $('#labelpractice').show();
                                                $('#practice_id').val(practice_id);
                                                $('#corp_id').hide();
                                                $('#lblcorp').hide();
                                                $('#corp_id').val('0');
                                                $('#group_id').val('0');
                                            } else if (user_type_id === 10 || user_type_id === 11)
                                            {
                                                $('#group_id').show();
                                                $('#lblgroup').show();
                                                $('#provider_id').hide();
                                                $('#lblprovider').hide();
                                                $('#practice_id').hide();
                                                $('#labelpractice').hide();
                                                $('#corp_id').hide();
                                                $('#lblcorp').hide();
                                                $('#corp_id').val('0');
                                            } else if (user_type_id === 9)
                                            {
                                                $('#provider_id').show();
                                                $('#lblprovider').show();
                                                $('#practice_id').hide();
                                                $('#labelpractice').hide();
                                                $('#lblgroup').show();
                                                $('#group_id').show();
                                                $('#corp_id').hide();
                                                $('#lblcorp').hide();
                                                $('#corp_id').val('0');

                                                //Proviver
                                                $.ajax({
                                                    url: "groupproviderdetailswtentityid",
                                                    type: "get", //send it through get method
                                                    success: function (response) {
                                                        var select = $('#provider_id');
                                                        select.find('option').remove();
                                                        $('<option>').val("0").text("--Select--").appendTo(select);
                                                        console.log(response);
                                                        var txt = response;
                                                        var obj2 = jQuery.parseJSON(txt);
                                                        console.log(obj2);
                                                        if (obj2.length > 0)
                                                        {
                                                            for (var i = 0; i < obj2.length; i++)
                                                            {
                                                                // var sv = value.split('~');
                                                                $('<option>').val(obj2[i].provider_id).text(obj2[i].first_name).appendTo(select);
                                                            }
                                                            $('#provider_id').val(provider_id);
                                                        }
                                                    }
                                                });

                                            } else if (user_type_id === 6 || user_type_id === 7)
                                            {
                                                $('#group_id').hide();
                                                $('#lblgroup').hide();
                                                $('#provider_id').hide();
                                                $('#lblprovider').hide();
                                                $('#practice_id').hide();
                                                $('#labelpractice').hide();
                                                $('#corp_id').show();
                                                $('#lblcorp').show();

                                                $('#group_id').val('0');
                                            } else if (user_type_id === 8)
                                            {
                                                $('#provider_id').show();
                                                $('#lblprovider').show();
                                                $('#practice_id').hide();
                                                $('#labelpractice').hide();
                                                $('#lblgroup').hide();
                                                $('#group_id').hide();
                                                $('#corp_id').show();
                                                $('#lblcorp').show();

                                                $('#group_id').val('0');
                                                //Proviver
                                                $.ajax({
                                                    url: "corpproviderdetailswtentityid",
                                                    type: "get", //send it through get method
                                                    success: function (response) {
                                                        var select = $('#provider_id');
                                                        select.find('option').remove();
                                                        $('<option>').val("0").text("--Select--").appendTo(select);
                                                        console.log(response);
                                                        var txt = response;
                                                        var obj3 = jQuery.parseJSON(txt);
                                                        console.log(obj);
                                                        if (obj3.length > 0)
                                                        {
                                                            for (var i = 0; i < obj3.length; i++)
                                                            {
                                                                // var sv = value.split('~');
                                                                $('<option>').val(obj3[i].provider_id).text(obj3[i].first_name).appendTo(select);
                                                            }
                                                            $('#provider_id').val(provider_id);
                                                        }
                                                    }
                                                });

                                            } else
                                            {
                                                var select = $('#provider_id');
                                                select.find('option').remove();
                                                $('<option>').val("0").text("").appendTo(select);
                                                $('#provider_id').hide();
                                                $('#lblprovider').hide();
                                                $('#practice_id').hide();
                                                $('#labelpractice').hide();
                                                $('#group_id').hide();
                                                $('#lblgroup').hide();
                                                $('#corp_id').hide();
                                                $('#lblcorp').hide();
                                                $('#corp_id').val('0');
                                                $('#group_id').val('0');
                                                $('#provider_id').val('0');
                                            }

                                        }
                                    }

                                }

                            });



                        }
                    }
                });



            });


    </script>     
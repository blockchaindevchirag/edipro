<%@page contentType="text/html"  pageEncoding="UTF-8" autoFlush="true"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<html lang="en">

    <head>
        <title>User Master</title>
        <style>
            .select2-container{
                z-index:99999!important;
            } 
        </style>


        <jsp:include page="includes/header.jsp"></jsp:include>

            <!-- [ Main Content ] start -->
        <div class="pcoded-main-container">
            <div class="pcoded-wrapper">
                <div class="pcoded-content">
                    <div class="pcoded-inner-content">
                        <div class="main-body">
                            <div class="page-wrapper">

                                <div class="row">
                                    <div class="col-lg-12">
                                    <sec:authorize access="hasAuthority('NEW_USER_MASTER_PRIVILEGE')">
                                        <button class="btn btn-rounded btn-greenadd md-trigger"  data-modal="modal-1" id="headeradd">Add User</button>
                                    </sec:authorize>
                                    <br><br>
                                </div>
                            </div>
                            <!-- [ Main Content ] end -->


                            <div class="row">
                                <!-- Zero config table start -->
                                <div class="col-sm-12">
                                    <div class="card">

                                        <div class="card-body">
                                            <div class="dt-responsive table-responsive tablehide">
                                                <table id="simpletable" class="table table-striped table-bordered nowrap">
                                                    <thead>
                                                        <tr>
                                                            <th>Id</th>
                                                            <th>User Name</th>
                                                            <th>First Name</th>
                                                            <th>Last Name</th>
                                                             <th>Mobile No</th>
                                                            <th>User_Type</th>
                                                            <th>Entity</th>
                                                            <th>Practice</th>
                                                            <th>Provider</th>
                                                            <th>Active</th>
                                                            <th>Fee</th>
                                                            <th></th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <c:forEach var="Usermaster" items="${userdetailslist}">

                                                            <tr>
                                                                <td>${Usermaster.user_id}</td>
                                                                <td>${Usermaster.username}</td> 
                                                                <td>${Usermaster.firstName}</td> 
                                                                <td>${Usermaster.lastName}</td> 
                                                                <td>${Usermaster.mobileNumber}</td> 
                                                                <td>${Usermaster.user_type}</td>
                                                                <td>${Usermaster.entity}</td>
                                                                <td data-toggle="tooltip" data-placement="top" title="" data-original-title="${Usermaster.practice}">${Usermaster.practice}</td> 
                                                                <td>${Usermaster.provider}</td> 
                                                                <td>${Usermaster.active}</td> 
                                                                <td>${Usermaster.feeval}</td> 
                                                                <sec:authorize access="hasAuthority('EDIT_USER_MASTER_PRIVILEGE')">
                                                                    <td data-toggle='tooltip' data-placement='left' title='' data-original-title='Edit'><a href= 'editusermas?user_id=${Usermaster.user_id}&user_name=${Usermaster.username}'><i class='fas fa-edit' style='font-size:15px; margin:0 3px;color:#2DCEE3;'></i></a></td>
                                                                        </sec:authorize>
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
                    </div>
                </div>
            </div>
        </div>
    </div>


    <div class="md-modal md-effect-1" id="modal-1" data-backdrop="false" data-keyboard="true">
        <div class="md-content">
            <h3 class="model-bg-custom">User Master <button type="button" id="model_close" class="close" style="font-size:18px; padding-left:20px" data-dismiss="modal" aria-hidden="true">x</button></h3>
            <div> 
                <form action="addusermas" autocomplete="off" modelAttribute="addusermas" method="POST">
                    <div class="form-group row">
                        <div class="col-sm-12 col-lg-4">
                            <label class="form-label"  for="Username">Email ID<span class="text-danger">*</span></label>
                            <input type="email" class="form-control"  autocomplete="off"  required name="Username" id = "Username" placeholder="Enter Email ID">
                        </div>
                        <div class="col-sm-12 col-lg-4">
                            <label class="form-label"  for="firstName">First Name<span class="text-danger">*</span></label>
                            <input type="text" class="form-control"  autocomplete="off"  required name="firstName" id = "firstName" placeholder="First Name ">
                        </div>
                        
                        <div class="col-sm-12 col-lg-4">
                            <label class="form-label"  for="lastName">Last Name<span class="text-danger">*</span></label>
                            <input type="text" class="form-control"  autocomplete="off"  required name="lastName" id = "lastName" placeholder="Last Name">
                        </div>
                        
                    </div>									
                    <div class="form-group row">
                        
                        <div class="col-sm-12 col-lg-4">
                            <div class="form-group">
                                <label class="form-label">Mobile Number<span class="text-danger">*</span></label>
                                <input type="text" class="form-control" maxlength="10" minlength="10" autocomplete="off" id="mobileNumber" required name="mobileNumber" placeholder="Enter Mobile Number">
                                <span id="mobileNumber_error" style="color: red"></span>
                            </div>
                        </div>
                        
                        <div class="col-sm-12 col-lg-4">
                            <label class="form-label" for="password">Password<span class="text-danger">*</span></label>
                            <input type="text" class="form-control" required name="password"  autocomplete="off"  id = "password" placeholder="Enter password">
                            <i class="far fa-eye eyeiconshow" id="togglePassword"></i>
                        </div>


                        <div class="col-sm-12 col-lg-4">
                            <div class="form-group">
                                <label class="form-label">Confirm Password</label>
                                <input type="password" placeholder="Confirm Password" autocomplete="off"  id="confirm_password" name="confirmpassword" class="cpassword form-control" required>
                                <span id='message'></span>
                            </div>
                        </div>
                    </div>									


                    <div class="form-group row">

                        <div class="col-sm-12 col-lg-4">
                            <!--   <label class="form-label" for="alt_edi_id">EDI Id</label> -->
                            <label class="form-label" for="user_type_id">User Type <span class="text-danger">*</span></label>
                            <select class="form-control select2-combo" required id="user_type_id" name ="user_type_id" >
                                <option value = "0">--Select User Type--</option>
                                <c:forEach var="Benefits" items="${usertypelist}">
                                    <option value = ${Benefits.usertypeid} >${Benefits.usertype}</option>
                                </c:forEach>
                            </select>          
                        </div>	



                        <div class="col-sm-12 col-lg-4">
                            <label class="form-label" for="entity_id">Entity <span class="text-danger">*</span></label>
                            <select class="form-control" required id="entity_id" name ="entity_id">
                                <option value = "0" >--Select Entity--</option>
                                <c:forEach var="practice" items="${entitylist}">
                                    <option value = ${practice.entity_id} >${practice.entity_name}</option>
                                </c:forEach>
                            </select>        
                        </div>

                        <div class="col-lg-4">
                            <!--  <label class="form-label">Individual NPI</label> -->
                            <label class="form-label" id="labelpractice" for="practice_id">Practice </label>
                            <select class="form-control" id="practice_id" name ="practice_id">

                            </select>    
                        </div> 
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

                            </select>    
                        </div>  
                    </div> 
                    <br/>
                    <div class="form-group row">     
                        <div class="col-md-4 mb-4">
                            <label class="form-label" id="feehead" for="fee">Fee <span class="text-danger">*</span></label>   
                            <div class="input-group">
                                <div class="input-group-prepend" style="background: #edf1f4">
                                    <span class="input-group-text">
                                        <i class="fas fa-dollar-sign"></i>
                                    </span>
                                </div>
                                <input type="text" class="form-control" required name="feeval"  id = "feeval"  title="fee" placeholder="fee" >
                            </div> </div>
                        <div>

                        </div>

                    </div>
                    <div style="col-12" style="border-top:1px solid red;">
                        &nbsp;
                    </div>
                    <div class="col-md-5 offset-md-5"  style="font-size:13px;">
                        <button type="submit" id="btnsubmit" class="btn btn-rounded btn-greenadd btn-block">Save</button>
                    </div>
                </form>

            </div>
        </div>
    </div>
    <div class="md-overlay"></div>

    <div id="flading" class="loader">

    </div>


    <!-- Required Js -->
    <jsp:include page="includes/footer.jsp"></jsp:include>
        <script src="assets/js/plugins/select2.full.min.js"></script>
        <script src="assets/js/pages/form-select-custom.js"></script>

        <script type="text/javascript">
            $(document).ready(function () {
                $(".table-responsive").removeClass("tablehide");
                $(".table-responsive").addClass("tableshow");

                $('#provider_id').hide();
                $('#lblprovider').hide();
                $('#practice_id').hide();
                $('#group_id').hide();
                $('#labelpractice').hide();
                $('#lblgroup').hide();
                $('#corp_id').hide();
                $('#lblcorp').hide();


                function isNumber(evt, element) {

                    var charCode = (evt.which) ? evt.which : event.keyCode

                    if (
                            (charCode != 45 || $(element).val().indexOf('-') != -1) && // “-” CHECK MINUS, AND ONLY ONE.
                            (charCode != 46 || $(element).val().indexOf('.') != -1) && // “.” CHECK DOT, AND ONLY ONE.
                            (charCode < 48 || charCode > 57))
                        return false;

                    return true;
                }


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

                var EId = '<%= session.getAttribute("Entityid")%>';
                if (EId !== '')
                {
                    $('#entity_id').val(EId);
                    $('#entity_id').trigger('change');

                }

                var UT = '<%= session.getAttribute("UT")%>';
                $('#entity_id').attr('readonly', "false");

        <sec:authorize access="hasAnyRole('ROLE_ADMIN')">
                //alert(UT);

                $('#entity_id').removeAttr('readonly');

        </sec:authorize>

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
                
                   
                $('#simpletable').find('tbody').find('tr').each(function () {
                    
                    var checkrev = $(this).find('td:eq(4)').text();
                    $(this).find('td:eq(4)').text(checkrev.substring(0, 10));
                });



                $('#flading').hide();

                var msg = '';
                var invalid = '';
                //   $('#btnsubmit').removeAttr('disabled', "true");
                $('#Username').focusout(function () {

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

                });

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
                        msg += "contain special characters from @#$%&.\n";
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


                $(function () {
                    $("#feeval").keypress(function (e) {

                        return isNumber(e, this);

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

                    if ($('#password').val() === "") {
                        //  alert("Entity can't be blank");
                        msg += "Password can't be blank\n";

                    }


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




                    if ($('#password').val() !== $('#confirm_password').val())
                    {
                        msg += 'Confirm Password mismatch...!\n';
                        //alert('Confirm Password mismatch...!');

                    }

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
                //  alert($('#entity_id').val());

                $('#user_type_id').change(function (event) {

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
                        if (practiceid !== '' && practiceid !== '0')
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
                        if (practiceid !== '' && practiceid !== '0')
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

                $('#headeradd').click(function () {

                    $('#modal-1').modal('show');
                    //  $('.md-show').removeAttr("visibility", "hidden");
                    $('.md-overlay').css("visibility", "visible");
                    $('.md-show').css("visibility", "visible");
                });

                $('.md-overlay').click(function () {
                    $('#modal-1').modal('hide');
                    $('.md-show').css("visibility", "hidden");
                    // div.setAttribute("style", "visibility: hidden; ");
                    // $('.md-overlay').setAttribute('style', 'visibility: hidden; opacity: 0 !important;');
                    $('.md-overlay').css("visibility", "hidden");
                });

                $('#model_close').click(function () {
                    $('#modal-1').modal('hide');
                    $('.md-show').css("visibility", "hidden");
                    // div.setAttribute("style", "visibility: hidden; ");
                    // $('.md-overlay').setAttribute('style', 'visibility: hidden; opacity: 0 !important;');
                    $('.md-overlay').css("visibility", "hidden");
                    // $('.md-overlay').attr('visibility', 'hidden');
                });


              /*  $('#simpletable').find('tbody').find('tr').each(function () {
                    var user_id = $(this).find('td').eq(0).text().trim();
                    var user_name = $(this).find('td').eq(1).text().trim();
                    var status = $(this).find('td').eq(11).text().trim();

                    // alert(requestid);
                    if (status === 'Edit')
                    {
                        $(this).find('td').eq(11).html("<a href= 'editusermas?user_id=" + user_id + "&user_name=" + user_name + "'><i class='fas fa-edit' style='font-size:15px; margin:0 3px;color:#2DCEE3;'></i></a>");
                    }
                }); */


            });


    </script>     
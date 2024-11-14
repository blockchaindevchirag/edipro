<%-- 
   Document   : footer
   Created on : 07-Mar-2021, 12:36:15 pm
   Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<script src="assets/js/vendor-all.min.js"></script>
<script src="assets/plugins/bootstrap/js/bootstrap.min.js"></script>
<script src="assets/js/pcoded.min.js"></script>
<script src="assets/plugins/data-tables/js/datatables.min.js"></script>
<script src="assets/js/pages/data-row-custom.js"></script>
<script src="assets/plugins/data-tables/js/dataTables.select.min.js"></script>
<script src="assets/js/pages/data-api-custom.js"></script>
<script src="assets/js/pages/data-select-custom.js"></script>
<script src="assets/js/pages/data-basic-custom.js"></script>
<%--   <script src="assets/js/menu-setting.min.js"></script> --%>

<script src="assets/js/plugins/jquery.validate.min.js"></script>
<script src="assets/js/plugins/jquery.steps.min.js"></script>
<script src="assets/js/plugins/bootstrap-select.min.js"></script>
<script src="assets/js/plugins/select2.full.min.js"></script>
<script src="assets/js/pages/task-board.js"></script>
<script src="assets/plugins/data-tables/js/buttons.colVis.min.js"></script>
<script src="assets/js/pages/data-export-custom.js"></script>
<script src="assets/js/pages/form-validation.js"></script>
<script src="assets/js/plugins/bootstrap-timepicker.min.js"></script>
<script src="assets/js/plugins/jquery.bootstrap.wizard.min.js"></script>



<!-- modal-window-effects Js -->
<script src="assets/plugins/modal-window-effects/js/classie.js"></script>
<script src="assets/plugins/modal-window-effects/js/modalEffects.js"></script>
<script src="assets/plugins/sweetalert/js/sweetalert.min.js"></script>
<script src="assets/js/pages/ac-alert.js"></script>
<script src="assets/js/pages/jszip.js"></script>
<script src="assets/js/pages/jszip-utils.js"></script>
<script src="assets/js/maskedinput.js"></script>
<script src='assets/js/plugins/summernote/summernote-bs4.min.js'></script>
<script src = "https://www.gstatic.com/charts/loader.js"></script> 

<script src="assets/js/horizontal-menu.js"></script>
<script src="assets/plugins/notification/js/bootstrap-growl.min.js"></script>
<script src="assets/js/pages/ac-notification.js"></script>
<script src="assets/js/jquery.form.min.js"></script>
<script src="assets/plugins/bootstrap-datetimepicker/js/bootstrap-datepicker.min.js"></script>
<script src="assets/js/pages/ac-datepicker.js"></script>

<script src="assets/js/dataTables.rowsGroup.js" type="text/javascript"></script>
<script src="assets/js/pages/ac-datepicker.js"></script>    

<script src="assets/plugins/pnotify/js/pnotify.custom.min.js"></script>
<script src="assets/plugins/pnotify/js/notify-event.js"></script>
<script src="assets/js/jquery.bootstrap-duallistbox.js" type="text/javascript"></script>
<script src="assets/js/sessiontimeout.js" type="text/javascript"></script>
<!-- daterangepicker -->
<script src="assets/js/plugins/moment.min.js"></script>
<script src="assets/js/plugins/daterangepicker.js"></script>
<script src="assets/plugins/data-tables/js/fixedHeader.js" type="text/javascript"></script>
<script src='assets/js/plugins/tinymce/tinymce.min.js'></script>

<script>
    tinymce.init({
        selector: '#pc-tinymce-1',
        toolbar: false,
        height: "400",
        content_style: 'body { font-family: "Roboto", sans-serif; }',
        statusbar: false
    });

    tinymce.init({
        selector: '#pc-tinymce-2',
        height: "400",
        content_style: 'body { font-family: "Roboto", sans-serif; }'
    });

    tinymce.init({
        height: "400",
        selector: '#pc-tinymce-3',
        content_style: 'body { font-family: "Roboto", sans-serif; }',
        toolbar: 'advlist | autolink | link image | lists charmap | print preview',
        plugins: 'advlist autolink link image lists charmap print preview'
    });

    tinymce.init({
        height: "600",
        selector: '#pc-tinymce-4',
        content_style: 'body { font-family: "Roboto", sans-serif; }',
        menubar: 'edit insert view format table help',
        toolbar: ['styleselect fontselect fontsizeselect',
            'undo redo | cut copy paste | bold italic | link image | alignleft aligncenter alignright alignjustify',
            'bullist numlist | outdent indent | blockquote subscript superscript | advlist | autolink | lists charmap | print preview |  code'
        ],
        plugins: 'advlist autolink link image lists charmap print preview code'
    });
    $(function () {});
</script>


<script>


    function callSubInvoiceReport(id)
    {
        $('#flading').show();
        var left = (screen.width / 2) - (500 / 2);
        var top = (screen.height / 2) - (500 / 2);
        //  alert(left);
        window.open("subinvoicereport?invid=" + id, "_blank", "toolbar=no, location=no, directories=no, status=no, menubar=no, scrollbars=no, resizable=no, copyhistory=no, width=900px, height=400px, top='" + top + "px', left='" + left + "px'");
        $('#flading').hide();
        // window.open("subinvoicereport?invid=" + id, "Subscription Invoice Report", "height=400px,width=900px,toolbar=0,location=0,menubar=0");
    }

    function callSubInvoiceAllReport()
    {
        $('#flading').show();
        var left = (screen.width / 2) - (500 / 2);
        var top = (screen.height / 2) - (500 / 2);
        //  alert(left);
        window.open("subinvoiceallreport", "Subscription Invoice Report", "toolbar=no, location=no, directories=no, status=no, menubar=no, scrollbars=no, resizable=no, copyhistory=no, width=1200px, height=600px, top='" + top + "px', left='" + left + "px'");
        $('#flading').hide();
        // window.open("subinvoicereport?invid=" + id, "Subscription Invoice Report", "height=400px,width=900px,toolbar=0,location=0,menubar=0");
    }

    function dateFormat(date)
    {
        var now = new Date(date);
        var day = '';
        var month = '';
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
        var formatedDate = (month) + '/' + day + '/' + now.getFullYear();
        return formatedDate;
    }

    function GetParameterValues(param) {
        var url = window.location.href.slice(window.location.href.indexOf('?') + 1).split('&');
        for (var i = 0; i < url.length; i++) {
            var urlparam = url[i].split('=');
            if (urlparam[0] === param) {
                return urlparam[1];
            }
        }
    }
    
    function checkNaN(inVal) {
    if (isNaN(inVal)) {
        return 0;
    } else {
        return inVal;
    }
} 

    function timeformat(dateval)
    {
        var now = new Date(dateval);
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
        var today = (month) + '/' + day + '/' + now.getFullYear() + " " + hr + ":" + min + ":" + sec;
        return today;
    }

    function convertLocalDateToUTCDate(date, toUTC) {
        date = new Date(date);
        //Local time converted to UTC
        //   console.log("Time: " + date);
        var localOffset = date.getTimezoneOffset() * 60000;
        var localTime = date.getTime();
        if (toUTC) {
            date = localTime + localOffset;
        } else {
            date = localTime - localOffset;
        }
        date = new Date(date);
        //   console.log("Converted time: " + date);
        return timeformat(date);
    }

    function padTo2Digits(num) {
        return num.toString().padStart(2, '0');
    }

    function convertYMDtoMDY(inputDate) {
        try {
            const [year, month, day] = inputDate.split('-');
            return [padTo2Digits(month), padTo2Digits(day), year].join('/');
        } catch (err)
        {
            return inputDate;
        }
    }
    
    function convertYMDtoMDY_v1(inputDate) {
        try {
            const [year, month, day] = inputDate.split('-');
            return [padTo2Digits(month), padTo2Digits(day), year].join('-');
        } catch (err)
        {
            return inputDate;
        }
    }

    function convertMDYtoYMD(inputDate) {
        try {
            const [month, day, year] = inputDate.split('/');
            return [year, padTo2Digits(month), padTo2Digits(day)].join('-');
        } catch (err)
        {
            return inputDate;
        }
    }

    $(function () {
//-------common datepicker----------------------------------
        $('.datefields').datepicker({
            format: "mm/dd/yyyy",
            autoclose: true,
            orientation: "bottom left",
            endDate: "0"
                    //startDate: "-11m"
        }).mask('99/99/9999');
//-------------------------------------------------------        
        $("#example-basic").steps({
            headerTag: "h3",
            bodyTag: "section",
            transitionEffect: "fade",
            autoFocus: true
        });

        $("#select2-combo").select2({
            dropdownParent: $("#modal-1"),
            placeholder: "Select Your Name"
        });
    });
    $(function () {
        var form = $("#example-form");
        form.validate({
            errorPlacement: function errorPlacement(error, element) {
                element.before(error);
            },
            rules: {
                confirm: {
                    equalTo: "#password"
                }
            }
        });
        form.children("div").steps({
            headerTag: "h3",
            bodyTag: "section",
            transitionEffect: "fade",
            onStepChanging: function (event, currentIndex, newIndex) {
                form.validate().settings.ignore = ":disabled,:hidden";
                if ($('#ddlpractice').val() === '')
                {
                    return false;
                    //alert($('#ddlpractice').val());
                } else
                {
                    return form.valid();
                }
                if ($('#entity_id').val() === '')
                {
                    return false;
                    // alert($('#ddlpractice').val());
                } else
                {
                    return form.valid();
                }
            },
            onFinishing: function (event, currentIndex) {
                form.validate().settings.ignore = ":disabled";
                return form.valid();
            },
            onFinished: function (event, currentIndex) {
                //  alert("Submitted!");
                // return form.valid();
                //  return true;
                form.submit();
            }
        });
    });

    function msgbox(title, text, type)
    {
        new PNotify({
            title: title,
            text: text,
            type: type,
            delay: 5000,
            height: "300px",
            width: "300px"
        });
    }

    function customnotify(from, align, icon, type, animIn, animOut, messge) {
        $.growl({
            icon: icon,
            title: ' Alert! ',
            message: messge,
            url: ''
        }, {
            element: 'body',
            type: type,
            allow_dismiss: true,
            placement: {
                from: from,
                align: align
            },
            offset: {
                x: 40,
                y: 30
            },
            spacing: 10,
            z_index: 999999,
            delay: 2500,
            timer: 10000,
            url_target: '_blank',
            mouse_over: false,
            animate: {
                enter: animIn,
                exit: animOut
            },
            icon_type: 'class',
            template: '<div data-growl="container" class="alert" role="alert">' +
                    '<button type="button" class="close" data-growl="dismiss">' +
                    '<span aria-hidden="true">&times;</span>' +
                    '<span class="sr-only">Close</span>' +
                    '</button>' +
                    '<span data-growl="icon"></span>' +
                    '<span data-growl="title"></span>' +
                    '<span data-growl="message"></span>' +
                    '<a href="#!" data-growl="url"></a>' +
                    '</div>'
        });
    }


    $(function () {
        var form = $("#example-form1");
        $('#validationwizard').bootstrapWizard({
            withVisible: false,
            'nextSelector': '.button-next',
            'previousSelector': '.button-previous',
            'firstSelector': '.button-first',
            'lastSelector': '.button-last',
            onNext: function (tab, navigation, index) {
                if (index === 1) {

                    if (!$('#entity_id').val()) {
                        $('#entity_id').focus();
                        $('.form-1').addClass('was-validated');
                        return false;
                    }
                    if (!$('#name').val()) {
                        $('#name').focus();
                        $('.form-1').addClass('was-validated');
                        return false;
                    }
                    if (!$('#clearing_house_id').val()) {
                        $('#clearing_house_id').focus();
                        $('.form-1').addClass('was-validated');
                        return false;
                    }
                    if (!$('#user_type_id').val()) {
                        $('#user_type_id').focus();
                        // $('.form-1').addClass('was-validated');
                        return true;
                    }
                }
                if (index === 2) {
                    if (!$('#addressline1').val()) {
                        $('#addressline1').focus();
                        $('.form-2').addClass('was-validated');
                        return false;
                    }
                    if (!$('#city').val()) {
                        $('#city').focus();
                        $('.form-2').addClass('was-validated');
                        return false;
                    }
                    if (!$('#state').val()) {
                        $('#state').focus();
                        $('.form-2').addClass('was-validated');
                        return false;
                    }
                    if (!$('#zip').val()) {
                        $('#zip').focus();
                        $('.form-2').addClass('was-validated');
                        return false;
                    }
                    if (!$('#email').val()) {
                        $('#email').focus();
                        $('.form-2').addClass('was-validated');
                        return false;
                    }
                    if (!$('#contact_phone').val()) {
                        $('#contact_phone').focus();
                        $('.form-2').addClass('was-validated');
                        return false;
                    }
                    $('.button-next').removeClass('disabled');
                    $('.button-next').text('Submit');

                }
                if (index === 3) {


                    if (!$('#group_npi1').val()) {
                        $('#group_npi1').focus();
                        $('.form-3').addClass('was-validated');
                        return false;
                    } else
                    {
                        return true;
                        //  alert('Statge 3');

                    }
                    form.submit();
                    $('.button-next').removeClass('disabled');
                }

            }
        });
    });

    $(function () {
        $("#example-vertical").steps({
            headerTag: "h3",
            bodyTag: "section",
            transitionEffect: "fade",
            stepsOrientation: "vertical"
        });
    });

    $(function () {
        var form = $("#design-1-form");
        form.validate({
            errorPlacement: function errorPlacement(error, element) {
                element.before(error);
            },
            rules: {
                confirm: {
                    equalTo: "#password"
                }
            }
        });



        form.children("div").steps({
            onStepChanging: function (event, currentIndex, newIndex) {
                form.validate().settings.ignore = ":disabled,:hidden";
                return form.valid();
                //  alert(currentIndex);
            },
            onFinishing: function (event, currentIndex) {
                form.validate().settings.ignore = ":disabled";
                return form.valid();
            },
            onFinished: function (event, currentIndex) {
                // alert("Submitted!");
            }
        });


    });
    $(function () {
        $("#design-2-form").steps({
            headerTag: "h3",
            bodyTag: "section",
            transitionEffect: "fade",
            stepsOrientation: "vertical",
            cssClass: "wizard pc-wizard",
            autoFocus: true
        });
    });
    $(function () {
        $("#design-tab-form").steps({
            headerTag: "h3",
            bodyTag: "section",
            transitionEffect: "fade",
            // enableFinishButton: false,
            enablePagination: false,
            enableAllSteps: true,
            cssClass: "wizard pc-tab-control"
        });
    });

    $(document).ready(function () {

        var loginproval = $('#loginpra').text();
        //  alert(loginproval);
        if (loginproval !== '')
        {
            $('#loginpro').show();
        } else
        {
            $('#loginpro').hide();
        }


        var attach = '';
        var footertag = '';
        var userid = '<%= session.getAttribute("Userid")%>';
        var newtag = '';
        var earliertag = '';

        $('#ticketbadge').hide();


        $.ajax({
            url: "ticketAssignedToDetails",
            type: "get", //send it through get method
            data: {
                not_assigned_to: userid
            },
            success: function (response) {
                // console.log(response);
                if (response.length > 0)
                {
                    var txt = response;
                    var obj = jQuery.parseJSON(txt);
                    if (obj.length > 0)
                    {
                        $('#ticketbadge').show();
                        $('#ticketbadge').text(obj.length);
                        //  console.log(obj);
                        $.each(obj, function (index, value) {

                            var propic = "assets/images/user/avatar-1.jpg";
                            if (obj[index].picture !== "")
                            {
                                propic = "../../Profile/" + obj[index].picture;
                            }

                            if (index === 0) {

                                newtag = newtag + '<a href="viewticket?para=2&ticketid=' + obj[index].ticket_id + '&tickettype=' + obj[index].ticket_type + '"><li class="notification"><div class="media">' +
                                        '<img class="img-radius" src=' + propic + ' >' +
                                        '<div class="media-body">' +
                                        '<p><strong>' + obj[index].created_by + '</strong><span class="n-time text-muted"><i class="icon feather icon-clock m-r-10"></i>' + obj[index].creation_timestamp + '</span></p>' +
                                        '<p>Ticket Type: ' + obj[index].ticket_type + '</p></div></div></li></a>';
                            } else {


                                earliertag = earliertag + '<a href="viewticket?para=2&ticketid=' + obj[index].ticket_id + '&tickettype=' + obj[index].ticket_type + '"><li class="notification"><div class="media">' +
                                        '<img class="img-radius" src=' + propic + ' >' +
                                        '<div class="media-body">' +
                                        '<p><strong>' + obj[index].created_by + '</strong><span class="n-time text-muted"><i class="icon feather icon-clock m-r-10"></i>' + obj[index].creation_timestamp + '</span></p>' +
                                        '<p>Ticket Type: ' + obj[index].ticket_type + '</p></div></div></li></a>';
                            }
                        });
                    }
                    $('#newtag').append(newtag);
                    $('#eariertag').append(earliertag);

                }
            }
        });


        var title = $(document).attr('title');

        var enableraisebtn = ["Study Request Queue", "Pre-Estimate", "Benefit List", "Job List", "All Claim List", "ERA List", "Claims in ERA", "Claim Detailed View", "Claim Tracker", "View Document", "View Notes", "Patient Master", "View Fee Schedule", "View Fees", "Adjustment List", "Claim List", "Denied Claims", "Partly Paid Claims", "E-Superbill", "Pre-authorization Request", "Service Invoice List", "Subscription Invoice"];
        var enablemanualbtn = ["ERA List"];

        if ($.inArray(title, enableraisebtn) === -1)
        {
            $('#raiseticket').hide();
        } else
        {
            $('#raiseticket').show();
        }

        if ($.inArray(title, enablemanualbtn) === -1)
        {
            $('#manualinvoice').hide();
        } else
        {
            $('#manualinvoice').hide();
        }

        //  alert(title);
        $('#Pagetitle').text(title);

    });

</script>

<!-- Footer -->
<footer class="page-footer font-small blue">

    <!-- Copyright -->
    <!--<div class="footer-copyright text-center py-3">© 2022  Powered by :-->

    <div class="footer-copyright text-right py-0 footer-right">Powered by  <img src="assets/images/healthomation-logo-PNG.png" alt="Logo" id="logoimg" height="46" width="164"><a href="#" class="acolor"> </a>
    </div>
    <!-- Copyright -->

</footer>


</body>

</html>
<%@page contentType="text/html" pageEncoding="UTF-8" autoFlush="true"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
    <head>

        <title>Edit Radiology Config</title>
        <jsp:include page="includes/header.jsp"></jsp:include>
            <style>


                .loader{
                    position: fixed;
                    left: 0px;
                    top: 0px;
                    width: 100%;
                    height: 100%;
                    z-index: 9999;
                    background: url("data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='40' height='40' viewBox='0 0 50 50'%3E%3Cpath d='M28.43 6.378C18.27 4.586 8.58 11.37 6.788 21.533c-1.791 10.161 4.994 19.851 15.155 21.643l.707-4.006C14.7 37.768 9.392 30.189 10.794 22.24c1.401-7.95 8.981-13.258 16.93-11.856l.707-4.006z'%3E%3CanimateTransform attributeType='xml' attributeName='transform' type='rotate' from='0 25 25' to='360 25 25' dur='0.6s' repeatCount='indefinite'/%3E%3C/path%3E%3C/svg%3E") center / 50px no-repeat;
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

                                            <div class="card-body">
                                            <form:form method="POST" action="editradioconfig" modelAttribute="radiologyconfig"> 
                                                <div class="form-group row">

                                                    <div class="col-lg-4">
                                                        <label class="form-label"  for="radiologyid">Radiology<span class="text-danger">*</span></label>

                                                        <select class="form-control" required id="radiologyid" name="radiologyid" >

                                                        </select> 
                                                    </div>



                                                </div>	
                                                <div class="row">
                                                    <div class="col-lg-12">
                                                        <div class="form-group">

                                                            <select multiple="multiple"  required id="eheadingname" name="eheadingname" class="demo2">                                                              
                                                                <c:forEach var="practice" items="${practicelist}">
                                                                    <option value = ${practice.practice_id} >${practice.practice_name}</option>
                                                                </c:forEach>

                                                            </select>
                                                            <span id="heading_error" class="col-lg-12 offset-lg-6" style="color: red"></span>
                                                        </div></div>

                                                    <div class="col-lg-12 offset-lg-6">
                                                        <div class="form-group">
                                                            <button id="btn-up" type="button" ><i class="feather icon-arrow-up"></i></button>
                                                            <button id="btn-down" type="button" ><i class="feather icon-arrow-down"></i></button>

                                                        </div>
                                                    </div>

                                                </div>



                                                <input type="hidden"  id="configid" name="configid" />

                                                <br/>
                                                <div class="form-group row">                                               
                                                    <div class="col-lg-2">
                                                        <input type="hidden" id="practiceid" name ="practiceid" />
                                                        <button type="submit" onclick="removeAttr()"   tabindex="3" class="btn btn-rounded btn-greenadd btn-block">Submit</button>
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

    <!-- Required Js -->
    <jsp:include page="includes/footer.jsp"></jsp:include>

        <script type="text/javascript">

            $('.pc-selectpicker').selectpicker();
            function removeAttr() {
                $('#radiologyid').removeAttr('disabled');

            }

            $(document).ready(function () {
                $('#flading').show();
                var demo2 = $('.demo2').bootstrapDualListbox({
                    nonSelectedListLabel: 'Non-selected',
                    selectedListLabel: 'Selected',
                    preserveSelectionOnMove: 'moved',
                    moveOnSelect: false,
                    nonSelectedFilter: ''
                });

               

                $('#btn-up').bind('click', function () {
                    $('#bootstrap-duallistbox-selected-list_eheadingname option:selected').each(function () {
                        var newPos = $('#bootstrap-duallistbox-selected-list_eheadingname option').index(this) - 1;
                        if (newPos > -1) {
                            $('#bootstrap-duallistbox-selected-list_eheadingname option').eq(newPos).before("<option value='" + $(this).val() + "' selected='selected'>" + $(this).text() + "</option>");
                            $(this).remove();
                        }
                    });
                });

                $('#btn-down').bind('click', function () {
                    var countOptions = $('#bootstrap-duallistbox-selected-list_eheadingname option').length;
                    $('#bootstrap-duallistbox-selected-list_eheadingname option:selected').each(function () {
                        var newPos = $('#bootstrap-duallistbox-selected-list_eheadingname option').index(this) + 1;
                        if (newPos < countOptions) {
                            $('#bootstrap-duallistbox-selected-list_eheadingname option').eq(newPos).after("<option value='" + $(this).val() + "' selected='selected'>" + $(this).text() + "</option>");
                            $(this).remove();
                        }
                    });
                });

                $('#btnclick').click(function () {

                    var selected = [];
                    for (var option of document.getElementById('bootstrap-duallistbox-selected-list_eheadingname').options)
                    {
                        // if (option.selected) {
                        selected.push(option.value);
                        //}
                    }
                    //  alert(selected);
                    $('#practiceid').val(selected);

                    if ($('#practiceid').val() === '')
                    {
                        $("#heading_error").html("Heading is empty..!");
                    }

                });

                $('#btnmove').click(function () {
                    // alert('muthu');
                });

                $("form").submit(function () {


                    var selected = [];
                    for (var option of document.getElementById('bootstrap-duallistbox-selected-list_eheadingname').options)
                    {
                        selected.push(option.value);
                    }

                    $('#practiceid').val(selected);

                });


                var practiceid = '<%= session.getAttribute("practiceid")%>';
                var userid = '<%= session.getAttribute("Userid")%>';

                var createdby = '<%= session.getAttribute("Userid")%>';
                var EId = '<%= session.getAttribute("Entityid")%>';

               
                var configid = GetParameterValues('configid');
                var radiology = GetParameterValues('radiology');
                if (EId !== '')
                {
                    $('#flading').show();

                    $.ajax({
                        url: "radiologistdetailswtentityid",
                        type: "get", //send it through get method
                        data: {
                            Entityid: EId
                        },
                        success: function (response) {
                            var select = $('#radiologyid');
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
                                //alert(entity);
                                if (practiceid > 0)
                                {
                                    $('#radiologyid').val(practiceid);
                                    $('#radiologyid').prop('disabled', true);
                                } else
                                {
                                    $('#radiologyid').val(radiology);
                                    $('#radiologyid').prop('disabled', true);
                                }
                                $('#flading').hide();

                            }
                        }
                    });
                }







                // console.log(mid);
                if (typeof (configid) !== 'undefined')
                {
                    $('#flading').show();
                    var mappingid = '';
                    $('#configid').val(configid);
                    $.get('getpracticeusingconfigid', {
                        radiology: radiology,
                        configid: configid
                    }, function (response) {
                        console.log('Muthu');
                        console.log(response);
                        var txt = response;
                        var obj = jQuery.parseJSON(txt);
                        console.log(obj);
                        if (obj.length > 0)
                        {
                            for (var i = 0; i < obj.length; i++)
                            {
                                mappingid = obj[i].practice;
                                var eheadingname = mappingid.split(",");
                                $('#eheadingname').val(eheadingname);
                                $('#flading').hide();
                                $('#btnmove').trigger("click");
                            }
                        }

                    });
                }

            });


    </script>     
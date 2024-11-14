<%@page contentType="text/html" pageEncoding="UTF-8" autoFlush="true"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
    <head>

        <title>Template Mapping</title>
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
                                            <form:form method="POST" action="edittemplate" modelAttribute="template"> 
                                                <div class="form-group row">

                                                    <div class="col-lg-4">
                                                        <label class="form-label"  for="ddlpractice">Practice<span class="text-danger">*</span></label>

                                                        <select class="form-control" required id="ddlpractice" name="ddlpractice" >

                                                        </select> 
                                                    </div>


                                                    <div class="col-lg-4">
                                                        <label class="form-label"  for="etemplate">Template Name</label>
                                                        <!--    <input type="text" class="form-control"  id="etemplate" name="etemplate" tabindex="1" placeholder="Template Name" > -->

                                                        <select class="form-control" required id="etemplate" name="etemplate" >
                                                            <option value = "" >--Select--</option> 
                                                            <c:forEach var="benefits" items="${templatelist}">

                                                                <option value = ${benefits.note} >${benefits.ddltemplate}</option>
                                                            </c:forEach> 
                                                        </select> 
                                                    </div>

                                                    <div class="col-lg-4">
                                                        <!-- <label class="form-label" for="eheadingname">Header</label>
                                                         <select class="form-control pc-selectpicker" required name="eheadingname" tabindex="2" multiple id="eheadingname" >
 
                                                        <c:forEach var="Transnotes" items="${headerlist}">
                                                            <option value = ${Transnotes.heading} >${Transnotes.headingname}</option>
                                                        </c:forEach>
                                                    </select> -->
                                                    </div>

                                                </div>	
                                                <div class="row">
                                                    <div class="col-lg-12">
                                                        <div class="form-group">

                                                            <select multiple="multiple"  required id="eheadingname" name="eheadingname" class="demo2">                                                              
                                                                <c:forEach var="Transnotes" items="${headerlist}">
                                                                    <option value = ${Transnotes.heading} >${Transnotes.headingname}</option>
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



                                                <input type="hidden"  id="etemplateid" name="etemplateid" />

                                                <br/>
                                                <div class="form-group row">                                               
                                                    <div class="col-lg-2">
                                                        <input type="hidden" id="headingname_helper3" name ="headingname_helper3" />
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
                $('#ddlpractice').removeAttr('disabled');
                $('#etemplate').removeAttr('disabled');
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

                    if ($('#headingname_helper3').val() === '')
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
                        // if (option.selected) {
                        selected.push(option.value);
                        //}
                    }
                    //  alert(selected);
                    $('#headingname_helper3').val(selected);

                });

                //   $('#flading').show();
                // $('button').click();
                $('#etemplate').attr('disabled', "true");
                var practiceid = '<%= session.getAttribute("practiceid")%>';
                var userid = '<%= session.getAttribute("Userid")%>';

                var createdby = '<%= session.getAttribute("Userid")%>';
                var EId = '<%= session.getAttribute("Entityid")%>';

              
                if (EId !== '')
                {
                    $('#flading').show();

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
                                    $('#ddlpractice').val(practiceid);
                                    $('#ddlpractice').prop('disabled', true);
                                }
                                $('#flading').hide();

                            }
                        }
                    });

                }

                var mid = GetParameterValues('mid');
                var practice = GetParameterValues('practice');
                // console.log(mid);
                if (typeof (mid) !== 'undefined')
                {
                    $('#flading').show();
                    var mappingid = '';
                    var mappingname = '';
                    var selectedmapping = "";
                    $('#etemplateid').val(mid);
                    $.get('gettemplate_formappingid', {
                        practice: practice,
                        mappingid: mid
                    }, function (response) {
                        console.log(response);
                        var txt = response;
                        var obj = jQuery.parseJSON(txt);
                        console.log(obj);
                        if (obj.length > 0)
                        {
                            for (var i = 0; i < obj.length; i++)
                            {
                                 $('#ddlpractice').val(practice);
                               // var selectedOptions = response.split("~");
                               // var etemplate = selectedOptions[0];
                              //  console.log(etemplate);
                                $('#etemplate').val(obj[i].id);
                                mappingid = obj[i].header;
                                mappingname = obj[i].headerdesc;
                                var eheadingname = mappingid.split(",");
                                $('#eheadingname').val(eheadingname);

                              /*  $('#bootstrap-duallistbox-nonselected-list_eheadingname option:not(:selected)').each(function (i, selected) {

                                    if (mappingid.indexOf($(selected).val()) !== -1) {

                                        $(selected).prop("selected", "selected");
                                    }
                                }); */
                                $('#flading').hide();
                                $('#btnmove').trigger("click");
                            }
                        }
//                        $.each(response, function (index, value) {

//                        });
                    });
                }

            });


    </script>     
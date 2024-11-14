<%@page contentType="text/html" pageEncoding="UTF-8" autoFlush="true"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
    <head>

        <title>Template Mapping</title>
        <jsp:include page="includes/header.jsp"></jsp:include>

            <style>
                .filter-option{
                    margin-top: -7px !important;
                    margin-bottom: -4px  !important;
                }

                .bootstrap-select{margin: -3px -14px !important; width: 110%;}

                .moveall, .move, .remove, .removeall
                {
                    background-color: #e9ecef !important;
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
                                            <form:form method="POST" action="addtemplate" modelAttribute="template"> 
                                                <div class="row">
                                                    <div class="col-lg-4">
                                                        <div class="form-group">
                                                            <label class="form-label"  for="ddlpractice">Practice<span class="text-danger">*</span></label>
                                                            <select class="form-control" required id="ddlpractice" name="ddlpractice" >
                                                            </select> 
                                                        </div>
                                                    </div>
                                                    <div class="col-lg-4">
                                                        <div class="form-group">
                                                            <label class="form-label"  for="template">Template Name</label>
                                                            <!--  <input type="text" class="form-control"  id="template" name="template" tabindex="1" placeholder="Template Name" > -->
                                                            <select class="form-control" required id="ddltemplate" name="ddltemplate" >
                                                                <option value = "" >--Select--</option> 
                                                                <c:forEach var="benefits" items="${templatelist}">

                                                                    <option value = ${benefits.note} >${benefits.ddltemplate}</option>
                                                                </c:forEach> 
                                                            </select> 
                                                        </div>
                                                    </div>
                                                    <div class="col-md-4">
                                                        <!-- <label class="form-label" for="headingname">Header</label>
                                                         <div class="form-group">
                                                             <select class="pc-selectpicker" required name="headingname1" tabindex="2" multiple id="headingname" >
                                                                 <option value = "" >--Select--</option>
                                                        <c:forEach var="Transnotes" items="${headerlist}">
                                                            <option value = ${Transnotes.heading} >${Transnotes.headingname}</option>
                                                        </c:forEach>
                                                    </select>
                                                </div> -->
                                                    </div>

                                                </div>	



                                                <div class="row">
                                                    <div class="col-lg-12">
                                                        <div class="form-group">

                                                            <select multiple="multiple"  required id="headingname" name="headingname" class="demo2">

                                                                <option value = "" >--Select--</option>
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


                                                <br/>
                                                <div class="form-group row">                                               
                                                    <div class="col-lg-2">
                                                        <input type="hidden" id="headingname_helper3" name ="headingname_helper3" />
                                                        <button type="submit" onclick="removeAttr()" id="btnclick" tabindex="3" class="btn btn-rounded btn-greenadd btn-block">Submit</button>
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
            }

            $(document).ready(function () {
                $('#flading').show();
                // $('.btn-group').hide();

                //  $('.moveall').find('i').removeClass('glyphicon glyphicon-arrow-right ').addClass('feather icon-arrow-right');
                //  $('.btn moveall btn-default').html('MoveAll');
                // alert()


                /*   var demo1 = $('select[name="duallistbox_demo1[]"]').bootstrapDualListbox();
                 $("#demoform").submit(function () {
                 alert($('[name="duallistbox_demo1[]"]').val());
                 return false;
                 }); */

                var demo2 = $('.demo2').bootstrapDualListbox({
                    nonSelectedListLabel: 'Non-selected',
                    selectedListLabel: 'Selected',
                    preserveSelectionOnMove: 'moved',
                    moveOnSelect: false,
                    nonSelectedFilter: ''
                });

                $('#btn-up').bind('click', function () {
                    $('#bootstrap-duallistbox-selected-list_headingname option:selected').each(function () {
                        var newPos = $('#bootstrap-duallistbox-selected-list_headingname option').index(this) - 1;
                        if (newPos > -1) {
                            $('#bootstrap-duallistbox-selected-list_headingname option').eq(newPos).before("<option value='" + $(this).val() + "' selected='selected'>" + $(this).text() + "</option>");
                            $(this).remove();
                        }
                    });
                });

                $('#btn-down').bind('click', function () {
                    var countOptions = $('#bootstrap-duallistbox-selected-list_headingname option').length;
                    $('#bootstrap-duallistbox-selected-list_headingname option:selected').each(function () {
                        var newPos = $('#bootstrap-duallistbox-selected-list_headingname option').index(this) + 1;
                        if (newPos < countOptions) {
                            $('#bootstrap-duallistbox-selected-list_headingname option').eq(newPos).after("<option value='" + $(this).val() + "' selected='selected'>" + $(this).text() + "</option>");
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


                $("form").submit(function () {


                    var selected = [];
                    for (var option of document.getElementById('bootstrap-duallistbox-selected-list_headingname').options)
                    {
                        // if (option.selected) {
                        selected.push(option.value);
                        //}
                    }
                    //  alert(selected);
                    $('#headingname_helper3').val(selected);

                });


                //   console.log($('div .btn-group buttons').html());



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
                     
                } else
                {
                    $('#flading').hide();
                }



            });


    </script>     
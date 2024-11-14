<%@page contentType="text/html"  pageEncoding="UTF-8" autoFlush="true"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<html lang="en">

    <head>
        <title>EV Results</title>
        <jsp:include page="includes/header.jsp"></jsp:include>
            <style>
                .filter-option{
                    margin-top: -7px !important;
                    margin-bottom: -4px  !important;
                }
                .bootstrap-select{margin: -5px -14px !important; width: 95%;}

                .select2-container .select2-selection--single {
                    box-sizing: border-box;
                    cursor: pointer;
                    display: block;
                    height: 33px !important;
                    user-select: none;
                    -webkit-user-select: none;
                }

                .select2-container--default .select2-selection--single {
                    background-color: #fff;
                    border: 2px solid #ced4da;
                    border-radius: 4px;
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
                                            <form:form method="POST"   action="addevresult" modelAttribute="evresult">
                                                <div class="form-group row">
                                                    <div class="col-lg-4">
                                                        <label class="form-label"  for="ddlpractice">Practice</label>
                                                        <!--      <select class="form-control" required id="ddlpractice" name="ddlpractice" >
                                                                  <option value = "" >--Select--</option> 
                                                        <c:forEach var="benefits" items="${practicelist}">
                                                     
                                                           <option value = ${benefits.practiceid} >${benefits.practicename}</option>
                                                        </c:forEach> 
                                                    </select> -->
                                                        <select class="form-control js-example-placeholder-multiple" required id="ddlpractice" data-placeholder="Select Practice" tabindex="1" name="ddlpractice">
                                                        </select>
                                                    </div>

                                                    <div class="col-lg-4">
                                                        <label class="form-label" for="default_group">Default</label>
                                                        <select class="form-control pc-selectpicker" data-live-search="true" required name="default_group" tabindex="2" multiple id="default_group" >
                                                            <option value = "" >--Select--</option>
                                                            <c:forEach var="benefits" items="${grouplist}">
                                                                <option value = ${benefits.groupid} >${benefits.group}</option>
                                                            </c:forEach>
                                                        </select>
                                                    </div>


                                                    <div class="col-lg-4">
                                                        <label class="form-label" for="optional_group">Optional</label>
                                                        <select class="form-control pc-selectpicker" data-live-search="true" name="optional_group" tabindex="3" multiple id="optional_group" >
                                                            <option value = "" >--Select--</option>
                                                            <c:forEach var="benefits" items="${grouplist}">
                                                                <option value = ${benefits.groupid} >${benefits.group}</option>
                                                            </c:forEach>
                                                        </select>
                                                    </div>

                                                </div>		

                                                <div class="form-group row">
                                                    <div class="col-lg-4">
                                                        <label class="form-label" for="hidden_group">Hidden</label>
                                                        <select class="form-control pc-selectpicker" data-live-search="true" required name="hidden_group" tabindex="4" multiple id="hidden_group" >
                                                            <option value = "" >--Select--</option>
                                                            <c:forEach var="benefits" items="${grouplist}">
                                                                <option value = ${benefits.groupid} >${benefits.group}</option>
                                                            </c:forEach>
                                                        </select>
                                                        <!--  <label class="form-label">Plan Id</label>-->
                                                        <input type="text" class="form-control"  id="createdby" name="createdby" tabindex="6" placeholder="Created By" >
                                                    </div>
                                                </div>

                                                <div class="form-group row">
                                                    <div class="col-lg-4">
                                                        <!--  <label class="form-label">Plan Id</label>-->
                                                        <input type="text" class="form-control"  id="updatedby" name="updatedby" tabindex="7" placeholder="Updated By" >
                                                    </div>
                                                </div>


                                                <br/>
                                                <div class="form-group row">                                               
                                                    <div class="col-lg-2">
                                                        <button type="submit" tabindex="5"  onclick="removeAttr()" class="btn btn-rounded btn-greenadd btn-block">Submit</button>
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

    <script>
        //  $('#ddlpractice').selected
    </script>

    <!-- Required Js -->
    <jsp:include page="includes/footer.jsp"></jsp:include>
        <script src="assets/js/plugins/select2.full.min.js"></script>
        <script src="assets/js/pages/form-select-custom.js"></script>

        <script type="text/javascript">

        $('.pc-selectpicker').selectpicker();


        $(document).ready(function () {

            var practiceid = '<%= session.getAttribute("practiceid")%>';
            var UT = '<%= session.getAttribute("UT")%>';
            $('#flading').show();
            $('#createdby').hide();
            $('#updatedby').hide();

            $("#hidden_group").prop("disabled", true);

            $('#hidden_group option').each(function () {
                //$(this).show();
                if ($(this).val() !== "")
                {
                    $(this).prop("selected", true);
                }

                var def_val = '';

                $('option:selected', '#hidden_group').each(function ()
                {
                    def_val = def_val + $(this).text() + ",";
                });

                if (def_val !== "")
                {
                    def_val = def_val.substring(0, def_val.length - 1);
                    $('.filter-option-inner-inner:eq(2)').html(def_val);
                } else
                {

                    $('.filter-option-inner-inner:eq(2)').html('Nothing selected');
                }
            });

            var groupcode = [];
            var groupcode1 = [];


            $('#default_group').change(function () {
                groupcode = [];

                $('option:selected', $(this)).each(function () {

                    groupcode.push($(this).val());

                    // console.log($(this).val());
                });


                $('#hidden_group option').each(function () {
                    //$(this).show();

                    if (groupcode.indexOf($(this).val()) !== -1) {
                        $(this).prop("selected", false);

                    } else if (groupcode1.indexOf($(this).val()) !== -1) {
                        $(this).prop("selected", false);

                    } else {
                        if ($(this).val() !== "")
                        {
                            $(this).prop("selected", true);
                        }
                    }

                });
                $('#optional_group option').each(function () {
                    //$(this).show();
                    //console.log($(this).val());
                    if (groupcode.indexOf($(this).val()) !== -1) {
                        // console.log($(this).val());
                        $(this).prop("selected", false);
                    }

                });

                var def_val = '';

                $('option:selected', '#optional_group').each(function ()
                {
                    def_val = def_val + $(this).text() + ",";
                });

                if (def_val !== "")
                {
                    def_val = def_val.substring(0, def_val.length - 1);
                    $('.filter-option-inner-inner:eq(1)').html(def_val);
                } else
                {

                    $('.filter-option-inner-inner:eq(1)').html('Nothing selected');
                }



                var def_val1 = '';

                $('option:selected', '#hidden_group').each(function ()
                {
                    def_val1 = def_val1 + $(this).text() + ",";
                });

                if (def_val1 !== "")
                {
                    def_val1 = def_val1.substring(0, def_val1.length - 1);
                    $('.filter-option-inner-inner:eq(2)').html(def_val1);
                } else
                {

                    $('.filter-option-inner-inner:eq(2)').html('Nothing selected');
                }



                // $(this).prop("selected", "false");
            });


            $('#optional_group').change(function () {
                groupcode1 = [];
                // var groupcode = [];
                $('option:selected', $(this)).each(function () {

                    groupcode1.push($(this).val());
                    // console.log($(this).val());
                });


                //console.log(groupcode);

                $('#hidden_group option').each(function () {
                    //$(this).show();

                    if (groupcode1.indexOf($(this).val()) !== -1) {
                        $(this).prop("selected", false);
                    } else if (groupcode.indexOf($(this).val()) !== -1) {
                        $(this).prop("selected", false);


                    } else
                    {
                        if ($(this).val() !== "")
                        {
                            $(this).prop("selected", true);
                        }
                    }

                });
                $('#default_group option').each(function () {
                    //$(this).show();
                    //console.log($(this).val());
                    if (groupcode1.indexOf($(this).val()) !== -1) {
                        // console.log($(this).val());
                        $(this).prop("selected", false);
                    }

                });

                var def_val = '';

                $('option:selected', '#default_group').each(function ()
                {
                    def_val = def_val + $(this).text() + ",";
                });

                if (def_val !== "")
                {
                    def_val = def_val.substring(0, def_val.length - 1);
                    $('.filter-option-inner-inner:eq(0)').html(def_val);
                } else
                {

                    $('.filter-option-inner-inner:eq(0)').html('Nothing selected');
                }


                var def_val1 = '';

                $('option:selected', '#hidden_group').each(function ()
                {
                    def_val1 = def_val1 + $(this).text() + ",";
                });

                if (def_val1 !== "")
                {
                    def_val1 = def_val1.substring(0, def_val1.length - 1);
                    $('.filter-option-inner-inner:eq(2)').html(def_val1);
                } else
                {

                    $('.filter-option-inner-inner:eq(2)').html('Nothing selected');
                }

                // $(this).prop("selected", "false");
            });





            var createdby = '<%= session.getAttribute("Userid")%>';
            var EId = '<%= session.getAttribute("Entityid")%>';

            $('#createdby').val(createdby);
            $('#updatedby').val(createdby);
            console.log(createdby);
         
            if (EId !== '')
            {
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
                            console.log("UT:<%=session.getAttribute("UT")%>:");
                            var usertype = '<%=session.getAttribute("UT")%>';
                            var practiceid = '<%=session.getAttribute("practiceid")%>';
        <sec:authorize access="hasAnyRole('ROLE_PRACTICE_ADMIN')">
                            console.log("Practice: " + practiceid);
                            $('#ddlpractice').val(practiceid);
                            $('#ddlpractice').trigger('change');
                            $('#ddlpractice').attr('disabled', "true");
        </sec:authorize>
                            $('#flading').hide();
                        }
                    }
                });

            }

            $('#ddlpractice').change(function (event) {
                var practiceid = $("select#ddlpractice").val();
                if (practiceid !== '')
                {
                    //Proviver



                } else
                {

                }
            });





        });


        function removeAttr() {
            $('#ddlpractice').removeAttr('disabled');
        }
    </script>     
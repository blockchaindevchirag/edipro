<%@page contentType="text/html"  pageEncoding="UTF-8" autoFlush="true"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML>
<html lang="en">

    <head>
        <title> Edit Template </title>

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
                                    <div class="col-lg-12">

                                        <div class="card">

                                            <div class="card-body">
                                            <form:form method="POST" action="editcreatetemplate" modelAttribute="editcreatetemplate" enctype="multipart/form-data">

                                                <div class="form-group row">



                                                    <div class="col-lg-4">

                                                        <label class="form-label"  for="ddlpractice">Practice<span class="text-danger">*</span></label>

                                                        <select class="form-control js-example-placeholder-multiple" required id="ddlpractice" name="ddlpractice" >

                                                        </select> 


                                                    </div>

                                                    <div class="col-lg-4">

                                                        <label class="form-label" for="ddlprovider">Provider <span class="text-danger">*</span></label>
                                                        <select class="form-control js-example-placeholder-multiple" required id="ddlprovider"  name="ddlprovider">

                                                        </select>

                                                    </div>


                                                    <div class="col-lg-4">

                                                        <label class="form-label"  for="template">Template<span class="text-danger">*</span></label>

                                                        <input type="text" class="form-control" required name="template" id = "template"  placeholder="Enter Template" >


                                                    </div>


                                                </div>
                                                <hr>

                                                <div class="form-group row">


                                                <!--    <div class="col-lg-12">

                                                        
                                                        <div class="card-body">

                                                            <div id="summerynote">

                                                                <p>
                                                                </p>

                                                            </div>
                                                        </div>
                                                    </div> -->

                                                    <div class="col-lg-12">
                                                        <div class="card">
                                                            <div class="card-header">
                                                               
                                                            </div>
                                                            <div class="card-body">
                                                                <textarea id="pc-tinymce-4" name="pc-tinymce-4" class="tox-target">
                           
                                                                </textarea>
                                                            </div>
                                                        </div>
                                                    </div>

                                                </div>


                                                <br/>
                                                <div class="form-group row">                                               

                                                    <div class="col-md-3 offset-md-5">
                                                        <input type="hidden" class="form-control" name="content" id = "content" />
                                                        <input type="hidden" class="form-control" name="ddltemplate" id = "ddltemplate" />
                                                        <button type="submit" id="submitid" class="btn btn-rounded btn-greenadd btn-block">Submit</button>
                                                       
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
            var EId = '<%= session.getAttribute("Entityid")%>';
            var practiceid = '<%= session.getAttribute("practiceid")%>';

          

            var templateid = GetParameterValues('templateid');
            $('#ddltemplate').val(templateid);
            $('#ddltemplate').trigger('change');

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
                            if (practiceid > 0)
                            {
                                $('#ddlpractice').val(practiceid);
                                $('#ddlpractice').trigger('change');
                                $('#ddlpractice').prop('disabled', true);

                                $.ajax({
                                    url: "providerdetailswtentityid",
                                    type: "get", //send it through get method
                                    data: {
                                        practiceid: practiceid
                                    },
                                    success: function (response) {
                                        var select = $('#ddlprovider');
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
                                                $('<option>').val(obj[i].provider_id).text(obj[i].first_name).appendTo(select);
                                            }



                                            $.get('gettranstemplate_for_id', {
                                                trans_templateid: templateid
                                            }, function (response) {
//                    $.each(response, function (index, value) {
                                                var sv = response.split('~');
                                              //  $(".note-editable").html(sv[0].trim());
                                                tinymce.activeEditor.setContent(sv[0].trim());
                                                $('#ddlprovider').val(sv[1].trim());
                                                $('#ddlprovider').trigger('change');
                                                $('#ddlprovider').prop('disabled', true);
                                                $('#template').val(sv[2].trim());

//                    });

                                            });

                                        }
                                    }
                                });

                            }

                        }
                    }
                });

            } else
            {
                var templateid = GetParameterValues('templateid');

                $.get('gettranstemplate_for_id', {
                    trans_templateid: templateid
                }, function (response) {
//                    $.each(response, function (index, value) {
                    var sv = response.split('~');
                   // $(".note-editable").html(sv[0].trim());
                   tinymce.activeEditor.setContent(sv[0].trim());
                    $('#ddlprovider').val(sv[1].trim());
                    $('#ddlprovider').trigger('change');
                    $('#ddlprovider').prop('disabled', true);
                    $('#template').val(sv[2].trim());

//                    });

                });
            }





            $(function () {
                $('#summerynote').summernote({
                    toolbar: [
                        ['style', ['style']],
                        ['fontsize', ['fontsize']],
                        ['font', ['bold', 'italic', 'underline', 'clear']],
                        ['fontname', ['fontname']],
                        ['color', ['color']],
                        ['para', ['ul', 'ol', 'paragraph']],
                        ['insert', ['picture', 'hr']],
                        ['table', ['table']]
                    ],
                    height: 500,
                    width: 1000,
                    codemirror: {
                        mode: 'text/html',
                        htmlMode: true,
                        lineNumbers: true,
                        theme: 'monokai'
                    }
                });
            });

            $("#submitid").click(function () {
                //    $('#ddlpractice').val(practiceid);

                $('#ddltemplate').val(templateid);

                $('#content').val(tinymce.activeEditor.getContent());
                console.log($('#header').val());
            });

           /* $('#btntest').click(function () {
                console.log($(".note-editable").html());
                console.log(tinymce.activeEditor.getContent());
               // console.log($('.tox-tinymce').find('.tox-sidebar-wrap').find('.tox-edit-area').find('#pc-tinymce-4_ifr').html());
            }); */

        });
    </script>     
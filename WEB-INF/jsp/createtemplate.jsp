<%@page contentType="text/html"  pageEncoding="UTF-8" autoFlush="true"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML>
<html lang="en">

    <head>
        <title> Create Template </title>

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
                                            <form:form method="POST" action="addcreatetemplate" modelAttribute="addcreatetemplate" enctype="multipart/form-data">

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

                                                    <div class="col-md-4 offset-md-4">
                                                        <input type="hidden" class="form-control" name="content" id = "content" />
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
                                        }
                                    }
                                });

                            }
                        }
                    }
                });

            }

            $('#ddlpractice').change(function (event) {
                //  $('#ddlbenefittype').val('');
                var practiceid = $("select#ddlpractice").val();
                if (practiceid !== '')
                {
                    //Proviver
                    $("#secondaryins").attr('disabled', true);

                    $.ajax({
                        url: "providerdetailswtentityid",
                        type: "get", //send it through get method
                        data: {
                            practiceid: practiceid
                        },
                        success: function (response) {
                            var select = $('#ddlprovider');
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
            });

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
                $('#ddlpractice').prop('disabled', false);
                //  $('#content').val($(".note-editable").html());
                $('#content').val(tinymce.activeEditor.getContent());

            });
        });
    </script>     
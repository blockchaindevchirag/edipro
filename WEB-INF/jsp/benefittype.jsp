<%-- 
    Document   : view_eligibility_request
    Created on : 07-Mar-2021, 1:55:15 pm
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Benefit Type</title>


        <style>
            .btn1{

                border-radius: 0.25rem;
                font-size: 13px;
                transition: all 0.3s
            }
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
                                    <sec:authorize access="hasAuthority('NEW_BENEFIT_TYPE_PRIVILEGE')">
                                        <button class="btn btn-rounded btn-greenadd md-trigger" id="btnadd" data-modal="modal-1" >Add Benefit Type</button>
                                    </sec:authorize>
                                    <br><br>
                                </div>
                            </div>


                            <div class="row">
                                <!-- Zero config table start -->
                                <div class="col-sm-12">
                                    <div class="card">

                                        <div class="card-body">
                                            <div class="dt-responsive table-responsive1">
                                                <table id="simpletable" class="display compact table table-striped table-bordered">
                                                    <thead>
                                                        <tr>
                                                            <th>Id</th>
                                                            <th>Ben_Type</th>
                                                            <th>Ben_Code</th>
                                                            <th>Group</th>
                                                            <th>Groupid</th>
                                                            <th></th>

                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <c:forEach var="benefits" items="${benefittypelist}">

                                                            <tr>
                                                                <td>${benefits.benefittypeid}</td>
                                                                <td>${benefits.benefittype}</td> 
                                                                <td>${benefits.benefitcode}</td>
                                                                <td>${benefits.group}</td>
                                                                <td>${benefits.groupid}</td>
                                                                <td> 
                                                                    <sec:authorize access="hasAuthority('EDIT_BENEFIT_TYPE_PRIVILEGE')">
                                                                        <button id ="btnedit" class="tabledit-edit-button btn btn-sm btn-default md-trigger editbutton"><span class="feather icon-edit"></span></button>
                                                                        </sec:authorize>
                                                                </td>


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

    <div class="modal fade md-effect-1" id="modal-1" role="dialog" data-backdrop="static" data-keyboard="false">
        <div class="modal-dialog modal-md">
            <div class="modal-content" id="addmodel"> 
                <div class="modal-header">
                    <h4 class="modal-title">Benefit Type </h4>
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>
                <div class="modal-body">
                    <form:form method="POST" id="benefittype"  action="addbenefittype" modelAttribute="addbenefittype">
                        <div class="form-group"> Type
                            <span class="text-danger">*</span>
                            <input type="text" class="form-control" required name="benefittype" id = "benefittype" placeholder="Enter Benefit Type">
                        </div>
                        <div class="form-group"> Code
                            <span class="text-danger">*</span>
                            <input type="text" class="form-control" required name="benefitcode" id = "benefitcode" placeholder="Enter Benefit Code">
                        </div>
                        <div class="form-group">Group
                            <label class="form-label"><span class="text-danger">*</span></label>
                            <select class="form-control js-example-placeholder-multiple" data-placeholder="Select Group" required id="groupid" required name="groupid">
                                <option value = "" >--Select Group--</option>
                            </select> 
                        </div>
                        <br>
                        <div class="col-6 offset-md-2">
                            <button class="btn btn-rounded btn-greenadd btn-block" id = "btnsave">Submit</button>
                        </div>
                    </form:form>
                </div>
            </div>

            <div class="modal-content" id="editmodel">
                <div class="modal-header">
                    <h4 class="modal-title">Edit Benefit Type </h4>
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>
                <div class="modal-body">
                    <form:form method="POST" id="benefittype"  action="editbenefittype" modelAttribute="editbenefittype">
                        <div class="form-group">Type
                            <span class="text-danger">*</span>
                            <input type="text" class="form-control" required name="ebenefittype" id = "ebenefittype" placeholder="Enter Benefit Type">
                        </div>
                        <div class="form-group">Code
                            <span class="text-danger">*</span>
                            <input type="text" class="form-control" required name="ebenefitcode" id = "ebenefitcode" placeholder="Enter Benefit Code">
                        </div>

                        <div class="form-group">Group
                            <label class="form-label">  <span class="text-danger">*</span></label>
                            <select class="form-control js-example-placeholder-multiple" data-placeholder="Select Group" required id="egroupid" required name="egroupid">
                                <option value = "" >--Select Group--</option>
                            </select> 
                        </div>
                        <br>
                        <div class="col-6 offset-md-2">
                            <input type="hidden"  name="ebenefittypeid" id = "ebenefittypeid" />
                            <button class="btn btn-rounded btn-greenadd btn-block" id = "btnedit">Submit</button>
                        </div>

                    </form:form>


                </div>
            </div>

        </div>
    </div>


    <jsp:include page="includes/footer.jsp"></jsp:include>
    <script src="assets/js/plugins/select2.full.min.js"></script>
    <script src="assets/js/pages/form-select-custom.js"></script>

    <script type="text/javascript">
        $(document).ready(function () {
            var flag = 'add';
            //  $('#simpletable').css("width", "150px !important;");
            // $('#modal-2').hide();

            $('#simpletable').find('thead').find('tr').each(function (index) {
                //  $(this).find('th:eq(1)').css("width", "350px !important;");
                //$(this).find('th:eq(3)').hide();
                $(this).find('th:eq(4)').hide();
                // $(this).find('th:eq(5)').hide();

            });

            $('#simpletable').find('tbody').find('tr').each(function (index) {

                // $(this).find('td:eq(0)').prop("readonly", true);
                // $(this).find('td:eq(1)').prop("readonly", true);
                //   $(this).find('td:eq(3)').hide();
                $(this).find('td:eq(4)').hide();
                //  $(this).find('td:eq(6)').hide();


            });


            $('#btnadd').click(function () {
                // alert(flag);
                if (flag === "add")
                {
                    $('#addmodel').show();
                    $('#editmodel').hide();
                } else if (flag === "edit")
                {
                    flag = 'add';
                    $('#addmodel').hide();
                    $('#editmodel').show();

                }

                $('#modal-1').modal('show');
                //  $('.md-show').removeAttr("visibility", "hidden");
                $('.md-overlay').css("visibility", "visible");
                $('.md-show').css("visibility", "visible");

            });


            $('#model_close').click(function () {
                $('#modal-1').modal('hide');
                $('.md-show').css("visibility", "hidden");
                // div.setAttribute("style", "visibility: hidden; ");
                // $('.md-overlay').setAttribute('style', 'visibility: hidden; opacity: 0 !important;');
                $('.md-overlay').css("visibility", "hidden");
                // $('.md-overlay').attr('visibility', 'hidden');
            });

            $('#model_close1').click(function () {
                $('#modal-1').modal('hide');
                $('.md-show').css("visibility", "hidden");
                // div.setAttribute("style", "visibility: hidden; ");
                // $('.md-overlay').setAttribute('style', 'visibility: hidden; opacity: 0 !important;');
                $('.md-overlay').css("visibility", "hidden");
                // $('.md-overlay').attr('visibility', 'hidden');
            });


            $(document).on("click", "#simpletable button.cancelbutton", function () {
                let tr = $(this).closest('tr');
                tr.find('td:eq(1)').show();
                tr.find('td:eq(2)').show();
                tr.find('td:eq(5)').show();
                tr.find('td:eq(3)').hide();
                tr.find('td:eq(4)').hide();
                tr.find('td:eq(6)').hide();


            });

            $(document).on("click", "#simpletable button.iAddbutton", function () {

                //$('#modal-1').modal(options)

                //let tr = $(this).closest('tr');
                // tr.find('td:eq(1) input').prop("readonly", false);
                //tr.find('td:eq(1)').hide();
                //tr.find('td:eq(2)').hide();
                //tr.find('td:eq(5)').hide();
                //tr.find('td:eq(3)').show();
                //tr.find('td:eq(4)').show();
                //tr.find('td:eq(6)').show();

                //let a = tr.find('td:eq(1)').text();
                //tr.find('td:eq(3) input').val(a);
                //let b = tr.find('td:eq(1)').text();
                //  alert(a);
            });


            $(document).on("click", "#simpletable button.editbutton", function () {

                flag = 'edit';
                $('#btnadd').click();
                let tr = $(this).closest('tr');
                // tr.find('td:eq(1) input').prop("readonly", false);


                //  tr.find('td:eq(1)').show();
                //  tr.find('td:eq(2)').show();
                //  tr.find('td:eq(5)').show();
                //  tr.find('td:eq(3)').hide();
                //  tr.find('td:eq(4)').hide();
                //  tr.find('td:eq(6)').hide();


                let a = tr.find('td:eq(0)').text();
                let d = tr.find('td:eq(4)').text();
                let c = tr.find('td:eq(2)').text();
                let b = tr.find('td:eq(1)').text();


                //  alert(d);
                $('#ebenefittype').val(b);
                $('#ebenefitcode').val(c);
                $('#egroupid').val(d);
                $('#egroupid').trigger('change');
                $('#ebenefittypeid').val(a);
                //  $('#ebenefittype').text(b);

            });


            $.ajax({
                url: "groupdetails",
                type: "get", //send it through get method
                data: {
                    group: ''
                },
                success: function (response) {
                    if (response.length > 0)
                    {
                        var select = $('#groupid');
                        var select1 = $('#egroupid');
                        select.find('option').remove();
                        select1.find('option').remove();
                        $('<option>').val("").text("--Select group--").appendTo(select);
                        $('<option>').val("").text("--Select group--").appendTo(select1);
                        // console.log(response);
                        var txt = response;
                        var obj = jQuery.parseJSON(txt);
                        console.log(obj.length);
                        if (obj.length > 0)
                        {

                            for (var i = 0; i < obj.length; i++)
                            {
                                $('<option>').val(obj[i].group_id).text(obj[i].group_name).appendTo(select);
                                $('<option>').val(obj[i].group_id).text(obj[i].group_name).appendTo(select1);
                            }

                        }
                    }
                }
            });


        });


    </script>     
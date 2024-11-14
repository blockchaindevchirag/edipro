<%-- 
    Document   : diognosismaster
    Created on : Dec 29, 2022, 1:41:35 PM
    Author     : SAIFUL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Diagnosis Master</title>
    </head>
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
                                        <button class="btn btn-rounded btn-greenadd md-trigger addbutton" id="btnadd" data-modal="modal-1" >Add New</button>
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
                                                <table id="simpletable" width="98%" class="display compact table table-striped table-bordered">
                                                    <thead>
                                                        <tr>
                                                            <th>Id</th>
                                                            <th>Category Name</th>
                                                            <th>Code</th>
                                                            <th>Desc</th>
                                                            <th>Checkboxid</th>
                                                            <th></th>
                                                            <th></th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <c:forEach var="diagnosis" items="${diagnosislist}">
                                                            <tr>
                                                                <td>${diagnosis.id}</td>
                                                                <td>${diagnosis.diagnosis_category_name}</td>
                                                                <td>${diagnosis.diagnosis_code}</td>   
                                                                <td>${diagnosis.diagnosis_desc}</td>
                                                                <td>${diagnosis.diagnosis_checkbox_id}</td>
                                                                <td> 
                                                                    <sec:authorize access="hasAuthority('EDIT_BENEFIT_TYPE_PRIVILEGE')">
                                                                        <button id ="btnedit" class="tabledit-edit-button btn btn-sm btn-default md-trigger editbutton"><span class="feather icon-edit"></span></button>
                                                                        </sec:authorize>
                                                                </td>
                                                                <td>${diagnosis.diagnosis_category_id}</td>
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
                    <h4 class="modal-title">Add New Diagnosis Master</h4>
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>
                <div class="modal-body">
                    <form:form method="POST" id="newdiagnosis"  action="addNewDiagnosisForm" modelAttribute="addNewDiagnosisForm">

                        <div class="form-group">Diagnosis Category
                            <label class="form-label">  <span class="text-danger">*</span></label>
                            <select class="form-control js-example-placeholder-multiple" required id="diagnosis_category" placeholder="Select category" required name="diagnosis_category_id">
                                <option value = "" >--Select category--</option>
                            </select> </div>


                        <div class="form-group">Diagnosis Code
                            <label class="form-label">  <span class="text-danger">*</span></label>
                            <input type="text" class="form-control" required name="diagnosis_code" id = "diagnosis_code" placeholder="Diagnosis Code">
                        </div>


                        <div class="form-group">Diagnosis Desc
                            <label class="form-label">  <span class="text-danger">*</span></label>
                            <input type="text" class="form-control" required name="diagnosis_desc" id = "diagnosis_desc" placeholder="Diagnosis Description" >

                        </div>

                        <div class="form-group">Diagnosis CheckBox ID
                            <label class="form-label">  <span class="text-danger">*</span></label>
                            <input type="text" class="form-control" required name="diagnosis_checkbox_id" id = "diagnosis_checkbox_id" placeholder="Diagnosis Checkbox_id" >

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
                    <h4 class="modal-title">Edit Pre-estimate </h4>
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>
                <div class="modal-body">
                    <form:form method="POST" id="editDiagnosis"  action="editDiagnosis" modelAttribute="editdiagnosis">

                        <span class="text-danger"></span>

                        <input type="hidden" class="form-control" required name="id" id = "id" placeholder="Diagnosis ID">


                        <div class="form-group">Diagnosis Category
                            <label class="form-label">  <span class="text-danger">*</span></label>
                            <select class="form-control js-example-placeholder-multiple" required id="ediagnosis_category" placeholder="Select category" required name="diagnosis_category_id">
                                <option value = "" >--Select category--</option>
                            </select> 
                        </div>                


                        <div class="form-group">Diagnosis Code
                            <label class="form-label">  <span class="text-danger">*</span></label>
                            <input type="text" class="form-control" required name="diagnosis_code" id = "ediagnosis_code" placeholder="Diagnosis Code">
                        </div>


                        <div class="form-group">Diagnosis Desc
                            <label class="form-label">  <span class="text-danger">*</span></label>
                            <input type="text" class="form-control" required name="diagnosis_desc" id = "ediagnosis_desc" placeholder="Diagnosis Description" >

                        </div>

                        <div class="form-group">Diagnosis CheckBox ID
                            <label class="form-label">  <span class="text-danger">*</span></label>
                            <input type="text" class="form-control" required name="diagnosis_checkbox_id" id = "ediagnosis_checkbox_id" placeholder="Diagnosis Checkbox_id" >

                        </div>

                        <br>
                        <div class="col-6 offset-md-2">
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

            $('#simpletable').find('thead').find('tr').each(function (index) {
                $(this).find('th:eq(6)').hide();
            });

            $('#simpletable').find('tbody').find('tr').each(function (index) {
               $(this).find('td:eq(6)').hide();
            });


            $('#btnadd').click(function () {              
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

                $('.md-overlay').css("visibility", "visible");
                $('.md-show').css("visibility", "visible");
            });
            $('#model_close').click(function () {
                $('#modal-1').modal('hide');
                $('.md-show').css("visibility", "hidden");
                $('.md-overlay').css("visibility", "hidden");

            });

            $('#model_close1').click(function () {
                $('#modal-1').modal('hide');
                $('.md-show').css("visibility", "hidden");
                $('.md-overlay').css("visibility", "hidden");

            });


            $(document).on("click", "#simpletable button.addbutton", function () {

                flag = 'add';
                $('#btnadd').click();

            });

            $(document).on("click", "#simpletable button.editbutton", function () {

                flag = 'edit';
                $('#btnadd').click();
                let tr = $(this).closest('tr');

                let a = tr.find('td:eq(0)').text();
                let c = tr.find('td:eq(6)').text();
                let d = tr.find('td:eq(2)').text();
                let e = tr.find('td:eq(3)').text();
                let g = tr.find('td:eq(4)').text();



                 alert(a);
                   alert(c);
                $('#id').val(a);
                $('#ediagnosis_category').val(c);
                $('#ediagnosis_category').trigger('change');
                $('#ediagnosis_code').val(d);
                $('#ediagnosis_desc').val(e);
                $('#ediagnosis_checkbox_id').val(g);
                //  $('#ebenefittype').text(b);

            });


            $.ajax({
                url: "diagnosisdetails",
                type: "get", //send it through get method
                success: function (response) {
                    if (response.length > 0)
                    {
                        var select = $('#diagnosis_category');
                        var select1 = $('#ediagnosis_category');

                        select.find('option').remove();
                        select1.find('option').remove();
                        $('<option>').val("").text("--Select category--").appendTo(select);
                        $('<option>').val("").text("--Select category--").appendTo(select1);
                        // console.log(response);
                        var txt = response;
                        var obj = jQuery.parseJSON(txt);
                        console.log(obj.length);

                        if (obj.length > 0)
                        {

                            for (var i = 0; i < obj.length; i++)
                            {
                                $('<option>').val(obj[i].diagnosis_category_id).text(obj[i].diagnosis_category_name).appendTo(select);
                                $('<option>').val(obj[i].diagnosis_category_id).text(obj[i].diagnosis_category_name).appendTo(select1);
                            }

                        }
                    }
                }
            });

        });

    </script>   
</html>

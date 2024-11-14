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
        <title>Doc Upload Alert</title>


        <style>
            .btn1{

                border-radius: 0.25rem;
                font-size: 13px;
                transition: all 0.3s
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
                                    <sec:authorize access="hasAuthority('NEW_DOC_UPLOAD_ALERT_PRIVILEGE')">
                                        <button class="btn btn-rounded btn-greenadd md-trigger" id="btnadd" data-modal="modal-1" >Add Doc Upload Alert</button>
                                    </sec:authorize>

                                    <br><br>
                                </div>
                            </div>


                            <div class="row">
                                <!-- Zero config table start -->
                                <div class="col-sm-12">
                                    <div class="card">

                                        <div class="card-body">
                                            <div class="dt-responsive table-responsive">
                                                <table id="simpletable" width="98%" cellspacing="0" class="table table-striped table-bordered nowrap display compact">
                                                    <thead>
                                                        <tr>
                                                            <th>Id</th>
                                                            <th>Type</th>
                                                            <th>Entity</th>
                                                            <th>Practice</th>
                                                            <th>To</th>
                                                            <th>CC</th>
                                                            <th>BCC</th>
                                                            <th>ddltypeofupload</th>
                                                            <th>entity_id</th>
                                                            <th>entity_user_id</th>
                                                            <th></th>

                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <c:forEach var="docconfig" items="${docconfiglist}">

                                                            <tr>
                                                                <td>${docconfig.tid}</td>
                                                                <td>${docconfig.type}</td> 
                                                                <td>${docconfig.entity}</td>
                                                                <td>${docconfig.user}</td>
                                                                <td>${docconfig.to}</td>
                                                                <td>${docconfig.cc}</td>
                                                                <td>${docconfig.bcc}</td>
                                                                <td>${docconfig.ddltypeofupload}</td>
                                                                <td>${docconfig.entity_id}</td>
                                                                <td>${docconfig.entity_user}</td>
                                                                <td  style="width: 25px"> 
                                                                    <sec:authorize access="hasAuthority('EDIT_DOC_UPLOAD_ALERT_PRIVILEGE')">
                                                                        <button id ="btnedit" class="tabledit-edit-button btn btn-sm btn-default md-trigger editbutton"><i class="fas fa-edit" style="font-size:15px; margin:0 3px;color:#2DCEE3;"></i></button>
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


    <div class="md-modal md-effect-1" id="modal-1">
        <div class="md-content" id="addmodel">
            <h5 class="bg-primary p-15 text-center text-white">Add Doc Upload Alert <button type="button" id="model_close" class="close" style="padding-left:20px; color:#fff; opacity:1; margin-top:-5px;" data-dismiss="modal" aria-hidden="true">x</button></h5>           

            <div>
                <form:form method="POST"  action="adddocconfig" modelAttribute="adddocconfig">
                    <div class="form-group">
                        <label class="form-label"> Type <span class="text-danger">*</span></label>
                        <select class="form-control select2-combo" required id="ddltypeofupload" name="ddltypeofupload" >

                        </select> 
                    </div>

                    <div class="form-group">
                        <label class="form-label"> Entity <span class="text-danger">*</span></label>
                        <select class="form-control select2-combo" required id="entity_id" name ="entity_id">
                            <option value = "" >--Select Entity--</option>
                            <c:forEach var="practice" items="${entitylist}">
                                <option value = ${practice.entity_id} >${practice.entity_name}</option>
                            </c:forEach>
                        </select>       
                    </div>

                    <div class="form-group">
                        <label class="form-label"> Practice <span class="text-danger">*</span></label>
                        <select class="form-control select2-combo" required id="entity_user" name ="entity_user">
                            <option value = "" >--Select Practice--</option>
                            <c:forEach var="Practice" items="${practicedetaillist}">
                                <option value = ${Practice.practice_id}>${Practice.name}</option>
                            </c:forEach>
                        </select>       
                    </div>


                    <div class="form-group">
                        <label class="form-label"> To <span class="text-danger">*</span></label>
                        <input type="text" class="form-control" required name="to"  id = "to" placeholder="Enter To Address">
                    </div>

                    <div class="form-group">
                        <label class="form-label"> CC </label>
                        <input type="text" class="form-control"  name="cc" id = "cc"  placeholder="Enter CC Address">
                    </div>

                    <div class="form-group">
                        <label class="form-label"> BCC </label>
                        <input type="text" class="form-control"  name="bcc" id = "cc"  placeholder="Enter BCC Address">
                    </div>

                    <div style="border-top: 1px solid #CED4DA;" class="p-t-10 m-t-20">
                        <button class="btn btn-primary" id = "btnsave" style="font-size:12px!important;">Submit</button>
                    </div>
                </form:form>


            </div>
        </div>

        <div class="md-content" id="editmodel">
            <h5 class="bg-primary p-15 text-center text-white">Edit Doc Upload Alert <button type="button" id="model_close1" class="close" style="padding-left:20px; color:#fff; opacity:1; margin-top:-5px;" data-dismiss="modal" aria-hidden="true">x</button></h5>           

            <div>
                <form:form method="POST"  action="editdocconfig" modelAttribute="editdocconfig">
                    <div class="form-group">
                        <label class="form-label"> Type <span class="text-danger">*</span></label>
                        <select class="form-control select2-combo" required id="eddltypeofupload" name="eddltypeofupload" >

                        </select> 
                    </div>

                    <div class="form-group">
                        <label class="form-label"> Entity <span class="text-danger">*</span></label>
                        <select class="form-control select2-combo" required id="eentity_id" name ="eentity_id">
                            <option value = "" >--Select Entity--</option>
                            <c:forEach var="practice" items="${entitylist}">
                                <option value = ${practice.entity_id} >${practice.entity_name}</option>
                            </c:forEach>
                        </select>       
                    </div>

                    <div class="form-group">
                        <label class="form-label"> Practice <span class="text-danger">*</span></label>
                        <select class="form-control select2-combo" required id="eentity_user" name ="eentity_user">
                            <option value = "" >--Select Practice--</option>
                            <c:forEach var="Practice" items="${practicedetaillist}">
                                <option value = ${Practice.practice_id}>${Practice.name}</option>
                            </c:forEach>
                        </select>       
                    </div>


                    <div class="form-group">
                        <label class="form-label"> To <span class="text-danger">*</span></label>
                        <input type="text" class="form-control" required name="eto" id = "eto" placeholder="Enter To Address">
                    </div>

                    <div class="form-group">
                        <label class="form-label"> CC </label>
                        <input type="text" class="form-control"  name="ecc" id = "ecc" placeholder="Enter CC Address">
                    </div>

                    <div class="form-group">
                        <label class="form-label"> BCC </label>
                        <input type="text" class="form-control"  name="ebcc" id = "ebcc" placeholder="Enter BCC Address">
                    </div>

                    <div style="border-top: 1px solid #CED4DA;" class="p-t-10 m-t-20">
                        <button class="btn btn-primary" id = "btnedit" style="font-size:12px!important;">Submit</button>
                    </div>


                </form:form>


            </div>
        </div>

    </div>



    <div class="md-overlay"></div>







    <jsp:include page="includes/footer.jsp"></jsp:include>
    <script src="assets/js/plugins/select2.full.min.js"></script>
    <script src="assets/js/pages/form-select-custom.js"></script>

    <script type="text/javascript">
        $(document).ready(function () {

            var flag = 'add';


            $('#simpletable').find('thead').find('tr').each(function (index) {

                $(this).find('th:eq(2)').hide();
                $(this).find('th:eq(7)').hide();
                $(this).find('th:eq(8)').hide();
                $(this).find('th:eq(9)').hide();


            });

            $('#simpletable').find('tbody').find('tr').each(function (index) {

                $(this).find('td:eq(2)').hide();
                $(this).find('td:eq(7)').hide();
                $(this).find('td:eq(8)').hide();
                $(this).find('td:eq(9)').hide();


            });


            $('#btnadd').click(function () {

                if (flag === "add")
                {
                    $('#entity_id').val('');
                    $('#ddltypeofupload').val('');
                    $('#entity_user').val('');
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


            $(document).on("click", "#simpletable button.iAddbutton", function () {
                $('#entity_id').val('');
                $('#ddltypeofupload').val('');
                $('#entity_user').val('');

            });


            $(document).on("click", "#simpletable button.editbutton", function () {

                flag = 'edit';
                $('#btnadd').click();
                let tr = $(this).closest('tr');


                let a = tr.find('td:eq(0)').text();
                let b = tr.find('td:eq(7)').text();
                let c = tr.find('td:eq(8)').text();
                let d = tr.find('td:eq(4)').text();
                let e = tr.find('td:eq(5)').text();
                let f = tr.find('td:eq(6)').text();
                let g = tr.find('td:eq(9)').text();


                //  alert(b);
                $('#tid').val(a);

                $('#eentity_id').val(c);
                $('#eentity_id').trigger('change');
                $('#eto').val(d);
                $('#ecc').val(e);
                $('#ebcc').val(f);
                $('#eddltypeofupload').val(b);
                $('#eddltypeofupload').trigger('change');
                $('#eentity_user').val(g);
                $('#eentity_user').trigger('change');

            });


            $.ajax({
                url: "getloadtypeofupload",
                type: "get", //send it through get method
                success: function (response) {
                    var select = $('#ddltypeofupload');
                    var select1 = $('#eddltypeofupload');
                    select.find('option').remove();
                    select1.find('option').remove();
                    $('<option>').val("").text("--Select--").appendTo(select);
                    $('<option>').val("").text("--Select--").appendTo(select1);
                    console.log(response);
                    var txt = response;
                    var obj1 = jQuery.parseJSON(txt);
                    console.log(obj1);
                    if (obj1.length > 0)
                    {
                        for (var i = 0; i < obj1.length; i++)
                        {
                            $('<option>').val(obj1[i].typeofuploadid).text(obj1[i].typeofupload).appendTo(select);
                            $('<option>').val(obj1[i].typeofuploadid).text(obj1[i].typeofupload).appendTo(select1);
                        }

                    }
                }
            });
        });

    </script>     
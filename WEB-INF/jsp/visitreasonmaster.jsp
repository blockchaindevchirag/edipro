<%-- 
    Document   : visitreasonmaster
    Created on : Jan 4, 2023, 2:58:48 PM
    Author     : SAIFUL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Visit Reason</title>
    </head>
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
                                        <button class="btn btn-rounded btn-greenadd md-trigger" id="headeradd" data-modal="modal-1" >Add New</button>                                 
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
                                                                <th>Visit Reason</th>
                                                                <th></th>
                                                                <th>Edit</th>
                                                                <th></th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                        <c:forEach var="vr" items="${visitreason}">
                                                            <tr>
                                                                <td>${vr.visit_id}</td>
                                                                <td>${vr.visit_reason}</td>
                                                                <td><input class="row-data" type="text" name="visit_reason" value=${vr.visit_reason}></td>
                                                                <td>                                                                 
                                                                    <button type="button" class="tabledit-edit-button btn btn-sm btn-default iAddbutton" style="float: none;"><span class="feather icon-edit"></span></button>                                                                        
                                                                </td>
                                                                <td> <button type="button" class="tabledit-save-button btn btn-sm btn-success editbutton" id= "btnedit" >Save</button>
                                                                    <button type="button" class="tabledit-save-button btn btn-sm btn-success cancelbutton" id= "btncancel" >Cancel</button>
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
                    <h4 class="modal-title">Add Visit Reason</h4>
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>
                <div class="modal-body">
                    <form:form method="POST" id="newvisits"  action="newVisitReason" modelAttribute="newVisitReason">
                        <div class="form-group">
                            <span class="text-danger"></span>
                            <input type="hidden" class="form-control" required name="user_id" id = "user_id" placeholder="Enter ID" readonly>
                        </div>


                        <div class="form-group">Visit Reason
                            <label class="form-label">  <span class="text-danger">*</span></label>
                            <input type="text" class="form-control" required name="visit_reason" id = "visitreason" placeholder="Visit Reason">
                        </div>

                        <br>
                        <div class="col-6 offset-md-2">
                            <button class="btn btn-rounded btn-greenadd btn-block" id = "btnsave">Submit</button>
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

                var user_id = '<%= session.getAttribute("Userid")%>';
                $('#user_id').val(user_id);

                $('#simpletable').find('thead').find('tr').each(function (index) {
                    $(this).find('th:eq(2)').hide();
                    $(this).find('th:eq(4)').hide();
                });

                $('#simpletable').find('tbody').find('tr').each(function (index) {
                    $(this).find('td:eq(2)').hide();
                    $(this).find('td:eq(4)').hide();
                });


                $(document).on("click", "#simpletable button.iAddbutton", function () {
                    let tr = $(this).closest('tr');
                    // tr.find('td:eq(1) input').prop("readonly", false);
                    tr.find('td:eq(1)').hide();
                    tr.find('td:eq(2)').show();
                    tr.find('td:eq(4)').show();

                    let a = tr.find('td:eq(1)').text();
                    tr.find('td:eq(2) input').val(a);

                });


                $(document).on("click", "#simpletable button.cancelbutton", function () {
                    let tr = $(this).closest('tr');
                    tr.find('td:eq(1)').show();
                    tr.find('td:eq(2)').hide();
                    tr.find('td:eq(4)').hide();

                });

                $('#headeradd').click(function () {
                    $('#modal-1').modal('show');
                    $('.md-overlay').css("visibility", "visible");
                    $('.md-show').css("visibility", "visible");
                });

                $('#model_close').click(function () {
                    $('#modal-1').modal('hide');
                    $('.md-show').css("visibility", "hidden");
                    $('.md-overlay').css("visibility", "hidden");
                });



                $(document).on("click", "#simpletable button.editbutton", function () {
                    let tr = $(this).closest('tr');
                    // tr.find('td:eq(1) input').prop("readonly", false);
                    tr.find('td:eq(1)').show();
                    tr.find('td:eq(2)').hide();
                    tr.find('td:eq(4)').hide();
                    let a = tr.find('td:eq(0)').text();
                    let b = tr.find('td:eq(2) input').val();
                    tr.find('td:eq(1)').text(b);
                    $.ajax({
                        url: "editVisitReason",
                        type: "get", //send it through get method
                        data: {
                            visitId: a,
                            visit: b,
                            userid: user_id
                        },
                        success: function (response) {
                            console.log(response);
                            msgbox("Record Saved", "Visit Reason Form", "success");
                        },
                        error: function (err) {
                            console.log(err);
                            msgbox("Record Not Saved", "Visit Reason Form", "error: " + err);
                        }
                    });

                });

            });

    </script>   
</html>

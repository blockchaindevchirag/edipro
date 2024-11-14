<%-- 
    Document   : documentType
    Created on : Nov 17, 2021, 10:49:42 PM
    Author     : Sheerin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Document Type</title>
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
                                    <sec:authorize access="hasAuthority('NEW_DOCUMENT_TYPE_PRIVILEGE')">
                                    <button class="btn btn-rounded btn-greenadd md-trigger" id="btndoc"  data-modal="modal-1">Add Document Type</button>
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
                                                    <table id="simpletable" class="table table-striped table-bordered nowrap">
                                                        <thead>
                                                            <tr>
                                                                <th>Tid</th>
                                                                <th>Type</th>
                                                                <th></th>
                                                                <th>Edit</th>
                                                                <th></th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                        <c:forEach var="code" items="${documentlist}">

                                                            <tr>
                                                                <td>${code.tid}</td>
                                                                <td>${code.type}</td> 

                                                                <td><input class="row-data" type="text" name="First" value="${code.type}" ></td>
                                                                <td>
                                                                    <sec:authorize access="hasAuthority('EDIT_DOCUMENT_TYPE_PRIVILEGE')">
                                                                        <button type="button" class="tabledit-edit-button btn btn-sm btn-default iAddbutton" style="float: none;"><span class="feather icon-edit"></span></button><!-- comment -->
                                                                    </sec:authorize>
                                                                    
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
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title">Document Type </h4>
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>
                <div class="modal-body">
                    <form:form method="POST" id="doctype"  action="adddoctype" modelAttribute="adddoctype">
                        <div class="form-group">
                            <span class="text-danger">*</span>
                            <input type="text" class="form-control" required name="type" id = "type" placeholder="Enter Type">
                        </div>
                        <br>
                        <div class="col-6 offset-md-2">
                            <button class="btn btn-rounded btn-greenadd btn-block" id = "btnsave">Save</button>
                        </div>
                    </form:form>
                </div>
            </div>
        </div>
    </div>

    <jsp:include page="includes/footer.jsp"></jsp:include>

    <script type="text/javascript">
        $(document).ready(function () {

            $('#model_close').click(function () {
                $('#modal-1').modal('hide');
                $('.md-overlay').css("visibility", "hidden");
            });

            $('#btndoc').click(function ()
            {
                $('#modal-1').modal('toggle');
                $('.md-overlay').css("visibility", "visible");
            });


            $('#simpletable').find('thead').find('tr').each(function (index) {
                $(this).find('th:eq(2)').hide();
                $(this).find('th:eq(3)').hide();
            });

            $('#simpletable').find('tbody').find('tr').each(function (index) {

                // $(this).find('td:eq(0)').prop("readonly", true);
                // $(this).find('td:eq(1)').prop("readonly", true);
                $(this).find('td:eq(2)').hide();
                $(this).find('td:eq(4)').hide();

            });

            $(document).on("click", "#simpletable button.cancelbutton", function () {
                let tr = $(this).closest('tr');
                // tr.find('td:eq(1) input').prop("readonly", false);
                tr.find('td:eq(1)').show();
                tr.find('td:eq(2)').hide();
                tr.find('td:eq(4)').hide();
            });


            $(document).on("click", "#simpletable button.iAddbutton", function () {
                let tr = $(this).closest('tr');
                // tr.find('td:eq(1) input').prop("readonly", false);
                tr.find('td:eq(1)').hide();
                tr.find('td:eq(2)').show();
                tr.find('td:eq(4)').show();
                var a = tr.find('td:eq(1)').text();
                tr.find('td:eq(2) input').text(a);
                // let a = tr.find('td:eq(0)').text();
                //let b = tr.find('td:eq(1)').text();
                //   alert('Table 1: ' + a + ' ' + b);
            });


            $(document).on("click", "#simpletable button.editbutton", function () {
                let tr = $(this).closest('tr');
                // tr.find('td:eq(1) input').prop("readonly", false);
                tr.find('td:eq(1)').show();
                tr.find('td:eq(2)').hide();
                tr.find('td:eq(4)').hide();

                var a = tr.find('td:eq(0)').text();
                var b = tr.find('td:eq(2) input').val();
                tr.find('td:eq(1)').text(b);
                //   alert('Table 1: ' + a + ' ' + b);

                // alert(a+"~"+b);

                $.ajax({
                    url: "editdocumenttypedetails",
                    type: "get", //send it through get method
                    data: {
                        doctype_val: a + "~" + b
                    },
                    success: function (response) {
                        console.log(response);
                        msgbox("Record Saved", "Document Type Form", "success");
                    },
                    error: function (err) {
                        console.log(err);
                        msgbox("Record Not Saved", "Document Type Form", "error: " + err);
                    }
                });
                

            }); 

        });


    </script>     
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Procedure Code</title>
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
                                    <sec:authorize access="hasAuthority('NEW_PROCEDURE_CODE_PRIVILEGE')">
                                        <button class="btn btn-rounded btn-greenadd md-trigger"  data-modal="modal-1" id="headeradd">Add Procedure Code</button>
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
                                                <table id="simpletable" width="98%" class="display compact table table-striped table-bordered nowrap">
                                                    <thead>
                                                        <tr>
                                                            <th>Tid</th>
                                                            <th>Code</th>
                                                            <th></th>
                                                            <th>Desc</th>
                                                            <th></th>
                                                            <th>Checkbox#</th>
                                                            <th></th>
                                                            <th>Edit</th>
                                                            <th></th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <c:forEach var="benefits" items="${codemasterlist}">

                                                            <tr>
                                                                <td>${benefits.tid}</td>
                                                                <td>${benefits.code}</td>
                                                                <td><input class="row-data" type="text" name="First" value="${benefits.code}" ></td>
                                                                <td>${benefits.desc}</td> 
                                                                <td><input class="row-data" type="text" name="First" value="${benefits.desc}" ></td>
                                                                <td>${benefits.checkboxid}</td> 
                                                                <td><input class="row-data" type="text" name="First" value="${benefits.checkboxid}" ></td>
                                                                <td> 
                                                                    <sec:authorize access="hasAuthority('VIEW_PROCEDURE_CODE_PRIVILEGE')">
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
                    <h4 class="modal-title">Code master</h4>
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>
                <div class="modal-body">
                    <form:form method="POST" id="codemaster"  action="addcodemaster" modelAttribute="addcodemaster">

                        <div class="form-group">
                            <span class="text-danger">*</span>
                            <input type="text" class="form-control" required name="code" id = "code" placeholder="Enter code">
                        </div>
                        <div class="form-group">
                            <span class="text-danger">*</span>
                            <input type="text" class="form-control" required name="desc" id = "desc" placeholder="Enter description">
                        </div>
                        <div class="form-group">
                            <span class="text-danger">*</span>
                            <input type="text" class="form-control" required name="checkboxid" id = "checkboxid" placeholder="Enter checkboxid">
                        </div>

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


            $('#simpletable').find('thead').find('tr').each(function (index) {
                $(this).find('th:eq(2)').hide();
                $(this).find('th:eq(4)').hide();
                $(this).find('th:eq(6)').hide();
                $(this).find('th:eq(8)').hide();
            });

            $('#simpletable').find('tbody').find('tr').each(function (index) {


                $(this).find('td:eq(2)').hide();
                $(this).find('td:eq(4)').hide();
                $(this).find('td:eq(6)').hide();
                $(this).find('td:eq(8)').hide();

            });

            $(document).on("click", "#simpletable button.cancelbutton", function () {
                let tr = $(this).closest('tr');
                // tr.find('td:eq(1) input').prop("readonly", false);
                tr.find('td:eq(1)').show();
                tr.find('td:eq(3)').show();
                tr.find('td:eq(5)').show();
                tr.find('td:eq(7)').show();
                tr.find('td:eq(2)').hide();
                tr.find('td:eq(4)').hide();
                tr.find('td:eq(6)').hide();
                tr.find('td:eq(8)').hide();
            });


            $(document).on("click", "#simpletable button.iAddbutton", function () {

                //  $('#btnclick').click();


                let tr = $(this).closest('tr');
                // tr.find('td:eq(1) input').prop("readonly", false);
                tr.find('td:eq(1)').hide();
                tr.find('td:eq(2)').show();
                tr.find('td:eq(5)').hide();
                tr.find('td:eq(6)').show();
                var a = tr.find('td:eq(1)').text();
                tr.find('td:eq(2) input').text(a);
                tr.find('td:eq(3)').hide();
                tr.find('td:eq(4)').show();
                var b = tr.find('td:eq(4)').text();
                tr.find('td:eq(3) input').text(b);
                var c = tr.find('td:eq(6)').text();
                tr.find('td:eq(5) input').text(c);

                tr.find('td:eq(7)').hide();
                tr.find('td:eq(8)').show();
                // let a = tr.find('td:eq(0)').text();
                //let b = tr.find('td:eq(1)').text();
                //   alert('Table 1: ' + a + ' ' + b);
            });

            $('#headeradd').click(function () {

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


            $(document).on("click", "#simpletable button.editbutton", function () {
                let tr = $(this).closest('tr');
                // tr.find('td:eq(1) input').prop("readonly", false);
                tr.find('td:eq(1)').show();
                tr.find('td:eq(3)').show();
                tr.find('td:eq(5)').show();
                tr.find('td:eq(7)').show();
                tr.find('td:eq(2)').hide();
                tr.find('td:eq(4)').hide();
                tr.find('td:eq(6)').hide();
                tr.find('td:eq(8)').hide();

                let a = tr.find('td:eq(0)').text();
                let b = tr.find('td:eq(2) input').val();
                tr.find('td:eq(1)').text(b);
                let c = tr.find('td:eq(4) input').val();
                tr.find('td:eq(3)').text(c);
                let d = tr.find('td:eq(6) input').val();
                tr.find('td:eq(5)').text(d);
                //tr.find('td:eq(1)').text(b);
                //   alert('Table 1: ' + a + ' ' + b);

                // alert(a+"~"+b);

                $.ajax({
                    url: "editcodemasterdetails",
                    type: "get", //send it through get method
                    data: {
                        id: a,
                        code: b,
                        desc: c,
                        checkBoxId: d
                    },
                    success: function (response) {
                        console.log(response);
                        msgbox("Record Saved", "Code Master Form", "success");
                    },
                    error: function (err) {
                        console.log(err);
                        msgbox("Record Not Saved", "Code Master Form", "error: " + err);
                    }
                });
            });
        });
    </script>     
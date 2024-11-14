<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Group</title>

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
                                        <sec:authorize access="hasAuthority('NEW_GROUP_PRIVILEGE')">
                                        <button class="btn btn-rounded btn-greenadd md-trigger" id="btnadd" data-modal="modal-1">Add Group</button>
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
                                                    <table id="simpletable" class="table table-striped table-bordered">
                                                        <thead>
                                                            <tr>
                                                                <th>Id</th>
                                                                <th>Group</th>    
                                                                <th></th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                        <c:forEach var="benefits" items="${grouplist}">

                                                            <tr>
                                                                <td>${benefits.groupid}</td>
                                                                <td>${benefits.group}</td>
                                                                <td> 
                                                                <sec:authorize access="hasAuthority('EDIT_GROUP_PRIVILEGE')">
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
                        <h4 class="modal-title">Group</h4>
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                    </div>
           <div class="modal-body">
                <form:form method="POST" id="group"  action="addgroup" modelAttribute="addgroup">
                    <div class="form-group">
                        <label class="form-label">  <span class="text-danger">*</span></label>
                        <input type="text" class="form-control" required name="group" id = "group" placeholder="Enter Group">
                    </div>
                   <div class="col-6 offset-md-2">
                        <button class="btn btn-rounded btn-greenadd btn-block" id = "btnsave">Submit</button>
                    </div>
                </form:form>


            </div>
        </div>
                
                <div class="modal-content" id="editmodel">
                    <div class="modal-header">
                        <h4 class="modal-title">Edit Group </h4>
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                    </div>
       <div class="modal-body">
                <form:form method="POST" id="benefittype"  action="editgroup" modelAttribute="editgroup">
                    <div class="form-group">
                        <span class="text-danger">*</span>
                        <input type="text" class="form-control" readonly required name="egroupid" id = "egroupid">
                    </div>


                    <div class="form-group">
                        <label class="form-label">  <span class="text-danger">*</span></label>
                         <input type="text" class="form-control" required name="egroup" id = "egroup" placeholder="Enter Group">
                    </div>


                    <div class="col-6 offset-md-2">
                        <button class="btn btn-rounded btn-greenadd btn-block" id = "btnedit">Submit</button>
                    </div>
                </form:form>


            </div>
        </div>

    </div>
    </div>

    <jsp:include page="includes/footer.jsp"></jsp:include>


    <script type="text/javascript">
        $(document).ready(function () {

            var flag = 'add';

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


            $(document).on("click", "#simpletable button.editbutton", function () {

                flag = 'edit';
                $('#btnadd').click();
                let tr = $(this).closest('tr');
                let a = tr.find('td:eq(0)').text();
                let b = tr.find('td:eq(1)').text();


                //alert(b);
                $('#egroupid').val(a);
                $('#egroup').val(b);


            });

          

        });

    </script>

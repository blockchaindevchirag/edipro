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
        <title>Ticket Assignee Config</title>


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
                                    <sec:authorize access="hasAuthority('NEW_TICKET_ASSIGNEE_CONFIG_PRIVILEGE')">
                                        <button class="btn btn-rounded btn-greenadd md-trigger" id="btnadd" data-modal="modal-1" >Add Ticket Assignee Config</button>
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
                                                            <th>Entity User</th>
                                                            <th>To</th>
                                                            <th>CC</th>
                                                            <th>BCC</th>
                                                            <th>type_of_ticket</th>
                                                            <th>entity_id</th>
                                                            <th>entity_user_id</th>
                                                            <th></th>

                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <c:forEach var="ticketconfig" items="${ticketconfiglist}">

                                                            <tr>
                                                                <td>${ticketconfig.tid}</td>
                                                                <td>${ticketconfig.type}</td> 
                                                                <td>${ticketconfig.entity}</td>
                                                                <td>${ticketconfig.user}</td>
                                                                <td>${ticketconfig.to}</td>
                                                                <td>${ticketconfig.cc}</td>
                                                                <td>${ticketconfig.bcc}</td>
                                                                <td>${ticketconfig.ticket_type_id}</td>
                                                                <td>${ticketconfig.entity_id}</td>
                                                                <td>${ticketconfig.entity_user}</td>
                                                                <td  style="width: 25px"> 
                                                                    <sec:authorize access="hasAuthority('EDIT_TICKET_ASSIGNEE_CONFIG_PRIVILEGE')">
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
            <h5 class="bg-primary p-15 text-center text-white">Add Ticket Assignee Config <button type="button" id="model_close" class="close" style="padding-left:20px; color:#fff; opacity:1; margin-top:-5px;" data-dismiss="modal" aria-hidden="true">x</button></h5>
            <div>
                <form:form method="POST"  action="addticketconfig" modelAttribute="addticketconfig">
                    <div class="form-group">
                        <label class="form-label"> Type <span class="text-danger">*</span></label>
                        <select class="form-control select2-combo" required id="ticket_type_id" name ="ticket_type_id">
                            <option value = "" >--Select--</option>
                            <c:forEach var="ticket" items="${tickettypelist}">
                                <option value = ${ticket.tid} >${ticket.ticket_type}</option>
                            </c:forEach>
                        </select> 
                    </div>

                    <div class="form-group">
                        <label class="form-label"> Entity <span class="text-danger">*</span></label>
                        <select class="form-control select2-combo" required id="entity_id" name ="entity_id">
                            <c:forEach var="practice" items="${entitylist}">
                                <option value = ${practice.entity_id} >${practice.entity_name}</option>
                            </c:forEach>
                        </select> 
                    </div>

                    <div class="form-group">
                        <label class="form-label"> Entity User <span class="text-danger">*</span></label>
                        <select class="form-control select2-combo" required id="entity_user" name ="entity_user">
                            <option value = "" >--Select Entity User--</option>
                            <c:forEach var="ticket" items="${entityuserlist}">
                                <option value = ${ticket.user_id}>${ticket.username}</option>
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
            <h5 class="bg-primary p-15 text-center text-white">Edit Ticket Assignee Config <button type="button" id="model_close1" class="close" style="padding-left:20px; color:#fff; opacity:1; margin-top:-5px;" data-dismiss="modal" aria-hidden="true">x</button></h5>           
            <div>
                <form:form method="POST"  action="editticketconfig" modelAttribute="editticketconfig">
                    <div class="form-group">
                        <label class="form-label"> Type <span class="text-danger">*</span></label>
                        <select class="form-control select2-combo" required id="eticket_type_id" name ="eticket_type_id">
                            <option value = "" >--Select--</option>
                            <c:forEach var="ticket" items="${tickettypelist}">
                                <option value = ${ticket.tid} >${ticket.ticket_type}</option>
                            </c:forEach>
                        </select>
                    </div>

                    <div class="form-group">
                        <label class="form-label"> Entity <span class="text-danger">*</span></label>
                        <select class="form-control select2-combo" required id="eentity_id" name ="eentity_id">
                            <c:forEach var="practice" items="${entitylist}">
                                <option value = ${practice.entity_id} >${practice.entity_name}</option>
                            </c:forEach>
                        </select>       
                    </div>

                    <div class="form-group">
                        <label class="form-label"> Entity User <span class="text-danger">*</span></label>
                        <select class="form-control select2-combo" required id="eentity_user" name ="eentity_user">
                            <option value = "" >--Select Entity User--</option>
                            <c:forEach var="ticket" items="${entityuserlist}">
                                <option value = ${ticket.user_id}>${ticket.username}</option>
                            </c:forEach>
                        </select>       
                    </div>

                    <div class="form-group">
                        <label class="form-label"> To <span class="text-danger">*</span></label>
                        <input type="text" class="form-control" required name="eto"  id = "eto" placeholder="Enter To Address">
                    </div>

                    <div class="form-group">
                        <label class="form-label"> CC </label>
                        <input type="text" class="form-control"  name="ecc" id = "ecc"  placeholder="Enter CC Address">
                    </div>

                    <div class="form-group">
                        <label class="form-label"> BCC </label>
                        <input type="text" class="form-control"  name="ebcc" id = "ebcc"  placeholder="Enter BCC Address">
                    </div>

                    <div style="border-top: 1px solid #CED4DA;" class="p-t-10 m-t-20">
                        <input type="hidden"  name="tid" id = "tid" />
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

                    $('#ticket_type_id').val('');
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

                $('#ticket_type_id').val('');
                $('#entity_user').val('');
            });


            $(document).on("click", "#simpletable button.editbutton", function () {

                flag = 'edit';
                $('#btnadd').click();
                let tr = $(this).closest('tr');


                let a = tr.find('td:eq(0)').text();
                let b = tr.find('td:eq(7)').text();
                let c = tr.find('td:eq(8)').text();
                let d = tr.find('td:eq(9)').text();
                let e = tr.find('td:eq(4)').text();
                let f = tr.find('td:eq(5)').text();
                let g = tr.find('td:eq(6)').text();

                //   alert(b);
                $('#tid').val(a);
                $('#eticket_type_id').val(b);
                $('#eticket_type_id').trigger('change');
                $('#eentity_id').val(c);
                $('#eentity_id').trigger('change');
                $('#eentity_user').val(d);
                $('#eentity_user').trigger('change');
                $('#eto').val(e);
                $('#ecc').val(f);
                $('#ebcc').val(g);


            });






        });


    </script>     
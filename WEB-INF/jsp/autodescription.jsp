
<%-- 
    Document   : autodescription
    Created on : Nov 22, 2021, 9:19:17 PM
    Author     : Sheerin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Auto Description</title>


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
                                    <sec:authorize access="hasAuthority('NEW_AUTO_CONFIG_PRIVILEGE')">
                                        <button class="btn btn-rounded btn-greenadd md-trigger" id="btnadd" data-modal="modal-1">Add Description</button>
                                    </sec:authorize>

                                    <br><br>
                                </div>
                            </div>


                            <div class="row">
                                <!-- Zero config table start -->
                                <div class="col-sm-12">
                                    <div class="card">

                                        <div class="card-body">
                                            <div class="dt-responsive table-responsive" style="display:block !important;">
                                                <table id="simpletable" class="table table-striped table-bordered display compact">
                                                    <thead>
                                                        <tr>
                                                            <th>Id</th>
                                                            <th>Ticket_Type</th>
                                                            <th>Auto-Desc</th>
                                                            <th>ticketid</th>
                                                            <th>SortId</th>
                                                            <th>Auto-Desc</th>
                                                            <th></th>

                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <c:forEach var="tickets" items="${autodesclist}">

                                                            <tr>
                                                                <td>${tickets.auto_desc_id}</td>
                                                                <td>${tickets.ticket_type}</td> 
                                                                <td role="tooltip" data-microtip-position="top" title="" aria-label="${tickets.auto_desc}">${tickets.sauto_desc}</td>
                                                                <td>${tickets.ticket_type_id}</td>
                                                                <td>${tickets.sort_id}</td>
                                                                <td>${tickets.auto_desc}</td>
                                                                <td> 
                                                                    <sec:authorize access="hasAuthority('EDIT_AUTO_CONFIG_PRIVILEGE')">
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
            <h3 class="model-bg-custom">Auto Description <button type="button" id="model_close1" class="close" style="font-size:24px; padding-left:20px" data-dismiss="modal" aria-hidden="true">X</button></h3>
            <div>
                <form:form method="POST" id="autodesc"  action="addautodesc" modelAttribute="addautodesc">


                    <div class="form-group">
                        <label class="form-label"> Ticket Type  <span class="text-danger">*</span></label>
                        <select class="form-control js-example-placeholder-multiple" data-placeholder="Select Ticket Type" required id="ticket_type_id" required name="ticket_type_id">

                        </select> 
                    </div>

                    <div class="form-group">
                        <label class="form-label"> Ticket Description  <span class="text-danger">*</span></label>
                        <textarea class="form-control" required name="auto_desc" id="auto_desc" rows="4" cols="50"></textarea>
                        <input type="hidden" class="form-control"  id="created_by_id" name="created_by_id"  />
                    </div>

                    <div class="form-group">
                        <label class="form-label"> Sort By  <span class="text-danger">*</span></label>
                        <input type="number" class="form-control" required name="sort_id" id="sort_id" />

                    </div>


                    <div class="card-footer text-right">
                        <button class="btn btn-rounded btn-greenadd btn-block" id = "btnsave">Submit</button>

                    </div>
                </form:form>


            </div>
        </div>

        <div class="md-content" id="editmodel">
            <h3 class="model-bg-custom">Edit Auto Desc<button type="button" id="model_close" class="close" style="font-size:24px; padding-left:20px" data-dismiss="modal" aria-hidden="true">X</button></h3>
            <div>
                <form:form method="POST" id="autodesc"  action="editautodesc" modelAttribute="editautodesc">

                    <div class="form-group">
                        <label class="form-label"> Ticket Type  <span class="text-danger">*</span></label>
                        <select class="form-control js-example-placeholder-multiple" data-placeholder="Select Ticket Type" required id="upd_ticket_type_id" name="upd_ticket_type_id">
                            <option value="">--Select Ticket Type--</option>
                        </select> 
                    </div>

                    <div class="form-group">
                        <label class="form-label"> Ticket Description  <span class="text-danger">*</span></label>
                        <textarea class="form-control" required name="upd_auto_desc" id="upd_auto_desc" rows="4" cols="50"></textarea>
                        <input type="hidden" class="form-control"  id="updated_by" name="updated_by"  />
                    </div>

                    <div class="form-group">
                        <label class="form-label"> Sort By  <span class="text-danger">*</span></label>
                        <input type="number" class="form-control" required name="upd_sort_id" id="upd_sort_id" />

                    </div>


                    <div class="card-footer text-right">
                        <input type="hidden"  name="auto_desc_id" id = "auto_desc_id"/>
                        <button class="btn btn-rounded btn-greenadd btn-block" id = "btnedit">Submit</button>

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

                $('#simpletable').DataTable({
                    "order": [[4, "asc"]]
                });

                // $('#createdby1').hide();
                var createdby = '<%= session.getAttribute("Userid")%>';
                $('#created_by_id').val(createdby);
                //  $('#ecreatedby1').hide();
                $('#updated_by').val(createdby);


                $('#model_close').click(function () {
                    $('#modal-1').modal('hide');
                    $('.md-overlay').css("visibility", "hidden");
                });
                $('#model_close1').click(function () {
                    $('#modal-1').modal('hide');
                    $('.md-overlay').css("visibility", "hidden");
                });


                $('#btnedit').click(function ()
                {
                    //$('#modal-1').modal('toggle');
                    //$('.md-overlay').css("visibility", "visible");
                });
                var flag = 'add';

                $('#simpletable').find('thead').find('tr').each(function (index) {

                    $(this).find('th:eq(3)').hide();
                    $(this).find('th:eq(5)').hide();

                });

                $('#simpletable').find('tbody').find('tr').each(function (index) {

                    $(this).find('td:eq(3)').hide();
                    $(this).find('td:eq(5)').hide();


                });


                $('#btnadd').click(function () {

                    $('#modal-1').modal('toggle');
                    $('.md-overlay').css("visibility", "visible");
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

                });

                $(document).on("click", "#simpletable button.editbutton", function () {

                    flag = 'edit';
                    $('#btnadd').click();
                    let tr = $(this).closest('tr');
                    // tr.find('td:eq(1) input').prop("readonly", false);


                    let c = tr.find('td:eq(5)').text();
                    let a = tr.find('td:eq(0)').text();
                    var b = tr.find('td:eq(3)').text();
                    var d = tr.find('td:eq(4)').text();


                    // alert(b);
                    $('#upd_ticket_type_id').val(b);
                    $('#upd_ticket_type_id').trigger('change');
                    $('#upd_auto_desc').val(c);
                    $('#auto_desc_id').val(a);
                    $('#upd_sort_id').val(d);


                });

                $.ajax({
                    url: "tickettypedetails",
                    type: "get", //send it through get method
                    data: {
                        ticketype: ''
                    },
                    success: function (response) {
                        var select = $('#ticket_type_id');
                        var select1 = $('#upd_ticket_type_id');

                        select.find('option').remove();
                        select1.find('option').remove();
                        $('<option>').val("").text("--Select Ticket Type--").appendTo(select);
                        $('<option>').val("").text("--Select Ticket Type--").appendTo(select1);
                        if (response.length > 0)
                        {
                            console.log(response);
                            var txt = response;
                            var obj = jQuery.parseJSON(txt);
                            console.log(obj.length);
                            if (obj.length > 0)
                            {
                                for (var i = 0; i < obj.length; i++)
                                {
                                    $('<option>').val(obj[i].tid).text(obj[i].ticket_type).appendTo(select);
                                    $('<option>').val(obj[i].tid).text(obj[i].ticket_type).appendTo(select1);
                                }
                            }
                        }
                    }
                });

            });


    </script>     
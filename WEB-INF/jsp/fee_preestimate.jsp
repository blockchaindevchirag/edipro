<%-- 
    Document   : mast_preestimate
    Created on : Dec 15, 2022, 7:01:09 PM
    Author     : Windows 10 Pro
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Fee Schedule</title>
        <jsp:include page="includes/header.jsp"></jsp:include>

            <style>
                .btn1{

                    border-radius: 0.25rem;
                    font-size: 13px;
                    transition: all 0.3s
                }
                .select2-container{
                    z-index:99999!important;
                } 
                .table-responsive {
                    display: block;
                    width: 100%;
                    overflow-x: hidden !important;
                    -webkit-overflow-scrolling: touch;
                }


            </style>



            <!-- [ Main Content ] start -->
        <div class="pcoded-main-container">
            <div class="pcoded-wrapper">
                <div class="pcoded-content">
                    <div class="pcoded-inner-content">
                        <div class="main-body">
                            <div class="page-wrapper">

                                <div class="row">
                                    <div class="col-lg-12 m-t-5 m-b-5">

                                        <button class="btn btn-primary" id="btnadd" data-modal="modal-1" ><i class="fas fa-plus-circle"></i>Add New</button>

                                    </div>
                                </div>


                                <div class="row">
                                    <!-- Zero config table start -->
                                    <div class="col-sm-12">
                                        <div class="card">

                                            <div class="card-body">
                                                <div class="dt-responsive table-responsive1">
                                                    <div class="tableFixHead1">
                                                        <table id="eligibilitytable" width="98%"  class="table table-striped table-bordered nowrap display">
                                                            <thead>
                                                                <tr>
                                                                    <th>Id</th>
                                                                    <th>Proc_Id</th>
                                                                    <th>Practice</th>
                                                                    <th>Pre_Estimate_Name</th>
                                                                    <th>Proc_Code</th>
                                                                    <th>Proc_Desc</th>
                                                                    <th>Fees</th>
                                                                    <th></th>
                                                                    <th></th>
                                                                </tr>
                                                            </thead>
                                                            <tbody>
                                                                <!-- <c:forEach var="meb" items="${estimatelist}">
         
                                                                     <tr>
                                                                         <td>${meb.id}</td>
                                                                         <td>${meb.procedure_code_id}</td>
                                                                         <td>${meb.practice_name}</td>   
                                                                         <td>${meb.pre_estimate_name}</td>
                                                                         <td>${meb.procedure_code}</td>
                                                                         <td>${meb.procedure_desc}</td>
                                                                         <td>${meb.fee}</td>
                                                                         <td>
                                                                             <button id ="btnedit" class="tabledit-edit-button btn btn-sm btn-default md-trigger editbutton"><span class="feather icon-edit"></span></button>
                                                                         </td>
                                                                          <td>${meb.practice_id}</td>  
                                                                     </tr>
                                                                     
                                                            </c:forEach> -->
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
    </div>    

    <div class="modal fade md-effect-1" id="modal-1" role="dialog" data-backdrop="static" data-keyboard="false">
        <div class="modal-dialog modal-md">
            <div class="modal-content" id="addmodel"> 
                <div class="modal-header">
                    <h4 class="modal-title">Add Fee Schedule</h4>
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>
                <div class="modal-body">
                    <form:form method="POST" id="newpreestimate"  action="addFeePreestimate" modelAttribute="addFeePreestimate">
                        <div class="form-group">
                            <span class="text-danger"></span>
                            <input type="hidden" class="form-control" required name="entity_id" id = "userid" placeholder="Enter ID" readonly>
                        </div>

                        <div class="form-group">
                            <!--  <label class="form-label">  <span class="text-danger">*</span></label> -->
                            <select class="form-control" multiple id="practice_name" data-placeholder="Yours Placeholder"  name="practice_name">
                                <option value = "" >--Select--</option>
                                <c:forEach var="practice" items="${practicelist}">
                                    <option value = ${practice.practice_id} >${practice.practice_name}</option>
                                </c:forEach>
                            </select> </div>


                        <div class="form-group">Procedure_code
                            <label class="form-label">  <span class="text-danger">*</span></label>
                            <select class="form-control js-example-placeholder-multiple" required id="proc_id" data-placeholder="Enter Procedure Code" required name="procedure_code_id">
                                <option value = "" >--Select procedure--</option>
                            </select> 
                        </div>


                        <div class="form-group">Pre-Estimate_Name
                            <label class="form-label">  <span class="text-danger">*</span></label>
                            <input type="text" class="form-control" required name="pre_estimate_name" id = "pre_est_name" placeholder="Pre_estimate_name">
                        </div>


                        <div class="form-group">fee
                            <label class="form-label">  <span class="text-danger">*</span></label>
                            <input type="text" class="form-control" required name="fee" id = "fee" placeholder="Enter Fee" >

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
                    <h4 class="modal-title">Edit Fee Schedule </h4>
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>
                <div class="modal-body">
                    <form:form method="POST" id="editEstimate"  action="editFeePreestimate" modelAttribute="editFeePreestimate">

                        <span class="text-danger"></span>
                        <input type="hidden" class="form-control" required name="entity_id" id = "userid" placeholder="Enter ID" readonly>

                        <div class="form-group">
                            <!--  <label class="form-label">  <span class="text-danger">*</span></label> -->
                            <select class="form-control" id="prac_id"  data-placeholder="Yours Placeholder"  name="practice_id">
                                <option value = "" >--Select--</option>
                                <c:forEach var="practice" items="${practicelist}">
                                    <option value = ${practice.practice_id} >${practice.practice_name}</option>
                                </c:forEach>
                            </select> 
                            <!-- <input type="text" class="form-control" required name="prac_id" id = "prac_id"> -->
                        </div>


                        <div class="form-group">Procedure_code
                            <label class="form-label">  <span class="text-danger">*</span></label>
                            <select class="form-control js-example-placeholder-multiple" required id="eproc_id" data-placeholder="Enter Procedure Code" required name="procedure_code_id">
                                <option value = "" >--Select procedure--</option>
                            </select> </div>

                        <div class="form-group">Pre-Estimate_Name
                            <label class="form-label">  <span class="text-danger">*</span></label>
                            <input type="text" class="form-control" required name="pre_estimate_name" id = "epre_est_name" placeholder="Pre_estimate_name" >
                        </div>


                        <div class="form-group">fee
                            <label class="form-label">  <span class="text-danger">*</span></label>
                            <input type="text" class="form-control" required name="fee" id = "efee" placeholder="Fee" >

                        </div>

                        <br>
                        <div class="col-6 offset-md-2">
                            <input type="hidden"  name="id" id = "id" />
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
                $(".table-responsive").removeClass("tablehide");
                $(".table-responsive").addClass("tableshow");
                var entity = '<%= session.getAttribute("Entityid")%>';
                $('#userid').val(entity);
                $('#practice_name').hide();
                $('#prac_id').hide();
                var flag = 'add';

                //  $('#eligibilitytable').css("width", "150px !important;");
                // $('#modal-2').hide();


                $('#eligibilitytable').dataTable({
                    "aaSorting": [[1, "desc"]], // Sort by first column descending
                    "lengthMenu": [10, 30, 50, 100, 200],
                    "iDisplayLength": 10,
                    stateSave: true,
                    scrollY: "300px",
                    scrollX: true,
                    scrollCollapse: false,
                    paging: true,
                    'columnDefs': [{
                            'visible': false,
                            'ordering': false,
                            'targets': [2, 8] // column index (start from 0)
                        }],
                    "ajax": {
                        "type": "GET",
                        "url": 'getFeeDetail',
                        "contentType": 'application/json'
                    },
                    dom: 'frtipl',
                    "columns": [
                        {"data": function (data) {
                                return data.id;
                            },
                            "orderable": true, "searchable": true, "name": "id"},
                        {"data": "procedure_code_id", "orderable": true, "searchable": true, "name": "procedure_code_id"},
                        {"data": "practice_name", "orderable": true, "searchable": true, "name": "practice_name"},
                        {"data": "pre_estimate_name", "orderable": true, "searchable": true, "name": "pre_estimate_name"},
                        {"data": "procedure_code", "orderable": true, "searchable": true, "name": "procedure_code"},
                        {"data": "procedure_desc", "orderable": true, "searchable": false, "name": "procedure_desc"},
                        {"data": "fee", "orderable": true, "searchable": false, "name": "fee"},
                        {"data": function (data) {
                                return '<button id ="btnedit" class="tabledit-edit-button btn btn-sm btn-default md-trigger editbutton"><i class="fas fa-edit" style="font-size:15px; margin:0 3px;color:#2DCEE3;"></i></button>';
                            },
                            "orderable": true, "searchable": true, "name": "fee"},
                        {"data": "practice_id", "orderable": true, "searchable": false, "name": "practice_id"}
                    ],
                    drawCallback: function (settings, json) {

                        $('[data-toggle="tooltip"]').tooltip('update');
                        //$("#list-of-product tbody tr > td").tooltip('hide');
                    },
                    createdRow: function (row, data, dataIndex) {
                        // add tooltip when row is created

                    }, footerCallback: function (tfoot, data, start, end, display) {

                    }
                });

                /*  $('#eligibilitytable').find('thead').find('tr').each(function (index) {
                 //     $(this).find('th:eq(2)').hide();
                 //    $(this).find('th:eq(8)').hide();
                 });
                 
                 $('#eligibilitytable').find('tbody').find('tr').each(function (index) {
                 //   $(this).find('td:eq(2)').hide();
                 //  $(this).find('td:eq(8)').hide();
                 }); */


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


               $(document).on("click", "#eligibilitytable button.cancelbutton", function () {
                    let tr = $(this).closest('tr');
                    tr.find('td:eq(1)').show();
                    tr.find('td:eq(2)').hide();
                    tr.find('td:eq(5)').show();
                    tr.find('td:eq(3)').show();
                    tr.find('td:eq(4)').show();
                    tr.find('td:eq(6)').show();
                });

             

                $(document).on("click", "#eligibilitytable button.editbutton", function () {

                    flag = 'edit';
                    $('#btnadd').click();
                    let tr = $(this).closest('tr');

                    let a = tr.find('td:eq(0)').text();
                    let b = tr.find('td:eq(1)').text();
                    let c = tr.find('td:eq(2)').text();
                    let d = tr.find('td:eq(3)').text();


                    let e = tr.find('td:eq(4)').text();
                    let f = tr.find('td:eq(5)').text();
                    let g = tr.find('td:eq(6)').text();
                    let h = tr.find('td:eq(7)').text();
                    let i = tr.find('td:eq(8)').text();


                   //  alert(a);
                    // alert(i);
                    $('#id').val(a);
                    $('#eproc_id').val(b);
                    $('#eproc_id').trigger('change');
                    $('#prac_id').val(i);
                    $('#prac_id').trigger('change');
                    $('#epre_est_name').val(c);
                    $('#eproc_code').val(d);
                    $('#eproc_desc').val(e);
                    $('#efee').val(f);



                    //  $('#ebenefittype').text(b);

                }); 


                $.ajax({
                    url: "getEstimatem",
                    type: "get", //send it through get method
                    success: function (response) {
                        if (response.length > 0)
                        {
                            var select = $('#proc_id');
                            var select1 = $('#eproc_id');

                            select.find('option').remove();

                            $('<option>').val("").text("--Select procedure--").appendTo(select);
                            $('<option>').val("").text("--Select procedure--").appendTo(select1);

                            // console.log(response);
                            var txt = response;
                            var obj = jQuery.parseJSON(txt);
                            console.log(obj.length);

                            if (obj.length > 0)
                            {

                                for (var i = 0; i < obj.length; i++)
                                {
                                    $('<option>').val(obj[i].procedure_code_id).text(obj[i].procedure_code).appendTo(select);
                                    $('<option>').val(obj[i].procedure_code_id).text(obj[i].procedure_code).appendTo(select1);


                                }

                            }
                        }
                    }
                });


            });


    </script>     
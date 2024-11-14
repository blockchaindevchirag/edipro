<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Diagnostic Code</title>
        <jsp:include page="../includes/header.jsp"></jsp:include>


            <!-- [ Main Content ] start -->
        <div class="pcoded-main-container">
            <div class="pcoded-wrapper">
                <div class="pcoded-content">
                    <div class="pcoded-inner-content">
                        <div class="main-body">
                            <div class="page-wrapper">

                                <!--<div class="row">
                                    <div class="col-lg-12">
                                        <button class="btn btn-rounded btn-warning md-trigger" id="btndiag"  data-modal="modal-1">Add Diagnostic Code</button>
                                        <br><br>
                                    </div>
                                </div>-->


                                <div class="row">
                                    <!-- Zero config table start -->
                                    <div class="col-sm-12">
                                        <button type="button" onclick="addNew()" id="btnnew" class="btn btn-gradient-primary" title="btn btn-gradient-primary" data-toggle="tooltip">New Procedure Code</button>
                                        <div id="table_v" class="card">

                                            <div class="card-body">
                                                <div class="dt-responsive table-responsive">
                                                    <table id="simpletable" class="table table-striped table-bordered nowrap">
                                                        <thead>
                                                            <tr>
                                                                <th>S No</th>
                                                                <th>Procedure Code</th>
                                                                <th>Procedure Category</th>
                                                                <th>Sort</th>
                                                                <th>Action</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>

                                                        </tbody>
                                                    </table>
                                                </div>
                                            </div>
                                        </div>
                                        <div style="display:none;" id="new_entry"   class="card">
                                        <form:form method="POST" id="diagnosticcodemaster"  action="adddiagcodemaster" modelAttribute="adddiagcodemaster">
                                            <div class="card-body ">
                                                <div class="card-header">
                                                    <h5>Basic Inputs</h5>
                                                </div>
                                                <div class="card-body">
                                                    <div class="form-group">
                                                        <label class="form-label">Diagnosis Code</label>
                                                        <input type="text" class="form-control" placeholder="Diagnosis Code">
                                                    </div>
                                                    <div class="form-group">
                                                        <label class="form-label">Diagnosis Category</label>
                                                        <select class="form-control" required name="ddlgender" tabindex="8" id="ddlgender" >
                                                            <option value = "" >--Select--</option>
                                                        </select>
                                                    </div>
                                                    <div class="form-group">
                                                        <label class="form-label">Sort</label>
                                                        <input type="text" class="form-control" placeholder="Order">
                                                    </div>
                                                </div>    
                                                <div class="card-footer">
                                                    <button class="btn btn-primary mr-2">Submit</button>
                                                    <button type="reset" onclick="closeNew()" class="btn btn-light">Cancel</button>
                                                </div>
                                            </div>
                                        </form:form>
                                    </div>
                                </div>
                            </div>


                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>    





    <jsp:include page="../includes/footer.jsp"></jsp:include>


    <script type="text/javascript">

        function addNew() {
            $('#btnnew').hide();
            $('#table_v').hide();
            $('#new_entry').show();
        }
        function closeNew() {
            $('#btnnew').show();
            $('#table_v').show();
            $('#new_entry').hide();
        }


        $(document).ready(function () {

            $('#model_close').click(function () {
                $('#modal-1').modal('hide');
                $('.md-overlay').css("visibility", "hidden");
            });

            $('#btndiag').click(function ()
            {
                $('#modal-1').modal('toggle');
                $('.md-overlay').css("visibility", "visible");
            });


            $('#simpletable').find('thead').find('tr').each(function (index) {
                $(this).find('th:eq(2)').hide();
                $(this).find('th:eq(4)').hide();
                $(this).find('th:eq(6)').hide();
            });

            $('#simpletable').find('tbody').find('tr').each(function (index) {


                $(this).find('td:eq(2)').hide();
                $(this).find('td:eq(4)').hide();
                $(this).find('td:eq(6)').hide();

            });

            $(document).on("click", "#simpletable button.cancelbutton", function () {
                let tr = $(this).closest('tr');
                // tr.find('td:eq(1) input').prop("readonly", false);
                tr.find('td:eq(1)').show();
                tr.find('td:eq(3)').show();
                tr.find('td:eq(2)').hide();
                tr.find('td:eq(4)').hide();
                tr.find('td:eq(6)').hide();
            });


            $(document).on("click", "#simpletable button.iAddbutton", function () {
                let tr = $(this).closest('tr');
                // tr.find('td:eq(1) input').prop("readonly", false);
                tr.find('td:eq(1)').hide();
                tr.find('td:eq(2)').show();
                tr.find('td:eq(6)').show();
                var a = tr.find('td:eq(1)').text();
                tr.find('td:eq(2) input').text(a);
                tr.find('td:eq(3)').hide();
                tr.find('td:eq(4)').show();
                var b = tr.find('td:eq(4)').text();
                tr.find('td:eq(3) input').text(a);
                // let a = tr.find('td:eq(0)').text();
                //let b = tr.find('td:eq(1)').text();
                //   alert('Table 1: ' + a + ' ' + b);
            });


            $(document).on("click", "#simpletable button.editbutton", function () {
                let tr = $(this).closest('tr');
                // tr.find('td:eq(1) input').prop("readonly", false);
                tr.find('td:eq(1)').show();
                tr.find('td:eq(3)').show();
                tr.find('td:eq(2)').hide();
                tr.find('td:eq(4)').hide();
                tr.find('td:eq(6)').hide();

                let a = tr.find('td:eq(0)').text();
                var b = tr.find('td:eq(2) input').val();
                tr.find('td:eq(1)').text(b);
                var c = tr.find('td:eq(4) input').val();
                tr.find('td:eq(3)').text(c);
                //tr.find('td:eq(1)').text(b);
                //   alert('Table 1: ' + a + ' ' + b);

                // alert(a+"~"+b);

                $.ajax({
                    url: "editdiagcodemasterdetails",
                    type: "get", //send it through get method
                    data: {
                        diagcodemaster_val: a + "~" + b + "~" + c
                    },
                    success: function (response) {
                        console.log(response);
                        msgbox("Record Saved", "Diagnostic Code Form", "success");
                    },
                    error: function (err) {
                        console.log(err);
                        msgbox("Record Not Saved", "Diagnostic Code Form", "error: " + err);
                    }
                });
 
            }); 

        });


    </script>     
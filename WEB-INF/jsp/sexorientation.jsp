<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sexual Orientation</title>
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
                                        <sec:authorize access="hasAuthority('NEW_SEXUAL_ORIENT_PRIVILEGE')">
                                            <button class="btn btn-rounded btn-greenadd md-trigger"  data-modal="modal-1" id="headeradd">Add Sexual Orientation</button>
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
                                                                <th>Sex Orientation Id</th>
                                                                <th>Sex Orientation</th>
                                                                <th></th>
                                                                <th>Edit</th>
                                                                <th></th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                        <c:forEach var="patients" items="${sexorientationlist}">

                                                            <tr>
                                                                <td>${patients.ddlsexoriid}</td>
                                                                <td>${patients.ddlsexori}</td> 

                                                                <td><input class="row-data" type="text" name="First" value=${patients.ddlsexori} ></td>
                                                                <td> 
                                                                    <sec:authorize access="hasAuthority('EDIT_SEXUAL_ORIENT_PRIVILEGE')">
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


    <div class="md-modal md-effect-1" id="modal-1">
        <div class="md-content">
            <h3 class="model-bg-custom">Sexual Orientation <button type="button" id="model_close" class="close" style="font-size:24px; padding-left:20px" data-dismiss="modal" aria-hidden="true">X</button></h3>
            <div>
                <form:form method="POST" id="sexorientation"  action="addsexorientation" modelAttribute="addsexorientation">
                    <div class="form-group">
                        <span class="text-danger">*</span>
                        <input type="text" class="form-control" required name="sexualorientation" id = "sexualorientation" placeholder="Enter Sexual Orientation">
                    </div>
                    <br>
                     <div class="col-6 offset-md-2">
                        <button class="btn btn-rounded btn-greenadd btn-block" id = "btnsave">Save</button>

                    </div>
                </form:form>
            </div>
        </div>
    </div>
    <div class="md-overlay"></div>




    <jsp:include page="includes/footer.jsp"></jsp:include>


    <script type="text/javascript">
        $(document).ready(function () {


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

                let a = tr.find('td:eq(1)').text();
                tr.find('td:eq(2) input').val(a);
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
                tr.find('td:eq(2)').hide();
                tr.find('td:eq(4)').hide();

                let a = tr.find('td:eq(0)').text();
                let b = tr.find('td:eq(2) input').val();
                tr.find('td:eq(1)').text(b);
                //   alert('Table 1: ' + a + ' ' + b);

                // alert(a+"~"+b);
                
                 $.ajax({
                    url: "editsexorientationdetails",
                    type: "get", //send it through get method
                    data: {
                        sexorient_val: a + "~" + b
                    },
                    success: function (response) {
                         console.log(response);
                          msgbox("Record Saved", "Sex Orientation Form", "success");
                    },
                    error: function (err) {
                        console.log(err);
                         msgbox("Record Not Saved", "Sex Orientation Form", "error: " + err);
                    }
                }); 
            }); 
        }); 
    </script>     
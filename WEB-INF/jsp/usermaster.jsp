<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
    <head>

        <title>User Master</title>
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
                                        <button class="btn btn-rounded btn-greenadd md-trigger"  data-modal="modal-1">Add User</button>
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
                                                                <th>User Id</th>
                                                                <th>User Name</th>
                                                                <th>Password</th>
                                                                <th>User_Type</th>
                                                                <th>Entity</th>
                                                                <th>Practice</th>
                                                                <th>Active</th>
                                                                <th></th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                        <c:forEach var="Usermaster" items="${userdetailslist}">

                                                            <tr>
                                                                <td>${Usermaster.user_id}</td>
                                                                <td>${Usermaster.username}</td> 
                                                                <td>${Usermaster.password}</td>
                                                                <td>${Usermaster.user_type}</td>
                                                                <td>${Usermaster.entity}</td>
                                                                <td>${Usermaster.practice}</td> 
                                                                <td>${Usermaster.active}</td> 
                                                                <td>Edit</td>
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
            <h3 class="model-bg-custom">User Master</h3>
            <div> 
                <form  id ="validation-form123" action="addusermaster" autocomplete="off" modelAttribute="addusermaster" method="POST">
                    <div class="form-group">
                        <span class="text-danger">*</span>
                        <input type="text" class="form-control" required name="Username" id = "Username" placeholder="Enter User Name">

                        <span class="text-danger">*</span>
                        <input type="text" class="form-control" required name="password" id = "password" placeholder="Enter password">



                        <label class="form-label" for="user_type_id">User Type <span class="text-danger">*</span></label>
                        <select class="form-control " id="user_type_id" name ="user_type_id">
                            <option value = "">--Select User Type--</option>
                            <c:forEach var="provider" items="${usertypelist}">
                                <option value = ${provider.user_type_id} >${provider.user_type}</option>
                            </c:forEach>
                        </select>                              




                        <select class="form-control " id="entity_id" name ="entity_id">
                            <option value = "" >--Select Entity--</option>
                            <c:forEach var="practice" items="${entitylist}">
                                <option value = ${practice.entity_id} >${practice.entity_name}</option>
                            </c:forEach>
                        </select>                    



                        <select class="form-control" id="practice_id" name ="practice_id">
                            <option value = "" >--Select Practice--</option>
                            <c:forEach var="practice_id" items="${practicelist}">
                                <option value = ${provider.practice_id} >${provider.practice_name}</option>
                            </c:forEach>
                        </select>   


                        <select class="form-control" required id="ddlprovider"  name="ddlprovider">
                        </select>


                        <div class="card-footer text-right">
                            <button type="submit" class="btn btn-rounded btn-greenadd btn-block">Save</button>

                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <div class="md-overlay"></div>




    <jsp:include page="includes/footer.jsp"></jsp:include>


    <script type="text/javascript">
        $(document).ready(function () {
            $('#ddlprovider').hide();

            $('#simpletable').find('tbody').find('tr').each(function () {
                var status = $(this).find('td').eq().text().trim();

                // alert(requestid);
                if (status === 'Edit')
                {
                    $(this).find('td').eq(5).html("<a href= 'editpayor?payor_id=" + payor_id + "'>" + status + "</a>");
                }
            });


            $('#user_type_id').change(function (event) {

                var user_type_id = $("select#user_type_id").val();
                //   alert(user_type_id);
                if (user_type_id === '4' || user_type_id === '5')
                {
                    $('#ddlprovider').show();
                } else
                {
                    $('#ddlprovider').hide();
                }

            });



            $('#practice_id').change(function (event) {

                var practiceid = $("select#ddlpractice").val();
                if (practiceid !== '')
                {
                    //Proviver

                    $.ajax({
                        url: "providerdetailswtentityid",
                        type: "get", //send it through get method
                        data: {
                            practiceid: practiceid
                        },
                        success: function (response) {
                            var select = $('#ddlprovider');
                            select.find('option').remove();
                            $('<option>').val("").text("--Select--").appendTo(select);
                            console.log(response);
                            var txt = response;
                            var obj = jQuery.parseJSON(txt);
                            console.log(obj);
                            if (obj.length > 0)
                            {
                                for (var i = 0; i < obj.length; i++)
                                {
                                    // var sv = value.split('~');
                                    $('<option>').val(obj[i].provider_id).text(obj[i].first_name).appendTo(select);
                                }

                            }
                        }
                    });

                }

            });


        });


    </script>     
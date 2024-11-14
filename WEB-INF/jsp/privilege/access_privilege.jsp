<%-- 
    Document   : access_privilege
    Created on : 23-May-2022, 1:17:51 am
    Author     : GP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%> 
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html> 
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Access Privilege</title>
        <jsp:include page="../includes/header.jsp"></jsp:include>
        <section class="pcoded-main-container">
            <div class="pcoded-wrapper">
                <div class="pcoded-content">
                    <div class="pcoded-inner-content">
                        <div class="main-body">
                            <div class="page-wrapper">

                                <div class="row">
                                    <!-- [ Select2 ] start -->
                                    <div class="col-sm-12">
                                        <div class="card select-card">
                                            <div class="card-body">
                                                <div class="row">
                                                    <div class="col-1"></div>
                                                    <div class="col-3">
                                                        <select class="form-control js-example-placeholder-multiple" name="role" id="role">
                                                            <option value = "-1" >Select Role</option>
                                                        <c:forEach var="role" items="${rolesList}">
                                                            <option value = "${role.name}" >${role.displayName}</option>
                                                        </c:forEach>
                                                    </select>
                                                    <small class="d-block"><code>Select the role</code></small>
                                                </div>
                                                <!--<div class="col-1"></div>-->
                                                <div class="col-4">
                                                    <select class="form-control js-example-placeholder-multiple" name="userid" id="userListCombo">
                                                        <option value = "-1" >Select User</option>
                                                    </select>
                                                    <small class="d-block"><code>Select the user</code></small>
                                                </div>
                                                <!--<div class="col-1"></div>-->
                                                <div class="col-3">
                                                    <button tabindex="16" id="populatePrivilegeBtn" class="btn btn-greenadd">Go</button>
                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- [ Select2 ] end -->
                            </div>
                            <!---------------------------------------------------------------------------------->                            
                            <form:form  id="form-accessprivileges" class="form-1 needs-validation" method="POST" action="access_privilege" modelAttribute="access_privilege">
                                <div class="row">
                                    <div class="col-sm-12">
                                        <div class="card select-card">
                                            <div class="card-body" id="privilegeContainer"><div style="padding:50px;">Please choose user by filtering role to view the privileges for that particular user</div></div>
                                        </div>
                                    </div>
<!--                                     [ Invoice-right ] end 
                                    <div class="col-12 text-right">
                                        <button id="accesssubmit" class="btn btn-rounded btn-warning" style="width: 25%">Submit </button>
                                    </div>-->
                                </div>
                            </form:form>


                            <!-- [ Main Content ] end -->
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>    


    <jsp:include page="../includes/footer.jsp"></jsp:include>
    <script src="assets/js/pages/form-select-custom.js"></script>
     <script src="assets/js/plugins/select2.full.min.js"></script>

    <script>
        $(document).ready(function () { 
            
            $('#role').change(function () { 
                $('#userListCombo').empty();
                $("#userListCombo").append("<option value='-1'>Select User</option>");
                $('#privilegeContainer').empty();
                $('#privilegeContainer').html("<div style='padding:50px;'>Please choose user by filtering role to view the privileges for that particular user</div>");
                $.ajax({
                    url: "role_users",
                    type: "get", //send it through get method
                    dataType: "json",
                    data: {
                        role: $("#role option:selected").val()
                    },
                    success: function (response) { 

                        $.each(response, function (i, item) { 
                            $("#userListCombo").append("<option value='" + item.id + "'>" + item.email + "</option>");
                        }); 
                    }
                });

            });

            $('#populatePrivilegeBtn').on("click", function () { 
                $('#privilegeContainer').html("<div style='padding:50px;'>Please choose user by filtering role to view the privileges for that particular user</div>");

                $.ajax({
                    url: "user_privilege",
                    type: "get", //send it through get method 
                    data: {
                        role: $("#role option:selected").val(),
                        userid: $("#userListCombo option:selected").val()
                    },
                    success: function (response) {
                        console.log("response: " + response);
                        $('#privilegeContainer').html(response);
                    }
                });

            });
 
        });

    </script>
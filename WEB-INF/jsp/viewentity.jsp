<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Entity Master</title>
        <jsp:include page="includes/header.jsp"></jsp:include>

        <section class="pcoded-main-container">
            <div class="pcoded-wrapper">
                <div class="pcoded-content">
                    <div class="pcoded-inner-content">
                        <div class="main-body">
                            <div class="page-wrapper">
                                <div class="row">
                                    <!-- Zero config table start -->
                                    <div class="col-sm-12">
                                        <div class="card">
                                            <div class="card-body">
                                                <div class="dt-responsive table-responsive tablehide">
                                                    <table id="simpletable" class="table table-striped table-bordered nowrap">
                                                        <thead>
                                                            <tr>
                                                                <th>Entity_Id</th>
                                                                <th>Name</th>
                                                                <th>Tax ID</th>
                                                                <th>HDI ID</th>
                                                                <th>Phone</th>
                                                                <th>Email</th>
                                                                <th>City</th>
                                                                <th>State</th>
                                                                <th></th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                        <c:forEach var="Entity" items="${entitydetaillist}">

                                                            <tr>
                                                                <td>${Entity.entity_id}</td>
                                                                <td>${Entity.name}</td>
                                                                <td>${Entity.taxid}</td>
                                                                <td>${Entity.hdiid1}</td>
                                                                <td>${Entity.alert_phone}</td>
                                                                <td>${Entity.email}</td>
                                                                <td>${Entity.city}</td>
                                                                <td>${Entity.state}</td>
                                                                <sec:authorize access="hasAuthority('EDIT_ENTITY_PRIVILEGE')">
                                                                    <td data-toggle='tooltip' data-placement='left' title='' data-original-title='Edit'><a href= 'editentity?entity_id=${Entity.entity_id}'><i class='fas fa-edit' style='font-size:15px; margin:0 3px;color:#2DCEE3;'></i></a></td>
                                                                        </sec:authorize>
                                                            </tr>
                                                        </c:forEach>

                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- [ Main Content ] end -->
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>        


    <jsp:include page="includes/footer.jsp"></jsp:include>


    <script type="text/javascript">
        $(document).ready(function () {
            $(".table-responsive").removeClass("tablehide");
            $(".table-responsive").addClass("tableshow");
        });


    </script>     
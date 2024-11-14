<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View Corp List</title>
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
                                                    <table id="simpletable" width="98%" class="display compact table table-striped table-bordered nowrap">
                                                        <thead>
                                                            <tr>
                                                                <th>Corp_ID</th>
                                                                <th>Name</th>
                                                                <th>Tax ID</th>
                                                                <th>Practice Name</th>
                                                                <th>City</th>
                                                                <th>State</th>
                                                                <th>Practice_id</th>
                                                                <th>Entity</th>
                                                                <th></th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                        <c:forEach var="Corporation" items="${corpdetaillist}">

                                                            <tr>
                                                                <td>${Corporation.corp_id}</td>
                                                                <td>${Corporation.name}</td>
                                                                <td>${Corporation.taxid}</td>
                                                                <td data-toggle="tooltip" data-placement="top" title="" data-original-title="${Corporation.practice_name}">${Corporation.spractice_name}</td>
                                                                <td>${Corporation.city}</td>
                                                                <td>${Corporation.state}</td>
                                                                <td>${Corporation.practice_id}</td>
                                                                <td>${Corporation.entity_name}</td>
                                                                <td data-toggle='tooltip' data-placement='top' title='' data-original-title='Edit' >Edit</td>
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

            $('#simpletable').find('thead').find('tr').each(function () {
                $(this).find('th:eq(6)').hide();
            });
            $('#simpletable').find('tbody').find('tr').each(function () {
                $(this).find('td:eq(6)').hide();
            });

            $('#simpletable').find('tbody').find('tr').each(function () {
                var status = $(this).find('td').eq(8).text().trim();
                var practice_id = $(this).find('td').eq(6).text().trim();
                var tid = $(this).find('td').eq(0).text().trim();
                // alert(requestid);
                if (status === 'Edit')
                {
                    $(this).find('td').eq(8).html("<a href= 'editcorp?practice_id=" + practice_id + "&tid=" + tid + "'><i class='fas fa-edit' style='font-size:15px; margin:0 3px;color:#2DCEE3;'></i></a>");
                }
            });


        });


    </script>     
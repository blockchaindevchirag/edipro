<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View Clearinghouse</title>
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
                                                                <th>Clearinghouse_ID</th>
                                                                <th>Name</th>
                                                                <th>Universal ID</th>
                                                                <th>EDI ID</th>
                                                                <th></th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                        <c:forEach var="Clearinghouse" items="${chdetaillist}">

                                                            <tr>
                                                                <td>${Clearinghouse.clearinghouse_id}</td>
                                                                <td>${Clearinghouse.name}</td>
                                                                <td>${Clearinghouse.clearinghouse_id_universal}</td>
                                                                <td>${Clearinghouse.alt_edi_id}</td>
                                                                <sec:authorize access="hasAuthority('EDIT_CLEARINGHOUSE_PRIVILEGE')">
                                                                <td data-toggle='tooltip' data-placement='top' title='' data-original-title='Edit' >Edit</td>
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
            $('#simpletable').find('tbody').find('tr').each(function () {
                var status = $(this).find('td').eq(4).text().trim();
                var clearinghouse_id = $(this).find('td').eq(0).text().trim();
                // alert(requestid);
                if (status === 'Edit')
                {
                    $(this).find('td').eq(4).html("<a href= 'editclearinghouse?clearinghouse_id=" + clearinghouse_id + "'><i class='fas fa-edit' style='font-size:15px; margin:0 3px;color:#2DCEE3;'></i></a>");
                }
            });


        });


    </script>     
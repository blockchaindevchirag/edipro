<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View Practice List</title>
        <jsp:include page="includes/header.jsp"></jsp:include>

        <section class="pcoded-main-container">
            <div class="pcoded-wrapper">
                <div class="pcoded-content">
                    <div class="pcoded-inner-content">
                        <div class="main-body">
                            <div class="page-wrapper">
                                <div class="row">
                                    <!-- Zero config table start -->
                                    <div class="col">
                                        <div class="card">                                           
                                            <div class="card-body">
                                                <div class="dt-responsive table-responsive tablehide">
                                                    <table id="simpletable" width="98%" style="width: 0px;"  class="display compact table table-striped table-bordered nowrap">
                                                        <thead>
                                                            <tr>
                                                                <th>Practice_ID</th>
                                                                <th>Name</th>
                                                                <th>State</th>
                                                                <th>Code</th>
                                                                <th>Specialty</th>
                                                                <th>CH</th>
                                                                <th>Group NPI</th>
                                                                <th>Account#</th>
                                                                <th>CR Dt</th>
                                                                <th>UP Dt</th>
                                                                <th></th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                        <c:forEach var="Practice" items="${practicedetaillist}">

                                                            <tr>
                                                                <td>${Practice.practice_id}</td>
                                                                <td>${Practice.name}</td>
                                                                <td>${Practice.state}</td>
                                                                <td>${Practice.practice_code}</td>
                                                                <td>${Practice.specialty}</td>
                                                                <td>${Practice.clearing_house}</td>
                                                                <td>${Practice.group_npi1}</td>
                                                                <td>${Practice.account_no}</td>
                                                                <td data-toggle="tooltip" data-placement="left" title="" data-original-title="${Practice.created_by}">${Practice.created_date}</td>
                                                                <td data-toggle="tooltip" data-placement="left" title="" data-original-title="${Practice.updated_by}">${Practice.updated_date}</td>
                                                                <sec:authorize access="hasAuthority('EDIT_PRACTICE_PRIVILEGE')">
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
                var status = $(this).find('td').eq(10).text().trim();
                var practice_id = $(this).find('td').eq(0).text().trim();
                // alert(requestid);
                if (status === 'Edit')
                {
                    $(this).find('td').eq(10).html("<a href= 'editpractice?practice_id=" + practice_id + "'><i class='fas fa-edit' style='font-size:15px; margin:0 3px;color:#2DCEE3;'></i></a>");
                }
            });


        });


    </script>     
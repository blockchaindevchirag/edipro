<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View EV Query</title>
        <jsp:include page="includes/header.jsp"></jsp:include>

            <style>
                .btn-greenadd:hover {
                    color: #212529 !important;
                    background-color: #e0a800;
                    border-color: #d39e00;
                }
            </style>

        <section class="pcoded-main-container">
            <div class="pcoded-wrapper">
                <div class="pcoded-content">
                    <div class="pcoded-inner-content">
                        <div class="main-body">
                            <div class="page-wrapper">

                                <div class="row">
                                    <div class="col-lg-12">
                                    <sec:authorize access="hasAuthority('NEW_EVQUERY_PRIVILEGE')">
                                        <a class="btn btn-rounded btn-greenadd md-trigger" href="evquery" >Add EV Query</a>
                                    </sec:authorize>

                                    <br><br>
                                </div>
                            </div>

                            <div class="row">
                                <!-- Zero config table start -->
                                <div class="col">
                                    <div class="card">
                                        <div class="card-body">
                                            <div class="dt-responsive table-responsive tablehide">
                                                <table id="simpletable" width="98%" style="width: 0px;" class="display compact table table-striped table-bordered nowrap">
                                                    <thead>
                                                        <tr>

                                                            <th>Practice Id</th>
                                                            <th>Practice</th>
                                                            <th>Default</th>
                                                            <th>Optional</th>
                                                            <th>Hidden</th>
                                                            <th>Created On</th>
                                                            <th>Create By</th>
                                                            <th>Updated On</th>
                                                            <th>Updated By</th>
                                                            <th></th>
                                                            <th></th>
                                                            <th></th>
                                                            <th></th>
                                                            <th></th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <c:forEach var="Benefits" items="${transactionlist}">

                                                            <tr>
                                                                <td>${Benefits.practiceid}</td>
                                                                <td  data-toggle="tooltip" data-placement="top" title="" data-original-title="${Benefits.practicename}"> ${Benefits.spracticename}</td>
                                                                <td  data-toggle="tooltip" data-placement="top" title="" data-original-title="${Benefits.default_group}"> ${Benefits.default_id}</td>
                                                                <td  data-toggle="tooltip" data-placement="top" title="" data-original-title="${Benefits.optional_group}"> ${Benefits.optional_id}</td>
                                                                <td  data-toggle="tooltip" data-placement="top" title="" data-original-title="${Benefits.hidden_group}"> ${Benefits.hidden_id}</td>
                                                                <td>${Benefits.created_date}</td>
                                                                <td>${Benefits.createdbyname}</td>
                                                                <td>${Benefits.updated_date}</td>
                                                                <td>${Benefits.updatedbyname}</td>
                                                                <td>${Benefits.benefitstatus}</td>                                                              
                                                                <sec:authorize access="hasAuthority('EDIT_EVQUERY_PRIVILEGE')">
                                                                    <td data-toggle='tooltip' data-placement='top' title='' data-original-title='Edit'>Edit</td>
                                                                </sec:authorize>
                                                                <td> ${Benefits.default_group_id}</td>
                                                                <td> ${Benefits.optional_group_id}</td>
                                                                <td> ${Benefits.hidden_group_id}</td>

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
                $(this).find('th').eq(9).hide();
                $(this).find('th').eq(4).hide();
                $(this).find('th').eq(11).hide();
                $(this).find('th').eq(12).hide();
                $(this).find('th').eq(13).hide();
            });

            $('#simpletable').find('tbody').find('tr').each(function () {
                $(this).find('td').eq(9).hide();
                $(this).find('td').eq(4).hide();
                var df = $(this).find('td').eq(2).text();
                df = df.substring(0, 10);
                $(this).find('td').eq(2).text(df);
                var of = $(this).find('td').eq(3).text();
                of = of.substring(0, 10);
                $(this).find('td').eq(3).text(of);
                var hf = $(this).find('td').eq(4).text();
                hf = hf.substring(0, 10);
                $(this).find('td').eq(4).text(hf);
                $(this).find('td').eq(11).hide();
                $(this).find('td').eq(12).hide();
                $(this).find('td').eq(13).hide();
                var status = $(this).find('td').eq(10).text().trim();
                var practice_id = $(this).find('td').eq(0).text().trim();
                var df = $(this).find('td').eq(11).text().trim();
                var op = $(this).find('td').eq(12).text().trim();
                var hi = $(this).find('td').eq(13).text().trim();
                // alert(requestid);
                if (status === 'Edit')
                {
                    // $(this).find('td').eq(0).html("<a href= 'editevquery?practice_id=" + practice_id + "&bt=" + bt + "&btid=" + btid + "'>" + status + "</a>");
                    $(this).find('td').eq(10).html("<a href= 'editevquery?practice_id=" + practice_id + "&df=" + df + "&op=" + op + "&hi=" + hi + "'><i class='fas fa-edit' style='font-size:15px; margin:0 3px;color:#2DCEE3;'></i></a>");
                }
            });


        });


    </script>     
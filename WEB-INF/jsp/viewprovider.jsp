<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View Provider List</title>
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
                                                    <table id="simpletable" width="98%" style="width: 0px;"  class="table table-striped table-bordered nowrap">
                                                        <thead>
                                                            <tr>
                                                                <th>Provider ID</th>
                                                                <th>Practice</th>
                                                                <th>Provider Name</th>
                                                                <th>Provider Type</th>                                                            
                                                                <th>NPI</th>
                                                                <th>State</th>
                                                                <th>Header</th>
                                                                <th>Footer</th>
                                                                <th>Signature</th>
                                                                <th></th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                        <c:forEach var="provider" items="${providerdetailslist}">

                                                            <tr>
                                                                <td>${provider.provider_id}</td>
                                                                <td>${provider.practice_name}</td>
                                                                <td>${provider.first_name}</td>
                                                                <td>${provider.user_type}</td>
                                                                <td>${provider.individual_npi}</td>
                                                                <td>${provider.state}</td>                                                      
                                                                <td>${provider.header}</td>
                                                                <td>${provider.footer}</td>
                                                                <td>${provider.signature}</td>
                                                                 <sec:authorize access="hasAuthority('EDIT_PROVIDER_PRIVILEGE')">
                                                                   <td data-toggle="tooltip" data-placement="top" title="" data-original-title="Edit">Edit</td>
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
                var status = $(this).find('td').eq(9).text().trim();
                var provider_id = $(this).find('td').eq(0).text().trim();
                //    alert(status);
                if (status === 'Edit')
                {
                    $(this).find('td').eq(9).html("<a href= 'editprovider?provider_id=" + provider_id + "'><i class='fas fa-edit' style='font-size:15px; margin:0 3px;color:#2DCEE3;'></i></a>");
                }
            });


        });


    </script>     
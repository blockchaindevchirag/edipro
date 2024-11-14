<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Alias Master</title>
        <jsp:include page="includes/header.jsp"></jsp:include>

        <section class="pcoded-main-container">
            <div class="pcoded-wrapper">
                <div class="pcoded-content">
                    <div class="pcoded-inner-content">
                        <div class="main-body">
                            <div class="page-wrapper">
                                
                                  <div class="row">
                                    <div class="col-lg-12">
                                    <sec:authorize access="hasAuthority('NEW_ALIAS_PRIVILEGE')">
                                        <a class="btn btn-rounded btn-greenadd md-trigger" href="alias" >Add Alias</a>
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
                                                                <th>ID</th>
                                                                <th>Practice</th>
                                                                <th>Payor Name</th>
                                                                <th>Alias</th>
                                                               
                                                                <th></th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                        <c:forEach var="Alias" items="${aliaslist}">

                                                            <tr>
                                                                <td>${Alias.tid}</td>
                                                                <td>${Alias.practicename}</td>
                                                                <td>${Alias.payor}</td>
                                                                <td>${Alias.alias}</td>
                                                                <sec:authorize access="hasAuthority('EDIT_ALIAS_PRIVILEGE')">
                                                                    <td data-toggle='tooltip' data-placement='top' title='' data-original-title='Edit'>Edit</td>
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
            $('#simpletable').find('tbody').find('tr').each(function () {
                var status = $(this).find('td').eq(4).text().trim();
                var tid = $(this).find('td').eq(0).text().trim();
                // alert(requestid);
                if (status === 'Edit')
                {
                    $(this).find('td').eq(4).html("<a href= 'editalias?alias_id=" + tid + "'><i class='fas fa-edit' style='font-size:15px; margin:0 3px;color:#2DCEE3;'></i></a>");
                }
            });


        });


    </script>     
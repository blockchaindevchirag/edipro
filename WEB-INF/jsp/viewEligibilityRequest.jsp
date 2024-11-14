<%-- 
    Document   : view_eligibility_request
    Created on : 07-Mar-2021, 1:55:15 pm
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Benefit View</title>
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
                                                <div class="dt-responsive table-responsive">
                                                    <table id="simpletable" class="table table-striped table-bordered nowrap">
                                                        <thead>
                                                            <tr>
                                                                <th>BR.ID</th>
                                                                <th>DOBen</th>
                                                                <th>Patient</th>
                                                                <th>Practice</th>
                                                                <th>Payor</th>
                                                                <th>Status</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                        <c:forEach var="benefits" items="${transactionlist}">

                                                            <tr>
                                                                <td>${benefits.requestid}</td>
                                                                <td>${benefits.dateofbenefit}</td>
                                                                <td  data-toggle="tooltip" data-placement="top" title="" data-original-title="${benefits.patient}"> ${benefits.spatient}</td>
                                                                <td  data-toggle="tooltip" data-placement="top" title="" data-original-title="${benefits.practicename}"> ${benefits.spracticename}</td>
                                                                <td  data-toggle="tooltip" data-placement="top" title="" data-original-title="${benefits.payor}"> ${benefits.spayor}</td>
                                                                <td>${benefits.benefitstatus}</td>
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
                var status = $(this).find('td').eq(5).text().trim();
                var requestid = $(this).find('td').eq(0).text().trim();
                // alert(requestid);
                if (status === 'Eligible' || status === 'Active' || status === 'Active-Full Risk Capitation' || status === 'Active-Services Capitated' || status === 'Active-Services capitated to PCP' || status === 'Active-Pending Activation')
                {
                    $(this).find('td').eq(5).html("<a class= 'badge badge-light-primary f-16' href= 'response?rid=" + requestid + "'><span style='color: green; font-weight: bold;'>" + status + "</span></a>");
                }
                else if (status === '271_Non-Matching_EB_SEG'  || status === 'INactive' || status === 'InActive-Pending Update' || status === 'InActive-Pending Investigation' || status === 'Error' || status === 'InActive' || status === '271_Error' || status === 'ETL_Error')
 
                {
                     $(this).find('td').eq(5).html("<a class= 'badge badge-light-warning f-16' href= 'response?rid=" + requestid + "'><span style='color: red; font-weight: bold;'>" + status + "</span></a>");
                }
            });
            
              $('#simpletable').dataTable({
                // display everything
               "aaSorting": [[0, "desc"]], // Sort by first column descending
                "lengthMenu": [[15, 25, 50, 100], [15, 25, 50, 100]]
            });

          //  setInterval('refreshPage()', 300000);
        });
        function refreshPage() {
            location.reload();
        }

    </script>     
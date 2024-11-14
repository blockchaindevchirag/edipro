<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Payor Master</title>
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
                                                    <table  id="payortable" width="100%" style="width: 0px;" class="table table-striped table-bordered nowrap">
                                                        <thead>
                                                            <tr>
                                                                <th>Payor Name</th>
                                                                <th>Payor Code</th>
                                                                <th>State</th>
                                                                <th>Payor Type</th>
                                                                <th>RTE</th>
                                                                <th>RCS</th>
                                                                <th>EFT</th>
                                                                <th></th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>                                                        

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
            /*$('#simpletable').find('tbody').find('tr').each(function () {
                var status = $(this).find('td').eq(8).text().trim();
                var payor_id = $(this).find('td').eq(0).text().trim();
                // alert(requestid);
                if (status === 'Edit')
                {
                    $(this).find('td').eq(8).html("<a href= 'editpayor?payor_id=" + payor_id + "'>" + status + "</a>");
                }
            });*/
            
          
            $('#payortable').DataTable({
                "aaSorting": [[0, "desc"]], // Sort by first column descending
                "lengthMenu": [15, 40, 80, 200, 500],
                "iDisplayLength": 40,
                // "ajax": "eligibilitydata",
                //"processing": true,
                "columnDefs": [{
                    "targets": '_all',
                    "createdCell": function (td, cellData, rowData, row, col) {
                    }
                }],
                drawCallback: function (settings, json) {
                    $('[data-toggle="tooltip"]').tooltip('update');
                    //$("#list-of-product tbody tr > td").tooltip('hide');
                },
                "ajax": {
                    "type": "GET",
                    "url": 'payordata',
                    "contentType": 'application/json'
                },
                "columns": [                        
                    {"data": "name", "orderable": true, "searchable": true, "name": "dateofbenefit"},
                    {"data": "payor_id_universal", "orderable": true, "searchable": true, "name": "patient"},
                    {"data": "state", "orderable": true, "searchable": true, "name": "practicename"},
                    {"data": "payor_type", "orderable": true, "searchable": true, "name": "payor"},
                    {"data": "rte", "orderable": true, "searchable": true, "name": "patient"},
                    {"data": "rcs", "orderable": true, "searchable": true, "name": "practicename"},
                    {"data": "eft", "orderable": true, "searchable": true, "name": "payor"},
                    {"data": function (data) {
                var returntxt = "<i class='feather icon icon-edit'></i>";
        <sec:authorize access="hasAuthority('EDIT_PAYOR_PRIVILEGE')">
                                returntxt = "<a href= 'editpayor?payor_id=" + data.payor_id + "' data-toggle='tooltip' data-placement='top' title='' data-original-title='Edit'><i class='feather icon icon-edit'></i></a>";
        </sec:authorize>
                                //} else {
                                return  returntxt;
                                
//                        return "<a href= 'editpayor?payor_id=" + data.payor_id + "' data-toggle='tooltip' data-placement='top' title='' data-original-title='Edit'><i class='feather icon icon-edit'></i></a>";
                    }, "orderable": true, "searchable": true, "name": "action"}
                ],

            });


        });


    </script>     
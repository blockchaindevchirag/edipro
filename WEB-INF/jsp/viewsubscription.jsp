<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View Client Master</title>
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
                                                    <table  id="subscriptiontable" width="100%" style="width: 0px;" class="table table-striped table-bordered nowrap">
                                                        <thead>
                                                            <tr>
                                                                <th>Client ID</th>
                                                                <th>Client Name</th>
                                                                <th>Account#</th>
                                                                <th>Notes</th>
                                                                <th>NPI</th>
                                                                <th>TaxID</th>
                                                                <th>Contact</th>
                                                                <th>Phone</th>
                                                                <th>created_by</th>
                                                                <th>updated_by</th>
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



            $('#subscriptiontable').DataTable({
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
                    "url": 'subscriptiondata',
                    "contentType": 'application/json'
                },
                "columns": [
                     {"data": function (data) {

                            return data.tid;
                            
                        }, "orderable": true, "searchable": true, "name": "tid"},
                      {"data": function (data) {

                            var client_name = data.client_name;
                            client_name = client_name.substring(0, 10);
                            return  client_name;

                        }, "orderable": true, "searchable": true, "name": "client_name"},
                    {"data": "account_no", "orderable": true, "searchable": true, "name": "account_no"},
                    {"data": function (data) {

                            var description = data.description;
                            description = description.substring(0, 10);
                            return  description;

                        }, "orderable": true, "searchable": true, "name": "description"},
                    {"data": "group_npi", "orderable": true, "searchable": true, "name": "group_npi"},
                    {"data": "tax_id", "orderable": true, "searchable": true, "name": "tax_id"},
                     {"data": function (data) {

                            var contact_person = data.contact_person;
                            contact_person = contact_person.substring(0, 10);
                            return  contact_person;

                        }, "orderable": true, "searchable": true, "name": "contact_person"},
                    {"data": "contact_phone", "orderable": true, "searchable": true, "name": "contact_phone"},
                    {"data": function (data) {
                            var created_name = data.created_name;
                            created_name = created_name.substring(0, 10);
                            return  created_name;                            
                           // return  data.created_name + ' ' + data.created_date;

                        }, "orderable": true, "searchable": true, "name": "created_name"},
                    {"data": function (data) {
                            var updated_name = data.updated_name;
                            updated_name = updated_name.substring(0, 10);
                            return  updated_name; 
                           // return   data.updated_name + ' ' + data.;

                        }, "orderable": true, "searchable": true, "name": "updated_name"},

                    {"data": function (data) {
                            var returntxt = "<i class='feather icon icon-edit'></i>";

                            returntxt = "<a href= 'editsubscription?tid=" + data.tid + "' data-toggle='tooltip' data-placement='top' title='' data-original-title='Edit'><i class='fas fa-edit' style='font-size:15px; margin:0 3px;color:#2DCEE3;'></i></a>";
                            return  returntxt;
                        }, "orderable": true, "searchable": true, "name": "tid"}
                ],
                
                    createdRow: function (row, data, dataIndex) {
                        $(row).find('td:eq(1)').attr('data-toggle', "tooltip");
                        $(row).find('td:eq(1)').attr('data-original-title', data["client_name"].toString());
                        $(row).find('td:eq(3)').attr('data-toggle', "tooltip");
                        $(row).find('td:eq(3)').attr('data-original-title', data["description"].toString());
                        $(row).find('td:eq(6)').attr('data-toggle', "tooltip");
                        $(row).find('td:eq(6)').attr('data-original-title', data["contact_person"].toString());
                        $(row).find('td:eq(8)').attr('data-toggle', "tooltip");
                        $(row).find('td:eq(8)').attr('data-original-title', data["created_name"].toString() + ' ' + data["created_date"].toString());
                        $(row).find('td:eq(9)').attr('data-toggle', "tooltip");
                        $(row).find('td:eq(9)').attr('data-original-title', data["updated_name"].toString() + ' ' + data["updated_date"].toString());
                  
                    }

            });


        });


    </script>     
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Template Master</title>
        <jsp:include page="includes/header.jsp"></jsp:include>


            <!-- [ Main Content ] start -->
        <div class="pcoded-main-container">
            <div class="pcoded-wrapper">
                <div class="pcoded-content">
                    <div class="pcoded-inner-content">
                        <div class="main-body">
                            <div class="page-wrapper">

                                <div class="row">
                                    <div class="col-lg-12">
                                    <sec:authorize access="hasAuthority('NEW_TEMPLATE_PRIVILEGE')">
                                        <a class="btn btn-rounded btn-greenadd md-trigger" id="btnaddtemplate" href="createtemplate" >Add Template</a>
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

                                                <table id="simpletable" width="98%" style="width: 0px;" class="table table-striped table-bordered nowrap">
                                                    <thead>
                                                        <tr>
                                                            <th>Tid</th>
                                                            <th>Template</th>
                                                            <th>Entity</th>
                                                            <th>Practice</th>
                                                            <th>Provider</th>
                                                            <th>Created By</th>
                                                            <th>Created On</th>
                                                            <th>Created On</th>
                                                            <th>Updated By</th>
                                                            <th>Updated On</th>
                                                            <th>Updated On</th>
                                                            <th></th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <!--  <c:forEach var="Transnotes" items="${templatelist}">
  
                                                              <tr>
                                                                  <td>${Transnotes.ddltemplate}</td>
                                                                  <td>${Transnotes.template}</td>
                                                                  <td>${Transnotes.entity}</td>
                                                                  <td>${Transnotes.practice}</td>
                                                                  <td>${Transnotes.provider}</td>
                                                                  <td>${Transnotes.username}</td>
                                                                  <td>${Transnotes.created_timestamp}</td>
                                                                  <td>${Transnotes.updated_by}</td>
                                                                  <td>${Transnotes.updated_timestamp}</td>
  
                                                              </tr>
                                                        </c:forEach> -->

                                                    </tbody>
                                                </table>
                                            </div>

                                        </div>
                                    </div>
                                </div>
                            </div>


                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>    


    <jsp:include page="includes/footer.jsp"></jsp:include>


        <script type="text/javascript">
            $(document).ready(function () {
                $(".tableFixHead1").removeClass("tablehide");
                $(".tableFixHead1").addClass("tableshow");

                $('#simpletable').DataTable({
                    "aaSorting": [[0, "desc"]], // Sort by first column descending
                    "lengthMenu": [10, 30, 50, 100, 200],
                    "iDisplayLength": 10,
                    drawCallback: function (settings, json) {
                        $('[rol="tooltip"]').tooltip('update');
                    },
                    "ajax": {
                        "type": "GET",
                        "url": 'transtemplatedata',
                        "contentType": 'application/json'
                    },
                    "columns": [
                        {"data": "ddltemplate", "orderable": true, "searchable": true, "name": "ddltemplate"},
                        {"data": function (data) {
                                var template = data.template;
                                return  template.substring(0, 10);
                            }, "orderable": true, "searchable": true, "name": "template"},
                        {"data": "entity", "orderable": true, "searchable": true, "name": "entity"},
                        {"data": function (data) {
                                var practice = data.practice;
                                return  practice.substring(0, 10);
                            }, "orderable": true, "searchable": true, "name": "practice"},
                        {"data": "provider", "orderable": true, "searchable": false, "name": "provider"},
                        {"data": "username", "orderable": true, "searchable": false, "name": "username"},
                        {"data": "screated_timestamp", "orderable": true, "searchable": false, "name": "screated_timestamp"},
                        {"data": "created_timestamp", "orderable": true, "searchable": false, "name": "created_timestamp"},
                        {"data": "updated_by", "orderable": true, "searchable": false, "name": "updated_by"},
                        {"data": "supdated_timestamp", "orderable": true, "searchable": false, "name": "supdated_timestamp"},
                        {"data": "updated_timestamp", "orderable": true, "searchable": false, "name": "updated_timestamp"},
                        {"data": function (data) {
                                var returntxt = "";
        <sec:authorize access="hasAuthority('EDIT_TEMPLATE_PRIVILEGE')">
                                returntxt = "<a class='vu-idbole' href='edittemplatemaster?templateid=" + data.ddltemplate + "'>Edit</a>";
        </sec:authorize>
                                //} else {
                                return  returntxt;

                                //                            return "<a class='vu-idbole' href='edittemplatemaster?templateid=" + data.ddltemplate + "'>Edit</a>";
                            }, "orderable": true, "searchable": true, "name": "status"}
                    ],

                    createdRow: function (row, data, dataIndex) {
                        // add tooltip when row is created
                        // text: '<img src="assets/images/excelicon.png">',
                        // text: '<img src="assets/images/pdficon.png">',
                        if (data["template"].toString() !== ''){
                        $(row).find('td:eq(1)').attr('role', "tooltip");
                        $(row).find('td:eq(1)').attr('data-microtip-position', "right");
                        $(row).find('td:eq(1)').attr('data-microtip-size', "medium");
                        $(row).find('td:eq(1)').attr('aria-label', data["template"].toString());
                        }
                        if (data["practice"].toString() !== ''){
                        $(row).find('td:eq(3)').attr('role', "tooltip");
                        $(row).find('td:eq(3)').attr('data-microtip-position', "left");
                        $(row).find('td:eq(3)').attr('data-microtip-size', "medium");
                        $(row).find('td:eq(3)').attr('aria-label', data["practice"].toString());
                        }

                        $(row).find('td:eq(6)').text(data["created_timestamp"].toString());
                        $(row).find('td:eq(7)').hide();
                        $(row).find('td:eq(9)').text(data["updated_timestamp"].toString());
                        $(row).find('td:eq(10)').hide();

                    }
                });

                $('#simpletable').find('thead').find('tr').each(function () {

                    $(this).find('th:eq(7)').hide();
                    $(this).find('th:eq(10)').hide();
                });


            });


    </script>     
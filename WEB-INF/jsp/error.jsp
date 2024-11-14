<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isErrorPage="true" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <!-- Favicon icon -->
        <link rel="icon" href="assets/images/AD-AmeriDenti Int Quare No BG (Small).png" type="image/x-icon">
        <!-- fontawesome icon -->
        <link rel="stylesheet" href="assets/fonts/fontawesome/css/fontawesome-all.min.css">
        <!-- animation css -->
        <link rel="stylesheet" href="assets/plugins/animation/css/animate.min.css">
        <link rel="stylesheet" href="assets/plugins/data-tables/css/datatables.min.css">
        <link rel="stylesheet" href="assets/plugins/notification/css/notification.min.css">
        <link rel="stylesheet" href="assets/plugins/data-tables/css/select.dataTables.min.css">
        <link rel="stylesheet" href="assets/css/pages/fileupload.css">
        <!-- vendor css -->
        <link rel="stylesheet" href="assets/css/style.css">
        <!-- select2 css -->
        <link rel="stylesheet" href="assets/css/plugins/bootstrap-select.min.css">
        <link rel="stylesheet" href="assets/css/plugins/select2.min.css">
        <link rel="stylesheet" href="assets/css/pages/pages.css">
        <link rel="stylesheet" href="assets/plugins/modal-window-effects/css/md-modal.css">
        <!-- Rating css -->
        <link rel="stylesheet" href="assets/plugins/ratting/css/bars-1to10.css">

        <link rel="stylesheet" href="assets/js/plugins/summernote/summernote-bs4.min.css">
        <!-- material datetimepicker css -->
        <link rel="stylesheet" href="assets/plugins/material-datetimepicker/css/bootstrap-material-datetimepicker.css">
        <!-- Bootstrap datetimepicker css -->
        <link rel="stylesheet" href="assets/plugins/bootstrap-datetimepicker/css/bootstrap-datepicker3.min.css">
        <link rel="stylesheet" href="assets/fonts/material/css/materialdesignicons.min.css">
        <link rel="stylesheet" href="assets/css/layouts/layout-horizontal.css">
        <title>Error</title>

    </head>
    <center>
        <div class="alert alert-danger alert-dismissible fade show">
            <h4 class="alert-heading"><i class="bi-exclamation-octagon-fill"></i> Oops! Something went wrong.</h4>
            <!--<p><%--=exception.getLocalizedMessage()--%><br/>< ///p>-->
            <hr>
        </div>
    </center>
    <jsp:include page="includes/footer.jsp"></jsp:include>

    <script type="text/javascript">
        $(document).ready(function () {
            setTimeout(function ()
            {
                // window.location.replace("logout");
            }, 10000);
        });
    </script>

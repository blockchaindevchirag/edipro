<%@page contentType="text/html"  pageEncoding="UTF-8" autoFlush="true"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<html lang="en">

    <head>
        <title>Favorites</title>
        <jsp:include page="includes/header.jsp"></jsp:include>
            <style> 
                .loader{
                    position: fixed;
                    left: 0px;
                    top: 0px;
                    width: 100%;
                    height: 100%;
                    z-index: 9999;
                    background: url("data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='40' height='40' viewBox='0 0 50 50'%3E%3Cpath d='M28.43 6.378C18.27 4.586 8.58 11.37 6.788 21.533c-1.791 10.161 4.994 19.851 15.155 21.643l.707-4.006C14.7 37.768 9.392 30.189 10.794 22.24c1.401-7.95 8.981-13.258 16.93-11.856l.707-4.006z'%3E%3CanimateTransform attributeType='xml' attributeName='transform' type='rotate' from='0 25 25' to='360 25 25' dur='0.6s' repeatCount='indefinite'/%3E%3C/path%3E%3C/svg%3E") center / 50px no-repeat;
                }

            </style>
            <!-- [ Main Content ] start -->
        <div class="pcoded-main-container">
            <div class="pcoded-wrapper">
                <div class="pcoded-content">
                    <div class="pcoded-inner-content">
                        <div class="main-body">
                            <div class="page-wrapper">

                                <div class="row">
                                    <!-- [ form-element ] start -->
                                    <div class="col-lg-12">

                                        <div class="card">

                                            <div class="card-body">
                                            <form:form method="POST" action="favoritestrn" modelAttribute="state">
                                                <div class="form-group row">
                                                    <div class="col-lg-4">
                                                        <label class="form-label"  for="practiceid">Practice<span class="text-danger">*</span></label>

                                                        <select class="form-control js-example-placeholder-multiple" data-placeholder="Select Practice" required id="practiceid" tabindex="1" name="practiceid">

                                                            <option value = "" >--Select Practice--</option> 

                                                        </select>
                                                    </div> 

                                                    <div class="col-lg-4">
                                                        <label class="form-label" for="payorid">Payor List<span class="text-danger">*</span></label>
                                                        <select class="form-control" required id="statecode" tabindex="3" name="statecode" >
                                                            <option value = "OTR" >All Payor List</option> 
                                                            <!-- <c:forEach var="state" items="${statelist}">
                                                                 <option value = ${state.statecode}>${state.state}</option>
                                                            </c:forEach> -->
                                                        </select> 
                                                    </div>


                                                    <div class="col-lg-4">
                                                        <label class="form-label" for="payorid">Payor<span class="text-danger">*</span></label>
                                                        <select class="form-control js-example-placeholder-multiple" data-placeholder="Select Payor" required id="payorid" multiple tabindex="3" name="mpayorid" >
                                                            <option value = "" >--Select Payor--</option> 
                                                        </select>


                                                    </div>
                                                </div>		




                                                <br/>
                                                <div class="form-group row">                                               
                                                    <div class="col-lg-2">
                                                        <button type="submit" tabindex="4" onclick="removeAttr()" class="btn btn-rounded btn-greenadd btn-block">Submit</button>
                                                    </div>
                                                </div>
                                            </form:form>
                                        </div>
                                    </div>
                                </div>
                                <!-- [ form-element ] end -->
                            </div>
                            <!-- [ Main Content ] end -->
                        </div>
                    </div>
                </div>
            </div>
        </div> 
    </div>

    <script>
        //  $('#ddlpractice').selected
    </script>

    <!-- Required Js -->
    <jsp:include page="includes/footer.jsp"></jsp:include>
        <script src="assets/js/plugins/select2.full.min.js"></script>
        <script src="assets/js/pages/form-select-custom.js"></script>


        <script type="text/javascript">

        function removeAttr() {
            $('#practiceid').removeAttr('disabled');
        }
        $(document).ready(function () {
            //$('.pc-selectpicker').selectpicker();
            var EId = '<%= session.getAttribute("Entityid")%>';
            var practiceid = '<%= session.getAttribute("practiceid")%>';
            var UT = '<%= session.getAttribute("UT")%>';



            if (EId !== '')
            {
                $.ajax({
                    url: "practicedetailswtentityid",
                    type: "get", //send it through get method
                    data: {
                        Entityid: EId
                    },
                    success: function (response) {
                        var select = $('#practiceid');
                        select.find('option').remove();
                        $('<option>').val("").text("--Select--").appendTo(select);
                        console.log(response);
                        var txt = response;
                        var obj = jQuery.parseJSON(txt);
                        console.log(obj);
                        if (obj.length > 0)
                        {
                            for (var i = 0; i < obj.length; i++)
                            {
                                // var sv = value.split('~');
                                $('<option>').val(obj[i].practice_id).text(obj[i].name).appendTo(select);
                            }
                            //alert(entity);
                            console.log("UT:<%=session.getAttribute("UT")%>:");
                            var usertype = '<%=session.getAttribute("UT")%>';
                            var practiceid = '<%=session.getAttribute("practiceid")%>';
        <sec:authorize access="hasAnyRole('ROLE_PRACTICE_ADMIN')">
                            console.log("Practice: " + practiceid);
                            $('#practiceid').val(practiceid);
                            $('#practiceid').trigger('change');
                            $('#practiceid').attr('disabled', "true");
        </sec:authorize>

                        }
                    }
                });

            }

            $.ajax({
                url: "getselectstatepayorlist",
                type: "get", //send it through get method
                data: {
                    selectstatepayorlist: 'OTR'
                },
                success: function (response) {
                    var select = $('#payorid');
                    select.find('option').remove();
                    $('<option>').val("0").text("--Select Payor--").appendTo(select);
                    console.log(response);
                    var txt = response;
                    var obj = jQuery.parseJSON(txt);
                    console.log(obj);
                    if (obj.length > 0)
                    {
                        for (var i = 0; i < obj.length; i++)
                        {
                            // var sv = value.split('~');
                            $('<option>').val(obj[i].payor_id).text(obj[i].name).appendTo(select);
                        }

                    }
                }
            });

            //payor
            $('#statecode').change(function (event) {
                var statecode = $("select#statecode").val();
                $.ajax({
                    url: "getselectstatepayorlist",
                    type: "get", //send it through get method
                    data: {
                        selectstatepayorlist: statecode
                    },
                    success: function (response) {
                        var select = $('#payorid');
                        select.find('option').remove();
                        $('<option>').val("0").text("--Select Payor--").appendTo(select);
                        console.log(response);
                        var txt = response;
                        var obj = jQuery.parseJSON(txt);
                        console.log(obj);
                        if (obj.length > 0)
                        {
                            for (var i = 0; i < obj.length; i++)
                            {
                                // var sv = value.split('~');
                                $('<option>').val(obj[i].payor_id).text(obj[i].name).appendTo(select);
                            }

                        }
                    }
                });
            });
        });
    </script>     
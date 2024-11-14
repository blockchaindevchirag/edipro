<%@page contentType="text/html"  pageEncoding="UTF-8" autoFlush="true"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<html lang="en">

    <head>
        <title>Edit Alias</title>
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

                .filter-option{
                    margin-top: -7px !important;
                    margin-bottom: -4px  !important;
                }

                .bootstrap-select{margin: -5px -14px !important; width: 108%;}

                .select2-container .select2-selection--single {
                    box-sizing: border-box;
                    cursor: pointer;
                    display: block;
                    height: 33px !important;
                    user-select: none;
                    -webkit-user-select: none;
                }

                .select2-container--default .select2-selection--single {
                    background-color: #fff;
                    border: 2px solid #ced4da;
                    border-radius: 4px;
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
                                            <form:form method="POST"   action="edit_alias" modelAttribute="editalias">
                                                <div class="form-group row">
                                                    <div class="col-lg-4">
                                                        <label class="form-label"  for="practiceid">Practice<span class="text-danger">*</span></label>

                                                        <select class="form-control js-example-placeholder-multiple" data-placeholder="Select Practice" required id="practiceid" tabindex="1" name="practiceid">

                                                            <option value = "" >--Select--</option> 

                                                        </select>
                                                    </div>

                                                    <div class="col-lg-4">
                                                        <label class="form-label"  for="alias">Alias Name<span class="text-danger">*</span></label>
                                                        <input type="text" class="form-control" tabindex="2"  name="alias" id="alias" required  placeholder="Enter Alias">
                                                    </div>

                                                    <div class="col-lg-4">
                                                        <label class="form-label" for="payorid">Insurance<span class="text-danger">*</span></label>
                                                        <select class="form-control js-example-placeholder-multiple" data-placeholder="Select Insurance" required id="payorid" tabindex="3" name="payorid" >
                                                            <option value = "" >--Select--</option> 
                                                            <!--      <c:forEach var="benefits" items="${payorlist}">
      
                                                                      <option value = ${benefits.payorid} >${benefits.payor}</option>
                                                            </c:forEach> -->
                                                        </select>


                                                    </div>

                                                    <div class="col-lg-4">     
                                                    </div>

                                                    <div class="col-lg-4">     
                                                    </div>


                                                    <div class="col-lg-4">                                                  
                                                        <label class="form-label">Payor List</label>
                                                        <select class="form-control js-example-placeholder-multiple" data-placeholder="Select Payor List" required id="state" name="state" >
                                                            <option value = "fav" >Favourites</option>
                                                            <option value = "OTR" >All Payor List</option>
                                                        </select> 
                                                    </div>

                                                </div>		




                                                <br/>
                                                <div class="form-group row">                                               
                                                    <div class="col-lg-2">
                                                        <input type="text"  name="tid" id="tid" style="height:0px;width:0px;" />
                                                        <button type="submit" onclick="removeAttr()"  tabindex="4" class="btn btn-rounded btn-greenadd btn-block">Submit</button>
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
            $('#ddlpractice').removeAttr('disabled');
        }


        $(document).ready(function () {

         

            var EId = '<%= session.getAttribute("Entityid")%>';
 

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

                            console.log("UT:<%=session.getAttribute("UT")%>:");
                            var usertype = '<%=session.getAttribute("UT")%>';
                            var practiceid = '<%=session.getAttribute("practiceid")%>';
        <sec:authorize access="hasAnyRole('ROLE_PRACTICE_ADMIN,ROLE_PRACTICE_STAFF')">

                            console.log("Practice: " + practiceid);
                            $('#practiceid').val(practiceid).change();
                            $('#practiceid').attr('disabled', "true");
        </sec:authorize>

                            var alias_id = GetParameterValues('alias_id');
                            alias_id = parseInt(alias_id);

                            $.ajax({
                                url: "aliasdetails",
                                type: "get", //send it through get method
                                data: {
                                    alias: alias_id
                                },
                                success: function (response) {
                                    if (response.length > 0)
                                    {
                                        var txt = response;
                                        var obj = jQuery.parseJSON(txt);
                                        console.log(obj.length);
                                        if (obj.length > 0)
                                        {

                                            $('#tid').val(obj[0].tid);
                                            $('#tid').hide();
                                            $('#practiceid').val(obj[0].practiceid);
                                            $('#practiceid').trigger('change');

                                            $('#alias').val(obj[0].alias);
                                            $("select#state").val(obj[0].state);
                                            $('#state').trigger('change');
                                            var statecode = $("select#state").val();
                                            // $('#select2-state-container').text(obj[0].state);
                                            var practiceid = $("select#practiceid").val();
                                            statecode = statecode + "-" + practiceid;
                                            console.log(statecode);
                                            
                                             var payorid = obj[0].payorid;

                                            $.ajax({
                                                url: "getStatecode",
                                                type: "get", //send it through get method
                                                data: {
                                                    statecode: statecode
                                                },
                                                success: function (response) {
                                                    var select = $('#payorid');
                                                    select.find('option').remove();
                                                    $('<option>').val("").text("--Select--").appendTo(select);
                                                    console.log(response);
                                                    var txt = response;
                                                    var obj1 = jQuery.parseJSON(txt);
                                                    console.log(obj1);
                                                    if (obj1.length > 0)
                                                    {
                                                        for (var i = 0; i < obj1.length; i++)
                                                        {
                                                            // var sv = value.split('~');
                                                            $('<option>').val(obj1[i].payor_id).text(obj1[i].name).appendTo(select);
                                                        }
                                                         console.log(payorid);
                                                        $('#payorid').val(payorid);
                                                        $('#payorid').trigger('change');
                                                    }
                                                }
                                            });

                                            
                                        }
                                    }
                                },
                                error: function (err) {
                                    console.log(err);
                                }
                            });


                        }

                    }

                });


            }


            $('#practiceid').change(function (event) {

                var statecode = "fav" + "-" + $("select#practiceid").val();
                console.log(statecode);

                $.ajax({
                    url: "getStatecode",
                    type: "get", //send it through get method
                    data: {
                        statecode: statecode
                    },
                    success: function (response) {
                        var select = $('#payorid');
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
                                $('<option>').val(obj[i].payor_id).text(obj[i].name).appendTo(select);
                            }

                           
                        }
                    }
                });
               

            });


            $('#state').change(function (event) {
                var statecode = $("select#state").val();
                var practiceid = $("select#practiceid").val();
                statecode = statecode + "-" + practiceid;
                console.log(statecode);
         
                
                $.ajax({
                    url: "getStatecode",
                    type: "get", //send it through get method
                    data: {
                        statecode: statecode
                    },
                    success: function (response) {
                        var select = $('#payorid');
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
                                $('<option>').val(obj[i].payor_id).text(obj[i].name).appendTo(select);
                            }

                           
                        }
                    }
                });
                
               
            });



        });
    </script>     
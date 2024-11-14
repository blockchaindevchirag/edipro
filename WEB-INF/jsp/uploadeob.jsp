<%@page contentType="text/html"  pageEncoding="UTF-8" autoFlush="true"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false" %>
<html lang="en">

    <head>
        <title>Paper EOB</title>
        <jsp:include page="includes/header.jsp"></jsp:include>
            <style>
/*                a:hover {
                    color: #ffffff !important;
                    outline: none;
                    text-decoration: none;
                }

                .loader{
                    position: fixed;
                    left: 0px;
                    top: 0px;
                    width: 100%;
                    height: 100%;
                    z-index: 9999;
                    background: url("data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='40' height='40' viewBox='0 0 50 50'%3E%3Cpath d='M28.43 6.378C18.27 4.586 8.58 11.37 6.788 21.533c-1.791 10.161 4.994 19.851 15.155 21.643l.707-4.006C14.7 37.768 9.392 30.189 10.794 22.24c1.401-7.95 8.981-13.258 16.93-11.856l.707-4.006z'%3E%3CanimateTransform attributeType='xml' attributeName='transform' type='rotate' from='0 25 25' to='360 25 25' dur='0.6s' repeatCount='indefinite'/%3E%3C/path%3E%3C/svg%3E") center / 50px no-repeat;
                }*/

/*                .custom-select, .form-control1 {
                    padding: 10px 16px;
                    font-size: 13px;
                    height: 16px;
                    box-shadow: 0 1px 2px 0 rgb(57 70 92 / 5%);
                    border-radius: 0.375rem;
                    border-width: 2px;
                    width: auto;
                }

                .custom-select, .form-controllabel {
                    padding: 10px 16px;
                    font-size: 13px;
                    height: 16px;
                    box-shadow: 0 1px 2px 0 rgb(57 70 92 / 5%);
                    border-radius: 0.375rem;
                    border-width: 2px;
                    width: auto;
                }

                .nav-tabs .nav-link:hover {
                    color: #19BCBF !important;
                }
                .error{
                    color: red !important;
                }


                .fileUpload {
                    position: relative;
                    overflow: hidden;
                    margin: 10px;
                }
                .fileUpload input.upload {
                    position: absolute;
                    top: 0;
                    right: 0;
                    margin: 0;
                    padding: 0;
                    font-size: 20px;
                    cursor: pointer;
                    opacity: 0;
                    filter: alpha(opacity=0);
                }*/



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
                                            <form:form method="POST" id="eobuploadform"  action="importeobxls" modelAttribute="importeobxls" enctype="multipart/form-data">

                                                <ul class="nav nav-tabs" id="myTab" role="tablist">
                                                    <li class="nav-item">
                                                        <a class="nav-link active text-uppercase" id="home-tab" tabindex="1"  data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true">Upload</a>

                                                </ul>

                                                <div class="tab-content" id="myTabContent">
                                                    <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">

                                                        <div class="row">                                                            
                                                            <div class="col-lg-6">
                                                                <div class="form-group">
                                                                <label class="form-label">State</label>
                                                                <select class="form-control" required id="state" name="state" >
                                                                    <option value = "fav" >--Select--</option>
                                                                </select> 
                                                            </div>
                                                            </div>

                                                            <div class="col-lg-6">
                                                                <div class="form-group">
                                                                    <label class="form-label" for="payor_id" >Payor <span class="text-danger">*</span></label>
                                                                    <select class="form-control" required id="payor_id" name="payor_id" >
                                                                        <option value = "" >--Select--</option>
                                                                    </select>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <br>
                                                        <div class="form-group row">
                                                            <div class="col-lg-6">
                                                                <input type="file" class="form-control" required  name="file" tabindex="9" id="fileUpload">  
                                                                <input id="uploadFile" placeholder="Choose File" style="display:none;" disabled="disabled" />
                                                            </div>
                                                            <div class="col-md-3 offset-md-1">
                                                                <button type="submit"  id="btnsubmit" class="btn btn-rounded btn-greenadd btn-block" tabindex="10">Submit</button>
                                                            </div>
                                                        </div>
                                                        <br>
                                                    </div><!-- comment -->

                                                
                                            </div>
                                                </form:form>
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
        </div>
          
        <!-- Required Js -->
        <jsp:include page="includes/footer.jsp"></jsp:include>

            <script type="text/javascript">
                $(document).ready(function () {

                    var filename = '';

                    $('#fileUpload').change(function (e) {
                        filename = e.target.files[0].name;
                        //  alert(geekss + ' is the selected file .');
                    });
                    document.getElementById("fileUpload").onchange = function () {
                        document.getElementById("uploadFile").value = this.value;
                    };
                    var createdby = '<%= session.getAttribute("Userid")%>';
                    var EId = '<%= session.getAttribute("Entityid")%>';
                  


                $.ajax({
                    url: "getstatelist",
                    type: "get", //send it through get method
                    success: function (response) {
                        var select = $('#state');
                        select.find('option').remove();
                        $('<option>').val("fav").text("--Favourite--").appendTo(select);
                        console.log(response);
                        var txt = response;
                        var obj = jQuery.parseJSON(txt);
                        console.log(obj);
                        if (obj.length > 0)
                        {
                            for (var i = 0; i < obj.length; i++)
                            {
                                $('<option>').val(obj[i].code).text(obj[i].state + ' [' + obj[i].code + '] ').appendTo(select);
                            }
                        }
                    }
                });
 

                $('#state').change(function (event) {
                    var statecode = $("select#state").val();

                    //  console.log(statecode);
                    //Payor
                    $.ajax({
                        url: "getselectstatepayorlist",
                        type: "get", //send it through get method
                        data: {
                            selectstatepayorlist: statecode
                        },
                        success: function (response) {
                            var select = $('#payor_id');
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
                                    $('<option>').val(obj[i].payor_id).text(obj[i].name).appendTo(select);
                                }

                            }
                        }
                    });
 

                });

            });
    </script>     
<%@page contentType="text/html"  pageEncoding="UTF-8" autoFlush="true"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="en">

    <head>
        <title>Document Upload</title>

        <jsp:include page="includes/header.jsp"></jsp:include>
            <!--Audio JS Files -->
            <script src="assets/plugins/audio/recorder.js"></script>
            <script src="assets/plugins/audio/Fr.voice.js"></script>
            <script src="assets/plugins/audio/sound_jquery.js"></script>
            <script src="assets/plugins/audio/app.js"></script>
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


                .button{
                    display: inline-block;
                    vertical-align: middle;
                    margin: 0px 5px;
                    padding: 5px 12px;
                    cursor: pointer;
                    outline: none;
                    font-size: 13px;
                    text-decoration: none !important;
                    text-align: center;
                    color:#fff;
                    background-color: #4D90FE;
                    background-image: linear-gradient(top,#4D90FE, #4787ED);
                    background-image: -ms-linear-gradient(top,#4D90FE, #4787ED);
                    background-image: -o-linear-gradient(top,#4D90FE, #4787ED);
                    background-image: linear-gradient(top,#4D90FE, #4787ED);
                    border: 1px solid #4787ED;
                    box-shadow: 0 1px 3px #BFBFBF;
                }
                a.button{
                    color: #fff;
                }
                .button:hover{
                    box-shadow: inset 0px 1px 1px #8C8C8C;
                }
                .button.disabled{
                    box-shadow:none;
                    opacity:0.7;
                }
                canvas{
                    display: block;
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

                                                <h2>Record</h2>
                                                <audio controls id="audio"></audio>
                                                <br/> <br>
                                                 <canvas id="level" height="100" width="200"></canvas>
                                                <div>
                                                    <a class="button recordButton" id="record">Record</a>   
                                                    <a class="button stopButton disabled one" id="stop_voice">Stop</a>   
                                                    <a class="button disabled one" id="pause">Pause</a>
                                                    <a class="button disabled one" id="play">Play</a>
                                                    <a class="button disabled one" id="save">Upload to Server</a>
                                                    <!-- <a class="button disabled one" id="stop">Reset</a> -->
                                                </div><br/>

                                                <div data-type="wav">
                                                    <!--   <a class="button disabled one" id="download">Download</a> -->
                                                </div>
                                              
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

    <script type="text/javascript">

        $(document).ready(function () {

        });
    </script>     
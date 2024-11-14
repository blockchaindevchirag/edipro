<%-- 
    Document   : view_eligibility_request
    Created on : 07-Mar-2021, 1:55:15 pm
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
    <head>


        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ticket Details</title>

        <style>
            .md-modal {
                position: fixed;
                top: 50%;
                left: 50%;
                width: 75% !important;
                max-width: 75% !important;
                min-width: 320px;
                height: auto;
                z-index: 2000;
                visibility: hidden;
                -webkit-backface-visibility: hidden;
                backface-visibility: hidden;
                -webkit-transform: translateX(-50%) translateY(-50%);
                transform: translateX(-50%) translateY(-50%);
            }

            .card .card-block, .card .card-body {
                padding: 7px 25px !important;
            }

            .md-content button {
                display: block;
                margin: 0 auto;
                font-size: 1.4em !important; 
            }

            .modal-backdrop.show {
                opacity: 0 !important;
            }

            .btn {
                padding: 5px 10px !important;
                border-radius: 0.25rem;
                font-size: 13px;
                margin-bottom: 0px !important;
                margin-right: 0px !important;
                transition: all 0.3s ease-in-out;
            }

          
            .loader{
                position: fixed;
                left: 0px;
                top: 0px;
                width: 100%;
                height: 100%;
                z-index: 9999;
                background: url("data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='40' height='40' viewBox='0 0 50 50'%3E%3Cpath d='M28.43 6.378C18.27 4.586 8.58 11.37 6.788 21.533c-1.791 10.161 4.994 19.851 15.155 21.643l.707-4.006C14.7 37.768 9.392 30.189 10.794 22.24c1.401-7.95 8.981-13.258 16.93-11.856l.707-4.006z'%3E%3CanimateTransform attributeType='xml' attributeName='transform' type='rotate' from='0 25 25' to='360 25 25' dur='0.6s' repeatCount='indefinite'/%3E%3C/path%3E%3C/svg%3E") center / 50px no-repeat;
            }

            .col, .col-1, .col-10, .col-11, .col-12, .col-2, .col-3, .col-4, .col-5, .col-6, .col-7, .col-8, .col-9, .col-auto, .col-lg, .col-lg-1, .col-lg-10, .col-lg-11, .col-lg-12, .col-lg-2, .col-lg-3, .col-lg-4, .col-lg-5, .col-lg-6, .col-lg-7, .col-lg-8, .col-lg-9, .col-lg-auto, .col-md, .col-md-1, .col-md-10, .col-md-11, .col-md-12, .col-md-2, .col-md-3, .col-md-4, .col-md-5, .col-md-6, .col-md-7, .col-md-8, .col-md-9, .col-md-auto, .col-sm, .col-sm-1, .col-sm-10, .col-sm-11, .col-sm-12, .col-sm-2, .col-sm-3, .col-sm-4, .col-sm-5, .col-sm-6, .col-sm-7, .col-sm-8, .col-sm-9, .col-sm-auto, .col-xl, .col-xl-1, .col-xl-10, .col-xl-11, .col-xl-12, .col-xl-2, .col-xl-3, .col-xl-4, .col-xl-5, .col-xl-6, .col-xl-7, .col-xl-8, .col-xl-9, .col-xl-auto {
                position: relative;
                width: 100%;
                padding-right: 1px !important;
                padding-left: 15px;
            }


        </style>

        <jsp:include page="includes/header.jsp"></jsp:include>


        <div class="pcoded-main-container">
            <div class="pcoded-wrapper container">
                <div class="pcoded-content">
                    <div class="pcoded-inner-content">
                        <div class="main-body">
                            <div class="page-wrapper">
                                <!-- [  HD Detail Content ] start -->
                                <div class="row">
                                    <div class="col">
                                        <div class="card">
                                            <div class="bg-c-blue p-4">
                                                <h5 class="text-white mb-0"><i class="feather icon-lock mr-1"></i>Ticket #<span id="ticketid"></span></h5>
                                            </div>
                                            <div class="card-body topic-name">
                                                <div class="row align-items-center">
                                                    <div class="col-md-8">
                                                        <h3 class="d-inline-block mb-0"><span id="tickettype"></span></h3>
                                                    </div>
                                                    <div class="col-md-4">
                                                        <div class="btn-star">
                                                            <!--   <a href="#!" class="btn btn-primary btn-sm">Mark as unread</a>
                                                               <a href="#!"><i class="feather icon-star f-20 text-muted"></i></a> -->
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="bg-light p-3">
                                                <div class="row align-items-center">
                                                    <div class="col-md-12">
                                                        <!--    <button type="button" class="btn btn-secondary text-uppercase"><i class="fas fa-comment-alt"></i>Post a reply <span class="badge badge-light m-l-10">R</span></button>
                                                            <button type="button" class="btn btn-secondary text-uppercase"><i class="fas fa-pen"></i>Post a Note <span class="badge badge-light m-l-10">N</span></button>
                                                            <button type="button" class="btn btn-secondary text-uppercase"><i class="fas fas fa-address-book"></i>Customer Notes</button> -->
                                                    </div>
                                                </div>
                                            </div>



                                        </div>
                                    </div>


                                    <!--     <div class="col-auto hdd-right-side">
                                             <div class="card hdd-right-inner">
                                                 <div class="card-header pt-4 pb-4">
                                                     <h5>Ticket Details</h5>
                                                 </div>
                                                 <div class="card-body">
                                                     <div class="alert alert-success d-block text-center text-uppercase"><i class="feather icon-check-circle mr-2"></i>Verified Purchase</div>
                                                     <div class="select-block">
                                                         <select class="js-status-multiple col-sm-12">
                                                             <option></option>
                                                             <option>Open</option>
                                                             <option>Close</option>
                                                             <option>CLosed Forever</option>
                                                         </select>
                                                         <select class="js-assigned-multiple col-sm-12">
                                                             <option></option>
                                                             <option value="avatar-5">Jack Pall</option>
                                                             <option value="avatar-4">Liza Mac</option>
                                                             <option value="avatar-3">Lina Hop</option>
                                                             <option value="avatar-2">Sam Hunk</option>
                                                             <option value="avatar-1">Jhon White</option>
                                                         </select>
                                                         <select class="js-category-multiple col-sm-12">
                                                             <option></option>
                                                             <option value="prod-1">Able Admin</option>
                                                             <option value="prod-2">Guru Dash</option>
                                                             <option value="prod-3">Datta Able</option>
                                                             <option value="prod-4">Able Dash</option>
                                                             <option value="prod-5">Dash Able</option>
                                                         </select>
                                                     </div>
                                                 </div>
                                                 <div class="card-footer">
                                                     <div class="row border-bottom pt-3 pb-2">
                                                         <div class="col-sm-4 col-xl-3"> <label class="mb-0">Customer</label></div>
                                                         <div class="col-sm-8 col-xl-9 d-inline-block mb-0">
                                                             <p><img src="assets/images/user/avatar-5.jpg" alt="" class="wid-20 rounded mr-1 img-fluid"><a href="#">Jack Pall</a></p>
                                                         </div>
                                                     </div>
                                                     <div class="row border-bottom pt-3 pb-2 bg-light">
                                                         <div class="col-sm-4 col-xl-3"> <label class="mb-0">Contact</label></div>
                                                         <div class="col-sm-8 col-xl-9 d-inline-block mb-0">
                                                             <p><i class="feather icon-mail mr-1"></i><a href="#">mail@mail.com</a></p>
                                                         </div>
                                                     </div>
                                                     <div class="row border-bottom pt-3 pb-2">
                                                         <div class="col-sm-4 col-xl-3"> <label class="mb-0">Category</label></div>
                                                         <div class="col-sm-8 col-xl-9 d-inline-block mb-0">
                                                             <p><img src="assets/images/ticket/p1.jpg" alt="" class="wid-20 rounded mr-1 img-fluid"><a href="#">Alpha pro</a></p>
                                                         </div>
                                                     </div>
                                                     <div class="row border-bottom pt-3 pb-2 bg-light">
                                                         <div class="col-sm-4 col-xl-3"> <label>Assigned</label></div>
                                                         <div class="col-sm-8 col-xl-9 d-inline-block mb-0">
                                                             <p><img src="assets/images/user/avatar-4.jpg" alt="" class="wid-20 rounded mr-1 img-fluid"><a href="#">Lina Hop</a></p>
                                                         </div>
                                                     </div>
                                                     <div class="row border-bottom pt-3 pb-2 ">
                                                         <div class="col-sm-4 col-xl-3"> <label class="mb-0">Created</label></div>
                                                         <div class="col-sm-8 col-xl-9 d-inline-block mb-0">
                                                             <p><i class="feather icon-calendar mr-1"></i><label class="mb-0">Date</label></p>
                                                         </div>
                                                     </div>
                                                     <div class="row pt-3 pb-2 bg-light">
                                                         <div class="col-sm-4 col-xl-3"> <label class="mb-0">Response</label></div>
                                                         <div class="col-sm-8 col-xl-9 d-inline-block mb-0">
                                                             <p><i class="feather icon-clock mr-1"></i><label class="mb-0">Time</label></p>
                                                         </div>
                                                     </div>
                                                     <div class="row mt-3">
                                                         <button type="button" class="btn btn-outline-primary"><i class="feather icon-thumbs-up"></i>Make Private</button>
                                                         <button type="button" class="btn btn-outline-danger"><i class="feather icon-trash-2"></i>Delete</button>
                                                     </div>
                                                 </div>
                                             </div>
                                         </div> -->
                                </div>
                                <!-- [  HD Detail Content ] end -->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="md-overlay"></div>

        <div id="flading" class="loader">

        </div>

    <jsp:include page="includes/footer.jsp"></jsp:include>

        <script type="text/javascript">
            $(document).ready(function () {

                $('#flading').show();

               
                var ticket_id = GetParameterValues('ticket_id');
                var ticket_type = GetParameterValues('type');
                $('#tickettype').text(decodeURI(ticket_type));
                $('#ticketid').text(ticket_id);
                var userid = '<%= session.getAttribute("Userid")%>';


                var htmltag = '';
                $.get('TicketService', {
                    ticket_history_id: ticket_id
                }, function (response) {


                    $.each(response, function (index, value) {
                        var sv = value.split('~');
                        // console.log(index);
                        console.log(sv);

                        if (response.length > 0)
                        {
                            if (index % 2 === 0) {

                                var user = '';
                                if (userid === sv[6])
                                {
                                    user = 'You';
                                } else
                                {
                                    user = sv[1];
                                }

                                htmltag = htmltag + '<div class="card-body hd-detail hdd-admin border-bottom"><div class="row"><div class="col-auto text-center">' +
                                        '<img class="media-object wid-60 img-radius mb-2" src="assets/images/user/avatar-5.jpg" alt="Generic placeholder image ">' +
                                        '<p>' + sv[4] + '</p></div>' +
                                        '<div class="col"><div class="comment-top"><h3>' + user + ' <small class="text-muted f-w-400">replied</small></h3><p>' + sv[2] + '</p></div>' +
                                        '<div class="comment-content"><p>' + sv[3] +
                                        '</p></div>' +
                                        '</div>' +
                                        '<div class="col-auto pl-0 col-right"><div class="card-body text-center"><ul class="list-unstyled mb-0 edit-del">' +
                                        '<li class="d-inline-block f-20 mr-1"><a href="#"><i class="feather icon-edit-2 text-muted"></i></a></li>' +
                                        '<li class="d-inline-block f-20"><a href="#"><i class="feather icon-trash-2 text-muted"></i></a></li> </div></div> </div></div>';

                            } else {

                                var user = '';
                                if (userid === sv[6])
                                {
                                    user = 'You';
                                } else
                                {
                                    user = sv[1];
                                }
                                htmltag = htmltag + '<div class="card-body hd-detail hdd-user border-bottom bg-light"> <div class="row"><div class="col-auto text-center">' +
                                        '<img class="media-object wid-60 img-radius mb-2" src="assets/images/user/avatar-4.jpg" alt="Generic placeholder image ">' +
                                        '<p>' + sv[4] + '</p></div>' +
                                        '<div class="col"><div class="comment-top"><h3>' + user + ' <small class="text-muted f-w-400">replied</small></h3><p>' + sv[2] + '</p></div>' +
                                        '<div class="comment-content">' + sv[3] +
                                        '</div>' +
                                        '</div>' +
                                        '<div class="col-auto pl-0 col-right"><div class="card-body text-center"><i class="feather icon-flag f-20 position-absolute"></i></div></div></div></div>';
                            }

                        }


                    });

                    setTimeout(function ()
                    {

                        var attach = '<b><i><center>Attachments</center></i></b><hr>';
                        var footertag = '';
                        // <a target='_blank' href= '..//${Document.fn}' class='btn-icon singledownbutton' id="singledown"><i class='fas fa-file-export m-r-5'></i></a>

                        $.get('TicketService', {
                            ticket_att_id: ticket_id
                        }, function (response) {
                            if (response.length > 0)
                            {
                                $.each(response, function (index, value) {

                                    var sv = value.split('~');
                                    var wtspace = sv[2].replaceAll(' ', '%20');
                                    footertag = footertag + '<div class="row text-center mb-2"><div class="col-lg-12"><a href=../Ticketatt/' + wtspace + ' target="_blank" data-toggle="lightbox" data-gallery="example-gallery">' + sv[2] + ' (' + sv[3] + ')' + '</a></div></div>';

                                });
                                console.log(footertag);
                                $('.card').append(htmltag + attach + footertag);
                                $('#flading').hide();
                            }
                        });


                    }, 3000);

                });








            });







    </script>     


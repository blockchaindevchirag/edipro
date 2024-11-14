<div class="modal fade centerAligned" id="5_PhlebotomyConsent_form" tabindex="-1" data-backdrop="static" data-keyboard="false" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-xl">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title" id="myModalLabel">
                    Discussion and Informed Consent for Phlebotomy & Platelet Development       
                </h4>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>

            </div>
            <div class="container">
                <div class="card-body">
                    <form id="phle_form">
                        <div class="row">
                            <div class="col-12">
                                <p>Patient Name:<input type="text" name="pcf01" id="pcf01" class="data_patient_name col-6 dateborder" readonly style="margin-right: 2rem;"> 
                                    Date:<input type="text" name="pcf02" id="pcf02" autocomplete="off" class="col-auto dateborder  notfuturedate"></p>
                                <p>Practice Name:<input type="text" name="pcf03" id="pcf03" readonly class="col-11 dateborder data_practice_name" style="width:923px;"> </p>
                                <p>Diagnosis:<input type="text" name="pcf04" id="pcf04" class="col-11 dateborder" style="padding:0 ;width:953px;" maxlength="75"></p>
                                <p>Treatment and Site:<input type="text" name="pcf05" id="pcf05" class="col-10 dateborder" style="padding:0" maxlength="70"></p>
                            </div>
                            <p class="col-12" style="margin-top: 30px;"> After careful examination of my condition, Dr.<input type="text" name="pcf06" id="pcf06" class="col-5 dateborder" style="padding:0" maxlength="50"> has
                                recommended the use of Platelet Rich Fibrin (PRF) enhance post-operative healing. Platelet rich fibrin (PRP) is a component of my own blood which contains growth factors. These growth factors
                                are known to stimulate bone and soft tissue healing. I understand that PRP is processed in a sterile fashion from your own blood and is therefore safe from transmission of diseases from others.
                            </p>
                            <p class="col-12" style="margin-top: 10px;"> I understand that in order to process PRP there will be a 30ml to 50ml of blood will be drawn from a vein using and aseptic technique. My blood will be processed, activated and added to the surgical
                                site. To activate PRP my blood is mixed with Calcium Chloride. I have been fully informed about the use of PRP, the procedure to be utilized for development, the risks, benefits and alternatives.
                                I have had an opportunity to ask questions and to discuss any concerns with Dr.<input type="text" name="pcf07" id="pcf07" class="col-5 dateborder" style="padding:0" maxlength="45">. This is termed phlebotomy and is accomplished with a
                                sterile needle, which is inserted into a vein through the skin. This is generally a safe technique, but complications may arise from this portion of the procedure. These complications are rare, but may
                                include bleeding under the skin, infection, nerve injury, and others. Your blood will be processed in an FDA approved device in 10-12 minutes. After thorough deliberation, I hereby fully consent
                                to the PRP process.
                            </p>
                            <p class="col-12" style="margin-top: 30px;font-weight: bold;"> I CERTIFY THAT I HAVE READ AND FULLY UNDERSTAND THIS DOCUMENT.
                            </p>

                            <div class="row" style="margin-top: 20px;">
                                <div class="col-6">
                                    <div class="row">
                                        <div class="col-12" style="margin-left: 16px;">
                                            <canvas id="sign_5pcf1" width="480" height="80" class="col-12"></canvas>
                                        </div>
                                    </div>
                                    <p style="margin-left: 16px;">Patient or Patient's Representative <span style="color: red;margin: 20px;"><a onclick="sign_5pcf1_clear()">Clear Signature</a></span></p>
                                </div>
                                <div class="col-4" style="margin-top: 15px;">
                                    <input type="text" name="pcf08" id="pcf08" autocomplete="off" class=" notfuturedate col-auto dateborder" style="padding:0">
                                    <p>Date</p>
                                </div>
                                <div class="col-6">
                                    <div class="row">
                                        <div class="col-12" style="margin-left: 16px;">
                                            <canvas id="sign_5pcf2" width="480" height="80" class="col-12"></canvas>
                                        </div>
                                    </div>
                                    <p style="margin-left: 16px;">Doctor Signature <span style="color: red;margin: 20px;"><a onclick="sign_5pcf2_clear()">Clear Signature</a></span></p>
                                </div>
                                <div class="col-4"  style="margin-top: 15px; margin-bottom: 100px">
                                    <input type="text" name="pcf09" id="pcf09" autocomplete="off" class="col-auto dateborder  notfuturedate" style="padding:0" >  
                                    <p>Date</p>
                                </div>    
                            </div>
                </div> 
                        </form>
            </div>
                 
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                <button type="button" class="btn btn-primary" id="buttonid" onclick="phlebotomySave(this)">Submit</button>
            </div>
        </div>
    </div>
</div>
</div>
<script>
    function  phlebotomySave(buttonObj)
    {
        if(!$('#pcf02').val())
           {
            msgbox("Date is Mandatory", "Patient Checklist", "error");
            return false;
           }
        $(buttonObj).attr('disabled', 'disabled');
                        $(buttonObj).text('Sending...');

                        $(buttonObj).off('click'); //disables click event
    
     var sign_phlebotomy = window.sign_5pcf1.toDataURL("image/png");
                        var sign_phlebotomy1 = sign_phlebotomy.replace('data:image/png;base64,', '');


                        var sign_phlebotomy2 = window.sign_5pcf2.toDataURL("image/png");
                        var sign_phlebotomy3 = sign_phlebotomy2.replace('data:image/png;base64,', '');
    
    
                     var patientname=$('#pcf01').val();
                     var currentdate=$('#pcf02').val();
                     var patientdiagnosis=$('#pcf04').val();
                     var patienttreatment=$('#pcf05').val();
                     var patienttxt1=$('#pcf06').val();
                     var patienttxt2=$('#pcf07').val();
                     var signdate1=$('#pcf08').val();
                     var signdate2=$('#pcf09').val();
    
                       $.ajax({
                            url: "generatephlebotomypdf",
                            type: "POST", //send it through get method
                            data: {
                               
                                patientid: $("#patientCombo option:selected").val(),
                                patientname : patientname,
                                currentdate : currentdate,
                                patientdiagnosis : patientdiagnosis,
                                patienttreatment : patienttreatment,
                                patienttxt1 : patienttxt1,
                                patienttxt2 : patienttxt2,
                                lastname: $("#inputLastName").val(),
                                firstname: $("#inputFirstName").val(),
                                patientsignature : sign_phlebotomy1,
                                signdate1 :  signdate1,
                                doctorsignature : sign_phlebotomy3,
                                signdate2 : signdate2
                            },
                            success: function (response) {
                                if (response.length > 0)
                                {
                                    $("#5_PhlebotomyConsent_form").modal('hide');
                                    $('#patientCombo').trigger('change');
                                }
                                $(buttonObj).removeAttr('disabled');
                                $(buttonObj).text('Submit');
                            },
                            error: function (err) {
                                console.log(err);
                                $(buttonObj).removeAttr('disabled');
                                $(buttonObj).text('Submit');
                            }
                        });
    
    }
    
    //========signature==========================
                    $(document).ready(function () {
                        window.sign_5pcf1 = new SignaturePad($('#sign_5pcf1').get(0), {});
                        window.sign_5pcf2 = new SignaturePad($('#sign_5pcf2').get(0), {});
                    });
                     var sign_5pcf1_clear = function () {
                        window.sign_5pcf1.clear();
                    };
                    var sign_5pcf2_clear = function () {
                        window.sign_5pcf2.clear();
                    };
    </script>


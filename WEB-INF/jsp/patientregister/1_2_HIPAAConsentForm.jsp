<div class="modal fade centerAligned" id="HIPAAConsentForm" tabindex="-1" data-backdrop="static" data-keyboard="false" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-xl">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title" id="myModalLabel">
                    HIPAA Compliance Patient Consent Form
                </h4>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button> 
            </div>
            <div class="container">
                <div class="card-body">
                    <div class="row">  
                        <div class="col-6">Patient Name:<input type="text" name=" patient4" id="patient4" readonly class="col-9 dateborder data_patient_name"></div>
                        <div class="col-6">Practice Name:<input type="text" name="patient6" id="patient6" readonly class="col-8 dateborder data_practice_name"> </div>
                        <div class="col-3 col-xl-3 col-md-4" style="margin-top: 15px;">
                            Date Of Birth :<input type="date" name="patient7" id="patient7"  class="dateborder data_inputDOB ">
                        </div>
                        <div class="col-3 col-xl-3 col-md-4" style="margin-top: 15px;display: inline-flex;">
                            <div class="custom-control custom-radio custom-control-inline">
                                <input type="radio" name="hippa01" value="1" class="data_gender custom-control-input input-primary" id="hip1" onclick="return false;">
                                <label class="custom-control-label" for="hip1">Male</label>
                            </div>
                            <div class="custom-control custom-radio custom-control-inline">
                                <input type="radio" name="hippa01" value="2" class="data_gender custom-control-input input-primary" id="hip2" onclick="return false;">
                                <label class="custom-control-label" for="hip2">Female</label>
                            </div>
                            <div class="custom-control custom-radio custom-control-inline">
                                <input type="radio" name="hippa01" value="3" class="data_gender custom-control-input input-primary" id="hip3" onclick="return false;">
                                <label class="custom-control-label" for="hip3">Other</label>
                            </div>
                        </div>

                        <div class="col-6 col-xl-6 col-md-4" style="margin-top: 15px; text-align: center"> 

                            Date :<input type="text" name="patient5" id="patient5" autocomplete="off"  class="dateborder notfuturedate "></div>


                        <div class="col-12" style="margin-top: 15px">
                            <p>Our Notice of Privacy Practices provides information about how we may use or disclose protected health information.</p>

                            <p>The notice contains a patient's rights section describing your rights under the law. You ascertain that by your signature that you have reviewed our notice before signing this consent.</p>

                            <p>The terms of the notice may change, if so, you will be notified at your next visit to update your signature/date.</p>

                            <p>You have the right to restrict how your protected health information is used and disclosed for treatment, payment or healthcare operations. We are not required to agree with this restriction, but if we do, we shall honor this agreement. The HIPAA (Health
                                Insurance Portability and Accountability Act of 1996) law allows for the use of the information for treatment, payment, or
                                healthcare operations.</p>
                            <p>By signing this form, you consent to our use and disclosure of your protected healthcare information and potentially anonymous
                                usage in a publication. You have the right to revoke this consent in writing, signed by you. However, such a revocation will not
                                be retroactive.</p>
                        </div>
                        <div class="col-12">
                            <p>By signing this form, I understand that:</p>
                            <ul>
                                <li>Protected health information may be disclosed or used for treatment, payment, or healthcare operations.</li>
                                <li>The practice reserves the right to change the privacy policy as allowed by law.</li>
                                <li>The practice has the right to restrict the use of the information but the practice does not have to agree to those restrictions.</li>
                                <li>The patient has the right to revoke this consent in writing at any time and all full disclosures will then cease.</li>
                                <li>The practice may condition receipt of treatment upon execution of this consent.</li>
                            </ul> 
                            <table class="table table-borderless table-responsive">
                                <tr>
                                    <td>May we phone, email, or send a text to you to confirm appointments?</td>
                                    <td style="text-align: end;"><input type="radio" name="check1" id="check1" value="YES"><span style="margin-left: 7px">YES</span></td>
                                    <td><input type="radio" name="check1" id="check_1" value="NO"><span style="margin-left: 7px">NO</span></td>
                                </tr>
                                <tr>
                                    <td>May we leave a message on your answering machine at home or on your cell phone?</td>
                                    <td style="text-align: end;"><input type="radio" name="check2" id="check2" value="YES"><span style="margin-left: 7px">YES</span></td>
                                    <td><input type="radio" name="check2" id="check_2" value="NO"><span style="margin-left: 7px">NO</span></td>
                                </tr>
                                <tr>
                                    <td>May we discuss your medical condition with any member of your family?</td>
                                    <td style="text-align: end;"><input type="radio" name="check3" id="check3" value="YES"><span style="margin-left: 7px">YES</span></td>
                                    <td><input type="radio" name="check3" id="check_3" value="NO"><span style="margin-left: 7px">NO</span></td>
                                </tr>
                            </table> 
                        </div>

                        <div class="col-12">
                            <p>If YES, please name the members allowed:</p>

                            <p> <input type="text" name="patient1" id="patient1" class="col-12 dateborder" style="padding:0" maxlength="115"><p>
                            <p> <input type="text" name="patient2" id="patient2" class="col-12 dateborder" style="padding:5px"  maxlength="115"></p>
                        </div>
                        <div class="row container" style="margin-top: 20px; margin-bottom: 100px">
                            <div class="col-12"> 
                                <p>This consent was signed by: <input type="text" name="patient3" id="patient3" class="col-6 data_patient_name data_control_editable dateborder"><br>(PRINT NAME PLEASE)</p>
                            </div>
                            <div class="col-2" style="display: flex;align-items: flex-end;height: 75px;">
                                <p class="col-12 dateborder" style="padding:0">Signature:</p>   
                            </div>
                            <div class="col-6">
                                <!--=============================================signature==================-->                  
                                <!-- Content -->

                                <div class="row">
                                    <div class="col-12">
                                        <canvas id="signaturehippa" width="480" height="80" class="col-12">		 			
                                        </canvas>
                                    </div>
                                </div>
                                <p> <span style="color: red;margin: 20px;"><a onclick="clear1()">Clear Signature</a></span></p>


                                <!--=============================================signature==================-->

                            </div>
                            <div class="col-4" style="display: flex;align-items: flex-end;height: 75px;">

                                Date:<input type="text" name="patientdate1" id="patientdate1" autocomplete="off"  class=" notfuturedate dateborder" style="padding:0">   

                            </div>    
                            <!---------------------------------------Witness------------------------------------------------->                        
                            <div class="col-2" style="display: flex;align-items: flex-end;height: 75px;">
                                <p class="col-12 dateborder" style="padding:0">Witness</p>   
                            </div>
                            <div class="col-6">
                                <div class="row">
                                    <div class="col-12">
                                        <canvas id="witness_sign" width="480" height="80" class="col-12"></canvas>
                                    </div>
                                </div>
                                <p> <span style="color: red;margin: 20px;"><a onclick="clear2()">Clear Signature</a></span></p>
                            </div>
                            <div class="col-4" style="display: flex;align-items: flex-end;height: 75px;">

                                Date:<input type="text" name="patientdate2" id="patientdate2" autocomplete="off"  class=" notfuturedate dateborder" style="padding:0">   

                            </div>
                        </div> 
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                <button type="button" class="btn btn-primary" id="buttonid" onclick="saveHippa(this)">Submit</button>
            </div>
        </div>
    </div>
</div>
</div>
<!--==================================================================================--> 

<script>
   
        
        function saveHippa(buttonObj)
        {
          if(!$('#patient5').val())
          {
               msgbox("Date is Mandatory", "Patient Checklist", "error");
                return false;
          }
            $(buttonObj).attr('disabled', 'disabled');
            $(buttonObj).text('Sending...');

            $(buttonObj).off('click'); //disables click event
            console.log(buttonObj);

            var sign_hippa_1 = window.signaturePad01.toDataURL("image/png");
            var hippa_sign_01 = sign_hippa_1.replace('data:image/png;base64,', '');
            //alert(hippa_sign01);

            var sign_hippa1 = window.signaturePad2.toDataURL("image/png");
            var hippa_sign02 = sign_hippa1.replace('data:image/png;base64,', '');

            let checkboxes1 = document.querySelectorAll('input[name="check1"]:checked');
            let values1 = [];
            checkboxes1.forEach((checkbox) => {
                values1.push(checkbox.value);
            });

            let checkboxes2 = document.querySelectorAll('input[name="check2"]:checked');
            let values2 = [];
            checkboxes2.forEach((checkbox) => {
                values2.push(checkbox.value);
            });

            let checkboxes3 = document.querySelectorAll('input[name="check3"]:checked');
            let values3 = [];
            checkboxes3.forEach((checkbox) => {
                values3.push(checkbox.value);
            });

            let checkboxes = document.querySelectorAll('input[name="hippa01"]:checked');
            let gender = [];
            checkboxes.forEach((checkbox) => {
                gender.push(checkbox.value);
            });


            var patientname = $('#patient4').val();
            var patientdob = $('#patient7').val();
            var currentdate = $('#patient5').val();
            var patienttxt1 = $('#patient1').val();
            var patienttxt2 = $('#patient2').val();
            var patientname1 = $('#patient3').val();
            var signdate1 = $('#patientdate1').val();
            var signdate2 = $('#patientdate2').val();
            $.ajax({
                url: "generatehipaapdf",
                type: "POST", //send it through get method
                data: {
                    patientid: $("#patientCombo option:selected").val(),
                    patientname: patientname,
                    patientdob: patientdob,
                    patientgender: gender,
                    currentdate: currentdate,
                    patientradiobtn1: values1,
                    patientradiobtn2: values2,
                    patientradiobtn3: values3,
                    patienttxt1: patienttxt1,
                    patienttxt2: patienttxt2,
                    patientname1: patientname1,
                    signonpatient: hippa_sign_01,
                    signdate1: signdate1,
                    witnesssignature: hippa_sign02,
                    signdate2: signdate2,
                    firstname: $("#inputFirstName").val(),
                    lastname: $("#inputLastName").val()
                },
                success: function (response) {
                    if (response.length > 0)
                    {
                        $("#HIPAAConsentForm").modal('hide');
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
        $(document).ready(function () {
            window.signaturePad01 = new SignaturePad($('#signaturehippa').get(0), {
            });
            window.signaturePad2 = new SignaturePad($('#witness_sign').get(0), {
            });
        });


        var clear1 = function () {
            window.signaturePad01.clear();
        };
        var clear2 = function () {
            window.signaturePad2.clear();
        };
    
</script>
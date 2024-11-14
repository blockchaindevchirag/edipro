<div class="modal fade centerAligned" id="Radiology_Patient_Acknowledgement_Form" tabindex="-1" data-backdrop="static" data-keyboard="false" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-xl">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title" id="myModalLabel">
                   RADIOLOGY
                </h4>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button> 
            </div>
            <div class="container">
                <div class="card-body">
                    <div class="row">
                        <div class="col-12 p-b-10" style="text-align:center;"><h4>Patient Acknowledgement Form</h4></div>
                        <div class="col-xl-6 col-sm-12 col-md-6 m-t-15">Patient Name:<input type="text" name=" patientname" id="patientname" readonly class="col-9 dateborder data_patient_name"></div>
                        <div class="col-xl-6 col-sm-12 col-md-6 m-t-15">Practice Name:<input type="text" name="practiceName" id=practicename" readonly class="col-8 dateborder data_practice_name"> </div>
                        <div class="col-xl-3 col-md-4 col-sm-6 m-t-15">
                            Date Of Birth :<input type="date" name="patientdob" id="patientdob"  class="dateborder data_inputDOB ">
                        </div>
                        <div class="col-xl-3 col-md-4 col-sm-6 m-t-15" style="display: inline-flex;">
                            <div class="custom-control custom-radio custom-control-inline">
                                <input type="radio" name="radio01" value="1" class="data_gender custom-control-input input-primary" id="radiology1" onclick="return false;">
                                <label class="custom-control-label" for="radiology1">Male</label>
                            </div>
                            <div class="custom-control custom-radio custom-control-inline">
                                <input type="radio" name="radio01" value="2" class="data_gender custom-control-input input-primary" id="radiology2" onclick="return false;">
                                <label class="custom-control-label" for="radiology2">Female</label>
                            </div>
                            <div class="custom-control custom-radio custom-control-inline">
                                <input type="radio" name="radio01" value="3" class="data_gender custom-control-input input-primary" id="radiology3" onclick="return false;">
                                <label class="custom-control-label" for="radiology3">Other</label>
                            </div>
                        </div>

                        <div class="col-xl-6 col-md-4 col-sm-12 m-t-15" style="text-align:center;"> 
                            Date :<input type="text" name="currentdate" id="currentdate2" autocomplete="off"  class="dateborder notfuturedate ">
                        </div>
                            
                        <div class="col-12 m-t-20">
                        <h4 class="f-12">INFORMATION FOR THE PATIENT</h4>
                        <p class="text-justify">The radiologist provides radiographic services order by your doctors. We provide direct service and also serve as consultants to your doctor and other physicians. Our doctors are all Board Certified Radiologist with many years of experience.</p>
                        
                        <h4 class="f-12">RADIOLOGY EVALUATION </h4>
                        <p class="text-justify">Your doctor has explained that CBCT scan, Orthopantomogram, or X-Ray flat 2D image will be examination and diagnosis by our specialist radiologist license. In some cases, we may seek the diagnostic opinion and consultant which may entail a separate fee which they may bill to you or <span style="font-style:italic; font-weight: bold">your insurance company.</span></p>
                        <p class="text-justify">We will email a report to your doctor who can discuss the results with you. Your signature, below, confirms your acknowledgment that your doctor has ordered oral radiology services to be performed on your behalf and you give permission to our radiologist to share your information with other licensed healthcare providers as needed and requested for diagnostic and/or treatment purposes within HIPAA regulations.</p>
                        
                        <h4 class="f-12">ELECTRONIC TRANSMISSION OF CLINICAL INFORMATION</h4>
                        <p class="text-justify">We may need to communicate with your doctor regarding other information including radiographs, additional clinical information, clinical photos, photomicrographs, and reports from other doctors.</p>
                        
                        <h4 class="f-12">BILLING</h4>
                        <p class="text-justify">You will receive a bill from our third-party billing service Agency.   Our billing service can be contacted at (866) 508-9491 ext 101. If the doctor who performed the Radiographic such as CBCT, Orthopanthogram, or any X-Ray flat 2D film  provides us with your billing information, our billing service will bill medical insurance as a courtesy to you.</p>
                        <p class="text-justify">We are Medicare providers. If you are Medicare-eligible, we cannot process your radiography unless your doctor is registered with Medicare (PECOS). Your doctor may be registered as "Order & Refer" or "Opt-out". If you are Medicare eligible, inform your doctor and provide your doctor with your Medicare number or a copy of your Medicare card and your date of birth, driver license or U.S legal ID card.</p>
                        <p class="text-justify">We are not members of any Preferred Provider network or HMO plans (including Medicare HMO) require prior authorization. You are <span style="font-style:italic; font-weight:bold;">responsible for payment in full of our services.</span> You are also responsible for any legal or collection agency fees that we may Institute to collect timely payment of this obligation.</p>
                        
                        <p style="font-weight:bold;"> My signature below represents my acknowledgment that I have read and understand the foregoing information. </p>
                        
                        <div class="row" style="margin-bottom: 80px;">
                                
                                <div class="col-7" style="padding:0;">
                                    <div class="col-12">
                                    <canvas id="patentsignature" width="480" height="80" class="col-12"></canvas>
                                    <p>Signature of Patient, Legal Guardian or Holder of Power of Attorney<span style="color: red;margin: 20px;"><a onclick="signradiology_clr()">Clear Signature</a></span></p>                                                            
                                    </div>
                                </div>
                                <div class="col-2 offset-md-2 justify-content-end">
                                Date:<input type="text" name="signdate" id="signdate" autocomplete="off" class=" notfuturedate dateborder" style="padding:0;">
                            </div>  
                    <div class="row container m-t-20 m-b-50">
                            <div class="col-12"> 
                                <input type="text" name="patientname1" id="patientname1" class="col-6 data_patient_name data_control_editable dateborder">
                                <p>Printed name of Signatory</p>
                            </div>
                        </div> 
                            </div> 
                        
                        <p class="f-14" style="font-weight:bold;">DOCTORS: Please return the original of this form</p>
                       
                    </div>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                <button type="button" class="btn btn-primary" id="buttonid" onclick="saveRadiologyPatientAck(this)">Submit</button>
            </div>
        </div>  
        </div>  
        </div>
       
<!--==================================================================================--> 

<script>
    
      function saveRadiologyPatientAck(buttonObj)
        {
          if(!$('#currentdate2').val())
          {
               msgbox("Date is Mandatory", "Patient Checklist", "error");
                return false;
          }
            $(buttonObj).attr('disabled', 'disabled');
            $(buttonObj).text('Sending...');

            $(buttonObj).off('click'); //disables click event
            console.log(buttonObj);

            var sign_radiology = window.signradiology.toDataURL("image/png");
            var sign_radiology1 = sign_radiology.replace('data:image/png;base64,', '');
            //alert(hippa_sign01);
            
            
            let checkboxes = document.querySelectorAll('input[name="radio01"]:checked');
            let gender = [];
            checkboxes.forEach((checkbox) => {
                gender.push(checkbox.value);
            });
           
            var patientname = $('#patientname').val();
            var patientdob = $('#patientdob').val();
            var currentdate = $('#currentdate2').val();
            var patientname1 = $('#patientname1').val();
            var signdate = $('#signdate').val();
          
            $.ajax({
                url: "generateradiologypatientackpdf",
                type: "POST", //send it through get method
                data: {
                    patientid: $("#patientCombo option:selected").val(),
                    patientname: patientname,
                    patientdob: patientdob,
                    patientgender: gender,
                    currentdate: currentdate,
                    patientname1: patientname1,
                    patientsignature: sign_radiology1,
                    signdate : signdate,
                    firstname : $("#inputFirstName").val(),
                    lastname : $("#inputLastName").val()
                },
                success: function (response) {
                    if (response.length > 0)
                    {
                        $("#Radiology_Patient_Acknowledgement_Form").modal('hide');
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
            window.signradiology = new SignaturePad($('#patentsignature').get(0), {
            });
        });


        var signradiology_clr = function () {
            window.signradiology.clear()
        };
        
</script>
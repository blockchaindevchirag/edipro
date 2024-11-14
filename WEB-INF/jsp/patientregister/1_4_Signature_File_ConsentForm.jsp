<div class="modal fade centerAligned" id="SignatureFileConsentForm" tabindex="-1" data-backdrop="static" data-keyboard="false" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-xl">
        <div class="modal-content">
            <div class="modal-header" style="text-align: center">
                <div class="col">
                    <h4 class="data_practice_name"></h4>
                    <input type="hidden" name="signfile9" id="signfile9" class="data_practice_name">
                    <p style="margin: 1px;" class="data_practiceAddress"> ADDRESS CITY STATE ZIP CODE</p>
                    <p >Tel: <span class="data_practicePhone">213-555-5555</span> 	Fax: <span class="data_practiceFax">213-555-5555</span></p>
                </div> 
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
            </div>
            <div class="container">
                <div class="card-body">
                    <div class="row">
                        <form id="form_sign">
                            <div class="col-12" style="text-align: center">
                                <h6 style="font-size: 20px;">PATIENT SIGNATURE ON FILE</h6>
                            </div>
                            <div class="row" style="padding-left: 15px">
                                
                                <div class="col">Patient Name:<input type="text" name="signfile1" id="signfile1" class="dateborder data_patient_name"></div>

                                <div class="col">
                                    <div class="custom-control custom-radio custom-control-inline">
                                        <input type="radio" name="sfcfradio1" value="1" class="data_gender custom-control-input input-primary" id="sfcf1"  onclick="return false;">
                                        <label class="custom-control-label" for="sfcf1">Male</label>
                                    </div>
                                    <div class="custom-control custom-radio custom-control-inline">
                                        <input type="radio" name="sfcfradio1" value="2" class="data_gender custom-control-input input-primary" id="sfcf2"  onclick="return false;">
                                        <label class="custom-control-label" for="sfcf2">Female</label>
                                    </div>
                                    <div class="custom-control custom-radio custom-control-inline">
                                        <input type="radio" name="sfcfradio1" value="3" class="data_gender custom-control-input input-primary" id="sfcf3_0"  onclick="return false;">
                                        <label class="custom-control-label" for="sfcf3_0">Other</label>
                                    </div>
                                </div>  
                                <div class="col">Date :<input type="text" name="signdate1" id="signdate1" autocomplete="off"  class="dateborder  notfuturedate "></div>
                            </div>
                            <div class="col-12">
                                <p style="margin-top: 15px;">Address:
                                    <input type="text" name="signfile2" id="signfile2" class="data_inputAddress col-10 dateborder">
                                </p>
                            </div>
                            <div class="row" style="padding-left: 15px">
                                <div class="col-xl-4 col-md-6">
                                    <p>State :
                                        <input type="text" name="signfile3" id="signfile3" class="data_inputState col-10 dateborder" style="padding:0">
                                    </p>
                                </div>
                                <div class="col-xl-4 col-md-6">
                                    <p>Zip : 
                                        <input type="text" name="signfile4" id="signfile4" class="data_inputZip col-10 dateborder" style="padding:0">
                                    </p>
                                </div>
                               <div class="col-xl-4 col-md-6">
                                    <p>City :
                                        <input type="text" name="signfile5" id="signfile5" class="data_inputCity col-10 dateborder" style="padding:0">
                                    </p>
                                </div>
                            </div>
                            <div class="row" style="padding-left: 15px">
                                <div class="col-xl-4 col-md-6">
                                    <p>Date of Birth :
                                        <input type="date" name="signfile6" id="signfile6"  class="data_inputDOB col-8 dateborder">
                                    </p>
                                </div>
                                <div class="col-xl-4 col-md-6">
                                    <p>SSN :
                                        <input type="text" name="signfile7" id="signfile7" class="data_inputSSN col-8 dateborder">
                                    </p>
                                </div>
                               <div class="col-xl-4 col-md-6">
                                    <p>Subscriber ID# :
                                        <input type="text" name="signfile8" id="signfile8" class="col-8 dateborder">
                                    </p>
                                </div>
                            </div>
                            <div class="col-12">
                                <p>ALL PATIENTS MUST ACKNOWLEDGE ITEM NUMBERS 1, 4, 9 and 10 BY CHECKING THE BOX NEXT TO THE ITEM AND SIGNING BELOW. ANY OTHER ITEMS REQUIRING AGREEMENT WILL BE INDICATED FOR YOU BY THE PRACTICE STAFF.</p>
                            </div>
                            <div class="col-12">
                                <h6>
                                    <div class="custom-control custom-checkbox row">
                                        <div class="" style="width:4%;line-height: 1.5;">1.</div>
                                        <div class="col-11">
                                            <input type="checkbox" name="signature1" class="custom-control-input input-primary" id="sfcf3" value="GENERALRELEASEOFINFORMATION">
                                            <label class="custom-control-label" for="sfcf3"> GENERAL RELEASE OF INFORMATION</label></div>
                                    </div>
                                </h6>
                                <p>I give my permission to <b>OUR PRACTICE</b>, and any associated PROVIDERS and any agency contracted by these parties disclose any or all parts of the clinical record to my insurance company(s) for purposes of satisfying charges billed by <b>OUR PRACTICE</b> and any PROVIDERS. I further understand that it may be necessary to contact my past or present employer(s) in regards to this claim. This authorization does not cover my 3rd party liability claims. GUARANTEE OF ACCOUNT -<b>OUR PRACTICE</b> and any associated PROVIDERS, and any agency/vendor contracted by these parties for consideration of services by <b>OUR PRACTICE</b> and any associated PROVIDERS, and any agency contracted by these parties to the above named patient, the undersigned (jointly and severally if more than one) guarantees payment of all charges incurred for said patient in accordance with the policy of payment of such bills.</p>

                                <h6>
                                    <div class="custom-control custom-checkbox row">
                                        <div class="" style="width:4%;line-height: 1.5;">2.</div>
                                        <div class="col-11">
                                        <input type="checkbox" name="signature2" class="custom-control-input input-primary" id="sfcf4" value="MEDICARE">
                                        <label class="custom-control-label" for="sfcf4">MEDICARE</label>
                                        </div>
                                    </div>
                                </h6>
                                <p>I certify that the information given by me in applying for payment under Title XVIII of the Social Security Act is correct. I request that payment of authorized <u>Medicare benefits</u> be made either to me or on my behalf to <b>OUR PRACTICE</b> and any associated PROVIDERS and any agency contracted by these parties for any services furnished to me by that physician or supplier. I authorize any holder of medical information about me to release to the Health Care Financing Administration and its agents any information needed to determine these benefits or the benefits payable for related services.</p>

                                <h6>
                                    <div class="custom-control custom-checkbox row">
                                        <div class="" style="width:4%;line-height: 1.5;">3.</div>
                                        <div class="col-11">
                                        <input type="checkbox" name="signature3" class="custom-control-input input-primary" id="sfcf5" value="MEDIGAPSUPPLEMENT">
                                        <label class="custom-control-label" for="sfcf5">MEDIGAP (SUPPLEMENT)</label>
                                        </div>
                                    </div>
                                </h6>
                                <p>I request the payment of authorized Medigap benefits be made either to me or on my behalf to <b>OUR PRACTICE</b> and any associated PROVIDERS, and any agency contracted by these parties for any services furnished to me by that physician or supplier. I authorize any holder of medical information about me to release to my insurance company any information needed to determine these benefits payable for related services.</p>

                                <h6>
                                    <div class="custom-control custom-checkbox row">
                                        <div class="" style="width:4%;line-height: 1.5;">4.</div>
                                        <div class="col-11"><input type="checkbox" name="signature4" class="custom-control-input input-primary" id="sfcf6" value="SIGNATURE">
                                            <label class="custom-control-label" for="sfcf6">SIGNATURE</label></div>
                                    </div>
                                </h6>
                                <p>My signature certifies that I received a service or supply. I understand that payment for these services or supplies will be from Federal and State funds, and that any false claims, statements, or documents or concealment of material may be prosecuted under applicable Federal and State Laws.</p>

                                <h6>
                                    <div class="custom-control custom-checkbox row">
                                        <div class="" style="width:4%;line-height: 1.5;">5.</div>
                                        <div class="col-11"> <input type="checkbox" name="signature5" class="custom-control-input input-primary" id="sfcf7" value="COMMERCIALASSIGNMENTOFINSURANCEBENEFITSPPO">
                                            <label class="custom-control-label" for="sfcf7">COMMERCIAL ASSIGNMENT OF INSURANCE BENEFITS (PPO)</label></div>
                                    </div>
                                </h6>
                                <p>I hereby authorize payment directly to <b>OUR PRACTICE</b> and any associated PROVIDERS and any agency contracted by these parties for medical insurance benefits including any Major Medical Benefits otherwise payable to me under the terms of my policy but not to exceed the balance due to the physicians or organizations furnishing the services performed during this period of health care. In making this assignment, I understand and agree that I am financially responsible to the above party and/or parties for charges not paid under this insurance  policy. I permit a copy of this authorization to be used in place of the original.</p>

                                <h6>
                                    <div class="custom-control custom-checkbox row">
                                        <div class="" style="width:4%;line-height: 1.5;">6.</div>
                                        <div class="col-11"><input type="checkbox" name="signature6" class="custom-control-input input-primary" id="sfcf8" value="MEDICARESECONDARYPAYORMSPADVANTAGE">
                                            <label class="custom-control-label" for="sfcf8">MEDICARE SECONDARY PAYOR (MSP) (ADVANTAGE)</label></div>
                                    </div>
                                </h6>
                                <p>I certify that the information given is true and correct and accurate.</p>

                                <h6>
                                    <div class="custom-control custom-checkbox row">
                                        <div class="" style="width:4%;line-height: 1.5;">7.</div>
                                        <div class="col-11"><input type="checkbox" name="signature7" class="custom-control-input input-primary" id="sfcf9" value="UNCOMPENSATEDCARE">
                                            <label class="custom-control-label" for="sfcf9">UNCOMPENSATED CARE</label></div>
                                    </div>   
                                </h6>
                                <p>I have made application to the uncompensated care program under <b>OUR PRACTICE</b></p>

                                <h6>
                                    <div class="custom-control custom-checkbox row">
                                        <div class="" style="width:4%;line-height: 1.5;">8.</div>
                                        <div class="col-11"> <input type="checkbox" name="signature8" class="custom-control-input input-primary" id="sfcf10" value="ADVANCEDIRECTIVE">
                                            <label class="custom-control-label" for="sfcf10">ADVANCE DIRECTIVE</label></div>
                                    </div>    
                                </h6>
                                <p>I acknowledge that I have received information regarding Act 24 "Advance Directive for Health Care Act" established in April 1992.</p>

                                <h6>
                                    <div class="custom-control custom-checkbox row">
                                        <div class="" style="width:4%;line-height: 1.5;">9.</div>
                                        <div class="col-11"><input type="checkbox" name="signature9" class="custom-control-input input-primary" id="sfcf11" value="ADVANCEBENEFICIARYNOTICEOFNONCOVERAGESERVICESABN">
                                            <label class="custom-control-label" for="sfcf11">ADVANCE BENEFICIARY NOTICE OF NON-COVERAGE SERVICES (ABN)</label></div>
                                    </div>
                                </h6>
                                <p>I acknowledge that my insurance company covers not all health care services provided to me. As a result, I acknowledge my responsibility for payment of these non-covered services.</p>

                                <h6>
                                    <div class="custom-control custom-checkbox row">
                                        <div class="" style="width:4%;line-height: 1.5;">10.</div>
                                        <div class="col-11"><input type="checkbox" name="signature10" class="custom-control-input input-primary" id="sfcf12" value="AUTHORIZERELEASEOFALLMEDICALDENTALBILLINGNECCESSARY">
                                            <label class="custom-control-label" for="sfcf12">AUTHORIZE RELEASE OF ALL MEDICAL & DENTAL BILLING NECCESSARY</label></div>
                                    </div>
                                </h6>
                                <p>I hereby authorize the release of all medical information necessary to process my claims and I authorize release of this same information, when necessary, to other providers rendering medical/dental care, as well as to labs that need my information to make a diagnosis or fabricate an appliance necessary for my treatment. I assign all medical and surgical benefits, including major medical benefits to which I am entitled, <b>OUR PRACTICE</b> This assignment will remain in effect until revoked by me in writing. A photocopy of this assignment is to be considered as valid as the original.</p>

                                <ul>
                                    <li>PROCESS ALL INSURANCE CLAIMS</li>
                                    <li>ENSURE PAYMENT FOR SERVICES PROVIDED</li>
                                    <li>RELEASE MEDICAL INFORMATION TO INSURANCE COMPANIES NEEDED FOR THE PROCESSING OF YOUR CLAIMS</li>
                                </ul>
                            </div>   


                            <!--=============================================signature==================-->                  
                            <!-- Content -->

                            <div class="row" style="margin-bottom: 80px">
                                
                                <div class="col-7">
                                    <div class="col-12">
                                    <canvas id="spouse_sign" width="480" height="80"></canvas>
                                    <p>Patient/Spouse or Insured's Signature<span style="color: red;margin: 20px;"><a onclick="clear6()">Clear Signature</a></span></p>                            
                                
                                </div>
                                    </div>
                                <div class="col-2 offset-md-2">
                                Date:<input type="text" name="signdate1" id="signdate1" autocomplete="off" class=" notfuturedate dateborder" style="padding:0;">
                            </div>  
<!--                                <div style="display: flex;align-items: flex-end;height: 75px;">
                                    
                                </div>-->
                            </div>                            

                        </form>
                    </div>
                </div>  
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                <button type="button" class="btn btn-primary"id="buttonid" onclick="onFunction(this)">Submit</button>
            </div>
        </div>
    </div>
</div>
<!--==================================================================================-->
<script>
    function onFunction(buttonObj)
    {
         if(!$('#signdate1').val())
          {
               msgbox("Date is Mandatory", "Patient Checklist", "error");
                return false;
          }
        $(buttonObj).attr('disabled', 'disabled');
        $(buttonObj).text('Sending...');

        $(buttonObj).off('click'); //disables click event
        var signature_file = window.signaturePad6.toDataURL("image/png");
        var signature_file1 = signature_file.replace('data:image/png;base64,', '');

        let checkboxes_1 = document.querySelectorAll('input[name="sfcfradio1"]:checked');
        let gender = [];
        checkboxes_1.forEach((checkbox) => {
            gender.push(checkbox.value);
        });

        let checkboxes = document.querySelectorAll('input[name="signature1"]:checked');
        let values = [];
        checkboxes.forEach((checkbox) => {
            values.push(checkbox.value);
        });

        let checkboxes1 = document.querySelectorAll('input[name="signature2"]:checked');
        let values1 = [];
        checkboxes1.forEach((checkbox) => {
            values1.push(checkbox.value);
        });

        let checkboxes2 = document.querySelectorAll('input[name="signature3"]:checked');
        let values2 = [];
        checkboxes2.forEach((checkbox) => {
            values2.push(checkbox.value);
        });

        let checkboxes3 = document.querySelectorAll('input[name="signature4"]:checked');
        let values3 = [];
        checkboxes3.forEach((checkbox) => {
            values3.push(checkbox.value);
        });

        let checkboxes4 = document.querySelectorAll('input[name="signature5"]:checked');
        let values4 = [];
        checkboxes4.forEach((checkbox) => {
            values4.push(checkbox.value);
        });

        let checkboxes5 = document.querySelectorAll('input[name="signature6"]:checked');
        let values5 = [];
        checkboxes5.forEach((checkbox) => {
            values5.push(checkbox.value);
        });

        let checkboxes6 = document.querySelectorAll('input[name="signature7"]:checked');
        let values6 = [];
        checkboxes6.forEach((checkbox) => {
            values6.push(checkbox.value);
        });

        let checkboxes7 = document.querySelectorAll('input[name="signature8"]:checked');
        let values7 = [];
        checkboxes7.forEach((checkbox) => {
            values7.push(checkbox.value);
        });

        let checkboxes8 = document.querySelectorAll('input[name="signature9"]:checked');
        let values8 = [];
        checkboxes8.forEach((checkbox) => {
            values8.push(checkbox.value);
        });

        let checkboxes9 = document.querySelectorAll('input[name="signature10"]:checked');
        let values9 = [];
        checkboxes9.forEach((checkbox) => {
            values9.push(checkbox.value);
        });


        var patientname = $('#signfile1').val();
        var currentdate = $('#signdate1').val();
        var patientaddress = $('#signfile2').val();
        var patientstate = $('#signfile3').val();
        var patientzip = $('#signfile4').val();
        var patientcity = $('#signfile5').val();
        var patientdob = $('#signfile6').val();
        var patientssn = $('#signfile7').val();
        var subscriberid = $('#signfile8').val();
        var signdate1 = $('#signdate1').val();

        $.ajax({
            url: "generatesignaturefilepdf",
            type: "POST", //send it through get method
            data: {

                patientname: patientname,
                patientgender: gender,
                currentdate: currentdate,
                patientid: $("#patientCombo option:selected").val(),
                patientaddress: patientaddress,
                patientstate: patientstate,
                patientzip: patientzip,
                patientcity: patientcity,
                patientdob: patientdob,
                patientssn: patientssn,
                subscriberid: subscriberid,
                patientcheckbox1: values,
                patientcheckbox2: values1,
                patientcheckbox3: values2,
                patientcheckbox4: values3,
                patientcheckbox5: values4,
                patientcheckbox6: values5,
                patientcheckbox7: values6,
                patientcheckbox8: values7,
                patientcheckbox9: values8,
                patientcheckbox10: values9,
                patientsignature: signature_file1,
                signdate1: signdate1,
                lastname: $("#inputLastName").val(),
                firstname: $("#inputFirstName").val()

            },
            success: function (response) {
                if (response.length > 0)
                {
                    $("#SignatureFileConsentForm").modal('hide');
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
        window.signaturePad6 = new SignaturePad($('#spouse_sign').get(0), {

        });

    });


    var clear6 = function () {
        window.signaturePad6.clear()
    }
</script>

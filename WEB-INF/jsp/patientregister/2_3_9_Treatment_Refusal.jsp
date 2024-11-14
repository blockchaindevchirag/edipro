<div class="modal fade centerAligned" id="Treatment_Refusal" tabindex="-1" data-backdrop="static" data-keyboard="false" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-xl">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title" id="myModalLabel">
                    TREATMENT REFUSAL FORM 
                </h4>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>

            </div>
            <div class="container">
                <form id="treat_ref">
                    <div class="card-body">
                        <div class="row" style="margin-bottom: 20px;">
                            <div class="col-4 col-xl-4 col-md-6">Patient Name:<input type="text" name="treatref01" id="treatref01" class="col-8 dateborder data_patient_name"></div>
                            <div class="col-4 col-xl-4 col-md-3"> DOB:<input type="date" name="treatref02" id="treatref02" class="data_inputDOB dateborder"></div>
                            <div class="col-4 col-xl-4 col-md-3">
                                <div class="custom-control custom-radio custom-control-inline">
                                    <input type="radio" name="treatradiobtn01"  class="data_gender custom-control-input input-primary" id="treatmentrefm01"  onclick="return false;" value="1">
                                    <label class="custom-control-label" for="treatmentrefm01">Male</label>
                                </div>
                                <div class="custom-control custom-radio custom-control-inline">
                                    <input type="radio" name="treatradiobtn01"  class="data_gender custom-control-input input-primary" id="treatmentrefm02"  onclick="return false;" value="2">
                                    <label class="custom-control-label" for="treatmentrefm02">Female</label>
                                </div>
                                <div class="custom-control custom-radio custom-control-inline">
                                    <input type="radio" name="treatradiobtn01"  class="data_gender custom-control-input input-primary" id="treatmentrefm03"  onclick="return false;" value="3">
                                    <label class="custom-control-label" for="treatmentrefm03">Other</label>
                                </div>
                            </div>
                            <div class="col-6 col-xl-6 col-md-4" style="margin-top: 15px;">Date:<input type="text" name="treatref03" id="treatref03" autocomplete="off" class=" notfuturedate col-9 dateborder"></div>
                            <div class="col-6 col-xl-6 col-md-8" style="margin-top: 15px;">Practice Name:<input type="text" name="treat_r7" id="treat_r7" readonly class="col-9 dateborder data_practice_name"> </div>

                        </div>
                        <!--===========================================================================================-->
                        <div class="col-12">
                            <h6>Check the boxes below that apply to you:</h6>
                            <h6>Consent</h6>
                            <div class="custom-control custom-checkbox">
                                <input type="checkbox" class="treatment_chk custom-control-input input-primary" name="treat_rf_1" id="treat_1" value="treat_ref1">
                                <label class="custom-control-label" for="treat_1"> I have been informed both verbally and by the information provided on this form of the risks 
                                    and benefits of the proposed treatment.</label>
                            </div>
                            <div class="custom-control custom-checkbox">
                                <input type="checkbox" class="treatment_chk custom-control-input input-primary"name="treat_rf_2" id="treat_2" value="treat_ref2">
                                <label class="custom-control-label" for="treat_2">
                                    I have been informed both verbally and by the information provided on this form of the 
                                    material risks and benefits of alternative treatment and of electing not to treat my condition.
                                </label>
                            </div>
                            <div class="custom-control custom-checkbox">
                                <input type="checkbox" class="treatment_chk custom-control-input input-primary"name="treat_rf_3" id="treat_3" value="treat_ref3">
                                <label class="custom-control-label" for="treat_3">I certify that I have read and understand the above information and that the explanations 
                                    referred to are understood by me, that my questions have been answered and that the blanks 
                                    requiring insertions or completion have been filled in. I authorize and direct
                                    Dr.<input type="text" name="treatdr" id="treatdr" class="treatment_txt col-6 dateborder" maxlength="65" > to do whatever he/she deems necessary and advisable under the 
                                    circumstances. </label>
                            </div>
                            <div class="custom-control custom-checkbox">
                                <input type="checkbox" class="treatment_chk custom-control-input input-primary" name="treat_rf_4" id="treat_4" value="treat_ref4">
                                <label class="custom-control-label" for="treat_4"> I consent to have the above-mentioned treatment.</label>
                            </div>
                            <div class="custom-control custom-checkbox">
                                <input type="checkbox" class="treatment_chk custom-control-input input-primary"name="treat_rf_5_" id="treat_5_" value="treat_ref5_">
                                <label class="custom-control-label" for="treat_5_">While the treatment may be covered by my medical and/or dental insurance, I accept any 
                                    financial responsibility for this treatment and authorize treatment.</label>
                            </div>
                            <h6>or</h6>
                            <h6>Refusal</h6> 
                            <div class="custom-control custom-checkbox">

                                <input type="checkbox" class="treatmentrefusal_chk custom-control-input input-primary" name="treat_rf_6" id="treat_6" value="treat_ref6">
                                <label class="custom-control-label" for="treat_6"><p style="line-height:2;">I refuse to give my consent for the proposed treatment(s) described 
                                        <input type="text" name="treat_r2" id="treat_r2" class="treatmentrefusal_txt col-6 dateborder" maxlength="65" /> and understand the potential consequences associated with this refusal. </p>
                                </label>
                            </div>

                            <div class='row col-12' style='margin-top: 40px;'>

                                <!--==============================================================================================-->
                                <!--======================= Witness Signature======================-->
                                <div class="col-6">
                                    <div class="row">
                                        <div class="col-12">
                                            <canvas id="sign_239tr1" width="480" height="80" class="col-12">		 			
                                            </canvas>
                                        </div>
                                    </div>
                                    <p>Patient Signature: <span style="color: red;margin: 20px;"><a onclick="sign_239tr1_clear()">Clear Signature</a></span></p>
                                </div>
                                <div class="col-4" style="display: flex;align-items: flex-end;height: 75px;">
                                    Date:<input type="text" name="treat_r3" id="treat_r3" autocomplete="off" class=" notfuturedate col-auto dateborder" style="padding:0">   
                                </div>
                                <!--======================= Provider Signature======================-->
                                <div class="col-6">
                                    <div class="row">
                                        <div class="col-12">
                                            <canvas id="sign_239tr2" width="480" height="80" class="col-12">		 			
                                            </canvas>
                                        </div>
                                    </div>
                                    <p>Provider Signature: <span style="color: red;margin: 20px;"><a onclick="sign_239tr2_clear()">Clear Signature</a></span></p>
                                </div>
                                <div class="col-4" style="display: flex;align-items: flex-end;height: 75px;">
                                    Date:<input type="text" name="treat_r4" id="treat_r4" autocomplete="off" class=" notfuturedate col-auto dateborder" style="padding:0">   
                                </div>


                                <!--======================= Witness Signature======================-->
                                <div class="col-6">
                                    <div class="row">
                                        <div class="col-12">
                                            <canvas id="sign_239tr3" width="480" height="80" class="col-12">		 			
                                            </canvas>
                                        </div>
                                    </div>
                                    <p>Witness Signature <span style="color: red;margin: 20px;"><a onclick="sign_239tr3_clear()">Clear Signature</a></span></p>
                                </div>
                                <div class="col-4" style="display: flex;align-items: flex-end; height: 75px;     margin-bottom: 65px;">
                                    Date:<input type="text" name="treat_r5" id="treat_r5" autocomplete="off" class=" notfuturedate col-auto dateborder" style="padding:0">   
                                </div>


                                <p style="margin-bottom: 97px;" >I attest that I have discussed the risks, benefits, consequences and alternatives of the above 
                                    treatment with <input type="text" name="treat_r6"id="treat_r6" class="col-3 dateborder">  (Patient or 
                                    Patient's Representative) and they have had the opportunity to ask questions. I believe they 
                                    understand what has been explained and consents or refuses treatment noted above</p>  
                            </div>                


                        </div>

                        <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                            <button type="button" class="btn btn-primary" id="buttonid" onclick="treatrefSave(this)">Submit</button>
                        </div>

                    </div>  
                </form>
            </div>

        </div>
    </div>
</div>

<script>
    function treatrefSave(buttonObj)
    {
        if(!$('#treatref03').val())
           {
            msgbox("Date is Mandatory", "Patient Checklist", "error");
            return false;
           }
        $(buttonObj).attr('disabled', 'disabled');
        $(buttonObj).text('Sending...');

        $(buttonObj).off('click'); //disables click event    

        var sign_239tr1 = window.sign_239tr1.toDataURL("image/png");
        var sign_239tr1_1 = sign_239tr1.replace('data:image/png;base64,', '');

        var sign_239tr2 = window.sign_239tr2.toDataURL("image/png");
        var sign_239tr2_2 = sign_239tr2.replace('data:image/png;base64,', '');

        var sign_239tr3 = window.sign_239tr3.toDataURL("image/png");
        var sign_239tr3_2 = sign_239tr3.replace('data:image/png;base64,', '');

        let checkboxes = document.querySelectorAll('input[name="treat_rf_1"]:checked');
        let values = [];
        checkboxes.forEach((checkbox) => {
            values.push(checkbox.value);
        });

        let checkboxes1 = document.querySelectorAll('input[name="treat_rf_2"]:checked');
        let values1 = [];
        checkboxes1.forEach((checkbox) => {
            values1.push(checkbox.value);
        });


        let checkboxes2 = document.querySelectorAll('input[name="treat_rf_3"]:checked');
        let values2 = [];
        checkboxes2.forEach((checkbox) => {
            values2.push(checkbox.value);
        });


        let checkboxes3 = document.querySelectorAll('input[name="treat_rf_4"]:checked');
        let values3 = [];
        checkboxes3.forEach((checkbox) => {
            values3.push(checkbox.value);
        });


        let checkboxes4 = document.querySelectorAll('input[name="treat_rf_5_"]:checked');
        let values4 = [];
        checkboxes4.forEach((checkbox) => {
            values4.push(checkbox.value);
        });


        let checkboxes5 = document.querySelectorAll('input[name="treat_rf_6"]:checked');
        let values5 = [];
        checkboxes5.forEach((checkbox) => {
            values5.push(checkbox.value);
        });

        let checkboxes6 = document.querySelectorAll('input[name="treatradiobtn01"]:checked');
        let gender = [];
        checkboxes6.forEach((checkbox) => {
            gender.push(checkbox.value);
        });


        var patientname = $('#treatref01').val();
        var patientdob = $('#treatref02').val();
        var patientcurrentdate = $('#treatref03').val();
        var patienttext1 = $('#treatdr').val();
        var patienttxt2 = $('#treat_r2').val();
        var signdate1 = $('#treat_r3').val();
        var signdate2 = $('#treat_r4').val();
        var signdate3 = $('#treat_r5').val();
        var patienttxt3 = $('#treat_r6').val();


        $.ajax({
            url: "generatetreatmentrefpdf",
            type: "POST", //send it through get method
            data: {

                patientname : patientname,
                patientid: $("#patientCombo option:selected").val(),
                patientdob: patientdob,
                patientcurrentdate: patientcurrentdate,
                patienttext1: patienttext1,
                patientgender: gender,
                patientcheckbox1: values,
                patientcheckbox2: values1,
                patientcheckbox3: values2,
                patienttxt2: patienttxt2,
                patientcheckbox4: values3,
                patientlastname: $("#inputLastName").val(),
                patientfirstname: $("#inputFirstName").val(),
                patientcheckbox5: values4,
                patientcheckbox6: values5,
                patientsignature: sign_239tr1_1,
                signdate1: signdate1,
                providersignature: sign_239tr2_2,
                signdate2: signdate2,
                witnesssignature: sign_239tr3_2,
                signdate3: signdate3,
                patienttxt3: patienttxt3
            },
            success: function (response) {
                if (response.length > 0)
                {
                    $("#Treatment_Refusal").modal('hide');
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
        window.sign_239tr1 = new SignaturePad($('#sign_239tr1').get(0), {});
        window.sign_239tr2 = new SignaturePad($('#sign_239tr2').get(0), {});
        window.sign_239tr3 = new SignaturePad($('#sign_239tr3').get(0), {});


        //---------------------------refusal checkbox----------------------
        $('.treatment_chk').change(function () {

            (!$(this).is(':checked')) ? $('.treatmentrefusal_chk').prop('disabled', false) : $('.treatmentrefusal_chk').prop('disabled', true).prop('checked', false);
        });
//        $('#treatdr').click(function () {
//
//            $('#treat_3').prop('checked', true);
//        });
        $('.treatmentrefusal_chk').change(function () {

            (!$(this).is(':checked')) ? $('.treatment_chk').prop('disabled', false) : $('.treatment_chk').prop('disabled', true).prop('checked', false);
        });
//        $('#treat_r2').click(function () {
//
//            $('#treat_6').prop('checked', true);
//        });
//-------------------------------------------------------------  

    });
    var sign_239tr1_clear = function () {
        window.sign_239tr1.clear();
    };
    var sign_239tr2_clear = function () {
        window.sign_239tr2.clear();
    };
    var sign_239tr3_clear = function () {
        window.sign_239tr3.clear();
    };


</script>
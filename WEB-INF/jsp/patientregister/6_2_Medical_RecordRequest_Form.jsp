<div class="modal fade centerAligned" id="Medical_RecordRequest_Form" tabindex="-1" data-backdrop="static" data-keyboard="false" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-xl">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title" id="myModalLabel">
                    Referral For Physician's Evaluation   
                </h4>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>

            </div>
            <div class="container">
                <form id="medical_rec6_2">
                    <div class="card-body">
                        <p>Our mutual patient,</p>
                        <div class="row">

                            <div class="col-3 col-md-6 col-xl-3">Patient Name:<input type="text" readonly name="medical_rec1" id="medical_rec1"  class="col-8 dateborder data_patient_name"></div>
                            <div class="col-3 col-md-6 col-xl-3"> Patient's DOB:<input type="date" readonly name="medical_rec2" id="medical_rec2" class="data_inputDOB col-8 dateborder"></div>
                            <div class="col-3 col-md-6 col-xl-3" style="margin-top: 12px;">
                                <div class="custom-control custom-radio custom-control-inline">
                                    <input type="radio" name="medical01" value="1" class="data_gender custom-control-input input-primary" id="med1"  onclick="return false;">
                                    <label class="custom-control-label" for="med1">Male</label>
                                </div>
                                <div class="custom-control custom-radio custom-control-inline">
                                    <input type="radio" name="medical01" value="2" class="data_gender custom-control-input input-primary" id="med2"  onclick="return false;">
                                    <label class="custom-control-label" for="med2">Female</label>
                                </div>
                                <div class="custom-control custom-radio custom-control-inline">
                                    <input type="radio" name="medical01" value="3" class="data_gender custom-control-input input-primary" id="med3"  onclick="return false;">
                                    <label class="custom-control-label" for="med3">Other</label>
                                </div>
                            </div>
                            <div class='col-3 col-md-6 col-xl-3' style="margin-top: 12px;">
                                <p>Date :<input type="text" name="medical_recfm62" id="medical_recfm62" autocomplete="off"  class="col-8 dateborder  notfuturedate"></p>
                            </div>
                            <div class="col-6 col-md-8 col-xl-6">Practice Name:<input type="text" name="medical_rec18" id="medical_rec18" readonly class="col-9 dateborder data_practice_name"> </div>

                            <div class="col-12">


                                <p>The patient will be having oral surgery procedures at our Oral Surgery Center that will include use of local anesthetics with epinephrine, also may need premedication with prophylactic antibiotics, and might create a transient septicemia.</p>
                                <p>Please evaluate the patient's records to confirm the need for any medication and/or prophylactic antibiotic premedication before high-risk oral surgery procedures and return the next page with your recommendation. Thank you!</p>
                                <p>Sincerely,</p>
                                <p><canvas id="sign_62mrf1" width="300" height="50"></canvas>
                                    <span style="position: absolute; color: red"><a onclick="sign_62mrf1_clear()" >&ensp;Clear Signature</a></span></p>
                            </div>
                            <div class="col-12">
                                <p>Please return to:</p>
                                <p><input type="text" id="medicalre" name="medicalre" class="col-5 dateborder"></p>
                                <p>Office address:<input type="text" name="medical_rec3" id="medical_rec3" class="col-5 dateborder" maxlength="50"></p>
                                <p>City, State ZIP:<input type="text" name="medical_rec4" id="medical_rec4" class="col-5 dateborder" maxlength="50"></p>
                                <p>Tell(<input type="text" name="medical_recf5" id="medical_recf5" class="col-1 dateborder" maxlength="5" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*?)\..*/g, '$1');">)<input type="text" name="medical_rec7" id="medical_rec7" class="col-5 dateborder" maxlength="10" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*?)\..*/g, '$1');"></p>
                                <p>Fax(<input type="text" name="medical_rec6" id="medical_rec6" class="col-1 dateborder" maxlength="5" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*?)\..*/g, '$1');">)<input type="text" name="medical_rec8" id="medical_rec8" class="col-5 dateborder" maxlength="10" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*?)\..*/g, '$1');"></p>
                                <p>Dr.<input type="text" name="medical_recf9" id="medical_recf9" class="col-5 dateborder"></p>
                                <p>I have evaluated the records of our mutual patient <input type="text" name="medical_rec10" id="medical_rec10" class="col-5 dateborder"> and advise the following:</p>

                                <p><input type="text" name="medi01" id="medi01" class="col-1 dateborder" maxlength="5" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..?)\../g, '$1');">&nbsp; No prophylactic antibiotic premedication is needed.</p>
                                <p><input type="text" name="medi02" id="medi02" class="col-1 dateborder" maxlength="5" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..?)\../g, '$1');"> &nbsp; 2 grams Amoxicillin orally one hour before treatment.</p>
                                <p><input type="text" name="medi03" id="medi03" class="col-1 dateborder" maxlength="5" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..?)\../g, '$1');"> &nbsp;600mg Clindamycin orally one hour before treatment.</p>
                                <p><input type="text" name="medi04" id="medi04" class="col-1 dateborder" maxlength="5" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..?)\../g, '$1');"> &nbsp; 2g Cephalexin or Cefadroxil orally one hour before treatment.</p>
                                <p><input type="text" name="medi05" id="medi05" class="col-1 dateborder" maxlength="5" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..?)\../g, '$1');"> &nbsp; 500mg Azithromycin or Clarithromycin orally one hour before treatment.</p>
                                <p><input type="text" name="medi06" id="medi06" class="col-1 dateborder" maxlength="5" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..?)\../g, '$1');"> &nbsp; Other: <input type="text" name="medical_rec11 " id="medical_rec11" class="col-5 dateborder"></p>
                                <div class="custom-control custom-checkbox">
                                    <input type="checkbox" name="medicalrec_62" id="medi62" value="recform6" class="custom-control-input input-primary">
                                    <label class="custom-control-label" for="medi62">Please send us photocopy of patient's records</label>
                                </div>
                            </div>
                            <div class="col-6" style="margin-top: 15px;">
                                <input type="text" name="medical_rec12" id="medical_rec12" class="col-12 dateborder">
                                <p>Physician</p>
                            </div>
                            <div class="col-6" style="margin-top: 15px;">
                                <input type="text" name="medical_rec13" id="medical_rec13" autocomplete="off" class=" notfuturedate col-auto dateborder">
                                <p>Date</p>
                            </div>
                            <div class="col-12"     style="margin-bottom: 79px;">
                                <p>Tell(<input type="text" name="medical_rec14" id="medical_rec14" class="col-1 dateborder" maxlength="5" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*?)\..*/g, '$1');">)<input type="text" name="medical_rec16" id="medical_rec16" class="col-5 dateborder" maxlength="10" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*?)\..*/g, '$1');"></p>
                                <p>Fax(<input type="text" name="medical_rec15" id="medical_rec15" class="col-1 dateborder" maxlength="5" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*?)\..*/g, '$1');">)<input type="text" name="medical_rec17" id="medical_rec17" class="col-5 dateborder" maxlength="10" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*?)\..*/g, '$1');"></p>                      
                            </div>
                        </div>
                    </div>  
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                <button type="button" class="btn btn-primary" id="buttonid" onclick="medicalrecSave(this)">Submit</button>
            </div>
        </div>
    </div>
</div>
<script>
    function medicalrecSave(buttonObj) {
         if(!$('#medical_recfm62').val())
           {
            msgbox("Date is Mandatory", "Patient Checklist", "error");
            return false;
           }
        $(buttonObj).attr('disabled', 'disabled');
        $(buttonObj).text('Sending...');

        $(buttonObj).off('click'); //disables click event

        var sign_62mrf1 = window.sign_62mrf1.toDataURL("image/png");
        var sign_62mrf1_1 = sign_62mrf1.replace('data:image/png;base64,', '');


        let checkboxes = document.querySelectorAll('input[name="medicalrec_62"]:checked');
        let patientrec = [];
        checkboxes.forEach((checkbox) => {
            patientrec.push(checkbox.value);
        });
        let checkboxes1 = document.querySelectorAll('input[name="medical01"]:checked');
        let gender = [];
        checkboxes1.forEach((checkbox) => {
            gender.push(checkbox.value);
        });



        var patientname = $('#medical_rec1').val();
        var patientdob = $('#medical_rec2').val();
        var patientcurrentdate = $('#medical_recfm62').val();
        var patienttxt1 = $('#medicalre').val();
        var patientofficeaddress = $('#medical_rec3').val();
        var citystate = $('#medical_rec4').val();
        var telephone = $('#medical_recf5').val();
        var faxnum = $('#medical_rec6').val();
        var patienttxt2 = $('#medical_rec7').val();
        var patienttxt3 = $('#medical_rec8').val();
        var patientname1 = $('#medical_recf9').val();
        var patienttxt4 = $('#medical_rec10').val();
        var patienttxt5 = $('#medical_rec11').val();
        var physicianname = $('#medical_rec12').val();
        var telephone1 = $('#medical_rec14').val();
        var faxnum1 = $('#medical_rec15').val();
        var patienttxt6 = $('#medical_rec16').val();
        var patienttxt7 = $('#medical_rec17').val();
        var patienttxtnum1 = $('#medi01').val();
        var patienttxtnum2 = $('#medi02').val();
        var patienttxtnum3 = $('#medi03').val();
        var patienttxtnum4 = $('#medi04').val();
        var patienttxtnum5 = $('#medi05').val();
        var patienttxtnum6 = $('#medi06').val();
        var patientcurrentdate1= $('#medical_rec13').val();

        $.ajax({
            url: "generatemedicalrecpdf",
            type: "POST", //send it through get method
            data: {

                patientid: $("#patientCombo option:selected").val(),
                patientname: patientname,
                patientdob: patientdob,
                patientsignature: sign_62mrf1_1,
                patientcurrentdate: patientcurrentdate,
                patienttxt1: patienttxt1,
                patientofficeaddress: patientofficeaddress,
                citystate: citystate,
                telephone: telephone,
                faxnum: faxnum,
                patienttxt2: patienttxt2,
                patienttxt3: patienttxt3,
                patientname1: patientname1,
                patienttxt4: patienttxt4,
                patientgender: gender,
                patienttxt5: patienttxt5,
                physicianname: physicianname,
                telephone1: telephone1,
                faxnum1: faxnum1,
                patienttxt6: patienttxt6,
                patientrec: patientrec,
                patientlastname: $("#inputLastName").val(),
                patientfirstname: $("#inputFirstName").val(),
                patienttxt7: patienttxt7,
                patienttxtnum1: patienttxtnum1,
                patienttxtnum2: patienttxtnum2,
                patienttxtnum3: patienttxtnum3,
                patienttxtnum4: patienttxtnum4,
                patienttxtnum5: patienttxtnum5,
                patienttxtnum6: patienttxtnum6,
                patientcurrentdate1:patientcurrentdate1

            },
            success: function (response) {
                if (response.length > 0)
                { 
                    $("#Medical_RecordRequest_Form").modal('hide');
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
        window.sign_62mrf1 = new SignaturePad($('#sign_62mrf1').get(0), {});

    });

    var sign_62mrf1_clear = function () {
        window.sign_62mrf1.clear();
    };

</script>
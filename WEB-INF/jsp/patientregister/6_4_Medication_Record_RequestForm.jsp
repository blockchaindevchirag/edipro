<div class="modal fade centerAligned" id="Medication_Record_RequestForm" tabindex="-1" data-backdrop="static" data-keyboard="false" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-xl">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title" id="myModalLabel">
                    Medication Record Request      
                </h4>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>

            </div>
            <div class="container">
                <form id="medication_rec">
                    <div class="card-body">
                        <h6>Our mutual patient,</h6>
                        <div class="row">
                            <div class="col-3 col-xl-3 col-md-6">Patient Name:<input type="text" readonly name="medical1" id="medical1" class="col-8 dateborder data_patient_name"></div>
                            <div class="col-3 col-xl-3 col-md-6"> Patient's DOB:<input type="date" readonly name="medical2" id="medical2" class="data_inputDOB col-8 dateborder"></div>
                            <div class="col-3 col-xl-3 col-md-6" style="margin-top: 10px">
                                <div class="custom-control custom-radio custom-control-inline">
                                    <input type="radio" name="medicalrecreq_01" value="1" class="data_gender custom-control-input input-primary" id="medi01"  onclick="return false;">
                                    <label class="custom-control-label" for="medi01">Male</label>
                                </div>
                                <div class="custom-control custom-radio custom-control-inline">
                                    <input type="radio" name="medicalrecreq_01" value="2" class="data_gender custom-control-input input-primary" id="medi02"  onclick="return false;">
                                    <label class="custom-control-label" for="medi02">Female</label>
                                </div>
                                <div class="custom-control custom-radio custom-control-inline">
                                    <input type="radio" name="medicalrecreq_01" value="3" class="data_gender custom-control-input input-primary" id="medi03"  onclick="return false;">
                                    <label class="custom-control-label" for="medi03">Other</label>
                                </div>
                            </div>
                            <div class='col-3 col-xl-3 col-md-6' style="margin-top: 10px">
                                <p>Date :<input type="text" name="medical11" id="medical11"  autocomplete="off" class="col-7 dateborder  notfuturedate"></p>
                            </div>
                            <div class="col-6 col-xl-6 col-md-12">Practice Name:<input type="text" name="medical16" id="medical16" readonly class="col-9 dateborder data_practice_name"> </div>


                            <div class="col-12">
                                <p>The patient will be having oral surgery procedures at our Oral Surgery Center that will
                                    include use of local anesthetics with epinephrine, also may need premedication with
                                    prophylactic antibiotics, and might create a transient septicemia.</p>
                                <p>Please release of Medications record for review prior patient's appointment for oral
                                    surgery, to prevent high-risk during oral surgery procedures and return the next page with
                                    your recommendation. Thank you!</p>
                                <p>Sincerely,</p>
                                <p><canvas id="sign_64mrrf1" width="300" height="50"></canvas><p>
                                <p> <span style="position: absolute; color: red"><a onclick="sign_64mrrf1_clear()" >Clear Signature</a></span></p><br/>

                                <p>Please return to:</p>
                                <p><input type="text" name="medicate" id="medicate" class="col-5 dateborder"></p>
                                <p>Office address:<input type="text" name="medical3" id="medical3" class="col-5 dateborder"></p>
                                <p>City, State ZIP:<input type="text" name="medical4" id="medical4" class="col-5 dateborder"></p>
                                <p>Tell(<input type="text" name="medical5" id="medical5" class="col-1 dateborder" maxlength="2" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*?)\..*/g, '$1');">)<input type="text" name="medical6" id="medical6" class="col-5 dateborder" maxlength="10" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*?)\..*/g, '$1');"></p>
                                <p>Fax(<input type="text" name="medical7" id="medical7" class="col-1 dateborder" maxlength="2" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*?)\..*/g, '$1');">)<input type="text" name="medical8" id="medical8"class="col-5 dateborder" maxlength="10" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*?)\..*/g, '$1');"></p>
                                <p>The patient will be having oral surgery procedures at our Oral Surgery Center that will
                                    include use of local anesthetics with epinephrine, also may need premedication with
                                    prophylactic antibiotics, and might create a transient septicemia.</p>
                                <p>Please release of Medications record for review prior patient's appointment for oral
                                    surgery, to prevent high-risk during oral surgery procedures.</p>
                            </div>
                            <div class="col-4">
                                <p><input type="text" name="medical9" id="medical9" class="col-10 dateborder"></p>
                                <p>Pharmacy name</p>
                            </div>
                            <div class="col-4">
                                <p><input type="text" name="medical10" id="medical10"class="col-10 dateborder"></p>
                                <p>Pharmacist</p>
                            </div>
                            <div class="col-4">
                                <p><input type="text" name="medical11" id="medical11" autocomplete="off" class=" notfuturedate col-auto dateborder"></p>
                                <p>Date</p>
                            </div>
                            <div class="col-12">
                                <p>Tel(<input type="text" name="medical12" id="medical12" class="col-1 dateborder" maxlength="2" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*?)\..*/g, '$1');"">)<input type="text" name="medical13" id="medical13" class="col-5 dateborder" maxlength="10" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*?)\..*/g, '$1');"></p>
                                <p>Fax(<input type="text" name="medical14" id="medical14" class="col-1 dateborder" maxlength="2" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*?)\..*/g, '$1');"">)<input type="text" name="medical15" id="medical15" class="col-5 dateborder" maxlength="10" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*?)\..*/g, '$1');"></p>
                            </div>
                        </div>
                    </div>  
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                <button type="button" class="btn btn-primary"id="buttonid" onclick="medicationSave(this)">Submit</button>
            </div>
        </div>
    </div>
</div>
<script>
    function medicationSave(buttonObj)
    {
        if(!$('#medical11').val())
           {
            msgbox("Date is Mandatory", "Patient Checklist", "error");
            return false;
           }
        $(buttonObj).attr('disabled', 'disabled');
        $(buttonObj).text('Sending...');

        $(buttonObj).off('click'); //disables click event
        var sign_64mrrf1 = window.sign_64mrrf1.toDataURL("image/png");
        var sign_64mrrf1_1 = sign_64mrrf1.replace('data:image/png;base64,', '');

        let checkboxes = document.querySelectorAll('input[name="medicalrecreq_01"]:checked');
        let gender = [];
        checkboxes.forEach((checkbox) => {
            gender.push(checkbox.value);
        });


        var patientname = $('#medical1').val();
        var patientdob = $('#medical2').val();
        var currentdate = $('#medical11').val();
        var patienttxt1 = $('#medicate').val();
        var patientofficeaddress = $('#medical3').val();
        var citystate = $('#medical4').val();
        var telephonecode = $('#medical5').val();
        var telephone1 = $('#medical6').val();
        var faxcode = $('#medical7').val();
        var faxnum1 = $('#medical8').val();
        var phramacyname = $('#medical9').val();
        var pharamacist = $('#medical10').val();
        var telephonecode1 = $('#medical12').val();
        var telephone2 = $('#medical13').val();
        var faxcode1 = $('#medical14').val();
        var faxnum2 = $('#medical15').val();




        $.ajax({
            url: "generatemedicationrecpdf",
            type: "POST", //send it through get method
            data: {
                patientname: patientname,
                patientdob: patientdob,
                patientid: $("#patientCombo option:selected").val(),
                currentdate: currentdate,
                gender: gender,
                patientsignature: sign_64mrrf1_1,
                patienttxt1: patienttxt1,
                patientofficeaddress: patientofficeaddress,
                patientlastname: $("#inputLastName").val(),
                patientfirstname: $("#inputFirstName").val(),
                citystate: citystate,
                telephonecode: telephonecode,
                telephone1: telephone1,
                faxcode: faxcode,
                faxnum1: faxnum1,
                pharamacyname: phramacyname,
                pharamacist: pharamacist,
                telephonecode1: telephonecode1,
                telephone2: telephone2,
                faxcode1: faxcode1,
                faxnum2: faxnum2


            },
            success: function (response) {
                if (response.length > 0)
                { 
                    $("#Medication_Record_RequestForm").modal('hide');
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
        window.sign_64mrrf1 = new SignaturePad($('#sign_64mrrf1').get(0), {});
    });

    var sign_64mrrf1_clear = function () {
        window.sign_64mrrf1.clear()
    }
</script>

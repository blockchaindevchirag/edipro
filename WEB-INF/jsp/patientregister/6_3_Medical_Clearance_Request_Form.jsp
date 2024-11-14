<div class="modal fade centerAligned" id="Medical_Clearance_Request_Form" tabindex="-1" data-backdrop="static" data-keyboard="false" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-xl">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title" id="myModalLabel" style='text-align: center'>
                    Medical Record and Medication request to obtain "Clearance" for Dental/ Oral Surgery Treatment
                    Immediate Reply Requested

                </h4>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>

            </div>
            <div class="container">
                <div class="card-body">
                    <form id="form_clear">
                        <div class="row">
                            <div class="col-12">
                                <p>Practice Name:<input type="text" name="mediclear16" id="mediclear16" readonly class="col-7 dateborder data_practice_name"> 
                                   Date:<input type="text" name="currentDate" id="patientDate1" autocomplete="off"  class="col-2 dateborder notfuturedate"> 
                                </p>

                                <p>Our mutual patient, <input type="text" readonly name="mediclear1" id="mediclear1" class="data_patient_name col-5 dateborder"> 
                                    DOB <input type="date" name="mediclear2"id="mediclear2" readonly class="data_inputDOB dateborder"> is planning on having oral surgery. Potential inta-operative medications include: Valium, Versed, Fentanyl, Phenergan, Dexamethasone. Potential postoperative medication include: Lortab, Penicillin, Phenergan, Peridex, Cleocin, Ibuprofen and Tylenol.</p>
                                <p>Please evaluate this patient's medical history and advise us of any special 
                                    considerations that should be made. The reports of the current medical, history
                                    and condition(s) needed prior treatment(s) or prescription(s) and use of 
                                    medication(s), which may warrant special consideration(s) for Oral Surgery 
                                    treatment(s). Planned dental care, treatment(s) or operation(s) and 
                                    medications (including Local Anesthesia type: Lidocaine with Epinephrine,
                                    Marcaine Hydrochloride with Epinephrine, Bupivacaine, Carbocaine, Septocaine, 
                                    and Mepivacaine Hydrochloride). Fax to &nbsp;<input type="text"  name="faxmed" id="faxmed" class="col-2 dateborder" maxlength="10"  oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..?)\../g, '$1');"> or email this form with any relevant supporting
                                    documentation to <input type="text" name="mediclear3" id="mediclear3" class="col-3 dateborder">. Your assistance is greatly appreciated.</p>
                                <h6>Patient is scheduled for Oral surgery treatment may include the following pro
                                    cedure(s):</h6>
                            </div>
                            <div class="col-4">
                                <div class="custom-control custom-checkbox">
                                    <input type="checkbox" name="mediaclclear1" class="custom-control-input input-primary" id="mcrf1" value="medicalclearence1">
                                    <label class="custom-control-label" for="mcrf1">Bone Graft/ Bone Regeneration</label>
                                </div>
                                <div class="custom-control custom-checkbox">
                                    <input type="checkbox" name="mediaclclear2" class="custom-control-input input-primary" id="mcrf2" value="medicalclearence2">
                                    <label class="custom-control-label" for="mcrf2">Surgical tooth extraction</label>
                                </div>
                                <div class="custom-control custom-checkbox">
                                    <input type="checkbox" name="mediaclclear3" class="custom-control-input input-primary" id="mcrf3" value="medicalclearence3">
                                    <label class="custom-control-label" for="mcrf3">Tissue Graft</label>
                                </div>

                            </div>
                            <div class="col-4">
                                <div class="custom-control custom-checkbox">
                                    <input type="checkbox" name="mediaclclear4" class="custom-control-input input-primary" id="mcrf4" value="medicalclearence4" >
                                    <label class="custom-control-label" for="mcrf4">Dental Implant Surgery</label>
                                </div>
                                <div class="custom-control custom-checkbox">
                                    <input type="checkbox" name="mediaclclear5" class="custom-control-input input-primary" id="mcrf5" value="medicalclearence5" >
                                    <label class="custom-control-label" for="mcrf5">Cyst excision</label>
                                </div>
                                <div class="custom-control custom-checkbox">
                                    <input type="checkbox" name="mediaclclear6" class="custom-control-input input-primary" id="mcrf6" value="medicalclearence6" >
                                    <label class="custom-control-label" for="mcrf6">Oral laser therapy</label>
                                </div>

                            </div>
                            <div class="col-4">
                                <div class="custom-control custom-checkbox">
                                    <input type="checkbox" name="mediaclclear7" class="custom-control-input input-primary" id="mcrf7" value="medicalclearence7">
                                    <label class="custom-control-label" for="mcrf7">Sinus Lift/Augmentation</label>
                                </div>
                                <div class="custom-control custom-checkbox">
                                    <input type="checkbox" name="mediaclclear8" class="custom-control-input input-primary" id="mcrf8" value="medicalclearence8" >
                                    <label class="custom-control-label" for="mcrf8">Oral bone/tissue abscess removal</label>
                                </div>
                                <div class="custom-control custom-checkbox">
                                    <input type="checkbox" name="mediaclclear9" class="custom-control-input input-primary" id="mcrf9" value="medicalclearence9">
                                    <label class="custom-control-label" for="mcrf9">Other <input type="text" name="mediclear4" id="mediclear4" class="col-9 dateborder" style="padding:0"></label>
                                </div>
                            </div>
                            <div class="col-4 col-xl-4 col-md-6" style='margin-top: 15px;'>
                                <canvas id="sign_63mcrf1" width="300" height="80"></canvas>
                                <p>Dentist's Signature <span style="color: red;margin: 20px;"><a onclick="sign_63mcrf1_clear()">Clear Signature</a></span></p>

                            </div>
                            <div class="col-4">
                                <span style="margin: 1px;position: inherit;">
                                    <p><input type="text" name="mediclear5" id="mediclear5" class="col-10 dateborder"></p>
                                    <p>Full Name</p>
                                </span>
                            </div>
                            <div class="col-4 col-xl-4 col-md-2">
                                <span style="margin: 1px;position: inherit;">
                                    <p><input type="text" name="mediclear6" id="mediclear6" autocomplete="off"  class=" notfuturedate col-auto dateborder" style="padding:0"></p>
                                    <p>Date</p>
                                </span>
                            </div>
                            <div class="col-8 col-sm-9">
                                <canvas id="sign_63mcrf2" width="480" height="80"></canvas>
                                <p>Patient's signature authorizing exchange of information between dentist and physician<span style="color: red;margin: 20px;"><a onclick="sign_63mcrf2_clear()">Clear Signature</a></span></p>
                            </div>
                            <div class="col-4 col-sm-auto">
                                <p><input type="text" name="mediclear7" id="mediclear7" autocomplete="off"  class=" notfuturedate col-auto dateborder" style="padding:0;"></p>
                                <p>Date</p>
                            </div>
                            <div class="col-12">
                                <p>For the Physician to complete:</p>
                                <div class="custom-control custom-checkbox">
                                    <input type="checkbox" name="mediaclclear10" class="custom-control-input input-primary" id="mcrf10" value="medicalclearence10">
                                    <label class="custom-control-label" for="mcrf10">
                                        Regarding information of above patient, please provide medical conditions, medications, lab report or concerns in
                                        relation to the medical care you have provided for that I should consider when planning for his/her Oral Maxillofacial treatment? (Enter ?none? if not applicable). <input type="text" name="mediclear8" id="mediclear8" class="col-5 dateborder">
                                    </label>
                                </div>
                                <div class="custom-control custom-checkbox">
                                    <input type="checkbox" name="mediaclclear11" class="custom-control-input input-primary" id="mcrf11" value="medicalclearence11" >
                                    <label class="custom-control-label" for="mcrf11">
                                        Please provide us a copy of medical record and any other related or relevant medical treatment(s), including medications.
                                    </label>
                                </div>
                            </div>
                            <div class="col-6" style="margin-top: 15px;"><h6>The patient has indicated the following medical condition:</h6></div>
                            <div class="col-3">
                                <div class="custom-control custom-checkbox">
                                    <input type="checkbox" name="mediaclclear12" class="custom-control-input input-primary" id="mcrf12" value="medicalclearence12" >
                                    <label class="custom-control-label" for="mcrf12">
                                        Kidney
                                    </label>
                                </div>
                            </div>
                            <div class="col-3">
                                <div class="custom-control custom-checkbox">
                                    <input type="checkbox" name="mediaclclear13" class="custom-control-input input-primary" id="mcrf13" value="medicalclearence13" >
                                    <label class="custom-control-label" for="mcrf13">
                                        Weight Loss Meds
                                    </label>
                                </div>
                            </div>

                            <div class="col-3">
                                <div class="custom-control custom-checkbox">
                                    <input type="checkbox" name="mediaclclear14" class="custom-control-input input-primary" id="mcrf14" value="medicalclearence14">
                                    <label class="custom-control-label" for="mcrf14">
                                        Diabetes
                                    </label>
                                </div>
                                <div class="custom-control custom-checkbox">
                                    <input type="checkbox" name="mediaclclear15" class="custom-control-input input-primary" id="mcrf15" value="medicalclearence15" >
                                    <label class="custom-control-label" for="mcrf15">
                                        Hypertension
                                    </label>
                                </div>
                                <div class="custom-control custom-checkbox">
                                    <input type="checkbox" name="mediaclclear16" class="custom-control-input input-primary" id="mcrf16" value="medicalclearence16" >
                                    <label class="custom-control-label" for="mcrf16">
                                        Sinus problem
                                    </label>
                                </div>
                            </div>
                            <div class="col-3">
                                <div class="custom-control custom-checkbox">
                                    <input type="checkbox" name="mediaclclear17" class="custom-control-input input-primary" id="mcrf17" value="medicalclearence17" >
                                    <label class="custom-control-label" for="mcrf17">
                                        Heart problem
                                    </label>
                                </div>
                                <div class="custom-control custom-checkbox">
                                    <input type="checkbox" name="mediaclclear18" class="custom-control-input input-primary" id="mcrf18" value="medicalclearence18" >
                                    <label class="custom-control-label" for="mcrf18">
                                        Osteoporosis
                                    </label>
                                </div>
                                <div class="custom-control custom-checkbox">
                                    <input type="checkbox" name="mediaclclear19" class="custom-control-input input-primary" id="mcrf19" value="medicalclearence19" >
                                    <label class="custom-control-label" for="mcrf19">
                                        Snore/Grinding
                                    </label>
                                </div>
                            </div>
                            <div class="col-3">
                                <div class="custom-control custom-checkbox">
                                    <input type="checkbox" name="mediaclclear20" class="custom-control-input input-primary" id="mcrf20" value="medicalclearence20" >
                                    <label class="custom-control-label" for="mcrf20">
                                        Stroke
                                    </label>
                                </div>
                                <div class="custom-control custom-checkbox">
                                    <input type="checkbox" name="mediaclclear21" class="custom-control-input input-primary" id="mcrf21" value="medicalclearence21">
                                    <label class="custom-control-label" for="mcrf21">
                                        Blood thinner
                                    </label>
                                </div>
                                <div class="custom-control custom-checkbox">
                                    <input type="checkbox" name="mediaclclear22" class="custom-control-input input-primary" id="mcrf22" value="medicalclearence22">
                                    <label class="custom-control-label" for="mcrf22">
                                        Sleep disorder
                                    </label>
                                </div>
                            </div>
                            <div class="col-3">
                                <div class="custom-control custom-checkbox">
                                    <input type="checkbox" name="mediaclclear23" class="custom-control-input input-primary" id="mcrf23" value="medicalclearence23">
                                    <label class="custom-control-label" for="mcrf23">
                                        Cardiac failure
                                    </label>
                                </div>
                                <div class="custom-control custom-checkbox">
                                    <input type="checkbox" name="mediaclclear24" class="custom-control-input input-primary" id="mcrf24" value="medicalclearence24">
                                    <label class="custom-control-label" for="mcrf24">
                                        Allergy, Type: <input type="text" name="mediclear9" id="mediclear9" class="col-6 dateborder"maxlength="15">
                                    </label>
                                </div>
                                <div class="custom-control custom-checkbox">
                                    <input type="checkbox" name="mediaclclear25" class="custom-control-input input-primary" id="mcrf25" value="medicalclearence25">
                                    <label class="custom-control-label" for="mcrf25">
                                        Other <input type="text" name="mediclear10" id="mediclear10" class="col-9 dateborder"maxlength="25">
                                    </label>
                                </div>

                            </div>
                            <div class="col-12" style="margin-top: 15px;">
                                <ul>
                                    <li>
                                        I have concerns about this patient's fitness for the planned dental treatment and request a consultation prior to oral surgery treatment: 
                                        <div class="custom-control custom-radio custom-control-inline">
                                            <input type="radio" name='medicalradio1' class="data_gender custom-control-input input-primary" id="mcrf26" value="Yes">
                                            <label class="custom-control-label" for="mcrf26">Yes</label>
                                        </div>
                                        <div class="custom-control custom-radio custom-control-inline">
                                            <input type="radio" name="medicalradio1" class="data_gender custom-control-input input-primary" id="mcrf27" value="No">
                                            <label class="custom-control-label" for="mcrf27">No</label>
                                        </div>

                                        <!--                                Yes<input type="text" name="mediclear11" id="mediclear11" class="col-1 dateborder" style="padding:0"> 
                                                                        No<input type="text" name="mediclear12" id="mediclear12" class="col-1 dateborder" style="padding:0">-->
                                    </li>
                                    <li>Is Antibiotic allowed/recommended? 
                                        <div class="custom-control custom-radio custom-control-inline">
                                            <input type="radio" name="medicalradio2" class="data_gender custom-control-input input-primary" id="mcrf28" value="Yes">
                                            <label class="custom-control-label" for="mcrf28">Yes</label>
                                        </div>
                                        <div class="custom-control custom-radio custom-control-inline">
                                            <input type="radio" name="medicalradio2" class="data_gender custom-control-input input-primary" id="mcrf29" value="No">
                                            <label class="custom-control-label" for="mcrf29">No</label>
                                        </div>
                                        <!--                                Yes <input type="text" name="mediclear13" id="mediclear13" class="col-1 dateborder"> 
                                                                        No <input type="text" name="mediclear14" id="mediclear14" class="col-1 dateborder" style="padding:0"></li>-->
                                    <li>Is local anesthetic, general anesthesia or I.V sedation restriction? 
                                        <div class="custom-control custom-radio custom-control-inline">
                                            <input type="radio" name="medicalradio3"  class="data_gender custom-control-input input-primary" id="mcrf30" value="Yes">
                                            <label class="custom-control-label" for="mcrf30">Yes</label>
                                        </div>
                                        <div class="custom-control custom-radio custom-control-inline">
                                            <input type="radio" name="medicalradio3" class="data_gender custom-control-input input-primary" id="mcrf31" value="No">
                                            <label class="custom-control-label" for="mcrf31">No</label>
                                        </div>
                                        <div class="custom-control custom-radio custom-control-inline">
                                            <input type="radio" name="medicalradio3" class="data_gender custom-control-input input-primary" id="mcrf32" value="Aip">
                                            <label class="custom-control-label" for="mcrf32">Avoid if possible</label>
                                        </div>
                                        <!--                                Yes<input type="text" name="mediclear15" id="mediclear15" class="col-1 dateborder" style="padding:0"> 
                                                                        No<input type="text" name="mediclear16" id="mediclear16" class="col-1 dateborder" style="padding:0"> Avoid if possible <input type="text" name="mediclear17" id="mediclear17" class="col-1 dateborder" style="padding:0"></li>-->
                                    <li>Type of pain medication allowed/recommended: <input type="text" name="mediclear11" id="mediclear11" class="col-5 dateborder">
                                    </li>
                                    <li>Is this patient cleared to have surgery? 
                                        <div class="custom-control custom-radio custom-control-inline">
                                            <input type="radio" name="medicalradio4" class="data_gender custom-control-input input-primary" id="mcrf33" value="Yes">
                                            <label class="custom-control-label" for="mcrf33">Yes</label>
                                        </div>
                                        <div class="custom-control custom-radio custom-control-inline">
                                            <input type="radio" name="medicalradio4" class="data_gender custom-control-input input-primary" id="mcrf34" value="No">
                                            <label class="custom-control-label" for="mcrf34">No</label>
                                        </div>

                                        <!--                                Yes <input type="text" name="mediclear19" id="mediclear19" class="col-1 dateborder"> 
                                                                        No <input type="text" name="mediclear20" id="mediclear20" class="col-1 dateborder">-->
                                    </li>
                                </ul>

                            </div>
                            <div class='col-3'>
                                <input type="text"  name="mediclear12" id="mediclear12"  class="col-12 dateborder ">Physician's name
                            </div>
                            <div class='col-3'>
                                <input type="text"  name="mediclear13" id="mediclear13"  class="col-12 dateborder" maxlength="10" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*?)\..*/g, '$1');">
                                Physician's phone
                            </div>
                            <div class='col-3'>
                                <input type="text"  name="mediclear14" id="mediclear14"  class="col-12 dateborder" maxlength="10" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*?)\..*/g, '$1');">
                                Physician's fax 
                            </div>
                            <div class='col-3' style="margin-bottom: 120px">
                                <input type="text" name="mediclear15" id="mediclear15" autocomplete="off"   class="col-12 dateborder  notfuturedate">
                                Today Date
                            </div>
                        </div>
                    </form>
                </div>  
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                <button type="button" class="btn btn-primary"id="buttonid" onclick="onMediClearance(this)">Submit</button>
            </div>
        </div>
    </div>
</div>


<script>

    function onMediClearance(buttonObj)
    {
        if(!$('#patientDate1').val())
           {
            msgbox("Date is Mandatory", "Patient Checklist", "error");
            return false;
           }
        $(buttonObj).attr('disabled', 'disabled');
        $(buttonObj).text('Sending...');

        $(buttonObj).off('click'); //disables click event
        var sign_63mcrf1 = window.sign_63mcrf1.toDataURL("image/png");
        var sign_63mcrf1_1 = sign_63mcrf1.replace('data:image/png;base64,', '');

        var sign_63mcrf2 = window.sign_63mcrf2.toDataURL("image/png");
        var sign_63mcrf2_1 = sign_63mcrf2.replace('data:image/png;base64,', '');

        let checkboxes = document.querySelectorAll('input[name="mediaclclear1"]:checked');
        let values = [];
        checkboxes.forEach((checkbox) => {
            values.push(checkbox.value);
        });


        let checkboxes1 = document.querySelectorAll('input[name="mediaclclear2"]:checked');
        let values1 = [];
        checkboxes1.forEach((checkbox) => {
            values1.push(checkbox.value);
        });


        let checkboxes2 = document.querySelectorAll('input[name="mediaclclear3"]:checked');
        let values2 = [];
        checkboxes2.forEach((checkbox) => {
            values2.push(checkbox.value);
        });


        let checkboxes3 = document.querySelectorAll('input[name="mediaclclear4"]:checked');
        let values3 = [];
        checkboxes3.forEach((checkbox) => {
            values3.push(checkbox.value);
        });


        let checkboxes4 = document.querySelectorAll('input[name="mediaclclear5"]:checked');
        let values4 = [];
        checkboxes4.forEach((checkbox) => {
            values4.push(checkbox.value);
        });


        let checkboxes5 = document.querySelectorAll('input[name="mediaclclear6"]:checked');
        let values5 = [];
        checkboxes5.forEach((checkbox) => {
            values5.push(checkbox.value);
        });


        let checkboxes6 = document.querySelectorAll('input[name="mediaclclear7"]:checked');
        let values6 = [];
        checkboxes6.forEach((checkbox) => {
            values6.push(checkbox.value);
        });


        let checkboxes7 = document.querySelectorAll('input[name="mediaclclear8"]:checked');
        let values7 = [];
        checkboxes7.forEach((checkbox) => {
            values7.push(checkbox.value);
        });


        let checkboxes8 = document.querySelectorAll('input[name="mediaclclear9"]:checked');
        let values8 = [];
        checkboxes8.forEach((checkbox) => {
            values8.push(checkbox.value);
        });


        let checkboxes9 = document.querySelectorAll('input[name="mediaclclear10"]:checked');
        let values9 = [];
        checkboxes9.forEach((checkbox) => {
            values9.push(checkbox.value);
        });


        let checkboxes10 = document.querySelectorAll('input[name="mediaclclear11"]:checked');
        let values10 = [];
        checkboxes10.forEach((checkbox) => {
            values10.push(checkbox.value);
        });


        let checkboxes11 = document.querySelectorAll('input[name="mediaclclear12"]:checked');
        let values11 = [];
        checkboxes11.forEach((checkbox) => {
            values11.push(checkbox.value);
        });


        let checkboxes12 = document.querySelectorAll('input[name="mediaclclear13"]:checked');
        let values12 = [];
        checkboxes12.forEach((checkbox) => {
            values12.push(checkbox.value);
        });


        let checkboxes13 = document.querySelectorAll('input[name="mediaclclear14"]:checked');
        let values13 = [];
        checkboxes13.forEach((checkbox) => {
            values13.push(checkbox.value);
        });


        let checkboxes14 = document.querySelectorAll('input[name="mediaclclear15"]:checked');
        let values14 = [];
        checkboxes14.forEach((checkbox) => {
            values14.push(checkbox.value);
        });

        let checkboxes15 = document.querySelectorAll('input[name="mediaclclear16"]:checked');
        let values15 = [];
        checkboxes15.forEach((checkbox) => {
            values15.push(checkbox.value);
        });

        let checkboxes16 = document.querySelectorAll('input[name="mediaclclear17"]:checked');
        let values16 = [];
        checkboxes16.forEach((checkbox) => {
            values16.push(checkbox.value);
        });


        let checkboxes17 = document.querySelectorAll('input[name="mediaclclear18"]:checked');
        let values17 = [];
        checkboxes17.forEach((checkbox) => {
            values17.push(checkbox.value);
        });


        let checkboxes18 = document.querySelectorAll('input[name="mediaclclear19"]:checked');
        let values18 = [];
        checkboxes18.forEach((checkbox) => {
            values18.push(checkbox.value);
        });


        let checkboxes19 = document.querySelectorAll('input[name="mediaclclear20"]:checked');
        let values19 = [];
        checkboxes19.forEach((checkbox) => {
            values19.push(checkbox.value);
        });


        let checkboxes20 = document.querySelectorAll('input[name="mediaclclear21"]:checked');
        let values20 = [];
        checkboxes20.forEach((checkbox) => {
            values20.push(checkbox.value);
        });


        let checkboxes21 = document.querySelectorAll('input[name="mediaclclear22"]:checked');
        let values21 = [];
        checkboxes21.forEach((checkbox) => {
            values21.push(checkbox.value);
        });


        let checkboxes22 = document.querySelectorAll('input[name="mediaclclear23"]:checked');
        let values22 = [];
        checkboxes22.forEach((checkbox) => {
            values22.push(checkbox.value);
        });


        let checkboxes23 = document.querySelectorAll('input[name="mediaclclear24"]:checked');
        let values23 = [];
        checkboxes23.forEach((checkbox) => {
            values23.push(checkbox.value);
        });


        let checkboxes24 = document.querySelectorAll('input[name="mediaclclear25"]:checked');
        let values24 = [];
        checkboxes24.forEach((checkbox) => {
            values24.push(checkbox.value);
        });

        let checkboxes25 = document.querySelectorAll('input[name="medicalradio1"]:checked');
        let values25 = [];
        checkboxes25.forEach((checkbox) => {
            values25.push(checkbox.value);
        });

        let checkboxes26 = document.querySelectorAll('input[name="medicalradio2"]:checked');
        let values26 = [];
        checkboxes26.forEach((checkbox) => {
            values26.push(checkbox.value);
        });

        let checkboxes27 = document.querySelectorAll('input[name="medicalradio3"]:checked');
        let values27 = [];
        checkboxes27.forEach((checkbox) => {
            values27.push(checkbox.value);
        });

        let checkboxes28 = document.querySelectorAll('input[name="medicalradio4"]:checked');
        let values28 = [];
        checkboxes28.forEach((checkbox) => {
            values28.push(checkbox.value);
        });



        var patientname = $('#mediclear1').val();
        var patientdob = $('#mediclear2').val();
        var faxnum = $('#faxmed').val();
        var patienttxt1 = $('#mediclear3').val();
        var patienttxt2 = $('#mediclear4').val();
        var patientfullname = $('#mediclear5').val();
        var currentdate1 = $('#mediclear6').val();
        var currentdate2 = $('#mediclear7').val();
        var patienttxt3 = $('#mediclear8').val();
        var patienttxt4 = $('#mediclear9').val();
        var patienttxt5 = $('#mediclear10').val();
        var patienttxt6 = $('#mediclear11').val();
        var physicianname = $('#mediclear12').val();
        var physicianphnnum = $('#mediclear13').val();
        var physicianfaxnum = $('#mediclear14').val();
        var currentdate3 = $('#mediclear15').val();
        var currentDate = $('#patientDate1').val();

        $.ajax({
            url: "generatemedicalclearancepdf",
            type: "POST", //send it through get method
            data: {

                patientname: patientname,
                patientid: $("#patientCombo option:selected").val(),
                patientdob: patientdob,
                faxnum: faxnum,
                patientcheckbox1: values,
                patientcheckbox2: values1,
                patientlastname: $("#inputLastName").val(),
                patientfirstname: $("#inputFirstName").val(),
                patientcheckbox3: values2,
                patientcheckbox4: values3,
                patientcheckbox5: values4,
                patientcheckbox6: values5,
                patientcheckbox7: values6,
                patientcheckbox8: values7,
                patientcheckbox9: values8,
                patienttxt1: patienttxt1,
                dentistsignature: sign_63mcrf1_1,
                patienttxt2: patienttxt2,
                patientfullname: patientfullname,
                patientsignature: sign_63mcrf2_1,
                currentdate1: currentdate1,
                patientcheckbox10: values9,
                currentdate2: currentdate2,
                patientcheckbox11: values10,
                patientcheckbox12: values11,
                patientcheckbox13: values12,
                patientcheckbox14: values13,
                patientcheckbox15: values14,
                patientcheckbox16: values15,
                patientcheckbox17: values16,
                patientcheckbox18: values17,
                patientcheckbox19: values18,
                patientcheckbox20: values19,
                patientcheckbox21: values20,
                patientcheckbox22: values21,
                patientcheckbox23: values22,
                patientcheckbox24: values23,
                patienttxt3: patienttxt3,
                patientcheckbox25: values24,
                patienttxt4: patienttxt4,
                patientcheckbox26: values25,
                patientcheckbox27: values26,
                patientcheckbox28: values27,
                patienttxt5: patienttxt5,
                patientcheckbox29: values28,
                patienttxt6: patienttxt6,
                physicianname: physicianname,
                physicianphnnum: physicianphnnum,
                physicianfaxnum: physicianfaxnum,
                currentdate3: currentdate3,
                currentDate :currentDate

            },
            success: function (response) {
                if (response.length > 0)
                { 
                    $("#Medical_Clearance_Request_Form").modal('hide');
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
        window.sign_63mcrf1 = new SignaturePad($('#sign_63mcrf1').get(0), {});
        window.sign_63mcrf2 = new SignaturePad($('#sign_63mcrf2').get(0), {});
    });

    var sign_63mcrf1_clear = function () {
        window.sign_63mcrf1.clear()
    }
    var sign_63mcrf2_clear = function () {
        window.sign_63mcrf2.clear()
    }
</script>

<div class="modal fade centerAligned" id="Riskmanagement_cbct_scan_forms" tabindex="-1" data-backdrop="static" data-keyboard="false" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-xl">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title" id="myModalLabel">
                    Sample CBCT Scan Documents    
                </h4>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>

            </div>
            <div class="container">
                <form id="form_risk">
                    <div class="card-body">
                        <div class="row">
                            <div class="col-4 col-xl-4 col-md-6">Patient Name:<input type="text" name="risk1" id="risk1" readonly  class="col-8 dateborder data_patient_name"></div>   

                            <div class="col-4 col-xl-4 col-md-6"><label class="">Sex</label>
                                <div class="custom-control custom-radio custom-control-inline">
                                    <input type="radio" name="riskmgmt" value="1" class="data_gender data_gender custom-control-input input-primary" id="rs1"  onclick="return false;">
                                    <label class="custom-control-label" for="rs1">Male</label>
                                </div>
                                <div class="custom-control custom-radio custom-control-inline">
                                    <input type="radio" name="riskmgmt" value="2" class="data_gender custom-control-input input-primary" id="rs2"  onclick="return false;">
                                    <label class="custom-control-label" for="rs2">Female</label>
                                </div>
                                <div class="custom-control custom-radio custom-control-inline">
                                    <input type="radio" name="riskmgmt" value="3" class="data_gender custom-control-input input-primary" id="rs3"  onclick="return false;">
                                    <label class="custom-control-label" for="rs3">Other</label>
                                </div>
                            </div>

                            <div class="col-4" style="margin-top: 10px; margin-bottom: 15px;"> Date :<input type="text"  name="risk2" id="risk2" autocomplete="off" class=" notfuturedate dateborder"></div>

                       <div class="col-6 col-xl-6 col-md-8" style="margin-top: 10px;">Practice Name:<input type="text" name="risk34" id="risk34" readonly class="col-9 dateborder data_practice_name"> </div>

                        </div>

                        <!--                         <div class="col-8">
                                                        <p>Patient Name:
                                                        <input type="text" class="data_patient_name col-10 dateborder">  </div> </p>
                                                             <div class="col-8"> 
                                                                 <p> Date  : <input type="date" name="risk33" id="risk33" class="data_currentdate notfuturedate col-10 dateborder" ></div>
                                                            
                                                        </p>-->


                        <p>Purpose of Forms</p>
                        <div>
                            <ol>
                                <li>
                                    &nbsp; The CBCT Scan Informed Consent: advises patients of the risks, benefits, and alternatives to the
                                    proposed procedure.
                                </li>
                                <li>
                                    &nbsp; The CBCT Scan Referral form: provides the dentist taking the CBCT Scan with information necessary
                                    to process the request.
                                </li>
                                <li>
                                    &nbsp; The Notification of Non-Read: advises the patient that the secondary provider and his/her staff will
                                    NOT be responsible for interpreting the scan.
                                </li>
                            </ol>
                        </div>
                        <p>Instructions for Use</p>
                        <ol style="list-style-type: upper-alpha">
                            <li>
                                The CBCT Scan Informed Consent: The form is part of the informed consent discussion for dentists
                                requesting their patient undergo a CBCT Scan. Regardless of whether your office provides the CBCT
                                Scan for the patient or you refer the patient to another provider's office to receive the CBCT Scan,
                                you should obtain informed consent from the patient for the procedure.
                            </li>
                            <li>
                                The CBCT Scan Referral form: Complete and provide this form to the dentist taking the CBCT scan.
                            </li>
                            <li>
                                The Notification of Non-Read: If the CBCT Scan is taken at an office that is not a care provider for the
                                patient, the patient should sign the notice of non-read and a copy of that notice should be sent to the
                                referring dentist. 
                            </li>
                        </ol>
                        <h5>Discussion and Informed Consent for Cone Beam Computerized Tomography</h5>
                        <div class="row">
                            <div class="col-8 col-xl-8 col-md-8">
                                <p>Patient Name:
                                    <input type="text" name="risk1" id="risk1" class="data_patient_name col-8 dateborder">
                                </p>
                            </div>
                            <div class="col-4 col-xl-4 col-md-3">
                                <p>Date:

                                    <input type="text" name="risk2"  id="risk2" autocomplete="off" class=" notfuturedate dateborder">

                                </p>
                            </div>
                            <div class="col-12">
                                <p>Diagnosis :
                                    <input type="text" name="risk3" id="risk3" class="col-10 dateborder" style="padding:0" maxlength="80">
                                </p>
                            </div>
                            <div class="col-12">
                                <p>Treatment :
                                    <input type="text" name="risk4" id="risk4" class="col-10 dateborder" style="padding:0" maxlength="80">
                                </p>
                            </div>
                        </div>
                        <h5>Facts for Consideration</h5>
                        <p>Patient's initials required</p>
                        <p><canvas id="sign_232rcsf1" width="100" height="40"></canvas>
                            <span style="position: absolute; color: red"><a onclick="sign_232rcsf1_clear()" >Clear Signature</a></span>
                            &ensp; A Cone Beam Computerized Tomography (CBCT) scan, is an X-ray technique that can produce three-
                            dimensional (3-D) images of your head and allows visualization of internal bony structures in cross
                            section rather than as overlapping images typically produced by conventional two-dimensional (2-D) X-
                            ray exams. Dentists use CBCT scans to visualize many areas, including bony structures, such as your teeth
                            and jaws, but not necessarily soft tissue, such as your tongue or gums.</p>



                        <h5>Benefits of CBCT Scan, Not Limited to the Following:</h5>
                        <p><canvas id="sign_232rcsf2" width="100" height="40"></canvas>
                            <span style="position: absolute; color: red"><a onclick="sign_232rcsf2_clear()" >Clear Signature</a></span>&ensp;A conventional X-ray of your mouth limits your dentist to a 2-D (flat) visualization. Some diagnosis and
                            treatment planning can be aided with a more complete visualization by way of 3-D anatomy. CBCT
                            scans can provide dentists with 3-D information when planning some treatment such as dental implants,
                            surgical extractions, maxillofacial surgery and advanced dental restorative procedures.</p>
                        <p><canvas id="sign_232rcsf3" width="100" height="40"></canvas>
                            <span style="position: absolute; color: red"><a onclick="sign_232rcsf3_clear()" >Clear Signature</a></span>&ensp;Greater opportunity to diagnose conditions such as vertical root fractures that can be missed on
                            conventional X-ray films.</p>
                        <p><canvas id="sign_232rcsf4" width="100" height="40"></canvas>
                            <span style="position: absolute; color: red"><a onclick="sign_232rcsf4_clear()" >Clear Signature</a></span>&ensp; Greater chance of providing images and information that may allow better evaluation of the necessity of
                            a particular dental treatment.</p>
                        <p><canvas id="sign_232rcsf5" width="100" height="40"></canvas>
                            <span style="position: absolute; color: red"><a onclick="sign_232rcsf5_clear()" >Clear Signature</a></span>&ensp; Potential for improved diagnosis of third molar (wisdom teeth) and other teeth positioning in proximity to
                            vital structures, such as nerves and blood vessels and sinuses prior to removal.</P>
                        <p><canvas id="sign_232rcsf6" width="100" height="40"></canvas>
                            <span style="position: absolute; color: red"><a onclick="sign_232rcsf6_clear()" >Clear Signature</a></span>&ensp; Potential for increased accuracy when planning implant placement surgery.</p>


                        <h5>Risks of CBCT Scan, Not Limited to the Following:</h5>
                        <p><canvas id="sign_232rcsf7" width="100" height="40"></canvas>
                            <span style="position: absolute; color: red"><a onclick="sign_232rcsf7_clear()" >Clear Signature</a></span>&ensp; CBCT scans, like conventional X-rays, expose you to radiation. The dose of radiation used for the CBCT
                            scan is controlled to allow the smallest dose used that will still give sufficient data to achieve a useful
                            result. The dosage per scan is equivalent to two (2) regular dental X-rays. Scientists have linked radiation
                            exposure with a slightly higher risk of developing cancer; however, the advantages of the CBCT scan
                            generally outweigh the risks.</p>
                        <p><canvas id="sign_232rcsf8" width="100" height="40"></canvas>
                            <span style="position: absolute; color: red"><a onclick="sign_232rcsf8_clear()" >Clear Signature</a></span>&ensp; X-ray imaging of the mouth is generally not contraindicated in pregnancy and should be utilized as
                            required to complete a full examination, diagnosis and treatment plan. Please advise your dentist if you
                            are pregnant or planning to become pregnant so that your dentist can make the best determination of the
                            types of radiographs needed to ensure you receive the lowest amount of reasonably achievable radiationfor your dental treatment needs and can discuss whether the benefits of the scan outweigh the risks.
                            Discuss concerns specific to X-rays during pregnancy with your physician.</p>
                        <p><canvas id="sign_232rcsf9" width="100" height="40"></canvas>
                            <span style="position: absolute; color: red"><a onclick="sign_232rcsf9_clear()" >Clear Signature</a></span>&ensp; The CBCT scan may or may not reveal coincidental medical findings unrelated to your dental condition,
                            dental care and dental treatment. A CBCT scan is a diagnostic procedure intended solely to facilitate
                            diagnosis of your dental condition and your dental care and to help plan your dental treatment. The
                            CBCT scan will be evaluated solely for the purposes associated with the dental procedures discussed in
                            your treatment plan. The data obtained during this study may result in incidental findings unrelated to
                            your dental condition, dental care and dental treatment and are beyond the scope and purpose of your
                            dental condition. Your dentist is not a physician or a specialist qualified to make the assessment
                            concerning anatomy and pathology beyond your mouth and jaw. As a result, you may elect to have the
                            CBCT scan data evaluated by a physician or dental and or medical radiologist.</p>


                        <h5>Alternatives to CBCT Scan, Not Limited to the Following:</h5>
                        <p><canvas id="sign_232rcsf10" width="100" height="40"></canvas>
                            <span style="position: absolute; color: red"><a onclick="sign_232rcsf10_clear()" >Clear Signature</a></span>&ensp; An alternative to CBCT scans are conventional X-rays; however, they have limitations. Conventional X-
                            rays of your mouth and jaws limit your dentist to evaluating anatomical structures in a two-dimensional
                            view. A more complete understanding of complex 3-D anatomy can enhance your diagnosis and
                            treatment planning. The relationship of anatomical structures in three dimensions is important in assessing
                            your condition as well as treatment planning for dental implants, surgical extractions, endodontic
                            treatment, oral surgery or advanced dental restorative procedures. CBCT scans may be useful in
                            evaluating and potentially diagnosing conditions that cannot be fully appreciated with conventional X-
                            rays. The use of CBCT should be a decision between you and your dentist.</p>

                        <h5>Check the boxes below that apply to you:</h5>
                        <h5>Consent</h5>
                        <div class="custom-control custom-checkbox custom-control-inline">
                            <input type="checkbox" name="sfcfradio01" class="custom-control-input input-primary riskcbct_chk" id="rcsf01" value="riskmgmt0">
                            <label class="custom-control-label" for="rcsf01">I have been informed both verbally and by the information provided on this form of the risks and benefits of the
                                proposed CBCT scan as described above.</label>
                        </div>
                        <div class="custom-control custom-checkbox custom-control-inline">
                            <input type="checkbox" name="sfcfradio2" class="custom-control-input input-primary riskcbct_chk" id="rcsf2" value="riskmgmt1">
                            <label class="custom-control-label" for="rcsf2"> I have been informed both verbally and by the information provided on this form of the material risks and
                                benefits of alternative X-rays and of electing not to have the scan performed.</label>
                        </div>
                        <div class="custom-control custom-checkbox custom-control-inline">
                            <input type="checkbox" name="sfcfradio3" class="custom-control-input input-primary riskcbct_chk" id="rcsf3" value="riskmgmt2">
                            <label class="custom-control-label" for="rcsf3">I certify that I have read and understand the above information and that the explanations referred to are
                                understood by me, that my questions have been answered and that the blanks requiring insertions or completion
                                have been filled in. I authorize and direct Dr.<input type="text" name="risk5" id="risk5" class="riskcbct_chk col-8 dateborder" maxlength="60"> to do whatever he/she deems
                                necessary and advisable under the circumstances.</label>
                        </div>
                        <div class="custom-control custom-checkbox custom-control-inline">
                            <input type="checkbox" name="sfcfradio_41" class="custom-control-input input-primary riskcbct_chk" id="rcsf41" value="riskmgmt3">
                            <label class="custom-control-label" for="rcsf41">I consent to have the above-mentioned CBCT scan.</label>
                        </div>
                        <div class="custom-control custom-checkbox custom-control-inline">
                            <input type="checkbox" name="sfcfradio5" class="custom-control-input input-primary riskcbct_chk" id="rcsf5" value="riskmgmt4">
                            <label class="custom-control-label" for="rcsf5">While the scan may be covered by my medical and/or dental insurance, I accept any financial responsibility
                                for this scan and authorize the scan.</label>
                        </div>
                        <h5>or</h5>
                        <h5>Refusal</h5>
                        <div class="custom-control custom-checkbox custom-control-inline">
                            <input type="checkbox" name="sfcfradio6" class="custom-control-input input-primary refusal_riskcbct" id="rcsf6" value="riskmgmt5">
                            <label class="custom-control-label" for="rcsf6">I refuse to give my consent for the proposed CBCT scan described above and understand the potential
                                consequences associated with this refusal. <b>Note:</b> Failure to have a CBCT scan may result in failure to detect or
                                diagnose significant disease and associated potential harm.</label>
                        </div>
                        <div class='row' style="margin-top: 20px;">
                            <div class="col-7">
                                <!--=============================================signature==================-->                  
                                <div class="row">
                                    <div class="col-12">
                                        <canvas id="sign_232rcsf11" width="480" height="80" class="col-12"> </canvas>
                                    </div>
                                </div>
                                <p>Patient or Patient's Representative 
                                    <span style="color: red;margin: 20px;"><a onclick="sign_232rcsf11_clear();">Clear Signature</a></span>
                                </p>
                                <!--=============================================signature==================-->
                            </div>
                            <div class="col-4" style="display: flex; align-items: flex-end;height: 75px;">

                                Date:<input type="text" name="risk6"  id="risk6" autocomplete="off" class=" notfuturedate col-auto dateborder" style="padding:0">   

                            </div>  
                            <!--======================= Witness Signature======================-->
                            <div class="col-7">
                                <div class="row">
                                    <div class="col-12">
                                        <canvas id="sign_232rcsf12" width="480" height="80" class="col-12">		 			
                                        </canvas>
                                    </div>
                                </div>
                                <p>Witness Signature <span style="color: red;margin: 20px;"><a onclick="sign_232rcsf12_clear();">Clear Signature</a></span></p>
                            </div>
                            <div class="col-4" style="display: flex;align-items: flex-end;height: 75px;">

                                Date:<input type="text" name="risk7"  id="risk7" autocomplete="off" class=" notfuturedate col-auto dateborder" style="padding:0">   

                            </div>
                            <!--=======================================================-->
                           
                            <p class="col-12">  I attest that I have discussed the risks, benefits, consequences and alternatives of the above 
                                treatment with
                                <input type="text" name="risk8" id="risk8" class="col-5 dateborder" maxlength="60"> (Patient or Patient's Representative) and they have had
                                the opportunity to ask questions. I believe they understand what has been explained and consents or refuses
                                treatment CBCT.</p>
                            <!--======================= Witness Signature======================-->
                            <div class="col-7">
                                <!--=============================================signature==================-->                  
                                <div class="row">
                                    <div class="col-12">
                                        <canvas id="sign_232rcsf13" width="480" height="80" class="col-12">		 			
                                        </canvas>
                                    </div>
                                </div>
                                <p>Dentist Signature <span style="color: red;margin: 20px;"><a onclick="sign_232rcsf13_clear();">Clear Signature</a></span></p>
                            </div>
                            <div class="col-4" style="display: flex;align-items: flex-end;height: 75px;">

                                Date:<input type="text" name="risk9"  id="risk9" autocomplete="off" class=" notfuturedate col-auto dateborder" style="padding:0">   

                            </div>
                        </div>
                        <div class='container'>
                            <h4>CBCT Scan Referral Form</h4>
                            <p>Referring Doctor:<input type="text" name="risk10" id="risk10" class="col-7 dateborder" maxlength="80"> </p>
                            <h5>Patient Information</h5>
                            <div class='row'>
                                <div class='col-2'><p>First Name: </p></div>
                                <div class='col-4'><input type="text" name="risk11" id="risk11" readonly class="data_inputFirstname col-12 dateborder"></div>

                                <div class='col-2'><p>Last Name: </p></div>
                                <div class='col-4'><input type="text" name="risk12" id="risk12" readonly class="data_inputLastname col-12 dateborder"></div>

                                <div class='col-2'><p>Date of Birth: </p></div>
                                <div class='col-4'><input type="date" name="risk13" id="risk13"  class="data_inputDOB col-12 dateborder"></div>

                                <div class='col-2'><p>Office Chart#<span>(optional):</span></p></div>
                                <div class='col-4'><input type="text" name="risk14" id="risk14" class="col-12 dateborder" maxlength="25"></div>        
                            </div>
                            <h5>Contact Information</h5>
                            <div class="row justify-content-start">
                                <div class="col-2">
                                    <p>Home Phone:</p>
                                </div>
                                <div class="col-4">
                                    <input type="text" name="risk15" id="risk15" class="data_inputPhone col-12 dateborder" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*?)\..*/g, '$1');">
                                </div>
                                <div class='col-6'>&nbsp;</div>
                                <div class="col-2">
                                    <p>Work Phone :</p>
                                </div>
                                <div class="col-4">
                                    <input type="text" name="risk16" id="risk16" class="data_inputPhone col-12 dateborder" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*?)\..*/g, '$1');">
                                </div>
                                <div class='col-6'>&nbsp;</div>
                                <div class="col-2">
                                    <p>Mobile :</p>
                                </div>
                                <div class="col-4">
                                    <input type="text" name="risk17" id="risk17" class="data_inputPhone col-12 dateborder" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*?)\..*/g, '$1');">
                                </div>
                                <div class='col-6'>&nbsp;</div>
                                <div class="col-2">
                                    <p>Special Instructions: :</p>
                                </div>
                                <div class="col-10">
                                    <input type="text" name="risk18" id="risk18" class="col-12 dateborder" maxlength="80">
                                    <input type="text" name="risk19"  id="risk19" class="col-12 dateborder" maxlength="80">
                                    <input type="text" name="risk20" id="risk20" class="col-12 dateborder" maxlength="80">
                                </div>
                                <div class="col-2" style='margin-top: 15px'>
                                    <p>Send by:</p>
                                </div>
                                <div class="" style='margin-top: 15px'>
                                    <div class="custom-control custom-radio custom-control-inline">
                                        <input type="radio" name="riskradio" class="custom-control-input input-primary" id="rcsf7_1" value="CD">
                                        <label class="custom-control-label" for="rcsf7_1">CD</label>
                                    </div>
                                </div> 
                                <div class="" style='margin-top: 15px'>
                                    <div class="custom-control custom-radio custom-control-inline">
                                        <input type="radio" name="riskradio" class="custom-control-input input-primary" id="rcsf8" value="Printed">
                                        <label class="custom-control-label" for="rcsf8">Printed</label>
                                    </div>
                                </div> 
                                <div class="col-3" style='margin-top: 15px'>
                                    <div class="custom-control custom-radio custom-control-inline">
                                        <input type="radio" name="riskradio" class="custom-control-input input-primary" id="rcsf9" value="Office">
                                        <label class="custom-control-label" for="rcsf9">Office email on file</label>
                                    </div>
                                </div> 
                                <div class="" style='margin-top: 15px'>
                                    <div class="custom-control custom-radio custom-control-inline">
                                        <input type="radio" name="riskradio" class="custom-control-input input-primary" id="rcsf10" value="Other">
                                        <label class="custom-control-label" for="rcsf10">Other:</label>
                                    </div>
                                </div> 
                                <div class="" style='margin-top: 15px'>
                                    <input type="text" name="risk21" id="risk21" class="col-12 dateborder" maxlength="25">
                                </div>        
                            </div>
                            <h5>Signature and Acknowledgement</h5>
                            <div class='row'>        
                                <p>I understand that <input type="text" name="risk022" id="risk022" class="col-5 dateborder" maxlength="50">involvement in connection with this referral is
                                    limited to taking the scan. <input type="text" name="risk23" id="risk23" class="col-5 dateborder" maxlength="50"> and employees of the practice will not participate
                                    in any interpretation of the images; the preparation and issuance of the report; communicating the results of the
                                    study to the patient; or counseling the patient on appropriate follow-up as may be required in the exercise of my
                                    clinical and professional judgment. By executing this referral form, I understand, acknowledge, and accept the
                                    responsibility that, as the referring dentist it is my sole responsibility to communicate the results of the study to the
                                    patient, and to provide appropriate consultation and follow-up with the patient. I further agree to protect, defend,
                                    indemnify and hold <input type="text" name="risk24" id="risk24" class="col-5 dateborder" maxlength="50"> completely harmless in discharging those
                                    responsibilities to the patient. I understand that no doctor-patient relationship between my patient and
                                    <input type="text" name="risk25" id="risk25" class="col-5 dateborder" maxlength="50"> exists because of his or her office taking this image.</p>

                                <!--======================= Witness Signature======================-->
                                <div class="col-6">
                                    <div class="row">
                                        <div class="col-12">
                                            <canvas id="sign_232rcsf14" width="480" height="80" class="col-12">		 			
                                            </canvas>
                                        </div>
                                    </div>
                                    <p>Referring Dentist Signature/Print Name <span style="color: red;margin: 20px;"><a onclick="sign_232rcsf14_clear();">Clear Signature</a></span></p>
                                </div>
                                <div class="col-4" style="display: flex;align-items: flex-end;height: 75px;">

                                    Date:<input type="text"  name="risk26" id="risk26" autocomplete="off" class=" notfuturedate col-auto dateborder">   

                                </div>
                            </div>

                            <h5>Notice of Non-Read Cone Beam Computerized Tomography (CBCT) Scan</h5>
                            <p>Referring Doctor:<input type="text" name="risk27" id="risk27" class="col-7 dateborder" maxlength="80"> </p>
                            <h5>Patient Information</h5>
                            <div class='row'>
                                <div class='col-2'><p>First Name: </p></div>
                                <div class='col-4'><input type="text" name="" id="" class="data_patient_name col-12 dateborder"></div>

                                <div class='col-2'><p>Last Name: </p></div>
                                <div class='col-4'><input type="text" name="" id="" class="data_patient_name col-12 dateborder"></div>

                                <div class='col-2'><p>Date of Birth: </p></div>
                                <div class='col-4'><input type="date" name="" id="" class="data_inputDOB col-12 dateborder"></div>
                            </div>

                            <h5>Signature and Acknowledgement</h5>
                            <p>Patient's initials required</p>
                            <div class='row'>

                                <div class="col-11">
                                    <p><canvas id="sign_232rcsf15" width="100" height="40"></canvas>
                                        <span style="position: absolute; color: red"><a onclick="sign_232rcsf15_clear()" >Clear Signature</a></span>
                                        &ensp; I understand that <input type="text" name="risk28" id="risk28" class="col-8 dateborder" maxlength="65">involvement in connection with this referral is limited to taking the scan.</p>
                                </div>

                                <div class="col-11">
                                    <p><canvas id="sign_232rcsf16" width="100" height="40"></canvas>
                                        <span style="position: absolute; color: red"><a onclick="sign_232rcsf16_clear()" >Clear Signature</a></span>
                                        &ensp; 
                                        <input type="text" name="risk29" id="risk29" class="col-8 dateborder" maxlength="65"> and employees of the practice will not
                                        participate in any interpretation of the images; the preparation and issuance of the report;
                                        communicating the results of the study; or counseling the patient on appropriate follow-up as may
                                        be required in the exercise of clinical and professional judgment.
                                    </p>
                                </div>
                                <div class="col-11">
                                    <p><canvas id="sign_232rcsf17" width="100" height="40"></canvas>
                                        <span style="position: absolute; color: red"><a onclick="sign_232rcsf17_clear()" >Clear Signature</a></span>
                                        &ensp; By signing this form, I understand, acknowledge and accept that my referring dentist has the sole
                                        responsibility to communicate the results of the study to me and to provide appropriate
                                        consultation and follow-up</p>
                                </div>

                                <div class="col-11">
                                    <p><canvas id="sign_232rcsf18" width="100" height="40"></canvas>
                                        <span style="position: absolute; color: red"><a onclick="sign_232rcsf18_clear()" >Clear Signature</a></span>
                                        &ensp;  I understand that <input type="text" name="risk30" id="risk30" class="col-8 dateborder" maxlength="65"> will be responsible for reviewing, evaluating,
                                        and diagnosing the imaging data.</p>
                                </div>
                                <div class="col-11">
                                    <p><canvas id="sign_232rcsf19" width="100" height="40"></canvas>
                                        <span style="position: absolute; color: red"><a onclick="sign_232rcsf19_clear()" >Clear Signature</a></span>
                                        &ensp; Furthermore, I understand that no doctor-patient relationship between <input type="text" name="risk31" id="risk31" class="col-8 dateborder" maxlength="65"> and me is formed because of his or her office taking this image.</p>
                                </div>
                                <!--======================= Witness Signature======================-->
                                <div class="col-6 col-md-7 col-xl-6" style="margin-bottom: 20px;">
                                    <!--=============================================signature==================-->                  
                                    <div class="row">
                                        <div class="col-12">
                                            <canvas id="sign_232rcsf20" width="480" height="80" class="col-12">		 			
                                            </canvas>
                                        </div>
                                    </div>
                                    <p class="col-12" style="display: contents">Patient or Patient's Representative Signature <span style="color: red;margin: 20px;"><a onclick="sign_232rcsf20_clear()">Clear Signature</a></span></p>
                                </div>
                                <div class="col-4" style="display: flex;align-items: flex-end;height: 75px;">

                                    Date:<input type="text"  name="risk32" id="risk32" autocomplete="off" class=" notfuturedate col-auto dateborder">   

                                </div>


                                <!--======================= Witness Signature======================-->
                                <div class="col-6">
                                    <div class="row">
                                        <div class="col-12">
                                            <canvas id="sign_232rcsf21" width="480" height="80" class="col-12">		 			
                                            </canvas>
                                        </div>
                                    </div>
                                    <p>Witness Signature <span style="color: red;margin: 20px;"><a onclick="sign_232rcsf21_clear()">Clear Signature</a></span></p>
                                </div>
                                <div class="col-4" style="display: flex;align-items: flex-end;height: 75px; margin-bottom: 145px">

                                    Date:<input type="text"  name="risk33" id="risk33" autocomplete="off" class=" notfuturedate col-auto dateborder">   

                                </div> 
                            </div>  

                        </div>

                    </div>  
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                <button type="button" class="btn btn-primary"id="buttonid" onclick="onRisk(this)">Submit</button>
            </div>
        </div>
    </div>
</div>
<!--==================================================================================-->

<script>


    function onRisk(buttonObj)
    {
        if(!$('#risk2').val())
           {
            msgbox("Date is Mandatory", "Patient Checklist", "error");
            return false;
           }
        $(buttonObj).attr('disabled', 'disabled');
        $(buttonObj).text('Sending...');

        $(buttonObj).off('click'); //disables click event
       
        var sign_232rcsf1 = window.sign_232rcsf1.toDataURL("image/png");
        var sign_232rcsf1_1 = sign_232rcsf1.replace('data:image/png;base64,', '');

        var sign_232rcsf2 = window.sign_232rcsf2.toDataURL("image/png");
        var sign_232rcsf2_2 = sign_232rcsf2.replace('data:image/png;base64,', '');

        var sign_232rcsf3 = window.sign_232rcsf3.toDataURL("image/png");
        var sign_232rcsf3_3 = sign_232rcsf3.replace('data:image/png;base64,', '');

        var sign_232rcsf4 = window.sign_232rcsf4.toDataURL("image/png");
        var sign_232rcsf4_4 = sign_232rcsf4.replace('data:image/png;base64,', '');

        var sign_232rcsf5 = window.sign_232rcsf5.toDataURL("image/png");
        var sign_232rcsf5_5 = sign_232rcsf5.replace('data:image/png;base64,', '');

        var sign_232rcsf6 = window.sign_232rcsf6.toDataURL("image/png");
        var sign_232rcsf6_6 = sign_232rcsf6.replace('data:image/png;base64,', '');

        var sign_232rcsf7 = window.sign_232rcsf7.toDataURL("image/png");
        var sign_232rcsf7_7 = sign_232rcsf7.replace('data:image/png;base64,', '');

        var sign_232rcsf8 = window.sign_232rcsf8.toDataURL("image/png");
        var sign_232rcsf8_8 = sign_232rcsf8.replace('data:image/png;base64,', '');

        var sign_232rcsf9 = window.sign_232rcsf9.toDataURL("image/png");
        var sign_232rcsf9_9 = sign_232rcsf9.replace('data:image/png;base64,', '');

        var sign_232rcsf10 = window.sign_232rcsf10.toDataURL("image/png");
        var sign_232rcsf10_10 = sign_232rcsf10.replace('data:image/png;base64,', '');

        var sign_232rcsf11 = window.sign_232rcsf11.toDataURL("image/png");
        var sign_232rcsf11_11 = sign_232rcsf11.replace('data:image/png;base64,', '');

        var sign_232rcsf12 = window.sign_232rcsf12.toDataURL("image/png");
        var sign_232rcsf12_12 = sign_232rcsf12.replace('data:image/png;base64,', '');

        var sign_232rcsf13 = window.sign_232rcsf13.toDataURL("image/png");
        var sign_232rcsf13_13 = sign_232rcsf13.replace('data:image/png;base64,', '');

        var sign_232rcsf14 = window.sign_232rcsf14.toDataURL("image/png");
        var sign_232rcsf14_14 = sign_232rcsf14.replace('data:image/png;base64,', '');

        var sign_232rcsf15 = window.sign_232rcsf15.toDataURL("image/png");
        var sign_232rcsf15_15 = sign_232rcsf15.replace('data:image/png;base64,', '');

        var sign_232rcsf16 = window.sign_232rcsf16.toDataURL("image/png");
        var sign_232rcsf16_16 = sign_232rcsf16.replace('data:image/png;base64,', '');

        var sign_232rcsf17 = window.sign_232rcsf17.toDataURL("image/png");
        var sign_232rcsf17_17 = sign_232rcsf17.replace('data:image/png;base64,', '');

        var sign_232rcsf18 = window.sign_232rcsf18.toDataURL("image/png");
        var sign_232rcsf18_18 = sign_232rcsf18.replace('data:image/png;base64,', '');

        var sign_232rcsf19 = window.sign_232rcsf19.toDataURL("image/png");
        var sign_232rcsf19_19 = sign_232rcsf19.replace('data:image/png;base64,', '');

        var sign_232rcsf20 = window.sign_232rcsf20.toDataURL("image/png");
        var sign_232rcsf20_20 = sign_232rcsf20.replace('data:image/png;base64,', '');

        var sign_232rcsf21 = window.sign_232rcsf21.toDataURL("image/png");
        var sign_232rcsf21_21 = sign_232rcsf21.replace('data:image/png;base64,', '');


        let checkboxes_1 = document.querySelectorAll('input[name="sfcfradio01"]:checked');
        let values_1 = [];
        checkboxes_1.forEach((checkbox) => {
            values_1.push(checkbox.value);
        });
       
        let checkboxes = document.querySelectorAll('input[name="sfcfradio2"]:checked');
        let values = [];
        checkboxes.forEach((checkbox) => {
            values.push(checkbox.value);
        });

        let checkboxes1 = document.querySelectorAll('input[name="sfcfradio3"]:checked');
        let values1 = [];
        checkboxes1.forEach((checkbox) => {
            values1.push(checkbox.value);
        });

        let checkboxes2 = document.querySelectorAll('input[name="sfcfradio_41"]:checked');
        let values2 = [];
        checkboxes2.forEach((checkbox) => {
            values2.push(checkbox.value);
        });

        let checkboxes3 = document.querySelectorAll('input[name="sfcfradio5"]:checked');
        let values3 = [];
        checkboxes3.forEach((checkbox) => {
            values3.push(checkbox.value);
        });
        
        let checkboxes4 = document.querySelectorAll('input[name="sfcfradio6"]:checked');
        let values4 = [];
        checkboxes4.forEach((checkbox) => {
            values4.push(checkbox.value);
        });

        let checkboxes5 = document.querySelectorAll('input[name="riskradio"]:checked');
        let values5 = [];
        checkboxes5.forEach((checkbox) => {
            values5.push(checkbox.value);
        });
 
       let checkboxes6 = document.querySelectorAll('input[name="riskmgmt"]:checked');
        let gender = [];
        checkboxes6.forEach((checkbox) => {
            gender.push(checkbox.value);
        });

        var patientname = $('#risk1').val();
        var currentdate = $('#risk2').val();
        var patientdiagnosis = $('#risk3').val();
        var patienttreatment = $('#risk4').val();
        var patienttxt1 = $('#risk5').val();
        var signdate1 = $('#risk6').val();
        var signdate2 = $('#risk7').val();
        var patienttxt2 = $('#risk8').val();
        var signdate3 = $('#risk9').val();
        var referdoctor1 = $('#risk10').val();
        var firstname = $('#risk11').val();
        var lastname = $('#risk12').val();
        var patientdob = $('#risk13').val();
        var officechart = $('#risk14').val();
        var patienthomephone = $('#risk15').val();
        var patientworkphone = $('#risk16').val();
        var patientmobile = $('#risk17').val();
        var patienttxt3 = $('#risk18').val();
        var patienttxt4 = $('#risk19').val();
        var patienttxt5 = $('#risk20').val();
        var patienttxt6 = $('#risk21').val();
        var patienttxt7 = $('#risk022').val();
        var patienttxt8 = $('#risk23').val();
        var patienttxt9 = $('#risk24').val();
        var patienttxt10 = $('#risk25').val();
        var signdate4 = $('#risk26').val();
        var referdoctor2 = $('#risk27').val();
        var patienttxt11 = $('#risk28').val();
        var patienttxt12 = $('#risk29').val();
        var patienttxt13 = $('#risk30').val();
        var patienttxt14 = $('#risk31').val();
        var signdate5 = $('#risk32').val();
        var signdate6 = $('#risk33').val();           
        


        $.ajax({
            url: "generateriskmanagementpdf",
            type: "POST", //send it through get method
            data: {
                patientid: $("#patientCombo option:selected").val(),
                patientname: patientname,
                currentdate : currentdate,
                patientgender : gender,
                patientdiagnosis : patientdiagnosis,
                patienttreatment : patienttreatment,
                patientsignature1 : sign_232rcsf1_1,
                patientsignature2 : sign_232rcsf2_2,
                patientsignature3 : sign_232rcsf3_3,
                patientsignature4 : sign_232rcsf4_4,
                patientsignature5 : sign_232rcsf5_5,
                patientsignature6 : sign_232rcsf6_6,
                patientsignature7 : sign_232rcsf7_7,
                patientsignature8 : sign_232rcsf8_8,
                patientsignature9 : sign_232rcsf9_9,
                patientsignature10 : sign_232rcsf10_10,
                patientcheckbox1 : values_1 ,
                patientcheckbox2 : values,
                patientcheckbox3 : values1,
                patienttxt1 : patienttxt1,
                patientcheckbox4 : values2,
                patientcheckbox5 : values3,
                patientcheckbox6 : values4 ,
                patientsignature : sign_232rcsf11_11 ,
                signdate1 : signdate1,
                witnesssignature : sign_232rcsf12_12,
                signdate2 : signdate2,
                patienttxt2 : patienttxt2,
                dentistsignature : sign_232rcsf13_13,
                signdate3 : signdate3,
                referdoctor1 : referdoctor1,
                firstname : firstname,  //firstname from form
                lastname : lastname,  // lastname from form
                patientdob : patientdob, 
                officechart : officechart, 
                patienthomephone  : patienthomephone,
                patientworkphone : patientworkphone,
                patientmobile : patientmobile,
                patienttxt3 : patienttxt3,
                patienttxt4 : patienttxt4,
                patienttxt5 : patienttxt5,
                patientradiobtn1 : values5,
                patienttxt6 : patienttxt6,
                patienttxt7 : patienttxt7,
                patienttxt8 : patienttxt8,
                patienttxt9 : patienttxt9,
                patienttxt10 : patienttxt10,
                dentistsignature1 : sign_232rcsf14_14,
                signdate4 : signdate4,
                referdoctor2 : referdoctor2,
                patientsignature11 : sign_232rcsf15_15,
                patienttxt11 : patienttxt11,
                patientsignature12 : sign_232rcsf16_16,
                patienttxt12 : patienttxt12,
                patientsignature13 : sign_232rcsf17_17,
                patientsignature14 : sign_232rcsf18_18,
                patienttxt13 : patienttxt13,
                patientsignature15 : sign_232rcsf19_19,
                patienttxt14 : patienttxt14,
                patientsignature16 : sign_232rcsf20_20,
                signdate5 : signdate5,
                witnesssignature1 : sign_232rcsf21_21,
                signdate6 : signdate6
            },
            success: function (response) {
                if (response.length > 0)
                { 
                    $("#Riskmanagement_cbct_scan_forms").modal('hide');
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
        window.sign_232rcsf1 = new SignaturePad($('#sign_232rcsf1').get(0), {});
        window.sign_232rcsf2 = new SignaturePad($('#sign_232rcsf2').get(0), {});
        window.sign_232rcsf3 = new SignaturePad($('#sign_232rcsf3').get(0), {});
        window.sign_232rcsf4 = new SignaturePad($('#sign_232rcsf4').get(0), {});
        window.sign_232rcsf5 = new SignaturePad($('#sign_232rcsf5').get(0), {});
        window.sign_232rcsf6 = new SignaturePad($('#sign_232rcsf6').get(0), {});
        window.sign_232rcsf7 = new SignaturePad($('#sign_232rcsf7').get(0), {});
        window.sign_232rcsf8 = new SignaturePad($('#sign_232rcsf8').get(0), {});
        window.sign_232rcsf9 = new SignaturePad($('#sign_232rcsf9').get(0), {});
        window.sign_232rcsf10 = new SignaturePad($('#sign_232rcsf10').get(0), {});
        window.sign_232rcsf11 = new SignaturePad($('#sign_232rcsf11').get(0), {});
        window.sign_232rcsf12 = new SignaturePad($('#sign_232rcsf12').get(0), {});
        window.sign_232rcsf13 = new SignaturePad($('#sign_232rcsf13').get(0), {});
        window.sign_232rcsf14 = new SignaturePad($('#sign_232rcsf14').get(0), {});
        window.sign_232rcsf15 = new SignaturePad($('#sign_232rcsf15').get(0), {});
        window.sign_232rcsf16 = new SignaturePad($('#sign_232rcsf16').get(0), {});
        window.sign_232rcsf17 = new SignaturePad($('#sign_232rcsf17').get(0), {});
        window.sign_232rcsf18 = new SignaturePad($('#sign_232rcsf18').get(0), {});
        window.sign_232rcsf19 = new SignaturePad($('#sign_232rcsf19').get(0), {});
        window.sign_232rcsf20 = new SignaturePad($('#sign_232rcsf20').get(0), {});
        window.sign_232rcsf21 = new SignaturePad($('#sign_232rcsf21').get(0), {});





//---------------------------refusal checkbox----------------------
        $('.refusal_riskcbct').change(function () {
            (!$(this).is(':checked')) ? $('.riskcbct_chk').prop('disabled', false) : $('.riskcbct_chk').prop('disabled', true);
        });

        $('.riskcbct_chk').change(function () {
            (!$(this).is(':checked')) ? $('.refusal_riskcbct').prop('disabled', false) : $('.refusal_riskcbct').prop('disabled', true);
        });
//-------------------------------------------------------------     

    });

    var sign_232rcsf1_clear = function () {
        window.sign_232rcsf1.clear()
    }
    var sign_232rcsf2_clear = function () {
        window.sign_232rcsf2.clear()
    }
    var sign_232rcsf3_clear = function () {
        window.sign_232rcsf3.clear()
    }
    var sign_232rcsf4_clear = function () {
        window.sign_232rcsf4.clear()
    }
    var sign_232rcsf5_clear = function () {
        window.sign_232rcsf5.clear()
    }
    var sign_232rcsf6_clear = function () {
        window.sign_232rcsf6.clear()
    }
    var sign_232rcsf7_clear = function () {
        window.sign_232rcsf7.clear()
    }
    var sign_232rcsf8_clear = function () {
        window.sign_232rcsf8.clear()
    }
    var sign_232rcsf9_clear = function () {
        window.sign_232rcsf9.clear()
    }
    var sign_232rcsf10_clear = function () {
        window.sign_232rcsf10.clear()
    }
    var sign_232rcsf11_clear = function () {
        window.sign_232rcsf11.clear()
    }
    var sign_232rcsf12_clear = function () {
        window.sign_232rcsf12.clear()
    }
    var sign_232rcsf13_clear = function () {
        window.sign_232rcsf13.clear()
    }
    var sign_232rcsf14_clear = function () {
        window.sign_232rcsf14.clear()
    }
    var sign_232rcsf15_clear = function () {
        window.sign_232rcsf15.clear()
    }
    var sign_232rcsf16_clear = function () {
        window.sign_232rcsf16.clear()
    }
    var sign_232rcsf17_clear = function () {
        window.sign_232rcsf17.clear()
    }
    var sign_232rcsf18_clear = function () {
        window.sign_232rcsf18.clear()
    }
    var sign_232rcsf19_clear = function () {
        window.sign_232rcsf19.clear()
    }
    var sign_232rcsf20_clear = function () {
        window.sign_232rcsf20.clear()
    }
    var sign_232rcsf21_clear = function () {
        window.sign_232rcsf21.clear()
    }
</script>

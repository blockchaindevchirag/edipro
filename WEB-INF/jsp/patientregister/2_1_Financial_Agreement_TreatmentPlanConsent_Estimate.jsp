<div class="modal fade centerAligned" id="Financial_Agreement_TreatmentPlanConsent_Estimate" tabindex="-1" data-backdrop="static" data-keyboard="false" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-xl">
        <div class="modal-content">
            <div class="modal-header" style="background: orange">
                <h4 class="modal-title center" id="myModalLabel">
                    Insurance Pre-Estimate Summary                 
                </h4>          
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>

            </div>
            <div class="container">
                <form id="financial_est">
                    <div class="card-body">
                        <div class="row">
                            <div class="col-12" style="text-align: center">
<!--                                <h6 style="font-size: 20px;"> AmeriDenti</h6>
                                <p style="align-content: center;">14302 Telegraph Rd Whittier CA, 90604 Tel: (562) 351-1687 Fax: (562) 351-1725</p>-->
                            </div>
                            <div class="col-12">
                                <p>Patient: <input type="text" name="financial1" id="financial1" class="data_patient_name col-8 dateborder" >
                                    Date:<input type="text" name="currentDate" id="currentDate1" autocomplete="off" class=" col-2 dateborder notfuturedate" >
                                </p>
                                <p>Practice Name:<input type="text" name="financial53" id="financial53" readonly class="col-9 dateborder data_practice_name"> </p>
                                <p>Treatment: <input type="text" name="financial2" id="financial2" class="col-11 dateborder" style="padding:0"></p>
                                <p>Enclosed is a copy of the insurance pre-estimate that was recently received by our office. Your insurance company has provided the following estimate of benefits (not a guarantee):</p>

                                <table style="width:45%;margin: 15px 100px;" class="table table-borderless">
                                    <tr>
                                        <td style="width:30%">Total estimated cost of treatment</td>
                                        <td>$<input type="text" name="financial3" id="financial3" class="dateborder" maxlength="8"  oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*?)\..*/g, '$1');"></td>
                                    </tr>  
                                    <tr>
                                        <td>Total estimated insurance benefit</td>                                
                                        <td>$<input type="text" name="financial4" id="financial4" class="dateborder" maxlength="8" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*?)\..*/g, '$1');"></td>
                                    </tr>      
                                    <tr>
                                        <td>Total estimated patient portion</td>
                                        <td>$<input type="text" name="financial5" id="financial5" class="dateborder" maxlength="8" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*?)\..*/g, '$1');"></td>
                                    </tr>
                                </table>
                                <h6>Multiple Dental & Medical Plans:</h6>
                                <p>Secondary Dental & Health plans typically pre-estimate treatment as if they are primary. Because of this, secondary pre-estimates may be unreliable. A secondary dental plan may reduce the amount it pays based on its coordination of benefits clause. If your secondary plan uses limited, non-duplication, maintenance, or integration of benefits, its pre-estimate may not accurately represent what will be paid on your claim. If you have multiple dental plan please contact your secondary insurance carrier to ask how it coordinates benefits.</p>
                                <table style="width:100%;">
                                    <tr>
                                        <th>Treatment Procedure:</th>
                                        <th>Insurance Estimate</th>
                                        <th>Fee</th>
                                        <th>Patient Responsible Estimate</th>
                                        <th>Fee</th>
                                    </tr>
                                    <tr>
                                        <td><input type="text" name="financial6" id="financial6" class="col-12 dateborder" maxlength="29"></td>
                                        <td>1. <input type="text" name="financial7" id="financial7" class="col-5 dateborder" maxlength="8" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*?)\..*/g, '$1');"></td>
                                        <td>$ <input type="text" name="financial8" id="financial8" class="col-5 dateborder" maxlength="8" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*?)\..*/g, '$1');"></td>
                                        <td>1. <input type="text" name="financial9" id="financial9" class="col-5 dateborder" maxlength="8" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*?)\..*/g, '$1');"></td>
                                        <td>$ <input type="text" name="financial10" id="financial10" class="col-5 dateborder" maxlength="8" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*?)\..*/g, '$1');"></td>
                                    </tr>
                                    <tr>
                                        <td><input type="text" name="financial11" id="financial11" class="col-12 dateborder"  maxlength="29"></td>
                                        <td>2. <input type="text" name="financial12" id="financial12" class="col-5 dateborder" maxlength="8" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*?)\..*/g, '$1');"></td>
                                        <td>$ <input type="text" name="financial13" id="financial13" class="col-5 dateborder" maxlength="8" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*?)\..*/g, '$1');"></td>
                                        <td>2. <input type="text" name="financial14" id="financial14" class="col-5 dateborder" maxlength="8" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*?)\..*/g, '$1');"></td>
                                        <td>$ <input type="text" name="financial15" id="financial15" class="col-5 dateborder" maxlength="8" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*?)\..*/g, '$1');"></td></tr>
                                    <tr>
                                        <td><input type="text" name="financial16" id="financial16" class="col-12 dateborder"   maxlength="29"></td>
                                        <td>3. <input type="text" name="financial17" id="financial17" class="col-5 dateborder" maxlength="8" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*?)\..*/g, '$1');"></td>
                                        <td>$ <input type="text" name="financial18" id="financial18" class="col-5 dateborder" maxlength="8" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*?)\..*/g, '$1');"></td>
                                        <td>3. <input type="text" name="financial19" id="financial19" class="col-5 dateborder" maxlength="8" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*?)\..*/g, '$1');"></td>
                                        <td>$ <input type="text" name="financial20" id="financial20" class="col-5 dateborder" maxlength="8" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*?)\..*/g, '$1');"></td>
                                    </tr>
                                    <tr>
                                        <td><input type="text" name="financial21" id="financial21" class="col-12 dateborder"  maxlength="29"></td>
                                        <td>4. <input type="text" name="financial22" id="financial22" class="col-5 dateborder" maxlength="8" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*?)\..*/g, '$1');"></td>
                                        <td>$ <input type="text" name="financial23" id="financial23" class="col-5 dateborder" maxlength="8" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*?)\..*/g, '$1');"></td>
                                        <td>4. <input type="text" name="financial24" id="financial24" class="col-5 dateborder" maxlength="8" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*?)\..*/g, '$1');"></td>
                                        <td>$ <input type="text" name="financial25" id="financial25" class="col-5 dateborder" maxlength="8" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*?)\..*/g, '$1');"></td>
                                    </tr>
                                    <tr>
                                        <td><input type="text" name="financial26" id="financial26" class="col-12 dateborder"  maxlength="29"></td>
                                        <td>5. <input type="text" name="financial27" id="financial27" class="col-5 dateborder" maxlength="8" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*?)\..*/g, '$1');"></td>
                                        <td>$ <input type="text" name="financial28" id="financial28" class="col-5 dateborder" maxlength="8" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*?)\..*/g, '$1');"></td>
                                        <td>5. <input type="text" name="financial29" id="financial29" class="col-5 dateborder" maxlength="8" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*?)\..*/g, '$1');"></td>
                                        <td>$ <input type="text" name="financial30" id="financial30" class="col-5 dateborder" maxlength="8" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*?)\..*/g, '$1');"></td>
                                    </tr>
                                    <tr>
                                        <td><input type="text" name="financial31" id="financial31" class="col-12 dateborder"  maxlength="29"></td>
                                        <td>6. <input type="text" name="financial32" id="financial32" class="col-5 dateborder" maxlength="8" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*?)\..*/g, '$1');"></td>
                                        <td>$ <input type="text" name="financial33" id="financial33" class="col-5 dateborder" maxlength="8" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*?)\..*/g, '$1');"></td>
                                        <td>6. <input type="text" name="financial34" id="financial34" class="col-5 dateborder" maxlength="8" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*?)\..*/g, '$1');"></td>
                                        <td>$ <input type="text" name="financial35" id="financial35" class="col-5 dateborder" maxlength="8" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*?)\..*/g, '$1');"></td>
                                    </tr>
                                    <tr>
                                        <td><input type="text" name="financial36" id="financial36" class="col-12 dateborder"  maxlength="29"></td>
                                        <td>7. <input type="text" name="financial37" id="financial37" class="col-5 dateborder" maxlength="8" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*?)\..*/g, '$1');"></td>
                                        <td>$ <input type="text" name="financial38" id="financial38" class="col-5 dateborder" maxlength="8" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*?)\..*/g, '$1');"></td>
                                        <td>7. <input type="text" name="financial39" id="financial39" class="col-5 dateborder" maxlength="8" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*?)\..*/g, '$1');"></td>
                                        <td>$ <input type="text" name="financial40" id="financial40" class="col-5 dateborder" maxlength="8" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*?)\..*/g, '$1');"></td>
                                    </tr>
                                    <tr>
                                        <td><input type="text" name="financial41" id="financial41" class="col-12 dateborder"  maxlength="29"></td>
                                        <td>8. <input type="text" name="financial42" id="financial42" class="col-5 dateborder" maxlength="8" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*?)\..*/g, '$1');"></td>
                                        <td>$ <input type="text" name="financial43" id="financial43" class="col-5 dateborder" maxlength="8" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*?)\..*/g, '$1');"></td>
                                        <td>8. <input type="text" name="financial44" id="financial44" class="col-5 dateborder" maxlength="8" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*?)\..*/g, '$1');"></td>
                                        <td>$ <input type="text" name="financial45" id="financial45" class="col-5 dateborder" maxlength="8" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*?)\..*/g, '$1');"></td>
                                    </tr>
                                    <tr>
                                        <td><input type="text" name="financial46" id="financial46" class="col-12 dateborder"  maxlength="29"></td>
                                        <td>9. <input type="text" name="financial47" id="financial47" class="col-5 dateborder" maxlength="8" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*?)\..*/g, '$1');"></td>
                                        <td>$ <input type="text" name="financial48" id="financial48" class="col-5 dateborder" maxlength="8" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*?)\..*/g, '$1');"></td>
                                        <td>9. <input type="text" name="financial49" id="financial49" class="col-5 dateborder" maxlength="8" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*?)\..*/g, '$1');"></td>
                                        <td>$ <input type="text" name="financial50" id="financial50" class="col-5 dateborder" maxlength="8" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*?)\..*/g, '$1');"></td>
                                    </tr>
                                </table>                
                                <p style="margin-top: 15px;">Your estimated portion is due at the time of treatment. A pre-estimate is no guarantee of payment. Actual benefits paid will be subject to any applicable limitations or benefit maximums available at the time the claim is processed. Please note that dental treatment provided by another office during the current plan year can affect your available maximum of benefits. Please contact any member of our business team to assist you with any questions you may have regarding treatment, payment options, and/or to schedule an appointment.</p>
                                <p>We look forward to seeing you soon!</p>                       
                            </div> 
                            <div class="col-6">
                                <div class="row">
                                    <div class="col-12">
                                        <canvas id="sign_21fate1" width="480" height="80" class="col-12">		 			
                                        </canvas>
                                    </div>
                                </div>
                                <p>Staff Signature <span style="color: red;margin: 20px;"><a onclick="sign_21fate1_clear()">Clear Signature</a></span></p>
                            </div>
                            <div class="col-4" style="display: flex;align-items: flex-end;height: 75px;">

                                Date:<input type="text" name="financial51" id="financial51" autocomplete="off" class=" notfuturedate col-auto dateborder">   

                            </div>
                            <div class="col-6">
                                <div class="row">
                                    <div class="col-12">
                                        <canvas id="sign_21fate2" width="480" height="80" class="col-12">		 			
                                        </canvas>
                                    </div>
                                </div>
                                <p>Patient Signature <span style="color: red;margin: 20px;"><a onclick="sign_21fate2_clear()">Clear Signature</a></span></p>
                            </div>
                            <div class="col-4" style="display: flex;align-items: flex-end;height: 75px; margin-bottom: 147px">

                                Date:<input type="text" name="financial52" id="financial52" autocomplete="off" class=" notfuturedate col-auto dateborder" style="padding:0">   

                            </div>

                        </div>
                    </div>  
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                <button type="button" class="btn btn-primary" id="buttonid" onclick="financialSave(this)">Submit</button>
            </div>
        </div>
    </div>
</div>
<script>
    function financialSave(buttonObj)
    {
         if(!$('#currentDate1').val())
           {
            msgbox("Date is Mandatory", "Patient Checklist", "error");
            return false;
           }
        $(buttonObj).attr('disabled', 'disabled');
        $(buttonObj).text('Sending...');

        $(buttonObj).off('click'); //disables click event
        var sign_fatp = window.sign_21fate1.toDataURL("image/png");
        var sign_fatp_1 = sign_fatp.replace('data:image/png;base64,', '');

        var sign_fatp2 = window.sign_21fate2.toDataURL("image/png");
        var sign_fatp_2 = sign_fatp2.replace('data:image/png;base64,', '');

        var patientname = $('#financial1').val();
        var patienttreatment = $('#financial2').val();
        var estimatedcost = $('#financial3').val();
        var insurancebenefit = $('#financial4').val();
        var patientportion = $('#financial5').val();
        var treatmentprocedure1 = $('#financial6').val();
        var insuranceestimate1 = $('#financial7').val();
        var fee1 = $('#financial8').val();
        var patientresponsibleestimate1 = $('#financial9').val();
        var fee2 = $('#financial10').val();
        var treatmentprocedure2 = $('#financial11').val();
        var insuranceestimate2 = $('#financial12').val();
        var fee3 = $('#financial13').val();
        var patientresponsibleestimate2 = $('#financial14').val();
        var fee4 = $('#financial15').val();
        var treatmentprocedure3 = $('#financial16').val();
        var insuranceestimate3 = $('#financial17').val();
        var fee5 = $('#financial18').val();
        var patientresponsibleestimate3 = $('#financial19').val();
        var fee6 = $('#financial20').val();
        var treatmentprocedure4 = $('#financial21').val();
        var insuranceestimate4 = $('#financial22').val();
        var fee7 = $('#financial23').val();
        var patientresponsibleestimate4 = $('#financial24').val();
        var fee8 = $('#financial25').val();
        var treatmentprocedure5 = $('#financial26').val();
        var insuranceestimate5 = $('#financial27').val();
        var fee9 = $('#financial28').val();
        var patientresponsibleestimate5 = $('#financial29').val();
        var fee10 = $('#financial30').val();
        var treatmentprocedure6 = $('#financial31').val();
        var insuranceestimate6 = $('#financial32').val();
        var fee11 = $('#financial33').val();
        var patientresponsibleestimate6 = $('#financial34').val();
        var fee12 = $('#financial35').val();
        var treatmentprocedure7 = $('#financial36').val();
        var insuranceestimate7 = $('#financial37').val();
        var fee13 = $('#financial38').val();
        var patientresponsibleestimate7 = $('#financial39').val();
        var fee14 = $('#financial40').val();
        var treatmentprocedure8 = $('#financial41').val();
        var insuranceestimate8 = $('#financial42').val();
        var fee15 = $('#financial43').val();
        var patientresponsibleestimate8 = $('#financial44').val();
        var fee16 = $('#financial45').val();
        var treatmentprocedure9 = $('#financial46').val();
        var insuranceestimate9 = $('#financial47').val();
        var fee17 = $('#financial48').val();
        var patientresponsibleestimate9 = $('#financial49').val();
        var fee18 = $('#financial50').val();
        var signdate1 = $('#financial51').val();
        var signdate2 = $('#financial52').val();
        var currentDate = $('#currentDate1').val();
        $.ajax({
            url: "generatefinancialpdf",
            type: "POST", //send it through get method
            data: {
                patientid: $("#patientCombo option:selected").val(),
                patientname: patientname,
                patienttreatment: patienttreatment,
                estimatedcost: estimatedcost,
                insurancebenefit: insurancebenefit,
                patientportion: patientportion,
                treatmentprocedure1: treatmentprocedure1,
                lastname: $("#inputLastName").val(),
                firstname: $("#inputFirstName").val(),
                insuranceestimate1: insuranceestimate1,
                fee1: fee1,
                patientresponsibleestimate1: patientresponsibleestimate1,
                fee2: fee2,
                treatmentprocedure2: treatmentprocedure2,
                insuranceestimate2: insuranceestimate2,
                fee3: fee3,
                patientresponsibleestimate2: patientresponsibleestimate2,
                fee4: fee4,
                treatmentprocedure3: treatmentprocedure3,
                insuranceestimate3: insuranceestimate3,
                fee5: fee5,
                patientresponsibleestimate3: patientresponsibleestimate3,
                fee6: fee6,
                treatmentprocedure4: treatmentprocedure4,
                insuranceestimate4: insuranceestimate4,
                fee7: fee7,
                patientresponsibleestimate4: patientresponsibleestimate4,
                fee8: fee8,
                treatmentprocedure5: treatmentprocedure5,
                insuranceestimate5: insuranceestimate5,
                fee9: fee9,
                patientresponsibleestimate5: patientresponsibleestimate5,
                fee10: fee10,
                treatmentprocedure6: treatmentprocedure6,
                insuranceestimate6: insuranceestimate6,
                fee11: fee11,
                patientresponsibleestimate6: patientresponsibleestimate6,
                fee12: fee12,
                treatmentprocedure7: treatmentprocedure7,
                insuranceestimate7: insuranceestimate7,
                fee13: fee13,
                patientresponsibleestimate7: patientresponsibleestimate7,
                fee14: fee14,
                treatmentprocedure8: treatmentprocedure8,
                insuranceestimate8: insuranceestimate8,
                fee15: fee15,
                patientresponsibleestimate8: patientresponsibleestimate8,
                fee16: fee16,
                treatmentprocedure9: treatmentprocedure9,
                insuranceestimate9: insuranceestimate9,
                fee17: fee17,
                patientresponsibleestimate9: patientresponsibleestimate9,
                fee18: fee18,
                staffsignature: sign_fatp_1,
                signdate1: signdate1,
                patientsignature: sign_fatp_2,
                signdate2: signdate2,
                currentDate:currentDate
            },
            success: function (response) {
                if (response.length > 0)
                {
                    $("#Financial_Agreement_TreatmentPlanConsent_Estimate").modal('hide');
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
        window.sign_21fate1 = new SignaturePad($('#sign_21fate1').get(0), {});
        window.sign_21fate2 = new SignaturePad($('#sign_21fate2').get(0), {});
    });
    var sign_21fate1_clear = function () {
        window.sign_21fate1.clear()
    }
    var sign_21fate2_clear = function () {
        window.sign_21fate2.clear()
    }

</script>



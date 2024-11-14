<div class="modal fade centerAligned" id="ABNAdvanceBeneficiaryNonCoverageForm" tabindex="-1" data-backdrop="static" data-keyboard="false" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-xl">
        <div class="modal-content">
            <div class="modal-header">
                <div class="row" style="padding-left: 20px;">
                    <div class="col-6 col-md-12 col-xl-6">
                        <h6 style="font-size: 20px;">A.Notifier: <input type="text" class="dateborder" name="abnadvance9" id="abnadvance9"  maxlength="25"> </h6>
                    </div>
                    <div class="col-6 col-md-12 col-xl-6">
                        <h6 style="font-size: 20px;">Date: <input type="text" class="dateborder notfuturedate" autocomplete="off" name="currentDate" id="currentDate"> </h6>
                    </div>
                    <div class="col-6 col-md-12 col-xl-6 clear">
                        <h6 style="font-size: 20px;">B:Patient Name: <input type="text" class="dateborder data_patient_name" name="abnadvance10" id="abnadvance10"></h6>
                    </div>
                    <div class="col-6 col-md-12 col-xl-6">
                        <h6 style="font-size: 20px;" style="padding-left: 20px;">C:Identification Number: <input type="text" class="dateborder" name="abnadvance11" id="abnadvance11"  maxlength="25"></h6>
                    </div>
                </div>    
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>

            </div>
            <div class="container">
                <div class="card-body">
                    <div class="row">
                        <form id="form_ben">
                            <div class="col-12" style="text-align: center">
                                <h6 style="font-size: 20px;">Advance Beneficiary Notice of Noncoverage (ABN)</h6>
                            </div>
                            <div class="col-9">Practice Name:<input type="text" name="abnadvance12" id="abnadvance12" readonly class="col-9 dateborder data_practice_name"> </div>

                            <div class="col-12">
                                <h6 style="display: inline;min-width: 10px;border-bottom: 1px solid #000000;">NOTE: &nbsp;</h6> <p style="display: inline">If Medicare doesn't pay for<span style="font-weight: bold"> D.<input type="text" name="abnadvance1" id="abnadvance1" class="col-4 dateborder" style="padding:0" maxlength="50"></span> below, you may have to pay. Medicare does not pay for everything, even some care that you or your health care provider have good reason to think you need. We expect Medicare may not pay for the<span style="font-weight: bold"> D.<input type="text" name="abnadvance2" id="abnadvance2"class="col-4 dateborder" style="padding:0" maxlength="50"></span> below.</p>
                                
                                
                                
                                <table class="table table-bordered m-t-15" style="border: 1px solid #dddddd;">
                                    <tr style="background-color: #dddddd;">
                                        <td style="border-right: 1px solid #dddddd;"><h6 style="font-weight:bold;">D.</h6></td>
                                        <td style="border-right: 1px solid #dddddd;"><h6 style="font-weight:bold;">E. Reason Medicare May Not Pay:</h6></td>
                                        <td><h6 style="font-weight:bold;">F. Estimated Cost</h6></td>
                                    </tr>
                                    <tr>
                                        <td style="border-right: 1px solid #dddddd;">
                                            <ol>
                                                <li>Bone graft maxilla</li>
                                                <li>Bone graft mandible</li>
                                                <li>Sinus lift by lateral approach</li>
                                                <li>Sinus lift by vertical</li>
                                                <li>Osteoplasty</li>
                                                <li>Osteotomy Maxillary/Mandibular</li>
                                                <li>Incision & Drainage abscess</li>
                                                <li>Bone abscess removal Maxilla/Mandible</li>
                                                <li>Cyst/Lesion Excision</li>
                                                <li>Other<input type="text" name="abnadvance3" id="abnadvance3" class="col-7 dateborder" maxlength="25" ></li>
                                            </ol>
                                        </td>
                                        <td>
                                          &nbsp;
                                        </td>
                                        <td>
                                            <ul style="list-style: none !important">
                                                <li>$2,500</li>
                                                <li>$5,700</li>
                                                <li>$830</li>
                                                <li>$620</li>
                                                <li>$2,250</li>
                                                <li>$1,250</li>
                                                <li>$200</li>
                                                <li>$800</li>
                                                <li>$600</li>
                                                <li>$<input type="text" name="abnadvance4" id="abnadvance4" class="col-6 dateborder" maxlength="8" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*?)\..*/g, '$1');"></li>
                                            </ul>
                                        </td>
                                    </tr>
                                </table>
                                <h6>WHAT YOU NEED TO DO NOW:</h6>
                                <ul>
                                    <li>Read this notice, so you can make an informed decision about your care.</li>
                                    <li>Ask us any questions that you may have after you finish reading.</li>
                                    <li>Choose an option below about whether to receive the D.<input type="text" name="abnadvance5" id="abnadvance5" class="col-4 dateborder" maxlength="50"> listed above.</li>
                                    <h6 style="display: inline;">Note: &nbsp;</h6><p  style="display: inline">If you choose Option 1 or 2, we may help you to use any other insurance that you might have, but Medicare cannot require us to do this.</p>
                                </ul>
                                <table class="table-responsive" style="width:100%;border: 1px solid #dddddd; line-height: 1.8">
                                    <tr class="p-l-10" style="font-size: 18px;background: lightgrey;">
                                        <th class="p-l-10">G. OPTIONS : Check only one box. We cannot choose a box for you.</th>
                                    </tr>
                                    <tr>
                                        <td class="p-l-10 p-r-10">
                                            <div class="custom-control custom-radio" style="display: inline">
                                                <input type="radio" name="beneficiary" class="custom-control-input input-primary" id="aabncf1" value="OPTION1">
                                                <label class="custom-control-label" for="aabncf1" style="font-weight: bold">OPTION 1. &nbsp;</label>
                                            </div>
                                           I want the <span style="font-weight: bold">D.<input type="text" name="abnadvance6" id="abnadvance6" class="col-4 dateborder" style="padding:0" maxlength="50"></span> 
                                            listed above. You may ask to be paid now, but I also want Medicare billed for an official decision 
                                            on payment, which is sent to me on a Medicare Summary Notice (MSN). I understand that if Medicare doesn't 
                                            pay, I am responsible for payment, but <b>I can appeal to Medicare</b> 
                                            by following the directions on the MSN. If Medicare does pay, you will refund any payments I made to you,
                                            less co-pays or deductibles.
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="p-l-10">
                                            <div class="custom-control custom-radio" style="display: inline">
                                                <input type="radio" name="beneficiary" class="custom-control-input input-primary" id="aabncf2" value="OPTION2">
                                                <label class="custom-control-label" for="aabncf2" style="font-weight: bold">OPTION 2. &nbsp;</label>
                                            </div>
                                            I want the <span style="font-weight: bold">D.<input type="text" name="abnadvance07" id="abnadvance07" class="col-4 dateborder" maxlength="50" style="padding:0"></span> 
                                            listed above, but do not bill Medicare. You may ask to be paid now as I am responsible for payment.<b> I cannot appeal 
                                                if Medicare is not billed.</b>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="p-l-10">
                                            <div class="custom-control custom-radio" style="display: inline">
                                                <input type="radio" name="beneficiary" class="custom-control-input input-primary" id="aabncf3" value="OPTION3">
                                                <label class="custom-control-label" for="aabncf3" style="font-weight: bold">OPTION 3. &nbsp;</label>
                                            </div>
                                            I don't want the <span style="font-weight: bold">D.<input type="text" name="abnadvance08" id="abnadvance08" class="col-4 dateborder" maxlength="50" style="padding:0"></span> 
                                            listed above. I understand with this choice I am not responsible for payment, and <b>I cannot appeal to see if Medicare would pay.</b>
                                        </td>
                                    </tr>
                                </table>
                                
                                <div class="row col-12"  style="margin-top: 15px;">
                                <h6>H. Additional Information:</h6>
                                    <p><b>This notice gives our opinion, not an official Medicare decision.</b> If you have other questions on this notice or Medicare billing, call <b>1-800-MEDICARE</b> (1-800-633-4227/<b>TTY</b>: 1-877-486-2048). Signing below means that you have received and understand this notice. You also receive a copy.</p>
                                    
                                <div class="col-6">
                                    <div class="col-12">
                                    <canvas id="abncanvas_sign1" width="480px" height="80px"></canvas>
                                        <p><span style="font-weight: bold; font-size: 15px;">I. Signature: </span><span style="color: red;margin: 20px;"><a onclick="clear5()">Clear Signature</a></span></p>

                                </div>
                                    </div>
                                <div class="col-2 offset-md-3" >
                                <h6>  J. Date:</h6>

                                        <p>  <input type="text" name="todayDate" autocomplete="off" id="todayDate" class="notfuturedate dateborder"></p>

                                    
                                
                                </div>  

                            </div>  
                                
                                <div class="col-12 row">
                                     <div>
                                        <span style="font-weight: bold;text-align: justify; text-justify: inter-word;">
                                            You have the right to get Medicare information in an accessible format, like large print, Braille, or audio. You also have
the right to file a complaint if you feel you've been discriminated against. Visit Medicare.gov/about- us/accessibility-
nondiscrimination-notice.
                                        </span>
                                    </div>
                                    <span class="m-t-10" style="text-align: justify; text-justify: inter-word;">
                                        According to the Paperwork Reduction Act of 1995, no persons are required to respond to a collection of 
                                        information unless it displays a valid OMB control number. The valid OMB control number for this information
                                        collection is 0938-0566. The time required to complete this information collection is estimated to average 
                                        7 minutes per response, including the time to review instructions, search existing data resources, gather 
                                        the data needed, and complete and review the information collection. If you have comments concerning the 
                                        accuracy of the time estimate or suggestions for improving this form, please write to: CMS, 7500 Security
                                        Boulevard, Attn: PRA Reports Clearance Officer, Baltimore, Maryland 21244-1850.

                                    </span>
                                </div>


                            </div>
                        </form>
                    </div>
                </div>  
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                <button type="button" class="btn btn-primary" id="buttonid" onclick="saveAbn(this)">Submit</button>
            </div>
        </div>
    </div>
</div>
 

<script>

    function saveAbn(buttonObj)
    {
         if(!$('#currentDate').val())
           {
            msgbox("Date is Mandatory", "Patient Checklist", "error");
            return false;
           }
        $(buttonObj).attr('disabled', 'disabled');
        $(buttonObj).text('Sending...');

        $(buttonObj).off('click'); //disables click event// alert("submitted");
        var abn_file = window.signaturePad10.toDataURL("image/png");
        var abn_file1 = abn_file.replace('data:image/png;base64,', '');

        let checkboxes = document.querySelectorAll('input[name="beneficiary"]:checked');
        let values = [];
        checkboxes.forEach((checkbox) => {
            values.push(checkbox.value);
        });

        var patientnotifier = $('#abnadvance9').val();
        var patientname = $('#abnadvance10').val();
        var identificationnumber = $('#abnadvance11').val();
        var patienttxt1 = $('#abnadvance1').val();
        var patienttxt2 = $('#abnadvance2').val();
        var patienttxt3 = $('#abnadvance3').val();
        var patienttxt4 = $('#abnadvance4').val();
        var patienttxt5 = $('#abnadvance5').val();
        var patienttxt6 = $('#abnadvance6').val();
        var patienttxt7 = $('#abnadvance07').val();
        var patienttxt8 = $('#abnadvance08').val();
        var signdate1 = $('#todayDate').val();
         var currentDate = $('#currentDate').val();
       

        $.ajax({
            url: "generateadvancedbeneficiarypdf",
            type: "POST", //send it through get method
            data: {

                patientNotifier: patientnotifier,
                patientName: patientname,
                identificationNumber: identificationnumber,
                patientTxt1: patienttxt1,
                patientTxt2: patienttxt2,
                patientId: $("#patientCombo option:selected").val(),
                patientTxt3: patienttxt3,
                patientTxt4: patienttxt4,
                patientTxt5: patienttxt5,
                patientRadioBtn1: values,
                patientTxt6: patienttxt6,
                lastName: $("#inputLastName").val(),
                firstName: $("#inputFirstName").val(),
                patientTxt7: patienttxt7,
                patientTxt8: patienttxt8,
                patientSignature: abn_file1,
                signDate1 :signdate1,
                currentDate : currentDate
            },
            success: function (response) {
                if (response.length > 0)
                {
                    $("#ABNAdvanceBeneficiaryNonCoverageForm").modal('hide');
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
        window.signaturePad10 = new SignaturePad($('#abncanvas_sign1').get(0), {

        });

    });


    var clear5 = function () {
        window.signaturePad10.clear()
    }
</script>
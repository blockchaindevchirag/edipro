<div class="modal fade centerAligned" id="Preoperative_Instruction_Given" tabindex="-1" data-backdrop="static" data-keyboard="false" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-xl">
        <div class="modal-content">
            <div class="modal-header">
                <div class="col">
                    <h4 class="modal-title" id="myModalLabel" >
                        PRE-OP EVALUATION 
                    </h4>
                </div>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>

            </div>
            <div class="container">
                <div class="card-body">
                    <div class='col-12 row' style='line-height: 1.8'>
                        <p>This patient is scheduled for Oral Surgery in the near future. Please fax or email this form with any relevant supporting 
                            documentation to us. Your assistance is greatly appreciated.
                        </p>
                        <div class='col-6'>
                            Patient Name:<input type="text" name="poig" readonly  id="poig" class="data_patient_name dateborder"> 
                        </div>
                        <div class='col-6'>
                            Birth Date : <input type="date" name="poig1" readonly id="poig1" class="col-auto  dateborder data_inputDOB">
                        </div>
                        <div class='col-6' style="margin-left: 852px; margin-top: -27px">
                            Date : <input type="text" name="currentDate" autocomplete="off"  id="patientTodayDate" class="col-auto notfuturedate dateborder">
                        </div>
                        <div class="col-12">Practice Name:<input type="text" name="poig16" id="poig16" readonly class="col-8 dateborder data_practice_name"> </div>

                        <div class='col-6'>
                            Patient's Contact &nbsp;Home:<input type="text" readonly name="poig2" id="poig2" class="data_inputEPhone dateborder"> 
                        </div>
                        <div class='col-6'>
                            Cell <input type="text" name="poig3" readonly id="poig3" class="data_inputPhone dateborder">
                        </div>

                        <div class='col-6' style="margin-top: 15px">
                            <div class="custom-control custom-checkbox">
                                <input type="checkbox" name="preoperative001" class="custom-control-input input-primary" id="sel031" value="preopdate0001">
                                <label class="custom-control-label" for="sel031">
                                    Pre-op Date</label>
                                <input type="text" name="poigdate1" id="poigdate1"  class=" data_currentdate col-auto inputborder"> 
                            </div>
                        </div>
                        <div class='col-6' style="margin-top: 15px">
                            <div class="custom-control custom-checkbox">
                                <input type="checkbox" name="preoperative100" class="custom-control-input input-primary" id="sel31_01" value="surgerydate001"> 
                                <label class="custom-control-label" for="sel31_01">
                                    Surgery Date</label>
                                <input type="text" name="poig4" id="poig4"  class=" data_currentdate col-auto inputborder"> 
                            </div>
                        </div>
                        <div class='col-12' style="margin-top: 15px">
                            <table>
                                <tr>
                                    <td> Diagnosis Proposed Surgery Anesthesia CC: </td>
                                    <td><input type="text" name="poig5" id="poig5" class="col-8 inputborder" maxlength="60"> </td>
                                </tr>
                                <tr>
                                    <td>  Significant past medical history: </td>
                                    <td><input type="text" name="poig6" id="poig6" class="col-8 inputborder" maxlength="60"> </td>
                                </tr>
                                <tr>
                                    <td>  List of previous operations:</td>
                                    <td><input type="text" name="poig7" id="poig7" class="col-8 inputborder" maxlength="60"> </td>
                                </tr>
                                <tr>
                                    <td>Current medication with dosages: Drug and Food Allergies:</td>
                                    <td><input type="text" name="poig8" id="poig8" class="col-8 inputborder" maxlength="60"> </td>
                                </tr>
                                <tr>
                                    <td>B/P: Pulse:  </td>
                                    <td><input type="text" name="poig9" id="poig9" class="col-8 inputborder" maxlength="60"> </td>
                                </tr>
                                <tr>
                                    <td>HEENT LUNGS CARD/VASC ABD EXT     </td>
                                    <td><input type="text" name="poig10" id="poig10" class="col-8 inputborder" maxlength="60"> </td>
                                </tr>
                                <tr>
                                    <td>NEURO/PSYCH        </td>
                                    <td><input type="text" name="poig11" id="poig11" class="col-8 inputborder" maxlength="60"> </td>
                                </tr>
                                <tr>
                                    <td>DIAGNOSIS   </td>
                                    <td><input type="text" name="poig12" id="poig12" class="col-8 inputborder" maxlength="60"> </td>
                                </tr>
                                <tr>
                                    <td>Perioperative Recommendations: Is this patient cleared to have surgery?</td>
                                    <td><input type="text" name="poig13" id="poig13" class="col-8 inputborder" maxlength="60"> </td>
                                </tr>
                                <tr>
                                    <td>Date</td>
                                    <td><input type="text" name="poig14"  id="poig14" class=" notfuturedate col-auto inputborder"> </td>
                                </tr>
                                <tr>
                                    <td>Print name: </td>
                                    <td><input type="text" name="poig15" id="poig15" class="col-8 inputborder"> </td>
                                </tr>
                                <tr>
                                    <td>Signature</td>
                                    <td><canvas id="sign_preoperate" width="480" height="80" class="col-12" style='margin-top: 18px'>		 			
                                        </canvas> 
                                        <span style="color: red;margin: 20px;"><a onclick="clear31()">Clear Signature</a></span>
                                    </td>
                                </tr>
                            </table> 

                        </div> 
                        <p>

                    </div>  
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    <button type="button" class="btn btn-primary" id="buttonid" onclick="savePreOperate(this)"> Submit</button>
                </div>
            </div>
        </div>
    </div>
</div>


<!--==================================================================================-->
<script>

    function savePreOperate(buttonObj)
    {
        if(!$('#patientTodayDate').val())
           {
            msgbox("Date is Mandatory", "Patient Checklist", "error");
            return false;
           }
        $(buttonObj).attr('disabled', 'disabled');
        $(buttonObj).text('Sending...');

        $(buttonObj).off('click'); //disables click event

        var preoperate_file = window.signaturePad31.toDataURL("image/png");
        var preoperate_file1 = preoperate_file.replace('data:image/png;base64,', '');

        let checkboxes_1 = document.querySelectorAll('input[name="preoperative001"]:checked');
        let values_1 = [];
        checkboxes_1.forEach((checkbox) => {
            values_1.push(checkbox.value);
        });


        let checkboxes = document.querySelectorAll('input[name="preoperative100"]:checked');
        let values = [];
        checkboxes.forEach((checkbox) => {
            values.push(checkbox.value);
        });


        var patientname = $('#poig').val();
        var patientdob = $('#poig1').val();
        var patientaddress = $('#poig2').val();
        var patientphone = $('#poig3').val();
        var preopdate = $('#poigdate1').val();
        var surgerydate = $('#poig4').val();
        var patienttxt1 = $('#poig5').val();
        var patienttxt2 = $('#poig6').val();
        var patienttxt3 = $('#poig7').val();
        var patienttxt4 = $('#poig8').val();
        var patienttxt5 = $('#poig9').val();
        var patienttxt6 = $('#poig10').val();
        var patienttxt7 = $('#poig11').val();
        var patienttxt8 = $('#poig12').val();
        var patienttxt9 = $('#poig13').val();
        var signdate1 = $('#poig14').val();
        var patientprintname = $('#poig15').val();
         var currentDate = $('#patientTodayDate').val();




        $.ajax({
            url: "generatepreoperativepdf",
            type: "POST", //send it through get method
            data: {

                patientname: patientname,
                patientdob: patientdob,
                patientid: $("#patientCombo option:selected").val(),
                patientaddress: patientaddress,
                patientphone: patientphone,
                preopdate: preopdate,
                patientcheckbox1: values_1,
                patientlastname: $("#inputLastName").val(),
                patientfirstname: $("#inputFirstName").val(),
                surgerydate: surgerydate,
                patientcheckbox2: values,
                patienttxt1: patienttxt1,
                patienttxt2: patienttxt2,
                patienttxt3: patienttxt3,
                patienttxt4: patienttxt4,
                patienttxt5: patienttxt5,
                patienttxt6: patienttxt6,
                patienttxt7: patienttxt7,
                patienttxt8: patienttxt8,
                patienttxt9: patienttxt9,
                signdate1: signdate1,
                patientprintname: patientprintname,
                patientsignature: preoperate_file1,
                currentDate :currentDate
            },
            success: function (response) {
                if (response.length > 0)
                { 
                    $("#Preoperative_Instruction_Given").modal('hide');
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
        window.signaturePad31 = new SignaturePad($('#sign_preoperate').get(0), {

        });

    });


    var clear31 = function () {
        window.signaturePad31.clear()
    }
</script>

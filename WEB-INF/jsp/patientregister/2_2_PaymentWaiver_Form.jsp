<div class="modal fade centerAligned" id="PaymentWaiver_Form" tabindex="-1" data-backdrop="static" data-keyboard="false" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-xl">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title" id="myModalLabel">
                    LETTER TO PATIENT REGARDING WAIVING OF CO-PAYMENT  
                </h4>
                <span class="close" style="font-size:18px; font-weight: bold;">

                    Date : <input type="text" name="payment" id="payment" autocomplete="off" class="dateborder notfuturedate ">  

                </span>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span></button>

            </div>
            <div class="container">
                <form id="form_pay">
                    <div class="card-body">
                        <p>To :</p>
                        <div class="col-12 row">                        
                            <div class="col-4 col-xl-4 col-md-6">
                                <p>PATIENT FIRST NAME <input type="text" name="payment1" id="payment1" class="dateborder data_inputFirstname"></p>
                            </div>
                            <div class="col-4 col-xl-4 col-md-6">
                                <p>LAST NAME : <input type="text" name="payment2" id="payment2" class="dateborder data_inputLastname"></p>
                            </div>
                            <div class="col-4 col-xl-4 col-md-6">
                                <div class="custom-control custom-radio custom-control-inline">
                                    <input type="radio" name="pay_01" value="1" class="data_gender custom-control-input input-primary" id="pay1"  onclick="return false;">
                                    <label class="custom-control-label" for="pay1">Male</label>
                                </div>
                                <div class="custom-control custom-radio custom-control-inline">
                                    <input type="radio" name="pay_01" value="2" class="data_gender custom-control-input input-primary" id="pay2"  onclick="return false;">
                                    <label class="custom-control-label" for="pay2">Female</label>
                                </div>
                                <div class="custom-control custom-radio custom-control-inline">
                                    <input type="radio" name="pay_01" value="3" class="data_gender custom-control-input input-primary" id="pay3"  onclick="return false;">
                                    <label class="custom-control-label" for="pay3">Other</label>
                                </div>
                            </div>
                            </div>
                        <div class="row" style="margin-top: 10px; margin-left: 0px;">
                            <div class="col-6 col-xl-6 col-md-6" style="margin-bottom: 15px;">Practice Name:<input type="text" name="payment11" id="payment11" readonly class="col-8 dateborder data_practice_name"> </div>
                            <div class="col-6 col-xl-6 col-md-6">
                                <p>ADDRESS :  <input type="text" name="payment3" id="payment3" class="dateborder data_inputAddress"></p>
                            </div>
                            <div class="col-6 col-xl-6 col-md-6">
                                <p>CITY : <input type="text" name="payment4" id="payment4" class="dateborder data_inputCity"></p>
                            </div>
                            <div class="col-6 col-xl-6 col-md-6">
                                <p>STATE : <input type="text" name="payment5" id="payment5" class="dateborder data_inputState"></p>
                            </div>
                        </div>
                        <div class="col-12 center">
                            <h4 style=" text-align: center;margin-top: 15px;">
                                RE: WAIVING OF PATIENT CO-PAYMENT FOR TREATMENT
                            </h4>
                        </div>
                        <div class="col-12">
                            <p>Dear  <input type="text" name="payment6" id="payment6" class="col-6 dateborder" style="padding:0"> ;</p>
                            <p>I am writing to you regarding questions pertaining to your third party 
                                ("insurance") coverage and your financial responsibility for the treatment 
                                that you received at this office.</p>
                            <p>
                                The terms of your Financial Agreement, as discussed with you on DATE, 
                                a copy of which you signed and is enclosed, were as follows:
                                <input type="text" name="payment7" id="payment7" class="col-11 dateborder" maxlength="80">
                                <input type="text" name="payment8" id="payment8" class="col-11 dateborder" maxlength="80">
                                <input type="text" name="payment9" id="payment9" class="col-11 dateborder" maxlength="80">
                                <input type="text" name="payment10" id="payment10" class="col-11 dateborder" maxlength="80">
                            </p>
                        </div>
                        <div class="col-12">
                            <p>Due to the financial hardship that this would cause you, we will be waiving 
                                the co­payment portion that we are otherwise obligated to collect as part 
                                of your employer's contract with your insurance company.</p>
                            <p>
                                I trust this clarifies our position regarding your balance with our 
                                office and will help you through these trying times.
                            </p>
                            <p style="margin-top: 30px;"> Sincerely</p>
                            <div class="row">
                                <div class="col-6">
                                    <canvas id="paywai01" width="480" height="80"></canvas>
                                    <p><span style="color: red;margin: 20px;"><a onclick="sign_22pay_clear()">Clear Signature</a></span></p>                            
                                </div>

                            </div>    

                            <p>BUSINESS TEAM MANAGER</p>

                            <!--<h6>AmeriDenti Medical Billing</h6>-->
                        </div>
                    </div> 
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                <button type="button" class="btn btn-primary"id="buttonid" onclick="onPay(this)">Submit</button>
            </div>
        </div>
    </div>
</div>

<!--==================================================================================-->

<script>


    function onPay(buttonObj)
    {
         if(!$('#payment').val())
          {
               msgbox("Date is Mandatory", "Patient Checklist", "error");
                return false;
          }
        $(buttonObj).attr('disabled', 'disabled');
        $(buttonObj).text('Sending...');

        $(buttonObj).off('click'); //disables click event


        var sign_22pay = window.signaturePad1.toDataURL("image/png");
        var sign_22pay_1 = sign_22pay.replace('data:image/png;base64,', '');


        let checkboxes1 = document.querySelectorAll('input[name="pay_01"]:checked');
        let values1 = [];
        checkboxes1.forEach((checkbox) => {
            values1.push(checkbox.value);
        });


        var currentdate = $('#payment').val();
        var patient_firstname = $('#payment1').val();
        var patient_lastname = $('#payment2').val();
        var patient_address = $('#payment3').val();
        var patient_city = $('#payment4').val();
        var patient_state = $('#payment5').val();
        var patienttext1 = $('#payment6').val();
        var patienttext2 = $('#payment7').val();
        var patienttext3 = $('#payment8').val();
        var patienttext4 = $('#payment9').val();
        var patienttext5 = $('#payment10').val();
        var patienttext6 = $('#payment11').val();
        $.ajax({
            url: "generatepaymentwaiverpdf",
            type: "POST", //send it through get method
            data: {
                currentdate: currentdate,
                patientid: $("#patientCombo option:selected").val(),
                Patientlastname: patient_lastname,
                Patientfirstname: patient_firstname,
                Patientgender: values1,
                patientaddress: patient_address,
                patientcity: patient_city,
                patientstate: patient_state,
                patienttxt1: patienttext1,
                patienttxt2: patienttext2,
                patienttxt3: patienttext3,
                patienttxt4: patienttext4,
                patienttxt5: patienttext5,
                patienttxt6: patienttext6,
                Signonpatient: sign_22pay_1
            },
            success: function (response) {
                if (response.length > 0)
                { 
                    $("#PaymentWaiver_Form").modal('hide');
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
        window.signaturePad1 = new SignaturePad($('#paywai01').get(0), {});
    });
    var sign_22pay_clear = function () {
        window.signaturePad1.clear()
    }
</script>

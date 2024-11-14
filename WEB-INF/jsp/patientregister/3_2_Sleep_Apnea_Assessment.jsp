<div class="modal fade centerAligned" id="Sleep_Apnea_Assessment" tabindex="-1" data-backdrop="static" data-keyboard="false" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-xl">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title" id="myModalLabel">
                    SLEEP DISORDER ASSESSMENT    
                </h4>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>

            </div>
            <div class="container">
                <form id="form_sleep">
                    <div class="card-body">
                        <div class="row">
                            <div class="col-12">FULL NAME :<input type="text" name="sleep1" id="sleep1" class="data_patient_name col-6 dateborder" style="padding:0">
                            DOB:<input type="date" name="sleep2" id="sleep2" class="data_inputDOB col-2 dateborder">
                            Date:<input type="text" name="currentDate" id="patientDate" autocomplete="off" class="notfuturedate col-2 dateborder"></div>

                            <div class="col-4 col-xl-4 col-md-6" style="margin-top: 10px">ADDRESS :<input type="text" name="sleep3" id="sleep3" class="data_inputAddress col-9 dateborder" style="margin-top: 5px"></div>
                            <div class="col-3 col-xl-3 col-md-6" style="margin-top: 10px">City:<input type="text" name="sleep4" id="sleep4" class="data_inputCity col-9 dateborder" style="margin-top: 5px"></div>
                            <div class="col-2 col-xl-2 col-md-6" style="margin-top: 10px">State:<input type="text" name="sleep5" id="sleep5" class="data_inputState col-9 dateborder" style="margin-top: 5px"></div>
                            <div class="col-3" style="margin-top: 10px">Zip:<input type="text" name="sleep6" id="sleep6" class="data_inputZip col-9 dateborder" style="margin-top: 5px"></div>

                            <div class="col-6" style="margin-top: 10px">MOBILE NUMBER : <input type="text" name="sleep7" id="sleep7" class="data_inputPhone col-7 dateborder" style="margin-top: 5px" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*?)\..*/g, '$1');"> </div>
                            <div class="col-6" style="margin-top: 10px">E-mail Address : <input type="text" name="sleep8" id="sleep8" class="data_inputEmail col-8 dateborder" style="margin-top: 5px"></div>

                            <div class="col-6 col-xl-6 col-md-6" style="margin-top: 10px">Practice Name :&nbsp;  <input type="text" name="sleep9" id="sleep9" style="margin-top: 5px" readonly class="col-8 dateborder data_practice_name"></div>
                            <div class="col-6 col-xl-6 col-md-6" style="margin-top: 10px">OFFICE PHONE NUMBER : <input type="text" name="sleep10" id="sleep10" class="col-6 dateborder" style="margin-top: 5px" maxlength="10" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*?)\..*/g, '$1');"></div>
                            <!--<div class="col-6" style="margin-top: 10px">Practice Name:<input type="text" name="sleep12" id="sleep12" readonly class="col-9 dateborder data_practice_name"> </div>-->

                            <div class='col-12' style="margin-top: 15px;">
                                <p style='font-weight: bold'>
                                    Complete the following questionnaire to the best of your abilities by circling the answer to each question. Answers to these 
                                    questions will help us determine how well you rest at night and the likelihood that you might be suffering from a lifethreatening condition.
                                </p>
                            </div>
                        </div>

                        <div class='row'>
                            <table class="table-bordered" style="width:100%">
                                <tr>
                                    <td colspan='5' style="text-align: center;font-size: 17px;color: orange;">SLEEP QUESTIONNAIRE </td>
                                </tr>
                                <tr>
                                    <td>1</td>
                                    <td class="col-9">Has anyone told you that you stop breathing while asleep?</td>
                                    <td class="col-1">
                                        <div class="custom-control custom-radio custom-control-inline">
                                            <input type="radio" name="saa32sn1" class="custom-control-input input-primary sumradi" id="saa32_1" value="4">
                                            <label class="custom-control-label" for="saa32_1">Yes</label>
                                        </div>
                                    </td>
                                    <td class="col-1">
                                        <div class="custom-control custom-radio custom-control-inline">
                                            <input type="radio" name="saa32sn1" class="custom-control-input input-primary sumradi" id="saa32_2" value="0">
                                            <label class="custom-control-label" for="saa32_2">No</label>
                                        </div>
                                    </td>
                                    <td class="col-1">4</td>
                                </tr>
                                <tr>
                                    <td>2</td>
                                    <td class="col-9">Have you ever been involved in any type of accident because you nodded off or fell asleep? </td>
                                    <td class="col-1"><div class="custom-control custom-radio custom-control-inline">
                                            <input type="radio" name="saa32sn2" class="custom-control-input input-primary sumradi" id="saa32_3" value="3">
                                            <label class="custom-control-label" for="saa32_3">Yes</label>
                                        </div></td>
                                    <td class="col-1"><div class="custom-control custom-radio custom-control-inline">
                                            <input type="radio" name="saa32sn2" class="custom-control-input input-primary sumradi" id="saa32_4" value="0">
                                            <label class="custom-control-label" for="saa32_4">No</label>
                                        </div></td>
                                    <td class="col-1">3</td>
                                </tr>
                                <tr>
                                    <td>3</td>
                                    <td class="col-9">Have you ever nodded off or fallen asleep while driving? </td>
                                    <td class="col-1"><div class="custom-control custom-radio custom-control-inline">
                                            <input type="radio" name="saa32sn3" class="custom-control-input input-primary sumradi" id="saa32_5" value="3">
                                            <label class="custom-control-label" for="saa32_5">Yes</label>
                                        </div></td>
                                    <td class="col-1"><div class="custom-control custom-radio custom-control-inline">
                                            <input type="radio" name="saa32sn3" class="custom-control-input input-primary sumradi" id="saa32_6" value="0" >
                                            <label class="custom-control-label" for="saa32_6">No</label>
                                        </div></td>
                                    <td class="col-1">3</td>
                                </tr>
                                <tr>
                                    <td>4</td>
                                    <td class="col-9">Have you woken up suddenly gasping for air, heart racing or with shortness of breath?</td>
                                    <td class="col-1"><div class="custom-control custom-radio custom-control-inline">
                                            <input type="radio" name="saa32sn4" class="custom-control-input input-primary sumradi" id="saa32_7" value="3">
                                            <label class="custom-control-label" for="saa32_7">Yes</label>
                                        </div></td>
                                    <td class="col-1"><div class="custom-control custom-radio custom-control-inline">
                                            <input type="radio" name="saa32sn4" class="custom-control-input input-primary sumradi" id="saa32_8" value="0">
                                            <label class="custom-control-label" for="saa32_8">No</label>
                                        </div></td>
                                    <td class="col-1">3</td>
                                </tr>
                                <tr>
                                    <td>5</td>
                                    <td class="col-9">Do you grind your teeth?</td>
                                    <td class="col-1"><div class="custom-control custom-radio custom-control-inline">
                                            <input type="radio" name="saa32sn5" class="custom-control-input input-primary sumradi" id="saa32_9" value="3">
                                            <label class="custom-control-label" for="saa32_9">Yes</label>
                                        </div></td>
                                    <td class="col-1"><div class="custom-control custom-radio custom-control-inline">
                                            <input type="radio" name="saa32sn5" class="custom-control-input input-primary sumradi" id="saa32_10" value="0">
                                            <label class="custom-control-label" for="saa32_10">No</label>
                                        </div></td>
                                    <td class="col-1">3</td>
                                </tr>
                                <tr>
                                    <td>6</td>
                                    <td class="col-9"> Do you snore or has someone ever told you that you snore?</td>
                                    <td class="col-1"><div class="custom-control custom-radio custom-control-inline">
                                            <input type="radio" name="saa32sn6" class="custom-control-input input-primary sumradi" id="saa32_11" value="3">
                                            <label class="custom-control-label" for="saa32_11">Yes</label>
                                        </div></td>
                                    <td class="col-1"><div class="custom-control custom-radio custom-control-inline">
                                            <input type="radio" name="saa32sn6" class="custom-control-input input-primary sumradi" id="saa32_12" value="0">
                                            <label class="custom-control-label" for="saa32_12">No</label>
                                        </div></td>
                                    <td class="col-1">3</td>
                                </tr>
                                <tr>
                                    <td>7</td>
                                    <td class="col-9">Does anyone in your family have a history of snoring or sleep apnea? </td>
                                    <td class="col-1"><div class="custom-control custom-radio custom-control-inline">
                                            <input type="radio" name="saa32sn7" class="custom-control-input input-primary sumradi" id="saa32_13" value="3">
                                            <label class="custom-control-label" for="saa32_13">Yes</label>
                                        </div></td>
                                    <td class="col-1"><div class="custom-control custom-radio custom-control-inline">
                                            <input type="radio" name="saa32sn7" class="custom-control-input input-primary sumradi" id="saa32_14" value="0">
                                            <label class="custom-control-label" for="saa32_14">No</label>
                                        </div></td>
                                    <td class="col-1">3</td>
                                </tr>
                                <tr>
                                    <td>8</td>
                                    <td class="col-9"> Do you feel tired or sleepy throughout the day?</td>
                                    <td class="col-1"><div class="custom-control custom-radio custom-control-inline">
                                            <input type="radio" name="saa32sn8" class="custom-control-input input-primary sumradi" id="saa32_15" value="2">
                                            <label class="custom-control-label" for="saa32_15">Yes</label>
                                        </div></td>
                                    <td class="col-1"><div class="custom-control custom-radio custom-control-inline">
                                            <input type="radio" name="saa32sn8" class="custom-control-input input-primary sumradi" id="saa32_16" value="0">
                                            <label class="custom-control-label" for="saa32_16">No</label>
                                        </div></td>
                                    <td class="col-1">2</td>
                                </tr>
                                <tr>
                                    <td>9</td>
                                    <td class="col-9">Does it take you less than 10 minutes to fall asleep?</td>
                                    <td class="col-1"><div class="custom-control custom-radio custom-control-inline">
                                            <input type="radio" name="saa32sn9" class="custom-control-input input-primary sumradi" id="saa32_17" value="2">
                                            <label class="custom-control-label" for="saa32_17">Yes</label>
                                        </div></td>
                                    <td class="col-1"><div class="custom-control custom-radio custom-control-inline">
                                            <input type="radio" name="saa32sn9" class="custom-control-input input-primary sumradi" id="saa32_18" value="0">
                                            <label class="custom-control-label" for="saa32_18">No</label>
                                        </div></td>
                                    <td class="col-1">2</td>
                                </tr>
                                <tr>
                                    <td>10</td>
                                    <td class="col-9"> Does it take you more than 20 minutes to fall asleep?</td>
                                    <td class="col-1"><div class="custom-control custom-radio custom-control-inline">
                                            <input type="radio" name="saa32sn10" class="custom-control-input input-primary sumradi" id="saa32_19" value="2">
                                            <label class="custom-control-label" for="saa32_19">Yes</label>
                                        </div></td>
                                    <td class="col-1"><div class="custom-control custom-radio custom-control-inline">
                                            <input type="radio" name="saa32sn10" class="custom-control-input input-primary sumradi" id="saa32_20" value="0">
                                            <label class="custom-control-label" for="saa32_20">No</label>
                                        </div></td>
                                    <td class="col-1">2</td>
                                </tr>
                                <tr>
                                    <td>11</td>
                                    <td class="col-9"> One you fall asleep, do you have trouble staying asleep?</td>
                                    <td class="col-1"><div class="custom-control custom-radio custom-control-inline">
                                            <input type="radio" name="saa32sn11" class="custom-control-input input-primary sumradi" id="saa32_21" value="2">
                                            <label class="custom-control-label" for="saa32_21">Yes</label>
                                        </div></td>
                                    <td class="col-1"><div class="custom-control custom-radio custom-control-inline">
                                            <input type="radio" name="saa32sn11" class="custom-control-input input-primary sumradi" id="saa32_22" value="0">
                                            <label class="custom-control-label" for="saa32_22">No</label>
                                        </div></td>
                                    <td class="col-1">2</td>
                                </tr>
                                <tr>
                                    <td>12</td>
                                    <td class="col-9">Do you find it difficult to manage your weight?</td>
                                    <td class="col-1"><div class="custom-control custom-radio custom-control-inline">
                                            <input type="radio" name="saa32sn12" class="custom-control-input input-primary sumradi" id="saa32_23" value="1">
                                            <label class="custom-control-label" for="saa32_23">Yes</label>
                                        </div></td>
                                    <td class="col-1"><div class="custom-control custom-radio custom-control-inline">
                                            <input type="radio" name="saa32sn12" class="custom-control-input input-primary sumradi" id="saa32_24" value="0">
                                            <label class="custom-control-label" for="saa32_24">No</label>
                                        </div></td>
                                    <td class="col-1">1</td>
                                </tr>
                                <tr>
                                    <td>13</td>
                                    <td class="col-9"> Do you suffer from Headaches during the morning or during the night?</td>
                                    <td class="col-1"><div class="custom-control custom-radio custom-control-inline">
                                            <input type="radio" name="saa32sn13" class="custom-control-input input-primary sumradi" id="saa32_25" value="1">
                                            <label class="custom-control-label" for="saa32_25">Yes</label>
                                        </div></td>
                                    <td class="col-1"><div class="custom-control custom-radio custom-control-inline">
                                            <input type="radio" name="saa32sn13" class="custom-control-input input-primary sumradi" id="saa32_26" value="0">
                                            <label class="custom-control-label" for="saa32_26">No</label>
                                        </div></td>
                                    <td class="col-1">1</td>
                                </tr>
                                <tr>
                                    <td colspan='5' style="text-align: center;font-size: 17px;color: orange;">MEDICAL HISTORY </td>
                                </tr>
                                <tr>
                                    <td>14</td>
                                    <td class="col-9">Have you been diagnosed with high blood pressure or take medication for it? </td>
                                    <td class="col-1"><div class="custom-control custom-radio custom-control-inline">
                                            <input type="radio" name="saa32sn14" class="custom-control-input input-primary sumradi" id="saa32_27" value="3">
                                            <label class="custom-control-label" for="saa32_27">Yes</label>
                                        </div></td>
                                    <td class="col-1"><div class="custom-control custom-radio custom-control-inline">
                                            <input type="radio" name="saa32sn14" class="custom-control-input input-primary sumradi" id="saa32_28" value="0">
                                            <label class="custom-control-label" for="saa32_28">No</label>
                                        </div></td>
                                    <td class="col-1">3</td>
                                </tr>
                                <tr>
                                    <td>15</td>
                                    <td class="col-9">Do you suffer from acid reflux?</td>
                                    <td class="col-1"><div class="custom-control custom-radio custom-control-inline">
                                            <input type="radio" name="saa32sn15" class="custom-control-input input-primary sumradi" id="saa32_29" value="3">
                                            <label class="custom-control-label" for="saa32_29">Yes</label>
                                        </div></td>
                                    <td class="col-1"><div class="custom-control custom-radio custom-control-inline">
                                            <input type="radio" name="saa32sn15" class="custom-control-input input-primary sumradi" id="saa32_30" value="0">
                                            <label class="custom-control-label" for="saa32_30">No</label>
                                        </div></td>
                                    <td class="col-1">3</td>
                                </tr>
                                <tr>
                                    <td>16</td>
                                    <td class="col-9">Do you suffer from heart disease or have you had a stroke?</td>
                                    <td class="col-1"><div class="custom-control custom-radio custom-control-inline">
                                            <input type="radio" name="saa32sn16" class="custom-control-input input-primary sumradi" id="saa32_31" value="3">
                                            <label class="custom-control-label" for="saa32_31">Yes</label>
                                        </div></td>
                                    <td class="col-1"><div class="custom-control custom-radio custom-control-inline">
                                            <input type="radio" name="saa32sn16" class="custom-control-input input-primary sumradi" id="saa32_32" value="0">
                                            <label class="custom-control-label" for="saa32_32">No</label>
                                        </div></td>
                                    <td class="col-1">3</td>
                                </tr>
                                <tr>
                                    <td>17</td>
                                    <td class="col-9"> Have you been diagnosed with a sleep disorder?</td>
                                    <td class="col-1"><div class="custom-control custom-radio custom-control-inline">
                                            <input type="radio" name="saa32sn17" class="custom-control-input input-primary sumradi" id="saa32_33" value="3">
                                            <label class="custom-control-label" for="saa32_33">Yes</label>
                                        </div></td>
                                    <td class="col-1"><div class="custom-control custom-radio custom-control-inline">
                                            <input type="radio" name="saa32sn17" class="custom-control-input input-primary sumradi" id="saa32_34" value="0">
                                            <label class="custom-control-label" for="saa32_34">No</label>
                                        </div></td>
                                    <td class="col-1">3</td>
                                </tr>
                                <tr>
                                    <td>18</td>
                                    <td class="col-9">Have you stopped using your CPAP device?</td>
                                    <td class="col-1"><div class="custom-control custom-radio custom-control-inline">
                                            <input type="radio" name="saa32sn18" class="custom-control-input input-primary sumradi" id="saa32_35" value="3">
                                            <label class="custom-control-label" for="saa32_35">Yes</label>
                                        </div></td>
                                    <td class="col-1"><div class="custom-control custom-radio custom-control-inline">
                                            <input type="radio" name="saa32sn18" class="custom-control-input input-primary sumradi" id="saa32_36" value="0">
                                            <label class="custom-control-label" for="saa32_36">No</label>
                                        </div></td>
                                    <td class="col-1">3</td>
                                </tr>
                                <tr>
                                    <td>19</td>
                                    <td class="col-9">Are you wearing your CPAP less than 5 times per week?</td>
                                    <td class="col-1"><div class="custom-control custom-radio custom-control-inline">
                                            <input type="radio" name="saa32sn19" class="custom-control-input input-primary sumradi" id="saa32_37" value="3">
                                            <label class="custom-control-label" for="saa32_37">Yes</label>
                                        </div></td>
                                    <td class="col-1"><div class="custom-control custom-radio custom-control-inline">
                                            <input type="radio" name="saa32sn19" class="custom-control-input input-primary sumradi" id="saa32_38" value="0">
                                            <label class="custom-control-label" for="saa32_38">No</label>
                                        </div></td>
                                    <td class="col-1">3</td>
                                </tr>
                                <input type="hidden" name="total" id="total"/>
                            </table>
                            <table class="table-bordered" width="100%">
                                <tr>
                                    <td colspan='5' style="text-align: center;font-size: 17px;color: black;">Please add all the questions you answered Y or N here ?  </td>
                                </tr>
                                <tr style="background: black;color: white;font-size: 16px;text-align: center;">
                                    <td style="width: 20%">RISK LEVEL </td>
                                    <td  style="width: 20% ; ">LOW RISK</td>
                                    <td style="width: 20% ; ">MODERATE RISK</td>
                                    <td style="width: 20% ; ">HIGH RISK</td>
                                    <td style="width: 20% ; ">SEVERE RISK</td>
                                </tr>
                                <tr style="font-size: 16px;text-align: center;">
                                    <td  style="width: 20%">RANGE TOTAL </td>
                                    <td class="zerocolor" id="color1" name="color1" style="width: 20% ; ">0 TO 3</td>
                                    <td class="midcolor" id="color1" name="color1" style="width: 20% ; ">4 TO 5</td>
                                    <td class="highcolor" id="color1" name="color1" style="width: 20% ; ">6 TO 7</td>
                                    <td class="severecolor" id="color1" name="color1" style="width: 20% ; ">8+</td>
                                </tr>
                            </table>
                            <div class="col-6">
                                <div class="row" style="margin-top: 15px">
                                    <div class="col-12">
                                        <canvas id="sign_32saa1" width="320" height="80">		 			
                                        </canvas>
                                    </div>
                                </div>
                                <p>PATIENT Signature<span style="color: red;margin: 20px;"><a onclick="sign_32saa1_clear()">Clear Signature</a></span></p>
                            </div>
                            <div class="col-6" style="display: flex;align-items: flex-end;height: 75px; margin-bottom: 169px">
                                Date:<input type="text" name="sleep11" id="sleep11" autocomplete="off"  class=" notfuturedate col-auto dateborder" style="padding:0">   
                            </div>  
                            <div class="col-12">
                            </div>
                        </div>

                    </div>  
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                <button type="button" class="btn btn-primary" id="buttonid" onclick="onSleepAssesment(this)">Submit</button>
            </div>
        </div>
    </div>
</div>

<!--==================================================================================-->

<script>
      $(".sumradi").click(function() {
           
           var total = 0;
            $(".sumradi:checked").each(function() {
          total += parseInt($(this).val());
             })
            $("#total").val(total);
            var avg=Math.round(total/50*10);
            if(avg ==0 || avg==1 || avg==2 || avg==3 )
            {
                $(".zerocolor").css( "background", "green"); 
                $(".midcolor").css( "background", "none");
                $(".highcolor").css( "background", "none");
                $(".severecolor").css( "background", "none");
                
            }
            else if (avg==4 || avg== 5)
            {
                $(".midcolor").css( "background", "yellow"); 
                $(".zerocolor").css( "background", "none");
                $(".highcolor").css( "background", "none");
                $(".severecolor").css( "background", "none");
            }
            else if(avg==6 || avg== 7)
            {
                $(".highcolor").css( "background", "orange");
                $(".midcolor").css( "background", "none");
                $(".zerocolor").css( "background", "none");
                $(".severecolor").css( "background", "none");
            }
            else
            {
                $(".severecolor").css( "background", "red");   
                $(".midcolor").css( "background", "none");
                $(".highcolor").css( "background", "none");
                $(".zerocolor").css( "background", "none");
            }
          });

    function onSleepAssesment(buttonObj)
    {
         if(!$('#patientDate').val())
           {
            msgbox("Date is Mandatory", "Patient Checklist", "error");
            return false;
           }
        $(buttonObj).attr('disabled', 'disabled');
        $(buttonObj).text('Sending...');

        $(buttonObj).off('click'); //disables click event
        
      
        var sign_sleep = window.sign_32saa1.toDataURL("image/png");
        var sign_sleep_1 = sign_sleep.replace('data:image/png;base64,', '');

        let checkboxes = document.querySelectorAll('input[name="saa32sn1"]:checked');
        let values = [];
        checkboxes.forEach((checkbox) => {
            values.push(checkbox.value);
        });

        let checkboxes1 = document.querySelectorAll('input[name="saa32sn2"]:checked');
        let values1 = [];
        checkboxes1.forEach((checkbox) => {
            values1.push(checkbox.value);
        });

        let checkboxes2 = document.querySelectorAll('input[name="saa32sn3"]:checked');
        let values2 = [];
        checkboxes2.forEach((checkbox) => {
            values2.push(checkbox.value);
        });

        let checkboxes3 = document.querySelectorAll('input[name="saa32sn4"]:checked');
        let values3 = [];
        checkboxes3.forEach((checkbox) => {
            values3.push(checkbox.value);
        });

        let checkboxes4 = document.querySelectorAll('input[name="saa32sn5"]:checked');
        let values4 = [];
        checkboxes4.forEach((checkbox) => {
            values4.push(checkbox.value);
        });

        let checkboxes5 = document.querySelectorAll('input[name="saa32sn6"]:checked');
        let values5 = [];
        checkboxes5.forEach((checkbox) => {
            values5.push(checkbox.value);
        });

        let checkboxes6 = document.querySelectorAll('input[name="saa32sn7"]:checked');
        let values6 = [];
        checkboxes6.forEach((checkbox) => {
            values6.push(checkbox.value);
        });

        let checkboxes7 = document.querySelectorAll('input[name="saa32sn8"]:checked');
        let values7 = [];
        checkboxes7.forEach((checkbox) => {
            values7.push(checkbox.value);
        });

        let checkboxes8 = document.querySelectorAll('input[name="saa32sn9"]:checked');
        let values8 = [];
        checkboxes8.forEach((checkbox) => {
            values8.push(checkbox.value);
        });

        let checkboxes9 = document.querySelectorAll('input[name="saa32sn10"]:checked');
        let values9 = [];
        checkboxes9.forEach((checkbox) => {
            values9.push(checkbox.value);
        });

        let checkboxes10 = document.querySelectorAll('input[name="saa32sn11"]:checked');
        let values10 = [];
        checkboxes10.forEach((checkbox) => {
            values10.push(checkbox.value);
        });

        let checkboxes11 = document.querySelectorAll('input[name="saa32sn12"]:checked');
        let values11 = [];
        checkboxes11.forEach((checkbox) => {
            values11.push(checkbox.value);
        });

        let checkboxes12 = document.querySelectorAll('input[name="saa32sn13"]:checked');
        let values12 = [];
        checkboxes12.forEach((checkbox) => {
            values12.push(checkbox.value);
        });

        let checkboxes13 = document.querySelectorAll('input[name="saa32sn14"]:checked');
        let values13 = [];
        checkboxes13.forEach((checkbox) => {
            values13.push(checkbox.value);
        });

        let checkboxes14 = document.querySelectorAll('input[name="saa32sn15"]:checked');
        let values14 = [];
        checkboxes14.forEach((checkbox) => {
            values14.push(checkbox.value);
        });

        let checkboxes15 = document.querySelectorAll('input[name="saa32sn16"]:checked');
        let values15 = [];
        checkboxes15.forEach((checkbox) => {
            values15.push(checkbox.value);
        });

        let checkboxes16 = document.querySelectorAll('input[name="saa32sn17"]:checked');
        let values16 = [];
        checkboxes16.forEach((checkbox) => {
            values16.push(checkbox.value);
        });

        let checkboxes17 = document.querySelectorAll('input[name="saa32sn18"]:checked');
        let values17 = [];
        checkboxes17.forEach((checkbox) => {
            values17.push(checkbox.value);
        });

        let checkboxes18 = document.querySelectorAll('input[name="saa32sn19"]:checked');
        let values18 = [];
        checkboxes18.forEach((checkbox) => {
            values18.push(checkbox.value);
        });

            var totals =  $("#total").val();
            var avgs=Math.round(totals/50*10);

        var patientname = $('#sleep1').val();
        var patientdob = $('#sleep2').val();
        var patientaddress = $('#sleep3').val();
        var patientcity = $('#sleep4').val();
        var patientstate = $('#sleep5').val();
        var patientzip = $('#sleep6').val();
        var patientphone = $('#sleep7').val();
        var patientemail = $('#sleep8').val();
        var practicename = $('#sleep9').val();
        var officephone = $('#sleep10').val();
        var signdate1 = $('#sleep11').val();
        var currentDate = $('#patientDate').val();


        $.ajax({
            url: "generatesleepassesmentpdf",
            type: "POST", //send it through get method
            data: {
                patientid: $("#patientCombo option:selected").val(),
                patientname: patientname,
                patientdob : patientdob,
                patientaddress : patientaddress,
                patientcity : patientcity,
                patientstate : patientstate,
                patientzip : patientzip,
                lastname : $("#inputLastName").val(),
                firstname : $("#inputFirstName").val(),
                patientphone : patientphone,
                patientemail : patientemail,
                practicename  : practicename,
                officephone : officephone,
                patientradiobtn1 : values,
                patientradiobtn2 : values1,
                patientradiobtn3 : values2,
                patientradiobtn4 : values3,
                patientradiobtn5 : values4,
                patientradiobtn6 : values5,
                patientradiobtn7 : values6,
                patientradiobtn8 : values7,
                patientradiobtn9 : values8,
                patientradiobtn10 : values9,
                patientradiobtn11 : values10,
                patientradiobtn12 : values11,
                patientradiobtn13 : values12,
                patientradiobtn14 : values13,
                patientradiobtn15 : values14,
                patientradiobtn16 : values15,
                patientradiobtn17 : values16,
                patientradiobtn18 : values17,
                patientradiobtn19 : values18,
                patientsignature : sign_sleep_1,
                signdate1 : signdate1,
                riskaverage : avgs,
                currentDate :currentDate
            },
            success: function (response) {
                if (response.length > 0)
                {
                    $("#Sleep_Apnea_Assessment").modal('hide');
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
        window.sign_32saa1 = new SignaturePad($('#sign_32saa1').get(0), {});

    });
    var sign_32saa1_clear = function () {
        window.sign_32saa1.clear()
    }
</script>
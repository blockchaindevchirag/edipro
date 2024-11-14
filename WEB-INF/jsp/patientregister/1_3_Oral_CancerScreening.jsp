<div class="modal fade centerAligned" id="PaymentWaiverForm" tabindex="-1" data-backdrop="static" data-keyboard="false" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-xl">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title" id="myModalLabel">
                    ORAL CANCER SCREENING QUESTIONAIRE     
                </h4>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>

            </div>
            <div class="container">
                <form id="oral_cancer_1_3s">
                    <div class="card-body">
                        <div class="row">
                            <div class="col-6">
                                Patient Name:<input type="text" name="oralcantxt1" id="oralcantxt1" class="col-9 dateborder data_patient_name"></div>
                            <div class="col-6">
                                Practice Name:<input type="text" name="oralcantxt25" id="oralcantxt25" readonly class="col-8 dateborder data_practice_name"> </div> 
                            <div class="col-3" style="margin-top: 15px;">
                                DOB:<input type="date" name="oralcantxt2" id="oralcantxt2" class="data_inputDOB col-auto dateborder"></div>
                            <div class="col-3" style="margin-top: 15px;display: inline-flex">
                                <!--<label class="">Sex</label>-->
                                <div class="custom-control custom-radio custom-control-inline">
                                    <input type="radio" name="ocsradio1" value="1" class="data_gender custom-control-input input-primary" id="ocs1"  onclick="return false;">
                                    <label class="custom-control-label" for="ocs1">Male</label>
                                </div>
                                <div class="custom-control custom-radio custom-control-inline">
                                    <input type="radio" name="ocsradio1" value="2" class="data_gender custom-control-input input-primary" id="ocs2"  onclick="return false;">
                                    <label class="custom-control-label" for="ocs2">Female</label>
                                </div>
                                <div class="custom-control custom-radio custom-control-inline">
                                    <input type="radio" name="ocsradio1" value="3" class="data_gender custom-control-input input-primary" id="ocs3_0"  onclick="return false;">
                                    <label class="custom-control-label" for="ocs3_0">Other</label>
                                </div>
                            </div>
                            <div class="col-6" style="margin-top: 15px; text-align: center"> 

                                Date :<input type="text" name="oralcantxt26" id="oralcantxt26"  autocomplete="off" class="dateborder notfuturedate "></div>


                            <div class="col-3 col-xl-3 col-md-4" style="margin-top: 10px">Address:<input type="text" name="oralcantxt3" id="oralcantxt3" class="data_inputAddress col-9 dateborder" style="margin-top: 5px"></div>
                            <div class="col-3" style="margin-top: 10px">City:<input type="text" name="oralcantxt4" readonly id="oralcantxt4" class="data_inputCity col-9 dateborder" style="margin-top: 5px"></div>
                            <div class="col-3" style="margin-top: 10px">State:<input type="text" name="oralcantxt5"  id="oralcantxt5" class="data_inputState col-9 dateborder" style="margin-top: 5px"></div>
                            <div class="col-3" style="margin-top: 10px">Zip:<input type="text" name="oralcantxt6"  id="oralcantxt6" class="data_inputZip col-9 dateborder" style="margin-top: 5px" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*?)\..*/g, '$1');"></div>

                            <div class="col-4" style="margin-top: 10px">Phone: <input type="text" name="oralcantxt7" id="oralcantxt7" class="data_inputPhone col-7 dateborder" style="margin-top: 5px" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*?)\..*/g, '$1');"> </div>
                            <div class="col-4" style="margin-top: 10px">Occupation <input type="text" name="oralcantxt8" id="oralcantxt8" class="col-8 dateborder" style="margin-top: 5px"> </div>
                            <div class="col-4 col-xl-4 col-md-6" style="margin-top: 10px">E-mail Address <input type="text" name="oralcantxt9" id="oralcantxt9" class="data_inputEmail col-8 dateborder" style="margin-top: 5px"></div>

                            <div class="col-4 col-xl-4 col-md-6" style="margin-top: 10px">Primary Physician Name:<input type="text" name="oralcantxt10" id="oralcantxt10" class="dateborder" style="margin-top: 5px"></div>
                            <div class="col-4" style="margin-top: 10px">Phone: <input type="text" name="oralcantxt11" id="oralcantxt11" class="col-7 dateborder" style="margin-top: 5px" maxlength="10" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*?)\..*/g, '$1');"></div>
                            <div class="col-4" style="margin-top: 10px">Fax: <input type="text" name="oralcantxt12" id="oralcantxt12" class="col-7 dateborder" style="margin-top: 5px" maxlength="10" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*?)\..*/g, '$1');"></div>
                        </div>
                        <div class="row">
                            <span style="font-size: 14px;font-weight: bold;padding-left: 9px;margin-top: 15px;">Please circle or fill in responses to the following statements:</span>
                            <table class="table table-borderless table-responsive" style="margin-left: 12px;">
                                <tr>
                                    <td>I have been treated for skin cancer of the head and neck.</td>
                                    <td><div class="custom-control custom-radio custom-control-inline">
                                            <input type="radio" name="ocsradio2" class="custom-control-input input-primary" id="ocs3" value="YES">
                                            <label class="custom-control-label" for="ocs3">Yes</label>
                                        </div></td>
                                    <td><div class="custom-control custom-radio custom-control-inline">
                                            <input type="radio" name="ocsradio2" class="custom-control-input input-primary" id="ocs4" value="NO">
                                            <label class="custom-control-label" for="ocs4">No</label>
                                        </div></td>
                                    <td>Other cancer:</td>
                                    <td><div class="custom-control custom-radio custom-control-inline">
                                            <input type="radio" name="ocsradio3" class="custom-control-input input-primary" id="ocs5" value="YES">
                                            <label class="custom-control-label" for="ocs5">Yes</label>
                                        </div></td>
                                    <td><div class="custom-control custom-radio custom-control-inline">
                                            <input type="radio" name="ocsradio3" class="custom-control-input input-primary" id="ocs6" value="NO">
                                            <label class="custom-control-label" for="ocs6">No</label>
                                        </div></td>
                                    <td>Location:<input type="text" name="oralcantxt13" id="oralcantxt13" class="dateborder" style="margin-top: 5px"></td>
                                </tr>
                                <tr>
                                    <td colspan="4">I have family members who have been treated for cancer of the oral, head and neck.</td>
                                    <td><div class="custom-control custom-radio custom-control-inline">
                                            <input type="radio" name="ocsradio4" class="custom-control-input input-primary" id="ocs7" value="YES">
                                            <label class="custom-control-label" for="ocs7">Yes</label>
                                        </div></td>
                                    <td><div class="custom-control custom-radio custom-control-inline">
                                            <input type="radio" name="ocsradio4" class="custom-control-input input-primary" id="ocs8" value="NO">
                                            <label class="custom-control-label" for="ocs8">No</label>
                                        </div></td>
                                    <td>Location:<input type="text" name="oralcantxt14" id="oralcantxt14" class="dateborder" style="margin-top: 5px"></td>
                                </tr>
                                <tr>
                                    <td colspan="4">I have had prior medical, surgical, or radiation treatments to the head, neck & mouth region.</td>
                                    <td><div class="custom-control custom-radio custom-control-inline">
                                            <input type="radio" name="ocsradio5" class="custom-control-input input-primary" id="ocs9" value="YES">
                                            <label class="custom-control-label" for="ocs9">Yes</label>
                                        </div></td>
                                    <td><div class="custom-control custom-radio custom-control-inline">
                                            <input type="radio" name="ocsradio5" class="custom-control-input input-primary" id="ocs10" value="NO">
                                            <label class="custom-control-label" for="ocs10">No</label>
                                        </div></td>
                                    <td>Location:<input type="text" name="oralcantxt15" id="oralcantxt15" class="dateborder" style="margin-top: 5px"></td>
                                </tr>
                                <tr>
                                    <td>I currently use tobacco.</td>
                                    <td><div class="custom-control custom-radio custom-control-inline">
                                            <input type="checkbox" name="ocsradiochk1" class="custom-control-input input-primary" id="ocs11" value="oralcanc1">
                                            <label class="custom-control-label" for="ocs11">Chewing</label>
                                        </div></td>
                                    <td><div class="custom-control custom-radio custom-control-inline">
                                            <input type="checkbox" name="ocsradiochk2" class="custom-control-input input-primary" id="ocs12" value="oralcanc2">
                                            <label class="custom-control-label" for="ocs12">Snuff</label>
                                        </div></td>
                                    <td><div class="custom-control custom-radio custom-control-inline">
                                            <input type="checkbox" name="ocsradiochk3" class="custom-control-input input-primary" id="ocs13" value="oralcanc3">
                                            <label class="custom-control-label" for="ocs13">Cigarettes</label>
                                        </div></td>
                                    <td><div class="custom-control custom-radio custom-control-inline">
                                            <input type="checkbox" name="ocsradiochk4" class="custom-control-input input-primary" id="ocs14" value="oralcanc4">
                                            <label class="custom-control-label" for="ocs14">Cigars</label>
                                        </div></td>
                                    <td><div class="custom-control custom-radio custom-control-inline">
                                            <input type="checkbox" name="ocsradiochk5" class="custom-control-input input-primary" id="ocs15" value="oralcanc5">
                                            <label class="custom-control-label" for="ocs15">Pipes</label>
                                        </div></td>
                                    <td><div class="custom-control custom-radio custom-control-inline">
                                            <input type="checkbox" name="ocsradiochk6" class="custom-control-input input-primary" id="ocs16" value="oralcanc6">
                                            <label class="custom-control-label" for="ocs16">None</label>
                                        </div></td>

                                </tr>
                                <tr>
                                    <td>I formerly used tobacco.</td>
                                    <td><div class="custom-control custom-radio custom-control-inline">
                                            <input type="checkbox" name="ocsradiochk7" class="custom-control-input input-primary" id="ocs17" value="oralcanc7">
                                            <label class="custom-control-label" for="ocs17">Chewing</label>
                                        </div></td>
                                    <td><div class="custom-control custom-radio custom-control-inline">
                                            <input type="checkbox" name="ocsradiochk8" class="custom-control-input input-primary" id="ocs18" value="oralcanc8">
                                            <label class="custom-control-label" for="ocs18">Snuff</label>
                                        </div></td>
                                    <td><div class="custom-control custom-radio custom-control-inline">
                                            <input type="checkbox" name="ocsradiochk9" class="custom-control-input input-primary" id="ocs19" value="oralcanc9">
                                            <label class="custom-control-label" for="ocs19">Cigarettes</label>
                                        </div></td>
                                    <td><div class="custom-control custom-radio custom-control-inline">
                                            <input type="checkbox" name="ocsradiochk10" class="custom-control-input input-primary" id="ocs20" value="oralcanc10">
                                            <label class="custom-control-label" for="ocs20">Cigars</label>
                                        </div></td>
                                    <td><div class="custom-control custom-radio custom-control-inline">
                                            <input type="checkbox" name="ocsradiochk11" class="custom-control-input input-primary" id="ocs21" value="oralcanc11">
                                            <label class="custom-control-label" for="ocs21">Pipes</label>
                                        </div></td>
                                    <td><div class="custom-control custom-radio custom-control-inline">
                                            <input type="checkbox" name="ocsradiochk12" class="custom-control-input input-primary" id="ocs22" value="oralcanc12">
                                            <label class="custom-control-label" for="ocs22">None</label>
                                        </div></td>
                                </tr>
                            </table>
                            <div class="col-12">                        

                                <p>In my lifetime, I used tobacco for<input type="text" name="oralcantxt16" id="oralcantxt16" class="col-2 dateborder">years with an average of<input type="text" name="oralcantxt18" id="oralcantxt18" class="col-2 dateborder">per day.</p>
                                <p>In my lifetime, I drank alcoholic beverages for<input type="text" name="oralcantxt17" id="oralcantxt17" class="col-2 dateborder">years with an average of<input type="text" name="oralcantxt19" id="oralcantxt19" class="col-2 dateborder">drinks per day.</p>
                                <span style="font-size: 14px;font-weight: bold;">Please check any of the following head and neck problems you currently have:</span>
                            </div>
                            <div class="col-12 row">
                                <div class="col-xl-3 col-md-6">
                                    <div class="custom-control custom-checkbox">
                                        <input type="checkbox" name="ocsradiochk13" class="custom-control-input input-primary" id="ocs23" value="oralcanc13">
                                        <label class="custom-control-label" for="ocs23">Change in voice</label>
                                    </div>
                                    <div class="custom-control custom-checkbox">
                                        <input type="checkbox" name="ocsradiochk14" class="custom-control-input input-primary" id="ocs24" value="oralcanc14">
                                        <label class="custom-control-label" for="ocs24">Sore throat</label>
                                    </div>
                                    <div class="custom-control custom-checkbox">
                                        <input type="checkbox" name="ocsradiochk15" class="custom-control-input input-primary" id="ocs25" value="oralcanc15">
                                        <label class="custom-control-label" for="ocs25">Sore in mouth</label>
                                    </div>
                                </div>
                                <div class="col-xl-3 col-md-6">
                                    <div class="custom-control custom-checkbox">
                                        <input type="checkbox" name="ocsradiochk16" class="custom-control-input input-primary" id="ocs26" value="oralcanc16">
                                        <label class="custom-control-label" for="ocs26">Bleeding</label>
                                    </div>
                                    <div class="custom-control custom-checkbox">
                                        <input type="checkbox" name="ocsradiochk17" class="custom-control-input input-primary" id="ocs27" value="oralcanc17">
                                        <label class="custom-control-label" for="ocs27">Lump in throat</label>
                                    </div>
                                    <div class="custom-control custom-checkbox">
                                        <input type="checkbox" name="ocsradiochk18" class="custom-control-input input-primary" id="ocs28" value="oralcanc18">
                                        <label class="custom-control-label" for="ocs28">Tooth or gum problem</label>
                                    </div>
                                </div>
                                <div class="col-xl-3 col-md-6">
                                    <div class="custom-control custom-checkbox">
                                        <input type="checkbox" name="ocsradiochk19" class="custom-control-input input-primary" id="ocs29" value="oralcanc19">
                                        <label class="custom-control-label" for="ocs29"> Earache</label>
                                    </div>
                                    <div class="custom-control custom-checkbox">
                                        <input type="checkbox" name="ocsradiochk20" class="custom-control-input input-primary" id="ocs30" value="oralcanc20">
                                        <label class="custom-control-label" for="ocs30">Swallowing difficulty</label>
                                    </div>
                                    <div class="custom-control custom-checkbox">
                                        <input type="checkbox" name="ocsradiochk21" class="custom-control-input input-primary" id="ocs31" value="oralcanc21">
                                        <label class="custom-control-label" for="ocs31">Growth in neck</label>
                                    </div>
                                </div>
                                <div class="col-xl-3 col-md-6">
                                    <div class="custom-control custom-checkbox" style="width: max-content;">
                                        <input type="checkbox" name="ocsradiochk22" class="custom-control-input input-primary" id="ocs32" value="oralcanc22">
                                        <label class="custom-control-label" for="ocs32">Swelling in head or neck</label>
                                    </div>
                                    <div class="custom-control custom-checkbox">
                                        <input type="checkbox" name="ocsradiochk23" class="custom-control-input input-primary" id="ocs33" value="oralcanc23">
                                        <label class="custom-control-label" for="ocs33">Denture problems</label>
                                    </div>
                                    <div class="custom-control custom-checkbox">
                                        <input type="checkbox" name="ocsradiochk24" class="custom-control-input input-primary" id="ocs34" value="oralcanc24">
                                        <label class="custom-control-label" for="ocs34">Red or white patches in mouth</label>
                                    </div>
                                </div>
                            </div>

                            <div class="col-12 row" style="margin-top: 15px">
                                <label class="col-xl-7 col-md-10 col-form-label">Did you know that any of these problems could be the earliest sign of a head or neck cancer?</label>
                                <div class="col-xl-5 col-md-2" style="display: inline-flex">
                                    <div class="custom-control custom-radio custom-control-inline">
                                        <input type="radio" name="ocsradio6" class="custom-control-input input-primary" id="ocs35" value="YES">
                                        <label class="custom-control-label" for="ocs35">Yes</label>
                                    </div>
                                    <div class="custom-control custom-radio custom-control-inline">
                                        <input type="radio" name="ocsradio6" class="custom-control-input input-primary" id="ocs36" value="NO">
                                        <label class="custom-control-label" for="ocs36">NO</label>
                                    </div>

                                </div>
                                <label class="col-xl-7 col-md-10 col-form-label">Has anyone ever shown you how to do an oral self-examination?</label>
                                <div class="col-xl-5 col-md-2" style="display: inline-flex">
                                    <div class="custom-control custom-radio custom-control-inline">
                                        <input type="radio" name="ocsradio7" class="custom-control-input input-primary" id="ocs37" value="YES">
                                        <label class="custom-control-label" for="ocs37">Yes</label>
                                    </div>
                                    <div class="custom-control custom-radio custom-control-inline">
                                        <input type="radio" name="ocsradio7" class="custom-control-input input-primary" id="ocs38" value="NO">
                                        <label class="custom-control-label" for="ocs38">No</label>
                                    </div>
                                </div>
                                <label class="col-xl-7 col-md-10 col-form-label">Would you be interested in volunteering to promote awareness of this disease? </label>
                                <div class="col-xl-5 col-md-2" style="display: inline-flex">
                                    <div class="custom-control custom-radio custom-control-inline">
                                        <input type="radio" name="ocsradio8" class="custom-control-input input-primary" id="ocs39" value="YES">
                                        <label class="custom-control-label" for="ocs39">Yes</label>
                                    </div>
                                    <div class="custom-control custom-radio custom-control-inline">
                                        <input type="radio" name="ocsradio8" class="custom-control-input input-primary" id="ocs40" value="NO">
                                        <label class="custom-control-label" for="ocs40">No</label>
                                    </div>
                                </div>
                                <label class="col-xl-7 col-md-10 col-form-label">Has this program increased your knowledge and awareness of this disease?</label>
                                <div class="col-xl-5 col-md-2" style="display: inline-flex">
                                    <div class="custom-control custom-radio custom-control-inline">
                                        <input type="radio" name="ocsradio9" class="custom-control-input input-primary" id="ocs41" value="YES">
                                        <label class="custom-control-label" for="ocs41">Yes</label>
                                    </div>
                                    <div class="custom-control custom-radio custom-control-inline">
                                        <input type="radio" name="ocsradio9" class="custom-control-input input-primary" id="ocs42" value="NO">
                                        <label class="custom-control-label" for="ocs42">No</label>
                                    </div>
                                </div>
                                <label class="col-xl-7 col-md-10 col-form-label">Are your teeth sensitive to heat/cold?</label>
                                <div class="col-xl-5 col-md-2" style="display: inline-flex">
                                    <div class="custom-control custom-radio custom-control-inline">
                                        <input type="radio" name="ocsradio10" class="custom-control-input input-primary" id="ocs43" value="YES">
                                        <label class="custom-control-label" for="ocs43">Yes</label>
                                    </div>
                                    <div class="custom-control custom-radio custom-control-inline">
                                        <input type="radio" name="ocsradio10" class="custom-control-input input-primary" id="ocs44" value="NO">
                                        <label class="custom-control-label" for="ocs44">No</label>
                                    </div>
                                </div>
                                <label class="col-xl-7 col-md-10 col-form-label">Do you have problem of chewing or digest foods?</label>
                                <div class="col-xl-5 col-md-2" style="display: inline-flex">
                                    <div class="custom-control custom-radio custom-control-inline">
                                        <input type="radio" name="ocsradio11" class="custom-control-input input-primary" id="ocs45" value="YES">
                                        <label class="custom-control-label" for="ocs45">Yes</label>
                                    </div>
                                    <div class="custom-control custom-radio custom-control-inline">
                                        <input type="radio" name="ocsradio11" class="custom-control-input input-primary" id="ocs46" value="NO">
                                        <label class="custom-control-label" for="ocs46">No</label>
                                    </div>
                                </div>
                                <label class="col-xl-7 col-md-10 col-form-label">Do you dench or grind your teeth?</label>
                                <div class="col-xl-5 col-md-2" style="display: inline-flex">
                                    <div class="custom-control custom-radio custom-control-inline">
                                        <input type="radio" name="ocsradio12" class="custom-control-input input-primary" id="ocs47" value="YES">
                                        <label class="custom-control-label" for="ocs47">Yes</label>
                                    </div>
                                    <div class="custom-control custom-radio custom-control-inline">
                                        <input type="radio" name="ocsradio12" class="custom-control-input input-primary" id="ocs48" value="NO">
                                        <label class="custom-control-label" for="ocs48">No</label>
                                    </div>
                                </div>
                                <label class="col-xl-7 col-md-10 col-form-label">Do you have frequent headaches?</label>
                                <div class="col-xl-5 col-md-2" style="display: inline-flex">
                                    <div class="custom-control custom-radio custom-control-inline">
                                        <input type="radio" name="ocsradio13" class="custom-control-input input-primary" id="ocs49" value="YES">
                                        <label class="custom-control-label" for="ocs49">Yes</label>
                                    </div>
                                    <div class="custom-control custom-radio custom-control-inline">
                                        <input type="radio" name="ocsradio13" class="custom-control-input input-primary" id="ocs50" value="NO">
                                        <label class="custom-control-label" for="ocs50">No</label>
                                    </div>
                                </div>
                                <label class="col-xl-7 col-md-10 col-form-label">Do you now or have you ever experienced pain/discomfort in your jaw or joint (TMJ / TMD)?</label>
                                <div class="col-xl-5 col-md-2" style="display: inline-flex">
                                    <div class="custom-control custom-radio custom-control-inline">
                                        <input type="radio" name="ocsradio14" class="custom-control-input input-primary" id="ocs51" value="YES">
                                        <label class="custom-control-label" for="ocs51">Yes</label>
                                    </div>
                                    <div class="custom-control custom-radio custom-control-inline">
                                        <input type="radio" name="ocsradio14" class="custom-control-input input-primary" id="ocs52" value="NO">
                                        <label class="custom-control-label" for="ocs52">No</label>
                                    </div>
                                </div>
                                <label class="col-xl-7 col-md-10 col-form-label">Do you have sleep problem?</label>
                                <div class="col-xl-5 col-md-2" style="display: inline-flex">
                                    <div class="custom-control custom-radio custom-control-inline">
                                        <input type="radio" name="ocsradio15" class="custom-control-input input-primary" id="ocs53" value="YES">
                                        <label class="custom-control-label" for="ocs53">Yes</label>
                                    </div>
                                    <div class="custom-control custom-radio custom-control-inline">
                                        <input type="radio" name="ocsradio15" class="custom-control-input input-primary" id="ocs54" value="NO">
                                        <label class="custom-control-label" for="ocs54">No</label>
                                    </div>
                                </div>
                                <label class="col-xl-7 col-md-10 col-form-label">Have you noticed any mouth odors or bad tastes?</label>
                                <div class="col-xl-5 col-md-2" style="display: inline-flex">
                                    <div class="custom-control custom-radio custom-control-inline">
                                        <input type="radio" name="ocsradio16" class="custom-control-input input-primary" id="ocs55" value="YES">
                                        <label class="custom-control-label" for="ocs55">Yes</label>
                                    </div>
                                    <div class="custom-control custom-radio custom-control-inline">
                                        <input type="radio" name="ocsradio16" class="custom-control-input input-primary" id="ocs56" value="NO">
                                        <label class="custom-control-label" for="ocs56">No</label>
                                    </div>
                                </div>
                                <label class="col-xl-7 col-md-10 col-form-label">Do your gums ever bleed?</label>
                                <div class="col-xl-5 col-md-2" style="display: inline-flex">
                                    <div class="custom-control custom-radio custom-control-inline">
                                        <input type="radio" name="ocsradio17" class="custom-control-input input-primary" id="ocs57" value="YES">
                                        <label class="custom-control-label" for="ocs57">Yes</label>
                                    </div>
                                    <div class="custom-control custom-radio custom-control-inline">
                                        <input type="radio" name="ocsradio17" class="custom-control-input input-primary" id="ocs58" value="NO">
                                        <label class="custom-control-label" for="ocs58">No</label>
                                    </div>
                                </div>
                                <label class="col-xl-7 col-md-10 col-form-label">Have you ever had gum treatment?</label>
                                <div class="col-xl-5 col-md-2" style="display: inline-flex">
                                    <div class="custom-control custom-radio custom-control-inline">
                                        <input type="radio" name="ocsradio18" class="custom-control-input input-primary" id="ocs59" value="YES">
                                        <label class="custom-control-label" for="ocs59">Yes</label>
                                    </div>
                                    <div class="custom-control custom-radio custom-control-inline">
                                        <input type="radio" name="ocsradio18" class="custom-control-input input-primary" id="ocs60" value="NO">
                                        <label class="custom-control-label" for="ocs60">No</label>
                                    </div>
                                </div>
                                <label class="col-xl-7 col-md-10 col-form-label">Do you have any dental problems now?</label>
                                <div class="col-xl-5 col-md-2" style="display: inline-flex">
                                    <div class="custom-control custom-radio custom-control-inline">
                                        <input type="radio" name="ocsradio19" class="custom-control-input input-primary" id="ocs61" value="YES">
                                        <label class="custom-control-label" for="ocs61">Yes</label>
                                    </div>
                                    <div class="custom-control custom-radio custom-control-inline">
                                        <input type="radio" name="ocsradio19" class="custom-control-input input-primary" id="ocs62" value="NO">
                                        <label class="custom-control-label" for="ocs62">No</label>
                                    </div>
                                </div>
                                <label class="col-3 col-form-label">Do you have diabetes diagnostic? </label>
                                <label class="col-1 col-form-label">Type: </label>
                                <input type="text" name="oralcantxt20" id="oralcantxt20" class="col-3 dateborder">
                                <div class="col-5">
                                    <div class="custom-control custom-radio custom-control-inline">
                                        <input type="radio" name="ocsradio20" class="custom-control-input input-primary" id="ocs63" value="YES">
                                        <label class="custom-control-label" for="ocs63">Yes</label>
                                    </div>
                                    <div class="custom-control custom-radio custom-control-inline">
                                        <input type="radio" name="ocsradio20" class="custom-control-input input-primary" id="ocs64" value="NO">
                                        <label class="custom-control-label" for="ocs64">No</label>
                                    </div>
                                </div>

                                <label class="col-3 col-form-label">If yes, please describe: </label>
                                <input type="text" name="oralcantxt21" id="oralcantxt21" class="col-9 dateborder" maxlength="75">
                                <input type="text" name="oralcantxt27" id="oralcantxt27" class="col-9 dateborder" style="margin-left: auto;" maxlength="75">

                                <label class="col-7 col-form-label">Did you ever go to the doctor to check for heart problems?</label>
                                <div class="col-5">
                                    <div class="custom-control custom-radio custom-control-inline">
                                        <input type="radio" name="ocsradio21" class="custom-control-input input-primary" id="ocs65" value="YES">
                                        <label class="custom-control-label" for="ocs65">Yes</label>
                                    </div>
                                    <div class="custom-control custom-radio custom-control-inline">
                                        <input type="radio" name="ocsradio21" class="custom-control-input input-primary" id="ocs66" value="NO">
                                        <label class="custom-control-label" for="ocs66">No</label>
                                    </div>
                                </div>

                                <label class="col-3 col-form-label">If so, what are the problems? </label>
                                <input type="text" name="oralcan_22" id="oralcan_22" class="col-9 dateborder" maxlength="75">
                                <input type="text" name="oralcan_28" id="oralcan_28" class="col-9 dateborder" style="margin-left: auto;" maxlength="75">

                                <label class="col-7 col-form-label">Are you currently taking any medications or drugs? 
                                    <span style="font-size: 9px;">(including Tylenol, Aspirin, or over the counter medicines)</span>
                                </label>
                                <div class="col-5">
                                    <div class="custom-control custom-radio custom-control-inline">
                                        <input type="radio" name="ocsradio22" class="custom-control-input input-primary" id="ocs67" value="YES">
                                        <label class="custom-control-label" for="ocs67">Yes</label>
                                    </div>
                                    <div class="custom-control custom-radio custom-control-inline">
                                        <input type="radio" name="ocsradio22" class="custom-control-input input-primary" id="ocs68" value="NO">
                                        <label class="custom-control-label" for="ocs68">No</label>
                                    </div>
                                </div>

                                <label class="col-3 col-form-label">If yes, please list: </label>
                                <input type="text" name="oralcantxt23" id="oralcantxt23" class="col-9 dateborder" maxlength="75">
                                <input type="text" name="oralcantxt29" id="oralcantxt29" class="col-9 dateborder" style="margin-left: auto;" maxlength="75">
                            </div>

                            <div class="col-12" style="margin-top: 15px;">
                                <span style="font-size: 14px;font-weight: bold;">RELEASE OF LIABILITY</span>
                                <p>I hereby release the Head and Neck Cancer Alliance, screening facility, and all health-care personnel 
                                    from any and all responsibility associated with the evaluation and results. I accept all responsibility 
                                    for the evaluation, future scheduling and costs of further medical evaluation, diagnostic tests, and treatment 
                                    in addition to the pursuit of any recommendations provided. I understand that this examination is not intended 
                                    to be a complete head and neck examination or substitute for any examination performed by future or past
                                    practitioners. I am responsible for any follow-up examination, evaluation, or tests and release all other
                                    parties from any responsibility. The Head and Neck Cancer Alliance may use the results of this examination and the
                                    information on this form for statistical and educational purposes, but my name will not be released to any other
                                    person or organization without my express written consent.</p>              
                            </div>
                            <div class="col-12 row" style="margin-bottom: 80px">
                                <div class="col-6">
                                    <div class="row">
                                        <div class="col-12">
                                            <canvas id="sign_13ocs1" width="480" height="80" class="col-12"></canvas>
                                        </div>
                                    </div>
                                    <p>Patient Signature:<span style="color: red;margin: 20px;"><a onclick="sign_1_3oral_can_clear()">Clear Signature</a></span></p>
                                </div>
                                <div class="col-4" style="display: flex;align-items: flex-end;height: 75px;">

                                    Date:<input type="text" name="oralcantxt24" id="oralcantxt24" autocomplete="off"  class="notfuturedate  col-auto dateborder" style="padding:0">   

                                </div>
                            </div>
                        </div>
                    </div>  
                </form></div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                <button type="button" class="btn btn-primary" id="buttonid" onclick="oralSave(this)">Submit</button>
            </div>
        </div>
    </div>
</div>
<script>


    function oralSave(buttonObj)
    {
        if(!$('#oralcantxt26').val())
          {
               msgbox("Date is Mandatory", "Patient Checklist", "error");
                return false;
          }
        $(buttonObj).attr('disabled', 'disabled');
        $(buttonObj).text('Sending...');
        $(buttonObj).off('click'); //disables click event

        var sign_1_3ocs_1 = window.sign_13ocs1.toDataURL("image/png");
        var sign_1_3oral_can = sign_1_3ocs_1.replace('data:image/png;base64,', '');

        let checkboxes1 = document.querySelectorAll('input[name="ocsradio1"]:checked');
        let gender = [];
        checkboxes1.forEach((checkbox) => {
            gender.push(checkbox.value);
        });

        let checkboxes2 = document.querySelectorAll('input[name="ocsradio2"]:checked');
        let values2 = [];
        checkboxes2.forEach((checkbox) => {
            values2.push(checkbox.value);
        });

        let checkboxes3 = document.querySelectorAll('input[name="ocsradio3"]:checked');
        let values3 = [];
        checkboxes3.forEach((checkbox) => {
            values3.push(checkbox.value);
        });

        let checkboxes4 = document.querySelectorAll('input[name="ocsradio4"]:checked');
        let values4 = [];
        checkboxes4.forEach((checkbox) => {
            values4.push(checkbox.value);
        });

        let checkboxes5 = document.querySelectorAll('input[name="ocsradio5"]:checked');
        let values5 = [];
        checkboxes5.forEach((checkbox) => {
            values5.push(checkbox.value);
        });

        let checkboxes6 = document.querySelectorAll('input[name="ocsradiochk1"]:checked');
        let values6 = [];
        checkboxes6.forEach((checkbox) => {
            values6.push(checkbox.value);
        });

        let checkboxes7 = document.querySelectorAll('input[name="ocsradiochk2"]:checked');
        let values7 = [];
        checkboxes7.forEach((checkbox) => {
            values7.push(checkbox.value);
        });

        let checkboxes8 = document.querySelectorAll('input[name="ocsradiochk3"]:checked');
        let values8 = [];
        checkboxes8.forEach((checkbox) => {
            values8.push(checkbox.value);
        });

        let checkboxes9 = document.querySelectorAll('input[name="ocsradiochk4"]:checked');
        let values9 = [];
        checkboxes9.forEach((checkbox) => {
            values9.push(checkbox.value);
        });

        let checkboxes10 = document.querySelectorAll('input[name="ocsradiochk5"]:checked');
        let values10 = [];
        checkboxes10.forEach((checkbox) => {
            values10.push(checkbox.value);
        });

        let checkboxes11 = document.querySelectorAll('input[name="ocsradiochk6"]:checked');
        let values11 = [];
        checkboxes11.forEach((checkbox) => {
            values11.push(checkbox.value);
        });

        let checkboxes12 = document.querySelectorAll('input[name="ocsradiochk7"]:checked');
        let values12 = [];
        checkboxes12.forEach((checkbox) => {
            values12.push(checkbox.value);
        });

        let checkboxes13 = document.querySelectorAll('input[name="ocsradiochk8"]:checked');
        let values13 = [];
        checkboxes13.forEach((checkbox) => {
            values13.push(checkbox.value);
        });

        let checkboxes14 = document.querySelectorAll('input[name="ocsradiochk9"]:checked');
        let values14 = [];
        checkboxes14.forEach((checkbox) => {
            values14.push(checkbox.value);
        });

        let checkboxes15 = document.querySelectorAll('input[name="ocsradiochk10"]:checked');
        let values15 = [];
        checkboxes15.forEach((checkbox) => {
            values15.push(checkbox.value);
        });

        let checkboxes16 = document.querySelectorAll('input[name="ocsradiochk11"]:checked');
        let values16 = [];
        checkboxes16.forEach((checkbox) => {
            values16.push(checkbox.value);
        });

        let checkboxes17 = document.querySelectorAll('input[name="ocsradiochk12"]:checked');
        let values17 = [];
        checkboxes17.forEach((checkbox) => {
            values17.push(checkbox.value);
        });

        let checkboxes18 = document.querySelectorAll('input[name="ocsradiochk13"]:checked');
        let values18 = [];
        checkboxes18.forEach((checkbox) => {
            values18.push(checkbox.value);
        });

        let checkboxes19 = document.querySelectorAll('input[name="ocsradiochk14"]:checked');
        let values19 = [];
        checkboxes19.forEach((checkbox) => {
            values19.push(checkbox.value);
        });

        let checkboxes20 = document.querySelectorAll('input[name="ocsradiochk15"]:checked');
        let values20 = [];
        checkboxes20.forEach((checkbox) => {
            values20.push(checkbox.value);
        });

        let checkboxes21 = document.querySelectorAll('input[name="ocsradiochk16"]:checked');
        let values21 = [];
        checkboxes21.forEach((checkbox) => {
            values21.push(checkbox.value);
        });

        let checkboxes22 = document.querySelectorAll('input[name="ocsradiochk17"]:checked');
        let values22 = [];
        checkboxes22.forEach((checkbox) => {
            values22.push(checkbox.value);
        });

        let checkboxes23 = document.querySelectorAll('input[name="ocsradiochk18"]:checked');
        let values23 = [];
        checkboxes23.forEach((checkbox) => {
            values23.push(checkbox.value);
        });

        let checkboxes24 = document.querySelectorAll('input[name="ocsradiochk19"]:checked');
        let values24 = [];
        checkboxes24.forEach((checkbox) => {
            values24.push(checkbox.value);
        });

        let checkboxes25 = document.querySelectorAll('input[name="ocsradiochk20"]:checked');
        let values25 = [];
        checkboxes25.forEach((checkbox) => {
            values25.push(checkbox.value);
        });

        let checkboxes26 = document.querySelectorAll('input[name="ocsradiochk21"]:checked');
        let values26 = [];
        checkboxes26.forEach((checkbox) => {
            values26.push(checkbox.value);
        });

        let checkboxes27 = document.querySelectorAll('input[name="ocsradiochk22"]:checked');
        let values27 = [];
        checkboxes27.forEach((checkbox) => {
            values27.push(checkbox.value);
        });

        let checkboxes28 = document.querySelectorAll('input[name="ocsradiochk23"]:checked');
        let values28 = [];
        checkboxes28.forEach((checkbox) => {
            values28.push(checkbox.value);
        });

        let checkboxes29 = document.querySelectorAll('input[name="ocsradiochk24"]:checked');
        let values29 = [];
        checkboxes29.forEach((checkbox) => {
            values29.push(checkbox.value);
        });

        let checkboxes30 = document.querySelectorAll('input[name="ocsradio6"]:checked');
        let values30 = [];
        checkboxes30.forEach((checkbox) => {
            values30.push(checkbox.value);
        });

        let checkboxes31 = document.querySelectorAll('input[name="ocsradio7"]:checked');
        let values31 = [];
        checkboxes31.forEach((checkbox) => {
            values31.push(checkbox.value);
        });

        let checkboxes32 = document.querySelectorAll('input[name="ocsradio8"]:checked');
        let values32 = [];
        checkboxes32.forEach((checkbox) => {
            values32.push(checkbox.value);
        });

        let checkboxes33 = document.querySelectorAll('input[name="ocsradio9"]:checked');
        let values33 = [];
        checkboxes33.forEach((checkbox) => {
            values33.push(checkbox.value);
        });

        let checkboxes34 = document.querySelectorAll('input[name="ocsradio10"]:checked');
        let values34 = [];
        checkboxes34.forEach((checkbox) => {
            values34.push(checkbox.value);
        });

        let checkboxes35 = document.querySelectorAll('input[name="ocsradio11"]:checked');
        let values35 = [];
        checkboxes35.forEach((checkbox) => {
            values35.push(checkbox.value);
        });

        let checkboxes36 = document.querySelectorAll('input[name="ocsradio12"]:checked');
        let values36 = [];
        checkboxes36.forEach((checkbox) => {
            values36.push(checkbox.value);
        });
        let checkboxes37 = document.querySelectorAll('input[name="ocsradio13"]:checked');
        let values37 = [];
        checkboxes37.forEach((checkbox) => {
            values37.push(checkbox.value);
        });

        let checkboxes38 = document.querySelectorAll('input[name="ocsradio14"]:checked');
        let values38 = [];
        checkboxes38.forEach((checkbox) => {
            values38.push(checkbox.value);
        });

        let checkboxes39 = document.querySelectorAll('input[name="ocsradio15"]:checked');
        let values39 = [];
        checkboxes39.forEach((checkbox) => {
            values39.push(checkbox.value);
        });

        let checkboxes40 = document.querySelectorAll('input[name="ocsradio16"]:checked');
        let values40 = [];
        checkboxes40.forEach((checkbox) => {
            values40.push(checkbox.value);
        });

        let checkboxes41 = document.querySelectorAll('input[name="ocsradio17"]:checked');
        let values41 = [];
        checkboxes41.forEach((checkbox) => {
            values41.push(checkbox.value);
        });

        let checkboxes42 = document.querySelectorAll('input[name="ocsradio18"]:checked');
        let values42 = [];
        checkboxes42.forEach((checkbox) => {
            values42.push(checkbox.value);
        });

        let checkboxes43 = document.querySelectorAll('input[name="ocsradio19"]:checked');
        let values43 = [];
        checkboxes43.forEach((checkbox) => {
            values43.push(checkbox.value);
        });

        let checkboxes44 = document.querySelectorAll('input[name="ocsradio20"]:checked');
        let values44 = [];
        checkboxes44.forEach((checkbox) => {
            values44.push(checkbox.value);
        });

        let checkboxes45 = document.querySelectorAll('input[name="ocsradio21"]:checked');
        let values45 = [];
        checkboxes45.forEach((checkbox) => {
            values45.push(checkbox.value);
        });

        let checkboxes46 = document.querySelectorAll('input[name="ocsradio22"]:checked');
        let values46 = [];
        checkboxes46.forEach((checkbox) => {
            values46.push(checkbox.value);
        });


        var patientname = $('#oralcantxt1').val();
        var patientdob = $('#oralcantxt2').val();
        var currentdate = $('#oralcantxt26').val();
        var patientaddress = $('#oralcantxt3').val();
        var patientcity = $('#oralcantxt4').val();
        var patientstate = $('#oralcantxt5').val();
        var patientzip = $('#oralcantxt6').val();
        var patientphone = $('#oralcantxt7').val();
        var patientoccupation = $('#oralcantxt8').val();
        var patientemail = $('#oralcantxt9').val();
        var physicianname = $('#oralcantxt10').val();
        var physicianphone = $('#oralcantxt11').val();
        var patientfax = $('#oralcantxt12').val();
        var patienttxt1 = $('#oralcantxt13').val();
        var patienttxt2 = $('#oralcantxt14').val();
        var patienttxt3 = $('#oralcantxt15').val();
        var patienttxt4 = $('#oralcantxt16').val();
        var patienttxt5 = $('#oralcantxt17').val();
        var patienttxt6 = $('#oralcantxt18').val();
        var patienttxt7 = $('#oralcantxt19').val();
        var patienttxt8 = $('#oralcantxt20').val();
        var patienttxt9 = $('#oralcantxt21').val();
        var patienttxt10 = $('#oralcantxt27').val();
        var patienttxt11 = $('#oralcan_22').val();
        var patienttxt12 = $('#oralcan_28').val();
        var patienttxt13 = $('#oralcantxt23').val();
        var patienttxt14 = $('#oralcantxt29').val();
        var signdate = $('#oralcantxt24').val();

        $.ajax({
            url: "generateoralcancerpdf",
            type: "POST", //send it through get method
            data: {

                patientid: $("#patientCombo option:selected").val(),
                patientname: patientname,
                patientdob: patientdob,
                patientgender: gender,
                currentdate: currentdate,
                patientaddress: patientaddress,
                patientcity: patientcity,
                patientstate: patientstate,
                patientzip: patientzip,
                patientphone: patientphone,
                patientoccupation: patientoccupation,
                patientemail: patientemail,
                physicianname: physicianname,
                physicianphone: physicianphone,
                patientfax: patientfax,
                patientradiobtn1: values2,
                patientradiobtn2: values3,
                patienttxt1: patienttxt1,
                patientradiobtn3: values4,
                patienttxt2: patienttxt2,
                patientradiobtn4: values5,
                patienttxt3: patienttxt3,
                patientcheckbox1: values6,
                patientcheckbox2: values7,
                patientcheckbox3: values8,
                patientcheckbox4: values9,
                patientcheckbox5: values10,
                patientcheckbox6: values11,
                patientcheckbox7: values12,
                patientcheckbox8: values13,
                patientcheckbox9: values14,
                patientcheckbox10: values15,
                patientcheckbox11: values16,
                patientcheckbox12: values17,
                patienttxt4: patienttxt4,
                patienttxt5: patienttxt5,
                patienttxt6: patienttxt6,
                patienttxt7: patienttxt7,
                patientcheckbox13: values18,
                patientcheckbox14: values19,
                patientcheckbox15: values20,
                patientcheckbox16: values21,
                patientcheckbox17: values22,
                patientcheckbox18: values23,
                patientcheckbox19: values24,
                patientcheckbox20: values25,
                patientcheckbox21: values26,
                patientcheckbox22: values27,
                patientcheckbox23: values28,
                patientcheckbox24: values29,
                patientradiobtn5: values30,
                patientradiobtn6: values31,
                patientradiobtn7: values32,
                patientradiobtn8: values33,
                patientradiobtn9: values34,
                patientradiobtn10: values35,
                patientradiobtn11: values36,
                patientradiobtn12: values37,
                patientradiobtn13: values38,
                patientradiobtn14: values39,
                patientradiobtn15: values40,
                patientradiobtn16: values41,
                patientradiobtn17: values42,
                patientradiobtn18: values43,
                patienttxt8: patienttxt8,
                patientradiobtn19: values44,
                patienttxt9: patienttxt9,
                patienttxt10: patienttxt10,
                patientradiobtn20: values45,
                patienttxt11: patienttxt11,
                patienttxt12: patienttxt12,
                patientradiobtn21: values46,
                patienttxt13: patienttxt13,
                patienttxt14: patienttxt14,
                lastname: $("#inputLastName").val(),
                firstname: $("#inputFirstName").val(),
                patientsignature: sign_1_3oral_can,
                signdate: signdate
            },
            success: function (response) {
                if (response.length > 0)
                {
                    $("#PaymentWaiverForm").modal('hide');
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
        window.sign_13ocs1 = new SignaturePad($('#sign_13ocs1').get(0), {});
    });

    var sign_1_3oral_can_clear = function () {
        window.sign_13ocs1.clear()
    };
</script>




<div class="modal fade centerAligned" id="Oral_Pathology_Order_Form" tabindex="-1" data-backdrop="static" data-keyboard="false" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-xl">
        <div class="modal-content">
            <div class="modal-header">
                <div class="col">
                    <h4 class="modal-title" id="myModalLabel">
                        ORAL PATHOLOGY ORDER FORM         
                    </h4>
                </div>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
            </div>
            <div class="container">
                <div class="card-body">
                    <div class="justify-content-end row">
                        <div class="col-2 col-sm-6 col-md-4 line m-b-20 align-self-end m-r-20">
                            <div>
                                <p style="text-align: center;"><span style="font-weight: bold;"> Lab Use Only</span></p></div>
                            <span style="font-weight: bold;" class="text-right m-b-20">LAB#:</span><input type="text" name="patienttestno1" id="patienttestno1" class="col-9 dateborder " maxlength="20">
                        </div>  
                    </div>

                    <div class="row">
                        <div class="col-12">
                            <div class="row p-l-15">
                                <div class="col-xl-4 col-md-4">
                                    <p>Last Name :<input type="text" name="lastname" id="patientlastname" class="data_inputLastname col-8 dateborder" style="padding:0">
                                    </p>
                                </div>
                                <div class="col-xl-4 col-md-4">
                                    <p>First Name : <input type="text" name="firstname" id="patientfirstname" class="data_inputFirstname col-8 dateborder" style="padding:0">
                                    </p>
                                </div>
                                <div class="col-xl-4 col-md-4">
                                    <p>Middle Initial : <input type="text" name="middlename" id="patientmiddlename" class="data_inputMiddlename col-4 dateborder" style="padding:0">
                                    </p>
                                </div>
                            </div>
                            <div class="row p-l-15">
                                <div class="col-xl-4 col-md-6">
                                    <p>Date of Birth : <input type="date" name="patientdob" id="patientdob"  class="data_inputDOB col-6 dateborder">
                                    </p>
                                </div>
                                <div class="col-xl-4 col-md-6">

                                    <div class="col p-l-0 m-b-15">
                                        Sex :
                                        <div class="custom-control custom-radio custom-control-inline">
                                            <input type="radio" name="oral" value="1" class="data_gender custom-control-input input-primary" id="sfcf1"  onclick="return false;">
                                            <label class="custom-control-label" for="sfcf1">Male</label>
                                        </div>
                                        <div class="custom-control custom-radio custom-control-inline">
                                            <input type="radio" name="oral" value="2" class="data_gender custom-control-input input-primary" id="sfcf2"  onclick="return false;">
                                            <label class="custom-control-label" for="sfcf2">Female</label>
                                        </div>
                                        <div class="custom-control custom-radio custom-control-inline">
                                            <input type="radio" name="oral" value="3" class="data_gender custom-control-input input-primary" id="sfcf3"  onclick="return false;">
                                            <label class="custom-control-label" for="sfcf3">Other</label>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row p-l-15">
                                <div class="col-xl-6 col-md-6">
                                    <p>Date of Procedure : <input type="text" name="currentdate" id="patientdate"  class="col-6 notfuturedate dateborder">
                                    </p>
                                </div>
                            </div>
                            <div class="col-12 p-l-15"><h6>SPECIMEN INFORMATION (Must Be Completed):</h6></div> 
                            <div class="col-12">
                                <p class="m-t-15">Clinical Pre-Diagnosis:
                                    <input type="text" name="patienttxt" id="patienttxt" class="col-10 dateborder" maxlength="80"></p>
                                <p class="m-t-15"><input type="text" name="patienttxt1" id="patienttxt1" class="col-12 dateborder" maxlength="80"></p>
                            </div>
                            <div class="col-12">
                                <p class="m-t-15">Biopsy Location:
                                    <input type="text" name="patienttxt2" id="patienttxt2" class="col-10 dateborder" maxlength="80"></p>
                            </div>
                            <div class="col-12">
                                <p class="m-t-15">History:
                                    <input type="text" name="patienttxt4" id="patienttxt4" class="col-11 dateborder" maxlength="80">
                                </p>
                            </div>
                            <div class="col-12 row">
                                <div class="col-5">Radiographs / Photos submitted? </div>
                                <div class="col-1">
                                    <div class="custom-control custom-radio m-b-20">
                                        <input type="radio" name="oralpathology" class="custom-control-input input-primary" id="oral1" value="1">
                                        <label class="custom-control-label" for="oral1">No</label>
                                    </div>
                                </div>
                                <div class="col-1 col-sm-2">
                                    <div class="custom-control custom-radio custom-control-inline">
                                        <input type="radio" name="oralpathology" class="custom-control-input input-primary" id="oral2" value="2">
                                        <label class="custom-control-label" for="oral2">Yes</label>
                                    </div>
                                </div>
                                <div class="col-3 col-sm-4">
                                    <div class="custom-control custom-checkbox custom-control-inline">
                                        <input type="checkbox"name="oralpathology33" class="custom-control-input input-primary" id="oral3" value="3" disabled="">
                                        <label class="custom-control-label" for="oral3">Please Return</label>
                                    </div>
                                </div>
                            </div>
                            <div class="col-12 row">
                                <div class="col-5">Previous specimens sent to Us on this patient? </div>
                                <div class="col-1">
                                    <div class="custom-control custom-radio m-b-20">
                                        <input type="radio" name="oralpathology1" class="custom-control-input input-primary" id="oral4" value="No">
                                        <label class="custom-control-label" for="oral4">No</label>
                                    </div>
                                </div>
                                <div class="col-1 col-sm-2 col-md-2">
                                    <div class="custom-control custom-radio custom-control-inline">
                                        <input type="radio" name="oralpathology1" class="custom-control-input input-primary" id="oral5" value="Yes">
                                        <label class="custom-control-label" for="oral5">Yes</label>
                                    </div>
                                </div>
                                <div class="col-5 col-sm-4 col-md-4">
                                    <p class="p-l-20">Previous Lab#: <input type="text" name="patienttestno"  id="patienttestno" class=" col-7 dateborder" style="padding:0" maxlength="30"></p>
                                </div>
                            </div>


                            <div class=" col-12 m-t-25" style="text-align:center;"><img src="assets/images/patientregister/oral-pathology.png" alt="" width="95%" height="" align="center" style="margin-bottom:100px;"/></div>


                            <div class="col-12 row">
                                <div class="col-xl-5 col-sm-12 col-md-5">Lab Use Only Number of specimen/formalin bottles received</div>
                                <div class="row m-b-5 p-l-50" id="teethrow">
                                    <div class="custom-control custom-checkbox p-r-10">
                                        <input type="checkbox" class="custom-control-input input-green" name="oralpathology2" id="oral6"  value="1">
                                        <label class="custom-control-label" for="oral6">1</label>
                                    </div>
                                    <div class="custom-control custom-checkbox p-r-10">
                                        <input type="checkbox" class="custom-control-input input-green" name="oralpathology3"  id="oral7" value="2" >
                                        <label class="custom-control-label" for="oral7">2</label>
                                    </div>
                                    <div class="custom-control custom-checkbox p-r-10">
                                        <input type="checkbox" class="custom-control-input input-green" name="oralpathology4"  id="oral8" value="3" >
                                        <label class="custom-control-label" for="oral8">3</label>
                                    </div>
                                    <div class="custom-control custom-checkbox p-r-10" >
                                        <input type="checkbox" class="custom-control-input input-green" name="oralpathology5"  id="oral9" value="4">
                                        <label class="custom-control-label" for="oral9">4</label>
                                    </div>
                                    <div class="custom-control custom-checkbox p-r-10">
                                        <input type="checkbox" class="custom-control-input input-green" name="oralpathology6"  id="oral10" value="5" >
                                        <label class="custom-control-label" for="oral10">5</label>
                                    </div>
                                    <div class="custom-control custom-checkbox p-r-10">
                                        <input type="checkbox" class="custom-control-input input-green" name="oralpathology7"   id="oral11" value="6">
                                        <label class="custom-control-label" for="oral11">6</label>
                                    </div>

                                    <div class="custom-control custom-checkbox p-r-10">
                                        <input type="checkbox" class="custom-control-input input-green" name="oralpathology8" id="oral12" value="7" >
                                        <label class="custom-control-label" for="oral12">7</label>
                                    </div>
                                    <div class="custom-control custom-checkbox p-r-10">
                                        <input type="checkbox" class="custom-control-input input-green" name="oralpathology9"  id="oral13" value="8" >
                                        <label class="custom-control-label" for="oral13">8</label>
                                    </div>
                                    <div class="custom-control custom-checkbox p-r-10">
                                        <input type="checkbox" class="custom-control-input input-green" name="oralpathology10"  id="oral14" value="9">
                                        <label class="custom-control-label" for="oral14">9</label>
                                    </div>
                                    <div class="custom-control custom-checkbox p-r-10">
                                        <input type="checkbox" class="custom-control-input input-green" name="oralpathology11"  id="oral15" value="10">
                                        <label class="custom-control-label" for="oral15">10</label>
                                    </div>
                                </div>

                            </div> 

                            <div class="col-12 row p-t-15">

                                <div class="row m-b-5 p-l-30" id="teethrow">
                                    <div class="custom-control custom-checkbox p-r-10">
                                        <input type="checkbox" class="custom-control-input input-green" name="oralpathology12" id="oral16" value="GR1" >
                                        <label class="custom-control-label" for="oral16">GR1</label>
                                    </div>
                                    <div class="custom-control custom-checkbox p-r-10">
                                        <input type="checkbox" class="custom-control-input input-green" name="oralpathology13"  id="oral17" value="GR2" >
                                        <label class="custom-control-label" for="oral17">GR2</label>
                                    </div>
                                    <div class="custom-control custom-checkbox p-r-10">
                                        <input type="checkbox" class="custom-control-input input-green" name="oralpathology14"  id="oral18" value="GR3">
                                        <label class="custom-control-label" for="oral18">GR3</label>
                                    </div>
                                    <div class="custom-control custom-checkbox p-r-10" >
                                        <input type="checkbox" class="custom-control-input input-green" name="oralpathology15"  id="oral19" value="GR4" >
                                        <label class="custom-control-label" for="oral19">GR4</label>
                                    </div>
                                    <div class="custom-control custom-checkbox p-r-10">
                                        <input type="checkbox" class="custom-control-input input-green" name="oralpathology16"  id="oral20" value="GR5">
                                        <label class="custom-control-label" for="oral20">GR5</label>
                                    </div>
                                    <div class="custom-control custom-checkbox p-r-10">
                                        <input type="checkbox" class="custom-control-input input-green" name="oralpathology17"   id="oral21" value="GR6">
                                        <label class="custom-control-label" for="oral21">GR6</label>
                                    </div>

                                    <div class="custom-control custom-checkbox p-r-10">
                                        <input type="checkbox" class="custom-control-input input-green" name="oralpathology18" id="oral22" value="GR7">
                                        <label class="custom-control-label" for="oral22">GR7</label>
                                    </div>
                                    <div class="custom-control custom-checkbox p-r-10">
                                        <input type="checkbox" class="custom-control-input input-green" name="oralpathology19"  id="oral23" value="GR8">
                                        <label class="custom-control-label" for="oral23">GR8</label>
                                    </div>
                                    <div class="custom-control custom-checkbox p-r-10">
                                        <input type="checkbox" class="custom-control-input input-green" name="oralpathology20"  id="oral24" value="GHS">
                                        <label class="custom-control-label" for="oral24">GHS</label>
                                    </div>
                                    <div class="custom-control custom-checkbox p-r-10">
                                        <input type="checkbox" class="custom-control-input input-green" name="oralpathology21"  id="oral25" value="Other" >
                                        <label class="custom-control-label" for="oral25">Other</label>
                                        <input type="text" name="patienttxt5"  id="patienttxt5" class="col-9 dateborder" style="padding:0" maxlength="19">
                                    </div>
                                </div>

                            </div> 
                            <div class="col-12 row p-t-15">

                                <div class="row m-b-5 p-l-30" id="teethrow">
                                    <div class="custom-control custom-checkbox p-r-10">
                                        <input type="checkbox" class="custom-control-input input-green" name="oralpathology22" id="oral26" value="GRA">
                                        <label class="custom-control-label" for="oral26">GRA</label>
                                    </div>
                                    <div class="custom-control custom-checkbox p-r-10">
                                        <input type="checkbox" class="custom-control-input input-green" name="oralpathology23"  id="oral27" value="GRB">
                                        <label class="custom-control-label" for="oral27">GRB</label>
                                    </div>
                                    <div class="custom-control custom-checkbox p-r-10">
                                        <input type="checkbox" class="custom-control-input input-green" name="oralpathology24"  id="oral28" value="GRC">
                                        <label class="custom-control-label" for="oral28">GRC</label>
                                    </div>
                                    <div class="custom-control custom-checkbox p-r-10" >
                                        <input type="checkbox" class="custom-control-input input-green" name="oralpathology25"  id="oral29" value="GRD">
                                        <label class="custom-control-label" for="oral29">GRD</label>
                                    </div>
                                    <div class="custom-control custom-checkbox p-r-10">
                                        <input type="checkbox" class="custom-control-input input-green" name="oralpathology26"  id="oral30" value="GRE">
                                        <label class="custom-control-label" for="oral30">GRE</label>
                                    </div>
                                    <div class="custom-control custom-checkbox p-r-10">
                                        <input type="checkbox" class="custom-control-input input-green" name="oralpathology27"   id="oral31" value="GRF">
                                        <label class="custom-control-label" for="oral31">GRF</label>
                                    </div>

                                    <div class="custom-control custom-checkbox p-r-10">
                                        <input type="checkbox" class="custom-control-input input-green" name="oralpathology28" id="oral32" value="GRG">
                                        <label class="custom-control-label" for="oral32">GRG</label>
                                    </div>
                                    <div class="custom-control custom-checkbox p-r-10">
                                        <input type="checkbox" class="custom-control-input input-green" name="oralpathology29"  id="oral33" value="GRH">
                                        <label class="custom-control-label" for="oral33">GRH</label>
                                    </div>
                                    <div class="custom-control custom-checkbox p-r-10">
                                        <input type="checkbox" class="custom-control-input input-green" name="oralpathology30"  id="oral34" value="GSC">
                                        <label class="custom-control-label" for="oral34">GSC</label>
                                    </div>
                                    <div class="custom-control custom-checkbox p-r-10">
                                        <input type="checkbox" class="custom-control-input input-green" name="oralpathology31"  id="oral35" value="Other">
                                        <label class="custom-control-label" for="oral35">Other</label>
                                        <input type="text" name="patienttxt6"  id="patienttxt6" class="col-9 dateborder" style="padding:0" maxlength="19">
                                    </div>
                                </div>

                            </div> 

                            <div class="col-12 row m-b-50 p-t-15">
                                <div class="col-5 col-sm-10 col-md-8">Previous specimens on this patient in the Oral Pathology database:</div>
                                <div class="col-1">
                                    <div class="custom-control custom-radio">
                                        <input type="radio" name="oralpathology32" class="custom-control-input input-primary" id="oral36" value="Yes">
                                        <label class="custom-control-label" for="oral36">Yes</label>
                                    </div>
                                </div>
                                <div class="col-1">
                                    <div class="custom-control custom-radio custom-control-inline">
                                        <input type="radio" name="oralpathology32" class="custom-control-input input-primary" id="oral37" value="No">
                                        <label class="custom-control-label" for="oral37">No</label>
                                    </div>
                                </div>
                            </div>


                            <div class="row col-12 p-l-15 m-b-50" >
                                <div class="col-xl-6 col-md-6">
                                    <p>Ordering Provider: <input type="text" name="doctorname" id="doctorname"  class="col-8 col-md-8 col-sm-9 dateborder">
                                    </p>
                                </div>
                                <div class="col-xl-6 col-md-6 text-right">
                                    <p>Date: <input type="text" name="dateofsignature" id="dateofsignature"  class="notfuturedate col-5 dateborder">
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                        <button type="button" class="btn btn-primary"id="buttonid" onclick="saveOral(this)">Submit</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<!--==================================================================================--> 

<script>

    function saveOral(buttonObj)
    {
        if (!$('#patientdate').val())
        {
            msgbox("Date is Mandatory", "Patient Checklist", "error");
            return false;
        }
        $(buttonObj).attr('disabled', 'disabled');
        $(buttonObj).text('Sending...');

        $(buttonObj).off('click'); //disables click event
        console.log(buttonObj);


        let checkboxes = document.querySelectorAll('input[name="oral"]:checked');
        let gender = [];
        checkboxes.forEach((checkbox) => {
            gender.push(checkbox.value);
        });

        let checkboxes1 = document.querySelectorAll('input[name="oralpathology"]:checked');
        let values1 = [];
        checkboxes1.forEach((checkbox) => {
            values1.push(checkbox.value);
        });

        let checkboxes2 = document.querySelectorAll('input[name="oralpathology1"]:checked');
        let values2 = [];
        checkboxes2.forEach((checkbox) => {
            values2.push(checkbox.value);
        });

        let checkboxes3 = document.querySelectorAll('input[name="oralpathology2"]:checked');
        let values3 = [];
        checkboxes3.forEach((checkbox) => {
            values3.push(checkbox.value);
        });

        let checkboxes4 = document.querySelectorAll('input[name="oralpathology3"]:checked');
        let values4 = [];
        checkboxes4.forEach((checkbox) => {
            values4.push(checkbox.value);
        });

        let checkboxes5 = document.querySelectorAll('input[name="oralpathology4"]:checked');
        let values5 = [];
        checkboxes5.forEach((checkbox) => {
            values5.push(checkbox.value);
        });

        let checkboxes6 = document.querySelectorAll('input[name="oralpathology5"]:checked');
        let values6 = [];
        checkboxes6.forEach((checkbox) => {
            values6.push(checkbox.value);
        });

        let checkboxes7 = document.querySelectorAll('input[name="oralpathology6"]:checked');
        let values7 = [];
        checkboxes7.forEach((checkbox) => {
            values7.push(checkbox.value);
        });

        let checkboxes8 = document.querySelectorAll('input[name="oralpathology7"]:checked');
        let values8 = [];
        checkboxes8.forEach((checkbox) => {
            values8.push(checkbox.value);
        });

        let checkboxes9 = document.querySelectorAll('input[name="oralpathology8"]:checked');
        let values9 = [];
        checkboxes9.forEach((checkbox) => {
            values9.push(checkbox.value);
        });

        let checkboxes10 = document.querySelectorAll('input[name="oralpathology9"]:checked');
        let values10 = [];
        checkboxes10.forEach((checkbox) => {
            values10.push(checkbox.value);
        });

        let checkboxes11 = document.querySelectorAll('input[name="oralpathology10"]:checked');
        let values11 = [];
        checkboxes11.forEach((checkbox) => {
            values11.push(checkbox.value);
        });

        let checkboxes12 = document.querySelectorAll('input[name="oralpathology11"]:checked');
        let values12 = [];
        checkboxes12.forEach((checkbox) => {
            values12.push(checkbox.value);
        });

        let checkboxes13 = document.querySelectorAll('input[name="oralpathology12"]:checked');
        let values13 = [];
        checkboxes13.forEach((checkbox) => {
            values13.push(checkbox.value);
        });

        let checkboxes14 = document.querySelectorAll('input[name="oralpathology13"]:checked');
        let values14 = [];
        checkboxes14.forEach((checkbox) => {
            values14.push(checkbox.value);
        });

        let checkboxes15 = document.querySelectorAll('input[name="oralpathology14"]:checked');
        let values15 = [];
        checkboxes15.forEach((checkbox) => {
            values15.push(checkbox.value);
        });

        let checkboxes16 = document.querySelectorAll('input[name="oralpathology15"]:checked');
        let values16 = [];
        checkboxes16.forEach((checkbox) => {
            values16.push(checkbox.value);
        });

        let checkboxes17 = document.querySelectorAll('input[name="oralpathology16"]:checked');
        let values17 = [];
        checkboxes17.forEach((checkbox) => {
            values17.push(checkbox.value);
        });

        let checkboxes18 = document.querySelectorAll('input[name="oralpathology17"]:checked');
        let values18 = [];
        checkboxes18.forEach((checkbox) => {
            values18.push(checkbox.value);
        });

        let checkboxes19 = document.querySelectorAll('input[name="oralpathology18"]:checked');
        let values19 = [];
        checkboxes19.forEach((checkbox) => {
            values19.push(checkbox.value);
        });

        let checkboxes20 = document.querySelectorAll('input[name="oralpathology19"]:checked');
        let values20 = [];
        checkboxes20.forEach((checkbox) => {
            values20.push(checkbox.value);
        });

        let checkboxes21 = document.querySelectorAll('input[name="oralpathology20"]:checked');
        let values21 = [];
        checkboxes21.forEach((checkbox) => {
            values21.push(checkbox.value);
        });

        let checkboxes22 = document.querySelectorAll('input[name="oralpathology21"]:checked');
        let values22 = [];
        checkboxes22.forEach((checkbox) => {
            values22.push(checkbox.value);
        });

        let checkboxes23 = document.querySelectorAll('input[name="oralpathology22"]:checked');
        let values23 = [];
        checkboxes23.forEach((checkbox) => {
            values23.push(checkbox.value);
        });

        let checkboxes24 = document.querySelectorAll('input[name="oralpathology23"]:checked');
        let values24 = [];
        checkboxes24.forEach((checkbox) => {
            values24.push(checkbox.value);
        });

        let checkboxes25 = document.querySelectorAll('input[name="oralpathology24"]:checked');
        let values25 = [];
        checkboxes25.forEach((checkbox) => {
            values25.push(checkbox.value);
        });

        let checkboxes26 = document.querySelectorAll('input[name="oralpathology25"]:checked');
        let values26 = [];
        checkboxes26.forEach((checkbox) => {
            values26.push(checkbox.value);
        });

        let checkboxes27 = document.querySelectorAll('input[name="oralpathology26"]:checked');
        let values27 = [];
        checkboxes27.forEach((checkbox) => {
            values27.push(checkbox.value);
        });

        let checkboxes28 = document.querySelectorAll('input[name="oralpathology27"]:checked');
        let values28 = [];
        checkboxes28.forEach((checkbox) => {
            values28.push(checkbox.value);
        });

        let checkboxes29 = document.querySelectorAll('input[name="oralpathology28"]:checked');
        let values29 = [];
        checkboxes29.forEach((checkbox) => {
            values29.push(checkbox.value);
        });

        let checkboxes30 = document.querySelectorAll('input[name="oralpathology29"]:checked');
        let values30 = [];
        checkboxes30.forEach((checkbox) => {
            values30.push(checkbox.value);
        });

        let checkboxes31 = document.querySelectorAll('input[name="oralpathology30"]:checked');
        let values31 = [];
        checkboxes31.forEach((checkbox) => {
            values31.push(checkbox.value);
        });

        let checkboxes32 = document.querySelectorAll('input[name="oralpathology31"]:checked');
        let values32 = [];
        checkboxes32.forEach((checkbox) => {
            values32.push(checkbox.value);
        });

        let checkboxes33 = document.querySelectorAll('input[name="oralpathology32"]:checked');
        let values33 = [];
        checkboxes33.forEach((checkbox) => {
            values33.push(checkbox.value);
        });

        let checkboxes34 = document.querySelectorAll('input[name="oralpathology33"]:checked');
        let values34 = [];
        checkboxes34.forEach((checkbox) => {
            values34.push(checkbox.value);
        });

        var patienttestno1 = $('#patienttestno1').val();
        var lastname = $('#patientlastname').val();
        var firstname = $('#patientfirstname').val();
        var middlename = $('#patientmiddlename').val();
        var patientdob = $('#patientdob').val();
        var currentdate = $('#patientdate').val();
        var patienttxt = $('#patienttxt').val();
        var patienttxt1 = $('#patienttxt1').val();
        var patienttxt2 = $('#patienttxt2').val();
        var patienttxt3 = $('#patienttxt3').val();
        var patienttxt4 = $('#patienttxt4').val();
        var patienttestno = $('#patienttestno').val();
        var patienttxt5 = $('#patienttxt5').val();
        var patienttxt6 = $('#patienttxt6').val();
        var dateofsignature = $('#dateofsignature').val();
        var doctorname = $('#doctorname').val();

        $.ajax({
            url: "generateoralpathologypdf",
            type: "POST", //send it through get method
            data: {
                patientid: $("#patientCombo option:selected").val(),
                patienttestno1: patienttestno1,
                lastname: lastname,
                firstname: firstname,
                middlename: middlename,
                patientdob: patientdob,
                patientgender: gender,
                currentdate: currentdate,
                patienttxt: patienttxt,
                patienttxt1: patienttxt1,
                patienttxt2: patienttxt2,
                patienttxt3: patienttxt3,
                patienttxt4: patienttxt4,
                patientradiobtn: values1,
                patientradiobtn1: values2,
                patientcheckbox: values3,
                patientcheckbox1: values4,
                patientcheckbox2: values5,
                patientcheckbox3: values6,
                patientcheckbox4: values7,
                patientcheckbox5: values8,
                patientcheckbox6: values9,
                patientcheckbox7: values10,
                patientcheckbox8: values11,
                patientcheckbox9: values12,
                patientcheckbox10: values13,
                patientcheckbox11: values14,
                patientcheckbox12: values15,
                patientcheckbox13: values16,
                patientcheckbox14: values17,
                patientcheckbox15: values18,
                patientcheckbox16: values19,
                patientcheckbox17: values20,
                patientcheckbox18: values21,
                patientcheckbox19: values22,
                patientcheckbox20: values23,
                patientcheckbox21: values24,
                patientcheckbox22: values25,
                patientcheckbox23: values26,
                patientcheckbox24: values27,
                patientcheckbox25: values28,
                patientcheckbox26: values29,
                patientcheckbox27: values30,
                patientcheckbox28: values31,
                patientcheckbox29: values32,
                patientradiobtn2: values33,
                patientradiobtn3: values34,
                patienttestno: patienttestno,
                patienttxt5: patienttxt5,
                patienttxt6: patienttxt6,
                dateofsignature: dateofsignature,
                doctorname: doctorname
//                    firstname : $("#inputFirstName").val(),
//                    lastname : $("#inputLastName").val()
            },
            success: function (response) {
                if (response.length > 0)
                {
                    $("#Oral_Pathology_Order_Form").modal('hide');
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
        $(document).on('change', '#oral1', function () {
            if (this.checked == true) {
                $("#oral3").prop("checked", false);
                $('#oral3').attr("disabled", true);
            } else
            {
                $('#oral3').attr("disabled", false);
            }
        });

        $(document).on('change', '#oral2', function () {
            if (this.checked == true) {
                $('#oral3').attr("disabled", false);
            } else
            {
                $('#oral3').attr("disabled", true);
            }
        });
    });

</script>


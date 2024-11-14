<div class="modal fade centerAligned" id="Radiology_Order_Form" tabindex="-1" data-backdrop="static" data-keyboard="false" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-xl">
        <div class="modal-content">
           <div class="modal-header" style="text-align: center">
                <div class="col">
                    <h4 class="data_practice_name"></h4>
                    <input type="hidden" name="signfile9" id="signfile9" class="data_practice_name">
                    <p style="margin: 1px;" class="data_practiceAddress"> ADDRESS CITY STATE ZIP CODE</p>
                    <p >Tel: <span class="data_practicePhone">213-555-5555</span> 	Fax: <span class="data_practiceFax">213-555-5555</span></p>
                </div> 
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
            </div>
            <div class="container">
                <div class="card-body">
                    <div class="row">
                        <div class="col-12">
                        <form id="form_sign">
                            <div class="col-12" style="text-align: center;margin-top: 10px;">
                                <h5 style="font-size: 20px;">Radiology Order Form</h5>
                            </div>
                            
                            <div class="row" style="padding-left: 15px;">
                                <div class=" col-xl-4 col-md-4">
                                    <p>Last Name :<input type="text" name="lastname" id="lastname" class="data_inputLastname col-8 dateborder" style="padding:0">
                                    </p>
                                </div>
                                <div class=" col-xl-4 col-md-4">
                                    <p>First Name : <input type="text" name="firstname" id="firstname" class="data_inputFirstname col-8 dateborder" style="padding:0">
                                    </p>
                                </div>
                               <div class=" col-xl-4 col-md-4">
                                    <p>Middle Initial : <input type="text" name="middlename" id="middlename" class="data_inputMiddlename col-4 dateborder" style="padding:0">
                                    </p>
                                </div>
                            </div>
                            <div class="row" style="padding-left: 15px">
                                <div class="col-xl-4 col-md-4">
                                    <p>Date of Birth : <input type="date" name="patientdob" id="patientdob"  class="data_inputDOB col-7 dateborder">
                                    </p>
                                </div>
                                <div class="col-xl-4 col-md-4">
                                    
                                    <div class="col">
                                        Sex :
                                    <div class="custom-control custom-radio custom-control-inline">
                                        <input type="radio" name="radiology" value="1" class="data_gender custom-control-input input-primary" id="sfcf1"  onclick="return false;">
                                        <label class="custom-control-label" for="sfcf1">Male</label>
                                    </div>
                                    <div class="custom-control custom-radio custom-control-inline">
                                        <input type="radio" name="radiology" value="2" class="data_gender custom-control-input input-primary" id="sfcf2"  onclick="return false;">
                                        <label class="custom-control-label" for="sfcf2">Female</label>
                                    </div>
                                        <div class="custom-control custom-radio custom-control-inline">
                                        <input type="radio" name="radiology" value="3" class="data_gender custom-control-input input-primary" id="sfcf3"  onclick="return false;">
                                        <label class="custom-control-label" for="sfcf3">Other</label>
                                    </div>
                                    </div>
                                </div>
                                <div class="col-xl-4 col-md-4">
                                 Date :<input type="text" name="currentdate" id="currentdate4"  autocomplete="off" class="dateborder notfuturedate "></div>
                                 </div>
                            
                            <div class="col-12">
                                <p class="m-t-15">Diagnosis:
                                    <input type="text" name="patienttxt" id="txt" class="col-11 col-sm-8 col-md-11 dateborder" maxlength="80">
                                </p>
                            </div>
                                <div class="col-12">
                                <p style="margin-top: 15px;">Clinical history:
                                    <input type="text" name="patienttxt1" id="txt1" class="col-10 dateborder" maxlength="80"></p>
                                <p style="margin-top: 15px;"><input type="text" name="patienttxt2" id="txt2"  maxlength="80" class="col-12 dateborder"></p>
                            </div>
                                <div class="col-12">
                                <p style="margin-top: 15px;">Relevant Medical history:
                                    <input type="text" name="patienttxt3" id="txt3" class="col-10 col-sm-8 col-md-10 dateborder" maxlength="80">
                                </p>
                            </div>
                                <div class="col-12">
                                <p style="margin-top: 15px;">Oral Facial Surgical Procedure history:
                                    <input type="text" name="patienttxt4" id="txt4" class="col-9 col-sm-8 col-md-9 dateborder" maxlength="80">
                                </p>
                            </div>
               
                        <div class=" col-12" style="text-align:center; font-weight:bold;">Areas of concern (please mark)</div>
                        <div class="col-12"  style="text-align:center; "><img src="assets/images/patientregister/oral-radiology.png" width="95%" height="" align="center" style="margin-bottom:100px;"/></div>
                        
                        <div class="row col-12" style="padding-left: 25px; margin-bottom:140px;">
                                <div class="col-xl-6 col-md-6">
                                    <p>Ordering Provider: <input type="text" name="doctorname" id="nameofdoctor"  class="col-8 col-sm-8 col-md-9 dateborder" >
                                    </p>
                                </div>
                            <div class="col-xl-6 col-md-6" style="text-align:right;">
                                    <p>Date : <input type="text" name="signaturedate" id="signaturedate"  class="notfuturedate  dateborder">
                                    </p>
                            </div>
                        </div>
                        </form>
                       </div>
                        </div>
                </div>  
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                <button type="button" class="btn btn-primary"id="buttonid" onclick="saveRadiology(this)">Submit</button>
            </div>
       
        </div>  
        </div>
</div>
        
<!--==================================================================================--> 

<script>
    
      function saveRadiology(buttonObj)
        {
          if(!$('#currentdate4').val())
          {
               msgbox("Date is Mandatory", "Patient Checklist", "error");
                return false;
          }
            $(buttonObj).attr('disabled', 'disabled');
            $(buttonObj).text('Sending...');

            $(buttonObj).off('click'); //disables click event
            console.log(buttonObj);
            
            
            let checkboxes = document.querySelectorAll('input[name="radiology"]:checked');
            let gender = [];
            checkboxes.forEach((checkbox) => {
                gender.push(checkbox.value);
            });
           
            var lastname = $('#lastname').val();
            var firstname = $('#firstname').val();
            var middlename = $('#middlename').val();
            var patientdob = $('#patientdob').val();
            var currentdate = $('#currentdate4').val();
            var patienttxt = $('#txt').val();
            var patienttxt1 = $('#txt1').val();
            var patienttxt2 = $('#txt2').val();
            var patienttxt3 = $('#txt3').val();
            var patienttxt4 = $('#txt4').val();
            var signaturedate = $('#signaturedate').val();
            var doctorname=$('#nameofdoctor').val();
          
            $.ajax({
                url: "generateradiologypdf",
                type: "POST", //send it through get method
                data: {
                    patientid: $("#patientCombo option:selected").val(),
                    lastname : lastname,
                    firstname : firstname,
                    middlename :middlename,
                    patientdob: patientdob,
                    patientgender: gender,
                    currentdate: currentdate,
                    patienttxt : patienttxt,
                    patienttxt1 : patienttxt1,
                    patienttxt2 : patienttxt2,
                    patienttxt3 : patienttxt3,
                    patienttxt4 : patienttxt4,
                    signaturedate : signaturedate,
                    doctorname :doctorname
//                    firstname : $("#inputFirstName").val(),
//                    lastname : $("#inputLastName").val()
                },
                success: function (response) {
                    if (response.length > 0)
                    {
                        $("#Radiology_Order_Form").modal('hide');
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
        
</script>
<div class="modal fade centerAligned" id="1_5_ABNSpanish" tabindex="-1" data-backdrop="static" data-keyboard="false" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-xl">
        <div class="modal-content">
            <div class="modal-header">
                <div class="row" style="padding-left: 20px;">
                    <div class="col-6 col-md-12 col-xl-6">
                        <h6 style="font-size: 20px;">R. Notificado: <input type="text" class="dateborder" name="abnSpan9" id="abnSpan9" maxlength="25"> </h6>
                    </div>
                    <div class="col-6 col-md-12 col-xl-6">
                        <h6 style="font-size: 20px;">Fecha:<input type="text" class="dateborder notfuturedate" autocomplete="off" name="currentDate" id="currentDateSpan"> </h6>
                    </div>
                    <div class="col-6 col-md-12 col-xl-6 clear">
                        <h6 style="font-size: 20px;">B. Nombre del paciente:<input type="text" class="dateborder data_patient_name" name="abnSpan10" id="abnSpan10"></h6>
                    </div>
                    <div class="col-6 col-md-12 col-xl-6">
                        <h6 style="font-size: 20px;" style="padding-left: 20px;">C. Número de identificación: <input type="text" class="dateborder" name="abnSpan11" id="abnSpan11" maxlength="25"></h6>
                    </div>
                </div>    
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>

            </div>
            <div class="container">
                <div class="card-body">
                    <div class="row">
                        <form id="form_ben">
                            <div class="col-12" style="text-align: center">
                                <h6 style="font-size: 20px;">Aviso anticipado al beneficiario de no cobertura (ABN)</h6>
                            </div>
                            <div class="col-9">Nombre de la práctica:<input type="text" name="abnSpan12" id="abnSpan12" readonly class="col-9 dateborder data_practice_name"> </div>

                            <div class="col-12">
                                <h6 style="display: inline;min-width: 10px;border-bottom: 1px solid #000000;">NOTA: &nbsp;</h6> <p style="display: inline">Si Medicare no paga por<span style="font-weight: bold"> D.<input type="text" name="abnSpan1" id="abnSpan1" class="col-4 dateborder" style="padding:0" maxlength="50"></span> a continuación, es posible que tenga que pagar. Medicare no paga todo, ni siquiera algunos cuidados que usted o su proveedor de atención médica tienen buenas
razones para pensar que necesita. Es posible que Medicare no pague lo que se indica en<span style="font-weight: bold"> D.<input type="text" name="abnSpan2" id="abnSpan2"class="col-4 dateborder" style="padding:0" maxlength="50"></span> a continuación.</p>
                                
                                
                                
                                <table class="table table-bordered m-t-15" style="border: 1px solid #dddddd;">
                                    <tr style="background-color: #dddddd;">
                                        <td style="border-right: 1px solid #dddddd;"><h6 style="font-weight:bold;">D.</h6></td>
                                        <td style="border-right: 1px solid #dddddd;"><h6 style="font-weight:bold;">E. Razón por la que Medicare no puede pagar:</h6></td>
                                        <td><h6 style="font-weight:bold;">F. Costo estimado</h6></td>
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
                                                <li>Other<input type="text" name="abnSpan3" id="abnSpan3" class="col-7 dateborder" maxlength="25" ></li>
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
                                                <li>$<input type="text" name="abnSpan4" id="abnSpan4" class="col-6 dateborder" maxlength="8" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*?)\..*/g, '$1');"></li>
                                            </ul>
                                        </td>
                                    </tr>
                                </table>
                                <h6>LO QUE NECESITA HACER AHORA:</h6>
                                <ul>
                                    <li>Lea este aviso para que pueda tomar una decisión informada sobre su cuidado.</li>
                                    <li>Háganos cualquier pregunta que pueda tener después de terminar de leer.</li>
                                    <li>Elija una opción a continuación sobre si desea recibir la D.<input type="text" name="abnSpan5" id="abnSpan5" class="col-4 dateborder" maxlength="50"> mencionada anteriormente.</li>
                                    <h6 style="display: inline;">Nota: &nbsp;</h6><p  style="display: inline">Si elige la opción 1 o 2, podemos ayudarle a utilizar cualquier otro seguro que tenga, pero
Medicare no puede exigirnos que lo hagamos.</p>
                                </ul>
                                <table class="table-responsive" style="width:100%;border: 1px solid #dddddd; line-height: 1.8">
                                    <tr class="p-l-10" style="font-size: 18px;background: lightgrey;">
                                        <th class="p-l-10">G. OPCIONES: Marque solo una casilla. No podemos elegir una casilla por usted.</th>
                                    </tr>
                                    <tr>
                                        <td class="p-l-10 p-r-10">
                                            <div class="custom-control custom-radio" style="display: inline">
                                                <input type="radio" name="beneficiarySpan" class="custom-control-input input-primary" id="beneficiarySpan1" value="OPTION1">
                                                <label class="custom-control-label" for="beneficiarySpan1" style="font-weight: bold">OPCIÓN 1. &nbsp;</label>
                                            </div>
                                           Deseo la <span style="font-weight: bold">D.<input type="text" name="abnSpan6" id="abnSpan6" class="col-4 dateborder" style="padding:0" maxlength="50"></span> 
                                            mencionada anteriormente. Puede solicitar que se le pague
ahora, pero también deseo que se le facture a Medicare por una decisión oficial sobre el pago, que se
me envía en un Resumen de Medicare (MSN). Entiendo que si Medicare no paga, soy responsable del
pago, pero puedo apelar a Medicare siguiendo las instrucciones del MSN. Si Medicare paga, usted
reembolsará cualquier pago que le haya hecho, menos copagos o deducibles.
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="p-l-10">
                                            <div class="custom-control custom-radio" style="display: inline">
                                                <input type="radio" name="beneficiarySpan" class="custom-control-input input-primary" id="beneficiarySpan2" value="OPTION2">
                                                <label class="custom-control-label" for="beneficiarySpan2" style="font-weight: bold">OPCIÓN 2. &nbsp;</label>
                                            </div>
                                            Deseo la <span style="font-weight: bold">D.<input type="text" name="abnSpan07" id="abnSpan07" class="col-4 dateborder" maxlength="50" style="padding:0"></span> 
                                            mencionada anteriormente, pero no facture a Medicare.
Puede solicitar que se le pague ahora ya que soy responsable del pago. No puedo apelar si no se
factura a Medicare.
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="p-l-10">
                                            <div class="custom-control custom-radio" style="display: inline">
                                                <input type="radio" name="beneficiarySpan" class="custom-control-input input-primary" id="beneficiarySpan3" value="OPTION3">
                                                <label class="custom-control-label" for="beneficiarySpan3" style="font-weight: bold">OPCIÓN 3. &nbsp;</label>
                                            </div>
                                            No deseo la <span style="font-weight: bold">D.<input type="text" name="abnSpan08" id="abnSpan08" class="col-4 dateborder" maxlength="50" style="padding:0"></span> 
                                            mencionada anteriormente. Entiendo que con esta
elección no soy responsable del pago y no puedo apelar para ver si Medicare pagaría.
                                        </td>
                                    </tr>
                                </table>
                                
                                <div class="row col-12"  style="margin-top: 15px;">
                                <h6>H.  Información adicional:</h6>
                                    <p><b>Este aviso da nuestra opinión, no es una decisión oficial de Medicare.</b>Si tiene otras preguntas sobre este aviso o la facturación
de Medicare, llame al  <b>1-800-MEDICARE</b> (1-800-633-4227/<b>TTY</b>: 1-877-486-2048). Firmar a continuación significa que ha recibido y comprende este aviso. Puede solicitar recibir una copia.</p>
                                    
                                <div class="col-6">
                                    <div class="col-12">
                                    <canvas id="abnSpancanvas_sign" width="480px" height="80px"></canvas>
                                        <p><span style="font-weight: bold; font-size: 15px;">I. Firma: </span><span style="color: red;margin: 20px;"><a onclick="clearAbnSpan5()">borrar firma</a></span></p>

                                </div>
                                    </div>
                                <div class="col-2 offset-md-3" >
                                <h6>  J. Fecha:</h6>

                                        <p>  <input type="text" name="todayDate" autocomplete="off" id="todayDateSpan" class="notfuturedate dateborder"></p>

                                    
                                
                                </div>  
<!--                                <div style="display: flex;align-items: flex-end;height: 75px;">
                                    
                                </div>-->
                            </div>  
                                
                                <div class="col-12 row">
                                     <div>
                                        <span style="font-weight: bold;text-align: justify; text-justify: inter-word;">
                                            Tiene derecho a obtener información de Medicare en un formato accesible, como letra grande, braille o audio. También
tiene derecho a presentar una queja si siente que ha sido discriminado. Visite Medicare.gov/about-us/accessibility-
nondiscrimination-notice.
                                        </span>
                                    </div>
                                    <span class="m-t-10" style="text-align: justify; text-justify: inter-word;">
                                        De acuerdo con la Ley de Reducción de Trámites de 1995, ninguna persona está obligada a responder a una recopilación de información a menos que muestre un
número de control OMB válido. El número de control OMB válido para esta recopilación de información es 0938-0566. El tiempo requerido para completar esta
recopilación de información se estima en un promedio de 7 minutos por respuesta, incluido el tiempo para revisar las instrucciones, buscar recursos de datos existentes,
recopilar los datos necesarios y completar y revisar la recopilación de información. Si tiene comentarios sobre la precisión de la estimación de tiempo o su gerencias
para mejorar este formulario, escriba a: CMS, 7500 Security Boulevard, Attn: PRA Reports Clearance Officer, Baltimore, Maryland 21244-1850.

                                    </span>
                                </div>


                            </div>
                        </form>
                    </div>
                </div>  
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                <button type="button" class="btn btn-primary" id="buttonid" onclick="saveAbnSpanish(this)">Submit</button>
            </div>
        </div>
    </div>
</div>

<!--==================================================================================-->
<script>

    function saveAbnSpanish(buttonObj) {
            //alert("currentDate: "+$('#currentDateSpan').val());
         if(!$('#currentDateSpan').val()) {
            msgbox("Date is Mandatory", "Patient Checklist", "error");
            return false;
           }
        $(buttonObj).attr('disabled', 'disabled');
        $(buttonObj).text('Sending...');

        $(buttonObj).off('click'); //disables click event// alert("submitted");
        var abn_file = window.signaturePad5.toDataURL("image/png");
        var abn_file1 = abn_file.replace('data:image/png;base64,', '');

        let checkboxes = document.querySelectorAll('input[name="beneficiarySpan"]:checked');
        let values = [];
        checkboxes.forEach((checkbox) => {
            values.push(checkbox.value);
        });

        var patientNotifierSpan = $('#abnSpan9').val();
        var patientName = $('#abnSpan10').val();
        var identificationnumberSpan = $('#abnSpan11').val();
        var patientTxtSpan1 = $('#abnSpan1').val();
        var patientTxtSpan2 = $('#abnSpan2').val();
        var patientTxtSpan3 = $('#abnSpan3').val();
        var patientTxtSpan4 = $('#abnSpan4').val();
        var patientTxtSpan5 = $('#abnSpan5').val();
        var patientTxtSpan6 = $('#abnSpan6').val();
        var patientTxtSpan7 = $('#abnSpan07').val();
        var patientTxtSpan8 = $('#abnSpan08').val();
        var signDate1 = $('#todayDateSpan').val();
        var currentDate = $('#currentDateSpan').val();
         //alert("Current Date: "+currentDate);
       

        $.ajax({
            url: "generateabnspanishadvancedbeneficiarypdf",
            type: "POST", //send it through get method
            data: {

                patientNotifier: patientNotifierSpan,
                patientName: patientName,
                identificationNumber: identificationnumberSpan,
                patientTxt1: patientTxtSpan1,
                patientTxt2: patientTxtSpan2,
                patientId: $("#patientCombo option:selected").val(),
                patientTxt3: patientTxtSpan3,
                patientTxt4: patientTxtSpan4,
                patientTxt5: patientTxtSpan5,
                patientRadioBtn1: values,
                patientTxt6: patientTxtSpan6,
                lastName: $("#inputLastName").val(),
                firstName: $("#inputFirstName").val(),
                patientTxt7: patientTxtSpan7,
                patientTxt8: patientTxtSpan8,
                patientSignature: abn_file1,
                signDate1 :signDate1,
                currentDate : currentDate
            },
            success: function (response) {
                if (response.length > 0) {
                    $("#1_5_ABNSpanish").modal('hide');
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
        window.signaturePad5 = new SignaturePad($('#abnSpancanvas_sign').get(0), {

        });

    });


    var clearAbnSpan5 = function () {
        window.signaturePad5.clear();
    };
</script>
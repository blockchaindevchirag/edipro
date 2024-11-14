/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


$(function () {
    $("#example-basic").steps({
        headerTag: "h3",
        bodyTag: "section",
        transitionEffect: "fade",
        autoFocus: true
    });
});



jQuery.fn.exists = function () {
    return this.length > 0;
};

$(function () {

    $('#d_auto').datepicker({
        format: "mm/dd/yyyy",
        autoclose: true,
        orientation: "bottom left"
    }).mask('99/99/9999');

    var form = $("#example-form");
    form.validate({
        errorPlacement: function errorPlacement(error, element) {
            element.before(error);
        },
        rules: {
            confirm: {
                equalTo: "#password"
            }
        }
    });
    form.children("div").steps({
        headerTag: "h3",
        bodyTag: "section",
        transitionEffect: "fade",
        onStepChanging: function (event, currentIndex, newIndex) {
            form.validate().settings.ignore = ":disabled,:hidden";
            return form.valid();
        },
        onFinishing: function (event, currentIndex) {
            form.validate().settings.ignore = ":disabled";
            return form.valid();
        },
        onFinished: function (event, currentIndex) {
            alert("Submitted!");
        }
    });
});

$(function () {
    $("#example-vertical").steps({
        headerTag: "h3",
        bodyTag: "section",
        transitionEffect: "fade",
        stepsOrientation: "vertical"
    });
});

$(function () {
    $("#design-1-form").steps({
        headerTag: "h3",
        bodyTag: "section",
        labels: {finish: "Submit"},
        transitionEffect: "fade",
        cssClass: "wizard pc-wizard",
        autoFocus: true,
        onStepChanging: function (e, currentIndex, newIndex) {

            if (currentIndex == 0) {
                if (!$('#ddlpractice').val()) {
                    $('#ddlpractice').focus();
                    $('.form-1').addClass('was-validated');
                    msgbox("Invalid Practice", "Pre Estimate Form", "error");
                    return false;
                }
                if (!$('#ddlpatient').val()) {
                    $('#ddlpatient').focus();
                    $('.form-1').addClass('was-validated');
                    msgbox("Invalid Patient", "Pre Estimate Form", "error");
                    return false;
                }
                if (!$('#dob').val()) {
                    $('#dob').focus();
                    $('.form-1').addClass('was-validated');
                    msgbox("Invalid DOB", "Pre Estimate Form", "error");
                    return false;
                }
                if (!$('#ddlprovider').val()) {
                    $('#ddlprovider').focus();
                    $('.form-1').addClass('was-validated');
                    msgbox("Invalid Provider", "Pre Estimate Form", "error");
                    return false;
                }


            }

            if (newIndex === 2)
            {
                if ($('#primaryInsurance').has('option').length <= 0 || $('#primaryInsurance').val() === '0') {
                    $('#primaryInsurance').focus();
                    $('.form-1').addClass('was-validated');
                    msgbox("Invalid Primary Insurance", "Pre Estimate Form", "error");
                    return false;
                }

                var pIns = $('#primaryInsurance').val();
                var sIns = $('#secondaryInsurance').val();
                if (pIns === sIns)
                {
                    msgbox("Same Insurance Selected", "Pre Estimate Form", "error");
                    return false;
                }


                if ($('#primaryFeeEstimate').val() === '0') {
                    $('#primaryFeeEstimate').focus();
                    $('.form-1').addClass('was-validated');
                    msgbox("Invalid Primary Insurance Estimate", "Pre Estimate Form", "error");
                    return false;
                }

                if (($('#primaryCopay').val().length === 0) && ($('#primaryCoIns').val().length === 0) && ($('#primaryDeductible').val().length === 0))
                {
                    $('#primaryCopay').val("0");
                    $('#primaryCoIns').val("0");
                    $('#primaryDeductible').val("0");
                    return false;
                } else if (($('#primaryCopay').val().length === 0) && ($('#primaryCoIns').val().length === 0))
                {
                    $('#primaryCopay').val("0");
                    $('#primaryCoIns').val("0");
                    return false;
                } else if (($('#primaryCoIns').val().length === 0) && ($('#primaryDeductible').val().length === 0))
                {
                    $('#primaryCoIns').val("0");
                    $('#primaryDeductible').val("0");
                    return false;
                } else if (($('#primaryCopay').val().length === 0) && ($('#primaryDeductible').val().length === 0))
                {
                    $('#primaryCopay').val("0");
                    $('#primaryDeductible').val("0");
                    return false;
                } else if (($('#secondaryCopay').val().length === 0) && ($('#secondaryCoIns').val().length === 0) && ($('#secondaryDeductible').val().length === 0))
                {
                    $('#secondaryCopay').val("0");
                    $('#secondaryCoIns').val("0");
                    $('#secondaryDeductible').val("0");
                    return false;
                } else if (($('#secondaryCopay').val().length === 0) && ($('#secondaryCoIns').val().length === 0))
                {
                    $('#secondaryCopay').val("0");
                    $('#secondaryCoIns').val("0");
                    return false;
                } else if (($('#secondaryCoIns').val().length === 0) && ($('#secondaryDeductible').val().length === 0))
                {
                    $('#secondaryCoIns').val("0");
                    $('#secondaryDeductible').val("0");
                    return false;
                } else if (($('#secondaryCopay').val().length === 0) && ($('#secondaryDeductible').val().length === 0))
                {
                    $('#secondaryCopay').val("0");
                    $('#secondaryDeductible').val("0");
                    return false;
                } else if (($('#primaryCopay').val().length === 0) || ($('#primaryCoIns').val().length === 0) || ($('#primaryDeductible').val().length === 0) || ($('#secondaryCopay').val().length === 0) || ($('#secondaryCoIns').val().length === 0) || ($('#secondaryDeductible').val().length === 0))
                {
                    $('#primaryCopay').val("0");
                    $('#primaryCoIns').val("0");
                    $('#primaryDeductible').val("0");
                    $('#secondaryCopay').val("0");
                    $('#secondaryCoIns').val("0");
                    $('#secondaryDeductible').val("0");
                    return false;
                } else
                {
                    return true;
                }

            }

            if (newIndex === 3)
            {
                $('#t1proc6162err').html('');

                if ($("#t1proc04sub11").prop('checked') === false && $("#t1proc04sub12").prop('checked') === false) {
                    // $('#t1proc71').focus();    

                    $('#t1proc04sub11err').html('Mandatory');
                    $('#manodatoryerr1').html('Mandatory');
                    //  $('.form-3').addClass('was-validated');
                    console.log('not checked');
                    return false;
                } else
                {

                    $('#t1proc04sub11err').html('');
                    $('#manodatoryerr1').html('');

                }
                if ($("#t1proc04sub21").prop('checked') === false && $("#t1proc04sub22").prop('checked') === false) {
                    // $('#t1proc71').focus();    

                    $('#t1proc04sub21err').html('Mandatory');
                    $('#manodatoryerr1').html('Mandatory');
                    //  $('.form-3').addClass('was-validated');
                    console.log('not checked');
                    return false;
                } else
                {

                    $('#t1proc04sub21err').html('');
                    $('#manodatoryerr1').html('');

                }
                if ($("#t1proc04sub31").prop('checked') === false && $("#t1proc04sub32").prop('checked') === false) {
                    // $('#t1proc71').focus();    

                    $('#t1proc04sub31err').html('Mandatory');
                    $('#manodatoryerr1').html('Mandatory');
                    //  $('.form-3').addClass('was-validated');
                    console.log('not checked');
                    return false;
                } else
                {

                    $('#t1proc04sub31err').html('');
                    $('#manodatoryerr1').html('');

                }
                if ($("#t1proc04sub41").prop('checked') === false && $("#t1proc04sub42").prop('checked') === false) {
                    // $('#t1proc71').focus();    

                    $('#t1proc04sub41err').html('Mandatory');
                    $('#manodatoryerr1').html('Mandatory');
                    //  $('.form-3').addClass('was-validated');
                    console.log('not checked');
                    return false;
                } else
                {

                    $('#t1proc04sub41err').html('');
                    $('#manodatoryerr1').html('');

                }
                if ($("#t1proc04sub51").prop('checked') === false && $("#t1proc04sub52").prop('checked') === false) {
                    // $('#t1proc71').focus();    

                    $('#t1proc04sub51err').html('Mandatory');
                    $('#manodatoryerr1').html('Mandatory');
                    //  $('.form-3').addClass('was-validated');
                    console.log('not checked');
                    return false;
                } else
                {

                    $('#t1proc04sub51err').html('');
                    $('#manodatoryerr1').html('');

                }
                if ($("#t1proc04sub61").prop('checked') === false && $("#t1proc04sub62").prop('checked') === false) {
                    // $('#t1proc71').focus();    

                    $('#t1proc04sub61err').html('Mandatory');
                    $('#manodatoryerr1').html('Mandatory');
                    //  $('.form-3').addClass('was-validated');
                    console.log('not checked');
                    return false;
                } else
                {

                    $('#t1proc04sub61err').html('');
                    $('#manodatoryerr1').html('');

                }

                if ($("#t1proc04sub71").prop('checked') === false && $("#t1proc04sub72").prop('checked') === false) {
                    // $('#t1proc71').focus();    

                    $('#t1proc04sub71err').html('Mandatory');
                    $('#manodatoryerr1').html('Mandatory');
                    //  $('.form-3').addClass('was-validated');
                    console.log('not checked');
                    return false;
                } else
                {
                    $('#t1proc04sub71err').html('');
                    $('#manodatoryerr1').html('');
                }

            }
            var procecount = 0;
            if (currentIndex === 2 && newIndex === 3)
            {
                $('input[type=checkbox]').each(function () {

                    var procdiv = $(this).attr("name");
                    if (procdiv !== "" && typeof (procdiv) !== "undefined") {
                        if (this.checked) {
                            //  alert(procdiv);
                            procecount++;
                        }
                    }

                });

                //   alert("proc: " + procecount);
                if (procecount === 0) {
                
                     $('#flading').hide();
                    alert("Select atleast 1 Procedure.");
                   
                    return false;
                }
            }

            return true;

        }
    });

    $("#dateofservice").datepicker({
        format: "mm/dd/yyyy",
        autoclose: true,
        orientation: "bottom left",
        endDate: "0",
        startDate: "-11m"
    }).mask('99/99/9999');
});

function saveDraft() {
    $('#resultcodev').val('');

    $('#result').val($('#procedurecode_result').html());
    $('#resultcodev').val($('#procedurecodev_result').html());
    //return false;
    $('#billstatus').val('SAVED');
    $('#design-1-form').submit();
}

function changeTemplate(val) {
    if (val === "temp1") {
        $('#template2').hide();
        $('#proc_template1').show();
        $('#proc_template2').hide();
    } else if (val === "temp2") {
        $('#template1').hide();
        $('#proc_template1').hide();
        $('#proc_template2').show();
    } else {
        $('#template1').hide();
        $('#template2').hide();
        $('#proc_template1').hide();
        $('#proc_template2').hide();
    }
}

function addPreEstimate() {
    $('#btnnewEstimate').addClass('d-none');
    $('#table_v').addClass('d-none');
    $('#new_estimate').removeClass('d-none');
}


$(document).ready(function () {
    $('#flading').hide();
    $('#proceduretemplate').val('temp1');
    $('#proc_template1').show();
    $('#proc_template2').hide();

 /*  // var duplicatearr = ["t1proc03sub11", "t1proc03sub12", "t1proc03sub13", "t1proc03sub14", "t1proc03sub21", "t1proc03sub22", "t1proc03sub23", "t1proc03sub31", "t1proc03sub32", "t1proc03sub33", "t1proc03sub34", "t1proc03sub41", "t1proc03sub42"];
    //var duplicatearr2 = ["temp2proc21", "temp2proc22", "temp2proc23", "temp2proc24", "temp2proc31", "temp2proc32", "temp2proc33", "temp2proc34", "temp2proc41", "temp2proc42", "temp2proc43", "temp2proc51", "temp2proc52"];
    //var duplicatearr3 = [];
    //  var duplicatearr3 = ['t1proc18sub11', 't1proc18sub12', 't1proc18sub13', 't1proc18sub14'];
    //var duplicatearr4 = [];
    //   var duplicatearr4 = ['t1proc18sub21', 't1proc18sub22'];
    //var duplicatearr5 = ["t1proc04sub11", "t1proc04sub12"];
    //var duplicatearr6 = ["t1proc04sub31", "t1proc04sub32", "t1proc04sub33"];
    //var duplicatearr7 = ["t1proc04sub21", "t1proc04sub22"];
    //var duplicatearr8 = ["t1proc04sub41", "t1proc04sub42"];
    //var duplicatearr9 = ["t1proc04sub51", "t1proc04sub52"];
    var duplicatearr15 = ["t1proc04sub61", "t1proc04sub62"];

    var duplicatearr10 = ["t1proc04sub71", "t1proc04sub72"];
    var duplicatearr11 = ["t1proc04sub81", "t1proc04sub82"];
    var duplicatearr12 = ["t1proc17sub21", "t1proc17sub22"];
    var duplicatearr13 = ["t1proc17sub11", "t1proc17sub12", "t1proc17sub13", "t1proc17sub14"];
    var duplicatearr14 = ["t1proc167", "t1proc168"];
    var twoselection = ["t1proc02sub11", "t1proc02sub12", "t1proc02sub13"];//, "t1proc02sub21","t1proc02sub23","t1proc02sub22","t1proc02sub24"];
    var duplicatearr16 = ['t1proc16sub11', 't1proc16sub12', 't1proc16sub13', 't1proc16sub14', 't1proc16sub15', 't1proc16sub16', 't1proc16sub17', 't1proc16sub18'];

*/

 /*   $("input:checkbox").on('click', function () {
        //if Stem Cell checked disabled in Bone Marrow
//                else Bone Marrow is checked Stem Cell disabled
        try {
            if ($('#t1proc16sub21').is(":checked") || $('#t1proc16sub22').is(":checked") || $('#t1proc16sub23').is(":checked") || $('#t1proc16sub24').is(":checked") || $('#t1proc16sub25').is(":checked")) {
                //  $('#t1proc16sub41').attr('disabled', true);
                //  $('#t1proc16sub42').attr('disabled', true);

            } else {
                //  $('#t1proc16sub41').attr('disabled', false);
                //  $('#t1proc16sub42').attr('disabled', false);
            }
            if ($('#t1proc16sub41').is(":checked") || $('#t1proc16sub42').is(":checked")) {
                //  $('#t1proc16sub21').attr('disabled', true);
                //  $('#t1proc16sub22').attr('disabled', true);
                //  $('#t1proc16sub23').attr('disabled', true);
                //  $('#t1proc16sub24').attr('disabled', true);
                //  $('#t1proc16sub25').attr('disabled', true);

            } else {
                //   $('#t1proc16sub21').attr('disabled', false);
                //   $('#t1proc16sub22').attr('disabled', false);
                //   $('#t1proc16sub23').attr('disabled', false);
                //   $('#t1proc16sub24').attr('disabled', false);
                //   $('#t1proc16sub25').attr('disabled', false);
            }
        } catch (err) {
            console.log("Caught it!\n<br/>\n" + err);
        }
//        ===================================================  
        //in the handler, 'this' refers to the box clicked on
        var $box = $(this);
        if ($box.is(":checked")) {
            // the name of the box is retrieved using the .attr() method
            // as it is assumed and expected to be immutable
            var group = "input:checkbox[name='" + $box.attr("name") + "']";
            var last;

            //console.log(count_chk);
            if ($box.attr("name") === "t1proc02sub21" || $box.attr("name") === "t1proc02sub22") {
                $("#t1proc02sub23").prop("checked", false);
                $("#t1proc02sub24").prop("checked", false);
            }
            if ($box.attr("name") === "t1proc02sub23" || $box.attr("name") === "t1proc02sub24") {
                $("#t1proc02sub21").prop("checked", false);
                $("#t1proc02sub22").prop("checked", false);
            }

            if (twoselection.includes($box.attr("name"))) {
                var count_chk = 0;


                $.each(twoselection, function (index, val) {

                    group = "input:checkbox[name='" + val + "']";
                    if ($(group).is(":checked")) {
                        count_chk = count_chk + 1;
                        group = "input:checkbox[name='" + val + "']";

                    }


                    if (count_chk > 1) {
                        if ($box.attr("name") === "t1proc02sub11")
                        {
                            //  alert($box.attr("name"));


                            if ($('#t1proc02sub12').is(":checked") && $('#t1proc02sub11').is(":checked")) {
                                //  alert("one:" + 'one and two');
                                $("input:checkbox[name='t1proc02sub13']").prop("checked", true);
                            } else
                            {

                                if ($('#t1proc02sub12').is(":checked") && $('#t1proc02sub13').is(":checked")) {
                                    //   alert("one: " + 'two and three');
                                    $("input:checkbox[name='t1proc02sub13']").checked(true);
                                } else
                                {

                                    $("input:checkbox[name='t1proc02sub12']").prop("checked", false);
                                    $("input:checkbox[name='t1proc02sub13']").prop("checked", true);
                                }


                            }

                            if ($('#t1proc02sub13').is(":checked") && $('#t1proc02sub11').is(":checked")) {

                                if ($('#t1proc02sub12').is(":checked"))
                                {

                                    $("input:checkbox[name='t1proc02sub13']").prop("checked", false);
                                    $("input:checkbox[name='t1proc02sub12']").prop("checked", true);

                                } else if ($('#t1proc02sub13').is(":checked"))
                                {
                                    //  alert('Kumar');
                                    $("input:checkbox[name='t1proc02sub12']").prop("checked", false);
                                    $("input:checkbox[name='t1proc02sub13']").checked(true);
                                }

                            } else
                            {

                                $("input:checkbox[name='t1proc02sub13']").prop("checked", false);
                                $("input:checkbox[name='t1proc02sub12']").prop("checked", true);
                            }



                        } else
                        {

                            if ($box.attr("name") === "t1proc02sub12")
                            {


                                if ($('#t1proc02sub12').is(":checked") && $('#t1proc02sub11').is(":checked")) {

                                    $("input:checkbox[name='t1proc02sub13']").prop("checked", true);

                                } else
                                {

                                    if ($('#t1proc02sub12').is(":checked") && $('#t1proc02sub13').is(":checked")) {
                                        //     alert("two: " + 'two and three');
                                        $("input:checkbox[name='t1proc02sub13']").checked(true);
                                    } else
                                    {

                                        $("input:checkbox[name='t1proc02sub12']").prop("checked", false);
                                        $("input:checkbox[name='t1proc02sub13']").prop("checked", true);
                                    }

                                }

                                if ($('#t1proc02sub13').is(":checked") && $('#t1proc02sub11').is(":checked")) {

                                    $("input:checkbox[name='t1proc02sub12']").prop("checked", true);
                                } else
                                {

                                    $("input:checkbox[name='t1proc02sub13']").prop("checked", false);
                                    $("input:checkbox[name='t1proc02sub12']").prop("checked", true);
                                }





                            } else
                            {

                                $(group).prop("checked", false);
                            }

                        }

                    }



                });
            }

            if (duplicatearr11.includes($box.attr("name"))) {

                $.each(duplicatearr11, function (index, val) {
                    group = "input:checkbox[name='" + val + "']";
                    $(group).prop("checked", false);
                });

                $box.prop("checked", true);
            }

            if (duplicatearr15.includes($box.attr("name"))) {

                $.each(duplicatearr15, function (index, val) {
                    group = "input:checkbox[name='" + val + "']";
                    $(group).prop("checked", false);
                });

                $box.prop("checked", true);
            }

           /* if (duplicatearr.includes($box.attr("name"))) {

                $.each(duplicatearr, function (index, val) {
                    group = "input:checkbox[name='" + val + "']";
                    $(group).prop("checked", false);
                });

                /*for (var i = 0; i < substr.length; ++i) {
                 group = "input:checkbox[name='" + duplicatearr[i] + "']";   
                 $(group).prop("checked", false);                                                     
                 }

                $box.prop("checked", true);
            }*/
          /*  if (duplicatearr2.includes($box.attr("name"))) {

                $.each(duplicatearr2, function (index, val) {
                    group = "input:checkbox[name='" + val + "']";
                    $(group).prop("checked", false);
                });

                $box.prop("checked", true);
            }
            if (duplicatearr3.includes($box.attr("name"))) {

                $.each(duplicatearr3, function (index, val) {
                    group = "input:checkbox[name='" + val + "']";
                    $(group).prop("checked", false);
                });

                $box.prop("checked", true);
            }*/
          /*  if (duplicatearr16.includes($box.attr("name"))) {

                $.each(duplicatearr16, function (index, val) {
                    group = "input:checkbox[name='" + val + "']";
                    $(group).prop("checked", false);
                });

                $box.prop("checked", true);
            }
            if (duplicatearr4.includes($box.attr("name"))) {

                $.each(duplicatearr4, function (index, val) {
                    group = "input:checkbox[name='" + val + "']";
                    $(group).prop("checked", false);
                });

                $box.prop("checked", true);
            } */
           /* if (duplicatearr5.includes($box.attr("name"))) {

                $.each(duplicatearr5, function (index, val) {
                    group = "input:checkbox[name='" + val + "']";
                    $(group).prop("checked", false);
                });

                $box.prop("checked", true);
            }
            if (duplicatearr6.includes($box.attr("name"))) {

                $.each(duplicatearr6, function (index, val) {
                    group = "input:checkbox[name='" + val + "']";
                    $(group).prop("checked", false);
                });

                $box.prop("checked", true);
            }
            if (duplicatearr7.includes($box.attr("name"))) {

                $.each(duplicatearr7, function (index, val) {
                    group = "input:checkbox[name='" + val + "']";
                    $(group).prop("checked", false);
                });

                $box.prop("checked", true);
            }
            if (duplicatearr8.includes($box.attr("name"))) {

                $.each(duplicatearr8, function (index, val) {
                    group = "input:checkbox[name='" + val + "']";
                    $(group).prop("checked", false);
                });

                $box.prop("checked", true);
            }
            if (duplicatearr9.includes($box.attr("name"))) {

                $.each(duplicatearr9, function (index, val) {
                    group = "input:checkbox[name='" + val + "']";
                    $(group).prop("checked", false);
                });

                $box.prop("checked", true);
            }
            if (duplicatearr10.includes($box.attr("name"))) {

                $.each(duplicatearr10, function (index, val) {
                    group = "input:checkbox[name='" + val + "']";
                    $(group).prop("checked", false);
                });

                $box.prop("checked", true);
            }
            if (duplicatearr11.includes($box.attr("name"))) {

                $.each(duplicatearr11, function (index, val) {
                    group = "input:checkbox[name='" + val + "']";
                    $(group).prop("checked", false);
                });

                $box.prop("checked", true);
            }
            if (duplicatearr12.includes($box.attr("name"))) {

                $.each(duplicatearr12, function (index, val) {
                    group = "input:checkbox[name='" + val + "']";
                    $(group).prop("checked", false);
                });

                $box.prop("checked", true);
            }
            if (duplicatearr13.includes($box.attr("name"))) {

                $.each(duplicatearr13, function (index, val) {
                    group = "input:checkbox[name='" + val + "']";
                    $(group).prop("checked", false);
                });

                $box.prop("checked", true);
            }
            if (duplicatearr14.includes($box.attr("name"))) {

                $.each(duplicatearr14, function (index, val) {
                    group = "input:checkbox[name='" + val + "']";
                    $(group).prop("checked", false);
                });

                $box.prop("checked", true);
            } else if ($box.prop("name").indexOf("diagnoisis") < 0) {
                $(group).prop("checked", false);
                $box.prop("checked", true);
            }



        } else {
            $box.prop("checked", false);
        }

        var nameattr = $box.attr("name");

        if ($box.attr("name") === "t1proc04sub33") {
            if ($box.is(":checked")) {
                $("#t1proc04sub32").attr("disabled", true);
                $("#t1proc04sub31").prop("checked", true);
                $("#t1proc04sub31").attr("disabled", true);
            } else {
                $("#t1proc04sub32").attr("disabled", false);
                $("#t1proc04sub31").prop("checked", false);
                $("#t1proc04sub31").attr("disabled", false);
            }

            //alert();
        }


    });
*/


    function callCalcEstimate(procedure_id_call) {
           $('#flading').show();
        setTimeout(function ()
        {
            console.log($("#primaryFeeEstimate option:selected").text());
            console.log($("#primaryInsurance option:selected").val());
            console.log("procedure_id_call: " + procedure_id_call);
	     $('#flading').show();
            $('#estimatetable').html("<div class'm-25'>Loading... </div>");
            $.ajax({
                url: "preestimatedetails",
                type: "post", //send it through get method
                dataType: 'html',
                data: {
                    procedureId: procedure_id_call.slice(0, -1),
                    estimateName: $("#primaryFeeEstimate option:selected").text(),
                    sEstimateName: $("#secondaryFeeEstimate option:selected").text(),
                    payorId: $("#primaryInsurance option:selected").val(),
                    sPayorId: $("#secondaryInsurance option:selected").val(),
                    primaryCoIns: $("#primaryCoIns").val(),
                    secondaryCoIns: $("#secondaryCoIns").val(),
                    secondaryInsurance: $("#secondaryInsurance option:selected").val()
                },
                success: function (response) {
                      $('#flading').show();
                    console.log(response);
                    $('#estimatetable').html(response);
                      $('#flading').hide();
                },
                            error: function (err) {
                                console.log(err); 
                                $('#flading').hide();
                            }
            });

            console.log(procedure_id_call.slice(0, -1));
        }, 2000);
    }

    var tagflag = 0;
    $('a').click(function () {

        var link = $(this).attr('href');

        if (link === "#finish") {
            //alert($('a').attr('role'));
            $("#design-1-form").submit();
        }

        if (link === "#design-1-form-h-3") {

            var patname = $("#ddlpatient option:selected").text();
            var myArray = patname.split(" - ");
            $("#patname").html(myArray[0]);
            $("#patgender").html($('#ddlgender').val());
            $("#patdob").html(myArray[1]);
            $("#practice").html($("#ddlpractice option:selected").text());
            $("#treating_surgeon").html($("#ddlprovider option:selected").text());


            $("#primary").html($("#primaryInsurance option:selected").text());
            $("#secondary").html($("#secondaryInsurance option:selected").text());
            $('#primemid').html($("#primaryMemberId").val());
            $('#secmemid').html($("#secondaryMemberId").val());
            $('#flading').show();
        }
        if (link === '#design-1-form-h-2')    {
            //  alert('form 1');
            tagflag = 0;
        }

        if (link === "#design-1-form-h-3") {
            if (tagflag === 0)   {
                tagflag = 1;

                $("#treatmentmaxdiv").html('');

                $("#treatmentmaxdiv").html('');

                $("#treatmentmaxdiv").html('');

                $("#headrevtemp1trmax").html('');

                $("#headrevtemp1trman").html('');

                $("#headrevtemp1trarch").html('');


                for (var i = 1; i <= 44; i++) {
                    $("#revt1proc" + i).html('');
                    $("#revtemp2proc" + i).html('');
                    $("#revcodet1proc" + i).html('');
                }


                $('#archview').hide();
                var diagansiscodes = "";
                var subcategoryarr = [];
                var diagonsiscode = [];
                $('#procedurecode_result').html('');
                $('#procedurecodev_result').html('');
                var procedure_id_call = '';
                var actionflag = $('#actionflag').val();
                var selectedCount = 0;
                var actionStatus = $('#actionstatus').val();
                //  alert($(':checkbox:checked').length);
                //  alert($('#actionstatus').val());
                //  alert(actionflag);
                $(':checkbox:checked').each(function (key, value) {
                    var tagname = $(this).attr("name");
                    //   alert($('#actionflag').val());
                   // $('#flading').show();
                    if (typeof value !== "undefined") {
                        var taname = $(this).attr("name");

                        if (taname !== undefined) {
                            selectedCount++;
                        }
                    }
                });


                if (actionflag === '0')    {
                    //   alert(selectedCount);
                    //  selectedCount = selectedCount;
                } else    {
                    if ($.trim(actionStatus) === "SIGNED")    {
                        // alert('Enter');
                        selectedCount = selectedCount - 1;
                    } else     {
                        // selectedCount = $(':checkbox:checked').length;
                    }
                }

                var selectedCounter = 0;



                $(':checkbox:checked').each(function (key, value) {

                    var tagname = $(this).attr("name");
                    //   alert($('#actionflag').val());
                   // $('#flading').show();
                    if (typeof value !== "undefined") {
                        var taname = $(this).attr("name");

                        if (taname !== undefined) {

                            var category = "" + taname.substring(0, 8);
                            var subcategory = "" + taname.substring(0, 12);


                            if (subcategory.startsWith("t1proc")) {

                                if ($(this).parent().find('label').text() !== "No") {
                                    //$("#head"+tname).show();

                                    if (!subcategoryarr.includes(subcategory) && !subcategoryarr.includes(subcategory)) {
                                        var selectionhead = "";
                                        var selectionsubhead = "";
                                        var selectcategoryhead = "";
                                        if ($('#' + subcategory + 'category').text() === "" || $('#' + subcategory + 'category').text() === " ") {
                                            selectionhead = $('#' + category + 'category').text();
                                            $('#procedurecode_result').append('<br>');
                                        } else {
                                            selectcategoryhead = $('#' + category + 'category').text();
                                            selectionhead = $('#' + subcategory + 'category').text();

                                            if ($('#' + category + 'mcategory').length) {
                                                // Do something
                                                console.log('');
                                            } else {
                                                $('#procedurecode_result').append('<br><div id="' + category + 'mcategory" class="row"> ' +
                                                        '<label class="col-form-label font-style-label"  style="font-weight:bold" ><u>' + selectcategoryhead + ':</u> </label>' +
                                                        '</div>');
                                                $('#procedurecodev_result').append('<div id="' + category + 'mcategory" class="row"> ' +
                                                        '<label class="col-form-label font-style-label"  style="font-weight:bold" ><u>' + selectcategoryhead + ': </u></label>' +
                                                        '</div>');
                                            }
                                        }
                                        if (selectcategoryhead !== "") {
                                            $('#procedurecode_result').append('<div id="' + subcategory + 'category" class="row"> ' +
                                                    '<span class="ulidigimgchk"><label class="col-form-label font-style-label"  style="margin:0 5px;font-weight:bold;display: inline-block;" >' + selectionhead + '  </label>' +
                                                    '<ul class="ulliimg" style="list-style: none !important;"><li><label class="ulliimglbl col-form-label " id="' + subcategory + 'procdesc"></label></li></ul></span>  ' +
                                                    '</div>');

                                            $('#procedurecodev_result').append('<div id="' + subcategory + 'categorycde" class="row"> ' +
                                                    '<span class="ulidigimgchk"><label class="col-form-label font-style-label"  style="margin:0 5px;font-weight:bold;display: inline-block;" >' + selectionhead + '  </label>' +
                                                    '<ul class="ulliimg" style="list-style: none !important;"><li><label class="ulliimglbl col-form-label " id="' + subcategory + 'procdesccde"></label></li></ul></span>  ' +
                                                    '</div>');
                                        } else {
                                            $('#procedurecode_result').append('<div id="' + subcategory + 'category" class="row"> ' +
                                                    '<label class="col-form-label font-style-label"  style="font-weight:bold" >' + selectionhead + ' - </label><br>' +
                                                    '<label class=" col-form-label " id="' + subcategory + 'procdesc"></label>  ' +
                                                    '</div>');

                                            $('#procedurecodev_result').append('<br><div id="' + subcategory + 'categorycde" class="row"> ' +
                                                    '<label class="col-form-label font-style-label"  style="font-weight:bold" >' + selectionhead + ' - </label>' +
                                                    '<label class=" col-form-label " id="' + subcategory + 'procdesccde"></label>  ' +
                                                    '</div>');
                                        }

                                        subcategoryarr.push(subcategory);
                                    }



                                    $.ajax({
                                        url: "procedureid_v1",
                                        type: "get", //send it through get method
                                        data: {
                                            procedureid: taname
                                        },
//                                     async:false,
                                        success: function (response) {

                                            var obj = jQuery.parseJSON(response);

                                            // console.log("procedureid: " + obj[0].proc_code);
                                            if (obj.length > 0)   {
                                                selectedCounter = selectedCounter + 1;
                                                if (response !== "") {
                                                    if ($(this).parent().find('label').text() === "") {
                                                        var txt = $(this).parents('tr').find('td').text();
                                                        //   console.log($.trim(txt))
                                                        var imglbl = '<img src="assets/images/chkbullet.png">' + obj[0].proc_code + '<br>';
                                                        procedure_id_call = obj[0].proc_id + ',' + procedure_id_call;
                                                        console.log(procedure_id_call);
                                                        $("#" + subcategory + "procdesc").append(imglbl);

                                                        var imglbl1_2 = '<img src="assets/images/chkbullet.png">' + obj[0].procedurecodes + '<br>';
                                                        $("#" + subcategory + "procdesccde").append(imglbl1_2);
                                                    } else {
                                                        $("#" + subcategory + "procdesc").append(obj[0].proc_code + ' |');
                                                        $("#" + subcategory + "procdesccde").append(obj[0].procedurecodes + ' |');
                                                    }
                                                } else {
                                                    if ($(this).parent().find('label').text() === "") {
                                                        var txt = $(this).parents('tr').find('td').text();
                                                        //   console.log($.trim(txt))
                                                        $("#" + subcategory + "procdesc").append($.trim(txt) + ' | ');
                                                        $("#" + subcategory + "procdesccde").append($.trim(txt) + ' | ');
                                                    } else {
                                                        $("#" + subcategory + "procdesc").append($(this).parent().find('label').text() + ' | ');
                                                        $("#" + subcategory + "procdesccde").append($(this).parent().find('label').text() + ' | ');
                                                    }
                                                }
                                            }

                                            console.log("selectedCounter: " + selectedCounter);
                                            console.log("selectedCount: " + selectedCount);

                                            if (selectedCounter === selectedCount) {
                                                console.log("Inside selectedCount: " + selectedCount);
                                                $('#flading').hide();
                                                callCalcEstimate(procedure_id_call);
                                                $('#resultcodev').val('');
                                                var diagcount = diagansiscodes.split("|&&|");
                                            }
                                        },
                                        error: function (XMLHttpRequest, textStatus, errorThrown) {
                                            console.log("err selectedCount: " + selectedCount);
                                            selectedCounter = selectedCounter + 1;
                                            if (selectedCounter === selectedCount) {
                                                console.log("Inside selectedCount: " + selectedCount);
                                                $('#flading').hide();
                                                callCalcEstimate(procedure_id_call);
                                                $('#resultcodev').val('');
                                                var diagcount = diagansiscodes.split("|&&|");
                                            }
                                        }
                                    });



                                    /* $.ajax({
                                     url: "procedurecode",
                                     type: "get", //send it through get method
                                     data: {
                                     procedurecode: taname
                                     },
                                     async:false,
                                     success: function (response) {
                                     
                                     var obj = jQuery.parseJSON(response);
                                     console.log("procedureid: " + obj.length);
                                     if (obj.length > 0)
                                     {
                                     
                                     if (response !== "") {
                                     if ($(this).parent().find('label').text() === "") {
                                     var txt = $(this).parents('tr').find('td').text();
                                     console.log($.trim(txt));
                                     var imglbl1 = '<img src="assets/images/chkbullet.png">' + obj[0].proc_code + '<br>';
                                     $("#" + subcategory + "procdesccde").append(imglbl1);
                                     
                                     } else {
                                     if ($(this).parent().find('label').text() === "") {
                                     var txt = $(this).parents('tr').find('td').text();
                                     // console.log($.trim(txt))
                                     $("#" + subcategory + "procdesccde").append($.trim(txt) + ' | ');
                                     } else {
                                     $("#" + subcategory + "procdesccde").append($(this).parent().find('label').text() + ' | ');
                                     }
                                     }
                                     
                                     }
                                     }
                                     }
                                     }); */
                                }
                                $('#procedure_count').val(1);
                            }
                        }
                    }
                    console.log("selectedCounter: " + selectedCounter);
                    console.log("selectedCount: " + selectedCount);

                });
            }
        }

    });


    $('#dateofservice').datepicker({
        format: "mm/dd/yyyy",
        autoclose: true,
        maxDate: new Date()
    }).mask('99/99/9999');
});



function updateStatus(tag, checkedcount) {
    //  console.log(tag);
    if (checkedcount > 0) {
        $('#' + tag).css("background-color", "lightcyan");
        //  $('#' + tag + ' span').html('<i class="feather icon-check f-w-600 bg-c-green update-icon"></i>');
    } else {
        $('#' + tag).css("background-color", "white");
        //  $('#' + tag + ' span').html('<i class="feather icon-minus f-w-600 bg-c-red update-icon"></i>');
    }

}



function callProcedureHeader(procedureid, count)  {

    // check box id check
    var diagnosisdiv = $("#" + procedureid).attr("name");
    var procedurediv = $("#" + procedureid).attr("title");


    var checkedcount1 = $('input[title="' + procedurediv + '"]:checked').length;
    var headTag1 = "";


    if (diagnosisdiv === "t1proc01sub11") {
        console.log(diagnosisdiv);
        headTag1 = "proheading4";
    } else if (diagnosisdiv === "t1proc01sub12") {
        headTag1 = "proheading4";
    } else if (diagnosisdiv === "t1proc01sub13") {
        headTag1 = "proheading4";
    } else if (diagnosisdiv === "t1proc01sub14") {
        headTag1 = "proheading4";
    } else if (diagnosisdiv === "t1proc01sub15") {
        headTag1 = "proheading4";
    } else if (diagnosisdiv === "t1proc01sub16") {
        headTag1 = "proheading4";
    } else if (diagnosisdiv === "t1proc02sub11") {
        headTag1 = "proheadingOne";
    } else if (diagnosisdiv === "t1proc02sub12") {
        headTag1 = "proheadingOne";
    } else if (diagnosisdiv === "t1proc02sub13") {
        headTag1 = "proheadingOne";
    } else if (diagnosisdiv === "t1proc02sub14") {
        headTag1 = "proheadingOne";
    } else if (diagnosisdiv === "t1proc02sub15") {
        headTag1 = "proheadingOne";
    } else if (diagnosisdiv === "t1proc02sub16") {
        headTag1 = "proheadingOne";
    } else if (diagnosisdiv === "t1proc02sub17") {
        headTag1 = "proheadingOne";
    } else if (diagnosisdiv === "t1proc02sub21") {
        headTag1 = "proheadingOne";
    } else if (diagnosisdiv === "t1proc02sub22") {
        headTag1 = "proheadingOne";
    } else if (diagnosisdiv === "t1proc02sub23") {
        headTag1 = "proheadingOne";
    } else if (diagnosisdiv === "t1proc02sub24") {
        headTag1 = "proheadingOne";
    } else if (diagnosisdiv === "t1proc03sub11") {
        headTag1 = "proheading2";
    } else if (diagnosisdiv === "t1proc03sub12") {
        headTag1 = "proheading2";
    } else if (diagnosisdiv === "t1proc03sub13") {
        headTag1 = "proheading2";
    } else if (diagnosisdiv === "t1proc03sub14") {
        headTag1 = "proheading2";
    } else if (diagnosisdiv === "t1proc03sub21") {
        headTag1 = "proheading2";
    } else if (diagnosisdiv === "t1proc03sub22") {
        headTag1 = "proheading2";
    } else if (diagnosisdiv === "t1proc03sub23") {
        headTag1 = "proheading2";
    } else if (diagnosisdiv === "t1proc03sub31") {
        headTag1 = "proheading2";
    } else if (diagnosisdiv === "t1proc03sub32") {
        headTag1 = "proheading2";
    } else if (diagnosisdiv === "t1proc03sub33") {
        headTag1 = "proheading2";
    } else if (diagnosisdiv === "t1proc03sub34") {
        headTag1 = "proheading2";
    } else if (diagnosisdiv === "t1proc03sub41") {
        headTag1 = "proheading2";
    } else if (diagnosisdiv === "t1proc03sub42") {
        headTag1 = "proheading2";
    } else if (diagnosisdiv === "t1proc04sub11") {
        headTag1 = "proheading3";
    } else if (diagnosisdiv === "t1proc04sub12") {
        headTag1 = "proheading3";
    } else if (diagnosisdiv === "t1proc04sub21") {
        headTag1 = "proheading3";
    } else if (diagnosisdiv === "t1proc04sub22") {
        headTag1 = "proheading3";
    } else if (diagnosisdiv === "t1proc04sub31") {
        headTag1 = "proheading3";
    }
    //  t1proc04sub31 start
    else if (diagnosisdiv === "t1proc04sub31") {
        headTag1 = "proheading3";
    } else if (diagnosisdiv === "t1proc04sub32") {
        headTag1 = "proheading3";
    } else if (diagnosisdiv === "t1proc04sub33") {
        headTag1 = "proheading3";
    }
    // t1proc04sub41

    else if (diagnosisdiv === "t1proc04sub41") {
        headTag1 = "proheading3";
    } else if (diagnosisdiv === "t1proc04sub42") {
        headTag1 = "proheading3";
    }

    //t1proc04sub51
    else if (diagnosisdiv === "t1proc04sub51") {
        headTag1 = "proheading3";
    } else if (diagnosisdiv === "t1proc04sub52") {
        headTag1 = "proheading3";
    }

    // t1proc04sub61 start

    else if (diagnosisdiv === "t1proc04sub61") {
        headTag1 = "proheading3";
    } else if (diagnosisdiv === "t1proc04sub62") {
        headTag1 = "proheading3";
    }
    //  t1proc04sub71    

    else if (diagnosisdiv === "t1proc04sub71") {
        headTag1 = "proheading3";
    } else if (diagnosisdiv === "t1proc04sub72") {
        headTag1 = "proheading3";
    }
    // t1proc04sub81
    else if (diagnosisdiv === "t1proc04sub81") {
        headTag1 = "proheading3";
    } else if (diagnosisdiv === "t1proc04sub82") {
        headTag1 = "proheading3";
    }
    // headtag proheading5 starts   t1proc05sub21                                                                      

    else if (diagnosisdiv === "t1proc05sub11") {
        headTag1 = "proheading5";
    } else if (diagnosisdiv === "t1proc05sub12") {
        headTag1 = "proheading5";
    } else if (diagnosisdiv === "t1proc05sub21") {
        headTag1 = "proheading5";
    } else if (diagnosisdiv === "t1proc05sub22") {
        headTag1 = "proheading5";
    } else if (diagnosisdiv === "t1proc05sub23") {
        headTag1 = "proheading5";
    } else if (diagnosisdiv === "t1proc05sub24") {
        headTag1 = "proheading5";
    } else if (diagnosisdiv === "t1proc05sub25") {
        headTag1 = "proheading5";
    } else if (diagnosisdiv === "t1proc05sub26") {
        headTag1 = "proheading5";
    } else if (diagnosisdiv === "t1proc05sub27") {
        headTag1 = "proheading5";
    } else if (diagnosisdiv === "t1proc05sub28") {
        headTag1 = "proheading5";
    } 
    //proheading6 starts here     t1proc06sub11    till 19                                                                  

    else if (diagnosisdiv === "t1proc06sub11") {
        headTag1 = "proheading6";
    } else if (diagnosisdiv === "t1proc06sub12") {
        headTag1 = "proheading6";
    } else if (diagnosisdiv === "t1proc06sub13") {
        headTag1 = "proheading6";
    } else if (diagnosisdiv === "t1proc06sub14") {
        headTag1 = "proheading6";
    } else if (diagnosisdiv === "t1proc06sub15") {
        headTag1 = "proheading6";
    } else if (diagnosisdiv === "t1proc06sub16") {
        headTag1 = "proheading6";
    } else if (diagnosisdiv === "t1proc06sub17") {
        headTag1 = "proheading6";
    } else if (diagnosisdiv === "t1proc06sub18") {
        headTag1 = "proheading6";
    } else if (diagnosisdiv === "t1proc06sub19") {
        headTag1 = "proheading6";
    }
    // t1proc06sub110 starts here
    else if (diagnosisdiv === "t1proc06sub110") {
        headTag1 = "proheading6";
    } else if (diagnosisdiv === "t1proc06sub111") {
        headTag1 = "proheading6";
    } else if (diagnosisdiv === "t1proc06sub112") {
        headTag1 = "proheading6";
    }
    // proheading20 starts here..
    else if (diagnosisdiv === "t1proc20sub11") {
        headTag1 = "proheading20";
    } else if (diagnosisdiv === "t1proc20sub12") {
        headTag1 = "proheading20";
    } else if (diagnosisdiv === "t1proc20sub13") {
        headTag1 = "proheading20";
    } else if (diagnosisdiv === "t1proc20sub14") {
        headTag1 = "proheading20";
    } else if (diagnosisdiv === "t1proc20sub15") {
        headTag1 = "proheading20";
    } else if (diagnosisdiv === "t1proc20sub16") {
        headTag1 = "proheading20";
    } else if (diagnosisdiv === "t1proc20sub17") {
        headTag1 = "proheading20";
    } else if (diagnosisdiv === "t1proc20sub18") {
        headTag1 = "proheading20";
    } else if (diagnosisdiv === "t1proc20sub19") {
        headTag1 = "proheading20";
    }
    // t1proc20sub110
    else if (diagnosisdiv === "t1proc20sub110") {
        headTag1 = "proheading20";
    } else if (diagnosisdiv === "t1proc20sub111") {
        headTag1 = "proheading20";
    } else if (diagnosisdiv === "t1proc20sub112") {
        headTag1 = "proheading20";
    } else if (diagnosisdiv === "t1proc20sub112") {
        headTag1 = "proheading20";
    } else if (diagnosisdiv === "t1proc20sub113") {
        headTag1 = "proheading20";
    } else if (diagnosisdiv === "t1proc20sub114") {
        headTag1 = "proheading20";
    } else if (diagnosisdiv === "t1proc20sub115") {
        headTag1 = "proheading20";
    } else if (diagnosisdiv === "t1proc20sub116") {
        headTag1 = "proheading20";
    } else if (diagnosisdiv === "t1proc20sub117") {
        headTag1 = "proheading20";
    } else if (diagnosisdiv === "t1proc20sub118") {
        headTag1 = "proheading20";
    } else if (diagnosisdiv === "t1proc20sub119") {
        headTag1 = "proheading20";
    } else if (diagnosisdiv === "t1proc20sub120") {
        headTag1 = "proheading20";
    } else if (diagnosisdiv === "t1proc20sub121") {
        headTag1 = "proheading20";
    } else if (diagnosisdiv === "t1proc20sub122") {
        headTag1 = "proheading20";
    } else if (diagnosisdiv === "t1proc20sub123") {
        headTag1 = "proheading20";
    } else if (diagnosisdiv === "t1proc20sub124") {
        headTag1 = "proheading20";
    } else if (diagnosisdiv === "t1proc20sub125") {
        headTag1 = "proheading20";
    } else if (diagnosisdiv === "t1proc20sub126") {
        headTag1 = "proheading20";
    } else if (diagnosisdiv === "t1proc20sub127") {
        headTag1 = "proheading20";
    } else if (diagnosisdiv === "t1proc20sub128") {
        headTag1 = "proheading20";
    }
    // proheading7 starts here

    else if (diagnosisdiv === "t1proc07sub11") {
        headTag1 = "proheading7";
    } else if (diagnosisdiv === "t1proc07sub12") {
        headTag1 = "proheading7";
    } else if (diagnosisdiv === "t1proc07sub13") {
        headTag1 = "proheading7";
    } else if (diagnosisdiv === "t1proc07sub14") {
        headTag1 = "proheading7";
    } else if (diagnosisdiv === "t1proc07sub15") {
        headTag1 = "proheading7";
    } else if (diagnosisdiv === "t1proc07sub16") {
        headTag1 = "proheading7";
    } else if (diagnosisdiv === "t1proc07sub17") {
        headTag1 = "proheading7";
    } else if (diagnosisdiv === "t1proc07sub18") {
        headTag1 = "proheading7";
    } else if (diagnosisdiv === "t1proc07sub19") {
        headTag1 = "proheading7";
    } else if (diagnosisdiv === "t1proc07sub110") {
        headTag1 = "proheading7";
    } else if (diagnosisdiv === "t1proc07sub111") {
        headTag1 = "proheading7";
    } else if (diagnosisdiv === "t1proc07sub112") {
        headTag1 = "proheading7";
    } else if (diagnosisdiv === "t1proc07sub21") {
        headTag1 = "proheading7";
    } else if (diagnosisdiv === "t1proc07sub22") {
        headTag1 = "proheading7";
    } else if (diagnosisdiv === "t1proc07sub23") {
        headTag1 = "proheading7";
    } else if (diagnosisdiv === "t1proc07sub24") {
        headTag1 = "proheading7";
    } else if (diagnosisdiv === "t1proc07sub25") {
        headTag1 = "proheading7";
    } else if (diagnosisdiv === "t1proc07sub26") {
        headTag1 = "proheading7";
    } else if (diagnosisdiv === "t1proc07sub27") {
        headTag1 = "proheading7";
    } else if (diagnosisdiv === "t1proc07sub28") {
        headTag1 = "proheading7";
    }
    //       proheading8 starts here                                                                 
    else if (diagnosisdiv === "t1proc08sub11") {
        headTag1 = "proheading8";
    } else if (diagnosisdiv === "t1proc08sub12") {
        headTag1 = "proheading8";
    } else if (diagnosisdiv === "t1proc08sub13") {
        headTag1 = "proheading8";
    } else if (diagnosisdiv === "t1proc08sub14") {
        headTag1 = "proheading8";
    }
    // t1proc08sub14  
    else if (diagnosisdiv === "t1proc08sub21") {
        headTag1 = "proheading8";
    } else if (diagnosisdiv === "t1proc08sub22") {
        headTag1 = "proheading8";
    } else if (diagnosisdiv === "t1proc08sub23") {
        headTag1 = "proheading8";
    } else if (diagnosisdiv === "t1proc08sub24") {
        headTag1 = "proheading8";
    } else if (diagnosisdiv === "t1proc08sub25") {
        headTag1 = "proheading8";
    } else if (diagnosisdiv === "t1proc08sub26") {
        headTag1 = "proheading8";
    } else if (diagnosisdiv === "t1proc08sub27") {
        headTag1 = "proheading8";
    } else if (diagnosisdiv === "t1proc08sub28") {
        headTag1 = "proheading8";
    } else if (diagnosisdiv === "t1proc08sub29") {
        headTag1 = "proheading8";
    } else if (diagnosisdiv === "t1proc08sub210") {
        headTag1 = "proheading8";
    } else if (diagnosisdiv === "t1proc08sub211") {
        headTag1 = "proheading8";
    } else if (diagnosisdiv === "t1proc08sub212") {
        headTag1 = "proheading8";
    } else if (diagnosisdiv === "t1proc08sub14") {
        headTag1 = "proheading8";
    } else if (diagnosisdiv === "t1proc08sub14") {
        headTag1 = "proheading8";
    }

    //proheading21 starts here
    else if (diagnosisdiv === "t1proc21sub11") {
        headTag1 = "proheading21";
    } else if (diagnosisdiv === "t1proc21sub12") {
        headTag1 = "proheading21";
    } else if (diagnosisdiv === "t1proc21sub13") {
        headTag1 = "proheading21";
    } else if (diagnosisdiv === "t1proc21sub14") {
        headTag1 = "proheading21";
    } else if (diagnosisdiv === "t1proc21sub15") {
        headTag1 = "proheading21";
    } else if (diagnosisdiv === "t1proc21sub16") {
        headTag1 = "proheading21";
    } else if (diagnosisdiv === "t1proc21sub17") {
        headTag1 = "proheading21";
    } else if (diagnosisdiv === "t1proc21sub18") {
        headTag1 = "proheading21";
    } else if (diagnosisdiv === "t1proc21sub110") {
        headTag1 = "proheading21";
    } else if (diagnosisdiv === "t1proc21sub111") {
        headTag1 = "proheading21";
    } else if (diagnosisdiv === "t1proc21sub112") {
        headTag1 = "proheading21";
    } else if (diagnosisdiv === "t1proc21sub113") {
        headTag1 = "proheading21";
    } else if (diagnosisdiv === "t1proc21sub114") {
        headTag1 = "proheading21";
    } else if (diagnosisdiv === "t1proc21sub115") {
        headTag1 = "proheading21";
    } else if (diagnosisdiv === "t1proc21sub116") {
        headTag1 = "proheading21";
    }
    //proheading89

    else if (diagnosisdiv === "t1proc09sub11") {
        headTag1 = "proheading89";
    } else if (diagnosisdiv === "t1proc09sub12") {
        headTag1 = "proheading89";
    } else if (diagnosisdiv === "t1proc09sub13") {
        headTag1 = "proheading89";
    } else if (diagnosisdiv === "t1proc09sub14") {
        headTag1 = "proheading89";
    } else if (diagnosisdiv === "t1proc09sub15") {
        headTag1 = "proheading89";
    } else if (diagnosisdiv === "t1proc09sub16") {
        headTag1 = "proheading89";
    } else if (diagnosisdiv === "t1proc09sub17") {
        headTag1 = "proheading89";
    } else if (diagnosisdiv === "t1proc09sub18") {
        headTag1 = "proheading89";
    }
    //=============== proheading10 starts here ==========================================
    else if (diagnosisdiv === "t1proc10sub11") {
        headTag1 = "proheading10";
    } else if (diagnosisdiv === "t1proc10sub12") {
        headTag1 = "proheading10";
    } else if (diagnosisdiv === "t1proc10sub13") {
        headTag1 = "proheading10";
    } else if (diagnosisdiv === "t1proc10sub14") {
        headTag1 = "proheading10";
    } else if (diagnosisdiv === "t1proc10sub21") {
        headTag1 = "proheading10";
    } else if (diagnosisdiv === "t1proc10sub22") {
        headTag1 = "proheading10";
    } else if (diagnosisdiv === "t1proc10sub23") {
        headTag1 = "proheading10";
    } else if (diagnosisdiv === "t1proc10sub24") {
        headTag1 = "proheading10";
    } else if (diagnosisdiv === "t1proc10sub31") {
        headTag1 = "proheading10";
    } else if (diagnosisdiv === "t1proc10sub32") {
        headTag1 = "proheading10";
    } else if (diagnosisdiv === "t1proc10sub33") {
        headTag1 = "proheading10";
    } else if (diagnosisdiv === "t1proc10sub34") {
        headTag1 = "proheading10";
    } else if (diagnosisdiv === "t1proc10sub35") {
        headTag1 = "proheading10";
    } else if (diagnosisdiv === "t1proc10sub36") {
        headTag1 = "proheading10";
    }
    // proheading11 starts here
    else if (diagnosisdiv === "t1proc11sub11") {
        headTag1 = "proheading11";
    } else if (diagnosisdiv === "t1proc11sub12") {
        headTag1 = "proheading11";
    } else if (diagnosisdiv === "t1proc11sub13") {
        headTag1 = "proheading11";
    } else if (diagnosisdiv === "t1proc11sub14") {
        headTag1 = "proheading11";
    } else if (diagnosisdiv === "t1proc11sub15") {
        headTag1 = "proheading11";
    } else if (diagnosisdiv === "t1proc11sub16") {
        headTag1 = "proheading11";
    } else if (diagnosisdiv === "t1proc11sub17") {
        headTag1 = "proheading11";
    } else if (diagnosisdiv === "t1proc11sub18") {
        headTag1 = "proheading11";
    } else if (diagnosisdiv === "t1proc11sub21") {
        headTag1 = "proheading11";
    } else if (diagnosisdiv === "t1proc11sub22") {
        headTag1 = "proheading11";
    } else if (diagnosisdiv === "t1proc11sub23") {
        headTag1 = "proheading11";
    } else if (diagnosisdiv === "t1proc11sub24") {
        headTag1 = "proheading11";
    } else if (diagnosisdiv === "t1proc11sub25") {
        headTag1 = "proheading11";
    } else if (diagnosisdiv === "t1proc11sub26") {
        headTag1 = "proheading11";
    } else if (diagnosisdiv === "t1proc11sub27") {
        headTag1 = "proheading11";
    } else if (diagnosisdiv === "t1proc11sub28") {
        headTag1 = "proheading11";
    }
    // proheading22 starts here
    else if (diagnosisdiv === "t1proc22sub11") {
        headTag1 = "proheading22";
    } else if (diagnosisdiv === "t1proc22sub12") {
        headTag1 = "proheading11";
    } else if (diagnosisdiv === "t1proc22sub13") {
        headTag1 = "proheading11";
    } else if (diagnosisdiv === "t1proc22sub14") {
        headTag1 = "proheading11";
    } else if (diagnosisdiv === "t1proc22sub15") {
        headTag1 = "proheading11";
    } else if (diagnosisdiv === "t1proc22sub16") {
        headTag1 = "proheading11";
    } else if (diagnosisdiv === "t1proc22sub17") {
        headTag1 = "proheading11";
    } else if (diagnosisdiv === "t1proc22sub18") {
        headTag1 = "proheading11";
    } else if (diagnosisdiv === "t1proc22sub19") {
        headTag1 = "proheading11";
    } else if (diagnosisdiv === "t1proc22sub110") {
        headTag1 = "proheading11";
    } else if (diagnosisdiv === "t1proc22sub111") {
        headTag1 = "proheading11";
    } else if (diagnosisdiv === "t1proc22sub112") {
        headTag1 = "proheading11";
    } else if (diagnosisdiv === "t1proc22sub113") {
        headTag1 = "proheading11";
    } else if (diagnosisdiv === "t1proc22sub114") {
        headTag1 = "proheading11";
    } else if (diagnosisdiv === "t1proc22sub115") {
        headTag1 = "proheading11";
    } else if (diagnosisdiv === "t1proc22sub116") {
        headTag1 = "proheading11";
    } else if (diagnosisdiv === "t1proc22sub21") {
        headTag1 = "proheading11";
    } else if (diagnosisdiv === "t1proc22sub22") {
        headTag1 = "proheading11";
    } else if (diagnosisdiv === "t1proc22sub23") {
        headTag1 = "proheading11";
    } else if (diagnosisdiv === "t1proc22sub24") {
        headTag1 = "proheading11";
    } else if (diagnosisdiv === "t1proc22sub25") {
        headTag1 = "proheading11";
    } else if (diagnosisdiv === "t1proc22sub26") {
        headTag1 = "proheading11";
    } else if (diagnosisdiv === "t1proc22sub27") {
        headTag1 = "proheading11";
    } else if (diagnosisdiv === "t1proc22sub28") {
        headTag1 = "proheading11";
    } else if (diagnosisdiv === "t1proc22sub29") {
        headTag1 = "proheading11";
    }
    //=====================================================
    else if (diagnosisdiv === "t1proc22sub210") {
        headTag1 = "proheading11";
    } else if (diagnosisdiv === "t1proc22sub211") {
        headTag1 = "proheading11";
    } else if (diagnosisdiv === "t1proc22sub212") {
        headTag1 = "proheading11";
    } else if (diagnosisdiv === "t1proc22sub213") {
        headTag1 = "proheading11";
    } else if (diagnosisdiv === "t1proc22sub214") {
        headTag1 = "proheading11";
    } else if (diagnosisdiv === "t1proc22sub215") {
        headTag1 = "proheading11";
    } else if (diagnosisdiv === "t1proc22sub216") {
        headTag1 = "proheading11";
    }
    //=========================================================================================================================================                                                                
    else if (diagnosisdiv === "t1proc22sub31") {
        headTag1 = "proheading11";
    } else if (diagnosisdiv === "t1proc22sub32") {
        headTag1 = "proheading11";
    } else if (diagnosisdiv === "t1proc22sub33") {
        headTag1 = "proheading11";
    } else if (diagnosisdiv === "t1proc22sub34") {
        headTag1 = "proheading11";
    } else if (diagnosisdiv === "t1proc22sub35") {
        headTag1 = "proheading11";
    } else if (diagnosisdiv === "t1proc22sub36") {
        headTag1 = "proheading11";
    } else if (diagnosisdiv === "t1proc22sub37") {
        headTag1 = "proheading11";
    } else if (diagnosisdiv === "t1proc22sub38") {
        headTag1 = "proheading11";
    } else if (diagnosisdiv === "t1proc22sub39") {
        headTag1 = "proheading11";
    } else if (diagnosisdiv === "t1proc22sub310") {
        headTag1 = "proheading11";
    } else if (diagnosisdiv === "t1proc22sub311") {
        headTag1 = "proheading11";
    } else if (diagnosisdiv === "t1proc22sub312") {
        headTag1 = "proheading11";
    }
    //============== proheading12 starts here ===============
    else if (diagnosisdiv === "t1proc12sub11") {
        headTag1 = "proheading12";
    } else if (diagnosisdiv === "t1proc12sub12") {
        headTag1 = "proheading12";
    } else if (diagnosisdiv === "t1proc12sub13") {
        headTag1 = "proheading12";
    } else if (diagnosisdiv === "t1proc12sub14") {
        headTag1 = "proheading12";
    } else if (diagnosisdiv === "t1proc12sub15") {
        headTag1 = "proheading12";
    } else if (diagnosisdiv === "t1proc12sub16") {
        headTag1 = "proheading12";
    } else if (diagnosisdiv === "t1proc12sub17") {
        headTag1 = "proheading12";
    } else if (diagnosisdiv === "t1proc12sub18") {
        headTag1 = "proheading12";
    } else if (diagnosisdiv === "t1proc12sub19") {
        headTag1 = "proheading12";
    } else if (diagnosisdiv === "t1proc12sub110") {
        headTag1 = "proheading12";
    } else if (diagnosisdiv === "t1proc12sub111") {
        headTag1 = "proheading12";
    } else if (diagnosisdiv === "t1proc12sub112") {
        headTag1 = "proheading12";
    } else if (diagnosisdiv === "t1proc12sub113") {
        headTag1 = "proheading12";
    } else if (diagnosisdiv === "t1proc12sub114") {
        headTag1 = "proheading12";
    } else if (diagnosisdiv === "t1proc12sub115") {
        headTag1 = "proheading12";
    } else if (diagnosisdiv === "t1proc12sub116") {
        headTag1 = "proheading12";
    } else if (diagnosisdiv === "t1proc12sub117") {
        headTag1 = "proheading12";
    } else if (diagnosisdiv === "t1proc12sub123") {
        headTag1 = "proheading12";
    } else if (diagnosisdiv === "t1proc12sub124") {
        headTag1 = "proheading12";
    } else if (diagnosisdiv === "t1proc12sub125") {
        headTag1 = "proheading12";
    } else if (diagnosisdiv === "t1proc12sub126") {
        headTag1 = "proheading12";
    } else if (diagnosisdiv === "t1proc12sub127") {
        headTag1 = "proheading12";
    } else if (diagnosisdiv === "t1proc12sub128") {
        headTag1 = "proheading12";
    } else if (diagnosisdiv === "t1proc12sub129") {
        headTag1 = "proheading12";
    } else if (diagnosisdiv === "t1proc12sub130") {
        headTag1 = "proheading12";
    } else if (diagnosisdiv === "t1proc12sub131") {
        headTag1 = "proheading12";
    } else if (diagnosisdiv === "t1proc12sub132") {
        headTag1 = "proheading12";
    } else if (diagnosisdiv === "t1proc12sub133") {
        headTag1 = "proheading12";
    } else if (diagnosisdiv === "t1proc12sub134") {
        headTag1 = "proheading12";
    } else if (diagnosisdiv === "t1proc12sub135") {
        headTag1 = "proheading12";
    } else if (diagnosisdiv === "t1proc12sub136") {
        headTag1 = "proheading12";
    } else if (diagnosisdiv === "t1proc12sub137") {
        headTag1 = "proheading12";
    } else if (diagnosisdiv === "t1proc12sub138") {
        headTag1 = "proheading12";
    } else if (diagnosisdiv === "t1proc12sub139") {
        headTag1 = "proheading12";
    } else if (diagnosisdiv === "t1proc12sub140") {
        headTag1 = "proheading12";
    } else if (diagnosisdiv === "t1proc12sub21") {
        headTag1 = "proheading12";
    } else if (diagnosisdiv === "t1proc12sub22") {
        headTag1 = "proheading12";
    } else if (diagnosisdiv === "t1proc12sub23") {
        headTag1 = "proheading12";
    } else if (diagnosisdiv === "t1proc12sub24") {
        headTag1 = "proheading12";
    } else if (diagnosisdiv === "t1proc12sub31") {
        headTag1 = "proheading12";
    } else if (diagnosisdiv === "t1proc12sub32") {
        headTag1 = "proheading12";
    } else if (diagnosisdiv === "t1proc12sub35") {
        headTag1 = "proheading12";
    } else if (diagnosisdiv === "t1proc12sub36") {
        headTag1 = "proheading12";
    } else if (diagnosisdiv === "t1proc12sub39") {
        headTag1 = "proheading12";
    } else if (diagnosisdiv === "t1proc12sub310") {
        headTag1 = "proheading12";
    }
    // ============== proheading13 starts here ==========
    else if (diagnosisdiv === "t1proc13sub11") {
        headTag1 = "proheading13";
    } else if (diagnosisdiv === "t1proc13sub12") {
        headTag1 = "proheading13";
    } else if (diagnosisdiv === "t1proc13sub13") {
        headTag1 = "proheading13";
    } else if (diagnosisdiv === "t1proc13sub14") {
        headTag1 = "proheading13";
    } else if (diagnosisdiv === "t1proc13sub15") {
        headTag1 = "proheading13";
    } else if (diagnosisdiv === "t1proc13sub16") {
        headTag1 = "proheading13";
    } else if (diagnosisdiv === "t1proc13sub17") {
        headTag1 = "proheading13";
    } else if (diagnosisdiv === "t1proc13sub18") {
        headTag1 = "proheading13";
    } else if (diagnosisdiv === "t1proc13sub19") {
        headTag1 = "proheading13";
    } else if (diagnosisdiv === "t1proc13sub110") {
        headTag1 = "proheading13";
    } else if (diagnosisdiv === "t1proc13sub111") {
        headTag1 = "proheading13";
    } else if (diagnosisdiv === "t1proc13sub112") {
        headTag1 = "proheading13";
    } else if (diagnosisdiv === "t1proc13sub21") {
        headTag1 = "proheading13";
    } else if (diagnosisdiv === "t1proc13sub22") {
        headTag1 = "proheading13";
    } else if (diagnosisdiv === "t1proc13sub23") {
        headTag1 = "proheading13";
    } else if (diagnosisdiv === "t1proc13sub24") {
        headTag1 = "proheading13";
    } else if (diagnosisdiv === "t1proc13sub25") {
        headTag1 = "proheading13";
    } else if (diagnosisdiv === "t1proc13sub26") {
        headTag1 = "proheading13";
    } else if (diagnosisdiv === "t1proc13sub27") {
        headTag1 = "proheading13";
    } else if (diagnosisdiv === "t1proc13sub28") {
        headTag1 = "proheading13";
    } else if (diagnosisdiv === "t1proc13sub31") {
        headTag1 = "proheading13";
    } else if (diagnosisdiv === "t1proc13sub32") {
        headTag1 = "proheading13";
    } else if (diagnosisdiv === "t1proc13sub33") {
        headTag1 = "proheading13";
    } else if (diagnosisdiv === "t1proc13sub34") {
        headTag1 = "proheading13";
    }
    //==========proheading14 starts here ====================

    else if (diagnosisdiv === "t1proc14sub11") {
        headTag1 = "proheading14";
    } else if (diagnosisdiv === "t1proc14sub12") {
        headTag1 = "proheading14";
    } else if (diagnosisdiv === "t1proc14sub13") {
        headTag1 = "proheading14";
    } else if (diagnosisdiv === "t1proc14sub14") {
        headTag1 = "proheading14";
    } else if (diagnosisdiv === "t1proc14sub15") {
        headTag1 = "proheading14";
    } else if (diagnosisdiv === "t1proc14sub16") {
        headTag1 = "proheading14";
    } else if (diagnosisdiv === "t1proc14sub17") {
        headTag1 = "proheading14";
    } else if (diagnosisdiv === "t1proc14sub18") {
        headTag1 = "proheading14";
    } else if (diagnosisdiv === "t1proc14sub19") {
        headTag1 = "proheading14";
    } else if (diagnosisdiv === "t1proc14sub110") {
        headTag1 = "proheading14";
    } else if (diagnosisdiv === "t1proc14sub111") {
        headTag1 = "proheading14";
    } else if (diagnosisdiv === "t1proc14sub112") {
        headTag1 = "proheading14";
    } else if (diagnosisdiv === "t1proc14sub113") {
        headTag1 = "proheading14";
    } else if (diagnosisdiv === "t1proc14sub114") {
        headTag1 = "proheading14";
    } else if (diagnosisdiv === "t1proc14sub115") {
        headTag1 = "proheading14";
    } else if (diagnosisdiv === "t1proc14sub116") {
        headTag1 = "proheading14";
    } else if (diagnosisdiv === "t1proc14sub117") {
        headTag1 = "proheading14";
    } else if (diagnosisdiv === "t1proc14sub118") {
        headTag1 = "proheading14";
    } else if (diagnosisdiv === "t1proc14sub119") {
        headTag1 = "proheading14";
    } else if (diagnosisdiv === "t1proc14sub120") {
        headTag1 = "proheading14";
    } else if (diagnosisdiv === "t1proc14sub21") {
        headTag1 = "proheading14";
    } else if (diagnosisdiv === "t1proc14sub22") {
        headTag1 = "proheading14";
    } else if (diagnosisdiv === "t1proc14sub23") {
        headTag1 = "proheading14";
    } else if (diagnosisdiv === "t1proc14sub24") {
        headTag1 = "proheading14";
    } else if (diagnosisdiv === "t1proc14sub25") {
        headTag1 = "proheading14";
    } else if (diagnosisdiv === "t1proc14sub26") {
        headTag1 = "proheading14";
    } else if (diagnosisdiv === "t1proc14sub27") {
        headTag1 = "proheading14";
    } else if (diagnosisdiv === "t1proc14sub28") {
        headTag1 = "proheading14";
    } else if (diagnosisdiv === "t1proc14sub31") {
        headTag1 = "proheading14";
    } else if (diagnosisdiv === "t1proc14sub32") {
        headTag1 = "proheading14";
    } else if (diagnosisdiv === "t1proc14sub33") {
        headTag1 = "proheading14";
    } else if (diagnosisdiv === "t1proc14sub34") {
        headTag1 = "proheading14";
    } else if (diagnosisdiv === "t1proc14sub35") {
        headTag1 = "proheading14";
    } else if (diagnosisdiv === "t1proc14sub36") {
        headTag1 = "proheading14";
    } else if (diagnosisdiv === "t1proc14sub37") {
        headTag1 = "proheading14";
    } else if (diagnosisdiv === "t1proc14sub38") {
        headTag1 = "proheading14";
    } else if (diagnosisdiv === "t1proc14sub41") {
        headTag1 = "proheading14";
    } else if (diagnosisdiv === "t1proc14sub42") {
        headTag1 = "proheading14";
    } else if (diagnosisdiv === "t1proc14sub43") {
        headTag1 = "proheading14";
    } else if (diagnosisdiv === "t1proc14sub44") {
        headTag1 = "proheading14";
    } else if (diagnosisdiv === "t1proc14sub51") {
        headTag1 = "proheading14";
    } else if (diagnosisdiv === "t1proc14sub56") {
        headTag1 = "proheading14";
    } else if (diagnosisdiv === "t1proc14sub57") {
        headTag1 = "proheading14";
    } else if (diagnosisdiv === "t1proc14sub58") {
        headTag1 = "proheading14";
    }
    //================ proheading19 starts here ========================================
    else if (diagnosisdiv === "t1proc19sub11") {
        headTag1 = "proheading19";
    } else if (diagnosisdiv === "t1proc19sub12") {
        headTag1 = "proheading19";
    } else if (diagnosisdiv === "t1proc19sub13") {
        headTag1 = "proheading19";
    } else if (diagnosisdiv === "t1proc19sub14") {
        headTag1 = "proheading19";
    } else if (diagnosisdiv === "t1proc19sub15") {
        headTag1 = "proheading19";
    }
    // =============proheading16 tarts here
    else if (diagnosisdiv === "t1proc16sub11") {
        headTag1 = "proheading16";
    } else if (diagnosisdiv === "t1proc16sub12") {
        headTag1 = "proheading16";
    } else if (diagnosisdiv === "t1proc16sub13") {
        headTag1 = "proheading16";
    } else if (diagnosisdiv === "t1proc16sub14") {
        headTag1 = "proheading16";
    } else if (diagnosisdiv === "t1proc16sub15") {
        headTag1 = "proheading16";
    } else if (diagnosisdiv === "t1proc16sub16") {
        headTag1 = "proheading16";
    } else if (diagnosisdiv === "t1proc16sub17") {
        headTag1 = "proheading16";
    } else if (diagnosisdiv === "t1proc16sub18") {
        headTag1 = "proheading16";
    } else if (diagnosisdiv === "t1proc16sub21") {
        headTag1 = "proheading16";
    } else if (diagnosisdiv === "t1proc16sub22") {
        headTag1 = "proheading16";
    } else if (diagnosisdiv === "t1proc16sub23") {
        headTag1 = "proheading16";
    } else if (diagnosisdiv === "t1proc16sub24") {
        headTag1 = "proheading16";
    } else if (diagnosisdiv === "t1proc16sub25") {
        headTag1 = "proheading16";
    } else if (diagnosisdiv === "t1proc16sub31") {
        headTag1 = "proheading16";
    } else if (diagnosisdiv === "t1proc16sub32") {
        headTag1 = "proheading16";
    } else if (diagnosisdiv === "t1proc16sub41") {
        headTag1 = "proheading16";
    } else if (diagnosisdiv === "t1proc16sub42") {
        headTag1 = "proheading16";
    }
    // ===================proheading18 starts here ==========
    else if (diagnosisdiv === "t1proc18sub11") {
        headTag1 = "proheading18";
    } else if (diagnosisdiv === "t1proc18sub12") {
        headTag1 = "proheading18";
    } else if (diagnosisdiv === "t1proc18sub13") {
        headTag1 = "proheading18";
    } else if (diagnosisdiv === "t1proc18sub14") {
        headTag1 = "proheading18";
    } else if (diagnosisdiv === "t1proc18sub21") {
        headTag1 = "proheading18";
    } else if (diagnosisdiv === "t1proc18sub22") {
        headTag1 = "proheading18";
    }
    // proheading22 starts here
    else if (diagnosisdiv === "t1proc22sub11") {
        headTag1 = "proheading22";
    } else if (diagnosisdiv === "t1proc22sub12") {
        headTag1 = "proheading22";
    } else if (diagnosisdiv === "t1proc22sub13") {
        headTag1 = "proheading22";
    } else if (diagnosisdiv === "t1proc22sub14") {
        headTag1 = "proheading22";
    } else if (diagnosisdiv === "t1proc22sub15") {
        headTag1 = "proheading22";
    } else if (diagnosisdiv === "t1proc22sub16") {
        headTag1 = "proheading22";
    } else if (diagnosisdiv === "t1proc22sub17") {
        headTag1 = "proheading22";
    } else if (diagnosisdiv === "t1proc22sub18") {
        headTag1 = "proheading22";
    } else if (diagnosisdiv === "t1proc22sub19") {
        headTag1 = "proheading22";
    } else if (diagnosisdiv === "t1proc22sub110") {
        headTag1 = "proheading22";
    } else if (diagnosisdiv === "t1proc22sub111") {
        headTag1 = "proheading22";
    } else if (diagnosisdiv === "t1proc22sub112") {
        headTag1 = "proheading22";
    } else if (diagnosisdiv === "t1proc22sub113") {
        headTag1 = "proheading22";
    } else if (diagnosisdiv === "t1proc22sub114") {
        headTag1 = "proheading22";
    } else if (diagnosisdiv === "t1proc22sub115") {
        headTag1 = "proheading22";
    } else if (diagnosisdiv === "t1proc22sub116") {
        headTag1 = "proheading22";
    } else if (diagnosisdiv === "t1proc22sub117") {
        headTag1 = "proheading22";
    } else if (diagnosisdiv === "t1proc22sub118") {
        headTag1 = "proheading22";
    } else if (diagnosisdiv === "t1proc22sub21") {
        headTag1 = "proheading22";
    } else if (diagnosisdiv === "t1proc22sub22") {
        headTag1 = "proheading22";
    } else if (diagnosisdiv === "t1proc22sub23") {
        headTag1 = "proheading22";
    } else if (diagnosisdiv === "t1proc22sub24") {
        headTag1 = "proheading22";
    } else if (diagnosisdiv === "t1proc22sub25") {
        headTag1 = "proheading22";
    } else if (diagnosisdiv === "t1proc22sub26") {
        headTag1 = "proheading22";
    } else if (diagnosisdiv === "t1proc22sub27") {
        headTag1 = "proheading22";
    } else if (diagnosisdiv === "t1proc22sub28") {
        headTag1 = "proheading22";
    } else if (diagnosisdiv === "t1proc22sub29") {
        headTag1 = "proheading22";
    } else if (diagnosisdiv === "t1proc22sub210") {
        headTag1 = "proheading22";
    } else if (diagnosisdiv === "t1proc22sub211") {
        headTag1 = "proheading22";
    } else if (diagnosisdiv === "t1proc22sub212") {
        headTag1 = "proheading22";
    } else if (diagnosisdiv === "t1proc22sub213") {
        headTag1 = "proheading22";
    } else if (diagnosisdiv === "t1proc22sub214") {
        headTag1 = "proheading22";
    } else if (diagnosisdiv === "t1proc22sub215") {
        headTag1 = "proheading22";
    } else if (diagnosisdiv === "t1proc22sub216") {
        headTag1 = "proheading22";
    } else if (diagnosisdiv === "t1proc22sub31") {
        headTag1 = "proheading22";
    } else if (diagnosisdiv === "t1proc22sub32") {
        headTag1 = "proheading22";
    } else if (diagnosisdiv === "t1proc22sub33") {
        headTag1 = "proheading22";
    } else if (diagnosisdiv === "t1proc22sub34") {
        headTag1 = "proheading22";
    } else if (diagnosisdiv === "t1proc22sub35") {
        headTag1 = "proheading22";
    } else if (diagnosisdiv === "t1proc22sub36") {
        headTag1 = "proheading22";
    } else if (diagnosisdiv === "t1proc22sub37") {
        headTag1 = "proheading22";
    } else if (diagnosisdiv === "t1proc22sub38") {
        headTag1 = "proheading22";
    } else if (diagnosisdiv === "t1proc22sub39") {
        headTag1 = "proheading22";
    } else if (diagnosisdiv === "t1proc22sub310") {
        headTag1 = "proheading22";
    } else if (diagnosisdiv === "t1proc22sub311") {
        headTag1 = "proheading22";
    } else if (diagnosisdiv === "t1proc22sub312") {
        headTag1 = "proheading22";
    } else if (diagnosisdiv === "t1proc22sub38") {
        headTag1 = "proheading22";
    } else {
        return;
    }

    // if (headTag !== "") {
    // updateStatus(headTag, checkedcount);
    //  }

    if (headTag1 !== "") {
        //   alert(procedurediv);
        //   alert(checkedcount1);
        updateStatus(headTag1, checkedcount1);
    }
}

//procedure code scripts
$(function () {
    $('[data-toggle="popover"]').popover({
        html: true,
        title: 'Help'
//                title: 'Help<a class="close" href="#">&times;</a>',
    });
    $('[data-toggle="popover"]').click(function (e) {
        e.stopPropagation();
    });

    $(document).click(function (e) {
        if (($('.popover').has(e.target).length === 0) || $(e.target).is('.close')) {
            $('[data-toggle="popover"]').popover('hide');
        }
    });


    $('#popoverId').popover({
        html: true,
        title: 'Help<a class="close" href="#");">&times;</a>',
        content: 'At least 2 problems need to be selected from following 8 items. <br>(i) Sinus Problem.<br>(ii) Tissue Lesion/Cyst/Infection.<br>(iv) Bone Lesion/Bony Cyst.<br>(v) Injury/Traumatic/Accidental.<br>(vi) Zygomatic & Le-Fort Fracture/ Nasal.<br>(vii) Fracture.<br>(viii) Implant or Bone Graft failure'
                //    content: $('#popoverContent').html(),
    });
    $('#bonegrafts').popover({
        html: true,
        title: 'Help',
        content: 'If Maxilla/Mandible is selected, "Small/Large" is mandatory'
                //    content: $('#popoverContent').html(),
    });
    $('#implantfail').popover({
        html: true,
        title: 'Help',
        content: 'If Maxilla/Mandible is selected, "Hardware, Superficial, Deep" is mandatory'
                //    content: $('#popoverContent').html(),
    });
    $('#sutureId').popover({
        html: true,
        title: 'Help',
        content: 'Only one of the options could be selected'
    });

    $('#popoverId').click(function (e) {
        e.stopPropagation();
    });
    $('#sutureId').click(function (e) {
        e.stopPropagation();
    });
    $('#implantfail').click(function (e) {
        e.stopPropagation();
    });
    $('#bonegrafts').click(function (e) {
        e.stopPropagation();
    });
    $(document).click(function (e) {
        if (($('.popover').has(e.target).length === 0) || $(e.target).is('.close')) {
            $('#popoverId').popover('hide');
            $('#sutureId').popover('hide');
            $('#implantfail').popover('hide');
            $('#bonegrafts').popover('hide');
        }
    });
});
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
var flag = 0;
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
                if ($('#ddlpractice').val() === '') {
                    $('#ddlpractice').focus();
                    $('.form-1').addClass('was-validated');
                    msgbox("Invalid Practice", "eSuperbill Form", "error");
                    return false;
                }
                if ($('#ddlpatient').val() === '') {
                    $('#ddlpatient').focus();
                    $('.form-1').addClass('was-validated');
                    msgbox("Invalid Patient", "eSuperbill Form", "error");
                    return false;
                }
                if ($('#ddlprovider').val() === '') {
                    $('#ddlprovider').focus();
                    $('.form-1').addClass('was-validated');
                    msgbox("Invalid Provider", "eSuperbill Form", "error");
                    return false;
                }
                if (!$('#dateofservice').val()) {
                    $('#dateofservice').focus();
                    $('.form-1').addClass('was-validated');
                    msgbox("Invalid DOS", "eSuperbill Form", "error");
                    return false;
                }
                if (!$('#visit_reason').val()) {
                    $('#visit_reason').focus();
                    $('.form-1').addClass('was-validated');
                    msgbox("Invalid Visit Reason", "eSuperbill Form", "error");
                    return false;
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
                    flag = 0;
                    return false;
                } else
                {
                    flag = 1;
                    $('#t1proc04sub11err').html('');
                    $('#manodatoryerr1').html('');
                }
                if ($("#t1proc04sub21").prop('checked') === false && $("#t1proc04sub22").prop('checked') === false) {
                    // $('#t1proc71').focus();    
                    $('#t1proc04sub21err').html('Mandatory');
                    $('#manodatoryerr1').html('Mandatory');
                    //  $('.form-3').addClass('was-validated');
                    console.log('not checked');
                    flag = 0;
                    return false;
                } else
                {
                    flag = 1;
                    $('#t1proc04sub21err').html('');
                    $('#manodatoryerr1').html('');
                }
                if ($("#t1proc04sub31").prop('checked') === false && $("#t1proc04sub32").prop('checked') === false) {
                    // $('#t1proc71').focus();    
                    $('#t1proc04sub31err').html('Mandatory');
                    $('#manodatoryerr1').html('Mandatory');
                    //  $('.form-3').addClass('was-validated');
                    console.log('not checked');
                    flag = 0;
                    return false;
                } else
                {
                    flag = 1;
                    $('#t1proc04sub31err').html('');
                    $('#manodatoryerr1').html('');
                }
                if ($("#t1proc04sub41").prop('checked') === false && $("#t1proc04sub42").prop('checked') === false) {
                    // $('#t1proc71').focus();    
                    $('#t1proc04sub41err').html('Mandatory');
                    $('#manodatoryerr1').html('Mandatory');
                    //  $('.form-3').addClass('was-validated');
                    console.log('not checked');
                    flag = 0;
                    return false;
                } else
                {
                    flag = 1;
                    $('#t1proc04sub41err').html('');
                    $('#manodatoryerr1').html('');
                }
                if ($("#t1proc04sub51").prop('checked') === false && $("#t1proc04sub52").prop('checked') === false) {
                    // $('#t1proc71').focus();    
                    $('#t1proc04sub51err').html('Mandatory');
                    $('#manodatoryerr1').html('Mandatory');
                    //  $('.form-3').addClass('was-validated');
                    console.log('not checked');
                    flag = 0;
                    return false;
                } else
                {
                    flag = 1;
                    $('#t1proc04sub51err').html('');
                    $('#manodatoryerr1').html('');
                }
                if ($("#t1proc04sub61").prop('checked') === false && $("#t1proc04sub62").prop('checked') === false) {
                    // $('#t1proc71').focus();    
                    $('#t1proc04sub61err').html('Mandatory');
                    $('#manodatoryerr1').html('Mandatory');
                    //  $('.form-3').addClass('was-validated');
                    console.log('not checked');
                    flag = 0;
                    return false;
                } else
                {
                    flag = 1;
                    $('#t1proc04sub61err').html('');
                    $('#manodatoryerr1').html('');
                }
                if ($("#t1proc04sub71").prop('checked') === false && $("#t1proc04sub72").prop('checked') === false) {
                    // $('#t1proc71').focus();    
                    $('#t1proc04sub71err').html('Mandatory');
                    $('#manodatoryerr1').html('Mandatory');
                    //  $('.form-3').addClass('was-validated');
                    console.log('not checked');
                    flag = 0;
                    return false;
                } else
                {
                    flag = 1;
                    $('#t1proc04sub71err').html('');
                    $('#manodatoryerr1').html('');
                }
            }
            if (newIndex === 2) {
                var diagnoisiscount = 0;
                $('input[type=checkbox]').each(function () {
                    var diagnosisdiv = $(this).attr("name");
                    var headTag = "";
                    if (diagnosisdiv === "diagnoisis7") {
                        if (this.checked) {
                            diagnoisiscount++;
                        }
                    } else if (diagnosisdiv === "diagnoisis8") {
                        if (this.checked) {
                            diagnoisiscount++;
                        }
                    } else if (diagnosisdiv === "diagnoisis9") {
                        if (this.checked) {
                            diagnoisiscount++;
                        }
                    } else if (diagnosisdiv === "diagnoisis10") {
                        if (this.checked) {
                            diagnoisiscount++;
                        }
                    } else if (diagnosisdiv === "diagnoisis11") {
                        if (this.checked) {
                            diagnoisiscount++;
                        }
                    } else if (diagnosisdiv === "diagnoisis12") {
                        if (this.checked) {
                            diagnoisiscount++;
                        }
                    } else if (diagnosisdiv === "diagnoisis13") {
                        if (this.checked) {
                            diagnoisiscount++;
                        }
                    } else if (diagnosisdiv === "diagnoisis14") {
                        if (this.checked) {
                            diagnoisiscount++;
                        }
                    } else if (diagnosisdiv === "diagnoisis2") {
                        if (this.checked) {
                            diagnoisiscount++;
                        }
                    }
                    // diagnosispostop1
                });
                if (diagnoisiscount < 2) {
                    alert("Atleast 2 problems need to be selected, (i) Sinus Problem (ii) Tissue Lesion/Cyst/Infection (iii) Soft & Hard Tissue & Bone / Biopsy (iv) Bone Lesion/Bony Cyst (v) Injury/Traumatic/Accidental (vi) Zygomatic & Le-Fort Fracture/ Nasal (vii) Fracture (viii) Implant or Bone Graft failure.");
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
function addNew() {
    $('#btnnew').hide();
    $('#table_v').hide();
    $('#new_bill').show();
}
$(document).ready(function () {
    $('#flading').hide();
    $('#proceduretemplate').val('temp1');
    $('#proc_template1').show();
    $('#proc_template2').hide();

    var duplicatearr = ["t1proc03sub11", "t1proc03sub12", "t1proc03sub13", "t1proc03sub14", "t1proc03sub21", "t1proc03sub22", "t1proc03sub23", "t1proc03sub31", "t1proc03sub32", "t1proc03sub33", "t1proc03sub34", "t1proc03sub41", "t1proc03sub42"];
    var duplicatearr2 = ["temp2proc21", "temp2proc22", "temp2proc23", "temp2proc24", "temp2proc31", "temp2proc32", "temp2proc33", "temp2proc34", "temp2proc41", "temp2proc42", "temp2proc43", "temp2proc51", "temp2proc52"];
    var duplicatearr3 = ['t1proc18sub11', 't1proc18sub12', 't1proc18sub13', 't1proc18sub14'];
    var duplicatearr4 = ['t1proc18sub21', 't1proc18sub22'];
    var duplicatearr5 = ["t1proc04sub11", "t1proc04sub12"];
    var duplicatearr6 = ["t1proc04sub31", "t1proc04sub32", "t1proc04sub33"];
    var duplicatearr7 = ["t1proc04sub21", "t1proc04sub22"];
    var duplicatearr8 = ["t1proc04sub41", "t1proc04sub42"];
    var duplicatearr9 = ["t1proc04sub51", "t1proc04sub52"];
    var duplicatearr15 = ["t1proc04sub61", "t1proc04sub62"];
    var duplicatearr10 = ["t1proc04sub71", "t1proc04sub72"];
    var duplicatearr11 = ["t1proc04sub81", "t1proc04sub82"];
    var duplicatearr12 = ["t1proc17sub21", "t1proc17sub22"];
    var duplicatearr13 = ["t1proc17sub11", "t1proc17sub12", "t1proc17sub13", "t1proc17sub14"];
    var duplicatearr14 = ["t1proc167", "t1proc168"];
    var twoselection = ["t1proc02sub11", "t1proc02sub12", "t1proc02sub13"];//, "t1proc02sub21","t1proc02sub23","t1proc02sub22","t1proc02sub24"];
    var duplicatearr16 = ['t1proc16sub11', 't1proc16sub12', 't1proc16sub13', 't1proc16sub14', 't1proc16sub15', 't1proc16sub16', 't1proc16sub17', 't1proc16sub18'];
    var duplicatearr08 = ['t1proc08sub11', 't1proc08sub1101'];
    var duplicatearr081 = ['t1proc08sub12', 't1proc08sub1201'];
    var duplicatearr082 = ['t1proc08sub13', 't1proc08sub1301'];
    var duplicatearr083 = ['t1proc08sub14', 't1proc08sub1401'];
    var duplicatearr084 = ['t1proc08sub21', 't1proc08sub2101'];
    var duplicatearr085 = ['t1proc08sub22', 't1proc08sub2201'];
    var duplicatearr086 = ['t1proc08sub23', 't1proc08sub2301'];
    var duplicatearr087 = ['t1proc08sub24', 't1proc08sub2401'];
    var duplicatearr088 = ['t1proc08sub25', 't1proc08sub2501'];
    var duplicatearr089 = ['t1proc08sub26', 't1proc08sub2601'];
    var duplicatearr28 = ['t1proc08sub27', 't1proc08sub2701'];
    var duplicatearr29 = ['t1proc08sub28', 't1proc08sub2801'];
    var duplicatearr30 = ['t1proc08sub29', 't1proc08sub2901'];
    var duplicatearr31 = ['t1proc08sub210', 't1proc08sub21D1'];
    var duplicatearr32 = ['t1proc08sub211', 't1proc08sub2111'];
    var duplicatearr33 = ['t1proc08sub212', 't1proc08sub2121'];
    var duplicatearr34 = ['t1proc08sub210', 't1proc08sub2101', 't1proc08sub2102', 't1proc08sub2103'];


    $("input:checkbox").on('click', function () {
        //if Stem Cell checked disabled in Bone Marrow
//                else Bone Marrow is checked Stem Cell disabled
        try {
            if ($('#t1proc16sub21').is(":checked") || $('#t1proc16sub22').is(":checked") || $('#t1proc16sub23').is(":checked") || $('#t1proc16sub24').is(":checked") || $('#t1proc16sub25').is(":checked")) {
                $('#t1proc16sub41').attr('disabled', true);
                $('#t1proc16sub42').attr('disabled', true);
            } else {
                $('#t1proc16sub41').attr('disabled', false);
                $('#t1proc16sub42').attr('disabled', false);
            }
            if ($('#t1proc16sub41').is(":checked") || $('#t1proc16sub42').is(":checked")) {
                $('#t1proc16sub21').attr('disabled', true);
                $('#t1proc16sub22').attr('disabled', true);
                $('#t1proc16sub23').attr('disabled', true);
                $('#t1proc16sub24').attr('disabled', true);
                $('#t1proc16sub25').attr('disabled', true);
            } else {
                $('#t1proc16sub21').attr('disabled', false);
                $('#t1proc16sub22').attr('disabled', false);
                $('#t1proc16sub23').attr('disabled', false);
                $('#t1proc16sub24').attr('disabled', false);
                $('#t1proc16sub25').attr('disabled', false);
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
                            if ($('#t1proc02sub12').is(":checked") && $('#t1proc02sub11').is(":checked")) {
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
                                    $("input:checkbox[name='t1proc02sub12']").prop("checked", false);
                                    $("input:checkbox[name='t1proc02sub13']").checked(true);
                                }
                            } else {
                                $("input:checkbox[name='t1proc02sub13']").prop("checked", false);
                                $("input:checkbox[name='t1proc02sub12']").prop("checked", true);
                            }
                        } else {
                            if ($box.attr("name") === "t1proc02sub12")
                            {
                                if ($('#t1proc02sub12').is(":checked") && $('#t1proc02sub11').is(":checked")) {
                                    $("input:checkbox[name='t1proc02sub13']").prop("checked", true);
                                } else {
                                    if ($('#t1proc02sub12').is(":checked") && $('#t1proc02sub13').is(":checked")) {
                                        $("input:checkbox[name='t1proc02sub13']").checked(true);
                                    } else {
                                        $("input:checkbox[name='t1proc02sub12']").prop("checked", false);
                                        $("input:checkbox[name='t1proc02sub13']").prop("checked", true);
                                    }
                                }
                                if ($('#t1proc02sub13').is(":checked") && $('#t1proc02sub11').is(":checked")) {
                                    // alert("two: " + 'one and three');
                                    $("input:checkbox[name='t1proc02sub12']").prop("checked", true);
                                } else {
                                    $("input:checkbox[name='t1proc02sub13']").prop("checked", false);
                                    $("input:checkbox[name='t1proc02sub12']").prop("checked", true);
                                }
                            } else
                            {
                                //   alert('Muthu');
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
            if (duplicatearr.includes($box.attr("name"))) {

                $.each(duplicatearr, function (index, val) {
                    group = "input:checkbox[name='" + val + "']";
                    $(group).prop("checked", false);
                });
                /*for (var i = 0; i < substr.length; ++i) {
                 group = "input:checkbox[name='" + duplicatearr[i] + "']";   
                 $(group).prop("checked", false);                                                     
                 }*/
                $box.prop("checked", true);
            }
            if (duplicatearr2.includes($box.attr("name"))) {
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
            }
            if (duplicatearr16.includes($box.attr("name"))) {
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
            }
            if (duplicatearr5.includes($box.attr("name"))) {
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
            if (duplicatearr08.includes($box.attr("name"))) {
                $.each(duplicatearr08, function (index, val) {
                    group = "input:checkbox[name='" + val + "']";
                    $(group).prop("checked", false);
                });
                $box.prop("checked", true);
            }
            if (duplicatearr081.includes($box.attr("name"))) {
                $.each(duplicatearr081, function (index, val) {
                    group = "input:checkbox[name='" + val + "']";
                    $(group).prop("checked", false);
                });
                $box.prop("checked", true);
            }
            if (duplicatearr082.includes($box.attr("name"))) {
                $.each(duplicatearr082, function (index, val) {
                    group = "input:checkbox[name='" + val + "']";
                    $(group).prop("checked", false);
                });
                $box.prop("checked", true);
            }
            if (duplicatearr083.includes($box.attr("name"))) {

                $.each(duplicatearr083, function (index, val) {
                    group = "input:checkbox[name='" + val + "']";
                    $(group).prop("checked", false);
                });
                $box.prop("checked", true);
            }
            if (duplicatearr084.includes($box.attr("name"))) {
                $.each(duplicatearr084, function (index, val) {
                    group = "input:checkbox[name='" + val + "']";
                    $(group).prop("checked", false);
                });
                $box.prop("checked", true);
            }
            if (duplicatearr085.includes($box.attr("name"))) {
                $.each(duplicatearr085, function (index, val) {
                    group = "input:checkbox[name='" + val + "']";
                    $(group).prop("checked", false);
                });
                $box.prop("checked", true);
            }
            if (duplicatearr086.includes($box.attr("name"))) {
                $.each(duplicatearr086, function (index, val) {
                    group = "input:checkbox[name='" + val + "']";
                    $(group).prop("checked", false);
                });
                $box.prop("checked", true);
            }
            if (duplicatearr087.includes($box.attr("name"))) {
                $.each(duplicatearr087, function (index, val) {
                    group = "input:checkbox[name='" + val + "']";
                    $(group).prop("checked", false);
                });

                $box.prop("checked", true);
            }
            if (duplicatearr088.includes($box.attr("name"))) {
                $.each(duplicatearr088, function (index, val) {
                    group = "input:checkbox[name='" + val + "']";
                    $(group).prop("checked", false);
                });
                $box.prop("checked", true);
            }
            if (duplicatearr089.includes($box.attr("name"))) {
                $.each(duplicatearr089, function (index, val) {
                    group = "input:checkbox[name='" + val + "']";
                    $(group).prop("checked", false);
                });
                $box.prop("checked", true);
            }
            if (duplicatearr28.includes($box.attr("name"))) {
                $.each(duplicatearr28, function (index, val) {
                    group = "input:checkbox[name='" + val + "']";
                    $(group).prop("checked", false);
                });
                $box.prop("checked", true);
            }
            if (duplicatearr29.includes($box.attr("name"))) {
                $.each(duplicatearr29, function (index, val) {
                    group = "input:checkbox[name='" + val + "']";
                    $(group).prop("checked", false);
                });
                $box.prop("checked", true);
            }
            if (duplicatearr30.includes($box.attr("name"))) {
                $.each(duplicatearr30, function (index, val) {
                    group = "input:checkbox[name='" + val + "']";
                    $(group).prop("checked", false);
                });
                $box.prop("checked", true);
            }
            if (duplicatearr31.includes($box.attr("name"))) {
                $.each(duplicatearr31, function (index, val) {
                    group = "input:checkbox[name='" + val + "']";
                    $(group).prop("checked", false);
                });
                $box.prop("checked", true);
            }
            if (duplicatearr32.includes($box.attr("name"))) {
                $.each(duplicatearr32, function (index, val) {
                    group = "input:checkbox[name='" + val + "']";
                    $(group).prop("checked", false);
                });
                $box.prop("checked", true);
            }
            if (duplicatearr33.includes($box.attr("name"))) {
                $.each(duplicatearr33, function (index, val) {
                    group = "input:checkbox[name='" + val + "']";
                    $(group).prop("checked", false);
                });
                $box.prop("checked", true);
            }
            if (duplicatearr34.includes($box.attr("name"))) {
                $.each(duplicatearr34, function (index, val) {
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
            } else if ($box.attr("name").indexOf("diagnoisis") < 0) {
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
            var insid = $("#ddlinsurance option:selected").text();
            var insarry = insid.split("-");
            $("#insurance").html($("#ddlinsurance option:selected").text());
            $("#patdob").html(myArray[1]);
            $("#practice").html($("#ddlpractice option:selected").text());
            $("#treating_surgeon").html($("#ddlprovider option:selected").text());
            $('#visitreason').html($("#visit_reason option:selected").text());
            if ($("#visit_reason option:selected").val() === "10")
            {
                $("#visit_others_view").show();
                $("#visitother").html($('#visit_others').val());
            } else
            {
                $("#visit_others_view").hide();
            }


            // console.log(insarry);
            //  console.log(insarry.length);
            //console.log(insarry[insarry.length-1]);
            $("#prid").html(insarry[insarry.length - 1]);
            $("#memid").html($('#mid').val());
            $("#rdos").html($("#dateofservice").val());
            $("#refdoc").html($("#refdocvisit").val() + ' - ' + $("#refdocnpi").val() + ' ');
            $("#radiogts").html($("#radiogtsvisit").val() + ' - ' + $("#radiogtsnpi").val() + ' ');
            $("#pathgts").html($("#pathgtsvisit").val() + ' - ' + $("#pathgtsnpi").val() + ' ');

            if ($("#refdocvisit").val() === "") {
                $("#refdoc").hide();
                $("#refdoc_view").hide();
            }
            if ($("#radiogtsvisit").val() === "") {
                $("#radiogts").hide();
                $("#radiologist_view").hide();
            }
            if ($("#pathgtsvisit").val() === "") {
                $("#pathologist_view").hide();
                $("#pathgts").hide();
            }


            /* $(':checkbox:checked').each( function (key, value) {
             $("#collapsereview1").append('<label class="col-form-label "  >'+$(this).parent().find('label').text()+' </label> ');
             }); */

            // $("#collapsereview1").append('</div>');
        }

        if (link === '#design-1-form-h-2')
        {
            //  alert('form 1');
            if (flag === 1)
            {
                tagflag = 0;
            }
        }

        if (link === "#design-1-form-h-3") {
            //$("#collapsereview1").html('');   
            //  alert('form 2');
            if (tagflag === 0 && flag === 1)
            {
                tagflag = 1;

                $("#treatmentmaxdiv").html('');

                $("#treatmentmaxdiv").html('');

                $("#treatmentmaxdiv").html('');

                $("#headrevtemp1trmax").html('');

                $("#headrevtemp1trman").html('');

                $("#headrevtemp1trarch").html('');

                $("#diagnoisis1div").html('');

                $("#diagnoisis2div").html('');

                $("#diagnoisis3div").html('');

                $("#diagnoisis4div").html('');

                $("#diagnoisis5div").html('');

                $("#diagnoisis6div").html('');

                $("#diagnoisis7div").html('');

                $("#diagnoisis8div").html('');

                $("#diagnoisis9div").html('');

                $("#diagnoisis10div").html('');


                $("#diagnoisis11div").html('');

                $("#diagnoisis12div").html('');

                $("#diagnoisis13div").html('');

                $("#diagnoisis14div").html('');

                $("#diagnoisis15div").html('');

                $("#diagnoisis16div").html('');

                $("#diagnoisis17div").html('');

                $("#diagnoisis18div").html('');

                $("#diagnoisis19div").html('');
                $("#diagnoisis20div").html('');
                $("#diagnoisis21div").html('');
                $("#diagnoisis22div").html('');

                //alert($("#treatmentdiv").html());
                for (var i = 1; i <= 44; i++) {
                    //text += cars[i] + "<br />";
                    $("#revt1proc" + i).html('');
                    $("#revtemp2proc" + i).html('');
                    $("#revcodet1proc" + i).html('');
                }


                $('#maxillaview').hide();
                $('#mandibleview').hide();
                $('#archview').hide();
                var diagansiscodes = "";
                var subcategoryarr = [];
                var diagonsiscode = [];
                $('#procedurecode_result').html('');
                $('#procedurecodev_result').html('');
                var checkMarkBox = "<span style='width:12px; height:12px;line-height:12px; font-size:12px;display: inline-block;margin-right: 5px;border:1px solid #333;'> </span>";
               
               
               $('#accordionExample1').find(' select, input[type="checkbox"]:checked').each(function() {       //procedurecode_new
                       var taname='';
                       if($(this).attr("type")!='checkbox'){
					  
                           if($(this).val()!=0){
                                //alert("select Box value "+$(this).val());
                                 taname=$(this).val();
                            }
                       }else{
                           taname=$(this).attr("name");
                       }

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
                                                $('#procedurecode_result').append('<br />');
                                            } else {
                                                selectcategoryhead = $('#' + category + 'category').text();
                                                selectionhead = $('#' + subcategory + 'category').text();

                                                if ($('#' + category + 'mcategory').length) {
                                                    // Do something
                                                    console.log('');
                                                } else {
                                                    $('#procedurecode_result').append('<div id="' + category + 'mcategory" class="row"  style="clear:both;"> ' +
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
                                                        '<label class="col-form-label font-style-label"  style="font-weight:bold" >' + selectionhead + ' - </label><br />' +
                                                        '<label class=" col-form-label " id="' + subcategory + 'procdesc"></label>  ' +
                                                        '</div>');

                                                $('#procedurecodev_result').append('<div id="' + subcategory + 'categorycde" class="row" style="clear:both;"> ' +
                                                        '<label class="col-form-label font-style-label"  style="font-weight:bold" >' + selectionhead + ' - </label>' +
                                                        '<label class=" col-form-label " id="' + subcategory + 'procdesccde"></label>  ' +
                                                        '</div>');
                                            }

                                            subcategoryarr.push(subcategory);
                                        }


                                        $.ajax({
                                            url: "procedureid",
                                            type: "get", //send it through get method
                                            data: {
                                                procedureid: taname
                                            },
                                            success: function (response) {
                                                var obj = jQuery.parseJSON(response);
                                                // console.log("procedureid: " + obj[0].proc_code);
                                                if (obj.length > 0)
                                                {
                                                    if (response !== "") {
                                                        if ($(this).parent().find('label').text() === "") {
                                                            var txt = $(this).parents('tr').find('td').text();
                                                            //   console.log($.trim(txt))
                                                            var imglbl = checkMarkBox + obj[0].proc_code + '<br />';
                                                            $("#" + subcategory + "procdesc").append(imglbl);
                                                            //  $("#" + subcategory + "procdesc").append(obj[0].proc_code + ' | ');
                                                        } else {
                                                            $("#" + subcategory + "procdesc").append(obj[0].proc_code + ' |');
                                                        }
                                                    } else {
                                                        if ($(this).parent().find('label').text() === "") {
                                                            var txt = $(this).parents('tr').find('td').text();
                                                            //   console.log($.trim(txt))
                                                            $("#" + subcategory + "procdesc").append($.trim(txt) + ' | ');
                                                        } else {
                                                            $("#" + subcategory + "procdesc").append($(this).parent().find('label').text() + ' | ');
                                                        }
                                                    }
                                                }
                                            }
                                        });


                                        $.ajax({
                                            url: "procedurecode",
                                            type: "get", //send it through get method
                                            data: {
                                                procedurecode: taname
                                            },
                                            success: function (response) {

                                                var obj = jQuery.parseJSON(response);
                                                console.log("procedureid: " + obj.length);
                                                if (obj.length > 0)
                                                {
                                                    /* if (response !== "") {
                                                     if ($(this).parent().find('label').text() === "") {
                                                     var txt = $(this).parents('tr').find('td').text();
                                                     // console.log(subcategory + "procdesccde");
                                                     //  console.log($.trim(txt))
                                                     var imglbl1 =  checkMarkBox + obj[0].proc_code + '<br />';
                                                     $("#" + subcategory + "procdesccde").append(imglbl1);
                                                     //  $("#" + subcategory + "procdesccde").append(obj[0].proc_code + ' | ');
                                                     } else {
                                                     $("#" + subcategory + "procdesccde").append(obj[0].proc_code + ' | ');
                                                     }
                                                     } */
                                                    // console.log("procedureid: " + obj[0].proc_code);
                                                    if (response !== "") {
                                                        if ($(this).parent().find('label').text() === "") {
                                                            var txt = $(this).parents('tr').find('td').text();
                                                            console.log($.trim(txt));
                                                            var imglbl1 = checkMarkBox + obj[0].proc_code + '<br />';
                                                            $("#" + subcategory + "procdesccde").append(imglbl1);
//                                                    $("#" + subcategory + "procdesccde").append(obj[0].proc_code + ' | ');

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
                                        });
                                    }


                                    $('#procedure_count').val(1);

                        }
					   
					   
                });
                
                $(':checkbox:checked').each(function (key, value) {     //Diagnosis code
                    //console.log(key+" ==== Key");
                    // console.log(value+" ==== values");
                    // if(value.indexOf("diagnoisis")> -1){
                    //alert($(this).attr("name"));
                    //$("#collapsereview1").append('<label class="col-form-label "  >'+$(this).parent().find('label').text()+' </label> <br />');
                    var tagname = $(this).attr("name");
                    // console.log(tagname);
                    //$("#treatmentmaxdiv").html('');


                    if (tagname === "diagnoisis1") {
                        //alert();                                
                        $('#diagnosis_count').val(1);
                        $("#diagnoisis1divt").show();
                        $("#diagnoisis1div").show();

                        $("#diagnoisis1div").append('<span class="ulidigimgchk">' + checkMarkBox + '</span>' + $(this).parent().find('label').text() + '<br />');

//                    $("#diagnoisis1div").append('<label>' + $(this).parent().find('label').text() + ' </label>');

                        diagansiscodes = diagansiscodes + "," + $(this).attr('id');
                        //alert($("#treatmentdiv").html());
                    } else if (tagname === "diagnoisis2") {
                        //alert();
                        $('#diagnosis_count').val(1);
                        $("#diagnoisis2divt").show();
                        $("#diagnoisis2div").show();

                        $("#diagnoisis2div").append('<span class="ulidigimgchk">' + checkMarkBox + '</span>' + $(this).parent().find('label').text() + '<br />');

//                    $("#diagnoisis2div").append('<label class="col-form-label ">' + $(this).parent().find('label').text() + ' </label> | ');
                        diagansiscodes = diagansiscodes + "," + $(this).attr('id');
                        //alert($("#treatmentdiv").html());
                    } else if (tagname === "diagnoisis3") {
                        //alert();
                        $('#diagnosis_count').val(1);
                        $("#diagnoisis3divt").show();
                        $("#diagnoisis3div").show();

                        $("#diagnoisis3div").append('<span class="ulidigimgchk">' + checkMarkBox + '</span>' + $(this).parent().find('label').text() + '<br />');

//                    $("#diagnoisis3div").append('<label class="col-form-label ">' + $(this).parent().find('label').text() + ' </label> | ');
                        diagansiscodes = diagansiscodes + "," + $(this).attr('id');
                        //alert($("#treatmentdiv").html());
                    } else if (tagname === "diagnoisis4") {
                        //alert();
                        $('#diagnosis_count').val(1);
                        $("#diagnoisis4divt").show();
                        $("#diagnoisis4div").show();

                        $("#diagnoisis4div").append('<span class="ulidigimgchk">' + checkMarkBox + '</span>' + $(this).parent().find('label').text() + '<br />');


//                    $("#diagnoisis4div").append('<label class="col-form-label "  >' + $(this).parent().find('label').text() + ' </label> | ');
                        diagansiscodes = diagansiscodes + "," + $(this).attr('id');
                        //alert($("#treatmentdiv").html());
                    } else if (tagname === "diagnoisis5") {
                        //alert();
                        $('#diagnosis_count').val(1);
                        $("#diagnoisis5divt").show();
                        $("#diagnoisis5div").show();

                        $("#diagnoisis5div").append('<span class="ulidigimgchk">' + checkMarkBox + '</span>' + $(this).parent().find('label').text() + '<br />');

//                    $("#diagnoisis5div").append('<label class="col-form-label "  >' + $(this).parent().find('label').text() + ' </label> | ');
                        diagansiscodes = diagansiscodes + "," + $(this).attr('id');
                        //alert($("#treatmentdiv").html());
                    } else if (tagname === "diagnoisis6") {
                        //alert();
                        $('#diagnosis_count').val(1);
                        $("#diagnoisis6divt").show();
                        $("#diagnoisis6div").show();
                        $("#diagnoisis6div").append('<span class="ulidigimgchk">' + checkMarkBox + '</span>' + $(this).parent().find('label').text() + '<br />');
//                    $("#diagnoisis6div").append('<label class="col-form-label "  >' + $(this).parent().find('label').text() + ' </label> | ');
                        diagansiscodes = diagansiscodes + "," + $(this).attr('id');
                        //alert($("#treatmentdiv").html());
                    } else if (tagname === "diagnoisis7") {
                        //alert();
                        $('#diagnosis_count').val(1);
                        $("#diagnoisis7divt").show();
                        $("#diagnoisis7div").show();
                        $("#diagnoisis7div").append('<span class="ulidigimgchk">' + checkMarkBox + '</span>' + $(this).parent().find('label').text() + '<br />');
//                    $("#diagnoisis7div").append('<label class="col-form-label "  >' + $(this).parent().find('label').text() + ' </label> | ');
                        diagansiscodes = diagansiscodes + "," + $(this).attr('id');
                        //alert($("#treatmentdiv").html());
                    } else if (tagname === "diagnoisis8") {
                        //alert();
                        $('#diagnosis_count').val(1);
                        $("#diagnoisis8divt").show();
                        $("#diagnoisis8div").show();

                        $("#diagnoisis8div").append('<span class="ulidigimgchk">' + checkMarkBox + '</span>' + $(this).parent().find('label').text() + '<br />');

//                    $("#diagnoisis8div").append('<label class="col-form-label "  >' + $(this).parent().find('label').text() + ' </label> ');
                        diagansiscodes = diagansiscodes + "," + $(this).attr('id');
                        //alert($("#treatmentdiv").html());
                    } else if (tagname === "diagnoisis9") {
                        //alert();
                        $('#diagnosis_count').val(1);
                        $("#diagnoisis9divt").show();
                        $("#diagnoisis9div").show();
                        $("#diagnoisis9div").append('<span class="ulidigimgchk">' + checkMarkBox + '</span>' + $(this).parent().find('label').text() + '<br />');
//                    $("#diagnoisis9div").append('<label class="col-form-label "  >' + $(this).parent().find('label').text() + ' </label> | ');
                        diagansiscodes = diagansiscodes + "," + $(this).attr('id');
                        //alert($("#treatmentdiv").html());
                    } else if (tagname === "diagnoisis10") {
                        //alert();
                        $('#diagnosis_count').val(1);
                        $("#diagnoisis10divt").show();
                        $("#diagnoisis10div").show();
                        $("#diagnoisis10div").append('<span class="ulidigimgchk">' + checkMarkBox + '</span>' + $(this).parent().find('label').text() + '<br />');
//                    $("#diagnoisis10div").append('<label class="col-form-label "  >' + $(this).parent().find('label').text() + ' </label> | ');
                        diagansiscodes = diagansiscodes + "," + $(this).attr('id');
                        //alert($("#treatmentdiv").html());
                    } else if (tagname === "diagnoisis11") {
                        //alert();
                        $("#diagnoisis11divt").show();
                        $("#diagnoisis11div").show();

                        $("#diagnoisis11div").append('<span class="ulidigimgchk">' + checkMarkBox + '</span>' + $(this).parent().find('label').text() + '<br />');

//                    $("#diagnoisis11div").append('<label class="col-form-label "  >' + $(this).parent().find('label').text() + ' </label> | ');
                        diagansiscodes = diagansiscodes + "," + $(this).attr('id');
                        //alert($("#treatmentdiv").html());
                    } else if (tagname === "diagnoisis12") {
                        //alert();
                        $("#diagnoisis12divt").show();
                        $("#diagnoisis12div").show();

                        $("#diagnoisis12div").append('<span class="ulidigimgchk">' + checkMarkBox + '</span>' + $(this).parent().find('label').text() + '<br />');

//                    $("#diagnoisis12div").append('<label class="col-form-label "  >' + $(this).parent().find('label').text() + ' </label> | ');
                        diagansiscodes = diagansiscodes + "," + $(this).attr('id');
                        //alert($("#treatmentdiv").html());
                    } else if (tagname === "diagnoisis13") {
                        //alert();
                        $("#diagnoisis13divt").show();
                        $("#diagnoisis13div").show();

                        $("#diagnoisis13div").append('<span class="ulidigimgchk">' + checkMarkBox + '</span>' + $(this).parent().find('label').text() + '<br />');

//                    $("#diagnoisis13div").append('<label class="col-form-label "  >' + $(this).parent().find('label').text() + ' </label> | ');
                        diagansiscodes = diagansiscodes + "," + $(this).attr('id');
                        //alert($("#treatmentdiv").html());
                    } else if (tagname === "diagnoisis14") {
                        //alert();
                        $("#diagnoisis14divt").show();
                        $("#diagnoisis14div").show();

                        $("#diagnoisis14div").append('<span class="ulidigimgchk">' + checkMarkBox + '</span>' + $(this).parent().find('label').text() + '<br />');

//                    $("#diagnoisis14div").append('<label class="col-form-label "  >' + $(this).parent().find('label').text() + ' </label> | ');
                        diagansiscodes = diagansiscodes + "," + $(this).attr('id');
                        //alert($("#treatmentdiv").html());
                    } else if (tagname === "diagnoisis15") {
                        //alert();
                        $("#diagnoisis15divt").show();
                        $("#diagnoisis15div").show();

                        $("#diagnoisis15div").append('<span class="ulidigimgchk">' + checkMarkBox + '</span>' + $(this).parent().find('label').text() + '<br />');

//                    $("#diagnoisis15div").append('<label class="col-form-label "  >' + $(this).parent().find('label').text() + ' </label> | ');
                        diagansiscodes = diagansiscodes + "," + $(this).attr('id');
                        //alert($("#treatmentdiv").html());
                    } else if (tagname === "diagnoisis16") {
                        //alert();
                        $("#diagnoisis16divt").show();
                        $("#diagnoisis16div").show();

                        $("#diagnoisis16div").append('<span class="ulidigimgchk">' + checkMarkBox + '</span>' + $(this).parent().find('label').text() + '<br />');

//                    $("#diagnoisis16div").append('<label class="col-form-label "  >' + $(this).parent().find('label').text() + ' </label> | ');
                        diagansiscodes = diagansiscodes + "," + $(this).attr('id');
                        //alert($("#treatmentdiv").html());
                    } else if (tagname === "diagnoisis17") {
                        //alert();
                        $("#diagnoisis17divt").show();
                        $("#diagnoisis17div").show();
                        $("#diagnoisis17div").append('<span class="ulidigimgchk">' + checkMarkBox + '</span>' + $(this).parent().find('label').text() + '<br />');
//                    $("#diagnoisis17div").append('<label class="col-form-label "  >' + $(this).parent().find('label').text() + ' </label> | ');
                        diagansiscodes = diagansiscodes + "," + $(this).attr('id');
                        //alert($("#treatmentdiv").html());
                    } else if (tagname === "diagnoisis18") {
                        //alert();
                        $("#diagnoisis18divt").show();
                        $("#diagnoisis18div").show();
                        $("#diagnoisis18div").append('<span class="ulidigimgchk">' + checkMarkBox + '</span>' + $(this).parent().find('label').text() + '<br />');
//                    $("#diagnoisis18div").append('<label class="col-form-label "  >' + $(this).parent().find('label').text() + ' </label> | ');
                        diagansiscodes = diagansiscodes + "," + $(this).attr('id');
                        //alert($("#treatmentdiv").html());
                    } else if (tagname === "diagnoisis19") {
                        //alert();
                        $("#diagnoisis19divt").show();
                        $("#diagnoisis19div").show();

                        $("#diagnoisis19div").append('<span class="ulidigimgchk">' + checkMarkBox + '</span>' + $(this).parent().find('label').text() + '<br />');

//                    $("#diagnoisis19div").append('<label class="col-form-label "  >' + $(this).parent().find('label').text() + ' </label> | ');
                        diagansiscodes = diagansiscodes + "," + $(this).attr('id');
                        //alert($("#treatmentdiv").html());
                    } else if (tagname === "diagnoisis20") {
                        //alert();
                        $("#diagnoisis20divt").show();
                        $("#diagnoisis20div").show();

                        $("#diagnoisis20div").append('<span class="ulidigimgchk">' + checkMarkBox + '</span>' + $(this).parent().find('label').text() + '<br />');

//                    $("#diagnoisis20div").append('<label class="col-form-label "  >' + $(this).parent().find('label').text() + ' </label> | ');
                        diagansiscodes = diagansiscodes + "," + $(this).attr('id');
                        //alert($("#treatmentdiv").html());
                    } else if (tagname === "diagnoisis21") {
                        //alert();
                        $("#diagnoisis21divt").show();
                        $("#diagnoisis21div").show();

                        $("#diagnoisis21div").append('<span class="ulidigimgchk">' + checkMarkBox + '</span>' + $(this).parent().find('label').text() + '<br />');

//                    $("#diagnoisis20div").append('<label class="col-form-label "  >' + $(this).parent().find('label').text() + ' </label> | ');
                        diagansiscodes = diagansiscodes + "," + $(this).attr('id');
                        //alert($("#treatmentdiv").html());
                    } else if (tagname === "diagnoisis22") {
                        //alert();
                        $("#diagnoisis22divt").show();
                        $("#diagnoisis22div").show();

                        $("#diagnoisis22div").append('<span class="ulidigimgchk">' + checkMarkBox + '</span>' + $(this).parent().find('label').text() + '<br />');

//                    $("#diagnoisis20div").append('<label class="col-form-label "  >' + $(this).parent().find('label').text() + ' </label> | ');
                        diagansiscodes = diagansiscodes + "," + $(this).attr('id');
                        //alert($("#treatmentdiv").html());
                    }                        
                                        // }
                });

                $('#resultcodev').val('');
                //console.log($('#procedurecode_result').html());
                //e.preventDefault(); // Cancel the submit procedurecodev_result

                //$('#result').val($('#procedurecode_result').html());
                //$('#resultcodev').val($('#procedurecodev_result').html());

                var diagcount = diagansiscodes.split(",");

                $('#disganosiscode').val(diagansiscodes);
                $('#disganosiscodecount').val(diagcount.length);

                $("#collapsereview1").append('</div>');
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
        $('#' + tag + ' span').html('<i class="feather icon-check f-w-600 bg-c-green update-icon"></i>');
    } else {
        $('#' + tag).css("background-color", "white");
        $('#' + tag + ' span').html('<i class="feather icon-minus f-w-600 bg-c-red update-icon"></i>');
    }

}

function updateStatus1(tag, checkedcount) {
    //  console.log(tag);
    if (checkedcount > 0) {
        $('#' + tag).css("background-color", "lightcyan");
        //    $('#' + tag + ' span').html('<i class="feather icon-check f-w-600 bg-c-green update-icon"></i>');
    } else {
        $('#' + tag).css("background-color", "white");
        // $('#' + tag + ' span').html('<i class="feather icon-minus f-w-600 bg-c-red update-icon"></i>');
    }

}


function callProcedureHeader(procedureid, count)
{
    var diagnosisdiv;
    var checkedcount1;
    var checkedcount2=0;
    var headTag1 = "";
    //alert("From ebill js procedureid: "+procedureid);
    if($("#"+procedureid).attr('type')!=='checkbox'){
        //alert(procedureid+ " is from Select Box (ebill js)");
        var procedurediv1 = $('option[value="' + procedureid + '"]').attr("title");
        $('option[title="' + procedurediv1 + '"]:selected').each(function(){                                                                                   
        if($(this).val()!==0){
            checkedcount2++;
        }  
    });
        //alert("procedure Code id: "+procedureid +" - Procedure Heading: " +procedurediv1 + " - Count of Non zero selected Values:  "+checkedcount2); 
        updateStatus1(procedurediv1, checkedcount2);
     
    }
    if($("#"+procedureid).attr('type')==='checkbox'){
        //alert(procedureid+ "is from Check Box");
    diagnosisdiv = $("#" + procedureid).attr("name");
    var procedurediv = $("#" + procedureid).attr("title");
    checkedcount1 = $('input[title="' + procedurediv + '"]:checked').length;
    
    if (diagnosisdiv === "t1proc01sub11") {          //Treating site Starts here - proheading4
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
    } else if (diagnosisdiv === "t1proc02sub11") {          //Diagnostic Radiology - proheadingOne
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
    } else if (diagnosisdiv === "t1proc03sub11") {          //Patient Consultation/ Evaluation - proheading2
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
    } else if (diagnosisdiv === "t1proc02sub22") {
    headTag1 = "proheading2";
    } else if (diagnosisdiv === "t1proc02sub23") {
    headTag1 = "proheading2";
    } else if (diagnosisdiv === "t1proc02sub31") {
    headTag1 = "proheading2";
    } else if (diagnosisdiv === "t1proc02sub32") {
    headTag1 = "proheading2";
    } else if (diagnosisdiv === "t1proc02sub33") {
    headTag1 = "proheading2";
    } else if (diagnosisdiv === "t1proc02sub34") {
    headTag1 = "proheading2";
    } else if (diagnosisdiv === "t1proc02sub41") {
    headTag1 = "proheading2";
    } else if (diagnosisdiv === "t1proc02sub42") {
    headTag1 = "proheading2";
    } else if (diagnosisdiv === "t1proc04sub11") {          //Mandatory Questionnaire - proheading3
    headTag1 = "proheading3";
    } else if (diagnosisdiv === "t1proc04sub12") {
    headTag1 = "proheading3";
    } else if (diagnosisdiv === "t1proc04sub21") {
    headTag1 = "proheading3";
    } else if (diagnosisdiv === "t1proc04sub22") {
    headTag1 = "proheading3";
    } else if (diagnosisdiv === "t1proc04sub31") {
    headTag1 = "proheading3";
    }else if (diagnosisdiv === "t1proc04sub31") {
    headTag1 = "proheading3";
    } else if (diagnosisdiv === "t1proc04sub32") {
    headTag1 = "proheading3";
    } else if (diagnosisdiv === "t1proc04sub33") {
    headTag1 = "proheading3";
    }else if (diagnosisdiv === "t1proc04sub41") {
    headTag1 = "proheading3";
    } else if (diagnosisdiv === "t1proc04sub42") {
    headTag1 = "proheading3";
    } else if (diagnosisdiv === "t1proc04sub51") {
    headTag1 = "proheading3";
    } else if (diagnosisdiv === "t1proc04sub52") {
    headTag1 = "proheading3";
    } else if (diagnosisdiv === "t1proc04sub61") {
    headTag1 = "proheading3";
    } else if (diagnosisdiv === "t1proc04sub62") {
    headTag1 = "proheading3";
    } else if (diagnosisdiv === "t1proc04sub71") {
    headTag1 = "proheading3";
    } else if (diagnosisdiv === "t1proc04sub72") {
    headTag1 = "proheading3";
    } else if (diagnosisdiv === "t1proc04sub81") {
    headTag1 = "proheading3";
    } else if (diagnosisdiv === "t1proc04sub82") {
    headTag1 = "proheading3";
    } else if (diagnosisdiv === "t1proc05sub11") {          //Appliance - proheading5
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
    } else if (diagnosisdiv === "t1proc08sub11") {          //Bone Lesion / Bony Cyst Excision - proheading8
    headTag1 = "proheading8";
    } else if (diagnosisdiv === "t1proc08sub12") {
    headTag1 = "proheading8";
    } else if (diagnosisdiv === "t1proc08sub13") {
    headTag1 = "proheading8";
    } else if (diagnosisdiv === "t1proc08sub14") {
    headTag1 = "proheading8";
    } else if (diagnosisdiv === "t1proc21sub15") {          //Debridement - proheading21
    headTag1 = "proheading21";
    } else if (diagnosisdiv === "t1proc21sub16") {
    headTag1 = "proheading21";
    } else if (diagnosisdiv === "t1proc21sub17") {
    headTag1 = "proheading21";
    } else if (diagnosisdiv === "t1proc21sub18") {
    headTag1 = "proheading21";
    }  else if (diagnosisdiv === "t1proc21sub113") {
    headTag1 = "proheading21";
    } else if (diagnosisdiv === "t1proc21sub114") {
    headTag1 = "proheading21";
    } else if (diagnosisdiv === "t1proc21sub115") {
    headTag1 = "proheading21";
    } else if (diagnosisdiv === "t1proc21sub116") {
    headTag1 = "proheading21";
    } else if (diagnosisdiv === "t1proc11sub21") {          //Surgical Reconstruction of fixation  - proheading11
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
    } else if (diagnosisdiv === "t1proc22sub11") {          //Reconstruction of Bone Fracture - proheading22
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
    } else if (diagnosisdiv === "t1proc14sub117") {         //Tissue Graft - proheading14
    headTag1 = "proheading14";
    } else if (diagnosisdiv === "t1proc14sub118") {
    headTag1 = "proheading14";
    } else if (diagnosisdiv === "t1proc14sub119") {
    headTag1 = "proheading14";
    } else if (diagnosisdiv === "t1proc14sub120") {
    headTag1 = "proheading14";
    } else if (diagnosisdiv === "t1proc16sub11") {          //Stem cell / Bone harvest - proheading16 
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
    } else if (diagnosisdiv === "t1proc18sub11") {          //Suture - proheading18
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
    } else {
    return;
    }
    if (headTag1 !== "") {
        //   alert(procedurediv);
        //   alert(checkedcount1);
        updateStatus1(headTag1, checkedcount1);
    }
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
        content: 'At least 2 problems need to be selected from following 8 items. <br />(i) Sinus Problem.<br />(ii) Tissue Lesion/Cyst/Infection.<br />(iv) Bone Lesion/Bony Cyst.<br />(v) Injury/Traumatic/Accidental.<br />(vi) Zygomatic & Le-Fort Fracture/ Nasal.<br />(vii) Fracture.<br />(viii) Implant or Bone Graft failure'
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
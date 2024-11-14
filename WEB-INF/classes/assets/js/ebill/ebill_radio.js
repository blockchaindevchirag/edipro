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
                    msgbox("Invalid Ordering Doctor", "eSuperbill Form", "error");
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

            if (newIndex === 2) {
                var diagnoisiscount = 0;


                $('input[type=checkbox]').each(function () {

                    var diagnosisdiv = $(this).attr("name");
                    var headTag = "";

                    if (diagnosisdiv === "diagnoisis22") {
                        if (this.checked) {
                            diagnoisiscount++;
                        }
                    } else if (diagnosisdiv === "diagnoisis23") {
                        if (this.checked) {
                            diagnoisiscount++;
                        }
                    } else if (diagnosisdiv === "diagnoisis24") {
                        if (this.checked) {
                            diagnoisiscount++;
                        }
                    } else if (diagnosisdiv === "diagnoisis25") {
                        if (this.checked) {
                            diagnoisiscount++;
                        }
                    } else if (diagnosisdiv === "diagnoisis26") {
                        if (this.checked) {
                            diagnoisiscount++;
                        }
                    } else if (diagnosisdiv === "diagnoisis27") {
                        if (this.checked) {
                            diagnoisiscount++;
                        }
                    } else if (diagnosisdiv === "diagnoisis28") {
                        if (this.checked) {
                            diagnoisiscount++;
                        }
                    }
                });
                if (diagnoisiscount < 2) {
                    alert("Atleast 2 problems need to be selected, (i) Sinus Problem (ii) Cyst/Abscess of Tissue (iii) Soft & Hard Tissue & Bone / Biopsy (iv) Lesion/Cyst of Bone (v) Zygomatic (can use w/ Sleep problem) (vi) Fracture Bone (vii) Implant or Bone Graft failure.");
                    return false;
                }

            }
            if (currentIndex === 2 && newIndex === 3)
            {
                if ($("#t1proc02sub11").prop('checked') === false && $("#t1proc02sub13").prop('checked') === false && $("#t1proc02sub23").prop('checked') === false && $("#t1proc02sub24").prop('checked') === false)
                {
                    alert("Select atleast 1 Procedure.");
                    flag = 0;
                    return false;
                } else
                {
                    flag = 1;
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
    $('#proc_template1').show();
    $('#proc_template2').hide();
    var tagflag = 0;
    $('a').click(function () {
        var link = $(this).attr('href');

        if (link === "#finish") {
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

            if (tagflag === 0 && flag === 1)
            {
                tagflag = 1;

                $("#diagnoisis22div").html('');

                $("#diagnoisis23div").html('');

                $("#diagnoisis24div").html('');

                $("#diagnoisis25div").html('');

                $("#diagnoisis26div").html('');

                $("#diagnoisis27div").html('');

                $("#diagnoisis28div").html('');

                $("#diagnoisis29div").html('');
                $("#diagnoisis30div").html('');
                $("#diagnoisis31div").html('');
                $("#diagnoisis32div").html('');
                for (var i = 1; i <= 44; i++) {
                    //text += cars[i] + "<br>";
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
                $(':checkbox:checked').each(function (key, value) {
                    //console.log(key+" ==== Key");
                    // console.log(value+" ==== values");
                    var tagname = $(this).attr("name");
                    // console.log(tagname);

                    if (tagname === "diagnoisis22") {
                        $('#diagnosis_count').val(1);
                        $("#diagnoisis22divt").show();
                        $("#diagnoisis22div").show();
                        $("#diagnoisis22div").append('<span class="ulidigimgchk">' + checkMarkBox + '</span>' + $(this).parent().find('label').text() + '<br>');
                        diagansiscodes = diagansiscodes + "," + $(this).attr('id');
                    } else if (tagname === "diagnoisis23") {
                        $('#diagnosis_count').val(1);
                        $("#diagnoisis23divt").show();
                        $("#diagnoisis23div").show();
                        $("#diagnoisis23div").append('<span class="ulidigimgchk">' + checkMarkBox + '</span>' + $(this).parent().find('label').text() + '<br>');
                        diagansiscodes = diagansiscodes + "," + $(this).attr('id');
                    } else if (tagname === "diagnoisis24") {
                        $("#diagnoisis24divt").show();
                        $("#diagnoisis24div").show();

                        $("#diagnoisis24div").append('<span class="ulidigimgchk">' + checkMarkBox + '</span>' + $(this).parent().find('label').text() + '<br>');

                        diagansiscodes = diagansiscodes + "," + $(this).attr('id');
                    } else if (tagname === "diagnoisis25") {
                        //alert();
                        $('#diagnosis_count').val(1);
                        $("#diagnoisis25divt").show();
                        $("#diagnoisis25div").show();

                        $("#diagnoisis25div").append('<span class="ulidigimgchk">' + checkMarkBox + '</span>' + $(this).parent().find('label').text() + '<br>');

                        diagansiscodes = diagansiscodes + "," + $(this).attr('id');
                    } else if (tagname === "diagnoisis26") {
                        $("#diagnoisis26divt").show();
                        $("#diagnoisis26div").show();
                        $("#diagnoisis26div").append('<span class="ulidigimgchk">' + checkMarkBox + '</span>' + $(this).parent().find('label').text() + '<br>');

                        diagansiscodes = diagansiscodes + "," + $(this).attr('id');
                    } else if (tagname === "diagnoisis27") {
                        $("#diagnoisis27divt").show();
                        $("#diagnoisis27div").show();

                        $("#diagnoisis27div").append('<span class="ulidigimgchk">' + checkMarkBox + '</span>' + $(this).parent().find('label').text() + '<br>');

                        diagansiscodes = diagansiscodes + "," + $(this).attr('id');
                    } else if (tagname === "diagnoisis28") {
                        $('#diagnosis_count').val(1);
                        $("#diagnoisis28divt").show();
                        $("#diagnoisis28div").show();
                        $("#diagnoisis28div").append('<span class="ulidigimgchk">' + checkMarkBox + '</span>' + $(this).parent().find('label').text() + '<br>');
                        diagansiscodes = diagansiscodes + "," + $(this).attr('id');
                    } else if (tagname === "diagnoisis29") {
                        $("#diagnoisis29divt").show();
                        $("#diagnoisis29div").show();

                        $("#diagnoisis29div").append('<span class="ulidigimgchk">' + checkMarkBox + '</span>' + $(this).parent().find('label').text() + '<br>');

                        diagansiscodes = diagansiscodes + "," + $(this).attr('id');
                    } else if (tagname === "diagnoisis30") {
                        $("#diagnoisis30divt").show();
                        $("#diagnoisis30div").show();

                        $("#diagnoisis30div").append('<span class="ulidigimgchk">' + checkMarkBox + '</span>' + $(this).parent().find('label').text() + '<br>');

                        diagansiscodes = diagansiscodes + "," + $(this).attr('id');
                    } else if (tagname === "diagnoisis31") {
                        $("#diagnoisis31divt").show();
                        $("#diagnoisis31div").show();

                        $("#diagnoisis31div").append('<span class="ulidigimgchk">' + checkMarkBox + '</span>' + $(this).parent().find('label').text() + '<br>');

                        diagansiscodes = diagansiscodes + "," + $(this).attr('id');
                    } else if (tagname === "diagnoisis32") {
                       
                        $("#diagnoisis32divt").show();
                        $("#diagnoisis32div").show();

                        $("#diagnoisis32div").append('<span class="ulidigimgchk">' + checkMarkBox + '</span>' + $(this).parent().find('label').text() + '<br>');

                        diagansiscodes = diagansiscodes + "," + $(this).attr('id');
                    } else {
                        if (typeof value !== "undefined") {
                            var taname = $(this).attr("name");

                            if (taname !== undefined) {

                                var category = "" + taname.substring(0, 8);
                                var subcategory = "" + taname.substring(0, 12);
                                ///console.log(tname);

                                if (subcategory.startsWith("t1proc")) {

                                    if ($(this).parent().find('label').text() !== "No") {

                                        if (!subcategoryarr.includes(subcategory) && !subcategoryarr.includes(subcategory)) {
                                            var selectionhead = "";
                                            var selectionsubhead = "";
                                            var selectcategoryhead = "";
                                            if ($('#' + subcategory + 'category').text() === "" || $('#' + subcategory + 'category').text() === " ") {
                                                selectionhead = $('#' + category + 'category').text();
                                                // alert("first"+ $('#' + category + 'category').text());
                                                //   $('#procedurecode_result').append('<br>');


                                            } else {
                                                selectcategoryhead = $('#' + category + 'category').text();
                                                selectionhead = $('#' + subcategory + 'category').text();
                                                // alert( $('#' + category + 'category').text());
                                                // alert("second"+$('#' + subcategory + 'category').text());

                                                if (selectcategoryhead !== "")
                                                {
                                                    $('#procedurecode_result').append('<br /><div id="' + category + 'mcategory" class="row"> ' +
                                                            '<label class="col-form-label font-style-label"  style="font-weight:bold" ><u>' + selectcategoryhead + ':</u> </label> ' +
                                                            '</div> <br/>');

                                                }
                                                if (selectionhead !== "")
                                                {
                                                    //  alert("entered");
                                                    $('#procedurecodev_result').append('<br /><div id="' + category + 'mcategory" class="row"> ' +
                                                            '<label class="col-form-label font-style-label"  style="font-weight:bold" ><u>' + selectionhead + ': </u></label>' +
                                                            '</div> <br />');
                                                }


                                            }
                                            if (selectcategoryhead !== "") {
                                                $('#procedurecode_result').append('<div id="' + subcategory + 'category" class="row"> ' +
                                                        '<span class="ulidigimgchk"><label class="col-form-label font-style-label"  style="margin:0 5px;font-weight:bold;display: inline-block;" >' + selectionhead + '  </label><br/>' +
                                                        '<ul class="ulliimg" style="list-style: none !important;"><li><label class="ulliimglbl col-form-label " id="' + subcategory + 'procdesc"></label></li></ul></span>  ' +
                                                        '</div>');


                                                $('#procedurecodev_result').append('<div id="' + subcategory + 'categorycde" class="row"> ' +
                                                        '<span class="ulidigimgchk"><label class="col-form-label font-style-label"  style="margin:0 5px;font-weight:bold;display: inline-block;" >' + selectionhead + '  </label><br />' +
                                                        '<ul class="ulliimg" style="list-style: none !important;"><li><label class="ulliimglbl col-form-label " id="' + subcategory + 'procdesccde"></label></li></ul></span>  ' +
                                                        '</div>');
                                            } else {
//                                                $('#procedurecode_result').append('<div id="' + subcategory + 'category" class="row"> ' +
//                                                        '<label class="col-form-label font-style-label"  style="font-weight:bold" >' + selectionhead + '  </label>' +
//                                                        '<label class="clear col-form-label " id="' + subcategory + 'procdesc"></label>  ' +
//                                                        '</div>');


                                                $('#procedurecode_result').append('<div id="' + subcategory + 'category" class="row"> ' +
                                                        '<span class="ulidigimgchk"><label class="col-form-label font-style-label"  style="margin:0 5px;font-weight:bold;display: inline-block;" >' + selectionhead + '  </label><br/>' +
                                                        '<ul class="ulliimg" style="list-style: none !important;"><li><label class="ulliimglbl col-form-label " id="' + subcategory + 'procdesc"></label></li></ul></span> ' +
                                                        '</div>');


                                                $('#procedurecodev_result').append('<div class=" col-form-label " id="' + subcategory + 'procdesccde"></div>');
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
                                                    if (response !== "") {
                                                        if ($(this).parent().find('label').text() === "") {
                                                            var txt = $(this).parents('tr').find('td').text();
                                                            console.log($.trim(txt));
                                                            var imglbl1 = checkMarkBox + obj[0].proc_code + '<br />';
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
                                        });


                                    }


                                    $('#procedure_count').val(1);

                                }


                            }
                        }
                    }
                    // }
                });

                $('#resultcodev').val('');

                var diagcount = diagansiscodes.split(",");
                $('#disganosiscode').val(diagansiscodes);
                $('#disganosiscodecount').val(diagcount.length);

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

//procedure code scripts
$(function () {
    $('[data-toggle="popover"]').popover({
        html: true,
        title: 'Help',
//                title: 'Help<a class="close" href="#">&times;</a>',
    });
    $('[data-toggle="popover"]').click(function (e) {
        e.stopPropagation();
    });

    $(document).click(function (e) {
        if (($('.popover').has(e.target).length == 0) || $(e.target).is('.close')) {
            $('[data-toggle="popover"]').popover('hide');
        }
    });


    $('#popoverId').popover({
        html: true,
        title: 'Help<a class="close" href="#");">&times;</a>',
        content: 'At least 2 problems need to be selected from following 7 items. <br>(i) Sinus Problem.<br>(ii) Cyst/Abscess of Tissue.<br>(iii) Soft & Hard Tissue & Bone / Biopsy.<br>(iv) Lesion/Cyst of Bone.<br>(v) Zygomatic (can use w/ Sleep problem).<br>(vi) Fracture Bone.<br>(vii) Implant or Bone Graft failure',
        //    content: $('#popoverContent').html(),
    });
    $('#bonegrafts').popover({
        html: true,
        title: 'Help',
        content: 'If Maxilla/Mandible is selected, "Small/Large" is mandatory',
        //    content: $('#popoverContent').html(),
    });
    $('#implantfail').popover({
        html: true,
        title: 'Help',
        content: 'If Maxilla/Mandible is selected, "Hardware, Superficial, Deep" is mandatory',
        //    content: $('#popoverContent').html(),
    });
    $('#sutureId').popover({
        html: true,
        title: 'Help',
        content: 'Only one of the options could be selected',
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
        if (($('.popover').has(e.target).length == 0) || $(e.target).is('.close')) {
            $('#popoverId').popover('hide');
            $('#sutureId').popover('hide');
            $('#implantfail').popover('hide');
            $('#bonegrafts').popover('hide');
        }
    });
});
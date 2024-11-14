/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
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
//                if (!$('#ddlpractice').val()) {
//                    $('#ddlpractice').focus();
//                    $('.form-1').addClass('was-validated');
//                    msgbox("Invalid Practice", "Pre Estimate Form", "error");
//                    return false;
//                }
//                if (!$('#ddlpatient').val()) {
//                    $('#ddlpatient').focus();
//                    $('.form-1').addClass('was-validated');
//                    msgbox("Invalid Patient", "Pre Estimate Form", "error");
//                    return false;
//                }
//                if (!$('#dob').val()) {
//                    $('#dob').focus();
//                    $('.form-1').addClass('was-validated');
//                    msgbox("Invalid DOB", "Pre Estimate Form", "error");
//                    return false;
//                }
//                if (!$('#ddlprovider').val()) {
//                    $('#ddlprovider').focus();
//                    $('.form-1').addClass('was-validated');
//                    msgbox("Invalid Provider", "Pre Estimate Form", "error");
//                    return false;
//                }
//

            }
        }
    });
    });

function addNewSurgicalSheet() {
    $('#btnnewSurgicalSheet').addClass('d-none');
    $('#table_v').addClass('d-none');
    $('#new_traysheet').removeClass('d-none');
}

<%-- 
    Document   : estimatedetails
    Created on : Aug 27, 2022, 12:38:14 AM
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<c:if test="${not empty estimatelist}">
    <c:set var="conditionVar" value="0"/>
    <c:if test="${not empty secondaryInsurance and secondaryInsurance!=0}"> 
        <c:set var="conditionVar" value="1"/>
    </c:if>

    <div class="container card-body" style="margin-top:15px; padding:0 25px!important;">
        <div class="row border-bottom card-header bg-secondary text-white border-secondary" style="padding:7px 0!important;">
            <div class="col-1"  style="text-align: center;">
                <label class="col-form-label font-style-label" for="">SI No</label>
            </div>
            <div class="col-4">
                <label class="col-form-label font-style-label"  for="">Selected Procedure</label>
            </div>
            <div class="col-1"  style="text-align: right;">
                <label class="col-form-label font-style-label"  for="">Fee</label>
            </div>
            <div class="col"  style="text-align: center;">
                <label class="col-form-label font-style-label"  for="">Visit No</label> 
            </div> 
            <div class="col-2"  style="text-align: center;">
                <label class="col-form-label font-style-label"  for="">Pri Cov %</label> 
            </div> 
            <c:if test="${conditionVar==1}">
                <div class="col-2"  style="text-align: center;">
                    <label class="col-form-label font-style-label"  for="">Sec Cov %</label> 
                </div> 
            </c:if>

        </div>
    </div>
    <c:forEach  var="estimate" items="${estimatelist}" varStatus="iter">
        <div class="container card-body" style="padding:0 25px!important;">
            <div class="row border-bottom border-secondary  d-flex align-items-center justify-content-center" style="padding:6px 0px;"> 
                <div  class="col-1"  style="text-align: center; ">${estimate.sno}</div>
                <div class="col-4">${estimate.procedureDesc}</div>
                <div class="col-1" style="text-align: right;"><fmt:formatNumber type="number" groupingUsed = "false" minFractionDigits="2" maxFractionDigits="2" value="${estimate.fee}" /></div>
                <div class="col"  style="text-align: center; ">

                    <input type="hidden"  name="preEstimateList[${iter.index}].sno" value="${estimate.sno}" />
                    <input type="hidden"  name="preEstimateList[${iter.index}].procedureDesc" value="${estimate.procedureDesc}" /> 
                    <input type="hidden"  name="preEstimateList[${iter.index}].fee" value="${estimate.fee}" />  
                    <input type="hidden"  name="preEstimateList[${iter.index}].procedureCheckboxId" value="${estimate.procedureCheckboxId}" /> 
                    <select class="form-control-sm js-example-placeholder-multiple visit_selected" 
                            required id="visit_${estimate.procedureCheckboxId}" tabindex="" name="preEstimateList[${iter.index}].visitNo" style="text-align: center;width:75%;">
                        <option value="1">Visit 1</option>
                        <option value="2">Visit 2</option>
                        <option value="3">Visit 3</option>
                        <option value="4">Visit 4</option>
                        <option value="5">Visit 5</option>
                        <option value="6">Visit 6</option>
                        <option value="7">Visit 7</option>
                        <option value="8">Visit 8</option>
                        <option value="9">Visit 9</option>
                        <option value="10">Visit 10</option>
                        <option value="11">Visit 11</option>
                        <option value="12">Visit 12</option>
                        <option value="13">Visit 13</option>
                        <option value="14">Visit 14</option>
                        <option value="15">Visit 15</option>
                        <option value="16">Visit 16</option>
                        <option value="17">Visit 17</option>
                        <option value="18">Visit 18</option>
                        <option value="19">Visit 19</option>
                        <option value="20">Visit 20</option> 
                    </select>

                </div>
                <div class="col-2 " style="text-align: center;"><input type="number" style="width: 75%;" class="prim_coverage" id="primcov_${estimate.procedureCheckboxId}" name="preEstimateList[${iter.index}].primaryCoverage" value="${primCoIns}" /></div>
                    <c:if test="${conditionVar==1}">
                    <div class="col-2" style="text-align: center;"><input type="number" style="width: 75%;" class="sec_coverage"  id="seccov_${estimate.procedureCheckboxId}" name="preEstimateList[${iter.index}].secondaryCoverage" value="${secondaryCoins}"  /></div>
                    </c:if>  
            </div>
        </div>
    </c:forEach>                                                                                                                                          
</c:if> 
<script>
    $(".visit_selected").on('change', function (e) {
        window.localStorage.setItem(this.id, this.value);
    });
    $(document).ready(function () {
        for (var i = 0; i < localStorage.length; i++) {
            //alert(localStorage.key(i));
            if (localStorage.key(i).includes("visit_"))
            {
                //  alert(localStorage.key(i));
                $("#" + localStorage.key(i)).val(localStorage.getItem(localStorage.key(i)));
            }
        }
    });
    $(".prim_coverage").on('change', function (e) {
        window.localStorage.setItem(this.id, this.value);
    });
    $(document).ready(function () {
        for (var i = 0; i < localStorage.length; i++) {
            if (localStorage.key(i).includes("primcov_"))
            {
                $("#" + localStorage.key(i)).val(localStorage.getItem(localStorage.key(i)));
            }
        }
    });
    $(".sec_coverage").on('change', function (e) {
        window.localStorage.setItem(this.id, this.value);
    });
    $(document).ready(function () {
        for (var i = 0; i < localStorage.length; i++) {
            if (localStorage.key(i).includes("seccov_"))
            {
                $("#" + localStorage.key(i)).val(localStorage.getItem(localStorage.key(i)));
            }
        }
    });
</script>

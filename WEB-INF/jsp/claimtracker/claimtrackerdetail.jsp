<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Claim Tracker Detail</title>
        <jsp:include page="../includes/header.jsp"></jsp:include>

        <section class="pcoded-main-container">
            <div class="pcoded-wrapper">
                <div class="pcoded-content">
                    <div class="pcoded-inner-content">
                        <div class="main-body">
                            <div class="page-wrapper">
                                <div class="row">
                                    <!-- Zero config table start -->
                                    <div class="col-sm-12">
                                        <div class="card">
                                            <div class="card-header">
                                                <span class="d-block m-t-5">
                                                    <img src="assets/images/qrcode.jpg">
                                                </span>
                                                <h4 class="ct-color">HEALTH INSURANCE CLAIM FORM</h4>
                                                <span class="d-block m-top-10">
                                                    <!--APPROVED BY NATIONAL UNIFORM CLAIM COMMITTEE (NUCC) 02/12-->
                                                </span>
<!--                                                <div class="d-flex">
                                                    <div>
                                                        <div style="display: inline;"><input type='checkbox'></div>
                                                        <div style="display: inline; margin: -4px"><input type='checkbox'></div>
                                                        <div style="display: inline;"><input type='checkbox'></div>
                                                    </div>
                                                    <div class="ml-auto">
                                                        <div style="display: inline;"><input type='checkbox'></div>
                                                        <div style="display: inline; margin: -4px"><input type='checkbox'></div>
                                                        <div style="display: inline;"><input type='checkbox'></div>
                                                    </div>
                                                </div>-->
                                                <div class="row ctd-rowborder">
                                                    <TABLE border="0" class="col-md-12">
                                                        <tr style="display: none">
                                                            <th>1</th>
                                                            <th>2</th>
                                                            <th>3</th>
                                                            <th>4</th>
                                                            <th>5</th>
                                                            <th>6</th>
                                                            <th>7</th>
                                                            <th>8</th>
                                                            <th>9</th>
                                                            <th>10</th>
                                                            <th>11</th>
                                                            <th>12</th>
                                                        </tr>
                                                        <tr class="tr-top-color">
                                                            <td class="ct-font-tw td-right-color">1. MEDICARE</td>
                                                            <td class="ct-font-tw td-right-color">MEDICAID</td>
                                                            <td class="ct-font-tw td-right-color">TRICARE</td>
                                                            <td class="ct-font-tw td-right-color">CHAMPVA</td>
                                                            <td class="ct-font-tw td-right-color">GROUP HEALTH PLAN</td>
                                                            <td class="ct-font-tw td-right-color">FECA BLKLUNG</td>
                                                            <td class="ct-font-tw td-right-color">OTHER</td>
                                                            <td colspan="5" class="ct-font-tw">
                                                                <div style="float: left">
                                                                    1a. INSURED’S I.D. NUMBER               
                                                                </div>
                                                                <div class="ml-auto1">
                                                                    <div style="float: right">
                                                                        (For Program in Item 1)
                                                                    </div>
                                                            </td>

                                                        </tr>
                                                        <tr class="tr-bottom-color">
                                                            <td class=" td-right-color">
                                                                <div class="custom-control custom-checkbox">
                                                                    <input type="checkbox" class="custom-control-input input-danger" id="customCheckct1"  
                                                                           onclick="return false;" onkeydown="return false;" 
                                                                    <c:if test="${claimDetail.c1_medicare=='MEDICARE'}"> checked="checked"</c:if>>
                                                                    <label class="custom-control-label" for="customCheckct1"> <span class="ct-font-ten ct-color"><i>(Medicare#)</i></span></label>
                                                                </div>
                                                            </td>
                                                            <td class=" td-right-color">
                                                                <div class="custom-control custom-checkbox">
                                                                    <input type="checkbox" class="custom-control-input input-danger" id="customCheckct2" 
                                                                           onclick="return false;" onkeydown="return false;"
                                                                    <c:if test="${claimDetail.c1_medicare=='MEDICAID'}"> checked="checked"</c:if>>
                                                                    <label class="custom-control-label" for="customCheckct2"><span class="ct-font-ten ct-color"><i>(Medicaid#)</i></span> </label>
                                                                </div>
                                                            </td>
                                                            <td class=" td-right-color">
                                                                <div class="custom-control custom-checkbox">
                                                                    <input type="checkbox" class="custom-control-input input-danger" id="customCheckct3"   
                                                                           onclick="return false;" onkeydown="return false;" <c:if test="${claimDetail.c1_medicare=='TRICARE'}"> checked="checked"</c:if>>
                                                                    <label class="custom-control-label" for="customCheckct3"><span class="ct-font-ten ct-color"><i>(ID#/DoD#)</i></span></label>
                                                                </div>
                                                            </td>
                                                            <td class=" td-right-color">
                                                                <div class="custom-control custom-checkbox">
                                                                    <input type="checkbox" class="custom-control-input input-danger" id="customCheckct4"   
                                                                           onclick="return false;" onkeydown="return false;" <c:if test="${claimDetail.c1_medicare=='CHAMPVA'}"> checked="checked"</c:if>>
                                                                    <label class="custom-control-label" for="customCheckct4"><span class="ct-font-ten ct-color"><i>(Member ID#)</i></span></label>
                                                                </div>
                                                            </td>
                                                            <td class=" td-right-color">
                                                                <div class="custom-control custom-checkbox">
                                                                    <input type="checkbox" class="custom-control-input input-danger" id="customCheckct5"   
                                                                           onclick="return false;" onkeydown="return false;" <c:if test="${claimDetail.c1_medicare=='GROUP HEALTH PLAN'}"> checked="checked"</c:if>>
                                                                    <label class="custom-control-label" for="customCheckct5"><span class="ct-font-ten ct-color"><i>(ID#)</i></span></label>
                                                                </div>
                                                            </td>
                                                            <td class=" td-right-color">
                                                                <div class="custom-control custom-checkbox">
                                                                    <input type="checkbox" class="custom-control-input input-danger" id="customCheckct6"   
                                                                           onclick="return false;" onkeydown="return false;" <c:if test="${claimDetail.c1_medicare=='FECA BLKLUNG'}"> checked="checked"</c:if>>
                                                                    <label class="custom-control-label" for="customCheckct6"><span class="ct-font-ten ct-color"><i>(ID#)</i></span></label>
                                                                </div>
                                                            </td>
                                                            <td class=" td-right-color">
                                                                <div class="custom-control custom-checkbox">
                                                                    <input type="checkbox" class="custom-control-input input-danger" id="customCheckct7"   
                                                                           onclick="return false;" onkeydown="return false;" <c:if test="${claimDetail.c1_medicare=='OTHER'}"> checked="checked"</c:if>>
                                                                    <label class="custom-control-label" for="customCheckct7"><span class="ct-font-ten ct-color"><i>(ID#)</i></span></label>
                                                                </div>
                                                            </td>
                                                            <td colspan="5">${claimDetail.c1a_insuredidnumber}</td>
                                                        </tr>
                                                        <!--========================3 ROWS=================================-->    
                                                        <tr>
                                                            <td colspan="4" class="td-right-color ct-font-tw">2. PATIENT’S NAME (Last Name, First Name, Middle Initial)</td>
                                                            <td colspan="1" class="ct-font-tw" style="width: 13%">3. PATIENT’S BIRTH DATE
                                                                <!--        <small class="form-text text-muted">DD | MM | YYYY </small>-->
                                                            </td>
                                                            <td colspan="2" class="ct-font-tw td-right-color"><span class="ct-margin-35">SEX</span></td>
                                                            <td colspan="5" class="td-right-color ct-font-tw">4. INSURED’S NAME (Last Name, First Name, Middle Initial)</td>
                                                        </tr>
                                                        <tr class="tr-bottom-color">
                                                            <td colspan="4" class="td-right-color">${claimDetail.c2_patientlastname}<c:if test="${claimDetail.c2_patientfirstname !=NULL}">,</c:if> ${claimDetail.c2_patientfirstname}</td>
                                                            <Td colspan="1">
                                                                <small class="form-text text-muted ct-color ct-mar-dob">MM / DD / YYYY </small>
                                                                <span class="ct-mar-dob">${claimDetail.c3_patientdob}</span>
                                                            </td>
                                                            <Td colspan="2" class="td-right-color">
                                                                <div class="form-group row">
                                                                    <div class="col-12 ct-font-tw">
                                                                        <div class="custom-control custom-checkbox custom-control-inline">
                                                                            <input type="checkbox" class="custom-control-input input-danger" id="customCheckinlct8"   
                                                                           onclick="return false;" onkeydown="return false;" <c:if test="${claimDetail.c3_sex=='M'}"> checked="checked"</c:if>>
                                                                            <label class="custom-control-label" for="customCheckinlct8" style="padding: 3px" >M</label>
                                                                        </div>
                                                                        <div class="custom-control custom-checkbox custom-control-inline">
                                                                            <input type="checkbox" class="custom-control-input input-danger" id="customCheckinlct9"   
                                                                           onclick="return false;" onkeydown="return false;" <c:if test="${claimDetail.c3_sex=='F'}"> checked="checked"</c:if>>
                                                                            <label class="custom-control-label" for="customCheckinlct9"  style="padding: 3px" >F</label>
                                                                        </div>

                                                                    </div>
                                                                </div>

                                                            </td>
                                                            <td colspan="5">
                                                                ${claimDetail.c4_insuredlastname} ${claimDetail.c4_insuredfirstname} 
                                                            </td>

                                                        </tr>
                                                        <!--========================4th ROWS=================================-->    
                                                        <tr>
                                                            <td colspan="4" class="td-right-color ct-font-tw">5. PATIENT’S ADDRESS (No., Street)</td>
                                                            <td colspan="3" class="td-right-color ct-font-tw">6. PATIENT RELATIONSHIP TO INSURED</td>
                                                            <td colspan="5" class="td-right-color ct-font-tw">7. INSURED’S ADDRESS (No., Street)</td>
                                                        </tr>
                                                        <tr class="tr-bottom-color">
                                                            <td colspan="4" class="td-right-color">${claimDetail.c5_patientaddrss}</td>
                                                            <Td colspan="3" class="td-right-color">
                                                                <div class="form-group row">
                                                                    <div class="col-12 ct-font-tw">
                                                                        <div class="custom-control custom-checkbox custom-control-inline">
                                                                            <input type="checkbox" class="custom-control-input input-danger" id="customCheckinlct10"   
                                                                           onclick="return false;" onkeydown="return false;" <c:if test="${claimDetail.c6_patientrelationship=='Self'}"> checked="checked"</c:if>>
                                                                            <label class="custom-control-label" for="customCheckinlct10" style="padding: 3px" > Self</label>
                                                                        </div>
                                                                        <div class="custom-control custom-checkbox custom-control-inline">
                                                                            <input type="checkbox" class="custom-control-input input-danger" id="customCheckinlct11"   
                                                                           onclick="return false;" onkeydown="return false;" <c:if test="${claimDetail.c6_patientrelationship=='Spouse'}"> checked="checked"</c:if>>
                                                                            <label class="custom-control-label" for="customCheckinlct11" style="padding: 3px" > Spouse</label>
                                                                        </div>
                                                                        <div class="custom-control custom-checkbox custom-control-inline">
                                                                            <input type="checkbox" class="custom-control-input input-danger" id="customCheckinlct12"   
                                                                           onclick="return false;" onkeydown="return false;" <c:if test="${claimDetail.c6_patientrelationship=='Child'}"> checked="checked"</c:if>>
                                                                            <label class="custom-control-label" for="customCheckinlct12" style="padding: 3px" > Child</label>
                                                                        </div>
                                                                        <div class="custom-control custom-checkbox custom-control-inline" style="margin-left: -10px">
                                                                            <input type="checkbox" class="custom-control-input input-danger" id="customCheckinlct13"   
                                                                           onclick="return false;" onkeydown="return false;" <c:if test="${claimDetail.c6_patientrelationship=='Other'}"> checked="checked"</c:if>>
                                                                            <label class="custom-control-label" for="customCheckinlct13" style="padding: 3px" > Other</label>
                                                                        </div>

                                                                    </div>
                                                                </div>

                                                            </td> 

                                                            <td colspan="5">
                                                               ${claimDetail.c7_insuredaddress}
                                                            </td>

                                                        </tr>

                                                        <!--========================5th ROWS=================================-->    
                                                        <tr>
                                                            <td colspan="3" class="td-right-color ct-font-tw">City</td>
                                                            <td colspan="1" class="td-right-color ct-font-tw">State</td>
                                                            <td colspan="3" class="td-right-color ct-font-tw">8. RESERVED FOR NUCC USE</td>
                                                            <td colspan="4" class="td-right-color ct-font-tw">City</td>
                                                            <td colspan="1" class="td-right-color ct-font-tw">State</td>
                                                        </tr>
                                                        <tr>
                                                            <td colspan="3" class="td-bottom-color"> ${claimDetail.c5_patientcity} </td>
                                                            <Td colspan="1" class="td-bottom-color td-left-color td-right-color">${claimDetail.c5_patientstate}</td>
                                                            <td colspan="3" rowspan="3" class="td-right-color td-bottom-color">
                                                               ${claimDetail.c8_reservedfornuccuse}
                                                            </td>
                                                            <td colspan="4" class="td-bottom-color td-left-color td-right-color">${claimDetail.c7_insuredcity} </td>
                                                            <td colspan="1" class="td-bottom-color">${claimDetail.c7_insuredstate}</td>

                                                        </tr>

                                                        <!--========================6th ROWS=================================-->    
                                                        <tr>
                                                            <td colspan="4" class="td-right-color ct-font-tw">
                                                                <div class="form-group row">
                                                                    <div class="col-6 td-right-color">
                                                                        <span class="ct-font-tw">
                                                                            Zip Code
                                                                        </span>
                                                                    </div>
                                                                    <div class="col-6">
                                                                        <span class="ct-font-tw">TELEPHONE (Include Area Code)</span>                   
                                                                    </div>
                                                                </div>
                                                            </td>
                                                            <!--<td colspan="1" class="td-right-color ct-font-tw">TELEPHONE (Include Area Code)</td>-->

                                                            <td colspan="4" class="td-right-color ct-font-tw">Zip Code</td>
                                                            <td colspan="1" class="td-right-color ct-font-tw">TELEPHONE (Include Area Code)</td>
                                                        </tr>
                                                        <tr>
                                                            <td colspan="4" class="td-bottom-color td-right-color">
                                                                <div class="form-group row" style="margin-top: -11px">
                                                                    <div class="col-6 td-right-color">
                                                                        <span>
                                                                            ${claimDetail.c5_patientzipcode}
                                                                        </span>
                                                                    </div>
                                                                    <div class="col-6">
                                                                        <span>${claimDetail.c5_patienttelephone}</span>                   
                                                                    </div>
                                                                </div>
                                                            </td>
                                                            <td colspan="4" class="td-left-color td-bottom-color">${claimDetail.c7_insuredzip}</td>
                                                            <TH colspan="1" class="td-left-color td-bottom-color">
                                                                (____)      
                                                            </th> 

                                                        </tr>
                                                        <!--========================7th ROWS=================================-->    
                                                        <tr>
                                                            <td colspan="4" class="td-right-color ct-font-tw">9. OTHER INSURED’S NAME (Last Name, First Name, Middle Initial)</td>
                                                            <td colspan="3" class="td-right-color ct-font-tw">10. IS PATIENT’S CONDITION RELATED TO:</td>

                                                            <td colspan="5" class="ct-font-tw">11. INSURED’S POLICY GROUP OR FECA NUMBER</td>
                                                        </tr>
                                                        <tr class="tr-bottom-color">
                                                            <td colspan="4" class="td-right-color">${claimDetail.c9_otherinsureslastname} ${claimDetail.c9_otherinsuresfirstname}</td>
                                                            <td colspan="3" class="td-right-color"> </td>
                                                            <td colspan="5" class="td-right-color">${claimDetail.c11_insuredpolicygroup}</td>
                                                        </tr>
                                                        <!--========================8th ROWS=================================-->    
                                                        <tr>
                                                            <td colspan="4" class="ct-font-tw td-right-color">a. OTHER INSURED’S POLICY OR GROUP NUMBER</td>
                                                            <td colspan="3" class="ct-font-tw td-right-color">a. EMPLOYMENT? (Current or Previous)</td>        
                                                            <td colspan="3" class="ct-font-tw">a. INSURED’S DATE OF BIRTH
                                                                <!--<small class="form-text text-muted ct-font-tw">DD | MM | YYYY</small>-->
                                                            </td>
                                                            <td colspan="2"class="ct-font-tw"><span class="ct-margin-35">SEX</span></td>
                                                        </tr>
                                                        <tr class="tr-bottom-color">
                                                            <td colspan="4" class="td-right-color">${claimDetail.c9a_otherinsuredpolicy} </td>
                                                            <td colspan="3" class="td-right-color">
                                                                <div class="form-group row">
                                                                    <div class="col-9 ct-font-tw">
                                                                        <div class="custom-control custom-checkbox custom-control-inline">
                                                                            <input type="checkbox" class="custom-control-input input-danger" id="customCheckinlct14"   
                                                                           onclick="return false;" onkeydown="return false;" <c:if test="${claimDetail.c10a_employment=='Y'}"> checked="checked"</c:if>>
                                                                            <label class="custom-control-label" for="customCheckinlct14"  style="padding: 3px" >Yes</label>
                                                                        </div>
                                                                        <div class="custom-control custom-checkbox custom-control-inline" >
                                                                            <input type="checkbox" class="custom-control-input input-danger" id="customCheckinlct15"  
                                                                           onclick="return false;" onkeydown="return false;" <c:if test="${claimDetail.c10a_employment=='N'}"> checked="checked"</c:if>>
                                                                            <label class="custom-control-label" for="customCheckinlct15" style="padding: 3px" >No</label>
                                                                        </div>

                                                                    </div>
                                                                </div> 
                                                            </td>
                                                            <Td colspan="3">
                                                                <small class="form-text text-muted ct-color ct-mar-dob">MM / MM / YYYY </small>
                                                                <span class="ct-mar-dob">${claimDetail.c11a_insureddob}</span>
                                                            </td>
                                                            <TH colspan="2">
                                                                <div class="form-group row">
                                                                    <div class="col-12 ct-font-tw">
                                                                        <div class="custom-control custom-checkbox custom-control-inline">
                                                                            <input type="checkbox" class="custom-control-input input-danger" id="customCheckinlct16" 
                                                                           onclick="return false;" onkeydown="return false;" 
                                                                                   <c:if test="${claimDetail.c11a_insuredsex=='M'}"> checked="checked"</c:if>>
                                                                            <label class="custom-control-label" for="customCheckinlct16" style="padding: 3px">M</label>
                                                                        </div>
                                                                        <div class="custom-control custom-checkbox custom-control-inline">
                                                                            <input type="checkbox" class="custom-control-input input-danger" id="customCheckinlct17" 
                                                                           onclick="return false;" onkeydown="return false;" 
                                                                                   <c:if test="${claimDetail.c11a_insuredsex=='F'}"> checked="checked"</c:if>>
                                                                            <label class="custom-control-label" for="customCheckinlct17"  style="padding: 3px">F</label>
                                                                        </div>

                                                                    </div>
                                                                </div>

                                                            </th>

                                                        </tr>

                                                        <!--========================9th ROWS=================================-->    
                                                        <tr>
                                                            <td colspan="4" class="td-right-color ct-font-tw">b. RESERVED FOR NUCC USE</td>
                                                            <td colspan="3" class="td-right-color ct-font-tw">b. AUTO ACCIDENT?
                                                                <span> Place<small>State</small></span>
                                                            </td>        
                                                            <td colspan="5" class="ct-font-tw">b. OTHER CLAIM ID (Designated by NUCC)</td>
                                                        </tr>
                                                        <tr class="tr-bottom-color">
                                                            <td colspan="4" class="td-right-color">${claimDetail.c9b_reservedfornuccuse}</td>
                                                            <td colspan="3" class="td-right-color">
                                                                <div class="form-group row">
                                                                    <div class="col-7 ct-font-tw">
                                                                        <div class="custom-control custom-checkbox custom-control-inline">
                                                                            <input type="checkbox" class="custom-control-input input-danger" id="customCheckinlct18"  
                                                                           onclick="return false;" onkeydown="return false;" <c:if test="${claimDetail.c10b_autoaccident=='Y'}"> checked="checked"</c:if>>
                                                                            <label class="custom-control-label" for="customCheckinlct18" style="padding: 3px">Yes</label>
                                                                        </div>
                                                                        <div class="custom-control custom-checkbox custom-control-inline">
                                                                            <input type="checkbox" class="custom-control-input input-danger" id="customCheckinlct19"  
                                                                           onclick="return false;" onkeydown="return false;" <c:if test="${claimDetail.c10b_autoaccident=='N'}"> checked="checked"</c:if>>
                                                                            <label class="custom-control-label" for="customCheckinlct19" style="padding: 3px" >No</label>
                                                                        </div>
                                                                    </div>
                                                                   <!-- <div class="col-5">
                                                                        ${claimDetail.c10b_autoaccident}
                                                                    </div>-->
                                                                </div> 
                                                            </td>
                                                            <TH colspan="1">
                                                                <!-- DB Value--->     
                                                            </th>
                                                            <TH colspan="4">
                                                                <div class="form-group row">
                                                                    <div class="col-9">
                                                                       ${claimDetail.c11b_otherclaimid}                
                                                                    </div>
                                                                </div>

                                                            </th>

                                                        </tr>

                                                        <!--========================10th ROWS=================================-->    
                                                        <tr>
                                                            <td colspan="4" class="td-right-color ct-font-tw">c. RESERVED FOR NUCC USE</td>
                                                            <td colspan="3" class="td-right-color ct-font-tw">c. OTHER ACCIDENT?</td>        
                                                            <td colspan="5" class="td-right-color ct-font-tw">c. INSURANCE PLAN NAME OR PROGRAM NAME</td>
                                                        </tr>
                                                        <tr class="tr-bottom-color">
                                                            <td colspan="4" class="td-right-color">${claimDetail.c9c_reservedfornuccuse}</td>
                                                            <td colspan="3" class="td-right-color">
                                                                <div class="form-group row">
                                                                    <div class="col-7 ct-font-tw">
                                                                        <div class="custom-control custom-checkbox custom-control-inline">
                                                                            <input type="checkbox" class="custom-control-input input-danger" id="customCheckinlct20"  
                                                                           onclick="return false;" onkeydown="return false;" 
                                                                                   <c:if test="${claimDetail.c10c_otheraccident=='Y'}"> checked="checked"</c:if>>
                                                                            <label class="custom-control-label" for="customCheckinlct20" style="padding: 3px">Yes</label>
                                                                        </div>
                                                                        <div class="custom-control custom-checkbox custom-control-inline">
                                                                            <input type="checkbox" class="custom-control-input input-danger" id="customCheckinlct21"  
                                                                           onclick="return false;" onkeydown="return false;" 
                                                                                   <c:if test="${claimDetail.c10c_otheraccident=='N'}"> checked="checked"</c:if>>
                                                                            <label class="custom-control-label" for="customCheckinlct21" style="padding: 3px">No</label>
                                                                        </div>

                                                                    </div>

                                                                </div> 
                                                            </td>
                                                            <Td colspan="5">
                                                                ${claimDetail.c11c_insuranceplanname}
                                                            </td>
                                                        </tr>

                                                        <!--========================11th ROWS=================================-->    
                                                        <tr>
                                                            <td colspan="4" class="ct-font-tw td-right-color">d. INSURANCE PLAN NAME OR PROGRAM NAME</td>
                                                            <td colspan="3" class="ct-font-tw td-right-color">d. CLAIM CODES (Designated by NUCC)</td>        
                                                            <td colspan="5" class="ct-font-tw">d. IS THERE ANOTHER HEALTH BENEFIT PLAN?</td>
                                                        </tr>
                                                        <tr class="tr-bottom-color">
                                                            <td colspan="4" class="td-right-color">${claimDetail.c9d_insuranceplanname}</td>
                                                            <td colspan="3" class="td-right-color">
                                                                <!-- DB Value--->
                                                            </td>
                                                            <td colspan="5">
                                                                <div class="form-group row ct-font-tw">
                                                                    <div class="col-5 ct-font-tw">
                                                                        <div class="custom-control custom-checkbox custom-control-inline">
                                                                            <input type="checkbox" class="custom-control-input input-danger" id="customCheckinlct22" 
                                                                           onclick="return false;" onkeydown="return false;" 
                                                                                   <c:if test="${claimDetail.c11d_otherbenefitplan=='Y'}"> checked="checked"</c:if>>
                                                                            <label class="custom-control-label" for="customCheckinlct22" style="padding: 3px">Yes</label>
                                                                        </div>
                                                                        <div class="custom-control custom-checkbox custom-control-inline">
                                                                            <input type="checkbox" class="custom-control-input input-danger" id="customCheckinlct23" 
                                                                           onclick="return false;" onkeydown="return false;" 
                                                                                   <c:if test="${claimDetail.c11d_otherbenefitplan=='N'}"> checked="checked"</c:if>>
                                                                            <label class="custom-control-label" for="customCheckinlct23" style="padding: 3px">No</label>
                                                                        </div>                    
                                                                    </div>
                                                                    <div class="col-7">
                                                                        <small><b>If yes,</b> Complete items 9,9a, and 9d</small>
                                                                    </div>
                                                                </div>
                                                            </td>
                                                        </tr>
                                                        <!--========================12th ROWS=================================-->    
                                                        <tr>
                                                            <td colspan="7" class="ct-font-tw td-right-color">
                                                                <span align="center" style="margin: 100px;font-weight: bold;">READ BACK OF FORM BEFORE COMPLETING & SIGNING THIS FORM.</span>
                                                                <p>12. PATIENT’S OR AUTHORIZED PERSON’S SIGNATURE </p>
                                                            </td>
                                                            <td colspan="5" class="ct-font-tw td-right-color">13. INSURED’S OR AUTHORIZED PERSON’S SIGNATURE<p>&nbsp;</p></td>        
                                                        </tr>
                                                        <tr class="tr-bottom-color">
                                                            <td colspan="7" class="td-right-color">
                                                                <div class="form-group row">
                                                                    <div class="col-7">
                                                                        <div class="custom-control custom-checkbox custom-control-inline">
                                                                            <span class="ct-font-tw">Signed : </span>
                                                                              ${claimDetail.c12_signed}
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-5">
                                                                        <div class="custom-control custom-checkbox custom-control-inline">
                                                                             <span class="ct-font-tw">Date  : </span>
                                                                              ${claimDetail.c12_signeddate}
                                                                        </div>
                                                                    </div>
                                                                </div>

                                                            </td>
                                                            <td colspan="5">
                                                                <div class="form-group row">
                                                                    <div class="col-12">
                                                                        <div class="custom-control custom-checkbox custom-control-inline">                                                                           
                                                                            <span class="ct-font-tw">Signed : </span>
                                                                              ${claimDetail.c13_insuredpersonsign}
                                                                        </div>
                                                                    </div>

                                                                </div>
                                                            </td>
                                                        </tr>

                                                        <!--========================13th ROWS=================================-->    
                                                        <tr style="border-top: 2px solid #ed1f26 ">
                                                            <td colspan="4" class="ct-font-tw td-right-color">14. DATE OF CURRENT ILLNESS, INJURY, or PREGNANCY (LMP)
                                                                <!--<small>MM | DD | YYYY</small>-->
                                                                <div class="form-group row">
                                                                    <div class="col-5">
                                                                        <small class="form-text text-muted ct-color ct-mar-dob">MM / DD / YYYY </small>
                                                                        <span class="ct-mar-dob">${claimDetail.c14_dateofcurrentillness}</span>
                                                                    </div>
                                                                    <div class="col-7">
                                                                        <small class=" text-muted ct-color ct-mar-dob">QUAL </small>
                                                                        ${claimDetail.c14_qual}
                                                                        
                                                                    </div>
                                                                </div>
                                                            </td>
                                                            <td colspan="3" class="ct-font-tw">15. OTHER DATE
                                                                <div class="form-group row">
                                                                    <div class="col-7 ct-font-tw">
                                                                        <span>
                                                                             ${claimDetail.c15_qual} 
                                                                        </span>
                                                                    </div>
                                                                    <div class="col-5">
                                                                        <small class="form-text text-muted ct-color ct-mar-dob">MM / DD / YYYY </small>
                                                                        <span class="ct-mar-dob">${claimDetail.c15_otherdate}</span>
                                                                    </div>

                                                                </div>
                                                                <!--                  <div class="form-group row">
                                                                                <div class="col-6"></div>
                                                                                <div class="col-6">
                                                                                   <small> MM | DD | YYYY </small>
                                                                                </div>
                                                                                </div>-->
                                                            </td>
                                                            <td colspan="5" class="ct-font-tw td-right-color tr-left-color">16. DATES PATIENT UNABLE TO WORK IN CURRENT OCCUPATION
                                                                <div class="ct-font-tw form-group row">
                                                                    <div class="col-6">
                                                                        <small style="margin-left: 27px;"> MM / DD / YYYY </small>
                                                                        <span><br>From ${claimDetail.c16_datepatientunabletoworkfrom}</span>
                                                                    </div>
                                                                    <div class="col-6">
                                                                        <small style="margin-left: 27px;"> MM / DD / YYYY </small>
                                                                        <span><br>To ${claimDetail.c16_datepatientunabletoworkto}</span>
                                                                    </div>
                                                                </div>
                                                            </td>        
                                                        </tr>
                                                        <!--    <tr>
                                                                <td colspan="4" class="td-right-color">
                                                                    <div class="form-group row">
                                                                        <div class="col-5">
                                                                             <small class="form-text text-muted ct-color ct-mar-dob">DD | MM | YYYY </small>
                                                               <span class="ct-mar-dob">22 | 12 | 1856123</span>
                                                                        </div>
                                                                        <div class="col-7">
                                                                            QUAL
                                                                        </div>
                                                                        </div>
                                                                </td>
                                                                <td colspan="3" class="td-right-color">
                                                                    <div class="form-group row">
                                                                        <div class="col-7">
                                                                            QUAL
                                                                        </div>
                                                                        <div class="col-5">
                                                        <span class="ct-mar-dob">22 | 12 | 1856</span>
                                                                        </div>
                                                                    </div>
                                                                </td>
                                                                <td colspan="5">
                                                                     <div class="ct-font-tw form-group row">
                                                                        <div class="col-6">
                                                                            From
                                                                        </div>
                                                                        <div class="col-6">
                                                                            TO
                                                                        </div>
                                                                        </div>
                                                                </td>
                                                            </tr>-->

                                                        <!--========================14th ROWS=================================-->    
                                                        <tr class="tr-top-color tr-bottom-color">
                                                            <td colspan="4" class="ct-font-tw td-right-color ">17. NAME OF REFERRING PROVIDER OR OTHER SOURCE
                                                                <div class="form-group row">
                                                                    <div class="col-2 td-right-color">
                                                                        &nbsp;
                                                                    </div>
                                                                    <div class="col-10">
                                                                        ${claimDetail.c17_nameofreferringprovider}
                                                                    </div>
                                                                </div>
                                                            </td>
                                                            <td colspan="3" class="td-right-color">
                                                                <div class="ct-font-tw1 row" style="margin: 0 -2px">
                                                                    <div class="col-2 td-bottom-color td-right-color">
                                                                        <span class="ct-color ct-font-tw">17a. </span>
                                                                    </div>
                                                                    <div class="col-2 td-bottom-color td-right-color">
                                                                        <span><b>&nbsp;</b> </span>
                                                                    </div>
                                                                    <div class="col-8 td-bottom-color">
                                                                        <span><b>${claimDetail.c17a_referringprovider}</b></span>
                                                                    </div>
                                                                    <div class="col-2 td-right-color">
                                                                        <span class="ct-color ct-font-tw">17b. </span>
                                                                    </div>
                                                                    <div class="col-2 td-right-color">
                                                                        <span class="ct-color"><b class="ct-font-tw">NPI</b> </span>
                                                                    </div>
                                                                    <div class="col-8 ">
                                                                        <span><b>${claimDetail.c17b_referphysiciannpi}</b></span>
                                                                    </div>
                                                                </div>
                                                            </td>
                                                            <!--        <td colspan="1">&nbsp;`</td>
                                                                    <td colspan="1">&nbsp;`</td>-->
                                                            <td colspan="5" class="ct-font-tw ">18. HOSPITALIZATION DATES RELATED TO CURRENT SERVICES
                                                                <div class="ct-font-tw row" style="margin: -7px 0px">
                                                                    <div class="col-6">
                                                                        <small style="margin-left: 27px;"> MM / DD / YYYY </small>
                                                                        <span><br>From ${claimDetail.c18_hospitalizationfrom}</span>
                                                                    </div>
                                                                    <div class="col-6">
                                                                        <small style="margin-left: 27px;"> MM / DD / YYYY </small>
                                                                        <span><br>To ${claimDetail.c18_hospitalizationto}</span>
                                                                    </div>
                                                                </div>
                                                            </td>        
                                                        </tr>
                                                        <!--    <tr class="tr-bottom-color">
                                                                <td colspan="4">
                                                                    <div class="form-group row">
                                                                        <div class="col-2">
                                                                            sssss  DB value 
                                                                        </div>
                                                                        <div class="col-10">
                                                                            ` DB value 
                                                                        </div>
                                                                        </div>
                                                                </td>
                                                                <td colspan="3">
                                                                    <div class="form-group row">
                                                                        <div class="col-2">
                                                                            17b.
                                                                        </div>
                                                                        <div class="col-2">
                                                                            NPI
                                                                        </div>
                                                                        <div class="col-8">
                                                                            ` DB --
                                                                        </div>
                                                                    </div>
                                                                </td>
                                                                <td colspan="5">
                                                                     <div class="form-group row">
                                                                        <div class="col-6">
                                                                            From
                                                                        </div>
                                                                        <div class="col-6">
                                                                            TO
                                                                        </div>
                                                                        </div>
                                                                </td>
                                                            </tr>-->

                                                        <!--========================15th ROWS=================================-->    
                                                        <tr class="tr-bottom-color">
                                                            <td colspan="7" class="td-right-color">
                                                                <div class="form-group row">
                                                                    <div class="col-12 ct-font-tw">
                                                                        19. ADDITIONAL CLAIM INFORMATION (Designated by NUCC)
                                                                    </div>
                                                                    <div class="col-12">
                                                                        <p>${claimDetail.c19_additionalclaiminfo} </p>
                                                                    </div>
                                                                </div>
                                                            </td> 
                                                            <td colspan="5" >
                                                                <div class="form-group1 row">
                                                                    <div class="col-6 ct-font-tw tr-right-color">
                                                                        20. OUTSIDE LAB? 
                                                                        <div class="custom-control1 custom-checkbox custom-control-inline">
                                                                            <div class="form-group row">
                                                                                <div class="col-6 ct-font-tw">
                                                                                    <div class="custom-control custom-checkbox custom-control-inline">
                                                                                        <input type="checkbox" class="custom-control-input input-danger" id="customCheckinlct24"
                                                                                               onclick="return false;" onkeydown="return false;"
                                                                                               <c:if test="${claimDetail.c20_outsidelab=='Y'}"> checked="checked"</c:if>>
                                                                                        <label class="custom-control-label" for="customCheckinlct24" style="padding: 3px">Yes</label>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="col-6 ct-font-tw">
                                                                                    <div class="custom-control custom-checkbox custom-control-inline">
                                                                                        <input type="checkbox" class="custom-control-input input-danger" id="customCheckinlct25"
                                                                                               onclick="return false;" onkeydown="return false;"
                                                                                               <c:if test="${claimDetail.c20_outsidelab=='N'}"> checked="checked"</c:if>>
                                                                                        <label class="custom-control-label" for="customCheckinlct25" style="padding: 3px">No</label>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-6 ct-font-tw">
                                                                        $ CHARGES 
                                                                        <div class="form-group row">
                                                                            <div class="col-6">
                                                                                <p>${claimDetail.c20_charges}</p>
                                                                            </div>
                                                                            <div class="col-6">
                                                                                <p>&nbsp;</p>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </td>        
                                                        </tr>
                                                        <!--========================16th ROWS=================================-->    
                                                        <tr>
                                                            <td colspan="7" class="tr-right-color">
                                                                <div class="row ct-font-tw">
                                                                    <div class="col-9">
                                                                        21. DIAGNOSIS OR NATURE OF ILLNESS OR INJURY Relate A-L to service line below (24E)                    
                                                                    </div>
                                                                    <div class="col-3">
                                                                        <div class="form-group row">
                                                                            <div class="col-6 ct-font-tw">
                                                                                <div class="custom-control custom-checkbox custom-control-inline">
                                                                                    ICD Ind
                                                                                </div>
                                                                            </div>
                                                                            <div class="col-1">
                                                                                <div class="custom-control custom-checkbox custom-control-inline">
                                                                                    <b>${claimDetail.c21_diagonsisofillness}</b>
                                                                                </div>
                                                                            </div>
                                                                            <div class="col-4">
                                                                                <div class="custom-control custom-checkbox custom-control-inline">
                                                                                    <b>&nbsp;</b>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>

                                                            </td>
                                                            <td colspan="3" class="ct-font-tw td-right-color">
                                                                22. RESUBMISSION CODE
                                                                <span>${claimDetail.c22_resubmissioncode}</span>
                                                            </td>        
                                                            <td colspan="2">
                                                              <span class="ct-font-tw">  ORIGINAL REF. NO</span>
                                                                ${claimDetail.c22_orignalrefno}
                                                            </td>        
                                                        </tr>
                                                        <tr class="tr-bottom-color">
                                                            <td colspan="5">
                                                                <div class="row">
                                                                    <div class="col-md-4">
                                                                        <ul style="list-style: none;">
                                                                            <li><span>A.&#160;</span>${claimDetail.c21a}</li>
                                                                            <li><span>E.&#160;</span>${claimDetail.c21e}</li>
                                                                            <li><span>I.&#160;</span>${claimDetail.c21i}</li>
                                                                        </ul>
                                                                    </div>
                                                                    <div class="col-md-4">
                                                                         <ul style="list-style: none;">
                                                                            <li><span>B.&#160;</span>${claimDetail.c21b}</li>
                                                                            <li><span>F.&#160;</span>${claimDetail.c21f}</li>
                                                                            <li><span>J.&#160;</span>${claimDetail.c21j}</li>
                                                                         </ul>
                                                                    </div>
                                                                    <div class="col-md-4">
                                                                        <ul style="list-style: none;">
                                                                            <li><span>C.&#160;</span>${claimDetail.c21c} </li>
                                                                            <li><span>G.&#160;</span>${claimDetail.c21g}</li>
                                                                            <li><span>K.&#160;</span>${claimDetail.c21k}</li>
                                                                         </ul>
                                                                    </div>
                                                                </div>
                                                            </td>
                                                            <td colspan="2" class="td-right-color">
                                                                <div class="custom-control custom-checkbox custom-control-inline">                       
                                                                    <div class="row">
                                                                        <div class="col-md-12">
                                                                            <ul style="list-style: none;">
                                                                                <li><span>D.&#160;</span>${claimDetail.c21d}</li>
                                                                                <li><span>H.&#160;</span>${claimDetail.c21h}</li>
                                                                                <li><span>L.&#160;</span>${claimDetail.c21l}</li>
                                                                             </ul>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </td>
                                                            <td colspan="5"  class="ct-font-tw td-top-color">
                                                                23. PRIOR AUTHORIZATION NUMBER
                                                                <p>${claimDetail.c23_priorauthorization}</p>
                                                            </td>
                                                        </tr>


                                                        <!--========================17th ROWS=================================-->    
                                                        <!--========================18th ROWS Big tables loop=================================-->    
                                                        <tr>
                                                            <TD colspan="13">
                                                                <TABLE border="1" width="100%" height="100%">
                                                                    <TR colspan="13" style="display: none">
                                                                        <TH class="center"> 1 </TH>
                                                                        <TH class="center"> 2 </TH>
                                                                        <TH class="center"> 3 </TH>
                                                                        <TH class="center"> 4 </TH>
                                                                        <TH class="center"> 5 </TH>
                                                                        <TH class="center"> 6 </TH>
                                                                        <TH class="center"> 7 </TH>
                                                                        <TH class="center"> 8 </TH>
                                                                        <TH class="center"> 9 </TH>
                                                                        <TH class="center"> 10 </TH>
                                                                        <TH class="center"> 11 </TH>
                                                                        <TH class="center"> 12 </TH>
                                                                        <TH class="center"> 13 </TH>
                                                                        <TH class="center"> 14</TH>
                                                                        <TH class="center"> 15 </TH>
                                                                        <TH class="center"> 16 </TH>
                                                                        <TH class="center"> 17 </TH>
                                                                        <TH class="center"> 18 </TH>
                                                                        <TH class="center"> 19 </TH>
                                                                        <TH class="center"> 20 </TH>
                                                                    </TR>
                                                                    <!------------------------------------------------------------------------------------------>    
                                                                    <TR colspan="13" class="ct-font-tw tr-bottom-color tr-left-color tr-right-color tr-top-color">
                                                                        <td class="center"> 24. A. </td>
                                                                        <td class="center" colspan="5">DATE(S) OF SERVICE</td>
                                                                        <td class="center" rowspan="3">B.<br>PLACE OF<br>SERVICE</td>
                                                                        <td class="center" rowspan="3">C.<br>EMG</td>
                                                                        <td class="center" colspan="5">D. PROCEDURES, SERVICES, OR SUPPLIES</td>
                                                                        <td class="center" rowspan="3">E.<br>DIAGNOSIS <br> POINTER</td>
                                                                        <td class="center" rowspan="3" colspan="2">F. $ CHARGES</td>
                                                                        <td class="center" rowspan="3">G. DAYS OR UNITS</td>
                                                                        <td class="center" rowspan="3">H.EPSDT Family Plan</td>
                                                                        <td class="center" rowspan="3">I. ID.QUAL</td>
                                                                        <td class="center" rowspan="3">J.RENDERING PROVIDER ID. #</td>
                                                                    </TR>
                                                                    <TR colspan="13" class="ct-font-tw tr-bottom-color">
                                                                        <td class="center" colspan="3">From</td>
                                                                        <td class="center" colspan="3">To</td>
                                                                        <td class="center" colspan="5"><small>(Explain Unusual Circumstances)</small></td>

                                                                    </tr>
                                                                    <TR colspan="13" class="ct-font-tw tr-bottom-color tr-right-color">
                                                                        <td class="center"  colspan="3">MM / DD / YY</td>
<!--                                                                        <td class="center" >DD</td>
                                                                        <td class="center"> YYYY</td>-->
                                                                        <td class="center" colspan="3">MM / DD / YY</td>
<!--                                                                        <td class="center" >DD</td>
                                                                        <td class="center"> YYYY</td>-->
                                                                        <td class="center">CPT/HCPCS </td>
                                                                        <td class="center" colspan="4">MODIFIER</td>
                                                                    </tr>
                                                                    <c:set var="totalLineItem" value="${fn:length(claimDetail.lineitem)}" />
                                                                    
                                                                    <c:forEach var="lineitem" items='${claimDetail.lineitem}'>
                                                                    <TR style="background:#fde8dd" class="tr-bottom-color">
                                                                        <TH class="center" colspan="18">&nbsp;</TH>
                                                                        <TH class="center" colspan="1">&nbsp;</TH>
                                                                         <td class="center" colspan="1">${lineitem.remderingId}</td>
                                                                    </TR>             
                                                                    <TR class="tr-full-bclr">
                                                                        <td class="center" colspan="3"> ${lineitem.dosFrom} </td>
<!--                                                                        <td class="center"> ${lineitem.dosFrom}</td>
                                                                        <td class="center"> ${lineitem.dosFrom} </td>-->
                                                                        <td class="center" colspan="3"> ${lineitem.dosTo}</td>
<!--                                                                        <td class="center"> ${lineitem.dosTo} </td>
                                                                        <td class="center"> ${lineitem.dosTo} </td>-->
                                                                        <td class="center"> ${lineitem.placeOfService} </td>
                                                                        <td class="center"> ${lineitem.emg} </td>
                                                                        <td class="center"> ${lineitem.cpt} </td>
                                                                        <td class="center"> ${lineitem.modifierA}&nbsp; </td>
                                                                        <td class="center"> ${lineitem.modifierB}&nbsp; </td>
                                                                        <td class="center"> ${lineitem.modifierC}&nbsp; </td>
                                                                        <td class="center"> ${lineitem.modifierD}&nbsp; </td>
                                                                        <td class="center"> ${lineitem.diagnosisPointer} </td>                                                                         
                                                                             
                                                                        <td class="center"  colspan="2"> ${lineitem.charges}</td>
                                                                        
                                                                        <td class="center"> ${lineitem.daysUnits} </td>  
                                                                        <!--<td class="center">&nbsp; </td>-->
                                                                        <td class="center"> ${lineitem.idQual} </td>
                                                                        <td class="center"> NPI</td>
                                                                        <td class="center"> ${lineitem.claimno} </td>
                                                                    </TR>
                                                                        
                                                                    </TR>  
                                                                    </c:forEach>
                                                                    <!--====================================2nd set---------------------------------------->
                                                                    <c:if test="${totalLineItem<6}">
                                                                    <c:forEach begin="1" end="${6-totalLineItem}" varStatus="loop">
     
                                                                    <TR style="background:#fde8dd" class="tr-right-color">
                                                                        <TH class="center" colspan="18">&nbsp;</TH>
                                                                        <TH class="center" colspan="2">&nbsp;</TH>
                                                                    </TR>             
                                                                    <TR class="tr-full-bclr">
                                                                        <TH class="center"> &nbsp;  </TH>
                                                                        <TH class="center"> &nbsp; </TH>
                                                                        <TH class="center"> &nbsp;  </TH>
                                                                        <TH class="center"> &nbsp; </TH>
                                                                        <TH class="center"> &nbsp;  </TH>
                                                                        <TH class="center"> &nbsp;  </TH>
                                                                        <TH class="center"> &nbsp;  </TH>
                                                                        <TH class="center"> &nbsp; </TH>
                                                                        <TH class="center"> &nbsp;  </TH>
                                                                        <TH class="center"> &nbsp;  </TH>
                                                                        <TH class="center"> &nbsp; </TH>
                                                                        <TH class="center"> &nbsp; </TH>
                                                                        <TH class="center"> &nbsp; </TH>
                                                                        <TH class="center"> &nbsp;  </TH>                 
                                                                        <TH class="center"> &nbsp;  </TH>                 
                                                                        <TH class="center"> &nbsp;  </TH>                 
                                                                        <TH class="center"> &nbsp;  </TH>                 
                                                                        <TH class="center"> &nbsp;  </TH>                 
                                                                        <td class="center">NPI</Td>                 
                                                                        <TH class="center"> &nbsp;  </TH>                 
                                                                    </TR>
                                                                    </c:forEach>
                                                                    </c:if>
                                                                    
                                                                    <TR style="display: none">
                                                                        <TH class="center"> 1 </TH>
                                                                        <TH class="center"> 2 </TH>
                                                                        <TH class="center"> 3 </TH>
                                                                        <TH class="center"> 4 </TH>
                                                                        <TH class="center"> 5 </TH>
                                                                        <TH class="center"> 6 </TH>
                                                                        <TH class="center"> 7 </TH>
                                                                        <TH class="center"> 8 </TH>
                                                                        <TH class="center"> 9 </TH>
                                                                        <TH class="center"> 10 </TH>
                                                                        <TH class="center"> 11 </TH>
                                                                        <TH class="center"> 12 </TH>
                                                                        <TH class="center"> 13 </TH>
                                                                        <TH class="center"> 14 </TH>
                                                                        <TH class="center"> 15 </TH>
                                                                        <TH class="center"> 16 </TH>
                                                                        <TH class="center"> 17 </TH>
                                                                        <TH class="center"> 18 </TH>
                                                                        <TH class="center"> 19 </TH>
                                                                        <TH class="center"> 20 </TH>
                                                                    </TR>             
                                                                </TABLE>
                                                            </TD>

                                                        </tr>
                                                        <!--================================1to 6 table end===================================-->
                                                        <tr>
                                                            <TD colspan="13">
                                                                <TABLE border="0" width="100%">
                                                                    <TR style="display: none">
                                                                        <TH class="center"> 1 </TH>
                                                                        <TH class="center"> 2 </TH>
                                                                        <TH class="center"> 3 </TH>
                                                                        <TH class="center"> 4 </TH>
                                                                        <TH class="center"> 5 </TH>
                                                                        <TH class="center"> 6 </TH>
                                                                        <TH class="center"> 7 </TH>
                                                                        <TH class="center"> 8 </TH>
                                                                        <TH class="center"> 9 </TH>
                                                                        <TH class="center"> 10 </TH>
                                                                        <TH class="center"> 11 </TH>
                                                                        <TH class="center"> 12 </TH>
                                                                        <TH class="center"> 13 </TH>
                                                                        <TH class="center"> 14</TH>
                                                                        <TH class="center"> 15</TH>
                                                                        <TH class="center"> 16</TH>
                                                                        <TH class="center"> 17</TH>
                                                                        <TH class="center"> 18</TH>
                                                                        <TH class="center"> 19</TH>
                                                                        <TH class="center"> 20</TH>
                                                                    </TR>
                                                                    <!------------------------------------------------------------------------------------------>    
                                                                    <TR class="ct-font-tw tr-top-color"> 
                                                                        <td class="td-right-color" colspan="5">25. FEDERAL TAX I.D. NUMBER</td>
                                                                        <td class="tr-right-color">SSN</td>
                                                                        <td class="tr-right-color">EIN </td>
                                                                        <td class="tr-right-color" colspan="3"> 26. PATIENT’S ACCOUNT NO </td>
                                                                        <td class="tr-right-color" colspan="4">27. ACCEPT ASSIGNMENT?<br>
                                                                            <small>(For govt.claims, see back)</small>
                                                                        </td>
                                                                        <td class="tr-bottom-color ct-font-tw tr-right-color" colspan="2" >28. TOTAL CHARGE <br></td>
                                                                        <td class="ct-font-tw tr-right-color" colspan="2">29. AMOUNT PAID</td>
                                                                        <td class="ct-font-tw " colspan="2">30. Rsvd for NUCC Use</td>
                                                                    </TR>             
                                                                    <TR class="tr-right-color"> 
                                                                        <td colspan="5" class="td-right-color">
                                                                            ${claimDetail.c25_federaltaxid}                
                                                                        </td>
                                                                        <td class="td-right-color">                    
                                                                            <div class="custom-control custom-checkbox custom-control-inline">
                                                                                <input type="checkbox" class="custom-control-input input-danger" id="customCheckinlct28"
                                                                                       onclick="return false;" onkeydown="return false;"
                                                                                       <c:if test="${claimDetail.c25_federaltaxidtype=='SSN'}"> checked="checked"</c:if>>
                                                                                <label class="custom-control-label" for="customCheckinlct28">&nbsp;</label>
                                                                            </div>                             
                                                                        </td>
                                                                        <td class="td-right-color">
                                                                            <div class="custom-control custom-checkbox custom-control-inline">
                                                                                <input type="checkbox" class="custom-control-input input-danger" id="customCheckinlct29"
                                                                                       onclick="return false;" onkeydown="return false;"
                                                                                       <c:if test="${claimDetail.c25_federaltaxidtype=='EIN'}"> checked="checked"</c:if>>
                                                                                <label class="custom-control-label" for="customCheckinlct29">&nbsp;</label>
                                                                            </div>
                                                                        </td>
                                                                        <td class="td-right-color" colspan="3">${claimDetail.c26_patientaccountno}</td>
                                                                        <td class="ct-font-tw" colspan="2">
                                                                            <div class="custom-control custom-checkbox custom-control-inline">
                                                                                <input type="checkbox" class="custom-control-input input-danger" id="customCheckinlct26" 
                                                                                       onclick="return false;" onkeydown="return false;"
                                                                                        <c:if test="${claimDetail.c27_acceptassignment=='Y'}"> checked="checked"</c:if>>
                                                                                <label class="custom-control-label" for="customCheckinlct26" style="padding: 3px;">YES</label>
                                                                            </div>
                                                                        </td>
                                                                        <td class="ct-font-tw" colspan="2">
                                                                            <div class="custom-control custom-checkbox custom-control-inline">
                                                                                <input type="checkbox" class="custom-control-input input-danger" id="customCheckinlct27" 
                                                                                       onclick="return false;" onkeydown="return false;"
                                                                                        <c:if test="${claimDetail.c27_acceptassignment=='N'}"> checked="checked"</c:if>>
                                                                                <label class="custom-control-label" for="customCheckinlct27" style="padding: 3px;">NO</label>
                                                                            </div>
                                                                        </td>
                                                                         <td class="tr-left-color tr-right-color tr-bottom-color">$</td>
                                                                        <td class="tr-right-color tr-bottom-color">${claimDetail.c28_totalcharge}</td>
                                                                        <td class="tr-bottom-color tr-right-color tr-top-color">$</td>
                                                                        <td class="tr-right-color tr-bottom-color tr-top-color">${claimDetail.c29_amountpaid}</td>
                                                                        <td class="tr-right-color tr-bottom-color tr-top-color">$</td>
                                                                        <td class="center tr-bottom-color tr-top-color">${claimDetail.c30_rsvdfornuccuse}</td>
                                                                    </TR>
                                                                    
                                                                    </tr>
                                                                    <TR> 
                                                                        <td class="td-right-color td-top-color" colspan="7" rowspan="4"><span class="ct-font-tw ">  31. SIGNATURE OF PHYSICIAN OR SUPPLIER
                                                                            INCLUDING DEGREES OR CREDENTIALS </span>
                                                                            <p> ${claimDetail.c31_orderingphysician}</p>
                                                                        </td>
                                                                        <td class="td-bottom-color td-right-color td-top-color" colspan="7" rowspan="4"><span class="ct-font-tw "> 32. SERVICE FACILITY LOCATION INFORMATION </span>
                                                                            <p>${claimDetail.c32_facilityname}<br />
                                                                                ${claimDetail.c32_address}
                                                                                ${claimDetail.c32_city} 
                                                                                ${claimDetail.c32_state} 
                                                                                ${claimDetail.c32_zipcode}<br></p>
                                                                        </td>    
                                                                        <td colspan="6" rowspan="4"><span class="ct-font-tw "> 33. BILLING PROVIDER INFO & PH #</span> (${claimDetail.c33_telephone})
                                                                            <p>${claimDetail.c33_billingprovider}<br />
                                                                                ${claimDetail.c33_address}
                                                                                ${claimDetail.c33_city} 
                                                                                ${claimDetail.c33_state} 
                                                                                ${claimDetail.c33_zipcode}<br></p>
                                                                        </td> 
                                                                    </TR>             
                                                                    <TR>&nbsp;</TR>             
                                                                    <TR>&nbsp;</TR>             
                                                                    <TR>&nbsp;</TR>             
                                                                    <TR class=""> 
                                                                        <td class="td-right-color" colspan="4"><span class="ct-font-tw">SIGNED </span> ${claimDetail.c31_signed}
                                                                         
                                                                        </td>
                                                                        <td class="td-right-color" colspan="3"><span class="ct-font-tw">Date : ${claimDetail.c31_date}</span>
                                                                            
                                                                        </td>
                                                                        <td class="td-right-color" colspan="3"><span class="ct-font-tw "> a.</span> ${claimDetail.c32a_npi}</td>
                                                                        <td class="td-right-color" colspan="4" style="background:#fde8dd"><span class="ct-font-tw "> b.</span> ${claimDetail.c32b_facilityid}</td>
                                                                        <td class="tr-right-color tr-top-color" colspan="3"><span class="ct-font-tw "> a.</span> ${claimDetail.c33a_billingnpi}</td>
                                                                        <td class="tr-top-color" colspan="3" style="background:#fde8dd"><span class="ct-font-tw "> b.</span> ${claimDetail.c33b_billingid} ${claimDetail.c33b_billingno}</td>
                                                                    </TR>             
                                                                    <TR style="display: none">
                                                                        <TH class="center"> 1 </TH>
                                                                        <TH class="center"> 2 </TH>
                                                                        <TH class="center"> 3 </TH>
                                                                        <TH class="center"> 4 </TH>
                                                                        <TH class="center"> 5 </TH>
                                                                        <TH class="center"> 6 </TH>
                                                                        <TH class="center"> 7 </TH>
                                                                        <TH class="center"> 8 </TH>
                                                                        <TH class="center"> 9 </TH>
                                                                        <TH class="center"> 10 </TH>
                                                                        <TH class="center"> 11 </TH>
                                                                        <TH class="center"> 12 </TH>
                                                                        <TH class="center"> 13 </TH>
                                                                        <TH class="center"> 14</TH>
                                                                        <TH class="center"> 15</TH>
                                                                        <TH class="center"> 16</TH>
                                                                        <TH class="center"> 17</TH>
                                                                        <TH class="center"> 18</TH>
                                                                        <TH class="center"> 19</TH>
                                                                        <TH class="center"> 20</TH>
                                                                    </TR>             
                                                                </TABLE>
                                                            </TD>
 
<!--                                                            <td colspan="5">
                                                                <TABLE border="0" width="100%">
                                                                    <TR style="display: none">              
                                                                        <TH class="center"> 1</TH>
                                                                        <TH class="center"> 2 </TH>
                                                                        <TH class="center"> 3 </TH>
                                                                        <TH class="center"> 4 </TH>
                                                                        <TH class="center"> 5 </TH>
                                                                        <TH class="center"> 6 </TH>
                                                                    </TR>
                                                                    <TR class="tr-full-bclr">              
                                                                        <td class="ct-font-tw tr-right-color" colspan="2" >28. TOTAL CHARGE <br></td>
                                                                        <td class="ct-font-tw tr-right-color" colspan="2">29. AMOUNT PAID</td>
                                                                        <td class="ct-font-tw " colspan="2">30. Rsvd for NUCC Use</td>
                                                                    </TR>
                                                                    <TR class="tr-full-bclr">              
                                                                        <td class="tr-right-color">$</td>
                                                                        <td class="tr-right-color">${claimDetail.c28_totalcharge}</td>
                                                                        <td class="tr-right-color">$</td>
                                                                        <td class="tr-right-color">${claimDetail.c29_amountpaid}</td>
                                                                        <td class="tr-right-color">$</td>
                                                                        <td class="center">${claimDetail.c30_rsvdfornuccuse}</td>
                                                                    </TR>
                                                                    <TR>              
                                                                        <td class="ct-font-tw" colspan="6" rowspan="4">33. BILLING PROVIDER INFO & PH # (${claimDetail.c33_telephone})
                                                                            <p>${claimDetail.c33_billingprovider}<br>
                                                                                ${claimDetail.c33_address}<br>
                                                                                ${claimDetail.c33_city} 
                                                                                ${claimDetail.c33_state} 
                                                                                ${claimDetail.c33_zipcode}<br></p>
                                                                        </td>                 
                                                                    </TR>
                                                                    <TR></TR>
                                                                    <TR></TR>
                                                                    <TR></TR>
                                                                    <TR class="tr-full-bclr">               
                                                                        <td class="ct-font-tw" colspan="3"> a. ${claimDetail.c33a_billingnpi}</td>
                                                                        <td class="ct-font-tw" colspan="3"> b. ${claimDetail.c33b_billingid}</td>
                                                                    </TR>
                                                                    <TR style="display: none">              
                                                                        <td class="center"> 1</td>
                                                                        <td class="center"> 2 </td>
                                                                        <td class="center"> 3 </td>
                                                                        <td class="center"> 4 </td>
                                                                        <td class="center"> 5 </td>
                                                                        <td class="center"> 6 </td>
                                                                    </TR>
                                                                </TABLE>
                                                            </td>-->
 
                                                        </tr>
                                                        <!--=======================================================================================-->    
                                                    </TABLE>
                                                </div>

                                            </div> 
                                        </div>
                                    </div>
                                </div>
                                <!-- [ Main Content ] end -->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>    


    <jsp:include page="../includes/footer.jsp"></jsp:include>

    <script>
        $(document).ready(function () {
            //$('.pcoded-navbar').removeClass('pcoded-navbar menupos-fixed menu-dark menu-item-icon-style6').addClass('pcoded-navbar menupos-fixed menu-dark menu-item-icon-style6 navbar-collapsed');
           // $('#mobile-collapse').removeClass('mobile-menu').addClass('mobile-menu on');
        });

    </script>
<%-- 
    Document   : access_privilege
    Created on : 23-May-2022, 1:17:51 am
    Author     : GP
--%>

<%@page import="com.heathomation.persistence.model.Privilege"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%> 
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<input type="hidden" name="userId" value="${userId}"/>
<%
    List<String> prevList = (ArrayList) request.getAttribute("privilegeList");
    List<String> rolePrivilegeResList = (ArrayList) request.getAttribute("rolePrivilegeResList");
%>
<!---------------------------------------------------------------------------------->  
<style>
    .session-scroll .tbl_font td{
        font-family: 'Roboto', 'sans-serif' ! important;
        font-size: 13px ! important;
        color: #686c71 ! important;
    }
    .use_pri{
        color: #111;
        font-size: 13px;
    }
</style>
<div class="row">
    <div class="col-12 filter-bar invoice-list">
        <div class="row">
            <div class="col-md-6">

                <c:if test="${   role == 'ROLE_ADMIN'
                                 or role == 'ROLE_USER'
                                 or role == 'ROLE_ENTITY_ADMIN'
                                 or role == 'ROLE_ENTITY_STAFF'
                                 or role == 'ROLE_CORP_PRACTICE'
                                 or role == 'ROLE_CORP_ADMIN'
                                 or role == 'ROLE_CORP_STAFF'
                                 or role == 'ROLE_CORP_PROVIDER'
                                 or role == 'ROLE_GROUPCLINIC_PROVIDER'
                                 or role == 'ROLE_GROUPCLINIC_ADMIN'
                                 or role == 'ROLE_GROUPCLINIC_STAFF'
                                 or role == 'ROLE_BILLING_ADMIN'
                                 or role == 'ROLE_BILLING_STAFF'
                                 or role == 'ROLE_TRANSCRIBER'
                                 or role == 'ROLE_EDITOR'
                                 or role == 'ROLE_PROOFER'
                                 or role == 'ROLE_PRACTICE_ADMIN'
                                 or role == 'ROLE_PRACTICE_PROVIDER'
                                 or role == 'ROLE_PRACTICE_STAFF'
                                 or role == 'ROLE_REFERING_PROVIDER'
                                 or role == 'ROLE_PATIENT' 
                      }"> 
                    <div class="card card-border-c-blue" style="margin-bottom: 15px;">
                        <div class="card-body">
                            <div class="">
                                <h5 class="h5font15 d-inline-block m-b-10">Benefits</h5>
                            </div>
                            <div class="row">
                                <div class="col-6">

                                    <%if (rolePrivilegeResList.contains("NEW_BENEFIT_PRIVILEGE")) { %>
                                    <div class="custom-control custom-checkbox">
                                        <input  name="privileges"  type="checkbox" <%if (prevList.contains("NEW_BENEFIT_PRIVILEGE")) {
                                                out.print("checked");
                                            }%> value="NEW_BENEFIT_PRIVILEGE" class="custom-control-input input-primary" id="benefits_new">
                                        <label class="custom-control-label" for="benefits_new" style="padding-top: 2px;">New</label>
                                    </div>
                                    <%}%>
                                    <%if (rolePrivilegeResList.contains("VIEW_BENEFIT_PRIVILEGE")) { %>
                                    <div class="custom-control custom-checkbox">
                                        <input  name="privileges"  type="checkbox" <%if (prevList.contains("VIEW_BENEFIT_PRIVILEGE")) {
                                                out.print("checked");
                                            }%> value="VIEW_BENEFIT_PRIVILEGE" class="custom-control-input input-primary" id="benefits_view">
                                        <label class="custom-control-label" for="benefits_view" style="padding-top: 2px;">View</label>
                                    </div>
                                    <%}%>
                                </div>
                                <div class="col-6">
                                    <%if (rolePrivilegeResList.contains("BULK_BENEFIT_PRIVILEGE")) { %>
                                    <div class="custom-control custom-checkbox">
                                        <input  name="privileges"  type="checkbox" <%if (prevList.contains("BULK_BENEFIT_PRIVILEGE")) {
                                                out.print("checked");
                                            }%> value="BULK_BENEFIT_PRIVILEGE" class="custom-control-input input-primary" id="benefits_ev">
                                        <label class="custom-control-label" for="benefits_ev" style="padding-top: 2px;">Bulk EV</label>
                                    </div>
                                    <%}%>
                                    <%if (rolePrivilegeResList.contains("JOBLIST_BENEFIT_PRIVILEGE")) { %>
                                    <div class="custom-control custom-checkbox">
                                        <input  name="privileges"  type="checkbox" <%if (prevList.contains("JOBLIST_BENEFIT_PRIVILEGE")) {
                                                out.print("checked");
                                            }%> value="JOBLIST_BENEFIT_PRIVILEGE" class="custom-control-input input-primary" id="benefits_job">
                                        <label class="custom-control-label" for="benefits_job" style="padding-top: 2px;">EV Job List</label>
                                    </div>
                                    <%}%>
                                </div>
                            </div>
                        </div>
                    </div>
                </c:if>
                <!------------------------------------------------------------------------------>
                <c:if test="${   role == 'ROLE_ADMIN'
                                 or role == 'ROLE_USER'
                                 or role == 'ROLE_ENTITY_ADMIN'
                                 or role == 'ROLE_ENTITY_STAFF'
                                 or role == 'ROLE_CORP_PRACTICE'
                                 or role == 'ROLE_CORP_ADMIN'
                                 or role == 'ROLE_CORP_STAFF'
                                 or role == 'ROLE_CORP_PROVIDER'
                                 or role == 'ROLE_GROUPCLINIC_PROVIDER'
                                 or role == 'ROLE_GROUPCLINIC_ADMIN'
                                 or role == 'ROLE_GROUPCLINIC_STAFF'
                                 or role == 'ROLE_BILLING_ADMIN'
                                 or role == 'ROLE_BILLING_STAFF' 
                                 or role == 'ROLE_EDITOR'
                                 or role == 'ROLE_PROOFER'
                                 or role == 'ROLE_PRACTICE_ADMIN'
                                 or role == 'ROLE_PRACTICE_PROVIDER'
                                 or role == 'ROLE_PRACTICE_STAFF'
                                 or role == 'ROLE_REFERING_PROVIDER' 
                      }">  
                    <div class="card card-border-c-red" style="margin-bottom: 15px;">
                        <div class="card-body">
                            <div class="">
                                <h5 class="h5font15 d-inline-block m-b-10">Patient Info</h5>
                            </div>
                            <div class="row">
                                <%if (rolePrivilegeResList.contains("NEW_PATIENT_INFO")) { %>
                                <div class="col-4">
                                    <div class="custom-control custom-checkbox">
                                        <input  name="privileges"  type="checkbox" <%if (prevList.contains("NEW_PATIENT_INFO")) {
                                                out.print("checked");
                                            }%> value="NEW_PATIENT_INFO" class="custom-control-input input-primary" id="patientinfo_new">
                                        <label class="custom-control-label" for="patientinfo_new" style="padding-top: 2px;">New</label>
                                    </div>
                                </div>
                                <%}%>
                                <%if (rolePrivilegeResList.contains("VIEW_PATIENT_INFO")) { %>
                                <div class="col-4">
                                    <div class="custom-control custom-checkbox">
                                        <input  name="privileges"  type="checkbox" <%if (prevList.contains("VIEW_PATIENT_INFO")) {
                                                out.print("checked");
                                            }%>  value="VIEW_PATIENT_INFO" class="custom-control-input input-primary" id="patientinfo_view">
                                        <label class="custom-control-label" for="patientinfo_view" style="padding-top: 2px;">View List</label>
                                    </div>
                                </div>
                                <%}%>
                                <%if (rolePrivilegeResList.contains("EDIT_PATIENT_INFO")) { %>
                                <div class="col-4">
                                    <div class="custom-control custom-checkbox">
                                        <input  name="privileges"  type="checkbox" <%if (prevList.contains("EDIT_PATIENT_INFO")) {
                                                out.print("checked");
                                            }%>  value="EDIT_PATIENT_INFO" class="custom-control-input input-primary" id="patientinfo_edit">
                                        <label class="custom-control-label" for="patientinfo_edit" style="padding-top: 2px;">Edit</label>
                                    </div>
                                </div>
                                <%}%>
                            </div>
                            <%-- <div class="row" style="border-top: 1px solid rgba(0,0,0,.1); margin-top: 5px;">
                               <div class="col-6" style="margin-top: 5px">
                                   <div class="custom-control custom-checkbox">
                                       <input  name="privileges"  type="checkbox" value="" class="custom-control-input input-primary" id="demography">
                                       <label class="custom-control-label" for="demography" style="padding-top: 2px;">Demography</label>
                                   </div>
                                   <div class="custom-control custom-checkbox">
                                       <input  name="privileges"  type="checkbox" value="" class="custom-control-input input-primary" id="insurance">
                                       <label class="custom-control-label" for="insurance" style="padding-top: 2px;">Insurance</label>
                                   </div>
                                   <div class="custom-control custom-checkbox">
                                       <input  name="privileges"  type="checkbox" value="" class="custom-control-input input-primary" id="smoking_history">
                                       <label class="custom-control-label" for="smoking_history" style="padding-top: 2px;">Smoking History</label>
                                   </div>
                               </div>
                               <div class="col-6" style="margin-top: 5px">
                                   <div class="custom-control custom-checkbox">
                                       <input  name="privileges"  type="checkbox" value="" class="custom-control-input input-primary" id="allergy">
                                       <label class="custom-control-label" for="allergy" style="padding-top: 2px;">Allergy</label>
                                   </div>
                                   <div class="custom-control custom-checkbox">
                                       <input  name="privileges"  type="checkbox" value="" class="custom-control-input input-primary" id="viewpatient">
                                       <label class="custom-control-label" for="viewpatient" style="padding-top: 2px;">View Patient</label>
                                   </div>
                               </div>  
                               
                           </div>--%>
                        </div>
                    </div>
                </c:if>
                <!------------------------------------------------------------------------------>                
                <c:if test="${   role == 'ROLE_ADMIN'
                                 or role == 'ROLE_USER'
                                 or role == 'ROLE_ENTITY_ADMIN'
                                 or role == 'ROLE_ENTITY_STAFF'
                                 or role == 'ROLE_CORP_PRACTICE'
                                 or role == 'ROLE_CORP_ADMIN'
                                 or role == 'ROLE_CORP_STAFF'
                                 or role == 'ROLE_CORP_PROVIDER'
                                 or role == 'ROLE_GROUPCLINIC_PROVIDER'
                                 or role == 'ROLE_GROUPCLINIC_ADMIN'
                                 or role == 'ROLE_GROUPCLINIC_STAFF'
                                 or role == 'ROLE_BILLING_ADMIN'
                                 or role == 'ROLE_BILLING_STAFF'
                                 or role == 'ROLE_TRANSCRIBER'
                                 or role == 'ROLE_EDITOR'
                                 or role == 'ROLE_PROOFER'
                                 or role == 'ROLE_PRACTICE_ADMIN'
                                 or role == 'ROLE_PRACTICE_PROVIDER'
                                 or role == 'ROLE_PRACTICE_STAFF'
                                 or role == 'ROLE_REFERING_PROVIDER'
                                 or role == 'ROLE_PATIENT' 
                      }">
                    <div class="card card-border-c-red" style="margin-bottom: 15px;">
                        <div class="card-body">
                            <div class="">
                                <h5 class="h5font15 d-inline-block m-b-10">E-SuperBill</h5>
                            </div>
                            <div class="row">
                                <div class="col-6">
                                    <%if (rolePrivilegeResList.contains("NEW_SUPERBILL_PRIVILEGE")) { %>
                                    <div class="custom-control custom-checkbox">
                                        <input  name="privileges"  type="checkbox" <%if (prevList.contains("NEW_SUPERBILL_PRIVILEGE")) {
                                                out.print("checked");
                                            }%> value="NEW_SUPERBILL_PRIVILEGE" class="custom-control-input input-primary" id="esuperbill_new">
                                        <label class="custom-control-label" for="esuperbill_new" style="padding-top: 2px;">Create New</label>
                                    </div>
                                    <%}%>
                                    <%if (rolePrivilegeResList.contains("VIEW_SUPERBILL_PRIVILEGE")) { %>
                                    <div class="custom-control custom-checkbox">
                                        <input  name="privileges"  type="checkbox" <%if (prevList.contains("VIEW_SUPERBILL_PRIVILEGE")) {
                                                out.print("checked");
                                            }%> value="VIEW_SUPERBILL_PRIVILEGE" class="custom-control-input input-primary" id="esuperbill_view">
                                        <label class="custom-control-label" for="esuperbill_view" style="padding-top: 2px;">View List</label>
                                    </div>
                                    <%}%>
                                    <%if (rolePrivilegeResList.contains("EDIT_SUPERBILL_PRIVILEGE")) { %>
                                    <div class="custom-control custom-checkbox">
                                        <input  name="privileges"  type="checkbox" <%if (prevList.contains("EDIT_SUPERBILL_PRIVILEGE")) {
                                                out.print("checked");
                                            }%> value="EDIT_SUPERBILL_PRIVILEGE" class="custom-control-input input-primary" id="esuperbill_edit">
                                        <label class="custom-control-label" for="esuperbill_edit" style="padding-top: 2px;">Edit</label>
                                    </div>
                                    <%}%>
                                </div>
                                <div class="col-6">
                                    <%if (rolePrivilegeResList.contains("APPROVE_SUPERBILL_PRIVILEGE")) { %>
                                    <div class="custom-control custom-checkbox">
                                        <input  name="privileges"  type="checkbox" <%if (prevList.contains("APPROVE_SUPERBILL_PRIVILEGE")) {
                                                out.print("checked");
                                            }%> value="APPROVE_SUPERBILL_PRIVILEGE" class="custom-control-input input-primary" id="esuperbill_approve">
                                        <label class="custom-control-label" for="esuperbill_approve" style="padding-top: 2px;">Approve</label>
                                    </div>
                                    <%}%>
                                    <%if (rolePrivilegeResList.contains("REVIEW_SUPERBILL_PRIVILEGE")) { %>
                                    <div class="custom-control custom-checkbox">
                                        <input  name="privileges"  type="checkbox" <%if (prevList.contains("REVIEW_SUPERBILL_PRIVILEGE")) {
                                                out.print("checked");
                                            }%> value="REVIEW_SUPERBILL_PRIVILEGE" class="custom-control-input input-primary" id="esuperbill_review">
                                        <label class="custom-control-label" for="esuperbill_review" style="padding-top: 2px;">Review</label>
                                    </div>
                                    <%}%>
                                </div>
                            </div>
                        </div>
                    </div>
                </c:if> 
                
                  <c:if test="${   role == 'ROLE_ADMIN'
                                 or role == 'ROLE_USER'
                                 or role == 'ROLE_ENTITY_ADMIN'
                                 or role == 'ROLE_ENTITY_STAFF'
                                 or role == 'ROLE_CORP_PRACTICE'
                                 or role == 'ROLE_CORP_ADMIN'
                                 or role == 'ROLE_CORP_STAFF'
                                 or role == 'ROLE_CORP_PROVIDER'
                                 or role == 'ROLE_GROUPCLINIC_PROVIDER'
                                 or role == 'ROLE_GROUPCLINIC_ADMIN'
                                 or role == 'ROLE_GROUPCLINIC_STAFF'
                                 or role == 'ROLE_BILLING_ADMIN'
                                 or role == 'ROLE_BILLING_STAFF'
                                 or role == 'ROLE_TRANSCRIBER'
                                 or role == 'ROLE_EDITOR'
                                 or role == 'ROLE_PROOFER'
                                 or role == 'ROLE_PRACTICE_ADMIN'
                                 or role == 'ROLE_PRACTICE_PROVIDER'
                                 or role == 'ROLE_PRACTICE_STAFF'
                                 or role == 'ROLE_REFERING_PROVIDER'
                                 or role == 'ROLE_PATIENT' 
                      }">
                    <div class="card card-border-c-red" style="margin-bottom: 15px;">
                        <div class="card-body">
                            <div class="">
                                <h5 class="h5font15 d-inline-block m-b-10">Pre-Estimate</h5>
                            </div>
                            <div class="row">
                                <div class="col-6">
                                    <%if (rolePrivilegeResList.contains("NEW_PREESTIMATE_PRIVILEGE")) { %>
                                    <div class="custom-control custom-checkbox">
                                        <input  name="privileges"  type="checkbox" <%if (prevList.contains("NEW_PREESTIMATE_PRIVILEGE")) {
                                                out.print("checked");
                                            }%> value="NEW_PREESTIMATE_PRIVILEGE" class="custom-control-input input-primary" id="preestimate_new">
                                        <label class="custom-control-label" for="preestimate_new" style="padding-top: 2px;">Create New</label>
                                    </div>
                                    <%}%>
                                    <%if (rolePrivilegeResList.contains("VIEW_PREESTIMATE_PRIVILEGE")) { %>
                                    <div class="custom-control custom-checkbox">
                                        <input  name="privileges"  type="checkbox" <%if (prevList.contains("VIEW_PREESTIMATE_PRIVILEGE")) {
                                                out.print("checked");
                                            }%> value="VIEW_PREESTIMATE_PRIVILEGE" class="custom-control-input input-primary" id="preestimate_view">
                                        <label class="custom-control-label" for="preestimate_view" style="padding-top: 2px;">View List</label>
                                    </div>
                                    <%}%>
                                    <%if (rolePrivilegeResList.contains("EDIT_PREESTIMATE_PRIVILEGE")) { %>
                                    <div class="custom-control custom-checkbox">
                                        <input  name="privileges"  type="checkbox" <%if (prevList.contains("EDIT_PREESTIMATE_PRIVILEGE")) {
                                                out.print("checked");
                                            }%> value="EDIT_PREESTIMATE_PRIVILEGE" class="custom-control-input input-primary" id="preestimate_edit">
                                        <label class="custom-control-label" for="preestimate_edit" style="padding-top: 2px;">Edit</label>
                                    </div>
                                    <%}%>
                                </div>
                        
                            </div>
                        </div>
                    </div>
                </c:if> 
                
                 <c:if test="${   role == 'ROLE_ADMIN'
                                 or role == 'ROLE_USER'
                                 or role == 'ROLE_ENTITY_ADMIN'
                                 or role == 'ROLE_ENTITY_STAFF'
                                 or role == 'ROLE_CORP_PRACTICE'
                                 or role == 'ROLE_CORP_ADMIN'
                                 or role == 'ROLE_CORP_STAFF'
                                 or role == 'ROLE_CORP_PROVIDER'
                                 or role == 'ROLE_GROUPCLINIC_PROVIDER'
                                 or role == 'ROLE_GROUPCLINIC_ADMIN'
                                 or role == 'ROLE_GROUPCLINIC_STAFF'
                                 or role == 'ROLE_BILLING_ADMIN'
                                 or role == 'ROLE_BILLING_STAFF'
                                 or role == 'ROLE_TRANSCRIBER'
                                 or role == 'ROLE_EDITOR'
                                 or role == 'ROLE_PROOFER'
                                 or role == 'ROLE_PRACTICE_ADMIN'
                                 or role == 'ROLE_PRACTICE_PROVIDER'
                                 or role == 'ROLE_PRACTICE_STAFF'
                                 or role == 'ROLE_REFERING_PROVIDER'
                                 or role == 'ROLE_PATIENT' 
                      }">
                    <div class="card card-border-c-red" style="margin-bottom: 15px;">
                        <div class="card-body">
                            <div class="">
                                <h5 class="h5font15 d-inline-block m-b-10">Pre-authorization Request</h5>
                            </div>
                            <div class="row">
                                <div class="col-6">
                                    <%if (rolePrivilegeResList.contains("NEW_PREAUTHORIZATION_PRIVILEGE")) { %>
                                    <div class="custom-control custom-checkbox">
                                        <input  name="privileges"  type="checkbox" <%if (prevList.contains("NEW_PREAUTHORIZATION_PRIVILEGE")) {
                                                out.print("checked");
                                            }%> value="NEW_PREAUTHORIZATION_PRIVILEGE" class="custom-control-input input-primary" id="pre_auth_new">
                                        <label class="custom-control-label" for="pre_auth_new" style="padding-top: 2px;">Create New</label>
                                    </div>
                                    <%}%>
                                    <%if (rolePrivilegeResList.contains("VIEW_PREAUTHORIZATION_PRIVILEGE")) { %>
                                    <div class="custom-control custom-checkbox">
                                        <input  name="privileges"  type="checkbox" <%if (prevList.contains("VIEW_PREAUTHORIZATION_PRIVILEGE")) {
                                                out.print("checked");
                                            }%> value="VIEW_PREAUTHORIZATION_PRIVILEGE" class="custom-control-input input-primary" id="pre_auth_view">
                                        <label class="custom-control-label" for="pre_auth_view" style="padding-top: 2px;">View List</label>
                                    </div>
                                    <%}%>
                                    <%if (rolePrivilegeResList.contains("EDIT_PREAUTHORIZATION_PRIVILEGE")) { %>
                                    <div class="custom-control custom-checkbox">
                                        <input  name="privileges"  type="checkbox" <%if (prevList.contains("EDIT_PREAUTHORIZATION_PRIVILEGE")) {
                                                out.print("checked");
                                            }%> value="EDIT_PREAUTHORIZATION_PRIVILEGE" class="custom-control-input input-primary" id="pre_auth_edit">
                                        <label class="custom-control-label" for="pre_auth_edit" style="padding-top: 2px;">Edit</label>
                                    </div>
                                    <%}%>
                                </div>
                                <div class="col-6">
                                    
                                    <%if (rolePrivilegeResList.contains("REVIEW_PREAUTHORIZATION_PRIVILEGE")) { %>
                                    <div class="custom-control custom-checkbox">
                                        <input  name="privileges"  type="checkbox" <%if (prevList.contains("REVIEW_PREAUTHORIZATION_PRIVILEGE")) {
                                                out.print("checked");
                                            }%> value="REVIEW_PREAUTHORIZATION_PRIVILEGE" class="custom-control-input input-primary" id="pre_auth_review">
                                        <label class="custom-control-label" for="pre_auth_review" style="padding-top: 2px;">Review</label>
                                    </div>
                                    <%}%>
                                </div>
                            </div>
                        </div>
                    </div>
                </c:if> 
                
                <c:if test="${   role == 'ROLE_ADMIN'
                                 or role == 'ROLE_USER'
                                 or role == 'ROLE_ENTITY_ADMIN'
                                 or role == 'ROLE_ENTITY_STAFF'
                                 or role == 'ROLE_CORP_PRACTICE'
                                 or role == 'ROLE_CORP_ADMIN'
                                 or role == 'ROLE_CORP_STAFF'
                                 or role == 'ROLE_CORP_PROVIDER'
                                 or role == 'ROLE_GROUPCLINIC_PROVIDER'
                                 or role == 'ROLE_GROUPCLINIC_ADMIN'
                                 or role == 'ROLE_GROUPCLINIC_STAFF'
                                 or role == 'ROLE_BILLING_ADMIN'
                                 or role == 'ROLE_BILLING_STAFF'
                                 or role == 'ROLE_TRANSCRIBER'
                                 or role == 'ROLE_EDITOR'
                                 or role == 'ROLE_PROOFER'
                                 or role == 'ROLE_PRACTICE_ADMIN'
                                 or role == 'ROLE_PRACTICE_PROVIDER'
                                 or role == 'ROLE_PRACTICE_STAFF'
                                 or role == 'ROLE_REFERING_PROVIDER'
                                 or role == 'ROLE_PATIENT' 
                      }">
                    <div class="card card-border-c-red" style="margin-bottom: 15px;">
                        <div class="card-body">
                            <div class="">
                                <h5 class="h5font15 d-inline-block m-b-10">Radiology Study Report</h5>
                            </div>
                            <div class="row">
                                <div class="col-6">
                                    <%if (rolePrivilegeResList.contains("NEW_RADIOLOGY_REPORT_PRIVILEGE")) { %>
                                    <div class="custom-control custom-checkbox">
                                        <input  name="privileges"  type="checkbox" <%if (prevList.contains("NEW_RADIOLOGY_REPORT_PRIVILEGE")) {
                                                out.print("checked");
                                            }%> value="NEW_RADIOLOGY_REPORT_PRIVILEGE" class="custom-control-input input-primary" id="rad_study_new">
                                        <label class="custom-control-label" for="rad_study_new" style="padding-top: 2px;">Create New</label>
                                    </div>
                                    <%}%>
                                    <%if (rolePrivilegeResList.contains("VIEW_RADIOLOGY_REPORT_PRIVILEGE")) { %>
                                    <div class="custom-control custom-checkbox">
                                        <input  name="privileges"  type="checkbox" <%if (prevList.contains("VIEW_RADIOLOGY_REPORT_PRIVILEGE")) {
                                                out.print("checked");
                                            }%> value="VIEW_RADIOLOGY_REPORT_PRIVILEGE" class="custom-control-input input-primary" id="rad_study_view">
                                        <label class="custom-control-label" for="rad_study_view" style="padding-top: 2px;">View List</label>
                                    </div>
                                    <%}%>
                                    <%if (rolePrivilegeResList.contains("EDIT_RADIOLOGY_REPORT_PRIVILEGE")) { %>
                                    <div class="custom-control custom-checkbox">
                                        <input  name="privileges"  type="checkbox" <%if (prevList.contains("EDIT_RADIOLOGY_REPORT_PRIVILEGE")) {
                                                out.print("checked");
                                            }%> value="EDIT_RADIOLOGY_REPORT_PRIVILEGE" class="custom-control-input input-primary" id="rad_study_edit">
                                        <label class="custom-control-label" for="rad_study_edit" style="padding-top: 2px;">Edit</label>
                                    </div>
                                    <%}%>
                                </div>
                                <div class="col-6">
                                    
                                    <%if (rolePrivilegeResList.contains("CREATE_RADIOLOGY_REPORT_PRIVILEGE")) { %>
                                    <div class="custom-control custom-checkbox">
                                        <input  name="privileges"  type="checkbox" <%if (prevList.contains("CREATE_RADIOLOGY_REPORT_PRIVILEGE")) {
                                                out.print("checked");
                                            }%> value="CREATE_RADIOLOGY_REPORT_PRIVILEGE" class="custom-control-input input-primary" id="rad_study_create">
                                        <label class="custom-control-label" for="rad_study_create" style="padding-top: 2px;">Create Final Report</label>
                                    </div>
                                    <%}%>
                                    
                                    <%if (rolePrivilegeResList.contains("REVIEW_RADIOLOGY_REPORT_PRIVILEGE")) { %>
                                    <div class="custom-control custom-checkbox">
                                        <input  name="privileges"  type="checkbox" <%if (prevList.contains("REVIEW_RADIOLOGY_REPORT_PRIVILEGE")) {
                                                out.print("checked");
                                            }%> value="REVIEW_RADIOLOGY_REPORT_PRIVILEGE" class="custom-control-input input-primary" id="rad_study_review">
                                        <label class="custom-control-label" for="rad_study_review" style="padding-top: 2px;">Review</label>
                                    </div>
                                    <%}%>
                                </div>
                            </div>
                        </div>
                    </div>
                </c:if> 
                
                <c:if test="${role == 'ROLE_ADMIN' or role == 'ROLE_USER'
                              or role == 'ROLE_ENTITY_ADMIN'
                              or role == 'ROLE_ENTITY_STAFF'
                              or role == 'ROLE_CORP_PRACTICE' 
                              or role == 'ROLE_CORP_ADMIN' 
                              or role == 'ROLE_CORP_STAFF'
                              or role == 'ROLE_CORP_PROVIDER'
                              or role == 'ROLE_GROUPCLINIC_PROVIDER'
                              or role == 'ROLE_GROUPCLINIC_ADMIN'
                              or role == 'ROLE_GROUPCLINIC_STAFF'
                              or role == 'ROLE_BILLING_ADMIN' 
                              or role == 'ROLE_BILLING_STAFF'
                              or role == 'ROLE_TRANSCRIBER'
                              or role == 'ROLE_EDITOR'
                              or role == 'ROLE_PROOFER'
                              or role == 'ROLE_PRACTICE_ADMIN'
                              or role == 'ROLE_PRACTICE_PROVIDER'
                              or role == 'ROLE_PRACTICE_STAFF'
                              or role == 'ROLE_REFERING_PROVIDER'
                              or role == 'ROLE_PATIENT' 
                      }">         

                    <div class="card card-border-c-yellow" style="margin-bottom: 15px;">
                        <div class="card-body">
                            <div class="">
                                <h5 class="h5font15 d-inline-block m-b-10">Claim Tracker</h5>
                            </div>
                            <div class="row">
                                <%if (rolePrivilegeResList.contains("LIST_CLAIM_PRIVILEGE")) { %>
                                <div class="col-6">
                                    <div class="custom-control custom-checkbox">
                                        <input  name="privileges"  type="checkbox" <%if (prevList.contains("LIST_CLAIM_PRIVILEGE")) {
                                                out.print("checked");
                                            }%> value="LIST_CLAIM_PRIVILEGE" class="custom-control-input input-primary" id="claim_list">
                                        <label class="custom-control-label" for="claim_list" style="padding-top: 2px;">View List</label>
                                    </div>
                                </div>
                                <%}%>
                                <%if (rolePrivilegeResList.contains("VIEW_CLAIM_PRIVILEGE")) { %>
                                <div class="col-6">
                                    <div class="custom-control custom-checkbox">
                                        <input  name="privileges"  type="checkbox" <%if (prevList.contains("VIEW_CLAIM_PRIVILEGE")) {
                                                out.print("checked");
                                            }%> value="VIEW_CLAIM_PRIVILEGE" class="custom-control-input input-primary" id="claim_viewdetails">
                                        <label class="custom-control-label" for="claim_viewdetails" style="padding-top: 2px;">View 1500 detail</label>
                                    </div> 
                                </div>
                                <%}%>
                            </div>
                        </div>
                    </div>
                </c:if>

                <c:if test="${role == 'ROLE_ADMIN'
                              or role == 'ROLE_ENTITY_ADMIN'
                              or role == 'ROLE_CORP_PROVIDER'
                              or role == 'ROLE_CORP_ADMIN'
                              or role == 'ROLE_GROUPCLINIC_ADMIN'
                              or role == 'ROLE_GROUPCLINIC_STAFF'
                              or role == 'ROLE_ENTITY_STAFF'
                              or role == 'ROLE_PRACTICE_STAFF'
                              or role == 'ROLE_PRACTICE_PROVIDER'
                              or role == 'ROLE_REFERING_PROVIDER'
                              or role == 'ROLE_GROUPCLINIC_PROVIDER'
                              or role == 'ROLE_CORP_STAFF'
                              or role == 'ROLE_PRACTICE_ADMIN'
                              or role == 'ROLE_BILLING_ADMIN'
                              or role == 'ROLE_BILLING_STAFF'
                      }"> 
                    <div class="card card-border-c-blue" style="margin-bottom: 15px;">
                        <div class="card-body">
                            <div class="">
                                <h5 class="h5font15 d-inline-block m-b-10">ERA/EoB</h5>
                            </div>
                            <div class="row">
                                <div class="col-6">
                                    <%if (rolePrivilegeResList.contains("LIST_ERA_PRIVILEGE")) { %>
                                    <div class="custom-control custom-checkbox">
                                        <input  name="privileges"  type="checkbox" <%if (prevList.contains("LIST_ERA_PRIVILEGE")) {
                                                out.print("checked");
                                            }%> value="LIST_ERA_PRIVILEGE" class="custom-control-input input-primary" id="era_list">
                                        <label class="custom-control-label" for="era_list" style="padding-top: 2px;">ERA List</label>
                                    </div>
                                    <%}%>
                                    <%if (rolePrivilegeResList.contains("LIST_ALL_CLAIMS_PRIVILEGE")) { %>
                                    <div class="custom-control custom-checkbox">
                                        <input  name="privileges"  type="checkbox" <%if (prevList.contains("LIST_ALL_CLAIMS_PRIVILEGE")) {
                                                out.print("checked");
                                            }%> value="LIST_ALL_CLAIMS_PRIVILEGE" class="custom-control-input input-primary" id="allclaims">
                                        <label class="custom-control-label" for="allclaims" style="padding-top: 2px;">All Claim List</label>
                                    </div>
                                    <%}%>
                                    <%if (rolePrivilegeResList.contains("LIST_DENIED_CLAIM_PRIVILEGE")) { %>
                                    <div class="custom-control custom-checkbox">
                                        <input  name="privileges"  type="checkbox" <%if (prevList.contains("LIST_DENIED_CLAIM_PRIVILEGE")) {
                                                out.print("checked");
                                            }%> value="LIST_DENIED_CLAIM_PRIVILEGE" class="custom-control-input input-primary" id="deniedclaimms">
                                        <label class="custom-control-label" for="deniedclaimms" style="padding-top: 2px;">Denied Claims</label>
                                    </div>
                                    <%}%>
                                    <%if (rolePrivilegeResList.contains("LIST_PARTLY_CLAIM_PRIVILEGE")) { %>
                                    <div class="custom-control custom-checkbox">
                                        <input  name="privileges"  type="checkbox" <%if (prevList.contains("LIST_PARTLY_CLAIM_PRIVILEGE")) {
                                                out.print("checked");
                                            }%> value="LIST_PARTLY_CLAIM_PRIVILEGE" class="custom-control-input input-primary" id="paidclaims">
                                        <label class="custom-control-label" for="paidclaims" style="padding-top: 2px;">Partly Paid Claims</label>
                                    </div>
                                    <%}%>
                                </div>
                                <div class="col-6">
                                    <%if (rolePrivilegeResList.contains("LIST_UNDERPAID_CLAIM_PRIVILEGE")) { %>
                                    <div class="custom-control custom-checkbox">
                                        <input  name="privileges"  type="checkbox" <%if (prevList.contains("LIST_UNDERPAID_CLAIM_PRIVILEGE")) {
                                                out.print("checked");
                                            }%> value="LIST_UNDERPAID_CLAIM_PRIVILEGE" class="custom-control-input input-primary" id="underpaidclaims">
                                        <label class="custom-control-label" for="underpaidclaims" style="padding-top: 2px;">Underpaid Claims</label>
                                    </div>
                                    <%}%>
                                    <%-- GP REVISIT--%>
                                    <div class="custom-control custom-checkbox">
                                        <input  name="privileges"  type="checkbox" checked class="custom-control-input input-primary" id="providerclaims">
                                        <label class="custom-control-label" for="providerclaims" style="padding-top: 2px;">Provider Adjustment</label>
                                    </div>
                                    <%if (rolePrivilegeResList.contains("LIST_PAPER_EOB_PRIVILEGE")) { %>
                                    <div class="custom-control custom-checkbox">
                                        <input  name="privileges"  type="checkbox" <%if (prevList.contains("LIST_PAPER_EOB_PRIVILEGE")) {
                                                out.print("checked");
                                            }%> value="LIST_PAPER_EOB_PRIVILEGE" class="custom-control-input input-primary" id="papereob">
                                        <label class="custom-control-label" for="papereob" style="padding-top: 2px;">Paper EoB</label>
                                    </div>
                                    <%}%>
                                    <%if (rolePrivilegeResList.contains("LIST_VIEW_PAPER_EOB_PRIVILEGE")) { %>
                                    <div class="custom-control custom-checkbox">
                                        <input  name="privileges"  type="checkbox" <%if (prevList.contains("LIST_VIEW_PAPER_EOB_PRIVILEGE")) {
                                                out.print("checked");
                                            }%> value="LIST_VIEW_PAPER_EOB_PRIVILEGE" class="custom-control-input input-primary" id="vieweob">
                                        <label class="custom-control-label" for="vieweob" style="padding-top: 2px;">View EoB</label>
                                    </div>
                                    <%}%>
                                </div>
                            </div>
                        </div>
                    </div>
                </c:if> 
                
                 <c:if test="${   role == 'ROLE_ADMIN'
                                 or role == 'ROLE_ENTITY_ADMIN'
                                 or role == 'ROLE_ENTITY_STAFF'
                                 or role == 'ROLE_CORP_ADMIN' 
                                 or role == 'ROLE_CORP_PROVIDER' 
                                 or role == 'ROLE_GROUPCLINIC_PROVIDER'
                                 or role == 'ROLE_GROUPCLINIC_ADMIN'
                                 or role == 'ROLE_PRACTICE_ADMIN'
                                 or role == 'ROLE_PRACTICE_PROVIDER'
                                 or role == 'ROLE_REFERING_PROVIDER'
                      }">

                    <div class="card card-border-c-yellow" style="margin-bottom: 15px;">
                        <div class="card-body">
                            <div class="">
                                <h5 class="h5font15 d-inline-block m-b-10">Service Invoice</h5>
                            </div>
                            <div class="row">
                                <%if (rolePrivilegeResList.contains("NEW_INVOICE_PRIVILEGE")) { %>
                                <div class="col-4">
                                    <div class="custom-control custom-checkbox">
                                        <input  name="privileges"  type="checkbox" <%if (prevList.contains("NEW_INVOICE_PRIVILEGE")) {
                                                out.print("checked");
                                            }%> value="NEW_INVOICE_PRIVILEGE" class="custom-control-input input-primary" id="view_service_invoice">
                                        <label class="custom-control-label" for="view_service_invoice" style="padding-top: 2px;">View</label>
                                    </div>
                                </div>
                                <%}%>
                                 <%if (rolePrivilegeResList.contains("UPDATE_INVOICE_PRIVILEGE")) { %>
                                <div class="col-4">
                                    <div class="custom-control custom-checkbox">
                                        <input  name="privileges"  type="checkbox" <%if (prevList.contains("UPDATE_INVOICE_PRIVILEGE")) {
                                                out.print("checked");
                                            }%> value="UPDATE_INVOICE_PRIVILEGE" class="custom-control-input input-primary" id="update_service_invoice">
                                        <label class="custom-control-label" for="update_service_invoice" style="padding-top: 2px;">Update</label>
                                    </div>
                                </div>
                                <%}%>
                                 <%if (rolePrivilegeResList.contains("RESET_INVOICE_PRIVILEGE")) { %>
                                <div class="col-4">
                                    <div class="custom-control custom-checkbox">
                                        <input  name="privileges"  type="checkbox" <%if (prevList.contains("RESET_INVOICE_PRIVILEGE")) {
                                                out.print("checked");
                                            }%> value="RESET_INVOICE_PRIVILEGE" class="custom-control-input input-primary" id="reset_service_invoice">
                                        <label class="custom-control-label" for="reset_service_invoice" style="padding-top: 2px;">Reset</label>
                                    </div>
                                </div>
                                <%}%>
                               
                            </div>
                        </div>
                    </div>
                </c:if>
                
                 <c:if test="${   role == 'ROLE_ENTITY_ADMIN'
                                 or role == 'ROLE_CORP_ADMIN' 
                                 or role == 'ROLE_CORP_PROVIDER' 
                                 or role == 'ROLE_GROUPCLINIC_PROVIDER'
                                 or role == 'ROLE_GROUPCLINIC_ADMIN'
                                 or role == 'ROLE_PRACTICE_ADMIN'
                                 or role == 'ROLE_PRACTICE_PROVIDER'
                                 or role == 'ROLE_REFERING_PROVIDER'
                      }">

                    <div class="card card-border-c-yellow" style="margin-bottom: 15px;">
                        <div class="card-body">
                            <div class="">
                                <h5 class="h5font15 d-inline-block m-b-10">Subscription Invoice</h5>
                            </div>
                            <div class="row">
                                 <%if (rolePrivilegeResList.contains("NEW_SUBSCRIPTION_INVOICE_PRIVILEGE")) { %>
                                <div class="col-4">
                                    <div class="custom-control custom-checkbox">
                                        <input  name="privileges"  type="checkbox" <%if (prevList.contains("NEW_SUBSCRIPTION_INVOICE_PRIVILEGE")) {
                                                out.print("checked");
                                            }%> value="NEW_SUBSCRIPTION_INVOICE_PRIVILEGE" class="custom-control-input input-primary" id="new_subscription_invoice">
                                        <label class="custom-control-label" for="new_subscription_invoice" style="padding-top: 2px;">New</label>
                                    </div>
                                </div>
                                <%}%>
                                <%if (rolePrivilegeResList.contains("VIEW_SUBSCRIPTION_INVOICE_PRIVILEGE")) { %>
                                <div class="col-4">
                                    <div class="custom-control custom-checkbox">
                                        <input  name="privileges"  type="checkbox" <%if (prevList.contains("VIEW_SUBSCRIPTION_INVOICE_PRIVILEGE")) {
                                                out.print("checked");
                                            }%> value="VIEW_SUBSCRIPTION_INVOICE_PRIVILEGE" class="custom-control-input input-primary" id="view_subscription_invoice">
                                        <label class="custom-control-label" for="view_subscription_invoice" style="padding-top: 2px;">View</label>
                                    </div>
                                </div>
                                <%}%>
                                <%if (rolePrivilegeResList.contains("UPDATE_SUBSCRIPTION_INVOICE_PRIVILEGE")) { %>
                                <div class="col-4">
                                    <div class="custom-control custom-checkbox">
                                        <input  name="privileges"  type="checkbox" <%if (prevList.contains("UPDATE_SUBSCRIPTION_INVOICE_PRIVILEGE")) {
                                                out.print("checked");
                                            }%> value="UPDATE_SUBSCRIPTION_INVOICE_PRIVILEGE" class="custom-control-input input-primary" id="update_subscription_invoice">
                                        <label class="custom-control-label" for="update_subscription_invoice" style="padding-top: 2px;">Update</label>
                                    </div>
                                </div>
                                <%}%>
                                 <%if (rolePrivilegeResList.contains("RESET_SUBSCRIPTION_INVOICE_PRIVILEGE")) { %>
                                <div class="col-4">
                                    <div class="custom-control custom-checkbox">
                                        <input  name="privileges"  type="checkbox" <%if (prevList.contains("RESET_SUBSCRIPTION_INVOICE_PRIVILEGE")) {
                                                out.print("checked");
                                            }%> value="RESET_SUBSCRIPTION_INVOICE_PRIVILEGE" class="custom-control-input input-primary" id="reset_subscription_invoice">
                                        <label class="custom-control-label" for="reset_subscription_invoice" style="padding-top: 2px;">Reset</label>
                                    </div>
                                </div>
                                <%}%>
                               
                            </div>
                        </div>
                    </div>
                </c:if>
                

                <c:if test="${   role == 'ROLE_ADMIN'
                                 or role == 'ROLE_ENTITY_ADMIN'
                                 or role == 'ROLE_ENTITY_STAFF' 
                                 or role == 'ROLE_PRACTICE_ADMIN'
                                 or role == 'ROLE_CORP_ADMIN'
                                 or role == 'ROLE_CORP_STAFF' 
                                 or role == 'ROLE_CORP_PRACTICE'
                                 or role == 'ROLE_CORP_PROVIDER'
                                 or role == 'ROLE_GROUPCLINIC_PROVIDER'
                                 or role == 'ROLE_GROUPCLINIC_ADMIN'
                                 or role == 'ROLE_GROUPCLINIC_STAFF'
                                 or role == 'ROLE_ENTITY_STAFF'
                                 or role == 'ROLE_PRACTICE_STAFF'
                                 or role == 'ROLE_PRACTICE_PROVIDER'
                                 or role == 'ROLE_REFERING_PROVIDER'
                                 or role == 'ROLE_BILLING_ADMIN'
                                 or role == 'ROLE_BILLING_STAFF' 
                                 or role == 'ROLE_PROVIDER'
                      }">

                    <div class="card card-border-c-yellow" style="margin-bottom: 15px;">
                        <div class="card-body">
                            <div class="">
                                <h5 class="h5font15 d-inline-block m-b-10">Document Portal</h5>
                            </div>
                            <div class="row">
                                <%if (rolePrivilegeResList.contains("UPLOAD_DOCUMENT_PRIVILEGE")) { %>
                                <div class="col-6">
                                    <div class="custom-control custom-checkbox">
                                        <input  name="privileges"  type="checkbox" <%if (prevList.contains("UPLOAD_DOCUMENT_PRIVILEGE")) {
                                                out.print("checked");
                                            }%> value="UPLOAD_DOCUMENT_PRIVILEGE" class="custom-control-input input-primary" id="doc_upload">
                                        <label class="custom-control-label" for="doc_upload" style="padding-top: 2px;">Upload</label>
                                    </div>
                                </div>
                                <%}%>
                                <%if (rolePrivilegeResList.contains("LIST_DOCUMENT_PRIVILEGE")) { %>
                                <div class="col-6">
                                    <div class="custom-control custom-checkbox">
                                        <input  name="privileges"  type="checkbox" <%if (prevList.contains("LIST_DOCUMENT_PRIVILEGE")) {
                                                out.print("checked");
                                            }%> value="LIST_DOCUMENT_PRIVILEGE" class="custom-control-input input-primary" id="doc_view">
                                        <label class="custom-control-label" for="doc_view" style="padding-top: 2px;">View</label>
                                    </div>
                                </div>
                                <%}%>
                                 <%if (rolePrivilegeResList.contains("DELETE_DOCUMENT_PRIVILEGE")) { %>
                                <div class="col-6">
                                    <div class="custom-control custom-checkbox">
                                        <input  name="privileges"  type="checkbox" <%if (prevList.contains("DELETE_DOCUMENT_PRIVILEGE")) {
                                                out.print("checked");
                                            }%> value="DELETE_DOCUMENT_PRIVILEGE" class="custom-control-input input-primary" id="doc_delete">
                                        <label class="custom-control-label" for="doc_delete" style="padding-top: 2px;">Delete</label>
                                    </div>
                                </div>
                                <%}%>
                                <%if (rolePrivilegeResList.contains("RECOVER_DOCUMENT_PRIVILEGE")) { %>
                                <div class="col-6">
                                    <div class="custom-control custom-checkbox">
                                        <input  name="privileges"  type="checkbox" <%if (prevList.contains("RECOVER_DOCUMENT_PRIVILEGE")) {
                                                out.print("checked");
                                            }%> value="RECOVER_DOCUMENT_PRIVILEGE" class="custom-control-input input-primary" id="doc_recover">
                                        <label class="custom-control-label" for="doc_recover" style="padding-top: 2px;">Recover</label>
                                    </div>
                                </div>
                                <%}%>
                            </div>
                        </div>
                    </div>
                </c:if>  

                <c:if test="${role == 'ROLE_ENTITY_ADMIN'
                              or role == 'ROLE_PROOFER'
                              or role == 'ROLE_PRACTICE_ADMIN'
                              or role == 'ROLE_GROUPCLINIC_PROVIDER'
                              or role == 'ROLE_GROUPCLINIC_ADMIN'  
                              or role == 'ROLE_PRACTICE_PROVIDER'
                              or role == 'ROLE_REFERING_PROVIDER'
                              or role == 'ROLE_EDITOR'
                              or role == 'ROLE_TRANSCRIBER'
                              or role == 'ROLE_PROFER_STAFF' 
                              or role == 'ROLE_CORP_ADMIN'
                              or role == 'ROLE_CORP_PROVIDER'
                              or role == 'ROLE_BILLING_ADMIN'
                              or role == 'ROLE_BILLING_STAFF'

                      }">

                    <div class="card card-border-c-red" style="margin-bottom: 15px;">
                        <div class="card-body">
                            <div class="">
                                <h5 class="h5font15 d-inline-block m-b-10">Notes</h5>
                            </div>
                            <div class="row">
                                <%if (rolePrivilegeResList.contains("NEW_NOTE_PRIVILEGE")) { %>
                                <div class="col-4">
                                    <div class="custom-control custom-checkbox">
                                        <input  name="privileges"  type="checkbox" <%if (prevList.contains("NEW_NOTE_PRIVILEGE")) {
                                                out.print("checked");
                                            }%> value="NEW_NOTE_PRIVILEGE" class="custom-control-input input-primary" id="notes_create">
                                        <label class="custom-control-label" for="notes_create" style="padding-top: 2px;">Create</label>
                                    </div>
                                </div>
                                <%}%>
                                <%if (rolePrivilegeResList.contains("VIEW_NOTE_PRIVILEGE")) { %>
                                <div class="col-4">
                                    <div class="custom-control custom-checkbox">
                                        <input  name="privileges"  type="checkbox" <%if (prevList.contains("VIEW_NOTE_PRIVILEGE")) {
                                                out.print("checked");
                                            }%> value="VIEW_NOTE_PRIVILEGE" class="custom-control-input input-primary" id="notes_view">
                                        <label class="custom-control-label" for="notes_view" style="padding-top: 2px;">View</label>
                                    </div>
                                </div>
                                <%}%>
                                <%if (rolePrivilegeResList.contains("VIEW_ADMIN_NOTE_PRIVILEGE")) { %>
                                <div class="col-4">
                                    <div class="custom-control custom-checkbox">
                                        <input  name="privileges"  type="checkbox" <%if (prevList.contains("VIEW_ADMIN_NOTE_PRIVILEGE")) {
                                                out.print("checked");
                                            }%> value="VIEW_ADMIN_NOTE_PRIVILEGE" class="custom-control-input input-primary" id="admin_notes_view">
                                        <label class="custom-control-label" for="admin_notes_view" style="padding-top: 2px;">Admin View</label>
                                    </div>
                                </div>
                                <%}%>
                            </div>
                        </div>
                    </div>
                </c:if>


                <c:if test="${   role == 'ROLE_ADMIN'
                                 or role == 'ROLE_ENTITY_ADMIN'
                                 or role == 'ROLE_PRACTICE_ADMIN'
                                 or role == 'ROLE_GROUPCLINIC_PROVIDER'
                                 or role == 'ROLE_GROUPCLINIC_ADMIN'
                                 or role == 'ROLE_GROUPCLINIC_STAFF'
                                 or role == 'ROLE_ENTITY_STAFF'
                                 or role == 'ROLE_PRACTICE_STAFF'
                                 or role == 'ROLE_PRACTICE_PROVIDER'
                                 or role == 'ROLE_REFERING_PROVIDER' 
                                 or role == 'ROLE_CORP_ADMIN'
                                 or role == 'ROLE_CORP_STAFF'
                                 or role == 'ROLE_CORP_PRACTICE'
                                 or role == 'ROLE_CORP_PROVIDER'
                                 or role == 'ROLE_PROVIDER'
                                 or role == 'ROLE_REFERING_PROVIDER'	
                                 or role == 'ROLE_BILLING_ADMIN'	
                                 or role == 'ROLE_BILLING_STAFF'  

                      }">
                    <div class="card card-border-c-blue" style="margin-bottom: 15px;">
                        <div class="card-body">
                            <div class="">
                                <h5 class="h5font15 d-inline-block m-b-10">Ticketing</h5>
                            </div>
                            <div class="row">
                                <%if (rolePrivilegeResList.contains("NEW_TICKET_PRIVILEGE")) { %>
                                <div class="col-6">
                                    <div class="custom-control custom-checkbox">
                                        <input  name="privileges"  type="checkbox" <%if (prevList.contains("NEW_TICKET_PRIVILEGE")) {
                                                out.print("checked");
                                            }%> value="NEW_TICKET_PRIVILEGE" class="custom-control-input input-primary" id="ticket_raise">
                                        <label class="custom-control-label" for="ticket_raise" style="padding-top: 2px;">Raise</label>
                                    </div>
                                </div>
                                <%}%>
                                <%if (rolePrivilegeResList.contains("VIEW_TICKET_PRIVILEGE")) { %>
                                <div class="col-6">
                                    <div class="custom-control custom-checkbox">
                                        <input  name="privileges"  type="checkbox" <%if (prevList.contains("VIEW_TICKET_PRIVILEGE")) {
                                                out.print("checked");
                                            }%> value="VIEW_TICKET_PRIVILEGE" class="custom-control-input input-primary" id="ticket_view">
                                        <label class="custom-control-label" for="ticket_view" style="padding-top: 2px;">View</label>
                                    </div>
                                </div>
                                <%}%>
                            </div>
                        </div>
                    </div>
                </c:if> 


                <c:if test="${   role == 'ROLE_ADMIN'
                                 or role == 'ROLE_ENTITY_ADMIN'
                                 or role == 'ROLE_PRACTICE_ADMIN' 
                                 or role == 'ROLE_GROUPCLINIC_ADMIN' 
                                 or role == 'ROLE_ENTITY_STAFF'
                                 or role == 'ROLE_PRACTICE_ADMIN'
                                 or role == 'ROLE_BILLING_ADMIN'
                      }">

                    <div class="card card-border-c-yellow" style="margin-bottom: 15px;">
                        <div class="card-body">
                            <div class="">
                                <h5 class="h5font15 d-inline-block m-b-10">Fee Schedule</h5>
                            </div>
                            <div class="row">
                                <%if (rolePrivilegeResList.contains("NEW_FEE_SCHEDULE_PRIVILEGE")) { %>
                               <!-- <div class="col-4">
                                    <div class="custom-control custom-checkbox">
                                        <input  name="privileges"  type="checkbox" <%if (prevList.contains("NEW_FEE_SCHEDULE_PRIVILEGE")) {
                                                out.print("checked");
                                            }%> value="NEW_FEE_SCHEDULE_PRIVILEGE" class="custom-control-input input-primary" id="fee_entry">
                                        <label class="custom-control-label" for="fee_entry" style="padding-top: 2px;">Entry</label>
                                    </div>
                                </div> -->
                                <%}%>
                                <%if (rolePrivilegeResList.contains("UPLOAD_FEE_SCHEDULE_PRIVILEGE")) { %>
                                <div class="col-4">
                                    <div class="custom-control custom-checkbox">
                                        <input  name="privileges"  type="checkbox" <%if (prevList.contains("UPLOAD_FEE_SCHEDULE_PRIVILEGE")) {
                                                out.print("checked");
                                            }%> value="UPLOAD_FEE_SCHEDULE_PRIVILEGE" class="custom-control-input input-primary" id="fee_upload">
                                        <label class="custom-control-label" for="fee_upload" style="padding-top: 2px;">Upload</label>
                                    </div>
                                </div>
                                <%}%>
                                <%if (rolePrivilegeResList.contains("VIEW_FEE_SCHEDULE_PRIVILEGE")) { %>
                               <!-- <div class="col-4">
                                    <div class="custom-control custom-checkbox">
                                        <input  name="privileges"  type="checkbox" <%if (prevList.contains("VIEW_FEE_SCHEDULE_PRIVILEGE")) {
                                                out.print("checked");
                                            }%> value="VIEW_FEE_SCHEDULE_PRIVILEGE" class="custom-control-input input-primary" id="fee_view">
                                        <label class="custom-control-label" for="fee_view" style="padding-top: 2px;">View</label>
                                    </div>
                                </div> -->
                                <%}%>
                            </div>
                        </div>
                    </div>
                </c:if>

                <c:if test="${role == 'ROLE_ADMIN' or role == 'ROLE_USER'
                              or role == 'ROLE_ENTITY_ADMIN'}">
                      <div class="card card-border-c-red" style="margin-bottom: 15px;">
                          <div class="card-body">
                              <div class="">
                                  <h5 class="h5font15 d-inline-block m-b-10">Ticketing Config</h5>
                              </div>
                              <div class="table-responsive">
                                  <div class="session-scroll">
                                      <table class="table table-hover m-b-0 tbl_font">

                                          <tr style="border: none !important">
                                              <th  style="border: none !important"><span>&nbsp;</span></th>
                                              <th style="border: none !important">NEW 
                                                  <div class="progress mt-1" style="height:4px;">
                                                      <div class="progress-bar bg-danger rounded" role="progressbar" style="width: 60%;" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100"></div>
                                                  </div>
                                              </th>
                                              <th style="border: none !important">VIEW
                                                  <div class="progress mt-1" style="height:4px;">
                                                      <div class="progress-bar bg-primary rounded" role="progressbar" style="width: 50%;" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100"></div>
                                                  </div>
                                              </th>
                                              <th style="border: none !important">EDIT 
                                                  <div class="progress mt-1" style="height:4px;">
                                                      <div class="progress-bar bg-warning rounded" role="progressbar" style="width: 70%;" aria-valuenow="70" aria-valuemin="0" aria-valuemax="100"></div>
                                                  </div>
                                              </th>
                                          </tr>

                                          <tbody>   
                                              <c:if test="${role == 'ROLE_ADMIN' or role == 'ROLE_USER'
                                                            or role == 'ROLE_ENTITY_ADMIN'}"> 
                                                    <tr> 
                                                        <td><h6 class="use_pri">Ticket Status</h6></td>
                                                        <td>
                                                            <%if (rolePrivilegeResList.contains("NEW_TICKET_STATUS_PRIVILEGE")) { %>
                                                            <div class="custom-control custom-checkbox">
                                                                <input  name="privileges"  type="checkbox" <%if (prevList.contains("NEW_TICKET_STATUS_PRIVILEGE")) {
                                                                        out.print("checked");
                                                                    }%> value="NEW_TICKET_STATUS_PRIVILEGE" class="custom-control-input input-primary" id="new_status_privilege">
                                                                <label class="custom-control-label" for="new_status_privilege" style="padding-top: 2px;">Create</label>
                                                            </div>
                                                            <%}%>
                                                        </td> 

                                                        <td>
                                                            <%if (rolePrivilegeResList.contains("VIEW_TICKET_STATUS_PRIVILEGE")) { %>
                                                            <div class="custom-control custom-checkbox">
                                                                <input  name="privileges"  type="checkbox" <%if (prevList.contains("VIEW_TICKET_STATUS_PRIVILEGE")) {
                                                                        out.print("checked");
                                                                    }%> value="VIEW_TICKET_STATUS_PRIVILEGE" class="custom-control-input input-primary" id="view_status_privilege">
                                                                <label class="custom-control-label" for="view_status_privilege" style="padding-top: 2px;">View</label>
                                                            </div>
                                                            <%}%>
                                                        </td> 

                                                        <td>
                                                            <%if (rolePrivilegeResList.contains("EDIT_TICKET_STATUS_PRIVILEGE")) { %>
                                                            <div class="custom-control custom-checkbox">
                                                                <input  name="privileges"  type="checkbox" <%if (prevList.contains("EDIT_TICKET_STATUS_PRIVILEGE")) {
                                                                        out.print("checked");
                                                                    }%> value="EDIT_TICKET_STATUS_PRIVILEGE" class="custom-control-input input-primary" id="edit_status_privilege">
                                                                <label class="custom-control-label" for="edit_status_privilege" style="padding-top: 2px;">Edit</label>
                                                            </div>
                                                            <%}%>
                                                        </td>

                                                    </tr> 
                                              </c:if>
                                              <c:if test="${role == 'ROLE_ADMIN' 
                                                            or role == 'ROLE_USER'
                                                            or role == 'ROLE_ENTITY_ADMIN'}"> 
                                                    <tr>

                                                        <td><h6 class="use_pri">Ticket Priority</h6></td>
                                                        <td>
                                                            <%if (rolePrivilegeResList.contains("NEW_TICKET_PRIORITY_PRIVILEGE")) { %>
                                                            <div class="custom-control custom-checkbox">
                                                                <input  name="privileges"  type="checkbox" <%if (prevList.contains("NEW_TICKET_PRIORITY_PRIVILEGE")) {
                                                                        out.print("checked");
                                                                    }%> value="NEW_TICKET_PRIORITY_PRIVILEGE" class="custom-control-input input-primary" id="new_priority_privilege">
                                                                <label class="custom-control-label" for="new_priority_privilege" style="padding-top: 2px;">Create</label>
                                                            </div>
                                                            <%}%>
                                                        </td>
                                                        <td>
                                                            <%if (rolePrivilegeResList.contains("VIEW_TICKET_PRIORITY_PRIVILEGE")) { %>
                                                            <div class="custom-control custom-checkbox">
                                                                <input  name="privileges"  type="checkbox" <%if (prevList.contains("VIEW_TICKET_PRIORITY_PRIVILEGE")) {
                                                                        out.print("checked");
                                                                    }%> value="VIEW_TICKET_PRIORITY_PRIVILEGE" class="custom-control-input input-primary" id="view_priority_privilege">
                                                                <label class="custom-control-label" for="view_priority_privilege" style="padding-top: 2px;">View</label>
                                                            </div>
                                                            <%}%>
                                                        </td>
                                                        <td>
                                                            <%if (rolePrivilegeResList.contains("EDIT_TICKET_PRIORITY_PRIVILEGE")) { %>
                                                            <div class="custom-control custom-checkbox">
                                                                <input  name="privileges"  type="checkbox" <%if (prevList.contains("EDIT_TICKET_PRIORITY_PRIVILEGE")) {
                                                                        out.print("checked");
                                                                    }%> value="EDIT_TICKET_PRIORITY_PRIVILEGE" class="custom-control-input input-primary" id="edit_priority_privilege">
                                                                <label class="custom-control-label" for="edit_priority_privilege" style="padding-top: 2px;">Edit</label>
                                                            </div>
                                                            <%}%>
                                                        </td>
                                                    </tr>
                                              </c:if>
                                              <c:if test="${role == 'ROLE_ADMIN' or role == 'ROLE_USER'
                                                            or role == 'ROLE_ENTITY_ADMIN'}"> 

                                                    <tr>
                                                        <td><h6 class="use_pri">Ticket Type</h6></td>
                                                        <td>
                                                            <%if (rolePrivilegeResList.contains("NEW_TICKET_TYPE_PRIVILEGE")) { %>
                                                            <div class="custom-control custom-checkbox">
                                                                <input  name="privileges"  type="checkbox" <%if (prevList.contains("NEW_TICKET_TYPE_PRIVILEGE")) {
                                                                        out.print("checked");
                                                                    }%> value="NEW_TICKET_TYPE_PRIVILEGE" class="custom-control-input input-primary" id="new_type_privilege">
                                                                <label class="custom-control-label" for="new_type_privilege" style="padding-top: 2px;">Create</label>
                                                            </div>
                                                            <%}%>
                                                        </td>
                                                        <td>
                                                            <%if (rolePrivilegeResList.contains("VIEW_TICKET_TYPE_PRIVILEGE")) { %>
                                                            <div class="custom-control custom-checkbox">
                                                                <input  name="privileges"  type="checkbox" <%if (prevList.contains("VIEW_TICKET_TYPE_PRIVILEGE")) {
                                                                        out.print("checked");
                                                                    }%> value="VIEW_TICKET_TYPE_PRIVILEGE" class="custom-control-input input-primary" id="view_type_privilege">
                                                                <label class="custom-control-label" for="view_type_privilege" style="padding-top: 2px;">View</label>
                                                            </div>
                                                            <%}%>
                                                        </td>
                                                        <td>
                                                            <%if (rolePrivilegeResList.contains("EDIT_TICKET_TYPE_PRIVILEGE")) { %>
                                                            <div class="custom-control custom-checkbox">
                                                                <input  name="privileges"  type="checkbox" <%if (prevList.contains("EDIT_TICKET_TYPE_PRIVILEGE")) {
                                                                        out.print("checked");
                                                                    }%> value="EDIT_TICKET_TYPE_PRIVILEGE" class="custom-control-input input-primary" id="edit_type_privilege">
                                                                <label class="custom-control-label" for="edit_type_privilege" style="padding-top: 2px;">Edit</label>
                                                            </div>
                                                            <%}%>
                                                        </td>
                                                    </tr>
                                              </c:if>
                                              <c:if test="${role == 'ROLE_ADMIN' or role == 'ROLE_USER'
                                                            or role == 'ROLE_ENTITY_ADMIN'}"> 

                                                    <tr>
                                                        <td><h6 class="use_pri">Ticket Source</h6></td>
                                                        <td>
                                                            <%if (rolePrivilegeResList.contains("NEW_TICKET_SOURCE_PRIVILEGE")) { %>
                                                            <div class="custom-control custom-checkbox">
                                                                <input  name="privileges"  type="checkbox" <%if (prevList.contains("NEW_TICKET_SOURCE_PRIVILEGE")) {
                                                                        out.print("checked");
                                                                    }%> value="NEW_TICKET_SOURCE_PRIVILEGE" class="custom-control-input input-primary" id="new_source_privilege">
                                                                <label class="custom-control-label" for="new_source_privilege" style="padding-top: 2px;">Create</label>
                                                            </div>
                                                            <%}%>
                                                        </td>
                                                        <td>
                                                            <%if (rolePrivilegeResList.contains("VIEW_TICKET_SOURCE_PRIVILEGE")) { %>
                                                            <div class="custom-control custom-checkbox">
                                                                <input  name="privileges"  type="checkbox" <%if (prevList.contains("VIEW_TICKET_SOURCE_PRIVILEGE")) {
                                                                        out.print("checked");
                                                                    }%> value="VIEW_TICKET_SOURCE_PRIVILEGE" class="custom-control-input input-primary" id="view_source_privilege">
                                                                <label class="custom-control-label" for="view_source_privilege" style="padding-top: 2px;">View</label>
                                                            </div>
                                                            <%}%>
                                                        </td>
                                                        <td>
                                                            <%if (rolePrivilegeResList.contains("EDIT_TICKET_SOURCE_PRIVILEGE")) { %>
                                                            <div class="custom-control custom-checkbox">
                                                                <input  name="privileges"  type="checkbox" <%if (prevList.contains("EDIT_TICKET_SOURCE_PRIVILEGE")) {
                                                                        out.print("checked");
                                                                    }%> value="EDIT_TICKET_SOURCE_PRIVILEGE" class="custom-control-input input-primary" id="edit_source_privilege">
                                                                <label class="custom-control-label" for="edit_source_privilege" style="padding-top: 2px;">Edit</label>
                                                            </div>
                                                            <%}%>
                                                        </td>
                                                    </tr>
                                              </c:if>
                                              <c:if test="${role == 'ROLE_ADMIN' or role == 'ROLE_USER'
                                                            or role == 'ROLE_ENTITY_ADMIN' }"> 

                                                    <tr>
                                                        <td><h6 class="use_pri">Auto Desc</h6></td>
                                                        <td>
                                                            <%if (rolePrivilegeResList.contains("NEW_AUTO_CONFIG_PRIVILEGE")) { %>
                                                            <div class="custom-control custom-checkbox">
                                                                <input  name="privileges"  type="checkbox" <%if (prevList.contains("NEW_AUTO_CONFIG_PRIVILEGE")) {
                                                                        out.print("checked");
                                                                    }%> value="NEW_AUTO_CONFIG_PRIVILEGE" class="custom-control-input input-primary" id="new_autodesc_privilege">
                                                                <label class="custom-control-label" for="new_autodesc_privilege" style="padding-top: 2px;">Create</label>
                                                            </div>
                                                            <%}%>
                                                        </td>
                                                        <td>
                                                            <%if (rolePrivilegeResList.contains("VIEW_AUTO_CONFIG_PRIVILEGE")) { %>
                                                            <div class="custom-control custom-checkbox">
                                                                <input  name="privileges"  type="checkbox" <%if (prevList.contains("VIEW_AUTO_CONFIG_PRIVILEGE")) {
                                                                        out.print("checked");
                                                                    }%> value="VIEW_AUTO_CONFIG_PRIVILEGE" class="custom-control-input input-primary" id="view_autodesc_privilege">
                                                                <label class="custom-control-label" for="view_autodesc_privilege" style="padding-top: 2px;">View</label>
                                                            </div>
                                                            <%}%>
                                                        </td>
                                                        <td>
                                                            <%if (rolePrivilegeResList.contains("EDIT_AUTO_CONFIG_PRIVILEGE")) { %>
                                                            <div class="custom-control custom-checkbox">
                                                                <input  name="privileges"  type="checkbox" <%if (prevList.contains("EDIT_AUTO_CONFIG_PRIVILEGE")) {
                                                                        out.print("checked");
                                                                    }%> value="EDIT_AUTO_CONFIG_PRIVILEGE" class="custom-control-input input-primary" id="edit_autodesc_privilege">
                                                                <label class="custom-control-label" for="edit_autodesc_privilege" style="padding-top: 2px;">Edit</label>
                                                            </div>
                                                            <%}%>
                                                        </td>
                                                    </tr>
                                              </c:if>
                                              <c:if test="${role == 'ROLE_ENTITY_ADMIN' }"> 

                                                  <tr>
                                                      <td><h6 class="use_pri">Doc Upload Alert</h6></td>
                                                      <td>
                                                          <%if (rolePrivilegeResList.contains("NEW_DOC_UPLOAD_ALERT_PRIVILEGE")) { %>
                                                          <div class="custom-control custom-checkbox">
                                                              <input  name="privileges"  type="checkbox" <%if (prevList.contains("NEW_DOC_UPLOAD_ALERT_PRIVILEGE")) {
                                                                      out.print("checked");
                                                                  }%> value="NEW_DOC_UPLOAD_ALERT_PRIVILEGE" class="custom-control-input input-primary" id="new_DocUploadAlert_privilege">
                                                              <label class="custom-control-label" for="new_DocUploadAlert_privilege" style="padding-top: 2px;">Create</label>
                                                          </div>
                                                          <%}%>
                                                      </td>
                                                      <td>
                                                          <%if (rolePrivilegeResList.contains("VIEW_DOC_UPLOAD_ALERT_PRIVILEGE")) { %>
                                                          <div class="custom-control custom-checkbox">
                                                              <input  name="privileges"  type="checkbox" <%if (prevList.contains("VIEW_DOC_UPLOAD_ALERT_PRIVILEGE")) {
                                                                      out.print("checked");
                                                                  }%> value="VIEW_DOC_UPLOAD_ALERT_PRIVILEGE" class="custom-control-input input-primary" id="view_DocUploadAlert_privilege">
                                                              <label class="custom-control-label" for="view_DocUploadAlert_privilege" style="padding-top: 2px;">View</label>
                                                          </div>
                                                          <%}%>
                                                      </td>
                                                      <td>
                                                          <%if (rolePrivilegeResList.contains("EDIT_DOC_UPLOAD_ALERT_PRIVILEGE")) { %>
                                                          <div class="custom-control custom-checkbox">
                                                              <input  name="privileges"  type="checkbox" <%if (prevList.contains("EDIT_DOC_UPLOAD_ALERT_PRIVILEGE")) {
                                                                      out.print("checked");
                                                                  }%> value="EDIT_DOC_UPLOAD_ALERT_PRIVILEGE" class="custom-control-input input-primary" id="edit_DocUploadAlert_privilege">
                                                              <label class="custom-control-label" for="edit_DocUploadAlert_privilege" style="padding-top: 2px;">Edit</label>
                                                          </div>
                                                          <%}%>   
                                                      </td>
                                                  </tr>
                                              </c:if>
                                              <c:if test="${ role == 'ROLE_ENTITY_ADMIN' }"> 

                                                  <tr>
                                                      <td><h6 class="use_pri">Ticket Assignee Config</h6></td>
                                                      <td>
                                                          <%if (rolePrivilegeResList.contains("NEW_TICKET_ASSIGNEE_CONFIG_PRIVILEGE")) { %>
                                                          <div class="custom-control custom-checkbox">
                                                              <input  name="privileges"  type="checkbox" <%if (prevList.contains("NEW_TICKET_ASSIGNEE_CONFIG_PRIVILEGE")) {
                                                                      out.print("checked");
                                                                  }%> value="NEW_TICKET_ASSIGNEE_CONFIG_PRIVILEGE" class="custom-control-input input-primary" id="new_TicketAssigneeConfig_privilege">
                                                              <label class="custom-control-label" for="new_TicketAssigneeConfig_privilege" style="padding-top: 2px;">Create</label>
                                                          </div>
                                                          <%}%> 
                                                      </td>
                                                      <td>
                                                          <%if (rolePrivilegeResList.contains("VIEW_TICKET_ASSIGNEE_CONFIG_PRIVILEGE")) { %>
                                                          <div class="custom-control custom-checkbox">
                                                              <input  name="privileges"  type="checkbox" <%if (prevList.contains("VIEW_TICKET_ASSIGNEE_CONFIG_PRIVILEGE")) {
                                                                      out.print("checked");
                                                                  }%> value="VIEW_TICKET_ASSIGNEE_CONFIG_PRIVILEGE" class="custom-control-input input-primary" id="view_TicketAssigneeConfig_privilege">
                                                              <label class="custom-control-label" for="view_TicketAssigneeConfig_privilege" style="padding-top: 2px;">View</label>
                                                          </div>
                                                          <%}%> 
                                                      </td>
                                                      <td>
                                                          <%if (rolePrivilegeResList.contains("EDIT_TICKET_ASSIGNEE_CONFIG_PRIVILEGE")) { %>
                                                          <div class="custom-control custom-checkbox">
                                                              <input  name="privileges"  type="checkbox" <%if (prevList.contains("EDIT_TICKET_ASSIGNEE_CONFIG_PRIVILEGE")) {
                                                                      out.print("checked");
                                                                  }%> value="EDIT_TICKET_ASSIGNEE_CONFIG_PRIVILEGE" class="custom-control-input input-primary" id="edit_TicketAssigneeConfig_privilege">
                                                              <label class="custom-control-label" for="edit_TicketAssigneeConfig_privilege" style="padding-top: 2px;">Edit</label>
                                                          </div>
                                                          <%}%>
                                                      </td>
                                                  </tr>
                                              </c:if>
                                          </tbody>
                                      </table>
                                  </div>
                              </div>
                          </div>
                      </div>  
                </c:if>

            </div>


            <div class="col-md-6">
                <div class="card card-border-c-green">
                    <c:if test="${role == 'ROLE_ADMIN' or role == 'ROLE_ENTITY_ADMIN'
                                  or role == 'ROLE_ENTITY_STAFF'}">
                          <div class="card-header">
                              <h5 class="card-header-text">Configurations</h5>
                          </div>
                          <div class="card-body px-0 py-0">
                              <div class="table-responsive">
                                  <div class="session-scroll">
                                      <table class="table table-hover m-b-0 tbl_font">

                                          <tr style="border: none !important">
                                              <th  style="border: none !important"><span>&nbsp;</span></th>
                                              <th style="border: none !important">NEW 
                                                  <div class="progress mt-1" style="height:4px;">
                                                      <div class="progress-bar bg-danger rounded" role="progressbar" style="width: 60%;" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100"></div>
                                                  </div>
                                              </th>
                                              <th style="border: none !important">VIEW
                                                  <div class="progress mt-1" style="height:4px;">
                                                      <div class="progress-bar bg-primary rounded" role="progressbar" style="width: 50%;" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100"></div>
                                                  </div>
                                              </th>
                                              <th style="border: none !important">EDIT 
                                                  <div class="progress mt-1" style="height:4px;">
                                                      <div class="progress-bar bg-warning rounded" role="progressbar" style="width: 70%;" aria-valuenow="70" aria-valuemin="0" aria-valuemax="100"></div>
                                                  </div>
                                              </th>

                                          </tr>

                                          <tbody> 
                                              <c:if test="${role == 'ROLE_ADMIN' or role == 'ROLE_ENTITY_ADMIN'}">
                                                  <tr>
                                                      <td><h6 class="use_pri">Group Clinic</h6></td>
                                                      <td>
                                                          <%if (rolePrivilegeResList.contains("NEW_GROUP_CLINIC")) { %>
                                                          <div class="custom-control custom-checkbox">
                                                              <input  name="privileges"  type="checkbox" <%if (prevList.contains("NEW_GROUP_CLINIC")) {
                                                                      out.print("checked");
                                                                  }%> value="NEW_GROUP_CLINIC" class="custom-control-input input-primary" id="new_group_clinic">
                                                              <label class="custom-control-label" for="new_group_clinic" style="padding-top: 2px;">Create</label>
                                                          </div>
                                                          <%}%>
                                                      </td>
                                                      <td>
                                                          <%if (rolePrivilegeResList.contains("VIEW_GROUP_CLINIC")) { %>
                                                          <div class="custom-control custom-checkbox">
                                                              <input  name="privileges"  type="checkbox" <%if (prevList.contains("VIEW_GROUP_CLINIC")) {
                                                                      out.print("checked");
                                                                  }%> value="VIEW_GROUP_CLINIC" class="custom-control-input input-primary" id="view_group_clinic">
                                                              <label class="custom-control-label" for="view_group_clinic" style="padding-top: 2px;">View</label>
                                                          </div>
                                                          <%}%>
                                                      </td>
                                                      <td>
                                                          <%if (rolePrivilegeResList.contains("EDIT_GROUP_CLINIC")) { %>
                                                          <div class="custom-control custom-checkbox">
                                                              <input  name="privileges"  type="checkbox" <%if (prevList.contains("EDIT_GROUP_CLINIC")) {
                                                                      out.print("checked");
                                                                  }%> value="EDIT_GROUP_CLINIC" class="custom-control-input input-primary" id="edit_group_clinic">
                                                              <label class="custom-control-label" for="edit_group_clinic" style="padding-top: 2px;">Edit</label>
                                                          </div>
                                                          <%}%>
                                                      </td>
                                                  </tr>
                                              </c:if>
                                              <c:if test="${role == 'ROLE_ADMIN' or role == 'ROLE_ENTITY_ADMIN'}">
                                                  <tr>
                                                      <td><h6 class="use_pri">Corporation</h6></td>
                                                      <td>
                                                          <%if (rolePrivilegeResList.contains("NEW_CORPORATION")) { %>
                                                          <div class="custom-control custom-checkbox">
                                                              <input  name="privileges"  type="checkbox" <%if (prevList.contains("NEW_CORPORATION")) {
                                                                      out.print("checked");
                                                                  }%> value="NEW_CORPORATION" class="custom-control-input input-primary" id="new_corporation">
                                                              <label class="custom-control-label" for="new_corporation" style="padding-top: 2px;">Create</label>
                                                          </div>
                                                          <%}%>
                                                      </td>
                                                      <td>
                                                          <%if (rolePrivilegeResList.contains("VIEW_CORPORATION")) { %>
                                                          <div class="custom-control custom-checkbox">
                                                              <input  name="privileges"  type="checkbox" <%if (prevList.contains("VIEW_CORPORATION")) {
                                                                      out.print("checked");
                                                                  }%> value="VIEW_CORPORATION" class="custom-control-input input-primary" id="view_corporation">
                                                              <label class="custom-control-label" for="view_corporation" style="padding-top: 2px;">View</label>
                                                          </div>
                                                          <%}%>
                                                      </td>
                                                      <td> 
                                                          <%if (rolePrivilegeResList.contains("EDIT_CORPORATION")) { %>
                                                          <div class="custom-control custom-checkbox">
                                                              <input  name="privileges"  type="checkbox" <%if (prevList.contains("EDIT_CORPORATION")) {
                                                                      out.print("checked");
                                                                  }%> value="EDIT_CORPORATION" class="custom-control-input input-primary" id="edit_corporation">
                                                              <label class="custom-control-label" for="edit_corporation" style="padding-top: 2px;">Edit</label>
                                                          </div>
                                                          <%}%>
                                                      </td>
                                                  </tr> 
                                              </c:if>
                                              <c:if test="${role == 'ROLE_ADMIN' or role == 'ROLE_ENTITY_ADMIN' }"> 
                                                  <tr>
                                                      <td><h6 class="use_pri">Practice</h6></td>
                                                      <td>
                                                          <%if (rolePrivilegeResList.contains("NEW_PRACTICE_PRIVILEGE")) { %>
                                                          <div class="custom-control custom-checkbox">
                                                              <input  name="privileges"  type="checkbox" <%if (prevList.contains("NEW_PRACTICE_PRIVILEGE")) {
                                                                      out.print("checked");
                                                                  }%> value="NEW_PRACTICE_PRIVILEGE" class="custom-control-input input-primary" id="practice_create">
                                                              <label class="custom-control-label" for="practice_create" style="padding-top: 2px;">Create</label>
                                                          </div>
                                                          <%}%>
                                                      </td>
                                                      <td>
                                                          <%if (rolePrivilegeResList.contains("VIEW_PRACTICE_PRIVILEGE")) { %>
                                                          <div class="custom-control custom-checkbox">
                                                              <input  name="privileges"  type="checkbox" <%if (prevList.contains("VIEW_PRACTICE_PRIVILEGE")) {
                                                                      out.print("checked");
                                                                  }%> value="VIEW_PRACTICE_PRIVILEGE" class="custom-control-input input-primary" id="practice_view">
                                                              <label class="custom-control-label" for="practice_view" style="padding-top: 2px;">View</label>
                                                          </div>
                                                          <%}%>
                                                      </td>
                                                      <td>
                                                          <%if (rolePrivilegeResList.contains("EDIT_PRACTICE_PRIVILEGE")) { %>
                                                          <div class="custom-control custom-checkbox">
                                                              <input  name="privileges"  type="checkbox" <%if (prevList.contains("EDIT_PRACTICE_PRIVILEGE")) {
                                                                      out.print("checked");
                                                                  }%> value="EDIT_PRACTICE_PRIVILEGE" class="custom-control-input input-primary" id="practice_edit">
                                                              <label class="custom-control-label" for="practice_edit" style="padding-top: 2px;">Edit</label>
                                                          </div>
                                                          <%}%>
                                                      </td>
                                                  </tr> 
                                              </c:if>
                                              <c:if test="${role == 'ROLE_ADMIN' or role == 'ROLE_ENTITY_ADMIN' }"> 
                                                  <tr>
                                                      <td><h6 class="use_pri">Provider</h6></td>
                                                      <td>
                                                          <%if (rolePrivilegeResList.contains("NEW_PROVIDER_PRIVILEGE")) { %>
                                                          <div class="custom-control custom-checkbox">
                                                              <input  name="privileges"  type="checkbox" <%if (prevList.contains("NEW_PROVIDER_PRIVILEGE")) {
                                                                      out.print("checked");
                                                                  }%> value="NEW_PROVIDER_PRIVILEGE" class="custom-control-input input-primary" id="provider_create">
                                                              <label class="custom-control-label" for="provider_create" style="padding-top: 2px;">Create</label>
                                                          </div>
                                                          <%}%>
                                                      </td>
                                                      <td>
                                                          <%if (rolePrivilegeResList.contains("VIEW_PROVIDER_PRIVILEGE")) { %>
                                                          <div class="custom-control custom-checkbox">
                                                              <input  name="privileges"  type="checkbox" <%if (prevList.contains("VIEW_PROVIDER_PRIVILEGE")) {
                                                                      out.print("checked");
                                                                  }%> value="VIEW_PROVIDER_PRIVILEGE" class="custom-control-input input-primary" id="provider_view">
                                                              <label class="custom-control-label" for="provider_view" style="padding-top: 2px;">View</label>
                                                          </div>
                                                          <%}%>
                                                      </td>
                                                      <td>
                                                          <%if (rolePrivilegeResList.contains("EDIT_PROVIDER_PRIVILEGE")) { %>
                                                          <div class="custom-control custom-checkbox">
                                                              <input  name="privileges"  type="checkbox" <%if (prevList.contains("EDIT_PROVIDER_PRIVILEGE")) {
                                                                      out.print("checked");
                                                                  }%> value="EDIT_PROVIDER_PRIVILEGE" class="custom-control-input input-primary" id="provider_edit">
                                                              <label class="custom-control-label" for="provider_edit" style="padding-top: 2px;">Edit</label>
                                                          </div>
                                                          <%}%>
                                                      </td>
                                                  </tr> 
                                              </c:if>
                                              <c:if test="${role == 'ROLE_ADMIN' }"> 
                                                  <tr>
                                                      <td><h6 class="use_pri">Payor</h6></td>
                                                      <td>
                                                          <%if (rolePrivilegeResList.contains("NEW_PAYOR_PRIVILEGE")) { %>
                                                          <div class="custom-control custom-checkbox">
                                                              <input  name="privileges"  type="checkbox" <%if (prevList.contains("NEW_PAYOR_PRIVILEGE")) {
                                                                      out.print("checked");
                                                                  }%> value="NEW_PAYOR_PRIVILEGE" class="custom-control-input input-primary" id="payor_create">
                                                              <label class="custom-control-label" for="payor_create" style="padding-top: 2px;">Create</label>
                                                          </div>
                                                          <%}%>
                                                      </td>
                                                      <td>
                                                          <%if (rolePrivilegeResList.contains("VIEW_PAYOR_PRIVILEGE")) { %>
                                                          <div class="custom-control custom-checkbox">
                                                              <input  name="privileges"  type="checkbox" <%if (prevList.contains("VIEW_PAYOR_PRIVILEGE")) {
                                                                      out.print("checked");
                                                                  }%> value="VIEW_PAYOR_PRIVILEGE" class="custom-control-input input-primary" id="payor_view">
                                                              <label class="custom-control-label" for="payor_view" style="padding-top: 2px;">View</label>
                                                          </div>
                                                          <%}%>
                                                      </td>
                                                      <td>
                                                          <%if (rolePrivilegeResList.contains("EDIT_PAYOR_PRIVILEGE")) { %>
                                                          <div class="custom-control custom-checkbox">
                                                              <input  name="privileges"  type="checkbox" <%if (prevList.contains("EDIT_PAYOR_PRIVILEGE")) {
                                                                      out.print("checked");
                                                                  }%> value="EDIT_PAYOR_PRIVILEGE" class="custom-control-input input-primary" id="payor_edit">
                                                              <label class="custom-control-label" for="payor_edit" style="padding-top: 2px;">Edit</label>
                                                          </div>
                                                          <%}%>
                                                      </td>
                                                  </tr> 
                                              </c:if>
                                              <c:if test="${role == 'ROLE_ADMIN' or role == 'ROLE_ENTITY_ADMIN'
                                                            or role == 'ROLE_ENTITY_STAFF'}">
                                                    <tr>
                                                        <td><h6 class="use_pri">Clearing House</h6></td>
                                                        <td>
                                                            <%if (rolePrivilegeResList.contains("NEW_CLEARINGHOUSE_PRIVILEGE")) { %>
                                                            <div class="custom-control custom-checkbox">
                                                                <input  name="privileges"  type="checkbox" <%if (prevList.contains("NEW_CLEARINGHOUSE_PRIVILEGE")) {
                                                                        out.print("checked");
                                                                    }%> value="NEW_CLEARINGHOUSE_PRIVILEGE" class="custom-control-input input-primary" id="clearinghouse_create">
                                                                <label class="custom-control-label" for="clearinghouse_create" style="padding-top: 2px;">Create</label>
                                                            </div>
                                                            <%}%>
                                                        </td>
                                                        <td>
                                                            <%if (rolePrivilegeResList.contains("VIEW_CLEARINGHOUSE_PRIVILEGE")) { %>
                                                            <div class="custom-control custom-checkbox">
                                                                <input  name="privileges"  type="checkbox" <%if (prevList.contains("VIEW_CLEARINGHOUSE_PRIVILEGE")) {
                                                                        out.print("checked");
                                                                    }%> value="VIEW_CLEARINGHOUSE_PRIVILEGE" class="custom-control-input input-primary" id="clearinghouse_view">
                                                                <label class="custom-control-label" for="clearinghouse_view" style="padding-top: 2px;">View</label>
                                                            </div>
                                                            <%}%>
                                                        </td>
                                                        <td>
                                                            <%if (rolePrivilegeResList.contains("EDIT_CLEARINGHOUSE_PRIVILEGE")) { %>
                                                            <div class="custom-control custom-checkbox">
                                                                <input  name="privileges"  type="checkbox" <%if (prevList.contains("EDIT_CLEARINGHOUSE_PRIVILEGE")) {
                                                                        out.print("checked");
                                                                    }%> value="EDIT_CLEARINGHOUSE_PRIVILEGE" class="custom-control-input input-primary" id="clearinghouse_edit">
                                                                <label class="custom-control-label" for="clearinghouse_edit" style="padding-top: 2px;">Edit</label>
                                                            </div>
                                                            <%}%>
                                                        </td>
                                                    </tr>
                                              </c:if>
                                              <c:if test="${role == 'ROLE_ADMIN'}">
                                                  <tr>
                                                      <td><h6 class="use_pri">Entity</h6></td>
                                                      <td>
                                                          <%if (rolePrivilegeResList.contains("NEW_ENTITY_PRIVILEGE")) { %>
                                                          <div class="custom-control custom-checkbox">
                                                              <input  name="privileges"  type="checkbox" <%if (prevList.contains("NEW_ENTITY_PRIVILEGE")) {
                                                                      out.print("checked");
                                                                  }%> value="NEW_ENTITY_PRIVILEGE" class="custom-control-input input-primary" id="entity_create">
                                                              <label class="custom-control-label" for="entity_create" style="padding-top: 2px;">Create</label>
                                                          </div>
                                                          <%}%>
                                                      </td>                                
                                                      <td>
                                                          <%if (rolePrivilegeResList.contains("VIEW_ENTITY_PRIVILEGE")) { %>
                                                          <div class="custom-control custom-checkbox">
                                                              <input  name="privileges"  type="checkbox" <%if (prevList.contains("VIEW_ENTITY_PRIVILEGE")) {
                                                                      out.print("checked");
                                                                  }%> value="VIEW_ENTITY_PRIVILEGE" class="custom-control-input input-primary" id="entity_view">
                                                              <label class="custom-control-label" for="entity_view" style="padding-top: 2px;">View </label>
                                                          </div>
                                                          <%}%>
                                                      </td>
                                                      <td>
                                                          <%if (rolePrivilegeResList.contains("EDIT_ENTITY_PRIVILEGE")) { %>
                                                          <div class="custom-control custom-checkbox">
                                                              <input  name="privileges"  type="checkbox" <%if (prevList.contains("EDIT_ENTITY_PRIVILEGE")) {
                                                                      out.print("checked");
                                                                  }%> value="EDIT_ENTITY_PRIVILEGE" class="custom-control-input input-primary" id="entity_edit">
                                                              <label class="custom-control-label" for="entity_edit" style="padding-top: 2px;">Edit</label>
                                                          </div>
                                                          <%}%>
                                                      </td>
                                                  </tr> 
                                              </c:if>

                                          </tbody>
                                      </table>
                                  </div>
                              </div>
                          </div>
                    </c:if>
                    <!--==================================================================-->
                    <div class="card-body task-comment">
                        <ul class="media-list p-0">
                            <li class="media">
                                <div class="media-left mr-3">

                                </div>

                                <div class="media-body">
                                    <c:if test="${role == 'ROLE_ADMIN' or role == 'ROLE_ENTITY_ADMIN'
                                                  or role == 'ROLE_PROOFER'
                                                  or role == 'ROLE_PRACTICE_ADMIN' 
                                                  or role == 'ROLE_GROUPCLINIC_PROVIDER' 
                                                  or role == 'ROLE_GROUPCLINIC_ADMIN'
                                                  or role == 'ROLE_GROUPCLINIC_STAFF'
                                                  or role == 'ROLE_CORP_ADMIN'
                                          }"> 


                                        <h6 class="media-heading txt-primary">EV</h6>
                                    </c:if>
                                    <c:if test="${role == 'ROLE_ADMIN' or role == 'ROLE_ENTITY_ADMIN'
                                                  or role == 'ROLE_PRACTICE_ADMIN'
                                                  or role == 'ROLE_GROUPCLINIC_ADMIN'
                                                  or role == 'ROLE_CORP_ADMIN'
                                                  or role == 'ROLE_BILLING_ADMIN'}"> 

                                          <div class="media mt-2">
                                              <a class="media-left mr-3">
                                                  <img class="img-fluid media-object img-radius comment-img" >
                                              </a>
                                              <div class="media-body">
                                                  <h6 class="h5font15 media-heading txt-primary">EV query</h6>
                                                  <div class="row">
                                                      <div class="col-4">
                                                          <%if (rolePrivilegeResList.contains("NEW_EVQUERY_PRIVILEGE")) { %>
                                                          <div class="custom-control custom-checkbox">
                                                              <input  name="privileges"  type="checkbox" <%if (prevList.contains("NEW_EVQUERY_PRIVILEGE")) {
                                                                      out.print("checked");
                                                                  }%> value="NEW_EVQUERY_PRIVILEGE" class="custom-control-input input-primary" id="ev_query_add">
                                                              <label class="custom-control-label" for="ev_query_add" style="padding-top: 2px;">Add</label>
                                                          </div>
                                                          <%}%>
                                                      </div>
                                                      <div class="col-4">
                                                          <%if (rolePrivilegeResList.contains("EDIT_EVQUERY_PRIVILEGE")) { %>
                                                          <div class="custom-control custom-checkbox">
                                                              <input  name="privileges"  type="checkbox" <%if (prevList.contains("EDIT_EVQUERY_PRIVILEGE")) {
                                                                      out.print("checked");
                                                                  }%> value="EDIT_EVQUERY_PRIVILEGE" class="custom-control-input input-primary" id="ev_query_edit">
                                                              <label class="custom-control-label" for="ev_query_edit" style="padding-top: 2px;">Edit</label>
                                                          </div>
                                                          <%}%>
                                                      </div>
                                                      <div class="col-4">
                                                          <%if (rolePrivilegeResList.contains("VIEW_EVQUERY_PRIVILEGE")) { %>
                                                          <div class="custom-control custom-checkbox">
                                                              <input  name="privileges"  type="checkbox" <%if (prevList.contains("VIEW_EVQUERY_PRIVILEGE")) {
                                                                      out.print("checked");
                                                                  }%> value="VIEW_EVQUERY_PRIVILEGE" class="custom-control-input input-primary" id="ev_query_view">
                                                              <label class="custom-control-label" for="ev_query_view" style="padding-top: 2px;">View</label>
                                                          </div>
                                                          <%}%>
                                                      </div>
                                                  </div> 

                                                  <hr style="margin-top: 5px;margin-bottom: 5px;" >
                                              </div>
                                          </div>
                                          <div class="media mt-2">
                                              <a class="media-left mr-3">
                                                  <img class="img-fluid media-object img-radius comment-img" >
                                              </a>
                                              <div class="media-body">
                                                  <h6 class="h5font15 media-heading txt-primary">EV Result</h6>
                                                  <div class="row">
                                                      <div class="col-4">
                                                          <%if (rolePrivilegeResList.contains("NEW_EVRESULT_PRIVILEGE")) { %>
                                                          <div class="custom-control custom-checkbox">
                                                              <input  name="privileges"  type="checkbox" <%if (prevList.contains("NEW_EVRESULT_PRIVILEGE")) {
                                                                      out.print("checked");
                                                                  }%> value="NEW_EVRESULT_PRIVILEGE" class="custom-control-input input-primary" id="ev_result_add">
                                                              <label class="custom-control-label" for="ev_result_add" style="padding-top: 2px;">Add</label>
                                                          </div>
                                                          <%}%>
                                                      </div>
                                                      <div class="col-4">
                                                          <%if (rolePrivilegeResList.contains("EDIT_EVRESULT_PRIVILEGE")) { %>
                                                          <div class="custom-control custom-checkbox">
                                                              <input  name="privileges"  type="checkbox" <%if (prevList.contains("EDIT_EVRESULT_PRIVILEGE")) {
                                                                      out.print("checked");
                                                                  }%> value="EDIT_EVRESULT_PRIVILEGE" class="custom-control-input input-primary" id="ev_result_edit">
                                                              <label class="custom-control-label" for="ev_result_edit" style="padding-top: 2px;">Edit</label>
                                                          </div>
                                                          <%}%>    
                                                      </div>
                                                      <div class="col-4">
                                                          <%if (rolePrivilegeResList.contains("VIEW_EVRESULT_PRIVILEGE")) { %>
                                                          <div class="custom-control custom-checkbox">
                                                              <input  name="privileges"  type="checkbox" <%if (prevList.contains("VIEW_EVRESULT_PRIVILEGE")) {
                                                                      out.print("checked");
                                                                  }%> value="VIEW_EVRESULT_PRIVILEGE" class="custom-control-input input-primary" id="ev_result_view">
                                                              <label class="custom-control-label" for="ev_result_view" style="padding-top: 2px;">View</label>
                                                          </div>
                                                          <%}%>    
                                                      </div>
                                                  </div> 

                                                  <hr style="margin-top: 5px;margin-bottom: 5px;" >
                                              </div>
                                          </div>
                                          <div class="media mt-2">
                                              <a class="media-left mr-3">
                                                  <img class="img-fluid media-object img-radius comment-img" >
                                              </a>
                                              <div class="media-body">
                                                  <h6 class="h5font15 media-heading txt-primary">Alias</h6>
                                                  <div class="row">
                                                      <div class="col-4">
                                                          <%if (rolePrivilegeResList.contains("NEW_ALIAS_PRIVILEGE")) { %>
                                                          <div class="custom-control custom-checkbox">
                                                              <input  name="privileges"  type="checkbox" <%if (prevList.contains("NEW_ALIAS_PRIVILEGE")) {
                                                                      out.print("checked");
                                                                  }%> value="NEW_ALIAS_PRIVILEGE" class="custom-control-input input-primary" id="alias_add">
                                                              <label class="custom-control-label" for="alias_add" style="padding-top: 2px;">Add</label>
                                                          </div>
                                                          <%}%>    
                                                      </div>
                                                      <div class="col-4">
                                                          <%if (rolePrivilegeResList.contains("EDIT_ALIAS_PRIVILEGE")) { %>
                                                          <div class="custom-control custom-checkbox">
                                                              <input  name="privileges"  type="checkbox" <%if (prevList.contains("EDIT_ALIAS_PRIVILEGE")) {
                                                                      out.print("checked");
                                                                  }%> value="EDIT_ALIAS_PRIVILEGE" class="custom-control-input input-primary" id="alias_edit">
                                                              <label class="custom-control-label" for="alias_edit" style="padding-top: 2px;">Edit</label>
                                                          </div>
                                                          <%}%> 
                                                      </div>
                                                      <div class="col-4">
                                                          <%if (rolePrivilegeResList.contains("VIEW_ALIAS_PRIVILEGE")) { %>
                                                          <div class="custom-control custom-checkbox">
                                                              <input  name="privileges"  type="checkbox" <%if (prevList.contains("VIEW_ALIAS_PRIVILEGE")) {
                                                                      out.print("checked");
                                                                  }%> value="VIEW_ALIAS_PRIVILEGE" class="custom-control-input input-primary" id="alias_view">
                                                              <label class="custom-control-label" for="alias_view" style="padding-top: 2px;">View</label>
                                                          </div>
                                                          <%}%> 
                                                      </div>
                                                  </div>    
                                                  <hr style="margin-top: 5px;margin-bottom: 5px;" >
                                              </div>
                                          </div>

                                          <%--                                          <hr>
                                                                                    <h6 class="h5font15 media-heading txt-primary">Favorites</h6>
                                                                                    <div class="custom-control custom-checkbox">
                                                                                        <input  name="privileges"  type="checkbox" <%if (prevList.contains("VIEW_FAVORITES_PRIVILEGE")) {
                                                                                                out.print("checked");
                                                                                            }%> value="VIEW_FAVORITES_PRIVILEGE" class="custom-control-input input-primary" id="favorites">
                                                                                        <label class="custom-control-label" for="favorites" style="padding-top: 2px;">Favorites</label>
                                                                                    </div>--%>
                                    </c:if>

                                    <c:if test="${role == 'ROLE_ADMIN' or role == 'ROLE_ENTITY_ADMIN'
                                                  or role == 'ROLE_PROOFER'
                                                  or role == 'ROLE_PRACTICE_ADMIN' 
                                                  or role == 'ROLE_GROUPCLINIC_PROVIDER' 
                                                  or role == 'ROLE_GROUPCLINIC_ADMIN'
                                                  or role == 'ROLE_GROUPCLINIC_STAFF'}"> 

                                          <div class="media mt-2">
                                              <a class="media-left mr-3">
                                                  <img class="img-fluid media-object img-radius comment-img" >
                                              </a>
                                              <div class="media-body">
                                                  <h6 class="h5font15 media-heading txt-primary">Favorites</h6>
                                                  <div class="row">
                                                      <div class="col-4">
                                                          <%if (rolePrivilegeResList.contains("NEW_FAVORITES_PRIVILEGE")) { %>
                                                          <div class="custom-control custom-checkbox">
                                                              <input  name="privileges"  type="checkbox" <%if (prevList.contains("NEW_FAVORITES_PRIVILEGE")) {
                                                                      out.print("checked");
                                                                  }%> value="NEW_FAVORITES_PRIVILEGE" class="custom-control-input input-primary" id="favorites_create">
                                                              <label class="custom-control-label" for="favorites_create" style="padding-top: 2px;">Add</label>
                                                          </div>
                                                          <%}%> 
                                                      </div>
                                                      <div class="col-4">
                                                          <%if (rolePrivilegeResList.contains("EDIT_FAVORITES_PRIVILEGE")) { %>
                                                          <div class="custom-control custom-checkbox">
                                                              <input  name="privileges"  type="checkbox" <%if (prevList.contains("EDIT_FAVORITES_PRIVILEGE")) {
                                                                      out.print("checked");
                                                                  }%> value="EDIT_FAVORITES_PRIVILEGE" class="custom-control-input input-primary" id="favorites_edit">
                                                              <label class="custom-control-label" for="favorites_edit" style="padding-top: 2px;">Edit</label>
                                                          </div>
                                                          <%}%> 
                                                      </div>
                                                      <div class="col-4">
                                                          <%if (rolePrivilegeResList.contains("VIEW_FAVORITES_PRIVILEGE")) { %>
                                                          <div class="custom-control custom-checkbox">
                                                              <input  name="privileges"  type="checkbox" <%if (prevList.contains("VIEW_FAVORITES_PRIVILEGE")) {
                                                                      out.print("checked");
                                                                  }%> value="VIEW_FAVORITES_PRIVILEGE" class="custom-control-input input-primary" id="favorites_view">
                                                              <label class="custom-control-label" for="favorites_view" style="padding-top: 2px;">View</label>
                                                          </div>
                                                          <%}%> 
                                                      </div>
                                                  </div>                                                            
                                              </div>
                                          </div> 

                                    </c:if> 
                                    <hr>

                                    <c:if test="${role == 'ROLE_ADMIN' or
                                                  role == 'ROLE_ENTITY_ADMIN' or
                                                  role == 'ROLE_PRACTICE_ADMIN' or
                                                  role == 'ROLE_GROUPCLINIC_PROVIDER' or
                                                  role == 'ROLE_GROUPCLINIC_ADMIN' or
                                                  role == 'ROLE_GROUPCLINIC_STAFF' or
                                                  role == 'ROLE_CORP_PROVIDER' or
                                                  role == 'ROLE_CORP_ADMIN' or
                                                  role == 'ROLE_CORP_STAFF' or
                                                  role == 'ROLE_PRACTICE_STAFF' or
                                                  role == 'ROLE_PRACTICE_PROVIDER' or
                                                  role == 'ROLE_REFERING_PROVIDER'  }">

                                          <h6 class="h5font15 media-heading txt-primary">Master Forms</h6>                                     
                                          <div class="table-responsive">
                                              <div class="session-scroll">
                                                  <table class="table table-hover m-b-0 tbl_font">

                                                      <tr style="border: none !important">
                                                          <th  style="border: none !important"><span>&nbsp;</span></th>
                                                          <th style="border: none !important">NEW 
                                                              <div class="progress mt-1" style="height:4px;">
                                                                  <div class="progress-bar bg-danger rounded" role="progressbar" style="width: 60%;" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100"></div>
                                                              </div>
                                                          </th>
                                                          <th style="border: none !important">VIEW
                                                              <div class="progress mt-1" style="height:4px;">
                                                                  <div class="progress-bar bg-primary rounded" role="progressbar" style="width: 50%;" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100"></div>
                                                              </div>
                                                          </th>
                                                          <th style="border: none !important">EDIT 
                                                              <div class="progress mt-1" style="height:4px;">
                                                                  <div class="progress-bar bg-warning rounded" role="progressbar" style="width: 70%;" aria-valuenow="70" aria-valuemin="0" aria-valuemax="100"></div>
                                                              </div>
                                                          </th>

                                                      </tr>

                                                      <tbody>

                                                          <c:if test="${role == 'ROLE_ADMIN' or
                                                                        role == 'ROLE_USER' }">

                                                                <tr>
                                                                    <td><h6 class="use_pri">Benefit Status</h6></td>
                                                                    <td>
                                                                        <%if (rolePrivilegeResList.contains("NEW_BENEFIT_STATUS_PRIVILEGE")) { %>
                                                                        <div class="custom-control custom-checkbox">
                                                                            <input  name="privileges"  type="checkbox" <%if (prevList.contains("NEW_BENEFIT_STATUS_PRIVILEGE")) {
                                                                                    out.print("checked");
                                                                                }%> value="NEW_BENEFIT_STATUS_PRIVILEGE" class="custom-control-input input-primary" id="new_benefit_status_privilege">
                                                                            <label class="custom-control-label" for="new_benefit_status_privilege" style="padding-top: 2px;">Create</label>
                                                                        </div>
                                                                        <%}%> 
                                                                    </td>
                                                                    <td>
                                                                        <%if (rolePrivilegeResList.contains("VIEW_BENEFIT_STATUS_PRIVILEGE")) { %>
                                                                        <div class="custom-control custom-checkbox">
                                                                            <input  name="privileges"  type="checkbox" <%if (prevList.contains("VIEW_BENEFIT_STATUS_PRIVILEGE")) {
                                                                                    out.print("checked");
                                                                                }%> value="VIEW_BENEFIT_STATUS_PRIVILEGE" class="custom-control-input input-primary" id="view_benefit_status_privilege">
                                                                            <label class="custom-control-label" for="view_benefit_status_privilege" style="padding-top: 2px;">View</label>
                                                                        </div>
                                                                        <%}%> 
                                                                    </td>
                                                                    <td>
                                                                        <%if (rolePrivilegeResList.contains("EDIT_BENEFIT_STATUS_PRIVILEGE")) { %>
                                                                        <div class="custom-control custom-checkbox">
                                                                            <input  name="privileges"  type="checkbox" <%if (prevList.contains("EDIT_BENEFIT_STATUS_PRIVILEGE")) {
                                                                                    out.print("checked");
                                                                                }%> value="EDIT_BENEFIT_STATUS_PRIVILEGE" class="custom-control-input input-primary" id="edit_benefit_status_privilege">
                                                                            <label class="custom-control-label" for="edit_benefit_status_privilege" style="padding-top: 2px;">Edit</label>
                                                                        </div>
                                                                        <%}%> 
                                                                    </td>
                                                                </tr> 
                                                          </c:if>
                                                          <c:if test="${role == 'ROLE_ADMIN' or
                                                                        role == 'ROLE_USER'  }">

                                                                <tr>
                                                                    <td><h6 class="use_pri">Benefit Type</h6></td>
                                                                    <td>
                                                                        <%if (rolePrivilegeResList.contains("NEW_BENEFIT_TYPE_PRIVILEGE")) { %>
                                                                        <div class="custom-control custom-checkbox">
                                                                            <input  name="privileges"  type="checkbox" <%if (prevList.contains("NEW_BENEFIT_TYPE_PRIVILEGE")) {
                                                                                    out.print("checked");
                                                                                }%> value="NEW_BENEFIT_TYPE_PRIVILEGE" class="custom-control-input input-primary" id="new_benefit_type_privilege">
                                                                            <label class="custom-control-label" for="new_benefit_type_privilege" style="padding-top: 2px;">Create</label>
                                                                        </div>
                                                                        <%}%> 
                                                                    </td>
                                                                    <td>
                                                                        <%if (rolePrivilegeResList.contains("VIEW_BENEFIT_TYPE_PRIVILEGE")) { %>
                                                                        <div class="custom-control custom-checkbox">
                                                                            <input  name="privileges"  type="checkbox" <%if (prevList.contains("VIEW_BENEFIT_TYPE_PRIVILEGE")) {
                                                                                    out.print("checked");
                                                                                }%> value="VIEW_BENEFIT_TYPE_PRIVILEGE" class="custom-control-input input-primary" id="view_benefit_type_privilege">
                                                                            <label class="custom-control-label" for="view_benefit_type_privilege" style="padding-top: 2px;">View</label>
                                                                        </div>
                                                                        <%}%> 
                                                                    </td>
                                                                    <td>
                                                                        <%if (rolePrivilegeResList.contains("EDIT_BENEFIT_TYPE_PRIVILEGE")) { %>
                                                                        <div class="custom-control custom-checkbox">
                                                                            <input  name="privileges"  type="checkbox" <%if (prevList.contains("EDIT_BENEFIT_TYPE_PRIVILEGE")) {
                                                                                    out.print("checked");
                                                                                }%> value="EDIT_BENEFIT_TYPE_PRIVILEGE" class="custom-control-input input-primary" id="edit_benefit_type_privilege">
                                                                            <label class="custom-control-label" for="edit_benefit_type_privilege" style="padding-top: 2px;">Edit</label>
                                                                        </div>
                                                                        <%}%> 
                                                                    </td>
                                                                </tr> 
                                                          </c:if>
                                                          <c:if test="${role == 'ROLE_ADMIN' or
                                                                        role == 'ROLE_USER'}">

                                                                <tr>
                                                                    <td><h6 class="use_pri">Procedure Code</h6></td>
                                                                    <td>
                                                                        <%if (rolePrivilegeResList.contains("NEW_PROCEDURE_CODE_PRIVILEGE")) { %>
                                                                        <div class="custom-control custom-checkbox">
                                                                            <input  name="privileges"  type="checkbox" <%if (prevList.contains("NEW_PROCEDURE_CODE_PRIVILEGE")) {
                                                                                    out.print("checked");
                                                                                }%> value="NEW_PROCEDURE_CODE_PRIVILEGE" class="custom-control-input input-primary" id="new_procedurecode_privilege">
                                                                            <label class="custom-control-label" for="new_procedurecode_privilege" style="padding-top: 2px;">Create</label>
                                                                        </div>
                                                                        <%}%> 
                                                                    </td>
                                                                    <td>
                                                                        <%if (rolePrivilegeResList.contains("VIEW_PROCEDURE_CODE_PRIVILEGE")) { %>
                                                                        <div class="custom-control custom-checkbox">
                                                                            <input  name="privileges"  type="checkbox" <%if (prevList.contains("VIEW_PROCEDURE_CODE_PRIVILEGE")) {
                                                                                    out.print("checked");
                                                                                }%> value="VIEW_PROCEDURE_CODE_PRIVILEGE" class="custom-control-input input-primary" id="view_procedurecode_privilege">
                                                                            <label class="custom-control-label" for="view_procedurecode_privilege" style="padding-top: 2px;">View</label>
                                                                        </div>
                                                                        <%}%> 
                                                                    </td>
                                                                    <td>
                                                                        <%if (rolePrivilegeResList.contains("EDIT_PROCEDURE_CODE_PRIVILEGE")) { %>
                                                                        <div class="custom-control custom-checkbox">
                                                                            <input  name="privileges"  type="checkbox" <%if (prevList.contains("EDIT_PROCEDURE_CODE_PRIVILEGE")) {
                                                                                    out.print("checked");
                                                                                }%> value="EDIT_PROCEDURE_CODE_PRIVILEGE" class="custom-control-input input-primary" id="edit_procedurecode_privilege">
                                                                            <label class="custom-control-label" for="edit_procedurecode_privilege" style="padding-top: 2px;">Edit</label>
                                                                        </div>
                                                                        <%}%> 
                                                                    </td>
                                                                </tr>  
                                                          </c:if>
                                                          <c:if test="${role == 'ROLE_ADMIN' or
                                                                        role == 'ROLE_USER'  }">

                                                                <tr>
                                                                    <td><h6 class="use_pri">Group</h6></td>
                                                                    <td>
                                                                        <%if (rolePrivilegeResList.contains("NEW_GROUP_PRIVILEGE")) { %>
                                                                        <div class="custom-control custom-checkbox">
                                                                            <input  name="privileges"  type="checkbox" <%if (prevList.contains("NEW_GROUP_PRIVILEGE")) {
                                                                                    out.print("checked");
                                                                                }%> value="NEW_GROUP_PRIVILEGE" class="custom-control-input input-primary" id="new_group_privilege">
                                                                            <label class="custom-control-label" for="new_group_privilege" style="padding-top: 2px;">Create</label>
                                                                        </div>
                                                                        <%}%> 
                                                                    </td>
                                                                    <td>
                                                                        <%if (rolePrivilegeResList.contains("VIEW_GROUP_PRIVILEGE")) { %>
                                                                        <div class="custom-control custom-checkbox">
                                                                            <input  name="privileges"  type="checkbox" <%if (prevList.contains("VIEW_GROUP_PRIVILEGE")) {
                                                                                    out.print("checked");
                                                                                }%> value="VIEW_GROUP_PRIVILEGE" class="custom-control-input input-primary" id="view_group_privilege">
                                                                            <label class="custom-control-label" for="view_group_privilege" style="padding-top: 2px;">View</label>
                                                                        </div>
                                                                        <%}%> 
                                                                    </td>
                                                                    <td>
                                                                        <%if (rolePrivilegeResList.contains("EDIT_GROUP_PRIVILEGE")) { %>
                                                                        <div class="custom-control custom-checkbox">
                                                                            <input  name="privileges"  type="checkbox" <%if (prevList.contains("EDIT_GROUP_PRIVILEGE")) {
                                                                                    out.print("checked");
                                                                                }%> value="EDIT_GROUP_PRIVILEGE" class="custom-control-input input-primary" id="edit_group_privilege">
                                                                            <label class="custom-control-label" for="edit_group_privilege" style="padding-top: 2px;">Edit</label>
                                                                        </div>
                                                                        <%}%> 
                                                                    </td>
                                                                </tr> 
                                                          </c:if>
                                                          <c:if test="${role == 'ROLE_ADMIN' or
                                                                        role == 'ROLE_USER'}">

                                                                <tr>
                                                                    <td><h6 class="use_pri">Diagnostic Code</h6></td>
                                                                    <td>
                                                                        <%if (rolePrivilegeResList.contains("NEW_DIAGNOSTIC_CODE_PRIVILEGE")) { %>
                                                                        <div class="custom-control custom-checkbox">
                                                                            <input  name="privileges"  type="checkbox" <%if (prevList.contains("NEW_DIAGNOSTIC_CODE_PRIVILEGE")) {
                                                                                    out.print("checked");
                                                                                }%> value="NEW_DIAGNOSTIC_CODE_PRIVILEGE" class="custom-control-input input-primary" id="new_diagnostic_privilege">
                                                                            <label class="custom-control-label" for="new_diagnostic_privilege" style="padding-top: 2px;">Create</label>
                                                                        </div>
                                                                        <%}%> 
                                                                    </td>
                                                                    <td>
                                                                        <%if (rolePrivilegeResList.contains("VIEW_DIAGNOSTIC_CODE_PRIVILEGE")) { %>
                                                                        <div class="custom-control custom-checkbox">
                                                                            <input  name="privileges"  type="checkbox" <%if (prevList.contains("VIEW_DIAGNOSTIC_CODE_PRIVILEGE")) {
                                                                                    out.print("checked");
                                                                                }%> value="VIEW_DIAGNOSTIC_CODE_PRIVILEGE" class="custom-control-input input-primary" id="view_diagnostic_privilege">
                                                                            <label class="custom-control-label" for="view_diagnostic_privilege" style="padding-top: 2px;">View</label>
                                                                        </div>
                                                                        <%}%> 
                                                                    </td>
                                                                    <td>
                                                                        <%if (rolePrivilegeResList.contains("EDIT_DIAGNOSTIC_CODE_PRIVILEGE")) { %>
                                                                        <div class="custom-control custom-checkbox">
                                                                            <input  name="privileges"  type="checkbox" <%if (prevList.contains("EDIT_DIAGNOSTIC_CODE_PRIVILEGE")) {
                                                                                    out.print("checked");
                                                                                }%> value="EDIT_DIAGNOSTIC_CODE_PRIVILEGE" class="custom-control-input input-primary" id="edit_diagnostic_privilege">
                                                                            <label class="custom-control-label" for="edit_diagnostic_privilege" style="padding-top: 2px;">Edit</label>
                                                                        </div>
                                                                        <%}%> 
                                                                    </td>
                                                                </tr>  
                                                          </c:if>
                                                          <c:if test="${role == 'ROLE_ADMIN' or
                                                                        role == 'ROLE_USER'  }"> 
                                                                <tr>
                                                                    <td><h6 class="use_pri">Document Type</h6></td>
                                                                    <td>
                                                                        <%if (rolePrivilegeResList.contains("NEW_DOCUMENT_TYPE_PRIVILEGE")) { %>
                                                                        <div class="custom-control custom-checkbox">
                                                                            <input  name="privileges"  type="checkbox" <%if (prevList.contains("NEW_DOCUMENT_TYPE_PRIVILEGE")) {
                                                                                    out.print("checked");
                                                                                }%> value="NEW_DOCUMENT_TYPE_PRIVILEGE" class="custom-control-input input-primary" id="new_documentcode_privilege">
                                                                            <label class="custom-control-label" for="new_documentcode_privilege" style="padding-top: 2px;">Create</label>
                                                                        </div>
                                                                        <%}%> 
                                                                    </td>
                                                                    <td>
                                                                        <%if (rolePrivilegeResList.contains("VIEW_DOCUMENT_TYPE_PRIVILEGE")) { %>
                                                                        <div class="custom-control custom-checkbox">
                                                                            <input  name="privileges"  type="checkbox" <%if (prevList.contains("VIEW_DOCUMENT_TYPE_PRIVILEGE")) {
                                                                                    out.print("checked");
                                                                                }%> value="VIEW_DOCUMENT_TYPE_PRIVILEGE" class="custom-control-input input-primary" id="view_documentcode_privilege">
                                                                            <label class="custom-control-label" for="view_documentcode_privilege" style="padding-top: 2px;">View</label>
                                                                        </div>
                                                                        <%}%> 
                                                                    </td>
                                                                    <td>
                                                                        <%if (rolePrivilegeResList.contains("EDIT_DOCUMENT_TYPE_PRIVILEGE")) { %>
                                                                        <div class="custom-control custom-checkbox">
                                                                            <input  name="privileges"  type="checkbox" <%if (prevList.contains("EDIT_DOCUMENT_TYPE_PRIVILEGE")) {
                                                                                    out.print("checked");
                                                                                }%> value="EDIT_DOCUMENT_TYPE_PRIVILEGE" class="custom-control-input input-primary" id="edit_documentcode_privilege">
                                                                            <label class="custom-control-label" for="edit_documentcode_privilege" style="padding-top: 2px;">Edit</label>
                                                                        </div>
                                                                        <%}%> 
                                                                    </td>
                                                                </tr> 
                                                          </c:if>
                                                          <c:if test="${role == 'ROLE_ADMIN' or
                                                                        role == 'ROLE_USER' }"> 
                                                                <tr>
                                                                    <td><h6 class="use_pri">Employment Status</h6></td>
                                                                    <td>
                                                                        <%if (rolePrivilegeResList.contains("NEW_EMPLOYMENT_STATUS_PRIVILEGE")) { %>
                                                                        <div class="custom-control custom-checkbox">
                                                                            <input  name="privileges"  type="checkbox" <%if (prevList.contains("NEW_EMPLOYMENT_STATUS_PRIVILEGE")) {
                                                                                    out.print("checked");
                                                                                }%> value="NEW_EMPLOYMENT_STATUS_PRIVILEGE" class="custom-control-input input-primary" id="new_employementsts_privilege">
                                                                            <label class="custom-control-label" for="new_employementsts_privilege" style="padding-top: 2px;">Create</label>
                                                                        </div>
                                                                        <%}%> 
                                                                    </td>
                                                                    <td>
                                                                        <%if (rolePrivilegeResList.contains("VIEW_EMPLOYMENT_STATUS_PRIVILEGE")) { %>
                                                                        <div class="custom-control custom-checkbox">
                                                                            <input  name="privileges"  type="checkbox" <%if (prevList.contains("VIEW_EMPLOYEMENT_STATUS_PRIVILEGE")) {
                                                                                    out.print("checked");
                                                                                }%> value="VIEW_EMPLOYEMENT_STATUS_PRIVILEGE" class="custom-control-input input-primary" id="view_employementsts_privilege">
                                                                            <label class="custom-control-label" for="view_employementsts_privilege" style="padding-top: 2px;">View</label>
                                                                        </div>
                                                                        <%}%>
                                                                    </td>
                                                                    <td>
                                                                        <%if (rolePrivilegeResList.contains("EDIT_EMPLOYMENT_STATUS_PRIVILEGE")) { %>
                                                                        <div class="custom-control custom-checkbox">
                                                                            <input  name="privileges"  type="checkbox" <%if (prevList.contains("EDIT_EMPLOYEMENT_STATUS_PRIVILEGE")) {
                                                                                    out.print("checked");
                                                                                }%> value="EDIT_EMPLOYEMENT_STATUS_PRIVILEGE" class="custom-control-input input-primary" id="edit_employementsts_privilege">
                                                                            <label class="custom-control-label" for="edit_employementsts_privilege" style="padding-top: 2px;">Edit</label>
                                                                        </div>
                                                                        <%}%>
                                                                    </td>
                                                                </tr> 
                                                          </c:if>
                                                          <c:if test="${role == 'ROLE_ADMIN' or
                                                                        role == 'ROLE_USER'   }">

                                                                <tr>
                                                                    <td><h6 class="use_pri">Ethnicity</h6></td>
                                                                    <td>
                                                                        <%if (rolePrivilegeResList.contains("NEW_ETHNICITY_PRIVILEGE")) { %>
                                                                        <div class="custom-control custom-checkbox">
                                                                            <input  name="privileges"  type="checkbox" <%if (prevList.contains("NEW_ETHNICITY_PRIVILEGE")) {
                                                                                    out.print("checked");
                                                                                }%> value="NEW_ETHNICITY_PRIVILEGE" class="custom-control-input input-primary" id="new_ethnicity_privilege">
                                                                            <label class="custom-control-label" for="new_ethnicity_privilege" style="padding-top: 2px;">Create</label>
                                                                        </div>
                                                                        <%}%>
                                                                    </td>
                                                                    <td>
                                                                        <%if (rolePrivilegeResList.contains("VIEW_ETHNICITY_PRIVILEGE")) { %>
                                                                        <div class="custom-control custom-checkbox">
                                                                            <input  name="privileges"  type="checkbox" <%if (prevList.contains("VIEW_ETHNICITY_PRIVILEGE")) {
                                                                                    out.print("checked");
                                                                                }%> value="VIEW_ETHNICITY_PRIVILEGE" class="custom-control-input input-primary" id="view_ethnicity_privilege">
                                                                            <label class="custom-control-label" for="view_ethnicity_privilege" style="padding-top: 2px;">View</label>
                                                                        </div>
                                                                        <%}%>
                                                                    </td>
                                                                    <td>
                                                                        <%if (rolePrivilegeResList.contains("EDIT_ETHNICITY_PRIVILEGE")) { %>
                                                                        <div class="custom-control custom-checkbox">
                                                                            <input  name="privileges"  type="checkbox" <%if (prevList.contains("EDIT_ETHNICITY_PRIVILEGE")) {
                                                                                    out.print("checked");
                                                                                }%> value="EDIT_ETHNICITY_PRIVILEGE" class="custom-control-input input-primary" id="edit_ethnicity_privilege">
                                                                            <label class="custom-control-label" for="edit_ethnicity_privilege" style="padding-top: 2px;">Edit</label>
                                                                        </div>
                                                                        <%}%>
                                                                    </td>
                                                                </tr> 
                                                          </c:if>
                                                          <c:if test="${role == 'ROLE_ADMIN' or
                                                                        role == 'ROLE_USER'  }">

                                                                <tr>
                                                                    <td><h6 class="use_pri">Marital Status</h6></td>
                                                                    <td>
                                                                        <%if (rolePrivilegeResList.contains("NEW_MARITAL_STATUS_PRIVILEGE")) { %>
                                                                        <div class="custom-control custom-checkbox">
                                                                            <input  name="privileges"  type="checkbox" <%if (prevList.contains("NEW_MARITAL_STATUS_PRIVILEGE")) {
                                                                                    out.print("checked");
                                                                                }%> value="NEW_MARITAL_STATUS_PRIVILEGE" class="custom-control-input input-primary" id="new_maritalsts_privilege">
                                                                            <label class="custom-control-label" for="new_maritalsts_privilege" style="padding-top: 2px;">Create</label>
                                                                        </div>
                                                                        <%}%>
                                                                    </td>
                                                                    <td>
                                                                        <%if (rolePrivilegeResList.contains("VIEW_MARITAL_STATUS_PRIVILEGE")) { %>
                                                                        <div class="custom-control custom-checkbox">
                                                                            <input  name="privileges"  type="checkbox" <%if (prevList.contains("VIEW_MARITAL_STATUS_PRIVILEGE")) {
                                                                                    out.print("checked");
                                                                                }%> value="VIEW_MARITAL_STATUS_PRIVILEGE" class="custom-control-input input-primary" id="view_maritalsts_privilege">
                                                                            <label class="custom-control-label" for="view_maritalsts_privilege" style="padding-top: 2px;">View</label>
                                                                        </div>
                                                                        <%}%>
                                                                    </td>
                                                                    <td>
                                                                        <%if (rolePrivilegeResList.contains("EDIT_MARITAL_STATUS_PRIVILEGE")) { %>
                                                                        <div class="custom-control custom-checkbox">
                                                                            <input  name="privileges"  type="checkbox" <%if (prevList.contains("EDIT_MARITAL_STATUS_PRIVILEGE")) {
                                                                                    out.print("checked");
                                                                                }%> value="EDIT_MARITAL_STATUS_PRIVILEGE" class="custom-control-input input-primary" id="edit_maritalsts_privilege">
                                                                            <label class="custom-control-label" for="edit_maritalsts_privilege" style="padding-top: 2px;">Edit</label>
                                                                        </div>
                                                                        <%}%>
                                                                    </td>
                                                                </tr> 
                                                          </c:if>
                                                          <c:if test="${role == 'ROLE_ADMIN' or
                                                                        role == 'ROLE_USER' }"> 
                                                                <tr>
                                                                    <td><h6 class="use_pri">Preferred Language</h6></td>
                                                                    <td>
                                                                        <%if (rolePrivilegeResList.contains("NEW_PREFERRED_LANG_PRIVILEGE")) { %>
                                                                        <div class="custom-control custom-checkbox">
                                                                            <input  name="privileges"  type="checkbox" <%if (prevList.contains("NEW_PREFERRED_LANG_PRIVILEGE")) {
                                                                                    out.print("checked");
                                                                                }%> value="NEW_PREFERRED_LANG_PRIVILEGE" class="custom-control-input input-primary" id="new_preferredlang_privilege">
                                                                            <label class="custom-control-label" for="new_preferredlang_privilege" style="padding-top: 2px;">Create</label>
                                                                        </div>
                                                                        <%}%>
                                                                    </td>
                                                                    <td>
                                                                        <%if (rolePrivilegeResList.contains("VIEW_PREFERRED_LANG_PRIVILEGE")) { %>
                                                                        <div class="custom-control custom-checkbox">
                                                                            <input  name="privileges"  type="checkbox" <%if (prevList.contains("VIEW_PREFERRED_LANG_PRIVILEGE")) {
                                                                                    out.print("checked");
                                                                                }%> value="VIEW_PREFERRED_LANG_PRIVILEGE" class="custom-control-input input-primary" id="view_preferredlang_privilege">
                                                                            <label class="custom-control-label" for="view_preferredlang_privilege" style="padding-top: 2px;">View</label>
                                                                        </div>
                                                                        <%}%>
                                                                    </td>
                                                                    <td>
                                                                        <%if (rolePrivilegeResList.contains("EDIT_PREFERRED_LANG_PRIVILEGE")) { %>
                                                                        <div class="custom-control custom-checkbox">
                                                                            <input  name="privileges"  type="checkbox" <%if (prevList.contains("EDIT_PREFERRED_LANG_PRIVILEGE")) {
                                                                                    out.print("checked");
                                                                                }%> value="EDIT_PREFERRED_LANG_PRIVILEGE" class="custom-control-input input-primary" id="edit_preferredlang_privilege">
                                                                            <label class="custom-control-label" for="edit_preferredlang_privilege" style="padding-top: 2px;">Edit</label>
                                                                        </div>
                                                                        <%}%>
                                                                    </td>
                                                                </tr> 
                                                          </c:if>
                                                          <c:if test="${role == 'ROLE_ADMIN' or
                                                                        role == 'ROLE_USER' }">

                                                                <tr>
                                                                    <td><h6 class="use_pri">Race</h6></td>
                                                                    <td>
                                                                        <%if (rolePrivilegeResList.contains("NEW_RACE_PRIVILEGE")) { %>
                                                                        <div class="custom-control custom-checkbox">
                                                                            <input  name="privileges"  type="checkbox" <%if (prevList.contains("NEW_RACE_PRIVILEGE")) {
                                                                                    out.print("checked");
                                                                                }%> value="NEW_RACE_PRIVILEGE" class="custom-control-input input-primary" id="new_race_privilege">
                                                                            <label class="custom-control-label" for="new_race_privilege" style="padding-top: 2px;">Create</label>
                                                                        </div>
                                                                        <%}%>
                                                                    </td>
                                                                    <td>
                                                                        <%if (rolePrivilegeResList.contains("VIEW_RACE_PRIVILEGE")) { %>
                                                                        <div class="custom-control custom-checkbox">
                                                                            <input  name="privileges"  type="checkbox" <%if (prevList.contains("VIEW_RACE_PRIVILEGE")) {
                                                                                    out.print("checked");
                                                                                }%> value="VIEW_RACE_PRIVILEGE" class="custom-control-input input-primary" id="view_race_privilege">
                                                                            <label class="custom-control-label" for="view_race_privilege" style="padding-top: 2px;">View</label>
                                                                        </div>
                                                                        <%}%>
                                                                    </td>
                                                                    <td>
                                                                        <%if (rolePrivilegeResList.contains("EDIT_RACE_PRIVILEGE")) { %>
                                                                        <div class="custom-control custom-checkbox">
                                                                            <input  name="privileges"  type="checkbox" <%if (prevList.contains("EDIT_RACE_PRIVILEGE")) {
                                                                                    out.print("checked");
                                                                                }%> value="EDIT_RACE_PRIVILEGE" class="custom-control-input input-primary" id="edit_race_privilege">
                                                                            <label class="custom-control-label" for="edit_race_privilege" style="padding-top: 2px;">Edit</label>
                                                                        </div>
                                                                        <%}%>
                                                                    </td>
                                                                </tr> 
                                                          </c:if>
                                                          <c:if test="${role == 'ROLE_ADMIN' or
                                                                        role == 'ROLE_USER' }">

                                                                <tr>
                                                                    <td><h6 class="use_pri">Religion</h6></td>
                                                                    <td>
                                                                        <%if (rolePrivilegeResList.contains("NEW_RELIGION_PRIVILEGE")) { %>
                                                                        <div class="custom-control custom-checkbox">
                                                                            <input  name="privileges"  type="checkbox" <%if (prevList.contains("NEW_RELIGION_PRIVILEGE")) {
                                                                                    out.print("checked");
                                                                                }%> value="NEW_RELIGION_PRIVILEGE" class="custom-control-input input-primary" id="new_religion_privilege">
                                                                            <label class="custom-control-label" for="new_religion_privilege" style="padding-top: 2px;">Create</label>
                                                                        </div>
                                                                        <%}%>
                                                                    </td>
                                                                    <td>
                                                                        <%if (rolePrivilegeResList.contains("VIEW_RELIGION_PRIVILEGE")) { %>
                                                                        <div class="custom-control custom-checkbox">
                                                                            <input  name="privileges"  type="checkbox" <%if (prevList.contains("VIEW_RELIGION_PRIVILEGE")) {
                                                                                    out.print("checked");
                                                                                }%> value="VIEW_RELIGION_PRIVILEGE" class="custom-control-input input-primary" id="view_religion_privilege">
                                                                            <label class="custom-control-label" for="view_religion_privilege" style="padding-top: 2px;">View</label>
                                                                        </div>
                                                                        <%}%>
                                                                    </td>
                                                                    <td>
                                                                        <%if (rolePrivilegeResList.contains("EDIT_RELIGION_PRIVILEGE")) { %>
                                                                        <div class="custom-control custom-checkbox">
                                                                            <input  name="privileges"  type="checkbox" <%if (prevList.contains("EDIT_RELIGION_PRIVILEGE")) {
                                                                                    out.print("checked");
                                                                                }%> value="EDIT_RELIGION_PRIVILEGE" class="custom-control-input input-primary" id="edit_religion_privilege">
                                                                            <label class="custom-control-label" for="edit_religion_privilege" style="padding-top: 2px;">Edit</label>
                                                                        </div>
                                                                        <%}%>
                                                                    </td>
                                                                </tr> 
                                                          </c:if>
                                                          <c:if test="${role == 'ROLE_ADMIN' or
                                                                        role == 'ROLE_USER' or
                                                                        role == 'ROLE_ENTITY_ADMIN'  }"> 
                                                                <tr>
                                                                    <td><h6 class="use_pri">User Master</h6></td>
                                                                    <td>
                                                                        <%if (rolePrivilegeResList.contains("NEW_USER_MASTER_PRIVILEGE")) { %>
                                                                        <div class="custom-control custom-checkbox">
                                                                            <input  name="privileges"  type="checkbox" <%if (prevList.contains("NEW_USER_MASTER_PRIVILEGE")) {
                                                                                    out.print("checked");
                                                                                }%> value="NEW_USER_MASTER_PRIVILEGE" class="custom-control-input input-primary" id="new_usermaster_privilege">
                                                                            <label class="custom-control-label" for="new_usermaster_privilege" style="padding-top: 2px;">Create</label>
                                                                        </div>
                                                                        <%}%>
                                                                    </td>
                                                                    <td>
                                                                        <%if (rolePrivilegeResList.contains("VIEW_USER_MASTER_PRIVILEGE")) { %>
                                                                        <div class="custom-control custom-checkbox">
                                                                            <input  name="privileges"  type="checkbox" <%if (prevList.contains("VIEW_USER_MASTER_PRIVILEGE")) {
                                                                                    out.print("checked");
                                                                                }%> value="VIEW_USER_MASTER_PRIVILEGE" class="custom-control-input input-primary" id="view_usermaster_privilege">
                                                                            <label class="custom-control-label" for="view_usermaster_privilege" style="padding-top: 2px;">View</label>
                                                                        </div>
                                                                        <%}%>
                                                                    </td>
                                                                    <td>
                                                                        <%if (rolePrivilegeResList.contains("EDIT_USER_MASTER_PRIVILEGE")) { %>
                                                                        <div class="custom-control custom-checkbox">
                                                                            <input  name="privileges"  type="checkbox" <%if (prevList.contains("EDIT_USER_MASTER_PRIVILEGE")) {
                                                                                    out.print("checked");
                                                                                }%> value="EDIT_USER_MASTER_PRIVILEGE" class="custom-control-input input-primary" id="edit_usermaster_privilege">
                                                                            <label class="custom-control-label" for="edit_usermaster_privilege" style="padding-top: 2px;">Edit</label>
                                                                        </div>
                                                                        <%}%>
                                                                    </td>
                                                                </tr> 
                                                          </c:if>
                                                          <c:if test="${role == 'ROLE_ADMIN' or
                                                                        role == 'ROLE_USER' }"> 
                                                                <tr>
                                                                    <td><h6 class="use_pri">User Type</h6></td>
                                                                    <td>
                                                                        <%if (rolePrivilegeResList.contains("NEW_USER_TYPE_PRIVILEGE")) { %>
                                                                        <div class="custom-control custom-checkbox">
                                                                            <input  name="privileges"  type="checkbox" <%if (prevList.contains("NEW_USER_TYPE_PRIVILEGE")) {
                                                                                    out.print("checked");
                                                                                }%> value="NEW_USER_TYPE_PRIVILEGE" class="custom-control-input input-primary" id="new_usertype_privilege">
                                                                            <label class="custom-control-label" for="new_usertype_privilege" style="padding-top: 2px;">Create</label>
                                                                        </div>
                                                                        <%}%>
                                                                    </td>
                                                                    <td>
                                                                        <%if (rolePrivilegeResList.contains("VIEW_USER_TYPE_PRIVILEGE")) { %>
                                                                        <div class="custom-control custom-checkbox">
                                                                            <input  name="privileges"  type="checkbox" <%if (prevList.contains("VIEW_USER_TYPE_PRIVILEGE")) {
                                                                                    out.print("checked");
                                                                                }%> value="VIEW_USER_TYPE_PRIVILEGE" class="custom-control-input input-primary" id="view_usertype_privilege">
                                                                            <label class="custom-control-label" for="view_usertype_privilege" style="padding-top: 2px;">View</label>
                                                                        </div>
                                                                        <%}%>
                                                                    </td>
                                                                    <td>
                                                                        <%if (rolePrivilegeResList.contains("EDIT_USER_TYPE_PRIVILEGE")) { %>
                                                                        <div class="custom-control custom-checkbox">
                                                                            <input  name="privileges"  type="checkbox" <%if (prevList.contains("EDIT_USER_TYPE_PRIVILEGE")) {
                                                                                    out.print("checked");
                                                                                }%> value="EDIT_USER_TYPE_PRIVILEGE" class="custom-control-input input-primary" id="edit_usertype_privilege">
                                                                            <label class="custom-control-label" for="edit_usertype_privilege" style="padding-top: 2px;">Edit</label>
                                                                        </div>
                                                                        <%}%>
                                                                    </td>
                                                                </tr> 
                                                          </c:if>
                                                          <c:if test="${role == 'ROLE_ADMIN' or
                                                                        role == 'ROLE_USER' }"> 
                                                                <tr>
                                                                    <td><h6 class="use_pri">Sexual Orientation</h6></td>
                                                                    <td>
                                                                        <%if (rolePrivilegeResList.contains("NEW_SEXUAL_ORIENT_PRIVILEGE")) { %>

                                                                        <div class="custom-control custom-checkbox">
                                                                            <input  name="privileges"  type="checkbox" <%if (prevList.contains("NEW_SEXUAL_ORIENT_PRIVILEGE")) {
                                                                                    out.print("checked");
                                                                                }%> value="NEW_SEXUAL_ORIENT_PRIVILEGE" class="custom-control-input input-primary" id="new_sexualorientation_privilege">
                                                                            <label class="custom-control-label" for="new_sexualorientation_privilege" style="padding-top: 2px;">Create</label>
                                                                        </div>
                                                                        <%}%>
                                                                    </td>
                                                                    <td>
                                                                        <%if (rolePrivilegeResList.contains("VIEW_SEXUAL_ORIENT_PRIVILEGE")) { %>
                                                                        <div class="custom-control custom-checkbox">
                                                                            <input  name="privileges"  type="checkbox" <%if (prevList.contains("VIEW_SEXUAL_ORIENT_PRIVILEGE")) {
                                                                                    out.print("checked");
                                                                                }%> value="VIEW_SEXUAL_ORIENT_PRIVILEGE" class="custom-control-input input-primary" id="view_sexualorientation_privilege">
                                                                            <label class="custom-control-label" for="view_sexualorientation_privilege" style="padding-top: 2px;">View</label>
                                                                        </div>
                                                                        <%}%>
                                                                    </td>
                                                                    <td>
                                                                        <%if (rolePrivilegeResList.contains("EDIT_SEXUAL_ORIENT_PRIVILEGE")) { %>
                                                                        <div class="custom-control custom-checkbox">
                                                                            <input  name="privileges"  type="checkbox" <%if (prevList.contains("EDIT_SEXUAL_ORIENT_PRIVILEGE")) {
                                                                                    out.print("checked");
                                                                                }%> value="EDIT_SEXUAL_ORIENT_PRIVILEGE" class="custom-control-input input-primary" id="edit_sexualorientation_privilege">
                                                                            <label class="custom-control-label" for="edit_sexualorientation_privilege" style="padding-top: 2px;">Edit</label>
                                                                        </div>
                                                                        <%}%>
                                                                    </td>
                                                                </tr> 
                                                          </c:if>
                                                          <c:if test="${role == 'ROLE_ADMIN' or
                                                                        role == 'ROLE_USER' }">

                                                                <tr>
                                                                    <td><h6 class="use_pri">Smoking</h6></td>
                                                                    <td>
                                                                        <%if (rolePrivilegeResList.contains("NEW_SMOKING_PRIVILEGE")) { %>
                                                                        <div class="custom-control custom-checkbox">
                                                                            <input  name="privileges"  type="checkbox" <%if (prevList.contains("NEW_SMOKING_PRIVILEGE")) {
                                                                                    out.print("checked");
                                                                                }%> value="NEW_SMOKING_PRIVILEGE" class="custom-control-input input-primary" id="new_smoking_privilege">
                                                                            <label class="custom-control-label" for="new_smoking_privilege" style="padding-top: 2px;">Create</label>
                                                                        </div>
                                                                        <%}%>
                                                                    </td>
                                                                    <td>
                                                                        <%if (rolePrivilegeResList.contains("VIEW_SMOKING_PRIVILEGE")) { %>
                                                                        <div class="custom-control custom-checkbox">
                                                                            <input  name="privileges"  type="checkbox" <%if (prevList.contains("VIEW_SMOKING_PRIVILEGE")) {
                                                                                    out.print("checked");
                                                                                }%> value="VIEW_SMOKING_PRIVILEGE" class="custom-control-input input-primary" id="view_smoking_privilege">
                                                                            <label class="custom-control-label" for="view_smoking_privilege" style="padding-top: 2px;">View</label>
                                                                        </div>
                                                                        <%}%>
                                                                    </td>
                                                                    <td>
                                                                        <%if (rolePrivilegeResList.contains("EDIT_SMOKING_PRIVILEGE")) { %>
                                                                        <div class="custom-control custom-checkbox">
                                                                            <input  name="privileges"  type="checkbox" <%if (prevList.contains("EDIT_SMOKING_PRIVILEGE")) {
                                                                                    out.print("checked");
                                                                                }%> value="EDIT_SMOKING_PRIVILEGE" class="custom-control-input input-primary" id="edit_smoking_privilege">
                                                                            <label class="custom-control-label" for="edit_smoking_privilege" style="padding-top: 2px;">Edit</label>
                                                                        </div>
                                                                        <%}%>
                                                                    </td>
                                                                </tr> 
                                                          </c:if>
                                                          <c:if test="${role == 'ROLE_ADMIN' or
                                                                        role == 'ROLE_USER' }">

                                                                <tr>
                                                                    <td><h6 class="use_pri">Other Tobacco</h6></td>
                                                                    <td>
                                                                        <%if (rolePrivilegeResList.contains("NEW_OTHER_TOBACCO_PRIVILEGE")) { %>
                                                                        <div class="custom-control custom-checkbox">
                                                                            <input  name="privileges"  type="checkbox" <%if (prevList.contains("NEW_OTHER_TOBACCO_PRIVILEGE")) {
                                                                                    out.print("checked");
                                                                                }%> value="NEW_OTHER_TOBACCO_PRIVILEGE" class="custom-control-input input-primary" id="new_othertobacco_privilege">
                                                                            <label class="custom-control-label" for="new_othertobacco_privilege" style="padding-top: 2px;">Create</label>
                                                                        </div>
                                                                        <%}%>
                                                                    </td>
                                                                    <td>
                                                                        <%if (rolePrivilegeResList.contains("VIEW_OTHER_TOBACCO_PRIVILEGE")) { %>
                                                                        <div class="custom-control custom-checkbox">
                                                                            <input  name="privileges"  type="checkbox" <%if (prevList.contains("VIEW_OTHER_TOBACCO_PRIVILEGE")) {
                                                                                    out.print("checked");
                                                                                }%> value="VIEW_OTHER_TOBACCO_PRIVILEGE" class="custom-control-input input-primary" id="view_othertobacco_privilege">
                                                                            <label class="custom-control-label" for="view_othertobacco_privilege" style="padding-top: 2px;">View</label>
                                                                        </div>
                                                                        <%}%>
                                                                    </td>
                                                                    <td>
                                                                        <%if (rolePrivilegeResList.contains("EDIT_OTHER_TOBACCO_PRIVILEGE")) { %>
                                                                        <div class="custom-control custom-checkbox">
                                                                            <input  name="privileges"  type="checkbox" <%if (prevList.contains("EDIT_OTHER_TOBACCO_PRIVILEGE")) {
                                                                                    out.print("checked");
                                                                                }%> value="EDIT_OTHER_TOBACCO_PRIVILEGE" class="custom-control-input input-primary" id="edit_othertobacco_privilege">
                                                                            <label class="custom-control-label" for="edit_othertobacco_privilege" style="padding-top: 2px;">Edit</label>
                                                                        </div>
                                                                        <%}%>
                                                                    </td>
                                                                </tr> 
                                                          </c:if>
                                                          <c:if test="${role == 'ROLE_USER' or
                                                                        role == 'ROLE_CORP_PRACTICE' or
                                                                        role == 'ROLE_CORP_ADMIN' or
                                                                        role == 'ROLE_CORP_STAFF' or
                                                                        role == 'ROLE_CORP_PROVIDER' or
                                                                        role == 'ROLE_GROUPCLINIC_PROVIDER' or
                                                                        role == 'ROLE_GROUPCLINIC_ADMIN' or
                                                                        role == 'ROLE_GROUPCLINIC_STAFF' or
                                                                        role == 'ROLE_BILLING_ADMIN' or
                                                                        role == 'ROLE_BILLING_STAFF' or
                                                                        role == 'ROLE_PROOFER' or
                                                                        role == 'ROLE_PRACTICE_ADMIN' or
                                                                        role == 'ROLE_PRACTICE_ADMIN' or
                                                                        role == 'ROLE_PRACTICE_PROVIDER' or
                                                                        role == 'ROLE_PRACTICE_STAFF' or
                                                                        role == 'ROLE_REFERING_PROVIDER' }">

                                                                <tr>
                                                                    <td><h6 class="use_pri">Template</h6></td>
                                                                    <td>
                                                                        <%if (rolePrivilegeResList.contains("NEW_TEMPLATE_PRIVILEGE")) { %>
                                                                        <div class="custom-control custom-checkbox">
                                                                            <input  name="privileges"  type="checkbox" <%if (prevList.contains("NEW_TEMPLATE_PRIVILEGE")) {
                                                                                    out.print("checked");
                                                                                }%> value="NEW_TEMPLATE_PRIVILEGE" class="custom-control-input input-primary" id="new_template_privilege">
                                                                            <label class="custom-control-label" for="new_template_privilege" style="padding-top: 2px;">Create</label>
                                                                        </div>
                                                                        <%}%>
                                                                    </td>
                                                                    <td>
                                                                        <%if (rolePrivilegeResList.contains("VIEW_TEMPLATE_PRIVILEGE")) { %>
                                                                        <div class="custom-control custom-checkbox">
                                                                            <input  name="privileges"  type="checkbox" <%if (prevList.contains("VIEW_TEMPLATE_PRIVILEGE")) {
                                                                                    out.print("checked");
                                                                                }%> value="VIEW_TEMPLATE_PRIVILEGE" class="custom-control-input input-primary" id="view_template_privilege">
                                                                            <label class="custom-control-label" for="view_template_privilege" style="padding-top: 2px;">View</label>
                                                                        </div>
                                                                        <%}%>
                                                                    </td>
                                                                    <td>
                                                                        <%if (rolePrivilegeResList.contains("EDIT_TEMPLATE_PRIVILEGE")) { %>
                                                                        <div class="custom-control custom-checkbox">
                                                                            <input  name="privileges"  type="checkbox" <%if (prevList.contains("EDIT_TEMPLATE_PRIVILEGE")) {
                                                                                    out.print("checked");
                                                                                }%> value="EDIT_TEMPLATE_PRIVILEGE" class="custom-control-input input-primary" id="edit_template_privilege">
                                                                            <label class="custom-control-label" for="edit_template_privilege" style="padding-top: 2px;">Edit</label>
                                                                        </div>
                                                                        <%}%>
                                                                    </td>
                                                                </tr> 
                                                          </c:if>
                                                          <c:if test="${role == 'ROLE_USER' or
                                                                        role == 'ROLE_CORP_PRACTICE' or
                                                                        role == 'ROLE_CORP_ADMIN' or
                                                                        role == 'ROLE_CORP_STAFF' or
                                                                        role == 'ROLE_CORP_PROVIDER' or
                                                                        role == 'ROLE_BILLING_ADMIN' or
                                                                        role == 'ROLE_BILLING_STAFF' or
                                                                        role == 'ROLE_PATIENT' }">

                                                                <tr>
                                                                    <td><h6 class="use_pri">Trans Mapping</h6></td>
                                                                    <td>
                                                                        <%if (rolePrivilegeResList.contains("NEW_TRANS_MAPPING_PRIVILEGE")) { %>
                                                                        <div class="custom-control custom-checkbox">
                                                                            <input  name="privileges"  type="checkbox" <%if (prevList.contains("NEW_TRANS_MAPPING_PRIVILEGE")) {
                                                                                    out.print("checked");
                                                                                }%> value="NEW_TRANS_MAPPING_PRIVILEGE" class="custom-control-input input-primary" id="new_template_privilege">
                                                                            <label class="custom-control-label" for="new_template_privilege" style="padding-top: 2px;">Create</label>
                                                                        </div>
                                                                        <%}%>
                                                                    </td>
                                                                    <td>
                                                                        <%if (rolePrivilegeResList.contains("VIEW_TRANS_MAPPING_PRIVILEGE")) { %>
                                                                        <div class="custom-control custom-checkbox">
                                                                            <input  name="privileges"  type="checkbox" <%if (prevList.contains("VIEW_TRANS_MAPPING_PRIVILEGE")) {
                                                                                    out.print("checked");
                                                                                }%> value="VIEW_TRANS_MAPPING_PRIVILEGE" class="custom-control-input input-primary" id="view_template_privilege">
                                                                            <label class="custom-control-label" for="view_template_privilege" style="padding-top: 2px;">View</label>
                                                                        </div>
                                                                        <%}%>
                                                                    </td>
                                                                    <td>
                                                                        <%if (rolePrivilegeResList.contains("EDIT_TRANS_MAPPING_PRIVILEGE")) { %>
                                                                        <div class="custom-control custom-checkbox">
                                                                            <input  name="privileges"  type="checkbox" <%if (prevList.contains("EDIT_TRANS_MAPPING_PRIVILEGE")) {
                                                                                    out.print("checked");
                                                                                }%> value="EDIT_TRANS_MAPPING_PRIVILEGE" class="custom-control-input input-primary" id="edit_template_privilege">
                                                                            <label class="custom-control-label" for="edit_template_privilege" style="padding-top: 2px;">Edit</label>
                                                                        </div>
                                                                        <%}%>
                                                                    </td>
                                                                </tr>

                                                          </c:if>
                                                          <c:if test="${role == 'ROLE_USER' or
                                                                        role == 'ROLE_CORP_PRACTICE' or
                                                                        role == 'ROLE_CORP_ADMIN' or
                                                                        role == 'ROLE_CORP_STAFF' or
                                                                        role == 'ROLE_CORP_PROVIDER' or
                                                                        role == 'ROLE_BILLING_ADMIN' or
                                                                        role == 'ROLE_BILLING_STAFF' or
                                                                        role == 'ROLE_PATIENT' }">

                                                                <tr>
                                                                    <td><h6 class="use_pri">View Mapping</h6></td>
                                                                    <td>
                                                                        <%if (rolePrivilegeResList.contains("NEW_VIEW_MAPPING_PRIVILEGE")) { %>
                                                                        <div class="custom-control custom-checkbox">
                                                                            <input  name="privileges"  type="checkbox" <%if (prevList.contains("NEW_VIEW_MAPPING_PRIVILEGE")) {
                                                                                    out.print("checked");
                                                                                }%> value="NEW_VIEW_MAPPING_PRIVILEGE" class="custom-control-input input-primary" id="new_template_privilege">
                                                                            <label class="custom-control-label" for="new_template_privilege" style="padding-top: 2px;">Create</label>
                                                                        </div>
                                                                        <%}%>
                                                                    </td>
                                                                    <td>
                                                                        <%if (rolePrivilegeResList.contains("VIEW_VIEW_MAPPING_PRIVILEGE")) { %>
                                                                        <div class="custom-control custom-checkbox">
                                                                            <input  name="privileges"  type="checkbox" <%if (prevList.contains("VIEW_VIEW_MAPPING_PRIVILEGE")) {
                                                                                    out.print("checked");
                                                                                }%> value="VIEW_VIEW_MAPPING_PRIVILEGE" class="custom-control-input input-primary" id="view_template_privilege">
                                                                            <label class="custom-control-label" for="view_template_privilege" style="padding-top: 2px;">View</label>
                                                                        </div>
                                                                        <%}%>
                                                                    </td>
                                                                    <td>
                                                                        <%if (rolePrivilegeResList.contains("EDIT_VIEW_MAPPING_PRIVILEGE")) { %>
                                                                        <div class="custom-control custom-checkbox">
                                                                            <input  name="privileges"  type="checkbox" <%if (prevList.contains("EDIT_VIEW_MAPPING_PRIVILEGE")) {
                                                                                    out.print("checked");
                                                                                }%> value="EDIT_VIEW_MAPPING_PRIVILEGE" class="custom-control-input input-primary" id="edit_template_privilege">
                                                                            <label class="custom-control-label" for="edit_template_privilege" style="padding-top: 2px;">Edit</label>
                                                                        </div>
                                                                        <%}%>
                                                                    </td>
                                                                </tr> 
                                                          </c:if>
                                                                
                                                             <c:if test="${role == 'ROLE_ADMIN' or
                                                                        role == 'ROLE_USER' or
                                                                        role == 'ROLE_ENTITY_ADMIN' or
                                                                        rol == 'ROLE_ENTITY_STAFF' }"> 
                                                                <tr>
                                                                    <td><h6 class="use_pri">Radiology Config</h6></td>
                                                                    <td>
                                                                        <%if (rolePrivilegeResList.contains("NEW_RADIOLOGY_CONFIG_PRIVILEGE")) { %>
                                                                        <div class="custom-control custom-checkbox">
                                                                            <input  name="privileges"  type="checkbox" <%if (prevList.contains("NEW_RADIOLOGY_CONFIG_PRIVILEGE")) {
                                                                                    out.print("checked");
                                                                                }%> value="NEW_RADIOLOGY_CONFIG_PRIVILEGE" class="custom-control-input input-primary" id="new_radioconfig_privilege">
                                                                            <label class="custom-control-label" for="new_radioconfig_privilege" style="padding-top: 2px;">Create</label>
                                                                        </div>
                                                                        <%}%>
                                                                    </td>
                                                                    <td>
                                                                        <%if (rolePrivilegeResList.contains("VIEW_RADIOLOGY_CONFIG_PRIVILEGE")) { %>
                                                                        <div class="custom-control custom-checkbox">
                                                                            <input  name="privileges"  type="checkbox" <%if (prevList.contains("VIEW_RADIOLOGY_CONFIG_PRIVILEGE")) {
                                                                                    out.print("checked");
                                                                                }%> value="VIEW_RADIOLOGY_CONFIG_PRIVILEGE" class="custom-control-input input-primary" id="view_radioconfig_privilege">
                                                                            <label class="custom-control-label" for="view_radioconfig_privilege" style="padding-top: 2px;">View</label>
                                                                        </div>
                                                                        <%}%>
                                                                    </td>
                                                                    <td>
                                                                        <%if (rolePrivilegeResList.contains("EDIT_RADIOLOGY_CONFIG_PRIVILEGE")) { %>
                                                                        <div class="custom-control custom-checkbox">
                                                                            <input  name="privileges"  type="checkbox" <%if (prevList.contains("EDIT_RADIOLOGY_CONFIG_PRIVILEGE")) {
                                                                                    out.print("checked");
                                                                                }%> value="EDIT_RADIOLOGY_CONFIG_PRIVILEGE" class="custom-control-input input-primary" id="edit_radioconfig_privilege">
                                                                            <label class="custom-control-label" for="edit_radioconfig_privilege" style="padding-top: 2px;">Edit</label>
                                                                        </div>
                                                                        <%}%>
                                                                    </td>
                                                                </tr> 
                                                          </c:if>   
                                                                
                                                                
                                                                

                                                      </tbody>
                                                  </table>
                                              </div>
                                          </div>

                                          <hr>

                                    </c:if>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div> 
            </div>
        </div>
    </div>
</div>
<!-- [ Invoice-right ] end -->
<div class="col-12 text-right">
    <button id="accesssubmit" class="btn btn-rounded btn-greenadd" style="width: 25%">Submit </button>
</div>



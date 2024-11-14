<%-- 
    Document   : ediebill
    Created on : 2 Mar, 2022, 5:32:23 PM
    Author     : suresh
--%>

<%@page contentType="text/html"  pageEncoding="UTF-8" autoFlush="true"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<c:out value="${ebillData.getProcedureTemplate()}"/>

<c:set value="${ebillData.getProcedureTemplate()}" var="procedureTemplate"/>
<c:set value="${procedureTemplate  eq 'temp2' ? 'editebill_radio.jsp': 'editebill_dental.jsp'}" var="page"/>

<jsp:include page="${page}"/>

<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<fmt:setBundle basename="org.akaza.openclinica.i18n.format" var="resformat"/>
<fmt:setBundle basename="org.akaza.openclinica.i18n.words" var="resword"/>
<fmt:setBundle basename="org.akaza.openclinica.i18n.notes" var="restext"/>
<jsp:include page="../include/managestudy-header.jsp"/>


<!-- move the alert message to the sidebar-->
<jsp:include page="../include/sideAlert.jsp"/>

<!-- then instructions-->
<tr id="sidebar_Instructions_open" style="display: none">
		<td class="sidebar_tab">

		<a href="javascript:leftnavExpand('sidebar_Instructions_open'); leftnavExpand('sidebar_Instructions_closed');"><img src="images/sidebar_collapse.gif" border="0" align="right" hspace="10"></a>

		<b><fmt:message key="instructions" bundle="${resword}"/></b>

		<div class="sidebar_tab_content">

		</div>

		</td>
	
	</tr>
	<tr id="sidebar_Instructions_closed" style="display: all">
		<td class="sidebar_tab">

		<a href="javascript:leftnavExpand('sidebar_Instructions_open'); leftnavExpand('sidebar_Instructions_closed');"><img src="images/sidebar_expand.gif" border="0" align="right" hspace="10"></a>

		<b><fmt:message key="instructions" bundle="${resword}"/></b>

		</td>
  </tr>
<jsp:include page="../include/sideInfo.jsp"/>

<jsp:useBean scope='session' id='study' class='core.org.akaza.openclinica.domain.datamap.Study'/>

<h1><span class="title_manage"><fmt:message key="confirm_to_remove_a_subject_group_class"  bundle="${resword}"/></span></h1>
<p><fmt:message key="confirm_deletion_of_this_subject_group_class"  bundle="${resword}"/> <c:out value="${study.name}"/>.</p>

<!-- These DIVs define shaded box borders -->
<div style="width: 600px">
<div class="box_T"><div class="box_L"><div class="box_R"><div class="box_B"><div class="box_TL"><div class="box_TR"><div class="box_BL"><div class="box_BR">

<div class="tablebox_center">
<table border="0" cellpadding="0" cellspacing="0">
   
 <tr valign="top"><td class="table_header_column_top"><fmt:message key="name" bundle="${resword}"/>:</td><td class="table_cell_top">
  <c:out value="${group.name}"/>
 </td></tr>
  
  <tr valign="top"><td class="table_header_column"><fmt:message key="type" bundle="${resword}"/>:</td><td class="table_cell">
  <c:out value="${group.groupClassTypeName}"/>
 </td></tr>  
   
   <tr valign="top"><td class="table_header_column"><fmt:message key="subject_assignment" bundle="${resword}"/>:</td><td class="table_cell">
    <c:out value="${group.subjectAssignment}"/>
   </td></tr>  
 </table>
</div>
</div></div></div></div></div></div></div></div>
</div>
<br>
<div class="table_title_manage"><fmt:message key="study_group_and_associated_subjects" bundle="${resword}"/>:</div>
<div style="width: 600px">
<div class="box_T"><div class="box_L"><div class="box_R"><div class="box_B"><div class="box_TL"><div class="box_TR"><div class="box_BL"><div class="box_BR">

<div class="tablebox_center">
<table border="0" cellpadding="0" cellspacing="0" width="100%">   
  <tr valign="top">
   <td class="table_header_row_left"><fmt:message key="name" bundle="${resword}"/></td>
   <td class="table_header_row"><fmt:message key="description" bundle="${resword}"/></td>
    <td class="table_header_row"><fmt:message key="subjects" bundle="${resword}"/></td> 
  </tr>    
   <c:forEach var="studyGroup" items="${studyGroups}">   
    <tr valign="top">
     <td class="table_cell_left">  
      <c:out value="${studyGroup.name}"/>  
     </td>
     <td class="table_cell">  
      <c:out value="${studyGroup.description}"/>&nbsp;  
     </td>
     <td class="table_cell">  
      <c:forEach var="subjectMap" items="${studyGroup.subjectMaps}">       
       <c:out value="${subjectMap.subjectLabel}"/><br>      
     </c:forEach>&nbsp;
     </td>
    </tr>     
     
   </c:forEach>  
  
  </td>
  </tr>  
   
  
 
</table>
</div>
</div></div></div></div></div></div></div></div>

</div>

 <form action='RemoveSubjectGroupClass?action=submit&id=<c:out value="${group.id}"/>' method="POST">
    <input type="submit" name="submit" value="<fmt:message key="remove_subject_group_class" bundle="${resword}"/>" class="button_xlong" onClick='return confirm("<fmt:message key="if_you_remove_this_subject_group_class" bundle="${resword}"/>");'>
    <input type="button" onclick="confirmCancel('ListSubjectGroupClass');"  name="cancel" value="   <fmt:message key="cancel" bundle="${resword}"/>   " class="button_medium"/>   

 </form> 
<br><br>
<jsp:include page="../include/footer.jsp"/>

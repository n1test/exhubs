<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>

<table class="table table-hover">
	<thead>
		<tr>
			<th><s:message code="groups.info.group_roles_name" /></th>
			<th><s:message code="groups.info.group_roles_description" /></th>
			<th><s:message code="groups.info.group_roles_operation" /></th>
		</tr>
	</thead>
	<tbody>
		<c:forEach var="roleBean" items="${roleBeans}">
			<tr>
				<td>${roleBean.name}</td>
				<td>${roleBean.description}</td>
				<td>...</td>
			</tr>
		</c:forEach>
	</tbody>
</table>

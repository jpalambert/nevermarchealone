<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<c:choose>
	<c:when test="${nonDispoVal==1}">
		<h2>${nonDispo}</h2>
		<form method="post" action="recherche">
			<input type="submit" />
		</form>
	</c:when>
	<c:otherwise>
		<h2>félicitations vous avez reservé ${comcom }</h2>
	</c:otherwise>
</c:choose>


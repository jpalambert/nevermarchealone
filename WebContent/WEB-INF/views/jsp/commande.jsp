<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:choose>
	<c:when test="${nonDispoVal==1}">
		<h2>${nonDispo}</h2>
		<form method="post" action="recherche">
			<input type="submit" value="Back"/>
		</form>
	</c:when>
	<c:otherwise>
		<h2>félicitations vous avez reservé ${comcom }</h2>
	</c:otherwise>
</c:choose>


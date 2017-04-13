<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<c:choose>
	<c:when test="${cdupost==1}">
<h3>Profil détaillé de ${profiler }</h3>
		<b><u>prenom et nom :</u> </b>
		<p class="text-info">${profilerprenom} ${profilernom}</p>
		<b> <u>Description :</u></b>
		<p class="text-info">${profilerdescription}</p>

		<b> <u>parle : </u></b>
		<p class="text-info">${profilerbavard}</p>
		<b> <u>passions :</u></b>
		<p class="text-info">${profilerhobbie}</p>
	</c:when>

	<c:otherwise>
		<h3>Profil détaillé de ${usession.username }</h3>
		<b><u>prenom et nom :</u> </b>
		<p class="text-info">${usession.nom} ${usession.prenom}</p>
		<b> <u>Description :</u></b>
		<p class="text-info">${usession.description}</p>

		<b> <u>parle : </u></b>
		<p class="text-info">${usession.bavard}</p>
		<b> <u>passions :</u></b>
		<p class="text-info">${usession.hobbie}</p>
	</c:otherwise>
</c:choose>



<a href="modifProfil">Modifier profil</a>
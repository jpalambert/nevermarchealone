<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<form method="post" action="modifProfilValider" model="user">



	<h1>Modifier vos informations ${user.prenom} ${user.nom}</h1>



	<p>Dites-en nous plus sur vous :</p>

	<c:if test="${empty usession.description}">
		<input class="form-control" type="text" placeholder="decrivez-vous...!" name="description" />
	</c:if>
	<c:if test="${not empty usession.description}">
		<input class="form-control" type="text" value="${usession.description}" name="description" />
	</c:if>
<br>
	<u><p>Vous etes plutot quelqu'un qui parle :</p></u>
	<table>
		<tr>
			<c:if test="${empty usession.bavard}">
				<td><input type="radio" name="bavard" value="un peu" /> Un peu</td>
				<td><input type="radio" name="bavard" value="beaucoup" />Beaucoup</td>
				<td><input type="radio" name="bavard" value="passionnement" />Passionnement</td>
			</c:if>
			<c:if test="${usession.bavard=='un peu'}">
				<td><input type="radio" name="bavard" value="un peu" checked />
					Un peu</td>
				<td><input type="radio" name="bavard" value="beaucoup" />Beaucoup</td>
				<td><input type="radio" name="bavard" value="passionnement" />Passionnement</td>
			</c:if>
			<c:if test="${usession.bavard=='beaucoup'}">
				<td><input type="radio" name="bavard" value="un peu" /> Un
					peu</td>
				<td><input type="radio" name="bavard" value="beaucoup" checked />Beaucoup</td>
				<td><input type="radio" name="bavard" value="passionnement" />Passionnement</td>
			</c:if>
			<c:if test="${usession.bavard=='passionnement'}">
				<td><input type="radio" name="bavard" value="un peu" /> Un
					peu</td>
				<td><input type="radio" name="bavard" value="beaucoup" />Beaucoup</td>
				<td><input type="radio" name="bavard" value="passionnement"
					checked />Passionnement</td>
			</c:if>

		</tr>

	</table>
	<br>
	<u><p>J'aime parler de :</p></u>



	<table>
<%-- 	<c:if test="${empty usession.hobbie}"> --%>
<!-- 	<tr> -->
<!-- 				<td><input type="checkbox" name="hobbie" value="sport" />Sport</td>	 -->
<!-- 				<td><input type="checkbox" name="hobbie" value="musique" />Musique</td> -->
<!-- 				<td><input type="checkbox" name="hobbie" value="politique" />Politique</td> -->
<!-- 		</tr> -->
<!-- 		<tr> -->
<!-- 				<td><input type="checkbox" name="hobbie" value="jeux video" />Jeux video</td> -->
<!-- 				<td><input type="checkbox" name="hobbie" value="lecture" />Lecture</td> -->
<!-- 				<td><input type="checkbox" name="hobbie" value="cinema" />Cinema</td> -->
<!-- 		</tr> -->
<!-- 		<tr> -->
<!-- 				<td><input type="checkbox" name="hobbie" value="danse" />Danse</td> -->
<!-- 				<td><input type="checkbox" name="hobbie" value="histoire" />Histoire</td> -->
<!-- 				<td><input type="checkbox" name="hobbie" value="voyages" />Voyages</td> -->
<!-- 		</tr> -->
<!-- 		<tr> -->
<!-- 				<td><input type="checkbox" name="hobbie" value="actualites" />Actualites</td> -->
<!-- 				<td><input type="checkbox" name="hobbie" value="sciences" />Sciences</td> -->
<!-- 				<td><input type="checkbox" name="hobbie" value="autres" />Autres</td> -->
			
<!-- 		</tr> -->
<%-- 	</c:if> --%>
	
<%-- 	<c:if test="${not empty usession.hobbie}"> --%>
		<tr>
			<c:if test="${fn:contains(usession.hobbie, 'sport')}">
				<td><input type="checkbox" name="hobbie" value="sport" checked />Sport</td>
			</c:if>
			<c:if test="${!fn:contains(usession.hobbie, 'sport')}">
				<td><input type="checkbox" name="hobbie" value="sport" />Sport</td>
			</c:if>
			<c:if test="${fn:contains(usession.hobbie, 'musique')}">
				<td><input type="checkbox" name="hobbie" value="musique"
					checked />Musique</td>
			</c:if>
			<c:if test="${!fn:contains(usession.hobbie, 'musique')}">
				<td><input type="checkbox" name="hobbie" value="musique" />Musique</td>
			</c:if>
			<c:if test="${fn:contains(usession.hobbie, 'politique')}">
				<td><input type="checkbox" name="hobbie" value="politique"
					checked />Politique</td>
			</c:if>
			<c:if test="${!fn:contains(usession.hobbie, 'politique')}">
				<td><input type="checkbox" name="hobbie" value="politique" />Politique</td>
			</c:if>
		</tr>
		<tr>
			<c:if test="${fn:contains(usession.hobbie, 'jeux video')}">
				<td><input type="checkbox" name="hobbie" value="jeux video"
					checked />Jeux video</td>
			</c:if>
			<c:if test="${!fn:contains(usession.hobbie, 'jeux video')}">
				<td><input type="checkbox" name="hobbie" value="jeux video" />Jeux
					video</td>
			</c:if>
			<c:if test="${fn:contains(usession.hobbie, 'lecture')}">
				<td><input type="checkbox" name="hobbie" value="lecture"
					checked />Lecture</td>
			</c:if>
			<c:if test="${!fn:contains(usession.hobbie, 'lecture')}">
				<td><input type="checkbox" name="hobbie" value="lecture" />Lecture</td>
			</c:if>
			<c:if test="${fn:contains(usession.hobbie, 'cinema')}">
				<td><input type="checkbox" name="hobbie" value="cinema"
					checked />Cinema</td>
			</c:if>
			<c:if test="${!fn:contains(usession.hobbie, 'cinema')}">
				<td><input type="checkbox" name="hobbie" value="cinema" />Cinema</td>
			</c:if>
		</tr>
		<tr>
			<c:if test="${fn:contains(usession.hobbie, 'danse')}">
				<td><input type="checkbox" name="hobbie" value="danse"
					checked />Danse</td>
			</c:if>
			<c:if test="${!fn:contains(usession.hobbie, 'danse')}">
				<td><input type="checkbox" name="hobbie" value="danse" />Danse</td>
			</c:if>
			<c:if test="${fn:contains(usession.hobbie, 'histoire')}">
				<td><input type="checkbox" name="hobbie" value="histoire"
					checked />Histoire</td>
			</c:if>
			<c:if test="${!fn:contains(usession.hobbie, 'histoire')}">
				<td><input type="checkbox" name="hobbie" value="histoire" />Histoire</td>
			</c:if>
			<c:if test="${fn:contains(usession.hobbie, 'voyages')}">
				<td><input type="checkbox" name="hobbie" value="voyages"
					checked />Voyages</td>
			</c:if>
			<c:if test="${!fn:contains(usession.hobbie, 'voyages')}">
				<td><input type="checkbox" name="hobbie" value="voyages" />Voyages</td>
			</c:if>
		</tr>
		<tr>
			<c:if test="${fn:contains(usession.hobbie, 'actualites')}">
				<td><input type="checkbox" name="hobbie" value="actualites"
					checked />Actualites</td>
			</c:if>
			<c:if test="${!fn:contains(usession.hobbie, 'actualites')}">
				<td><input type="checkbox" name="hobbie" value="actualites" />Actualites</td>
			</c:if>
			<c:if test="${fn:contains(usession.hobbie, 'sciences')}">
				<td><input type="checkbox" name="hobbie" value="sciences"
					checked />Sciences</td>
			</c:if>
			<c:if test="${!fn:contains(usession.hobbie, 'sciences')}">
				<td><input type="checkbox" name="hobbie" value="sciences" />Sciences</td>
			</c:if>
			<c:if test="${fn:contains(usession.hobbie, 'autres')}">
				<td><input type="checkbox" name="hobbie" value="autres"
					checked />Autres</td>
			</c:if>
			<c:if test="${!fn:contains(usession.hobbie, 'autres')}">
				<td><input type="checkbox" name="hobbie" value="autres" />Autres</td>
			</c:if>
		</tr>
<%-- 		</c:if> --%>
		<tr>
			<td>
				<div class="btn pull-right">
					<button class="btn btn-primary" type="submit">
						<span class="glyphicon glyphicon-ok-sign" style="color: #4f4;"></span>
						modifier
					</button>
				</div>
			</td>
		</tr>
	</table>
</form>
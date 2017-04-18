<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<center>

 <div class="box">
                <div class="col-lg-12"><center>
<form method="post" action="modifProfilValider" model="user">



	<h1>Modifier vos informations</h1>

<br>

	<p>Dites-nous en plus sur vous :</p>

	<c:if test="${empty usession.description}">
		<textarea  name="description" placeholder="decrivez-vous...!" rows="4" cols="50"></textarea>
	</c:if>
	<c:if test="${not empty usession.description}">
		<textarea name="description" rows="4" cols="50">${usession.description}</textarea>
	</c:if>
<br>
<br>
	<u><p>Vous etes plutot quelqu'un qui parle :</p></u>
	<table>
		<tr>
			<c:if test="${empty usession.bavard}">
				<td><input type="radio" name="bavard" value="un peu" /> Un peu </td>
				<td><input type="radio" name="bavard" value="beaucoup"  style="margin-left: 25px;"/>Beaucoup </td>
				<td><input type="radio" name="bavard" value="passionnement" style="margin-left: 25px;" />Passionnement </td>
			</c:if>
			<c:if test="${usession.bavard=='un peu'}">
				<td><input type="radio" name="bavard" value="un peu" checked />
					Un peu</td>
				<td><input type="radio" name="bavard" value="beaucoup" style="margin-left: 25px;" />Beaucoup</td>
				<td><input type="radio" name="bavard" value="passionnement" style="margin-left: 25px;"/>Passionnement</td>
			</c:if>
			<c:if test="${usession.bavard=='beaucoup'}">
				<td><input type="radio" name="bavard" value="un peu" /> Un
					peu</td>
				<td><input type="radio" name="bavard" value="beaucoup" checked style="margin-left: 25px;"/>Beaucoup</td>
				<td><input type="radio" name="bavard" value="passionnement" style="margin-left: 25px;"/>Passionnement</td>
			</c:if>
			<c:if test="${usession.bavard=='passionnement'}">
				<td><input type="radio" name="bavard" value="un peu" /> Un
					peu</td>
				<td><input type="radio" name="bavard" value="beaucoup" style="margin-left: 25px;" />Beaucoup</td>
				<td><input type="radio" name="bavard" value="passionnement" style="margin-left: 25px;"
					checked />Passionnement</td>
			</c:if>

		</tr>

	</table>
	<br>
	


	
<u><p>J'aime parler de:</p></u>
<table >
		<tr>
			<c:if test="${fn:contains(usession.hobbie, 'sport')}">
				<td><input type="checkbox" name="hobbie" value="sport" checked/>Sport</td>
			</c:if>
			<c:if test="${!fn:contains(usession.hobbie, 'sport')}">
				<td><input type="checkbox" name="hobbie" value="sport" />Sport</td>
			</c:if>
			<c:if test="${fn:contains(usession.hobbie, 'musique')}">
				<td><input type="checkbox" name="hobbie" value="musique"  style="margin-left: 25px;"
					checked/>Musique</td>
			</c:if>
			<c:if test="${!fn:contains(usession.hobbie, 'musique')}">
				<td><input type="checkbox" name="hobbie" value="musique" style="margin-left: 25px;"/>Musique</td>
			</c:if>
			<c:if test="${fn:contains(usession.hobbie, 'politique')}">
				<td><input type="checkbox" name="hobbie" value="politique" style="margin-left: 25px;"
					checked />Politique</td>
			</c:if>
			<c:if test="${!fn:contains(usession.hobbie, 'politique')}">
				<td><input type="checkbox" name="hobbie" value="politique" style="margin-left: 25px;"/>Politique</td>
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
				<td><input type="checkbox" name="hobbie" value="lecture" style="margin-left: 25px;"
					checked />Lecture</td>
			</c:if>
			<c:if test="${!fn:contains(usession.hobbie, 'lecture')}">
				<td><input type="checkbox" name="hobbie" value="lecture" style="margin-left: 25px;" />Lecture</td>
			</c:if>
			<c:if test="${fn:contains(usession.hobbie, 'cinema')}">
				<td><input type="checkbox" name="hobbie" value="cinema" style="margin-left: 25px;"
					checked />Cinema</td>
			</c:if>
			<c:if test="${!fn:contains(usession.hobbie, 'cinema')}">
				<td><input type="checkbox" name="hobbie" value="cinema" style="margin-left: 25px;"/>Cinema</td>
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
				<td><input type="checkbox" name="hobbie" value="histoire" style="margin-left: 25px;"
					checked />Histoire</td>
			</c:if>
			<c:if test="${!fn:contains(usession.hobbie, 'histoire')}">
				<td><input type="checkbox" name="hobbie" value="histoire" style="margin-left: 25px;"/>Histoire</td>
			</c:if>
			<c:if test="${fn:contains(usession.hobbie, 'voyages')}">
				<td><input type="checkbox" name="hobbie" value="voyages" style="margin-left: 25px;"
					checked />Voyages</td>
			</c:if>
			<c:if test="${!fn:contains(usession.hobbie, 'voyages')}">
				<td><input type="checkbox" name="hobbie" value="voyages" style="margin-left: 25px;"/>Voyages</td>
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
				<td><input type="checkbox" name="hobbie" value="sciences" style="margin-left: 25px;"
					checked />Sciences</td>
			</c:if>
			<c:if test="${!fn:contains(usession.hobbie, 'sciences')}">
				<td><input type="checkbox" name="hobbie" value="sciences" style="margin-left: 25px;"/>Sciences</td>
			</c:if>
			<c:if test="${fn:contains(usession.hobbie, 'autres')}">
				<td><input type="checkbox" name="hobbie" value="autres" style="margin-left: 25px;"
					checked />Autres</td>
			</c:if>
			<c:if test="${!fn:contains(usession.hobbie, 'autres')}">
				<td><input type="checkbox" name="hobbie" value="autres" style="margin-left: 25px;"/>Autres</td>
			</c:if>
		</tr>
		</table>
<%-- 		</c:if> --%>
		
				<div class="btn pull-right"  style="padding: 25px; margin-right: 43%;">
					<button class="btn btn-default btn-lg" type="submit" >
						<span class="glyphicon glyphicon-ok-sign"></span>
						modifier
					</button>
				</div>
	
</form>
</div></div></center>
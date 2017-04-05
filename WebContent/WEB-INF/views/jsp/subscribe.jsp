<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<form:form method="post" action="subscribe" modelAttribute="user">
	<table>
		<tr>
			<td><form:label path="prenom">Prénom</form:label></td>
			<td><form:input path="prenom" value="${user.prenom}" /></td>
			<td><form:errors path="prenom" /></td>
		</tr>
		<tr>
			<td><form:label path="nom">Nom</form:label></td>
			<td><form:input path="nom" value="${user.nom}" /></td>
			<td><form:errors path="nom" /></td>
		</tr>
		<tr>
			<td><form:label path="username">Username</form:label></td>
			<td><form:input path="username" value="${user.username}" /></td>
			<td><form:errors path="username" /></td>
		</tr>
		<tr>
			<td><form:label path="password">Password</form:label></td>
			<td><form:password path="password" value="${user.password}" /></td>
			<td><form:errors path="password" /></td>
		</tr>
		<tr>
			<td><form:label path="confirmPassword">Confirm password</form:label></td>
			<td><form:password path="confirmPassword"
					value="${user.confirmPassword}" /></td>
			<td><form:errors path="confirmPassword" /></td>
		</tr>
		<tr>
		<td>
			<form:radiobutton path="sexe" value="M" />
			homme</td>

		<td><form:radiobutton path="sexe" value="F" />
			Femme</td>
		</tr>
<td>
			<form:radiobutton path="etat" value="accompagnateur" />
			je suis un accompagnateur</td>

		<td><form:radiobutton path="etat" value="accompagné" />
			je suis un accompagné</td>
		</tr>

		<tr>
			<td colspan="2"><input type="submit" value="S’inscrire" /></td>
		</tr>
	</table>
	<p>en vous connectant à ce site vous acceptez automatiquement d'être géolocalisé</p>
</form:form>
<tr>
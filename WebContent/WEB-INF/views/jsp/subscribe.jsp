<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>


<form:form method="post" action="subscribe" modelAttribute="user">
	<table>
		<tr>
			<td><form:label path="prenom">Prénom</form:label></td>
			<td><form:input class="form-control" placeholder="prenom" path="prenom" value="${user.prenom}" /></td>
			<td><form:errors class="text-warning" path="prenom" /></td>
		</tr>
		<tr>
			<td><form:label path="nom">Nom</form:label></td>
			<td><form:input class="form-control" placeholder="nom" path="nom" value="${user.nom}" /></td>
			<td><form:errors class="text-warning" path="nom" /></td>
		</tr>
		<tr>
			<td><form:label path="username">Username</form:label></td>
			<td><form:input class="form-control" placeholder="username" path="username" value="${user.username}" /></td>
			<td><form:errors class="text-warning" path="username" /></td>
		</tr>
		<tr>
			<td><form:label path="password">Password</form:label></td>
			<td><form:password class="form-control" placeholder="mot de passe" path="password" value="${user.password}" /></td>
			<td><form:errors class="text-warning" path="password" /></td>
		</tr>
		<tr>
			<td><form:label path="confirmPassword">Confirm password</form:label></td>
			<td><form:password  class="form-control" placeholder="confirmez votre mot de passe" path="confirmPassword"
					value="${user.confirmPassword}" /></td>
			<td><form:errors path="confirmPassword" /></td>
		</tr>
		<tr>
			<td><form:radiobutton path="sexe" value="M" /> homme</td>

			<td><form:radiobutton path="sexe" value="F" /> Femme</td>
			
		</tr>
		<tr>
			<td >
					<button class="btn btn-primary" type="submit">
						<span class="glyphicon glyphicon-ok-sign" style="color: #4f4;"></span>
						s'inscrire
					</button>
				</td>
		</tr>
	</table>
	<br>
	<p class="text-info">en vous connectant à ce site vous acceptez automatiquement
		d'être géolocalisé</p>
</form:form>
<tr>
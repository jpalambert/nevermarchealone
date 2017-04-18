<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

 <div class="box">
                <div class="col-lg-12"><center>
                
                <section id="subscribe">
			<div class="container">
<!-- 				<div class="row"> -->
					<div class="col-lg-11 text-center">
					<h2>Inscription</h2>
					</div>
				</div>
<!--                 <div class="row"> -->
<!-- 									<div -->
<!-- 										class="form-group col-xs-12 floating-label-form-group controls"> -->
<form:form method="post" action="subscribe" modelAttribute="user">
<!-- 	<table> -->
	<div class="row">
					<div class="col-lg-4 col-lg-offset-4">
		<tr>
		
						<!-- To configure the contact form email address, go to mail/contact_me.php and update the email address in the PHP file on line 19. -->
						<!-- The form should work on most web servers, but if the form is not working you may need to configure your web server differently. -->
						<form name="sentMessage" id="contactForm" novalidate>
							<div class="row control-group">
                            <div class="form-group col-xs-12 floating-label-form-group controls">
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
			<td><form:errors class="text-warning" path="confirmPassword" /></td>
		</tr>
		</div></div>
<!-- 		</table> -->

		<table >
		<tr >
			<td><form:radiobutton path="sexe" value="M" />Homme</td>

			<td><form:radiobutton path="sexe" value="F" style="margin-left: 100px;"/> Femme</td>
			<td><form:errors class="text-warning" path="sexe" /></td>
			
		</tr>
		</table>
			<br>
					<button class="btn btn-default btn-lg" type="submit" >
						<span class="glyphicon glyphicon-ok-sign"></span>
						S'inscrire
					</button>
				
		

	<br>
	
</form:form>
</div>
</div>
<p class="text-info">en vous connectant à ce site vous acceptez automatiquement
		d'être géolocalisé</p>
</center>
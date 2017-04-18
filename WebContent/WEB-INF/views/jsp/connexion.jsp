<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<div id="map"></div>


<script
	src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAzIbC986mSIgdEtoVgoIBaPKQeViR_CrY&callback=initMap"
	async defer>
	
</script>
<center>
	<div class="box">
                <div class="col-lg-12">
	<form:form method="post" action="connexion" modelAttribute="user">
		<script>
			// Note: This example requires that you consent to location sharing when
			// prompted by your browser. If you see the error "The Geolocation service
			// failed.", it means you probably did not give permission for the browser to
			// locate you.

			function initMap() {
				var map = new google.maps.Map(document.getElementById('map'), {
					center : {
						lat : -34.397,
						lng : 150.644
					},
					zoom : 9
				});
				// Try HTML5 geolocation.
				if (navigator.geolocation) {
					navigator.geolocation.getCurrentPosition(
							function(position) {
								var pos = {
									lat : position.coords.latitude,
									lng : position.coords.longitude
								}
								$("#lat").val(pos.lat);
								$("#lng").val(pos.lng);
							}, function() {
								handleLocationError(true, infoWindow, map
										.getCenter());
							});
				} else {
					// Browser doesn't support Geolocation
					handleLocationError(false, infoWindow, map.getCenter());
				}
			}
		</script>
		<!-- Contact Section -->
		<section id="contact">
			<div class="container">
				<div class="row">
					<div class="col-lg-12 text-center">
						<h2>Connexion</h2>
						
					</div>
				</div>
				<div class="row">
					<div class="col-lg-8 col-lg-offset-2">
						<!-- To configure the contact form email address, go to mail/contact_me.php and update the email address in the PHP file on line 19. -->
						<!-- The form should work on most web servers, but if the form is not working you may need to configure your web server differently. -->
						<form name="sentMessage" id="contactForm" novalidate>
							<div class="row control-group">
                            <div class="form-group col-xs-12 floating-label-form-group controls">
						<td><form:label path="username">Username</form:label></td>
						<td><form:input class="form-control" placeholder="username"
							path="username" value="${user.username}" /> 
								</td>
						<td><form:errors class="text-warning" path="username" /></td>
				</div></div>
					
<div class="row control-group">
                            <div class="form-group col-xs-12 floating-label-form-group controls">
						<td><form:label path="password">Password</form:label></td>
						<td><form:password class="form-control" placeholder="password"
						path="password" value="${user.password}" /></td>
					<td><form:errors class="text-warning" path="password" /></td>
					</tr>
</div>
								</div>
								
										<div class="row">
									<div
										class="form-group col-xs-12 floating-label-form-group controls">
										<tr>
											<td><form:label path="lng">Longitude</form:label></td>
											<td><form:input class="form-control"
													placeholder="longitude" path="lng" value="" /></td>
										</tr>
										<tr>
											<td><form:label path="lat">Latitude</form:label></td>
											<td><form:input class="form-control"
													placeholder="latitude" path="lat" value="" /></td>
									</div>
								</div>
								<div class="row">
									<div
										class="form-group col-xs-12 floating-label-form-group controls">
										<td><form:radiobutton path="etat" value="accompagnateur" />
											Je souhaite accompagner</td>

										<td  style="margin-left: 25px;"><form:radiobutton path="etat" value="accompagne"
												checked="checked"/> Je souhaite être accompagné</td>
									</div>
								</div>

								<br>
								<div id="success"></div>
								<div class="row">
									<div class="form-group col-xs-12">
										<button type="submit" class="btn btn-default btn-lg"><span class="glyphicon glyphicon-ok-sign""></span> Envoyer</button>
									</div>
								</div>
						</form>
					</div>
				</div>
			</div>
		</section>

	</form:form>

	</div></div>


<!--  -->


<div class="box">
                <div class="col-lg-12">
<h4>
	<a href="<c:url value='/subscribe' />">je ne
		possède pas de compte, je souhaite m'inscrire</a>
</h4>
	</div></div>
	</center>

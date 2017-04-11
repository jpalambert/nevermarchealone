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
	<center></br></br>
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
				navigator.geolocation.getCurrentPosition(function(position) {
					var pos = {
						lat : position.coords.latitude,
						lng : position.coords.longitude
					}
					$("#lat").val(pos.lat);
					$("#lng").val(pos.lng);
				}, function() {
					handleLocationError(true, infoWindow, map.getCenter());
				});
			} else {
				// Browser doesn't support Geolocation
				handleLocationError(false, infoWindow, map.getCenter());
			}
		}
	</script>

	<table>
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
			<td><form:radiobutton path="etat" value="accompagnateur" /> je
				suis un accompagnateur</td>

			<td><form:radiobutton path="etat" value="accompagne" /> je suis
				un accompagné</td>
		</tr>
		<tr>
			<td><form:label path="lng">Longitude</form:label></td>
			<td><form:input path="lng" value="" /></td>
		</tr>
		<tr>
			<td><form:label path="lat">Latitude</form:label></td>
			<td><form:input path="lat" value="" /></td>

			<td><button class="btn btn-primary" type="submit"><span class="glyphicon glyphicon-ok-sign" style="color:#4f4;"></span> Envoyer</button></td>
		</tr>
	</table>

</form:form>
</center>
<!--  -->

</br></br></br></br></br>


<h4>
<a href="<c:url value='/subscribe' />"  style="float: right">je ne possède pas de compte,
	je souhaite m'inscrire</a>
</h4>

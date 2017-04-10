
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div id="map"></div>

<div id="coords">
	<c:forEach items="${ listU}" var="user" varStatus="status">
		<div id="${status.index }" >
			<p>${user.username }</p>
			<p>${user.lat }</p>
			<p>${user.lng }</p>
		</div>
	</c:forEach>
</div>

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
		var infoWindow = new google.maps.InfoWindow({
			map : map
		});
		
		<c:forEach items="${listU}" var="user" varStatus="status">
		var infoWindow${status.index} = new google.maps.InfoWindow({map : map});
		var position${status.index} = {
				lat : ${user.lat},
				lng : ${user.lng}
			};

	
			infoWindow${status.index}.setContent('${user.username}');
			
			
			
			var marker${status.index} = new google.maps.Marker({
		          position: position${status.index},
		          map: map,
		          title: 'kikou'
		        });
		        marker${status.index}.addListener('click', function() {
		          infoWindow${status.index}.open(map, marker${status.index});
		        });
	</c:forEach>
		// Try HTML5 geolocation.
		if (navigator.geolocation) {
			navigator.geolocation.getCurrentPosition(function(position) {
				var pos = {
					lat : position.coords.latitude,
					lng : position.coords.longitude
				};

				infoWindow.setPosition(pos);
				infoWindow.setContent('Location found.');
				map.setCenter(pos);
			}, function() {
				handleLocationError(true, infoWindow, map.getCenter());
			});
		} else {
			// Browser doesn't support Geolocation
			handleLocationError(false, infoWindow, map.getCenter());
		}
	}
	
	function handleLocationError(browserHasGeolocation, infoWindow, pos) {
		infoWindow.setPosition(pos);
		infoWindow
				.setContent(browserHasGeolocation ? 'Error: The Geolocation service failed.'
						: 'Error: Your browser doesn\'t support geolocation.');
	}
	$("p").hide();
</script>
<script
	src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAzIbC986mSIgdEtoVgoIBaPKQeViR_CrY&callback=initMap"
	async defer>
	
</script>
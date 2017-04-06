    <div id="map"></div>
    <script>
// Note: This example requires that you consent to location sharing when
// prompted by your browser. If you see the error "The Geolocation service
// failed.", it means you probably did not give permission for the browser to
// locate you.



function initMap() {
  var map = new google.maps.Map(document.getElementById('map'), {
    center: {lat: -34.397, lng: 150.644},
    zoom: 9
  });
  var infoWindow = new google.maps.InfoWindow({map: map});
  
  //tentative d'ajout de marqueurs sur la map
  var infoCopain = new google.maps.InfoWindow({map: map});
  var infoCopainAero = new google.maps.InfoWindow({map: map});
  
  
  //position des marqueurs
  var Copain = {
	        lat: 43.49982,
	        lng: 5.412877
	      };
  
  
  var CopainAero = {
		  lat: 43.443624,
		  lng: 5.219291
  };
  
  //Affichage des Copains
  infoCopain.setPosition(Copain);
  infoCopain.setContent('copain');

  infoCopainAero.setPosition(CopainAero);
  infoCopainAero.setContent('CopainAvion');
  
  
  // Try HTML5 geolocation.
  if (navigator.geolocation) {
    navigator.geolocation.getCurrentPosition(function(position) {
      var pos = {
        lat: position.coords.latitude,
        lng: position.coords.longitude
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
  infoWindow.setContent(browserHasGeolocation ?
                        'Error: The Geolocation service failed.' :
                        'Error: Your browser doesn\'t support geolocation.');
}

    </script>
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAzIbC986mSIgdEtoVgoIBaPKQeViR_CrY&callback=initMap"
        async defer>
    </script>
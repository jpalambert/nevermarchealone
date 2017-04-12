<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:choose>
	<c:when test="${commandeEnvoi==1}">
<div id="map"></div>
		<h1>${utilisateur.usernameAcc}vientde vous reserver!</h1>

		<script type="text/javascript">
		   
    // Note: This example requires that you consent to location sharing when
    // prompted by your browser. If you see the error "The Geolocation service
    // failed.", it means you probably did not give permission for the browser to
    // locate you.
    
    function initMap() {
        var map = new google.maps.Map(document.getElementById('map'), {
            center : {
                lat : ${utilisateur.latAcc},
                lng : ${utilisateur.lngAcc}
            },
            zoom : 9
        });
        
     
        var positionUtilisateur = {
                lat : ${utilisateur.latUser},
                lng : ${utilisateur.lngUser}
            };
    
        var positionAcc = {
        		lat : ${utilisateur.latAcc},
                lng : ${utilisateur.lngAcc}
        }
        
        var imageUtilisateur = {
        	    url: 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACAAAAAgCAYAAABzenr0AAACrklEQVRYR8WXvWsWQRDGfzN+ED/QSETwD1BIE8VCEEQEJeAHFnaxNKWFAUEQe7FSCysJ2GkqLSSCKIIIioWFBiQxnZWiqIi+xKg7svfem9xd7m53o+hW77s7M/vss8/M7Anto0/Qb4ACZrgNwNeAT9KytFkLatV1w7X6JO0OtAXbJ+ijGgBHgLupGzXZtwHYI+iTGgDDwP1/AYD/fQX+kCsE9aLrA+YNtx748bdO7+OkCmqnoE9zQN7/F9iswTTIDLgZst94m6iRAmBY0HtRUX3O4k4C10P20QDq9BAKbriVXZaaRyyAQ4Imp55h02CDfwwgdHqDi+DOdUWlrqitUOEKMiDoJ6A/gu5erF2CPu/ZG0yAG1lOIfKn6QBrQpv7dcNugx1PZaGBAb0icLquD7RdR4HuIUFf5P6+iflmVjuqAHYL+qzO0nCeiTlgRNAb9Tb2EmxHvnYWZBjsYIII5YEgB8oO9tGwgeJcgIWsdcdcW/e6ymOboK/zqTnD7QfqGCkJrQL4rWFblwsg1q+2US0q3w0BUzHBgmlYF0TQeWBV2wah/O/5pgJYmz/Rqnt3DK4JjBXy/xK4MyEWUgCooEvqusF5cBfy/C+JL0+/VkFGA2h4nGwEvhROOSjoq8X/9tmwTQlp2FQsskfJuuJq0x0L8g5kS0GQx4A7TSCiGKiePkCtf0X9jAFbVwdqgaZ2OJBJQQ4vsmBTYD41l4woBkCvCpwq0Lo69DasYW07MFtFEAmAzYK+L6TYgvJbBDYq6HjoKmIBVCtfx3AlUTYULJ+2C53Q4Ca4E0XbFACVYFGfaAOCfqiw0Ouq2XQ0ANDL5Urn/LfC91ClAx0XGC0IchLs6HJKcX/+PMt8Defb9sMwgOyduMBe1S+BgYywx4LsBaI0UAanY+BuAW+K878BCnLYIZ2M5xUAAAAASUVORK5CYII='
        	    
        	    };
        var imageAcc = {
        	    url: 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACAAAAAgCAYAAABzenr0AAACrklEQVRYR8WXvWsWQRDGfzN+ED/QSETwD1BIE8VCEEQEJeAHFnaxNKWFAUEQe7FSCysJ2GkqLSSCKIIIioWFBiQxnZWiqIi+xKg7svfem9xd7m53o+hW77s7M/vss8/M7Anto0/Qb4ACZrgNwNeAT9KytFkLatV1w7X6JO0OtAXbJ+ijGgBHgLupGzXZtwHYI+iTGgDDwP1/AYD/fQX+kCsE9aLrA+YNtx748bdO7+OkCmqnoE9zQN7/F9iswTTIDLgZst94m6iRAmBY0HtRUX3O4k4C10P20QDq9BAKbriVXZaaRyyAQ4Imp55h02CDfwwgdHqDi+DOdUWlrqitUOEKMiDoJ6A/gu5erF2CPu/ZG0yAG1lOIfKn6QBrQpv7dcNugx1PZaGBAb0icLquD7RdR4HuIUFf5P6+iflmVjuqAHYL+qzO0nCeiTlgRNAb9Tb2EmxHvnYWZBjsYIII5YEgB8oO9tGwgeJcgIWsdcdcW/e6ymOboK/zqTnD7QfqGCkJrQL4rWFblwsg1q+2US0q3w0BUzHBgmlYF0TQeWBV2wah/O/5pgJYmz/Rqnt3DK4JjBXy/xK4MyEWUgCooEvqusF5cBfy/C+JL0+/VkFGA2h4nGwEvhROOSjoq8X/9tmwTQlp2FQsskfJuuJq0x0L8g5kS0GQx4A7TSCiGKiePkCtf0X9jAFbVwdqgaZ2OJBJQQ4vsmBTYD41l4woBkCvCpwq0Lo69DasYW07MFtFEAmAzYK+L6TYgvJbBDYq6HjoKmIBVCtfx3AlUTYULJ+2C53Q4Ca4E0XbFACVYFGfaAOCfqiw0Ouq2XQ0ANDL5Urn/LfC91ClAx0XGC0IchLs6HJKcX/+PMt8Defb9sMwgOyduMBe1S+BgYywx4LsBaI0UAanY+BuAW+K878BCnLYIZ2M5xUAAAAASUVORK5CYII='
        	    
        	    };
        
            var markerUtilisateur = new google.maps.Marker({
                  position: positionUtilisateur,
                  map: map,
                  icon: imageUtilisateur
                });
                markerUtilisateur.addListener('click', function() {
                    
                    var infoWindow = new google.maps.InfoWindow({map : map});
                    infoWindow.setContent('<b>${utilisateur.usernameUser}</b>')
                             infoWindow.open(map, markerUtilisateur);
                
                 
                
                });
                
                var markerAcc = new google.maps.Marker({
                    position: positionAcc,
                    map: map,
                    icon: imageAcc,
                    center : positionAcc
                  });
                  markerAcc.addListener('click', function() {
                      
                      var infoWindow = new google.maps.InfoWindow({map : map});
                      infoWindow.setContent('<b>${utilisateur.usernameAcc}</b>')
                               infoWindow.open(map, markerAcc);
                  
                   
                  
                  });

      
    }
    
    function handleLocationError(browserHasGeolocation, infoWindow, pos) {
        //infoWindow.setPosition(pos);
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


	</c:when>
	<c:otherwise>
		<p>Vous êtes actuellement en attente d'un marcheur...</p>
		<script>
		setTimeout(function () { 
		      location.reload();
		    }, 3 * 1000);</script>
	</c:otherwise>
</c:choose>

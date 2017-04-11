<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div id="map"></div>
<div id="coords">
    <c:forEach items="${ listU}" var="user" varStatus="status">
        <div id="${status.index }">
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
        
        
        
        /*var infoWindow = new google.maps.InfoWindow({
            map : map
        });
*/      
        <c:forEach items="${listU}" var="user" varStatus="status">
        
        var position${status.index} = {
                lat : ${user.lat},
                lng : ${user.lng}
            };
    
            
            var marker${status.index} = new google.maps.Marker({
                  position: position${status.index},
                  map: map,
                  title: 'kikou'
                });
                marker${status.index}.addListener('click', function() {
                    
                    var infoWindow${status.index} = new google.maps.InfoWindow({map : map});
                    infoWindow${status.index}.setContent('<b>'+'${user.username}'+'<br/>sexe : '+
                            '\n${user.sexe}'+'</b>'+
                            '<form action="/tp-spring-mvc-1/commande" method="post"><input type="hidden" value="${user.username}" name="command"}/><button class="btn btn-primary" type="submit"><span class="glyphicon glyphicon-ok-sign" style="color:#4f4;"></span> valider commande</button></form>'+
                            '<form action="/tp-spring-mvc-1/rechercheacc" method="post"><button class="btn btn-primary" type="submit"><span class="glyphicon glyphicon-user" style="color:#4f4;"></span> profil détaillé</button></form>')
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
                //infoWindow.setPosition(pos);
//              infoWindow.setContent('Location found.');
                map.setCenter(pos);
                
                var marker = new google.maps.Marker({
                      position: pos,
                      map: map,
                      title: 'kikou'
                    });
            }, function() {
                handleLocationError(true, infoWindow, map.getCenter());
            });
        } else {
            // Browser doesn't support Geolocation
            handleLocationError(false, infoWindow, map.getCenter());
        }
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
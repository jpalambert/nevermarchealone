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
    
        var image = {
        	    url: 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACAAAAAgCAYAAABzenr0AAACrklEQVRYR8WXvWsWQRDGfzN+ED/QSETwD1BIE8VCEEQEJeAHFnaxNKWFAUEQe7FSCysJ2GkqLSSCKIIIioWFBiQxnZWiqIi+xKg7svfem9xd7m53o+hW77s7M/vss8/M7Anto0/Qb4ACZrgNwNeAT9KytFkLatV1w7X6JO0OtAXbJ+ijGgBHgLupGzXZtwHYI+iTGgDDwP1/AYD/fQX+kCsE9aLrA+YNtx748bdO7+OkCmqnoE9zQN7/F9iswTTIDLgZst94m6iRAmBY0HtRUX3O4k4C10P20QDq9BAKbriVXZaaRyyAQ4Imp55h02CDfwwgdHqDi+DOdUWlrqitUOEKMiDoJ6A/gu5erF2CPu/ZG0yAG1lOIfKn6QBrQpv7dcNugx1PZaGBAb0icLquD7RdR4HuIUFf5P6+iflmVjuqAHYL+qzO0nCeiTlgRNAb9Tb2EmxHvnYWZBjsYIII5YEgB8oO9tGwgeJcgIWsdcdcW/e6ymOboK/zqTnD7QfqGCkJrQL4rWFblwsg1q+2US0q3w0BUzHBgmlYF0TQeWBV2wah/O/5pgJYmz/Rqnt3DK4JjBXy/xK4MyEWUgCooEvqusF5cBfy/C+JL0+/VkFGA2h4nGwEvhROOSjoq8X/9tmwTQlp2FQsskfJuuJq0x0L8g5kS0GQx4A7TSCiGKiePkCtf0X9jAFbVwdqgaZ2OJBJQQ4vsmBTYD41l4woBkCvCpwq0Lo69DasYW07MFtFEAmAzYK+L6TYgvJbBDYq6HjoKmIBVCtfx3AlUTYULJ+2C53Q4Ca4E0XbFACVYFGfaAOCfqiw0Ouq2XQ0ANDL5Urn/LfC91ClAx0XGC0IchLs6HJKcX/+PMt8Defb9sMwgOyduMBe1S+BgYywx4LsBaI0UAanY+BuAW+K878BCnLYIZ2M5xUAAAAASUVORK5CYII=',
//         	    size: new google.maps.Size(20, 32),
        	    };
            var marker${status.index} = new google.maps.Marker({
                  position: position${status.index},
                  map: map,
                  icon: image,
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
                var image = {
                	    url: 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACAAAAAgCAYAAABzenr0AAACC0lEQVRYR8XXy8tOURTH8c9LRMREDJSBpCgjE3L5B5gJhdxmKMqAgZlQlJRLZkQYYMhYIWZKUi4ZymWgXMtdq86j532cc/beJzxrutf6re/57bP3WWdE93iKOVX5XhzpIjXSpQjfMHag9hh2l+p1AViEuw2NivWKC7ADJ4cJMBnvhwkQvW9i2QDEPDz6H+9Ar8dSHMVLrKpezNL+urwD0WQmng90m4SPpQSlALcQT94WK3E9F6QE4CHmZwovwZ2c3FyAsPdDjmBfTpZ2VhIOY88wAUrs73EuxL0UdK4DP1NCNev7cChV9y8B4sQsHyZAuDbmbwCEyPeUUNdvQ84WjMfnYQJE74B4iwmZIHETxo2YjBwH+kXCiYBpizW4kuxcJZQCXMOKhPiUlnnhj9JSgLZpqCdepFmUjNl4lnCgSDMnOSw9WN1qL5C6FUPzBu5jP960AbcBbMepvuKtOJsAeI0Z+MGoYWcXjteBNAF8wbiBgstYmwA4h80NOV/rTlAdwBlsqaF9h6n4hIkNtq7G1RbI89jUX1sHEINHDCBNjsW0c7tlfS4eN6wH/CjtOoCNCCvrIvYx9nNWNaD0fs9iQD1QFdRtX08rnj5c+B1N78AFrG+AOIGdNWvx0XqFaQ11F7FhcK3tFIRV8Q+4IHHuU8sPsLhpZM+5B6LBdGzDOsQet8UTXMJpxLFsjV+yoVMh224NfgAAAABJRU5ErkJggg==',
//                 	    size: new google.maps.Size(20, 32),
                	    };
                var marker = new google.maps.Marker({
                      position: pos,
                      map: map,
                      icon: image,
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


<script type="text/javascript">
if ("${userSession.etat}"==="accompagnateur"){
	

  var timeout = setTimeout("location.reload(true);",5000);
  function resetTimeout() {
    clearTimeout(timeout);
    timeout = setTimeout("location.reload(true);",5000);
  }
}
</script>

    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAzIbC986mSIgdEtoVgoIBaPKQeViR_CrY&callback=initMap"
    async defer>
    
</script>

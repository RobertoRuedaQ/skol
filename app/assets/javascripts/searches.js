var map, infoWindow;


  function initMap() {
    map = new google.maps.Map(document.getElementById('map'), {
      center: {lat: 4.6640146, lng:-74.1393368},
      zoom: 12
    });
    infoWindow = new google.maps.InfoWindow;

    // Try HTML5 geolocation.
    if (navigator.geolocation) {
      navigator.geolocation.getCurrentPosition(function(position) {
        var pos = {
          lat: position.coords.latitude,
          lng: position.coords.longitude
        };

        infoWindow.setPosition(pos);
        infoWindow.setContent('Usted está aquí');
        infoWindow.open(map);
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
    infoWindow.open(map);
  }

  function marker(coords){
   new google.maps.Marker({
          position: coords,
          map: map
        });
  }

$(document).ready(function(){
  $(".card-title").each(function(){
    var latitude = $(this).data('latitude')
    var longitude = $(this).data('longitude')
    var coords = {lat:latitude,lng:longitude}
    marker(coords)
  })
})


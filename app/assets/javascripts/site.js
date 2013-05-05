var map_g;
var markersArray = [];
var bounds;

function initialize() {
  var mapOptions = {
  	center: new google.maps.LatLng(10.96389, -74.79639),
    zoom: 13,
    mapTypeId: google.maps.MapTypeId.ROADMAP
  };

  map_g = new google.maps.Map(document.getElementById('map'),
    mapOptions);
}

google.maps.event.addDomListener(window, 'load', initialize);

$(document).ready(function(){
});
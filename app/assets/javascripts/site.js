var map_g;
var markers = [];

function initialize() {
  var mapOptions = {
  	center: new google.maps.LatLng(10.96389, -74.79639),
    zoom: 13,
    mapTypeId: google.maps.MapTypeId.ROADMAP
  };

  map_g = new google.maps.Map(document.getElementById('map'),
    mapOptions);

  var contentString = '<div id="content">'+
      '<div id="siteNotice">'+
      '</div>'+
      '<h1 id="firstHeading" class="firstHeading">Incidente</h1>'+
      '<div id="bodyContent">'+
      '<p><b>Incidente</b>, alguna información se describe aqui</p>'+
      '<p><a href="http://en.wikipedia.org/w/index.php?title=Uluru&oldid=297882194">'+
      'http://en.wikipedia.org/w/index.php?title=Uluru</a> '+
      '</div>'+
      '</div>';

  var infowindow = new google.maps.InfoWindow({
      content: contentString
  });

  markers.push(new google.maps.Marker({
    position: new google.maps.LatLng(10.96389, -74.79639), 
    map: map_g,
    draggable: false,
  }));

  var i;
  for(i=0;i<markers.length;i++){
    marker = markers[i];
    google.maps.event.addListener(marker, 'click', function() {
      infowindow.open(map_g,marker);
    });
  }

  
}

google.maps.event.addDomListener(window, 'load', initialize);

$(document).ready(function(){

});
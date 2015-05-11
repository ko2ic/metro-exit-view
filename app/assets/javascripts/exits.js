function initialize() {
  var data = document.getElementById('exit-data');
  var lat  = data.getAttribute('data-lat-id');
  var lon  = data.getAttribute('data-lon-id');
  var heading = Number(data.getAttribute('data-heading-id'));
  var exit = new google.maps.LatLng(lat, lon);
  var mapOptions = {
    center: exit,
    zoom: 18
  };
  var map = new google.maps.Map(
      document.getElementById('map-canvas'), mapOptions);
  var panoramaOptions = {
    position: exit,
    pov: {
      heading: heading, 
      pitch: 10
    }
  };
  var panorama = new google.maps.StreetViewPanorama(document.getElementById('pano'), panoramaOptions);
  map.setStreetView(panorama);
}

google.maps.event.addDomListener(window, 'page:change', initialize);


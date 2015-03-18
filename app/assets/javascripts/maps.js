var map;
var service;
function handleSearchResults(results, status)
{
  console.log(results);

  for(var i = 0; i < results.length; i++) {
    var marker = new google.maps.Marker({
      position: results[i].geometry.location,
      map: map,
      icon: '/assets/jface.jpg'
    })
  }
}

function performSearch()
{
  var request = {
    bounds: map.getBounds(),
    name: "The Gin Joint"
  }
  service.nearbySearch(request, handleSearchResults);
}

function initialize(location)
{
  console.log(location);

  var currentLocation = new google.maps.LatLng(location.coords.latitude, location.coords.longitude);

  var mapOptions = {
    center: currentLocation,
    zoom: 12,
    mapTypeId: google.maps.MapTypeId.ROADMAP
  };

  map = new google.maps.Map(document.getElementById("map-canvas"),
    mapOptions);

  var marker = new google.maps.Marker({
    position: currentLocation,
    map: map
  });

  service = new google.maps.places.PlacesService(map);
  google.maps.event.addListenerOnce(map, 'bounds_changed', performSearch);

  $('#refresh').click(performSearch);

  var trafficLayer = new google.maps.TrafficLayer();
  $('#toggle_traffic').click(function () {

    if (trafficLayer.getMap()) {
      trafficLayer.setMap(null);
    }
    else {
      trafficLayer.setMap(map);
    }
  });

  var weatherLayer = new google.maps.weather.WeatherLayer({
    temperatureUnits: google.maps.weather.TemperatureUnit.CELSIUS
  });
  var cloudLayer = new google.maps.weather.CloudLayer();

  $('#toggle_weather').click(function () {

    if (weatherLayer.getMap() || cloudLayer.getMap()) {
      weatherLayer.setMap(null);
      cloudLayer.setMap(null);
    }
    else {
      weatherLayer.setMap(map);
      cloudLayer.setMap(map);
    }
  });
}

$(document).ready(function()
{
  navigator.geolocation.getCurrentPosition(initialize);
});
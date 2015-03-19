var map;
var directionsDisplay;
var service;



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

}

$(document).ready(function()
{
  navigator.geolocation.getCurrentPosition(initialize);
  event.preventDefault();


});


function calculateRoute(start, end) {
  var items = ["259 East Bay St, Charleston, SC", "276 Meeting St, Charleston, SC", "12 Cumberland, Charleston, SC"];
  var waypoints = [];
  for (var i = 0; i < items.length; i++) {
      var address = items[i];
      if (address !== "") {
          waypoints.push({
              location: address,
              stopover: true
          })
      }
  };
  var directionsService = new google.maps.DirectionsService();
  var start = new google.maps.LatLng(location.coords.latitude, location.coords.longitude);
  var end = items.last;
  var request = {
    origin: start,
    destination: end,
    waypoints: waypoints,
    optimizeWaypoints: true,
    travelMode: google.maps.DirectionsTravelMode.WALKING
  };
  
  var directionsDisplay = new google.maps.DirectionsRenderer();
    directionsDisplay.setMap(map);
    directionsDisplay.setPanel(document.getElementById('panel'));
    directionsService.route(request, function (response, status) {
      if (status == google.maps.DirectionsStatus.OK) {
        directionDisplay.setDirections(response);
      }
      else {
        $("#error").append("Can't get your route");
      }
      });

    $(document).ready(function() {
      
      if (typeof navigator.geolocation == "undefined") {
          $("#error").text("Your browser doesn't support the Geolocation API");
          return;
      })
}





// var map;
// var directionsDisplay;
// var directionsService;
// var service;

// // set current location, directions display, map display, current position, marker
// function initialize(location)
// {
//   console.log(location);

//   directionsDisplay = new google.maps.DirectionsRenderer();

//   var currentLocation = new google.maps.LatLng(location.coords.latitude, location.coords.longitude);

//   var mapOptions = {
//     center: currentLocation,
//     zoom: 12,
//     mapTypeId: google.maps.MapTypeId.ROADMAP
//   };

// // display map
//   map = new google.maps.Map(document.getElementById("map-canvas"), mapOptions);
//   directionsDisplay.setMap(map);
//   directionsDisplay.setPanel(document.getElementById('directions-panel'));

//   var marker = new google.maps.Marker({
//     position: currentLocation,
//     map: map
//   });
  
// }
// // end initialize

// function calculateRoute() {

//   var directionsService = new google.maps.DirectionsService();
//   var start = "510 Mill St., Mt. Pleasant, SC";


//   var end = "259 East Bat St, Charleston, SC";

//   var waypoints = [];

//   var venueArray = document.getElementById('venue_address').val();
//   for (var i = 0; i < venueArray.length; i++) {
//     waypoints.push({
//       location:venueArray[i].value,
//       stopover:true});
//     }


//   var request = {
//     origin: start,
//     destination: end,
//     waypoints: waypoints,
//     optimizeWaypoints: true,
//     travelMode: google.maps.TravelMode.DRIVING
//   };
//   // end var request
//   // var directionsDisplay = new google.maps.DirectionsRenderer();
// // renders directions in the panel
//   directionsService.route(request, function(response, status) {
//     if (status == google.maps.DirectionsStatus.OK) {
//       directionsDisplay.setDirections(response);
//       }
//   });
// }

 
// $(document).ready(function()
// {
//   $(".route").on("click", function(event) {
//     console.log("what");
//     event.preventDefault();
//     calculateRoute();
//   });
//   navigator.geolocation.getCurrentPosition(initialize);

// });



  





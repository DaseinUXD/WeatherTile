var propGeoLocation = new XMLHttpRequest();
var propGeoLocObj;
var propZip = document.getElementById("MainContent_propZip").innerHTML;

propGeoLocation.open('GET', 'http://ziplocate.us/api/v1/' + propZip);
propGeoLocation.responseType = 'text';
propGeoLocation.send(null);

propGeoLocation.onload = function () {
    if (propGeoLocation.status === 200) {
        var propGeoLocObj = JSON.parse(propGeoLocation.responseText);
        console.log(propGeoLocObj);
        
        var latitude = propGeoLocObj.lat;
        var longitude = propGeoLocObj.lng;

        console.log(latitude, longitude);


        document.getElementById("MainContent_propLat").innerHTML = latitude;
        document.getElementById("MainContent_propLon").innerHTML = longitude;

    } else {
        console.log('Error loading from GeoLocation API');
    }; // end if-else
}; // end location function

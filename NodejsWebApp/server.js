'use strict';
var page = require('webpage').create();
  page.open('http://localhost:51027/WeatherTile', function (status) {
    console.log("Status: " + status);
    if (status === "success")
    {
      page.render('example.png');
    }
    phantom.exit();
  });
  
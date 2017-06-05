using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Script.Serialization;
using System.Web.UI;
using System.Web.UI.WebControls;
using WeatherTile.Model;

namespace WeatherTile
{
  public partial class DarkSkyBuildForm : System.Web.UI.Page
  {
    protected void Page_Load(object sender, EventArgs e)
    {

      PropertyInfo property = Application["CurrentProperty"] as PropertyInfo;
      GeoLocation geoLoc = Application["CurrentGeoLocation"] as GeoLocation;
      var settings = new DarkSkySettings()
      {
        darkSkyApiKey = "0ab072376462dd056d5a7f08c9c344a6",
        darkSkyUrl = "https://api.darksky.net/forecast/",
        darkSkyUnits = "auto",
        darkSkyLang = "en",
        darkSkyExcluded = "minutely, hourly, alerts, flags"
      };

       
           
      propName.Text = property.PropertyName;
      propCity.Text = property.PropertyCity;
      propState.Text = property.PropertyState;

      propLat.Text = geoLoc.lat.ToString();
      propLon.Text = geoLoc.lng.ToString();
      propDays.Text = property.PropertySendDays.ToString();

      apiKey.Text = settings.darkSkyApiKey;
      baseUrl.Text = settings.darkSkyUrl;

      Application["CurrentSettings"] = settings;
                          
    }

    protected void Build_Click(object sender, EventArgs e)
    {
      PropertyInfo property = Application["CurrentProperty"] as PropertyInfo;
      GeoLocation geoLoc = Application["CurrentGeoLocation"] as GeoLocation;
      DarkSkySettings settings = Application["CurrentSettings"] as DarkSkySettings;

      var request = new DarkSkyRequest();
      request.DarkSkyRequestAPI = settings.darkSkyApiKey;
      request.DarkSkyLatitude = geoLoc.lat;
      request.DarkSkyLongitude = geoLoc.lng;
      request.DarkSkyRequestUrl = settings.darkSkyUrl;

      Application["CurrentRequest"] = request;

      float buildLatitude = request.DarkSkyLatitude;
      float buildLongitude = request.DarkSkyLongitude;
      string apiKey = request.DarkSkyRequestAPI;
      string baseUrl = request.DarkSkyRequestUrl;

      string url = string.Format(baseUrl + apiKey + '/' + buildLatitude + ',' + buildLongitude);
      using (WebClient client = new WebClient())
      {
        string json = client.DownloadString (url);
        DarkSkyResponse response = (new JavaScriptSerializer().Deserialize<DarkSkyResponse>(json));
        
        Application["CurrentResponse"] = response;
        Response.Redirect("WeatherTile.aspx");

      }




    }
  }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WeatherTile.Model;

namespace WeatherTile
{
  public partial class WeatherPreviewForm : System.Web.UI.Page
  {
    protected void Page_Load(object sender, EventArgs e)
    {
      PropertyInfo property = Application["CurrentProperty"] as PropertyInfo;
      GeoLocation geoLoc = Application["CurrentGeoLocation"] as GeoLocation;
      DarkSkySettings currentSettings = Application["CurrentSettings"] as DarkSkySettings;

           
      
      propName.Text = property.PropertyName;
      propLat.Text = geoLoc.lat.ToString();
      propLon.Text = geoLoc.lng.ToString();
      propDays.Text = property.PropertySendDays.ToString();



      propLat.Text = darkSkyBuild.DarkSkyLatitude.ToString();
      propLon.Text = darkSkyBuild.DarkSkyLongitude.ToString();
      apiKey.Text = darkSkyBuild.DarkSkyAPI.ToString();
      darkSkyUrl.Text = darkSkyBuild.DarkSkyRequestUrl.ToString();


      Application["DarkSkyBuild"] = darkSkyBuild;
            
    }

    protected void Submit_Click(object sender, EventArgs e)
    {
      PropertyInfo property = Application["CurrentProperty"] as PropertyInfo;
      GeoLocation geoLoc = Application["CurrentGeoLocation"] as GeoLocation;
      DarkSkyRequest darkSkyBuild = Application["DarkSkyBuild"] as DarkSkyRequest;


    }
  }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WeatherTile.Model;

namespace WeatherTile
{
  public partial class WeatherTileForm : System.Web.UI.Page
  {
    protected void Page_Load(object sender, EventArgs e)
    {
      PropertyInfo property = Application["CurrentProperty"] as PropertyInfo;
      GeoLocation geoLoc = Application["CurrentGeoLocation"] as GeoLocation;
      DarkSkySettings settings = Application["CurrentSettings"] as DarkSkySettings;
      DarkSkyResponse response = Application["CurrentResponse"] as DarkSkyResponse;


      pic0.AlternateText = response.currently.icon;
      pic00.AlternateText = response.daily.data[0].icon;
      pic1.AlternateText = response.daily.data[1].icon;
      pic2.AlternateText = response.daily.data[2].icon;
      pic3.AlternateText = response.daily.data[3].icon;
      pic4.AlternateText = response.daily.data[4].icon;
      pic5.AlternateText = response.daily.data[5].icon;

      
      propCity.Text = property.PropertyCity;
      propState.Text = property.PropertyState;
      propZip.Text = property.PropertyZipCode.ToString();
      currentTemp.Text = Math.Round(response.currently.temperature).ToString()+"&deg;";
      day0Day.Text = response.currently.time.ToString();
      
    }
  }
}
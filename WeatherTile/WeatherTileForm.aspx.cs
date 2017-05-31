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

      if (response.currently.icon != null)
      {
        pic0.AlternateText = response.currently.icon.ToString();
        pic00.AlternateText = response.daily.data[0].icon;
        pic1.AlternateText = response.daily.data[1].icon;
        pic2.AlternateText = response.daily.data[2].icon;
        pic3.AlternateText = response.daily.data[3].icon;
        pic4.AlternateText = response.daily.data[4].icon;
        pic5.AlternateText = response.daily.data[5].icon;


        propName.InnerHtml = property.PropertyName;
        propCity.Text = property.PropertyCity;
        propState.Text = property.PropertyState;
        propZip.Text = property.PropertyZipCode.ToString();
        currentTemp.Text = Math.Round(response.currently.temperature).ToString() + "&deg;";
        day0Day.Text = response.currently.time.ToString();
        day0Date.Text = response.currently.time.ToString();

        day00.InnerHtml = response.daily.data[0].time.ToString();
        day1.InnerHtml = response.daily.data[1].time.ToString();
        day2.InnerHtml = response.daily.data[2].time.ToString();
        day3.InnerHtml = response.daily.data[3].time.ToString();
        day4.InnerHtml = response.daily.data[4].time.ToString();
        day5.InnerHtml = response.daily.data[5].time.ToString();

        hiTemp0.InnerHtml = Math.Round(response.daily.data[0].temperatureMax).ToString() + "&deg;";
        hiTemp1.InnerHtml = Math.Round(response.daily.data[1].temperatureMax).ToString() + "&deg;";
        hiTemp2.InnerHtml = Math.Round(response.daily.data[2].temperatureMax).ToString() + "&deg;";
        hiTemp3.InnerHtml = Math.Round(response.daily.data[3].temperatureMax).ToString() + "&deg;";
        hiTemp4.InnerHtml = Math.Round(response.daily.data[4].temperatureMax).ToString() + "&deg;";
        hiTemp5.InnerHtml = Math.Round(response.daily.data[5].temperatureMax).ToString() + "&deg;";
      } else
      {
        Console.WriteLine("Trouble Connecting to Dark Sky");
      }

    }
  }
}
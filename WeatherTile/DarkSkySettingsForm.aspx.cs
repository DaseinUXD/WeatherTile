using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WeatherTile.Model;

namespace WeatherTile
{
  public partial class DarkSkySettingsForm : System.Web.UI.Page
  {
   protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Submit_Click(object sender, EventArgs e)
    {

      var settings = new DarkSkySettings();

      settings.darkSkyUrl = baseUrl.Text;
      settings.darkSkyApiKey = privateApiKey.Text;
      settings.darkSkyUnits = selectedUnits.Text;
      settings.darkSkyLang = selectedLang.Text;
      settings.darkSkyExcluded = "minutely, hourly, alerts, flags";


      Application["CurrentSettings"] = settings;




    }
  }
}
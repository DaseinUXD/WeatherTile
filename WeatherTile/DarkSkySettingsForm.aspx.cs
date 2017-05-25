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
      ddUnits.DataSource = Enum.GetNames(typeof(MeasurementUnit));
      ddUnits.DataBind();

      ddLanguage.DataSource = Enum.GetNames(typeof(Language));
      ddLanguage.DataBind();

      ckboxExclude.DataSource = Enum.GetNames(typeof(Exclude));
      ckboxExclude.DataBind();

    }
  }
}
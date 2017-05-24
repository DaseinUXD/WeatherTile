using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WeatherTile.Model;

namespace WeatherTile
{
  public partial class VerifySetupForm : System.Web.UI.Page
  {
    protected void Page_Load(object sender, EventArgs e)
    {
      PropertyInfo property = Application["CurrentProperty"] as PropertyInfo;
      GeoLocation geoLoc = Session["GeoLocation"] as GeoLocation;
      propName.Text = property.PropertyName;
      propFTP.Text = property.PropertyFTP.ToString();
      propCity.Text = property.PropertyCity;
      propState.Text = property.PropertyState;
      propZip.Text = property.PropertyZipCode.ToString();
      propSendDays.Text = property.PropertySendDays.ToString();
      
      propLat.Text = geoLoc.lat.ToString();
      propLon.Text = geoLoc.lng.ToString();

      Application["CurrentGeoLocation"] = geoLoc;
      
    }

    protected void EditProp_Click(object sender, EventArgs e)
    {
      Response.Redirect("SetupForm.aspx");
    }

    protected void BuildTile_Click(object sender, EventArgs e)
    {

      Response.Redirect("DarkSkyBuildForm.aspx");
    }
  }
}
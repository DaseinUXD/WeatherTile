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
      GeoLocation geoLoc = Application["CurrentGeoLocation"] as GeoLocation;
      
    }
  }
}
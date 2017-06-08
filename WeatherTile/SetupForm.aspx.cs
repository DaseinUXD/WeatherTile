using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WeatherTile.Models;
using System.Net;
using System.Web.Script.Serialization;

namespace WeatherTile
{
  public partial class SetupForm : System.Web.UI.Page
  {
    protected void Page_Load(object sender, EventArgs e)
    {
      

    }

    protected void Submit_Click(object sender, EventArgs e)
    {
      var property = new PropertyInfo();
      property.PropertyName = propName.Text;
      property.PropertyFTP = int.Parse(propFtpBox.Text);
      property.PropertyCity = propCity.Text;
      property.PropertyState = propState.Text;
      property.PropertyZipCode = int.Parse(propZip.Text);
      property.PropertySendDays = int.Parse(propSendDays.Text);

      Application["CurrentProperty"] = property;

      int geoLocZip = property.PropertyZipCode;
      string url = string.Format("http://ziplocate.us/api/v1/" + geoLocZip);
      using (WebClient client = new WebClient())
      {
        string json = client.DownloadString(url);
        GeoLocation geoLoc = (new JavaScriptSerializer().Deserialize<GeoLocation>(json));
        float lat = geoLoc.lat;
        float lng = geoLoc.lng;
        
        Application["GeoLocation"] = geoLoc;
      }
           
      Response.Redirect("VerifySetupForm.aspx");


    }

  }
}
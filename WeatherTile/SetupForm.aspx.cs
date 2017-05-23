using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WeatherTile.Model;

namespace WeatherTile
{
  public partial class SetupForm : System.Web.UI.Page
  {
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void submit_Click(object sender, EventArgs e)
    {
      var property = new PropertyInfo();
      property.PropertyName = propName.Text;
      property.PropertyFTP = int.Parse(propFtpBox.Text);
      property.PropertyCity = propCity.Text;
      property.PropertyState = propState.Text;
      property.PropertyZipCode = int.Parse(propZip.Text);
      property.PropertySendDays = int.Parse(propSendDays.Text);
      Session["CurrentProperty"] = property;
      Response.Redirect("VerifySetupForm.aspx");
      

    }
  }
}
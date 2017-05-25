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

      var unitsUsed = ddUnits.DataTextField.ToString();
      
      var languageUsed = ddLanguage.DataTextField.ToString();

      int[] selection(CheckBoxList ckboxExclude)
      {
        List<int> selectedExcluded = new List<int>();

        foreach (ListItem item in ckboxExclude.Items)
        {
          if (item.Selected)
          {
            selectedExcluded.Add(ckboxExclude.Items.IndexOf(item));
          }
        }

        return selectedExcluded.ToArray();

      }

    }
  }
}
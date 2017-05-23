using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WeatherTile.Model
{
  public class PropertyInfo
  {
    public string PropertyName { get; set; }
    public int PropertyFTP { get; set; }
    public string PropertyCity { get; set; }
    public string PropertyState { get; set; }
    public int PropertyZipCode { get; set; }
    public int PropertySendDays { get; set; }

  }
}

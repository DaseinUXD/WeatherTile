using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WeatherTile.Model
{
  public class DarkSkyRequest
  {
    public string DarkSkyRequestAPI { get; set; }
    public float DarkSkyLatitude { get; set; }
    public float DarkSkyLongitude { get; set; }
    public string DarkSkyRequestUrl { get; set; }
  }
}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;


namespace WeatherTile.Model
{
  public class GeoLocation
  {
    public int GeoLocZipCode { get; set; }
    public double GeoLocLatitude { get; set; }
    public double GeoLocLongitude { get; set; }

  }

  public class GeoLocDownload
  {
    private double lat;
    private double lng;

    public double Lng { get => lng; set => lng = value; }
    public double Lat { get => lat; set => lat = value; }
  }


}

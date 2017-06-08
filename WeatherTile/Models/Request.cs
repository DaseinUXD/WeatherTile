using System;
using System.Collections.Generic;

namespace WeatherTile.Models
{
  public enum Unit
  {
    us, si, ca, uk, auto
  }

  public enum Language
  {
    en, auto
  }
  public enum Excludes
  {
    minutely, hourly
  }
  public class Request
  {
    public int RequestID { get; set; }
    public int PropertyID { get; set; }
    public int GeoLocationID { get; set; }

    public int ResponseID { get; set; }
    public Unit Unit { get; set; }
    public Language Language { get; set; }
    public Excludes Excludes { get; set; }
    public virtual Response Response { get; set; }
    public virtual ICollection<HotelProperty> Property { get; set; }
    public virtual ICollection<GeoLocation> GeoLocation { get; set; }
  }
}

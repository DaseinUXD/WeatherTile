using System;
using System.Collections.Generic;

namespace WeatherTile.Models
{
  public class Property
  {
    public int ID { get; set; }
    public string Name { get; set; }
    public int FtpBox { get; set; }
    public string City { get; set; }
    public string State { get; set; }
    public int ZipCode { get; set; }
    public int DaysBeforePSM { get; set; }

    

    public virtual ICollection<Request> Requests { get; set; }
    public virtual ICollection<Geolocation> Geolocations { get; set; }

     
  }
}

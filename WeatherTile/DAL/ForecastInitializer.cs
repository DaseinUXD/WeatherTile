using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Entity;
using WeatherTile.Models;

namespace WeatherTile.DAL
{
  public class ForecastInitializer : System.Data.Entity.DropCreateDatabaseIfModelChanges<ForecastContext>
  {
    protected override void Seed(ForecastContext context)
    {
      var propertys = new List<Property>
      {
        new Property {Name="Hotel",FtpBox=00000,City="City",State="State",ZipCode=76137,DaysBeforePSM=5 }

      };
      propertys.ForEach(p => context.Propertys.Add(p));
      context.SaveChanges();

      var geolocations = new List<GeoLocation>
      {
        new GeoLocation {GeoLocationID=00001,latitude=120,longitude=98 }
      }
    }
  }

}
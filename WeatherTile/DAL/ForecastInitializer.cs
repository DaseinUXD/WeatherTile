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
      var properties = new List<HotelProperty>
      {
        new HotelProperty {Name="Hotel",FtpBox=00000,City="Fort Worth",State="Texas",ZipCode=76137,DaysBeforePSM=5 },
        new HotelProperty {Name="Spa",FtpBox=00001,City="Dallas",State="Texas",ZipCode=75225,DaysBeforePSM=4 }

      };
      properties.ForEach(s => context.Propertys.Add(s));
      context.SaveChanges();

      var geolocations = new List<GeoLocation>
      {
        new GeoLocation {GeoLocationID=00001,GeoLocationUrl="http://ziplocate.us/api/v1/",Latitude=120,Longitude=98 },
        new GeoLocation {GeoLocationID=00001,GeoLocationUrl="http://ziplocate.us/api/v1/",Latitude=100,Longitude=50 }

      };
      geolocations.ForEach(s => context.GeoLocations.Add(s));
      context.SaveChanges();
      var requests = new List<Request>
      {
        new Request {PropertyID=1,GeoLocationID=00001,ResponseID=1,Unit=Unit.auto,Language=Language.auto},
        new Request {PropertyID=1,GeoLocationID=00001,ResponseID=2,Unit=Unit.auto,Language=Language.auto},
        new Request {PropertyID=2,GeoLocationID=00002,ResponseID=3,Unit=Unit.auto,Language=Language.auto},
        new Request {PropertyID=2,GeoLocationID=00002,ResponseID=4,Unit=Unit.auto,Language=Language.auto}
      };
      requests.ForEach(s => context.Requests.Add(s));
      context.SaveChanges();
           
    }
  }

}
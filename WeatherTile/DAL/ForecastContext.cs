using WeatherTile.Models;
using System.Data.Entity;
using System.Data.Entity.ModelConfiguration.Conventions;

namespace WeatherTile.DAL
{
  public class ForecastContext : DbContext
  {
    public ForecastContext() : base("ForecastContext")
    {
    }
    public DbSet<Property> Propertys { get; set; }
    public DbSet<Request> Requests { get; set; }
    public DbSet<GeoLocation> GeoLocations { get; set; }
    public DbSet<Response> Responses { get; set; }

    protected override void OnModelCreating(DbModelBuilder modelBuilder)
    {
      modelBuilder.Conventions.Remove<PluralizingTableNameConvention>();
    }


  }
}
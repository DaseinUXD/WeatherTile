namespace WeatherTile.Model
{
  public class GeoLocation
  {
    public int GeoLocZipCode { get; set; }
    public float GeoLocLatitude { get; set; }
    public float GeoLocLongitude { get; set; }
  }

  public class GeoLocDownload
  {
    public float lat { get; set; }
    public float lng { get; set; }
        
  }
}
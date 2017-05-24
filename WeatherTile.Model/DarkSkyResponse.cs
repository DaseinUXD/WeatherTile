using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WeatherTile.Model
{
  public class DarkSkyResponse
  {
    public float latitude { get; set; }
    public float longitude { get; set; }
    public string timezone { get; set; }
    public Currently currently { get; set; }
    public DailyForecast dailyForecast { get; set; }
    public Daily daily { get; set; }

  }

  public class Currently
  {
    public long time { get; set; }
    public string summary { get; set; }
    public string icon { get; set; }
    public float precipProbability { get; set; }
    public string precipType { get; set; }
    public float temperature { get; set; }

  }

  public class DailyForecast
  {
    public long time { get; set; }
    public string summary { get; set; }
    public string icon { get; set; }
    public float precipProbability { get; set; }
    public string precipType { get; set; }
    public float temperatureMin { get; set; }
    public long temperatureMinTime { get; set; }
    public float temperatureMax { get; set; }
    public long temperatureMaxTime { get; set; }

  }

  public class Daily
  {
    public string summary { get; set; }
    public string icon { get; set; }
    public List<DailyForecast> data { get; set; }

  }
  public class Alert
  {
    public string title { get; set; }
    public long expires { get; set; }
    public string uri { get; set; }
    public string description { get; set; }
  }


  public class Flags
  {
    public List<string> sources { get; set; }
    public List<string> isd_stations { get; set; }
    public List<string> lamp_stations { get; set; }
    public List<string> metar_stations { get; set; }
    public List<string> darksky_stations { get; set; }
    public string units { get; set; }
  }
}

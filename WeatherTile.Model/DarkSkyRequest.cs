using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Globalization;
using System.IO;
using System.Linq;
using System.Net;
using System.Text;
using System.Threading.Tasks;

namespace WeatherTile.Model
{
  public class DarkSkyRequest
  {
    private readonly string _apiKey;
    private readonly string _latitude;
    private readonly string _longitude;
    private readonly string _unit;
    private readonly string _exclude;
    private readonly string _extend;
    private readonly string _time;
    private readonly string _lang;
    //
    private string _apiCallsMade;
    private string _apiResponseTime;
    //
    private const string CurrentForecastUrl = "https://api.darksky.net/forecast/{0}/{1},{2}?units={3}&lang={4}&extend={5}&exclude={6}";
   
    public async Task<DarkSkyResponse> GetAsync()
    {
      var uri = string.Format(CurrentForecastUrl, _apiKey, _latitude, _longitude, _unit, _lang, _extend, _exclude);
      var request = (HttpWebRequest)WebRequest.Create(uri);
      request.Method = "GET";
      request.Headers.Add("Content-Encoding", "gzip");
      request.AutomaticDecompression = DecompressionMethods.GZip;
      request.ContentType = "application/json";

      var response = (HttpWebResponse)request.GetResponse();
      DarkSkyResponse result = null;

      using (Stream responseStream = response.GetResponseStream())
      {
        var reader = new StreamReader(responseStream);
        var jsonOut = await reader.ReadToEndAsync();
        reader.Close();
        result = JsonConvert.DeserializeObject<DarkSkyResponse>(jsonOut);
       }

      return result;
    }

    public DarkSkyRequest(string apiKey, float latF, float longF, MeasurementUnit unit, Language? lang=null, Extend[] extend = null, Exclude[] exclude = null)
    {
      _apiKey = apiKey;
      _latitude = latF.ToString(CultureInfo.InvariantCulture);
      _longitude = longF.ToString(CultureInfo.InvariantCulture);
      _unit = Enum.GetName(typeof(MeasurementUnit), unit);
      _extend = (extend != null) ? DarkSkyRequestHelpers.FormatExtendString(extend) : "";
      _exclude = (exclude != null) ? DarkSkyRequestHelpers.FormatExcludeString(exclude) : "";
      _lang = (lang != null) ? DarkSkyRequestHelpers.FormatLanguageEnum(lang) : Language.en.ToString();
    }

    public string ApiCallsMade
    {
      get
      {
        if (_apiCallsMade != null)
        {
          return _apiCallsMade;
        }
        throw new Exception("Cannot retrieve API Calls Made. No calls have been made to the API yet.");
      }
    }
    public string ApiREsponseTime
    {
      get
      {
        if (_apiResponseTime != null)
        {
          return _apiResponseTime;
        }
        throw new Exception("Cannot retrieve API response time.  No calls have been made to the API yet");
      }
    }
  }
}

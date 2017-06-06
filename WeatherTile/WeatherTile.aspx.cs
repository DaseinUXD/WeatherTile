using System;
using System.Collections.Generic;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Threading;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;
using WeatherTile.Model;

namespace WeatherTile
{
  public partial class WeatherTile : System.Web.UI.Page
  {
    protected void Page_Load(object sender, EventArgs e)
    {

      PropertyInfo property = Application["CurrentProperty"] as PropertyInfo;
      GeoLocation geoLoc = Application["CurrentGeoLocation"] as GeoLocation;
      DarkSkySettings settings = Application["CurrentSettings"] as DarkSkySettings;
      DarkSkyResponse response = Application["CurrentResponse"] as DarkSkyResponse;
      

      if (response.currently.icon != null)
      {
        divHotelName.InnerHtml = property.PropertyName;
        divCity.InnerHtml = property.PropertyCity + "," + "&nbsp";
        divState.InnerHtml = property.PropertyState + "&nbsp";
        divZip.InnerHtml = property.PropertyZipCode.ToString();
        divCurrentTemp.InnerHtml = Math.Round(response.currently.temperature).ToString() + "&deg;";
                      
        divCurrentDay.InnerHtml = response.currently.time.ToString();
        divCurrentDate.InnerHtml = response.currently.time.ToString();

        imgCurrentIcon.Alt = response.currently.icon.ToString();
        imgDay0Icon.Alt = response.daily.data[0].icon.ToString();
        imgDay1Icon.Alt = response.daily.data[1].icon.ToString();
        imgDay2Icon.Alt = response.daily.data[2].icon.ToString();
        imgDay3Icon.Alt = response.daily.data[3].icon.ToString();
        imgDay4Icon.Alt = response.daily.data[4].icon.ToString();
        imgDay5Icon.Alt = response.daily.data[5].icon.ToString();

        divForecastDay0.InnerHtml = response.daily.data[0].time.ToString();
        divForecastDay1.InnerHtml = response.daily.data[1].time.ToString();
        divForecastDay2.InnerHtml = response.daily.data[2].time.ToString();
        divForecastDay3.InnerHtml = response.daily.data[3].time.ToString();
        divForecastDay4.InnerHtml = response.daily.data[4].time.ToString();
        divForecastDay5.InnerHtml = response.daily.data[5].time.ToString();
        
        divTemp0.InnerHtml = Math.Round(response.daily.data[0].temperatureMax).ToString() + "&deg;";
        divTemp1.InnerHtml = Math.Round(response.daily.data[1].temperatureMax).ToString() + "&deg;";
        divTemp2.InnerHtml = Math.Round(response.daily.data[2].temperatureMax).ToString() + "&deg;";
        divTemp3.InnerHtml = Math.Round(response.daily.data[3].temperatureMax).ToString() + "&deg;";
        divTemp4.InnerHtml = Math.Round(response.daily.data[4].temperatureMax).ToString() + "&deg;";
        divTemp5.InnerHtml = Math.Round(response.daily.data[5].temperatureMax).ToString() + "&deg;";

       
      }
      else
      {
        Console.WriteLine("Trouble Connecting to Dark Sky");
      }
     
    }


    //protected void Capture(object sender, EventArgs e)
    //{
    //  string url = "http://localhost:51027/WeatherTile";
    //  Thread thread = new Thread(delegate ()
    //  {
    //    using (WebBrowser browser = new WebBrowser())
    //    {
    //      browser.ScrollBarsEnabled = false;
    //      browser.AllowNavigation = true;
    //      browser.Navigate(url);
    //      browser.Width = 1024;
    //      browser.Height = 768;
    //      browser.DocumentCompleted += new WebBrowserDocumentCompletedEventHandler(DocumentCompleted);
    //      while (browser.ReadyState != WebBrowserReadyState.Complete)
    //      {
    //        System.Windows.Forms.Application.DoEvents();
    //      }
    //    }
    //  });
    //  thread.SetApartmentState(ApartmentState.STA);
    //  thread.Start();
    //  thread.Join();
    //}

    //private void DocumentCompleted(object sender, WebBrowserDocumentCompletedEventArgs e)
    //{
    //  WebBrowser browser = sender as WebBrowser;
    //  using (Bitmap bitmap = new Bitmap(browser.Width, browser.Height))
    //  {
    //    browser.DrawToBitmap(bitmap, new Rectangle(0, 0, browser.Width, browser.Height));
    //      using (MemoryStream stream = new MemoryStream())
    //      {
    //        bitmap.Save(stream, System.Drawing.Imaging.ImageFormat.Png);
    //        byte[] bytes = stream.ToArray();
    //        imgScreenShot.Visible = true;
    //        imgScreenShot.ImageUrl = "data:image/png;base64," + Convert.ToBase64String(bytes);
    //      }
        
    //  }
    //}
  }


}
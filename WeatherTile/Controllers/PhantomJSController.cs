using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.IO;
using System.Linq;
using System.Threading;
using System.Web;
using System.Web.Mvc;

namespace WeatherTile.Controllers
{
  public class PhantomJSController : Controller
  {
    // GET: PhantomJS
    public ActionResult DownloadStatement(int id)
    {
      string serverPath = HttpContext.Server.MapPath("~/");
      string filename = DateTime.Now.ToString("ddMMyyy_hhmmss") + ".pdf";

      new Thread(new ParameterizedThreadStart(x =>
      {
        ExecuteCommand("cd" + serverPath + @" & phantomjs rasterize.js http://localhost:51027/filetopdf/" + id.ToString() + " " + filename + @"""A4""");
      })).Start();

      var filePath = Path.Combine(HttpContext.Server.MapPath("~/"), filename);

      var stream = new MemoryStream();
      byte[] bytes = DoWhile(filePath);


      return File(bytes, "application/pdf", filename);
    }

    private void ExecuteCommand(string Command)
    {
      try
      {
        ProcessStartInfo ProcessInfo;
        Process Process;

        ProcessInfo = new ProcessStartInfo("cmd.exe", "/K" + Command);
        ProcessInfo.CreateNoWindow = true;
        ProcessInfo.UseShellExecute = false;

        Process = Process.Start(ProcessInfo);
      }
      catch { }
    }

    //public ViewResult FileToPDF(int id)
    //{
    //  var viewModel = file.Get(id);
    //  return View(viewModel);
    //}

    private byte[] DoWhile(string filePath)
    {
      byte[] bytes = new byte[0];
      bool fail = true;

      while (fail)
      {
        try
        {
          using (FileStream file = new FileStream(filePath, FileMode.Open, FileAccess.Read))
          {
            bytes = new byte[file.Length];
            file.Read(bytes, 0, (int)file.Length);
          }
          fail = false;
        }
        catch
        {
          Thread.Sleep(1000);
        }
      }
      System.IO.File.Delete(filePath);
      return bytes;
    }
  }
}
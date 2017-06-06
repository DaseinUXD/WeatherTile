<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WeatherTile.aspx.cs" Inherits="WeatherTile.WeatherTile" %>

<!DOCTYPE html>

<html>
<head runat="server">
  <title>Weather Tile</title>
  <script src="Scripts/jquery-3.1.1.js"></script>
  <script src="Scripts/bootstrap.js"></script>
  <script src="Scripts/moment.js"></script>

  <link rel="stylesheet" href="Content/bootstrap.css" />
  <link rel="stylesheet" href="Content/bootstrap-theme.css" />
  <link rel="stylesheet" href="Content/Site.css" />
  <link rel="stylesheet" href="Content/WeatherTile.css" />
</head>
<body>
  <form id="form1" runat="server">

    <div class="container-fluid">

      <div id="divContent">
        <div id="divForecast">
          
          <div class="row">
            <div id="divHotelName" runat="server" class="col-lg-6">Hotel Name</div>
            <div class="col-lg-6">
              <div id="divCity" runat="server">City</div>
              <div id="divState" runat="server">State</div>
              <div id="divZip" runat="server">ZipCode</div>
            </div>
          </div>
          <div class="row h3">
            <div id="divCurrentTemp" runat="server" class="col-lg-3">Temp</div>
            <div id="divDay00" runat="server" class="col-lg-3">
              <img id="imgCurrentIcon" runat="server" style="width: 90px; height: 90px;" />
            </div>
            <div id="divCurrentDayDate" runat="server" class="col-lg-6">
              <div id="divCurrentDay" runat="server" class="row">Day</div>
              <div id="divCurrentDate" runat="server" class="row">Date</div>
            </div>
          </div>
          <div id="divForecastIcons" class="row h3">
            <div id="divDay0" runat="server" class="col-lg-2">
              <img id="imgDay0Icon" runat="server" />
            </div>
            <div id="divDay1" runat="server" class="col-lg-2">
              <img id="imgDay1Icon" runat="server" />
            </div>
            <div id="divDay2" runat="server" class="col-lg-2">
              <img id="imgDay2Icon" runat="server" />
            </div>
            <div id="divDay3" runat="server" class="col-lg-2">
              <img id="imgDay3Icon" runat="server" />
            </div>
            <div id="divDay4" runat="server" class="col-lg-2">
              <img id="imgDay4Icon" runat="server" />
            </div>
            <div id="divDay5" runat="server" class="col-lg-2">
              <img id="imgDay5Icon" runat="server" />
            </div>
          </div>
          <div id="divForecastTemps" class="row">
            <div id="divTemp0" class="col-lg-2" runat="server">Temp</div>
            <div id="divTemp1" class="col-lg-2" runat="server">Temp</div>
            <div id="divTemp2" class="col-lg-2" runat="server">Temp</div>
            <div id="divTemp3" class="col-lg-2" runat="server">Temp</div>
            <div id="divTemp4" class="col-lg-2" runat="server">Temp</div>
            <div id="divTemp5" class="col-lg-2" runat="server">Temp</div>
          </div>
          <div id="divForecastDays" class="row h3">
            <div id="divForecastDay0" class="col-lg-2" runat="server">DAY</div>
            <div id="divForecastDay1" class="col-lg-2" runat="server">DAY</div>
            <div id="divForecastDay2" class="col-lg-2" runat="server">DAY</div>
            <div id="divForecastDay3" class="col-lg-2" runat="server">DAY</div>
            <div id="divForecastDay4" class="col-lg-2" runat="server">DAY</div>
            <div id="divForecastDay5" class="col-lg-2" runat="server">DAY</div>
          </div>
        </div>
      </div>
    </div>
    <asp:Button Text="PhantomJS" runat="server" CssClass="btn btn-primary" OnClick="LaunchPhantomJS" />
    <%--<asp:Button Text="Capture" runat="server" OnClick="Capture" />--%>

    <%--<asp:Image ID="imgScreenShot" runat="server" Height="300" Width="400" Visible="false" />--%>


    <script>
      // Icon00
      var pic00src = 'Content/icons-white/' + $("#imgCurrentIcon").attr('alt') + 'hdpi.png';
      console.log(pic00src);
      $("#imgCurrentIcon").attr('src', pic00src);

      // Icon0
      var pic0src = 'Content/icons-white/' + $("#imgDay0Icon").attr('alt') + 'hdpi.png';
      $("#imgDay0Icon").attr('src', pic0src);

      // Icon1
      var pic1src = 'Content/icons-white/' + $("#imgDay1Icon").attr('alt') + 'hdpi.png';
      $("#imgDay1Icon").attr('src', pic1src);

      // Icon2
      var pic2src = 'Content/icons-white/' + $("#imgDay2Icon").attr('alt') + 'hdpi.png';
      $("#imgDay2Icon").attr('src', pic2src);

      // Icon3
      var pic3src = 'Content/icons-white/' + $("#imgDay3Icon").attr('alt') + 'hdpi.png';
      $("#imgDay3Icon").attr('src', pic3src);

      // Icon4
      var pic4src = 'Content/icons-white/' + $("#imgDay4Icon").attr('alt') + 'hdpi.png';
      $("#imgDay4Icon").attr('src', pic4src);

      // Icon5
      var pic5src = 'Content/icons-white/' + $("#imgDay5Icon").attr('alt') + 'hdpi.png';
      $("#imgDay5Icon").attr('src', pic5src);


      var day0 = $("#divCurrentDay").text();
      var newDay0 = moment.unix(day0).format('dddd');
      var newDate0 = moment.unix(day0).format('ll');
      $("#day0Day").text(newDay0);
      $("#day0Date").text(newDate0);
      $("#divCurrentDay").text(newDay0);
      $("#divCurrentDate").text(newDate0);

      var day00 = $("#divForecastDay0").text();
      var newDay00 = moment.unix(day00).format('ddd');
      $("#day00").text(newDay00);
      $("#divForecastDay0").text(newDay00);

      var day1 = $("#divForecastDay1").text();
      var newDay1 = moment.unix(day1).format('ddd');
      $("#day1").text(newDay1);
      $("#divForecastDay1").text(newDay1);

      var day2 = $("#divForecastDay2").text();
      var newDay2 = moment.unix(day2).format('ddd');
      $("#day2").text(newDay2);
      $("#divForecastDay2").text(newDay2);

      var day3 = $("#divForecastDay3").text();
      var newDay3 = moment.unix(day3).format('ddd');
      $("#day3").text(newDay3);
      $("#divForecastDay3").text(newDay3);

      var day4 = $("#divForecastDay4").text();
      var newDay4 = moment.unix(day4).format('ddd');
      $("#day4").text(newDay4);
      $("#divForecastDay4").text(newDay4);

      var day5 = $("#divForecastDay5").text();
      var newDay5 = moment.unix(day5).format('ddd');
      $("#day5").text(newDay5);
      $("#divForecastDay5").text(newDay5);



    </script>
  </form>
</body>
</html>

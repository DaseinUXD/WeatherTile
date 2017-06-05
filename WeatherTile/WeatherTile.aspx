<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WeatherTile.aspx.cs" Inherits="WeatherTile.WeatherTile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
      <div class="container-fluid">
    <div class="row">
      <div class="col-lg-6">
        <h1>Table Version</h1>
        <div style="width: 600px; position: relative; left: auto; top: 50px; border-width: 0; margin-left: auto; margin-right: auto">
          <table align="center" border-collapse="collapse" border="0" cellspacing="0" cellpadding="0" style="max-width: 600px; width: 100%; padding: 0px !important;">
            <tr style="width: 600px">
              <td valign="top" style="padding: 0 !important;">
                <table style="width: 100%; padding: 0 !important;" align="center" border="0" cellspacing="0" cellpadding="0">
                  <thead style="background-color: #51565F; color: white;">
                    <tr style="height: 40px; font-family: Roboto, Arial, sans-serif; font-variant: normal; font-weight: 600; color: #2e2e2e; line-height: 1em">

                      <td colspan="3" style="letter-spacing: initial;">
                        <span id="propName" style="position: relative; left: .7em; top: .5em; font-size: 2em;" runat="server"></span>
                      </td>
                      <td colspan="3" style="letter-spacing: initial;">
                        <span style="position: relative; left: 1.5em; top: 1em; font-size: 1.5em;">
                          <asp:Label ID="propCity" runat="server" Text=""></asp:Label>, 
                      <asp:Label ID="propState" runat="server" Text=""></asp:Label>
                        </span>
                        <span id="locZip" style="position: relative; left: 1.2em; top: 1em; font-size: 1.5em;">
                          <asp:Label ID="propZip" runat="server" Text=""></asp:Label>
                        </span>
                      </td>
                    </tr>
                    <tr style="margin: 0; font-family: Roboto, Arial, sans-serif; font-weight: 300; max-width: 600px; height: 140px;">
                      <td valign="bottom" colspan="3" style="max-width: 300px;">
                        <!--current temperature-->
                        <span style="position: relative; left: 0.2em; font-size: 8em; font-weight: 700; clear: both; display: inline;">
                          <asp:Label ID="currentTemp" runat="server" Text=""></asp:Label>
                        </span>
                        <!--current weather icon-->
                        <span style="position: relative; top: 0; left: 0; clear: both; display: inline;">
                          <asp:Image ID="pic0" Width="90" Height="90" runat="server" Style="position: relative; bottom: 2.0em; left: 0;" />
                        </span>
                      </td>
                      <td valign="bottom" colspan="3" style="max-width: 400px; font-size: 2em; letter-spacing: 0.09em; text-align: right;">
                        <span style="position: relative; right: 5%; display: block; line-height: 3.5em;">
                          <asp:Label ID="day0Day" runat="server" Text=""></asp:Label>
                        </span>
                        <span style="position: relative; right: 5%; bottom: 0.9em; display: block;">
                          <asp:Label ID="day0Date" runat="server" Text=""></asp:Label>
                        </span>
                      </td>
                    </tr>
                  </thead>
                  <tbody style="background-color: #33343a; color: snow;">
                    <tr valign="bottom" style="font-family: Roboto, Arial, sans-serif; text-align: center; height: 80px;">
                      <td valign="bottom" style="width: 100px">
                        <asp:Image runat="server" Width="50" Height="50" ID="Image1" /></td>
                      <td valign="bottom" style="width: 100px">
                        <asp:Image runat="server" Width="50" Height="50" ID="pic1" /></td>
                      <td valign="bottom" style="width: 100px">
                        <asp:Image runat="server" Width="50" Height="50" ID="pic2" /></td>
                      <td valign="bottom" style="width: 100px">
                        <asp:Image runat="server" Width="50" Height="50" ID="pic3" /></td>
                      <td valign="bottom" style="width: 100px">
                        <asp:Image runat="server" Width="50" Height="50" ID="pic4" /></td>
                      <td valign="bottom" style="width: 100px">
                        <asp:Image runat="server" Width="50" Height="50" ID="pic5" /></td>
                    </tr>
                    <tr valign="top" style="font-family: Roboto, Arial, sans-serif; text-align: center; font-size: 2em; font-weight: 700; line-height: 1em; height: 50px;">
                      <td id="hiTemp0" valign="middle" style="width: 100px" runat="server"></td>
                      <td id="hiTemp1" valign="middle" style="width: 100px" runat="server"></td>
                      <td id="hiTemp2" valign="middle" style="width: 100px" runat="server"></td>
                      <td id="hiTemp3" valign="middle" style="width: 100px" runat="server"></td>
                      <td id="hiTemp4" valign="middle" style="width: 100px" runat="server"></td>
                      <td id="hiTemp5" valign="middle" style="width: 100px" runat="server"></td>
                    </tr>
                    <tr valign="top" style="font-family: Roboto, Arial, sans-serif; text-transform: uppercase; text-align: center; color: #808080; font-size: 2em; font-weight: 500; height: 50px;">
                      <td id="day00" valign="top" style="width: 100px" runat="server"></td>
                      <td id="day1" valign="top" style="width: 100px" runat="server"></td>
                      <td id="day2" valign="top" style="width: 100px" runat="server"></td>
                      <td id="day3" valign="top" style="width: 100px" runat="server"></td>
                      <td id="day4" valign="top" style="width: 100px" runat="server"></td>
                      <td id="day5" valign="top" style="width: 100px" runat="server"></td>

                    </tr>
                  </tbody>
                </table>
              </td>
            </tr>
          </table>
        </div>
      </div>
      <div class="col-lg-6">
        <h1>DIV Version</h1>
        <div class="row">
          <div id="divHotelName" runat="server" class="col-lg-6">Hotel Name</div>
          <div id="divCity" runat="server" class="col-lg-2">City</div>
          <div id="divState" runat="server" class="col-lg-2">State</div>
          <div id="divZip" runat="server" class="col-lg-2">ZipCode</div>
        </div>
        <div class="row">
          <div id="divCurrentTemp" runat="server" class="col-lg-3">Temp</div>
          <div class="col-lg-3"><img id="imgCurrentIcon" runat="server" /></div>
          <div class="col-lg-6">
            <div id="divCurrentDay" runat="server" class="row">Day</div>
            <div id="divCurrentDate" runat="server" class="row">Date</div>
          </div>
        </div>
        <div class="row">
          <div class="col-lg-2"><img id="imgDay00Icon" runat="server" /></div>
          <div class="col-lg-2"><img id="imgDay1Icon" runat="server" /></div>
          <div class="col-lg-2"><img id="imgDay2Icon" runat="server" /></div>
          <div class="col-lg-2"><img id="imgDay3Icon" runat="server" /></div>
          <div class="col-lg-2"><img id="imgDay4Icon" runat="server" /></div>
          <div class="col-lg-2"><img id="imgDay5Icon" runat="server" /></div>
        </div>
        <div class="row">
          <div id="divTemp0" class="col-lg-2" runat="server">Temp</div>
          <div id="divTemp1" class="col-lg-2" runat="server">Temp</div>
          <div id="divTemp2" class="col-lg-2" runat="server">Temp</div>
          <div id="divTemp3" class="col-lg-2" runat="server">Temp</div>
          <div id="divTemp4" class="col-lg-2" runat="server">Temp</div>
          <div id="divTemp5" class="col-lg-2" runat="server">Temp</div>
        </div>
        <div class="row">
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
    </div>
    </form>
    <script src="Scripts/moment.js"></script>
  <script>
    // Icon0
    var pic0src = 'Content/icons-white/' + $("#MainContent_pic0").attr('alt') + '.svg';
    console.log(pic0src);
    $("#MainContent_pic0").attr('src', pic0src);
    $("#MainContent_imgCurrentIcon").attr('src', pic0src);

    // Icon00
    var pic00src = 'Content/icons-white/' + $("#MainContent_pic00").attr('alt') + '.svg';
    console.log(pic00src);
    $("#MainContent_pic00").attr('src', pic00src);
    $("#MainContent_imgDay00Icon").attr('src', pic00src);

    // Icon1
    var pic1src = 'Content/icons-white/' + $("#MainContent_pic1").attr('alt') + '.svg';
    console.log(pic1src);
    $("#MainContent_pic1").attr('src', pic1src);
    $("#MainContent_imgDay1Icon").attr('src', pic1src);

    // Icon2
    var pic2src = 'Content/icons-white/' + $("#MainContent_pic2").attr('alt') + '.svg';
    console.log(pic2src);
    $("#MainContent_pic2").attr('src', pic2src);
    $("#MainContent_imgDay2Icon").attr('src', pic2src);

    // Icon3
    var pic3src = 'Content/icons-white/' + $("#MainContent_pic3").attr('alt') + '.svg';
    console.log(pic3src);
    $("#MainContent_pic3").attr('src', pic3src);
    $("#MainContent_imgDay3Icon").attr('src', pic3src);

    // Icon4
    var pic4src = 'Content/icons-white/' + $("#MainContent_pic4").attr('alt') + '.svg';
    console.log(pic4src);
    $("#MainContent_pic4").attr('src', pic4src);
    $("#MainContent_imgDay4Icon").attr('src', pic4src);

    // Icon5
    var pic5src = 'Content/icons-white/' + $("#MainContent_pic5").attr('alt') + '.svg';
    console.log(pic5src);
    $("#MainContent_pic5").attr('src', pic5src);
    $("#MainContent_imgDay5Icon").attr('src', pic5src);


    var day0 = $("#MainContent_day0Day").text();
    var newDay0 = moment.unix(day0).format('dddd');
    var newDate0 = moment.unix(day0).format('ll');
    $("#MainContent_day0Day").text(newDay0);
    $("#MainContent_day0Date").text(newDate0);
    $("#MainContent_divCurrentDay").text(newDay0);
    $("#MainContent_divCurrentDate").text(newDate0);

    var day00 = $("#MainContent_day00").text();
    var newDay00 = moment.unix(day00).format('ddd');
    $("#MainContent_day00").text(newDay00);
    $("#MainContent_divForecastDay0").text(newDay00);

    var day1 = $("#MainContent_day1").text();
    var newDay1 = moment.unix(day1).format('ddd');
    $("#MainContent_day1").text(newDay1);
    $("#MainContent_divForecastDay1").text(newDay1);

    var day2 = $("#MainContent_day2").text();
    var newDay2 = moment.unix(day2).format('ddd');
    $("#MainContent_day2").text(newDay2);
    $("#MainContent_divForecastDay2").text(newDay2);

    var day3 = $("#MainContent_day3").text();
    var newDay3 = moment.unix(day3).format('ddd');
    $("#MainContent_day3").text(newDay3);
    $("#MainContent_divForecastDay3").text(newDay3);

    var day4 = $("#MainContent_day4").text();
    var newDay4 = moment.unix(day4).format('ddd');
    $("#MainContent_day4").text(newDay4);
    $("#MainContent_divForecastDay4").text(newDay4);

    var day5 = $("#MainContent_day5").text();
    var newDay5 = moment.unix(day5).format('ddd');
    $("#MainContent_day5").text(newDay5);
    $("#MainContent_divForecastDay5").text(newDay5);
    
    function getIcon(iconDesc, picNo) {

      switch (iconDesc)
      {
        case 'clear-day':
          document.getElementById(picNo).imageURL = 'Content/icons-white/clear-day.svg';
          break;
        case 'clear-night':
          document.getElementById(picNo).imageURL = 'Content/icons-white/clear-night.svg';
          break;
        case 'cloudy':
          document.getElementById(picNo).imageURL = 'Content/icons-white/cloudy.svg';
          break;
        case 'fog':
          document.getElementById(picNo).imageURL = 'Content/icons-white/fog.svg';
          break;
        case 'hail':
          document.getElementById(picNo).imageURL = 'Content/icons-white/hail.svg';
          break;
        case 'partly-cloudy-day':
          document.getElementById(picNo).imageURL = 'Content/icons-white/partly-cloudy-day.svg';
          break;
        case 'partly-cloudy-night':
          document.getElementById(picNo).imageURL = 'Content/icons-white/partly-cloudy-night.svg';
          break;
        case 'rain':
          document.getElementById(picNo).imageURL = 'Content/icons-white/rain.svg';
          break;
        case 'sleet':
          document.getElementById(picNo).imageURL = 'Content/icons-white/sleet.svg';
          break;
        case 'snow':
          document.getElementById(picNo).imageURL = 'Content/icons-white/snow.svg';
          break;
        case 'thunderstorm':
          document.getElementById(picNo).imageURL = 'Content/icons-white/thunderstorm.svg';
          break;
        case 'tornado':
          document.getElementById(picNo).imageURL = 'Content/icons-white/tornado.svg';
          break;
        case 'wind':
          document.getElementById(picNo).imageURL = 'Content/icons-white/wind.svg';
      };
    };

    //getIcon(pic0.AlternateText, pic0);
    //getIcon(pic00, pic00);
    //getIcon(pic1, pic1);
    //getIcon(pic2, pic2);
    //getIcon(pic3, pic3);
    //getIcon(pic4, pic4);
    //getIcon(pic5, pic5);
  </script>
</body>
</html>

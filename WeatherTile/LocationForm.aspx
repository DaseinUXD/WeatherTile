<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LocationForm.aspx.cs" Inherits="WeatherTile.LocationForm" %>
<%@ Register
    Assembly="AjaxControlToolkit"
    Namespace="AjaxControlToolkit"
    TagPrefix="ajaxToolkit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Location Form</title>
  <script>
    var propLocation = new XMLHttpRequest();
    var propLocObj;
    var propZip;

    propLocation.open('GET', 'http://zipllocate.us/api/v1' + propZip, true);
    propLocation.responseType = 'text';
    propLocation.send(null);

    propLocation.onload = function () {
      if (propLocation.status === 200) {
        var propLocObj = JSON.parse(propLocation.responseText);
        console.log(propLocObj);
        document.getElementById('zipTextBox').textContent = propZip;

        var latitude = propLocObj.lat;
        var longitude = propLocObj.lng;

        console.log(latitude, longitude);
      }
    }

  </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>

          <asp:Label ID="zipLabel" runat="server" Text="Property Zip Code: "></asp:Label>&nbsp;<asp:TextBox ID="zipTextBox" runat="server" Width="62px"></asp:TextBox>
          &nbsp;<asp:Button ID="submitZip" runat="server" OnClick="Button1_Click" Text="Submit" />
        </div>
    </form>
</body>
</html>

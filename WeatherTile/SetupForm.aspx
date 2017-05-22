<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SetupForm.aspx.cs" Inherits="WeatherTile.SetupForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <title>Setup</title>
</head>
<body>
  <form id="form1" runat="server">
    <div>
      <asp:Label ID="Label1" runat="server" Text="Setup Weather Tile"></asp:Label>
      <br />
      <asp:Label ID="Label2" runat="server" Text="Property Name: "></asp:Label>
      <asp:TextBox ID="propName" runat="server"></asp:TextBox>
      <br />
      <asp:Label ID="Label3" runat="server" Text="Property FTP Box: "></asp:Label>
      <asp:TextBox ID="propFtpBox" runat="server"></asp:TextBox>
      <br />
      <asp:Label ID="Label4" runat="server" Text="Property Zip Code: "></asp:Label>
      <asp:TextBox ID="propZip" runat="server"></asp:TextBox>
      <br />
      <asp:Label ID="Label5" runat="server" Text="PSM sent: "></asp:Label>
      <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
      <asp:Label ID="propArrival" runat="server" Text="days prior to guest arrival"></asp:Label>
      <br />
    </div>
  </form>
</body>
</html>

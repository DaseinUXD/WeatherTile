<%@ Page Title="Setup" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SetupForm.aspx.cs" Inherits="WeatherTile.SetupForm" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
  <asp:ScriptManagerProxy runat="server">
    <Scripts>
      <asp:ScriptReference Name="geolocation.js"
    </Scripts>

  </asp:ScriptManagerProxy>
  <%--<form id="form1" runat="server">--%>
  <div class="container">
    <h1>
      <asp:Label ID="Label1" runat="server" Text="WeatherTile Setup"></asp:Label></h1>

    <h3>Property Information</h3>
    <div class="row">
      <div class="col-lg-6">
        <div class="form-group">
          <asp:Label ID="Label2" runat="server" Text="Hotel, Spa, or Resort Name: "></asp:Label>
          <asp:TextBox CssClass="form-control" ID="propName" runat="server"></asp:TextBox>
        </div>
      </div>
      <div class="col-lg-6">
        <div class="form-group">
          <asp:Label ID="Label3" runat="server" Text="FTP Box: "></asp:Label>
          <asp:TextBox CssClass="form-control" ID="propFtpBox" runat="server"></asp:TextBox>
        </div>
      </div>

    </div>
    <div class="row">
      <div class="col-lg-6">
        <div class="form-group">
          <asp:Label ID="Label6" runat="server" Text="City: "></asp:Label>
          <asp:TextBox CssClass="form-control" ID="propCity" runat="server"></asp:TextBox>
        </div>

      </div>
      <div class="col-lg-6">
        <div class="form-group">
          <asp:Label ID="Label7" runat="server" Text="State: "></asp:Label>
          <asp:TextBox CssClass="form-control" ID="propState" runat="server"></asp:TextBox>
        </div>
      </div>
      <div class="row">
      </div>
      <div class="col-lg-6">
        <div class="form-group">
          <asp:Label ID="Label4" runat="server" Text="Zip Code: "></asp:Label>
          <asp:TextBox CssClass="form-control" ID="propZip" runat="server"></asp:TextBox>
        </div>
      </div>
    </div>
    <div class="row">
      <div class="col-lg-6">
        <div class="form-inline form-group">
          <asp:Label ID="Label5" runat="server" Text="PSM sent: "></asp:Label>
          <asp:TextBox CssClass="form-control" ID="propSendDays" runat="server"></asp:TextBox>
          <asp:Label ID="Label16" runat="server" Text="days prior to guest arrival."></asp:Label>
        </div>
      </div>
      <div class="col-lg-6">
        <asp:Button CssClass="btn btn-primary active" ID="submit" runat="server" Text="Submit" OnClick="submit_Click" />
      </div>
    </div>
  </div>

  <script>
    var propGeoLocation = new XMLHttpRequest();
    var propGeoLocObj;
    var propZip = document.getElementById("MainContent_propZip").value;
    console.log(propZip);
  </script>



  <%--</form>--%>
</asp:Content>


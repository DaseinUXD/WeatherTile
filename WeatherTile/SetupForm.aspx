<%@ Page Title="Setup" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SetupForm.aspx.cs" Inherits="WeatherTile.SetupForm" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
  <%--<form id="form1" runat="server">--%>
    <div class="container">
      <h1><asp:Label ID="Label1" runat="server" Text="WeatherTile Setup"></asp:Label></h1>
      
      <div>
        <fieldset>
        <legend>Property Information</legend>
          <div class="form-group">
      <asp:Label ID="Label2" runat="server" Text="Name: "></asp:Label>
      <asp:TextBox class="form-control" ID="propName" runat="server"></asp:TextBox>
            </div>
<div class="form-group">
      <asp:Label ID="Label3" runat="server" Text="FTP Box: "></asp:Label>
      <asp:TextBox class="form-control" ID="propFtpBox" runat="server"></asp:TextBox>
      </div>
          <div class="form-group">
      <asp:Label ID="Label4" runat="server" Text="Zip Code: "></asp:Label>
      <asp:TextBox class="form-control" ID="propZip" runat="server"></asp:TextBox>
      </div>
          <div class="form-inline form-group">
      <asp:Label ID="Label5" runat="server" Text="PSM sent: "></asp:Label>
      <asp:TextBox  class="form-control" ID="TextBox3" runat="server"></asp:TextBox>
      <asp:Label ID="propArrival" runat="server" Text="days prior to guest arrival."></asp:Label>
            </div>
        </fieldset>
        </div>
      <hr />
     
      <asp:Button class="btn btn-primary" ID="submit" runat="server" Text="Submit" />
    </div>
  <%--</form>--%>
</asp:Content>


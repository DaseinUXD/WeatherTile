<%@ Page Title="Dark Sky Results" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DarkSkyBuildForm.aspx.cs" Inherits="WeatherTile.WeatherPreviewForm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
  <%-- Property Name --%>
  <span class="label label-default">Property name: </span>
  <asp:TextBox CssClass="form-control" ID="propName" runat="server"></asp:TextBox>
  <%-- Property City --%>
  <span class="label label-default">Property city: </span>
  <asp:TextBox CssClass="form-control" ID="propCity" runat="server"></asp:TextBox>
  <%-- Property State --%>
  <span class="label label-default">Property state: </span>
  <asp:TextBox CssClass="form-control" ID="propState" runat="server"></asp:TextBox>
  <%-- API Key --%>
  <span class="label label-default">Dark Sky apiKey: </span>
  <asp:TextBox CssClass="form-control" ID="apiKey" runat="server"></asp:TextBox>
  <%-- Dark Sky URL --%>
  <span class="label label-default">Dark Sky URL: </span>
  <asp:TextBox CssClass="form-control" ID="darkSkyUrl" runat="server"></asp:TextBox>
  <%-- Property Latitude --%>
  <span class="label label-default">Property Latitude: </span>
  <asp:TextBox CssClass="form-control" ID="propLat" runat="server"></asp:TextBox>
  <%-- Property Longitude --%>
  <span class="label label-default">Property Longitude: </span>
  <asp:TextBox CssClass="form-control" ID="propLon" runat="server"></asp:TextBox>
  <%-- Days Prior to Arrival --%>
  <span class="label label-default">Days to send prior to arrival: </span>
  <asp:TextBox CssClass="form-control" ID="propDays" runat="server"></asp:TextBox>
  <br />
  <%-- Submit Button --%>
  <asp:Button CssClass="btn btn-primary active" ID="submitDarkSky" runat="server" Text="Submit" OnClick="Submit_Click"/>
</asp:Content>

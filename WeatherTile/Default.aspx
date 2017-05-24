                                   
<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WeatherTile._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server" EnableViewState="True">

<div class="jumbotron">
  <h1>daWeatherTile</h1>
  <p class="lead">A daWeatherTile is a summary of current and forecasted weather formatted for HTML email.</p>
  <p><a href="SetupForm.aspx" class="btn btn-primary btn-lg">Setup</a></p>
</div>

  <div class="row">
    <div class="col-md-8" dir="ltr">
      <h2>Dark Sky</h2>
      <p>The Dark Sky Company specializes in weather forecasting and visualization.</p>
      <ul>
        <li>Highly accurate source of hyperlocal weather information</li>
        <li>Apps for both iOS (iPhone, iPad, & Apple Watch) and Android (phones, tablets). 
        </li>
        <li>Access to their data through a robust and reasonably priced API.
        </li>
      </ul>
      <p>
        <a class="btn btn-default" href="DarkSkySettingsForm.aspx">Configure API</a>
      </p>
    </div>
    <div class="col-md-4">
      <h2>Get more libraries</h2>
      <p>
        NuGet is a free Visual Studio extension that makes it easy to add, remove, and update libraries and tools in Visual Studio projects.
      </p>
      <p>
        <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301949">Learn more &raquo;</a>
      </p>
    </div>

  </div>

</asp:Content>

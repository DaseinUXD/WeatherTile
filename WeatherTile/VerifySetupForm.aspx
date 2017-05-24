﻿<%@ Page Title="Verification" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="VerifySetupForm.aspx.cs" Inherits="WeatherTile.VerifySetupForm" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
  <div class="container">
    <div>
      <h1>
        <asp:Label ID="Label1" runat="server" Text="WeatherTile Setup Verification"></asp:Label>
      </h1>
    </div>

    <h3>Property Information</h3>
    <div class="row">
      <div class="form-group">
        <asp:Label CssClass="col-lg-2 text-right" ID="Label2" runat="server" Text="Name: "></asp:Label>
        <div class="col-lg-10">
          <asp:Label CssClass="text-info" ID="propName" runat="server" Text=""></asp:Label>

        </div>
      </div>
      <div class="form-group">
        <asp:Label CssClass="col-lg-2 text-right" ID="Label3" runat="server" Text="FTP Box: "></asp:Label>
        <div class="col-lg-10">
          <asp:Label CssClass="text-info" ID="propFTP" runat="server" Text=""></asp:Label>

        </div>
      </div>
      <div class="form-group">
        <asp:Label CssClass="col-lg-2 text-right" ID="Label5" runat="server" Text="City: "></asp:Label>
        <div class="col-lg-10">
          <asp:Label CssClass="text-info" ID="propCity" runat="server" Text=""></asp:Label>

        </div>
      </div>
      <div class="form-group">
        <asp:Label CssClass="col-lg-2 text-right" ID="Label7" runat="server" Text="State: "></asp:Label>
        <div class="col-lg-10">
          <asp:Label CssClass="text-info" ID="propState" runat="server" Text=""></asp:Label>

        </div>
      </div>
      <div class="form-group">
        <asp:Label CssClass="col-lg-2 text-right" ID="Label9" runat="server" Text="Zip Code: "></asp:Label>
        <div class="col-lg-10">
          <asp:Label CssClass="text-info" ID="propZip" runat="server" Text=""></asp:Label>
        </div>
      </div>
      <div class="form-group">


        <asp:Label CssClass="col-lg-2 text-right" ID="Label4" runat="server" Text="Latitude: "></asp:Label>
        <div class="col-lg-10">
          <asp:Label CssClass="text-success" ID="propLat" runat="server" Text=""></asp:Label>
        </div>
      </div>
      <div class="form-group">


        <asp:Label CssClass="col-lg-2 text-right" ID="Label8" runat="server" Text="Longitude: "></asp:Label>
        <div class="col-lg-10">
          <asp:Label CssClass="text-success" ID="propLon" runat="server" Text=""></asp:Label>
        </div>



      </div>



      <div class="form-group">
        <asp:Label CssClass="col-lg-2 text-right" ID="Label11" runat="server" Text="Days before send PSM: "></asp:Label>
        <div class="col-lg-10">
          <asp:Label CssClass="text-info" ID="propSendDays" runat="server" Text=""></asp:Label>

        </div>
      </div>


    </div>

  </div>
  <br />
  <div class="form-group">
    <div class="col-lg-2 text-right">
      <asp:Button CssClass="btn btn-primary active" ID="buildTile" runat="server" Text="Build Tile" />
    </div>
    <div class="col-lg-10">
      <asp:Button CssClass="btn btn-warning" ID="editProp" runat="server" Text="Edit Property" />

    </div>
  </div>





</asp:Content>

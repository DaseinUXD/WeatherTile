<%@ Page Title="Verification" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="VerifySetupForm.aspx.cs" Inherits="WeatherTile.VerifySetupForm" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
  <div class="container">
    <div>
      <h1>
        <asp:Label ID="Label1" runat="server" Text="WeatherTile Setup Verification"></asp:Label></h1>
    </div>
    <fieldset disabled>
      <legend>Property Information</legend>
      <div class="row">
        <div class="col-lg-12">
          <div class="form-inline form-group">
            <asp:Label ID="Label2" runat="server" Text="Name: "></asp:Label>
            <asp:TextBox CssClass="form-control" ID="propName" runat="server" Text="Hotel name text"></asp:TextBox>
          </div>
        </div>

      </div>
    </fieldset>
  </div>



</asp:Content>

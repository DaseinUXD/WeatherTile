<%@ Page Title="Verification" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="VerifySetupForm.aspx.cs" Inherits="WeatherTile.VerifySetupForm" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
  <div class="container">
    <div>
      <h1>
        <asp:Label ID="Label1" runat="server" Text="WeatherTile Setup Verification"></asp:Label>
      </h1>
    </div>

    <h3>Property Information</h3>
    <div>
      <div class="form-group">
        <label class="control-label" id="Label2">Name: </label>
        <asp:Label CssClass="form-control input-lg" ID="propName" runat="server" Text="" readonly="true"></asp:Label>
      </div>
      
      <div class="form-group">
        <label class="control-label" id="Label3">FTP Box: </label>
        <asp:Label CssClass="form-control input-lg" ID="propFTP" runat="server" Text="" readonly="true"></asp:Label>
      </div>
      
      <div class="form-group">
        <label class="control-label" id="Label5">City:</label>

        <asp:Label CssClass="form-control input-lg" ID="propCity" runat="server" Text="" readonly="true"></asp:Label>
      </div>
      
      <div class="form-group">
        <label class="control-label" id="Label7">State: </label>

        <asp:Label CssClass="form-control input-lg" ID="propState" runat="server" Text="" readonly="true"></asp:Label>
      </div>
      
      <div class="form-group">
        <label class="control-label" id="Label9">Zip Code: </label>

        <asp:Label CssClass="form-control input-lg" ID="propZip" runat="server" Text="" readonly="true"></asp:Label>
      </div>
      
      <div class="form-group">
        <label class="control-label" id="Label4" >Latitude: </label>

        <asp:Label CssClass="text-success" ID="propLat" runat="server" Text="" readonly="true"></asp:Label>
      </div>

      <div class="form-group">
        <label class="control-label" id="Label8">Longitude: </label>

        <asp:Label CssClass="text-success" ID="propLon" runat="server" Text="" readonly="true"></asp:Label>
      </div>
      
      <div class="form-group">
        <label class="control-label" id="Label11">Days before send PSM</label>

        <asp:Label CssClass="form-control input-lg" ID="propSendDays" runat="server" Text="" readonly="true"></asp:Label>
      </div>
    </div>
    <div>
      <asp:Button CssClass="btn btn-primary active" ID="BuildTile" runat="server" Text="Build" OnClick="BuildTile_Click" />
    <asp:Button CssClass="btn btn-warning" ID="EditProp" runat="server" Text="Edit" OnClick="EditProp_Click" />
    </div>


  </div>
</asp:Content>

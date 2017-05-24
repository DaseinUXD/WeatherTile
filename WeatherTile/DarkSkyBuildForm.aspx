<%@ Page Title="Dark Sky Results" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DarkSkyBuildForm.aspx.cs" Inherits="WeatherTile.WeatherPreviewForm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
  <span class="label label-default">Dark Sky apiKey: </span>
  <asp:TextBox CssClass="form-control" ID="apiKey" runat="server"></asp:TextBox>
</asp:Content>

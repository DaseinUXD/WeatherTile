<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DarkSkySettingsForm.aspx.cs" Inherits="WeatherTile.DarkSkySettingsForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

  <h1>Dark Sky Settings</h1>


  <label for="darkSkyKey" class="control-label">Private <a href="https://darksky.net/dev/account" target="_blank">API Key</a></label>
  <div class="col-lg-3 input-group">

    <asp:TextBox CssClass="form-control" ID="darkSkyKey" Text="" TextMode="Password" runat="server" CausesValidation="True"></asp:TextBox>

    <span class="input-group-btn" id="12">
      <button class="btn btn-default" id="showPswdBtn" type="button">
        <span id="eyeIcon" aria-hidden="true" class="glyphicon glyphicon-eye-open"></span>
      </button>
    </span>
  </div>
  <div class="input-group">
    <label class="control-label">Measurment Units:</label>
    <asp:DropDownList CssClass="form-control" ID="ddUnits" runat="server" DataTextField="si"></asp:DropDownList>
  </div>

  <div class="input-group">
    <label class="control-label">Language</label>
    <asp:DropDownList CssClass="form-control" ID="ddLanguage" runat="server"></asp:DropDownList>
  </div>
  <div class="well well-lg">
    <div class="input-group">

      <label class="col-lg-12 control-label">Data to Exclude</label>


      <asp:CheckBoxList CssClass="checkbox-inline" ID="ckboxExclude" runat="server"></asp:CheckBoxList>
    </div>
  </div>



  <script type="text/javascript">
    $(function () {
      $("#showPswdBtn").mousedown(function () {
        $("#MainContent_darkSkyKey").attr('type', 'text');
        $("#eyeIcon").attr('class', 'glyphicon glyphicon-eye-close');
      });
      $("#showPswdBtn").mouseup(function () {
        $("#MainContent_darkSkyKey").attr('type', 'password');
        $("#eyeIcon").attr('class', 'glyphicon glyphicon-eye-open');
      });
    });
  </script>

</asp:Content>

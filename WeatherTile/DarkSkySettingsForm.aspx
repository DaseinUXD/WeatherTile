<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DarkSkySettingsForm2.aspx.cs" Inherits="WeatherTile.DarkSkySettingsForm" %>

<asp:Content ID="settingsContent" ContentPlaceHolderID="MainContent" runat="server">

  <div class="container-fluid">
    <div class="jumbotron">
      <h1>Dark Sky API</h1>
      <h2>Default Settings</h2>
    </div>
    <div class="form-horizontal">
      <div class="form-group">
        <label for="baseUrl" class="col-lg-3 control-label">Dark Sky Base URL: </label>
        <asp:TextBox CssClass="col-lg-9 form-control" ID="baseUrl" runat="server" Text="https://api.darksky.net/forecast/"></asp:TextBox>
      </div>
      <div class="form-group">
        <label for="privateApiKey" class="col-lg-3 control-label">Dark Sky Private API Key: </label>
        <div class="col-lg-3 col-md-3 col-sm-4 col-xs-5 input-group">
          <asp:TextBox CssClass="form-control" ID="privateApiKey" runat="server" Text="0ab072376462dd056d5a7f08c9c344a6"></asp:TextBox>
          <span class="input-group-btn" id="12">
            <button class="btn btn-default" id="showPswdBtn" type="button">
              <span id="eyeIcon" aria-hidden="true" class="glyphicon glyphicon-eye-open"></span>
            </button>
          </span>
        </div>
      </div>
      <div class="form-group">
        <label for="darkSkyAccountBtn" class="col-lg-3 control-label">Dark Sky API: </label>
        <div class="btn-group">
          <button id="darkSkyAccountBtn" type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            Go To <span class="caret"></span>
          </button>
          <ul class="dropdown-menu">
            <li><a href="https://darksky.net/dev/account/">Private Key</a></li>
            <li><a href="https://darksky.net/dev/account/edit/">Account Settings</a></li>
            <li role="separator" class="divider"></li>
            <li><a href="https://darksky.net/dev/docs/">API Overview</a></li>
            <li><a href="https://darksky.net/dev/docs/forecast/">Forecast Request</a></li>
            <li><a href="https://darksky.net/dev/docs/response/">Response Format</a></li>
            <li role="separator" class="divider"></li>
            <li><a href="https://darksky.net/dev/logout/">Log Out</a></li>
          </ul>
        </div>

      </div>
    </div>

    <div class="row">
      <div class="col-lg-4">
        <%-- Measurement Units Panel --%>
        <div class="panel panel-primary">
          <div class="panel-heading">
            <h3 class="panel-title">Measurment Unit</h3>

          </div>
          <div class="panel-body">

            <div class="form-group">
              <asp:RadioButtonList CssClass="table" ID="selectedUnits" runat="server">
                <asp:ListItem Selected="True" Value="0" Text="auto">Automatic</asp:ListItem>
                <asp:ListItem Value="1" Text="si">International Settings</asp:ListItem>
                <asp:ListItem Value="2" Text="ca">Canada</asp:ListItem>
                <asp:ListItem Value="3" Text="uk">United Kindom</asp:ListItem>
                <asp:ListItem Value="4" Text="us">United States</asp:ListItem>
              </asp:RadioButtonList>
            </div>
          </div>
          <div class="panel-footer"></div>
        </div>
      </div>
      <div class="col-lg-4">
        <%-- Language Selection --%>
        <div class="panel panel-primary">
          <div class="panel-heading">
            <h3 class="panel-title">Language</h3>
          </div>
          <div class="panel-body">
            <div class="form-group">
              <asp:RadioButtonList CssClass="table" ID="selectedLang" runat="server">
                <asp:ListItem Value="0" Text="ar">Arabic</asp:ListItem>
                <asp:ListItem Value="1" Text="az">Azerbaijani</asp:ListItem>
                <asp:ListItem Value="2" Text="be">Belarusian</asp:ListItem>
                <asp:ListItem Value="3" Text="bs">Bosnian</asp:ListItem>
                <asp:ListItem Value="4" Text="cs">Czech</asp:ListItem>
                <asp:ListItem Value="5" Text="de">German</asp:ListItem>
                <asp:ListItem Value="6" Text="el">Greek</asp:ListItem>
                <asp:ListItem Value="7" Text="en" Selected="True">English</asp:ListItem>
                <asp:ListItem Value="8" Text="es">Spanish</asp:ListItem>
                <asp:ListItem Value="9" Text="fr">French</asp:ListItem>
                <asp:ListItem Value="10" Text="hr">Croatian</asp:ListItem>
                <asp:ListItem Value="11" Text="hu">Hungarian</asp:ListItem>
                <asp:ListItem Value="12" Text="id">Indonesian</asp:ListItem>
                <asp:ListItem Value="13" Text="it">Italian</asp:ListItem>
                <asp:ListItem Value="14" Text="is">Icelandic</asp:ListItem>
                <asp:ListItem Value="15" Text="kw">Cornish</asp:ListItem>
                <asp:ListItem Value="16" Text="nb">Norwegian Bokmål</asp:ListItem>
                <asp:ListItem Value="17" Text="no">Dutch</asp:ListItem>
                <asp:ListItem Value="18" Text="pl">Polish</asp:ListItem>
                <asp:ListItem Value="19" Text="pt">Portuguese</asp:ListItem>
                <asp:ListItem Value="20" Text="ru">Russian</asp:ListItem>
                <asp:ListItem Value="21" Text="sk">Slovak</asp:ListItem>
                <asp:ListItem Value="22" Text="sr">Serbian</asp:ListItem>
                <asp:ListItem Value="23" Text="sv">Sweedish</asp:ListItem>
                <asp:ListItem Value="24" Text="tet">Tetum</asp:ListItem>
                <asp:ListItem Value="25" Text="tr">Turkish</asp:ListItem>
                <asp:ListItem Value="26" Text="uk">Ukrainian</asp:ListItem>
                <%--[Description("x-pig-latin")]--%>
                <asp:ListItem Value="27" Text="zpiglatin">Igpay Atinlay</asp:ListItem>
                <asp:ListItem Value="28" Text="zh">Chinese-Simplified</asp:ListItem>
                <%--[Description("zh-tw")]--%>
                <asp:ListItem Value="29" Text="zhtw">Chinese-Traditional</asp:ListItem>
              </asp:RadioButtonList>
            </div>
          </div>


          <div class="panel-footer"></div>
        </div>
      </div>
      <div class="col-lg-4">
        <%-- Response Data Excluded --%>
        <div class="panel panel-primary">
          <div class="panel-heading">
            <h3 class="panel-title">Data to Exclude</h3>

          </div>
          <div class="panel-body">
            <div class="form-group">
              <asp:CheckBoxList CssClass="table" ID="selectedExclude" runat="server">
                <asp:ListItem Value="0">currently</asp:ListItem>
                <asp:ListItem Selected="True" Value="1">minutely</asp:ListItem>
                <asp:ListItem Selected="True" Value="2">hourly</asp:ListItem>
                <asp:ListItem Value="3">daily</asp:ListItem>
                <asp:ListItem Selected="True" Value="4">alerts</asp:ListItem>
                <asp:ListItem Selected="True" Value="5">flags</asp:ListItem>
              </asp:CheckBoxList>
            </div>
          </div>
          <div class="panel-footer"></div>
        </div>
      </div>
    </div>
    <asp:Button ID="settingsSubmit" CssClass="btn btn-primary" runat="server" Text="Submit" OnClick="Submit_Click" />
  </div>


  <script type="text/javascript">
    $(document).ready(function () {
      $("#MainContent_privateApiKey").attr('type', 'password');
      $("#MainContent_privateApiKey").css('font-size', '20px');
      $("td").addClass('form-group');
      $("td > input").addClass('col-lg-3');
      $("td > label").addClass('col-lg-9 control-label');

      $(function () {
        $("#showPswdBtn").mousedown(function () {
          $("#MainContent_privateApiKey").attr('type', 'text');
          $("#MainContent_privateApiKey").css('font-size', '13px');
          $("#eyeIcon").attr('class', 'glyphicon glyphicon-eye-close');
        });
        $("#showPswdBtn").mouseup(function () {
          $("#MainContent_privateApiKey").attr('type', 'password');
          $("#MainContent_privateApiKey").css('font-size', '20px');
          $("#eyeIcon").attr('class', 'glyphicon glyphicon-eye-open');
        });
      });
      //$(function () {
      //  var checkboxes = $('input:checkbox');
      //  console.log(checkboxes[1].value);
      //  $("input:checkbox").parent().attr('class', 'has-success');

    });
  </script>


</asp:Content>

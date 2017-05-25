<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DarkSkySettingsForm2.aspx.cs" Inherits="WeatherTile.DarkSkySettingsForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

  <div class="container">
    <div class="jumbotron">
      <h1>Dark Sky API Settings</h1>
    </div>
    <div class="form-group">
      <label for="darkSkyKey" class="control-label">Private <a href="https://darksky.net/dev/account" target="_blank">API Key</a></label>
      <div class="col-lg-3 input-group">
        <asp:TextBox CssClass="form-control" ID="darkSkyKey" ViewStateMode="Enabled" ReadOnly="true" Text="" TextMode="Password" runat="server"></asp:TextBox>
        <span class="input-group-btn" id="12">
          <button class="btn btn-default" id="showPswdBtn" type="button">
            <span id="eyeIcon" aria-hidden="true" class="glyphicon glyphicon-eye-open"></span>
          </button>
        </span>
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
              <asp:RadioButtonList CssClass="" ID="ckboxUnits" runat="server">

                <asp:ListItem CssClass="input-group" Selected="True">auto</asp:ListItem>
                <asp:ListItem>si</asp:ListItem>
                <asp:ListItem>ca</asp:ListItem>
                <asp:ListItem>uk</asp:ListItem>
                <asp:ListItem>us</asp:ListItem>
              </asp:RadioButtonList>
            </div>
          </div>
          <div class="panel-footer">Default Values</div>
        </div>
        </div>
      <div class="col-lg-4">
        <%-- Language Selection --%>
        <div class="panel panel-primary">
          <div class="panel-heading">
            <h3 class="panel-title">Language</h3>
          </div>
          <div class="row">
            <asp:RadioButtonList ID="ckboxLanguage" runat="server">
              <asp:ListItem Text="ar"></asp:ListItem>
              <asp:ListItem>az</asp:ListItem>
              <asp:ListItem>be</asp:ListItem>
              <asp:ListItem>bs</asp:ListItem>
              <asp:ListItem>cs</asp:ListItem>
              <asp:ListItem>de</asp:ListItem>
              <asp:ListItem>el</asp:ListItem>
              <asp:ListItem Selected="True">en</asp:ListItem>
              <asp:ListItem>es</asp:ListItem>
              <asp:ListItem>fr</asp:ListItem>
              <asp:ListItem>hr</asp:ListItem>
              <asp:ListItem>hu</asp:ListItem>
              <asp:ListItem>id</asp:ListItem>
              <asp:ListItem>it</asp:ListItem>
              <asp:ListItem>@is</asp:ListItem>
              <asp:ListItem>kw</asp:ListItem>
              <asp:ListItem>nb</asp:ListItem>
              <asp:ListItem>nl</asp:ListItem>
              <asp:ListItem>pl</asp:ListItem>
              <asp:ListItem>pt</asp:ListItem>
              <asp:ListItem>ru</asp:ListItem>
              <asp:ListItem>sk</asp:ListItem>
              <asp:ListItem>sr</asp:ListItem>
              <asp:ListItem>sv</asp:ListItem>
              <asp:ListItem>tet</asp:ListItem>
              <asp:ListItem>tr</asp:ListItem>
              <asp:ListItem>uk</asp:ListItem>
              <%--[Description("x-pig-latin")]--%>
              <asp:ListItem>xpiglatin</asp:ListItem>
              <asp:ListItem>zh</asp:ListItem>
              <%--[Description("zh-tw")]--%>
              <asp:ListItem>zhtw</asp:ListItem>
            </asp:RadioButtonList>
          </div>
          <div class="panel-footer">Default Values</div>
        </div>
      </div>
      <div class="col-lg-4">
        <%-- Response Data Excluded --%>
        <div class="panel panel-primary">
          <div class="panel-heading">
            <h3 class="panel-title">Data to Exclude</h3>

          </div>
          <div class="panel-body">
            <asp:CheckBoxList CssClass="col-lg-6" ID="ckboxExclude" runat="server">
              <asp:ListItem>currently</asp:ListItem>
              <asp:ListItem Selected="True">minutely</asp:ListItem>
              <asp:ListItem Selected="True">hourly</asp:ListItem>
              <asp:ListItem>daily</asp:ListItem>
              <asp:ListItem Selected="True">alerts</asp:ListItem>
              <asp:ListItem Selected="True">flags</asp:ListItem>
            </asp:CheckBoxList>
          </div>
          <div class="panel-footer">Default Values</div>
        </div>
      </div>
    </div>
  </div>

  <script type="text/javascript">
    $(document).ready(function () {
      var api = "0ab072376462dd056d5a7f08c9c344a6";
      console.log(api);
      api = $("#DarkSkyKey").text();
      $("#DarkSkyKey").show();

    });
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
    $(function () {
      var checkboxes = $('input:checkbox');
      console.log(checkboxes[1].value);
      $("input:checkbox").parent().attr('class', 'has-success');

    });
  </script>
 </asp:Content>

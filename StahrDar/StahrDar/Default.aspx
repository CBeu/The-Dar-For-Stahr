<%@ Page Title="Home" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="StahrDar._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <!-- Un Comment Here for Stahr's In Class Examples of Retrieving from Database
    <h1>Code Behind Example</h1>
    <asp:TextBox ID="txtVendors" CssClass="form-control" runat="server"></asp:TextBox>
    <asp:Button ID="btnSearch" CssClass="btn btn-primary" runat="server" Text="Button" OnClick="btnSearch_Click" />
    <asp:Label ID="lblVendors" runat="server" Text=""></asp:Label>

    <h1>AJAX Example using a webservice</h1>
    <input type="text", class="form-control" id="txtState" />
    <div id="lstVendors"></div>

    -->

    <script> 
        $("#txtState").on("input", function (e) {
            get("getVendorsByState", "{state: '" + $("#txtState").val() + "'}", function (response) {
                $("#lstVendors").html("");
                for (var i = 0; i < response.length; i++)
                    $("#lstVendors").append("<div class='alert alert-success'>" + response[i].VendorName + "</div>");
            }, function (response) {
                console.log(resonse);
            });
        });
    </script>

</asp:Content>

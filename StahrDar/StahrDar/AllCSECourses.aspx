<%@ Page Title="What to Take" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AllCSECourses.aspx.cs" Inherits="StahrDar.WhattoTake" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    
    <br />
    <br />
    <h2>View Classes By Category</h2>
    <br />
     <select id='filterType' class="form-control" name='filterType' style='font-size: 14px; width: 250px; display: inline;'> 
         <option value='f1' selected='selected'>Foundation 1</option>
         <option value='f2a'>Foundation 2A</option>
         <option value='f2b'>Foundation 2B</option>
         <option value='f2c'>Foundation 2C</option>
         <option value='f3b'>Foundation 3B</option>
         <option value='f4a'>Foundation 4A</option>
         <option value='f4b'>Foundation 4B</option>
         <option value='f5'>Foundation 5</option>
         <option value='cs'>Computer Science Major Requirements</option>
         <option value='se'>Software Engineering Major Requirements</option>
    </select>
    <span class='btn btn-primary btn-sm' onclick='filterAllCourses();'>Get Courses</span>
    <div id="lstCourses"></div>

    <script>


            function filterAllCourses() {

            var method = "";
            var data = "";

            switch ($("#filterType").val()) {
                case "f1":
                    method = "FilterFoundations";
                    data = "{foundationID: 1}";
                    break;
                case "f2a":
                    method = "FilterFoundations";
                    data = "{foundationID: 2}";
                    break;
                case "f2b":
                    method = "FilterFoundations";
                    data = "{foundationID: 3}";
                    break;
                case "f2c":
                    method = "FilterFoundations";
                    data = "{foundationID: 4}";
                    break;
                case "f3b":
                    method = "FilterFoundations";
                    data = "{foundationID: 5}";
                    break;
                case "f4a":
                    method = "FilterFoundations";
                    data = "{foundationID: 6}";
                    break;
                case "f4b":
                    method = "FilterFoundations";
                    data = "{foundationID: 7}";
                    break;
                case "f5":
                    method = "FilterFoundations";
                    data = "{foundationID: 8}";
                    break;
                case "cs":
                    method = "FilterCS";
                    data = "{}";
                    break;
                case "se":
                    method = "FilterSE";
                    data = "{}";
                    break;
                default:
                    $("#lstCourses").html("");
                    break;
            }

            service(method, data,
                function (response) {
                     d = "<table class='table table-striped table-bordered'><th>Class ID</th><th>Class Name</th>"
                for (var i = 0; i < response.length; i++) {
                    d += "<tr>" +
                        "<td id='classID'>" + response[i].classID + "</td>" +
                        "<td id='className'>" + response[i].className + "</td>" +
                        "</tr>"
                }
                d += "</table>"
                $("#lstCourses").html(d);
            }, function (response) {
                console.log(resonse);
            });
        }




    </script>
</asp:Content>

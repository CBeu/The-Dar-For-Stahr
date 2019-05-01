<%@ Page Title="What to Take" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WhattoTake.aspx.cs" Inherits="StahrDar.WhattoTake" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Miami Plan Foundations</h2>
    <span class="btn btn-primary" onclick="getFoundation1Courses()">Get Foundation 1 Classes</span>
    <div>
        <div id="lstFoundation1" style="margin-top:16px;"></div>
    </div>

    <h2>Computer Science Major Courses</h2>

    <h2>Software Engineering Major Courses</h2>

    <script>
        function getFoundation1Courses() {
            var result = "";
            service("PotentialF1Classes", "{}",
                function (response) {
                    result = "<table class='table table-striped table-bordered'><th>Class ID</th><th>Class Name</th>"
                    for (var i = 0; i < response.length; i++) {
                        result += "<tr>" + 
                            "<td>" + response[i].classId + "</td>" +
                            "<td>" + response[i].className + "</td>" + 
                            "</tr>"
                    }
                    result += "</table>"
                    $("#lstFoundation1").html(result);
                }, function (response) {
                    alert("There was a fatal error. Prepare for air raid.");
                });
        }

        function getFoundation2ACourses() {

        }

        function getFoundation2BCourses() {

        }

        function getFoundation2CCourses() {

        }

        function getFoundation3BCourses() {

        }

        function getFoundation4ACourses() {

        }

        function getFoundation4BCourses() {

        }

        function getFoundation5Courses() {

        }

        function getCSMajorClasses() {

        }

        function getSEMajorClasses() {

        }
    </script>
</asp:Content>

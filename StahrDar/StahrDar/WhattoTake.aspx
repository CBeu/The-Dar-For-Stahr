<%@ Page Title="What to Take" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WhattoTake.aspx.cs" Inherits="StahrDar.WhattoTake" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Miami Plan Foundations</h2>
    <h4>Foundation 1</h4>
    <span class="btn btn-primary" onclick="getFoundation1Courses()">Get Foundation 1 Classes</span>
    <div>
        <div id="lstFoundation1" style="margin-top:16px;"></div>
    </div>

    <h4>Foundation 2A</h4>
    <span class="btn btn-primary" onclick="getFoundation2ACourses()">Get Foundation 2A Classes</span>
    <div>
        <div id="lstFoundation2A" style="margin-top:16px;"></div>
    </div>

    <h4>Foundation 2B</h4>
    <span class="btn btn-primary" onclick="getFoundation2BCourses()">Get Foundation 2B Classes</span>
    <div>
        <div id="lstFoundation2B" style="margin-top:16px;"></div>
    </div>

    <h4>Foundation 2C</h4>
    <span class="btn btn-primary" onclick="getFoundation2CCourses()">Get Foundation 2C Classes</span>
    <div>
        <div id="lstFoundation2C" style="margin-top:16px;"></div>
    </div>

    <h4>Foundation 3B</h4>
    <span class="btn btn-primary" onclick="getFoundation3BCourses()">Get Foundation 3B Classes</span>
    <div>
        <div id="lstFoundation3B" style="margin-top:16px;"></div>
    </div>

    <h4>Foundation 4A</h4>
    <span class="btn btn-primary" onclick="getFoundation4ACourses()">Get Foundation 4A Classes</span>
    <div>
        <div id="lstFoundation4A" style="margin-top:16px;"></div>
    </div>

    <h4>Foundation 4B</h4>
    <span class="btn btn-primary" onclick="getFoundation4BCourses()">Get Foundation 4B Classes</span>
    <div>
        <div id="lstFoundation4B" style="margin-top:16px;"></div>
    </div>

    <h4>Foundation 5</h4>
    <span class="btn btn-primary" onclick="getFoundation5Courses()">Get Foundation 5 Classes</span>
    <div>
        <div id="lstFoundation5" style="margin-top:16px;"></div>
    </div>


    <h2>Computer Science Major Courses</h2>
    <span class="btn btn-primary" onclick="getCSMajorClasses()">Get Computer Science Major Classes</span>
    <div>
        <div id="lstCSMajorCourses" style="margin-top:16px;"></div>
    </div>

    <h2>Software Engineering Major Courses</h2>
    <span class="btn btn-primary" onclick="getSEMajorClasses()">Get Software Engineering Major Classes</span>
    <div>
        <div id="lstSEMajorCourses" style="margin-top:16px;"></div>
    </div>

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
                    alert("Error");
                    console.log(response);
                });
        }

        function getFoundation2ACourses() {
            var result = "";
            service("PotentialF2AClasses", "{}",
                function (response) {
                    result = "<table class='table table-striped table-bordered'><th>Class ID</th><th>Class Name</th>"
                    for (var i = 0; i < response.length; i++) {
                        result += "<tr>" + 
                            "<td>" + response[i].classId + "</td>" +
                            "<td>" + response[i].className + "</td>" + 
                            "</tr>"
                    }
                    result += "</table>"
                    $("#lstFoundation2A").html(result);
                }, function (response) {
                    alert("Error");
                    console.log(response);
                });
        }

        function getFoundation2BCourses() {
            var result = "";
            service("PotentialF2BClasses", "{}",
                function (response) {
                    result = "<table class='table table-striped table-bordered'><th>Class ID</th><th>Class Name</th>"
                    for (var i = 0; i < response.length; i++) {
                        result += "<tr>" + 
                            "<td>" + response[i].classId + "</td>" +
                            "<td>" + response[i].className + "</td>" + 
                            "</tr>"
                    }
                    result += "</table>"
                    $("#lstFoundation2B").html(result);
                }, function (response) {
                    alert("Error");
                    console.log(response);
                });
        }

        function getFoundation2CCourses() {
            var result = "";
            service("PotentialF2CClasses", "{}",
                function (response) {
                    result = "<table class='table table-striped table-bordered'><th>Class ID</th><th>Class Name</th>"
                    for (var i = 0; i < response.length; i++) {
                        result += "<tr>" + 
                            "<td>" + response[i].classId + "</td>" +
                            "<td>" + response[i].className + "</td>" + 
                            "</tr>"
                    }
                    result += "</table>"
                    $("#lstFoundation2C").html(result);
                }, function (response) {
                    alert("Error");
                    console.log(response);
                });
        }

        function getFoundation3BCourses() {
            var result = "";
            service("PotentialF3BClasses", "{}",
                function (response) {
                    result = "<table class='table table-striped table-bordered'><th>Class ID</th><th>Class Name</th>"
                    for (var i = 0; i < response.length; i++) {
                        result += "<tr>" + 
                            "<td>" + response[i].classId + "</td>" +
                            "<td>" + response[i].className + "</td>" + 
                            "</tr>"
                    }
                    result += "</table>"
                    $("#lstFoundation3B").html(result);
                }, function (response) {
                    alert("Error");
                    console.log(response);
                });
        }

        function getFoundation4ACourses() {
            var result = "";
            service("PotentialF4AClasses", "{}",
                function (response) {
                    result = "<table class='table table-striped table-bordered'><th>Class ID</th><th>Class Name</th>"
                    for (var i = 0; i < response.length; i++) {
                        result += "<tr>" + 
                            "<td>" + response[i].classId + "</td>" +
                            "<td>" + response[i].className + "</td>" + 
                            "</tr>"
                    }
                    result += "</table>"
                    $("#lstFoundation4A").html(result);
                }, function (response) {
                    alert("Error");
                    console.log(response);
                });
        }

        function getFoundation4BCourses() {
            var result = "";
            service("PotentialF4BClasses", "{}",
                function (response) {
                    result = "<table class='table table-striped table-bordered'><th>Class ID</th><th>Class Name</th>"
                    for (var i = 0; i < response.length; i++) {
                        result += "<tr>" + 
                            "<td>" + response[i].classId + "</td>" +
                            "<td>" + response[i].className + "</td>" + 
                            "</tr>"
                    }
                    result += "</table>"
                    $("#lstFoundation4B").html(result);
                }, function (response) {
                    alert("Error");
                    console.log(response);
                });
        }

        function getFoundation5Courses() {
            var result = "";
            service("PotentialF5Classes", "{}",
                function (response) {
                    result = "<table class='table table-striped table-bordered'><th>Class ID</th><th>Class Name</th>"
                    for (var i = 0; i < response.length; i++) {
                        result += "<tr>" + 
                            "<td>" + response[i].classId + "</td>" +
                            "<td>" + response[i].className + "</td>" + 
                            "</tr>"
                    }
                    result += "</table>"
                    $("#lstFoundation5").html(result);
                }, function (response) {
                    alert("Error");
                    console.log(response);
                });
        }

        function getCSMajorClasses() {
            var result = "";
            service("PotentialCSClasses", "{}",
                function (response) {
                    result = "<table class='table table-striped table-bordered'><th>Class ID</th><th>Class Name</th>"
                    for (var i = 0; i < response.length; i++) {
                        result += "<tr>" + 
                            "<td>" + response[i].classID + "</td>" +
                            "<td>" + response[i].className + "</td>" + 
                            "</tr>"
                    }
                    result += "</table>"
                    $("#lstCSMajorCourses").html(result);
                }, function (response) {
                    alert("Error");
                    console.log(response);
                });
        }

        function getSEMajorClasses() {
            var result = "";
            service("PotentialSEClasses", "{}",
                function (response) {
                    result = "<table class='table table-striped table-bordered'><th>Class ID</th><th>Class Name</th>"
                    for (var i = 0; i < response.length; i++) {
                        result += "<tr>" + 
                            "<td>" + response[i].classId + "</td>" +
                            "<td>" + response[i].className + "</td>" + 
                            "</tr>"
                    }
                    result += "</table>"
                    $("#lstSEMajorCourses").html(result);
                }, function (response) {
                    alert("Error");
                    console.log(response);
                });
        }
    </script>
</asp:Content>

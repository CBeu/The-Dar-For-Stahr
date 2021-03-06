﻿<%@ Page Title="UpdateClasses" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UpdateClasses.aspx.cs" Inherits="StahrDar.UpdateClasses" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <br />
    <h2>Add or Delete Classes You Have Taken</h2>

    <h3>Your Classes</h3>
    <span class="btn btn-primary" onclick="getUserCourses()">Get My Classes</span>
    <div>
        <div id="lstClasses" style="margin-top:16px;"></div>
    </div>

    
    <h3>Add Class</h3>
    <h4>Course (ex. CSE385): </h4><input id="txtCourse" type="text" class="form-control" />
    <h4>Course Name (ex. Database Systems): </h4><input id="txtCourseName" type="text" class="form-control" />
    <h4>Status (ex. IP or C)</h4><input id="txtStatus" type="text" class="form-control" />
    <span class="btn btn-primary" onclick="addNewCourse();">Add Course</span>
    <div id="addSuccess"></div>

    <script>

        // ajax for adding course
        $("txtClassNum").on("input", function (e) {
            console.log("A change has occurred");
            service("filterCourses", "{classID: '" + $("txtClassNum").val() + "'}", function (response) {
                console.log("success");
                $("#lstClassResults").html("");
                for (var i = 0; i < response.length; i++) {
                    $("#lstClassResults").append("<div class='alert alert-success'>" + response[i].classID + "</div>");
                }
            }, function (response) {
                console.log("failure");
            });
        });

        var count = 0;

        function getUserCourses() {
            //alert('getUserCourses ' + ++count);
            var d = "";
            $("#addSuccess").html("");
            service("getAllCoursesTakenByUser", "{}", function (response) {
                d = "<table class='table table-striped table-bordered'><th>Class ID</th><th>Class Name</th><th>Status</th><th>Remove</th>"
                for (var i = 0; i < response.length; i++) {
                    d += "<tr>" +
                        "<td id='classID'>" + response[i].classID + "</td>" +
                        "<td id='className'>" + response[i].className + "</td>" +
                        "<td>" + response[i].classStatus + "</td>" +
                        "<td><span class='glyphicon glyphicon-trash' id='delButton' onclick='deleteUserCourse(" + response[i].userCourseId + ");'></span></td>" + 
                        "</tr>"
                }
                d += "</table>"
                $("#lstClasses").html(d);
            }, function (response) {
                console.log(resonse);
            });
        }

        function addNewCourse() {
            service("AddNewCourse", "{classID: '" + $("#txtCourse").val() + "', className: '" + $("#txtCourseName").val() + "', classStatus: '" + $("#txtStatus").val() + "' }",
            function (response) {
                console.log(response);
                $("#addSuccess").html("Course Added Successfully.");
                    getUserCourses();
                }, function (response) {
                    alert("Error adding this class to your course lists.");
                    console.log(response);
            });
        }

        function deleteUserCourse(userCourseId) {
            service("DeleteCourseFromUsersList", "{userCourseId: " + userCourseId + " }",

                function (response) {
                    console.log(response);
                    getUserCourses();
                }, function (response) {
                    alert("Error deleting course.");
                    console.log(response);
            });
        }


    </script>
</asp:Content>

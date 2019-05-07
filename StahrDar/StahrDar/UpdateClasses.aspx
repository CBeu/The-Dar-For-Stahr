<%@ Page Title="UpdateClasses" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UpdateClasses.aspx.cs" Inherits="StahrDar.UpdateClasses" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Add or Delete Classes You Have Taken</h2>

    <h3>Your Classes</h3>
    <h4>Miami ID: </h4><input id="txtGetClassesMiamiID" type="text" class="form-control" />
    <span class="btn btn-primary" onclick="getUserCourses()">Get My Classes</span>
    <div>
        <div id="lstClasses" style="margin-top:16px;"></div>
    </div>

    
    <h3>Add Class</h3>
    <h4>Miami ID: </h4><input id="txtMiamiID" type="text" class="form-control" />
    <h4>Course (ex. CSE385): </h4><input id="txtCourse" type="text" class="form-control" />
    <h4>Course Name (ex. Database Systems): </h4><input id="txtCourseName" type="text" class="form-control" />
    <h4>Status (ex. IP or C)</h4><input id="txtStatus" type="text" class="form-control" />
    <span class="btn btn-primary" onclick="addNewCourse();">Add Course</span>
    <div id="addSuccess"></div>

    <script>

        function getUserCourses(miamiID) {
            var d = "";
            service("getAllCoursesTakenByUser", "{miamiId: '" + $("#txtGetClassesMiamiID").val() + "'}", function (response) {
                d = "<table class='table table-striped table-bordered'><th>Class ID</th><th>Class Name</th><th>Status</th><th>Remove</th>"
                for (var i = 0; i < response.length; i++) {
                    d += "<tr>" +
                        "<td id='classID'>" + response[i].classID + "</td>" +
                        "<td id='className'>" + response[i].className + "</td>" +
                        "<td>" + response[i].classStatus + "</td>" +
                        "<td><span class='glyphicon glyphicon-trash' onclick='deleteUserCourse();' id='delButton'></span></td>" + 
                        "</tr>"
                }
                d += "</table>"
                $("#lstClasses").html(d);
            }, function (response) {
                console.log(resonse);
            });
        }

        function addNewCourse() {
            service("AddNewCourse", "{miamiId: '" + $("#txtMiamiID").val() + "', classID: '" + $("#txtCourse").val() + "', className: '" + $("#txtCourseName").val() + "', classStatus: '" + $("#txtStatus").val() + "' }",
            function (response) {
                console.log(response);
                $("#addSuccess").html("Course Added Successfully");
                //alert($("#txtMiamiID").val())
                getUserCourses($("#txtMiamiID").val());
                }, function (response) {
                alert("FATAL ERROR :(");
                console.log(response);
            });
        }

        function deleteUserCourse() {
            service("DeleteCourseFromUsersList", "{miamiId: '" + $("#txtGetClassesMiamiID").val() + "', classID: '" + $("#classID").text() + "', className: '" + $("#className").text() + "' }",

                function (response) {
                console.log(response);
                getUserCourses($("#txtGetClassesMiamiID").val());
                }, function (response) {
                alert("FATAL ERROR :(");
                console.log(response);
            });
        }


    </script>
</asp:Content>
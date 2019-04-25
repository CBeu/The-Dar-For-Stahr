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
                d = "<table class='table table-striped table-bordered'>"
                //$("#lstClasses").html("");
                for (var i = 0; i < response.length; i++) {
                    //$("#lstClasses").append("<div class='alert alert-success'>" + response[i].classID + ": " + response[i].className + "Status: " + response[i].classStatus + "</div>");
                    d += "<tr>" +
                        "<td>" + response[i].classID + "</td>" +
                        "<td>" + response[i].className + "</td>" +
                        "</tr>"
                }
                $("#lstClasses").html(d);
            }, function (response) {
                console.log(resonse);
            });
        }

        //function getUserCourses(miamiID) {
        //    var d = "<table class='table table-striped table-bordered' style='max-width:700px;";
        //    service("getAllCoursesTakenByUser", "{miamiId: '" + $("#txtGetClassesMiamiID").val() + "'}",
        //        function (response) {
        //        $.each(response, function (index, value) {

        //            d += "<tr>" +
        //                "<td>" + value.className + "</td>" +
        //                "</tr>";
        //        });
        //        $("#classList").html(d + "</table>");
        //    }, function (response) {
        //        alert("Error :(");
        //        console.log(response);
        //    });
        //}

        function addNewCourse() {
            service("AddNewCourse", "{miamiId: '" + $("#txtMiamiID").val() + "', classID: '" + $("#txtCourse").val() + "', className: '" + $("#txtCourseName").val() + "', classStatus: '" + $("#txtStatus").val() + "' }",
            function (response) {
                console.log(response);
                $("#addSuccess").html("Course Added Successfully");
                }, function (response) {
                alert("FATAL ERROR :(");
                console.log(response);
            });
        }

    </script>
</asp:Content>
<%@ Page Title="UpdateClasses" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UpdateClasses.aspx.cs" Inherits="StahrDar.UpdateClasses" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Add or Delete Classes You Have Taken</h2>
    
    <h3>Add Class</h3>
    <h4>Miami ID: </h4><input id="txtMiamiID" type="text" class="form-control" oninput="clear();" />
    <h4>Course (ex. CSE385): </h4><input id="txtCourse" type="text" class="form-control" />
    <h4>Course Name (ex. Database Systems): </h4><input id="txtCourseName" type="text" class="form-control" />
    <h4>Status (ex. IP or C)</h4><input id="txtStatus" type="text" class="form-control" />
    <span class="btn btn-primary" onclick="addNewCourse();">Add Course</span>
    <div id="addSuccess"></div>

    <script>


        function clear() {
               $("#addSuccess").html("");
        }


        $("#addSuccess").html("");
        function addNewCourse() {
            service("AddNewCourse", "{miamiId: '" + $("#txtMiamiID").val() + "', classID: '" + $("#txtCourse").val() + "', className: '" + $("#txtCourseName").val() + "', classStatus: '" + $("#txtStatus").val() + "' }",
            function (response) {
                console.log(response);
                $("#addSuccess").html("Course Added Successfully");
                }, function (response) {
                alert("FATAL ERROR - AIR RAID INCOMING");
                console.log(response);
            });
        }

    </script>
</asp:Content>
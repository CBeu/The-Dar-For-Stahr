<%@ Page Title="RemainingCourses" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="RemainingCourses.aspx.cs" Inherits="StahrDar.RemainingCourses" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <br />

    <h2>Your Remaining Courses</h2>
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
    <span class='btn btn-primary btn-sm' onclick='filterAllCoursesAndCredits();'>Get Remaining Courses</span>
    <div id="lstCreditsLeft"></div>
    <div id="lstCourses"></div>


    <script>



         function filterAllCoursesAndCredits() {

             var method = "";
             var method2 = "";
            var data = "";

            switch ($("#filterType").val()) {
                case "f1":
                    method = "RemainingFoundationClasses";
                    method2 = "CreditsLeftFoundations";
                    data = "{foundationID: 1}";
                    break;
                case "f2a":
                    method = "RemainingFoundationClasses";
                    method2 = "CreditsLeftFoundations";
                    data = "{foundationID: 2}";
                    break;
                case "f2b":
                    method = "RemainingFoundationClasses";
                    method2 = "CreditsLeftFoundations";
                    data = "{foundationID: 3}";
                    break;
                case "f2c":
                    method = "RemainingFoundationClasses";
                    method2 = "CreditsLeftFoundations";
                    data = "{foundationID: 4}";
                    break;
                case "f3b":
                    method = "RemainingFoundationClasses";
                    method2 = "CreditsLeftFoundations";
                    data = "{foundationID: 5}";
                    break;
                case "f4a":
                    method = "RemainingFoundationClasses";
                    method2 = "CreditsLeftFoundations";
                    data = "{foundationID: 6}";
                    break;
                case "f4b":
                    method = "RemainingFoundationClasses";
                    method2 = "CreditsLeftFoundations";
                    data = "{foundationID: 7}";
                    break;
                case "f5":
                    method = "RemainingFoundationClasses";
                    method2 = "CreditsLeftFoundations";
                    data = "{foundationID: 8}";
                    break;
                case "cs":
                    method = "remainingCSClasses";
                    method2 = "CreditsLeftCS";
                    data = "{}";
                    break;
                case "se":
                    method = "remainingSEClasses";
                    method2 = "CreditsLeftSE";
                    data = "{}";
                    break;
                default:
                    $("#lstCourses").html("");
                    $("#lstCreditsLeft").html("");
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
                console.log(response);
                 });

            
            service(method2, data,
                function (response) {
                    for (var i = 0; i < response.length; i++) {
                        c = "Select <b>" + response[i].classCredit + "</b> classes from this section.";
                    }
                $("#lstCreditsLeft").html(c);
            }, function (response) {
                console.log(response);
            });
        }


    </script>

</asp:Content>
<%@ Page Title="RemainingCourses" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="RemainingCourses.aspx.cs" Inherits="StahrDar.RemainingCourses" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h4>Miami ID: </h4><input id="miamiID" type="text" class="form-control" />

    <h2>Miami Plan Foundations</h2>
    <h4>Foundation 1</h4>
    <span class="btn btn-primary" onclick="loadF1();">See What's Left</span>
    <div>
        <div id="creditsFoundation1"></div>
        <div id="lstClassesFoundation1" style="margin-top:16px;"></div>
    </div>

    <h4>Foundation 2A</h4>
    <span class="btn btn-primary" onclick="loadF2A();">See What's Left</span>
    <div>
        <div id="creditsFoundation2A"></div>
        <div id="lstClassesFoundation2A" style="margin-top:16px;"></div>
    </div>

    <h4>Foundation 2B</h4>
    <span class="btn btn-primary" onclick="loadF2B();">See What's Left</span>
    <div>
        <div id="creditsFoundation2B"></div>
        <div id="lstClassesFoundation2B" style="margin-top:16px;"></div>
    </div>

    <h4>Foundation 2C</h4>
    <span class="btn btn-primary" onclick="loadF2C();">See What's Left</span>
    <div>
        <div id="creditsFoundation2C"></div>
        <div id="lstClassesFoundation2C" style="margin-top:16px;"></div>
    </div>

    <h4>Foundation 3B</h4>
    <span class="btn btn-primary" onclick="loadF3B();">See What's Left</span>
    <div>
        <div id="creditsFoundation3B"></div>
        <div id="lstClassesFoundation3B" style="margin-top:16px;"></div>
    </div>

    <h4>Foundation 4A</h4>
    <span class="btn btn-primary" onclick="loadF4A();">See What's Left</span>
    <div>
        <div id="creditsFoundation4A"></div>
        <div id="lstClassesFoundation4A" style="margin-top:16px;"></div>
    </div>

    <h4>Foundation 4B</h4>
    <span class="btn btn-primary" onclick="loadF4B();">See What's Left</span>
    <div>
        <div id="creditsFoundation4B"></div>
        <div id="lstClassesFoundation4B" style="margin-top:16px;"></div>
    </div>

    <h4>Foundation 5</h4>
    <span class="btn btn-primary" onclick="loadF5();">See What's Left</span>
    <div>
        <div id="creditsFoundation5"></div>
        <div id="lstClassesFoundation5" style="margin-top:16px;"></div>
    </div>

    <h2>Major Courses</h2>
    <h4>Computer Science</h4>
    <span class="btn btn-primary" onclick="loadCS();">See What's Left</span>
    <div>
        <div id="creditsCS"></div>
        <div id="lstClassesCS" style="margin-top:16px;"></div>
    </div>

    <h4>Software Engineering</h4>
    <span class="btn btn-primary" onclick="loadSE();">See What's Left</span>
    <div>
        <div id="creditsSE"></div>
        <div id="lstClassesSE" style="margin-top:16px;"></div>
    </div>

    <script>
        var uniqueID = $("#miamiID").val()
        var d = "";

        function loadF1() {
            // Credits left F1
            service("creditsLeftF1", "{miamiID: '" + uniqueID + "'}", function (response) {
                $("#creditsFoundation1").html("Select <b>" + response[0].CreditHoursRemainingF1 / 3 + "</b>" + " classes from this section.");
            }, function (response) {
                alert("an error occurred");
                console.log(response);
            });

            // Courses not taken F1
            service("remainingF1Classes", "{miamiID: '" + uniqueID + "'}", function (response) {
                d = "<table class='table table-striped table-bordered'><th>Class ID</th><th>Class Name</th>"
                for (var i = 0; i < response.length; i++) {
                    d += "<tr>" +
                        "<td id='classID'>" + response[i].classID + "</td>" +
                        "<td id='className'>" + response[i].className + "</td>" +
                        "</tr>"
                }
                d += "</table>"
                $("#lstClassesFoundation1").html(d);
            }, function (response) {
                console.log(response);
            });
        }

        function loadF2A() {
            // Credits left F2A
            service("creditsLeftF2A", "{miamiID: '" + uniqueID + "'}", function (response) {
                $("#creditsFoundation2A").html("Select <b>" + response[0].CreditHoursRemainingF2A / 3 + "</b>" + " classes from this section.");
            }, function (response) {
                alert("an error occurred");
                console.log(response);
            });

            // Courses not taken F2A
            service("remainingF2AClasses", "{miamiID: '" + uniqueID + "'}", function (response) {
                d = "<table class='table table-striped table-bordered'><th>Class ID</th><th>Class Name</th>"
                for (var i = 0; i < response.length; i++) {
                    d += "<tr>" +
                        "<td id='classID'>" + response[i].classID + "</td>" +
                        "<td id='className'>" + response[i].className + "</td>" +
                        "</tr>"
                }
                d += "</table>"
                $("#lstClassesFoundation2A").html(d);
            }, function (response) {
                console.log(response);
            });
        }

        function loadF2B() {
            // Credits left F2B
            service("creditsLeftF2B", "{miamiID: '" + uniqueID + "'}", function (response) {
                $("#creditsFoundation2B").html("Select <b>" + response[0].CreditHoursRemainingF2B/ 3 + "</b>" + " classes from this section.");
            }, function (response) {
                alert("an error occurred");
                console.log(response);
            });

            // Courses not taken F2B
            service("remainingF2BClasses", "{miamiID: '" + uniqueID + "'}", function (response) {
                d = "<table class='table table-striped table-bordered'><th>Class ID</th><th>Class Name</th>"
                for (var i = 0; i < response.length; i++) {
                    d += "<tr>" +
                        "<td id='classID'>" + response[i].classID + "</td>" +
                        "<td id='className'>" + response[i].className + "</td>" +
                        "</tr>"
                }
                d += "</table>"
                $("#lstClassesFoundation2B").html(d);
            }, function (response) {
                console.log(response);
            });
        }

        function loadF2C() {
            // Credits left F2C
            service("creditsLeftF2C", "{miamiID: '" + uniqueID + "'}", function (response) {
                $("#creditsFoundation2C").html("Select <b>" + response[0].CreditHoursRemainingF2C / 3 + "</b>" + " classes from this section.");
            }, function (response) {
                alert("an error at credits left");
                console.log(response);
            });

            // Courses not taken F2C
            service("remainingF2CClasses", "{miamiID: '" + uniqueID + "'}", function (response) {
                d = "<table class='table table-striped table-bordered'><th>Class ID</th><th>Class Name</th>"
                for (var i = 0; i < response.length; i++) {
                    d += "<tr>" +
                        "<td id='classID'>" + response[i].classID + "</td>" +
                        "<td id='className'>" + response[i].className + "</td>" +
                        "</tr>"
                }
                d += "</table>"
                $("#lstClassesFoundation2C").html(d);
            }, function (response) {
                alert("an error at credits at not taken");
                console.log(response);
                });
        }

        function loadF3B() {
            // Credits left F3B
            service("creditsLeftF3B", "{miamiID: '" + uniqueID + "'}", function (response) {
                $("#creditsFoundation3B").html("Select <b>" + response[0].CreditHoursRemainingF3B / 3 + "</b>" + " classes from this section.");
            }, function (response) {
                alert("an error occurred");
                console.log(response);
            });

            // Courses not taken F3B
            service("remainingF3BClasses", "{miamiID: '" + uniqueID + "'}", function (response) {
                d = "<table class='table table-striped table-bordered'><th>Class ID</th><th>Class Name</th>"
                for (var i = 0; i < response.length; i++) {
                    d += "<tr>" +
                        "<td id='classID'>" + response[i].classID + "</td>" +
                        "<td id='className'>" + response[i].className + "</td>" +
                        "</tr>"
                }
                d += "</table>"
                $("#lstClassesFoundation3B").html(d);
            }, function (response) {
                console.log(response);
                });
        }

        function loadF4A() {
            // Credits left F4A
            service("creditsLeftF4A", "{miamiID: '" + uniqueID + "'}", function (response) {
                $("#creditsFoundation4A").html("Select <b>" + response[0].CreditHoursRemainingF4A / 3 + "</b>" + " classes from this section.");
            }, function (response) {
                alert("an error occurred");
                console.log(response);
            });

            // Courses not taken F4A
            service("remainingF4AClasses", "{miamiID: '" + uniqueID + "'}", function (response) {
                d = "<table class='table table-striped table-bordered'><th>Class ID</th><th>Class Name</th>"
                for (var i = 0; i < response.length; i++) {
                    d += "<tr>" +
                        "<td id='classID'>" + response[i].classID + "</td>" +
                        "<td id='className'>" + response[i].className + "</td>" +
                        "</tr>"
                }
                d += "</table>"
                $("#lstClassesFoundation4A").html(d);
            }, function (response) {
                console.log(response);
                });
        }

        function loadF4B() {
            // Credits left F4B
            service("creditsLeftF4B", "{miamiID: '" + uniqueID + "'}", function (response) {
                $("#creditsFoundation4B").html("Select <b>" + response[0].CreditHoursRemainingF4B / 3 + "</b>" + " classes from this section.");
            }, function (response) {
                alert("an error occurred");
                console.log(response);
            });

            // Courses not taken F4B
            service("remainingF4BClasses", "{miamiID: '" + uniqueID + "'}", function (response) {
                d = "<table class='table table-striped table-bordered'><th>Class ID</th><th>Class Name</th>"
                for (var i = 0; i < response.length; i++) {
                    d += "<tr>" +
                        "<td id='classID'>" + response[i].classID + "</td>" +
                        "<td id='className'>" + response[i].className + "</td>" +
                        "</tr>"
                }
                d += "</table>"
                $("#lstClassesFoundation4B").html(d);
            }, function (response) {
                console.log(response);
            });
        }

        function loadF5() {
            // Credits left F5
            service("creditsLeftF5", "{miamiID: '" + uniqueID + "'}", function (response) {
                $("#creditsFoundation5").html("Select <b>" + response[0].CreditHoursRemainingF5 / 3 + "</b>" + " classes from this section.");
            }, function (response) {
                alert("an error occurred");
                console.log(response);
            });

            // Courses not taken F5
            service("remainingF5Classes", "{miamiID: '" + uniqueID + "'}", function (response) {
                d = "<table class='table table-striped table-bordered'><th>Class ID</th><th>Class Name</th>"
                for (var i = 0; i < response.length; i++) {
                    d += "<tr>" +
                        "<td id='classID'>" + response[i].classID + "</td>" +
                        "<td id='className'>" + response[i].className + "</td>" +
                        "</tr>"
                }
                d += "</table>"
                $("#lstClassesFoundation5").html(d);
            }, function (response) {
                console.log(response);
            });
        }

        function loadCS() {
            // Credits left F5
            service("creditsLeftCS", "{miamiID: '" + uniqueID + "'}", function (response) {
                $("#creditsCS").html("Select <b>" + response[0].CreditHoursRemainingF5 / 3 + "</b>" + " classes from this section.");
            }, function (response) {
                alert("an error occurred");
                console.log(response);
            });

            // Courses not taken F5
            service("remainingCSClasses", "{miamiID: '" + uniqueID + "'}", function (response) {
                d = "<table class='table table-striped table-bordered'><th>Class ID</th><th>Class Name</th>"
                for (var i = 0; i < response.length; i++) {
                    d += "<tr>" +
                        "<td id='classID'>" + response[i].classID + "</td>" +
                        "<td id='className'>" + response[i].className + "</td>" +
                        "</tr>"
                }
                d += "</table>"
                $("#lstClassesCS").html(d);
            }, function (response) {
                console.log(response);
            });
        }

        function loadSE() {
            // Credits left F5
            service("creditsLeftSE", "{miamiID: '" + uniqueID + "'}", function (response) {
                $("#creditsSE").html("Select <b>" + response[0].CreditHoursRemainingF5 / 3 + "</b>" + " classes from this section.");
            }, function (response) {
                alert("an error occurred");
                console.log(response);
            });

            // Courses not taken F5
            service("remainingSEClasses", "{miamiID: '" + uniqueID + "'}", function (response) {
                d = "<table class='table table-striped table-bordered'><th>Class ID</th><th>Class Name</th>"
                for (var i = 0; i < response.length; i++) {
                    d += "<tr>" +
                        "<td id='classID'>" + response[i].classID + "</td>" +
                        "<td id='className'>" + response[i].className + "</td>" +
                        "</tr>"
                }
                d += "</table>"
                $("#lstClassesSE").html(d);
            }, function (response) {
                console.log(response);
            });
        }

    </script>

</asp:Content>
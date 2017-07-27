<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DevUL5EpicSpiesChallenge.aspx.cs" Inherits="DevUL5Challenge.DevUL5EpicSpiesChallenge" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 691px;
            height: 67px;
        }
        .newStyle1 {
        }
        .newStyle2 {
            font-family: Impact, Haettenschweiler, "Arial Narrow Bold", sans-serif;
        }
        .newStyle3 {
        }
        .newStyle4 {
            color: #662100;
        }
        .newStyle5 {
            font-family: "Arial Black";
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1 class="newStyle2" style="background-color: #FFFFFF">
                <img alt="" class="auto-style1" src="spies.jpg" /><br />
                <br />
                <em class="newStyle4">Epic Spies </em></h1>
            <p class="newStyle5" style="background-color: #FFFFFF">
                Spy code name:
                <asp:TextBox ID="codeNameTextBox" runat="server"></asp:TextBox>
            </p>
            <p class="newStyle5" style="background-color: #FFFFFF">
                New assignment name:&nbsp;
                <asp:TextBox ID="newAssignmentTextBox" runat="server"></asp:TextBox>
            </p>
            <p class="newStyle5" style="background-color: #FFFFFF">
                End date of previous assignment:
            </p>
            <p class="newStyle5" style="background-color: #FFFFFF">
                <asp:Calendar ID="oldCalendar" runat="server" BackColor="#FFFFCC" BorderColor="#FFCC66" BorderWidth="1px" Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" Height="200px" ShowGridLines="True" Width="220px">
                    <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
                    <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
                    <OtherMonthDayStyle ForeColor="#CC9966" />
                    <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
                    <SelectorStyle BackColor="#FFCC66" />
                    <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" ForeColor="#FFFFCC" />
                    <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
                </asp:Calendar>
            </p>
            <p class="newStyle5" style="background-color: #FFFFFF">
                Start date of new assignment</p>
            <p class="newStyle5" style="background-color: #FFFFFF">
                <asp:Calendar ID="newCalendar" runat="server" BackColor="#FFFFCC" BorderColor="#FFCC66" BorderWidth="1px" Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" Height="200px" ShowGridLines="True" Width="220px">
                    <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
                    <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
                    <OtherMonthDayStyle ForeColor="#CC9966" />
                    <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
                    <SelectorStyle BackColor="#FFCC66" />
                    <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" ForeColor="#FFFFCC" />
                    <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
                </asp:Calendar>
            </p>
            <p class="newStyle5" style="background-color: #FFFFFF">
                Projected end date of new assignment</p>
            <p class="newStyle5" style="background-color: #FFFFFF">
                <asp:Calendar ID="endCalendar" runat="server" BackColor="#FFFFCC" BorderColor="#FFCC66" BorderWidth="1px" Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" Height="200px" ShowGridLines="True" Width="220px">
                    <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
                    <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
                    <OtherMonthDayStyle ForeColor="#CC9966" />
                    <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
                    <SelectorStyle BackColor="#FFCC66" />
                    <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" ForeColor="#FFFFCC" />
                    <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
                </asp:Calendar>
            </p>
            <p class="newStyle5" style="background-color: #FFFFFF">
                <asp:Button ID="assignButton" runat="server" OnClick="assignButton_Click" Text="*!~ Assign Spy ~!*" />
            </p>
            <p class="newStyle5" style="background-color: #FFFFFF">
                <asp:Label ID="resultLabel" runat="server"></asp:Label>
            </p>
            <p class="newStyle2" style="background-color: #FFFFFF">
                &nbsp;</p>
            <br />
        </div>
    </form>
</body>
</html>

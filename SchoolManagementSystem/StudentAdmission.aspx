<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentAdmission.aspx.cs" Inherits="SchoolManagementSystem.StudentAdmission" %>

<%@ Register src="Controls/CalendarControl.ascx" tagname="CalendarControl" tagprefix="uc1" %>
<%@ Register Src="~/Controls/CalendarControl.ascx" TagPrefix="uc2" TagName="CalendarControl" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            text-align: left;
            width: 295px;
        }
        .auto-style3 {
            text-align: right;
            width: 295px;
            height: 23px;
        }
        .auto-style4 {
            height: 23px;
            text-align: left;
        }
        .auto-style6 {
            width: 279px;
        }
        .auto-style7 {
            height: 23px;
            width: 279px;
        }
        .auto-style8 {
            font-size: x-large;
        }
        .auto-style10 {
            text-align: center;
        }
        .auto-style11 {
            text-align: right;
            width: 295px;
        }
        .auto-style12 {
            text-align: center;
            width: 279px;
        }
        .auto-style13 {
            width: 279px;
            text-align: right;
        }
        .auto-style14 {
            text-align: left;
        }
        .auto-style15 {
            margin-top: 13px;
        }
        .auto-style16 {
            text-align: center;
            width: 295px;
            height: 23px;
        }
        .auto-style17 {
            width: 279px;
            text-align: right;
            height: 23px;
        }
        .auto-style18 {
            text-align: center;
            height: 23px;
        }
        .auto-style19 {
            text-align: right;
            width: 295px;
            height: 26px;
        }
        .auto-style20 {
            width: 279px;
            height: 26px;
        }
        .auto-style21 {
            text-align: left;
            height: 26px;
        }
        .auto-style22 {
            text-align: right;
        }
        .auto-style23 {
            width: 279px;
            text-align: right;
            font-size: xx-large;
            color: #663300;
        }
    </style>
    <script src="scripts/jquery-3.1.1.js"></script>
</head>
<body bgcolor ="#cccccc">
    <form id="form1" runat="server">
    <div>
     <div class="auto-style10">
            <span class="auto-style23">School Management System<br />
            <br />
            </span><br />
        </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">
                    <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" CausesValidation="False">Back</asp:LinkButton>
                </td>
                <td class="auto-style12"><strong><span class="auto-style8">Student Addmission Form</span></strong><br />
                    Please fill the form with your details<br />
                    <br />
                    <br />
                </td>
                <td class="auto-style22">
                    <asp:LinkButton ID="LinkButton2" runat="server" CssClass="auto-style6" OnClick="LinkButton2_Click" >Log Out</asp:LinkButton>
                </td>
            </tr>
            <tr>
                <td class="auto-style19">Name</td>
                <td class="auto-style20">
                    <asp:TextBox ID="TextBoxName" runat="server"  Width="280px"></asp:TextBox>
                    <br />
                </td>
                <td class="auto-style21">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBoxName" Display="Dynamic" ErrorMessage="Fill the field" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style11">Father&#39;s Name</td>
                <td class="auto-style6">
                    <asp:TextBox ID="TextBoxFatherName" runat="server" Width="280px"></asp:TextBox>
                    <br />
                </td>
                <td class="auto-style14">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBoxFatherName" Display="Dynamic" ErrorMessage="Fill the field" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style11">Mother&#39;s Name</td>
                <td class="auto-style6">
                    <asp:TextBox ID="TextBoxMotherName" runat="server" Width="280px"></asp:TextBox>
                    <br />
                </td>
                <td class="auto-style14">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBoxMotherName" Display="Dynamic" ErrorMessage="Fill the field" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style11">Address</td>
                <td class="auto-style6">
                    <asp:TextBox ID="TextBoxAddress" runat="server" Width="280px"></asp:TextBox>
                    <br />
                </td>
                <td class="auto-style14">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBoxAddress" Display="Dynamic" ErrorMessage="Fill the field" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style11">Guardian&#39;s Phone</td>
                <td class="auto-style6">
                    <asp:TextBox ID="TextBoxGurdianPhone" runat="server" Width="280px"></asp:TextBox>
                    <br />
                </td>
                <td class="auto-style14">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBoxGurdianPhone" Display="Dynamic" ErrorMessage="Fill the field" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBoxGurdianPhone" Display="Dynamic" ErrorMessage="Invalid Phone No." ForeColor="Red" ValidationExpression="^[+]?([\d]{0,3})?[\(\.\-\s]?([\d]{3})[\)\.\-\s]*([\d]{3})[\.\-\s]?([\d]{4})$"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style11">Date Of Birth</td>
                <td class="auto-style6">
                    <asp:TextBox ID="TextBoxDOB" runat="server" Width="252px"></asp:TextBox>
                    <asp:ImageButton ID="ImageButtonCalender" runat="server" Height="16px" ImageUrl="~/Img/CalendarIcon.png" OnClick="ImageButtonCalender_Click" Width="16px" CausesValidation="False" />
                    <br />
                    <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="Black" BorderStyle="Solid" CellSpacing="1" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="250px" NextPrevFormat="ShortMonth" OnSelectionChanged="Calendar1_SelectionChanged" Width="330px" Visible="False">
                        <DayHeaderStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" Height="8pt" />
                        <DayStyle BackColor="#CCCCCC" />
                        <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="White" />
                        <OtherMonthDayStyle ForeColor="#999999" />
                        <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                        <TitleStyle BackColor="#333399" BorderStyle="Solid" Font-Bold="True" Font-Size="12pt" ForeColor="White" Height="12pt" />
                        <TodayDayStyle BackColor="#999999" ForeColor="White" />
                    </asp:Calendar>
                </td>
                <td class="auto-style14">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBoxDOB" Display="Dynamic" ErrorMessage="Fill the field" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style11">Admission Date</td>
                <td class="auto-style6">
                    <asp:TextBox ID="TextBoxAdmissionDate" runat="server" Width="253px"></asp:TextBox>
                    <asp:ImageButton ID="ImageButton2" runat="server" CausesValidation="False" Height="16px" ImageUrl="~/Img/CalendarIcon.png" OnClick="ImageButton2_Click" />
                    <br />
                    <asp:Calendar ID="Calendar2" runat="server" BackColor="White" BorderColor="Black" BorderStyle="Solid" CellSpacing="1" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="250px" NextPrevFormat="ShortMonth" OnSelectionChanged="Calendar2_SelectionChanged" Width="330px" Visible="False">
                        <DayHeaderStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" Height="8pt" />
                        <DayStyle BackColor="#CCCCCC" />
                        <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="White" />
                        <OtherMonthDayStyle ForeColor="#999999" />
                        <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                        <TitleStyle BackColor="#333399" BorderStyle="Solid" Font-Bold="True" Font-Size="12pt" ForeColor="White" Height="12pt" />
                        <TodayDayStyle BackColor="#999999" ForeColor="White" />
                    </asp:Calendar>
                </td>
                <td class="auto-style14">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBoxAdmissionDate" Display="Dynamic" ErrorMessage="Fill the field" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:LinkButton ID="LinkButton3" runat="server" CausesValidation="False" OnClick="LinkButton3_Click">Student Id</asp:LinkButton>
                </td>
                <td class="auto-style7">
                    <asp:TextBox ID="TextBoxStudentId" runat="server" Width="280px" ReadOnly="True"></asp:TextBox>
                </td>
                <td class="auto-style4">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBoxStudentId" Display="Dynamic" ErrorMessage="Fill the field" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style11">Class</td>
                <td class="auto-style13">
                    <asp:DropDownList ID="DropDownList1" runat="server" Height="16px" Width="286px">
                        <asp:ListItem Value="6">Class 6</asp:ListItem>
                        <asp:ListItem Value="7">Class 7</asp:ListItem>
                        <asp:ListItem Value="8">Class 8</asp:ListItem>
                        <asp:ListItem Value="9">Class 9</asp:ListItem>
                    </asp:DropDownList>
                    <br />
                </td>
                <td class="auto-style10">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style16"></td>
                <td class="auto-style17">
                    <asp:Button ID="Button1" runat="server" Text="Submit" CssClass="auto-style15" Height="35px" OnClick="Button1_Click" Width="111px" />
                </td>
                <td class="auto-style18">&nbsp;</td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>

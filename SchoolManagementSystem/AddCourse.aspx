<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddCourse.aspx.cs" Inherits="School.AddCourse" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 164px;
        }
        .style3
        {
            width: 159px;
        }
        .style4
        {
            width: 164px;
            text-align: right;
        }
        .auto-style1 {
            width: 186px;
        }
        .auto-style2 {
            text-align: right;
        }
        .auto-style14{
              font-size: xx-large;
            color: #663300;
            text-align: center;
        }
        .auto-style15 {
            width: 62%;
        }
        .auto-style16 {
            width: 594px;
            text-align: center;
        }
        .auto-style17 {
            width: 164px;
            text-align: right;
            height: 26px;
        }
        .auto-style18 {
            width: 186px;
            height: 26px;
        }
        .auto-style19 {
            height: 26px;
        }
    </style>
</head>
<body bgcolor ="#cccccc">
    <form id="form1" runat="server">
    <div>
    <div class="auto-style14">
            <span class="auto-style13">School Management System</span><br />
        </div>
    &nbsp;<table class="style1">
            <tr>
                <td class="style2">
                    <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" OnClick="LinkButton1_Click">Back</asp:LinkButton>
                </td>
                <td class="auto-style16">
                    Add New Course</td>
                <td class="auto-style2">
                    <asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" OnClick="LinkButton2_Click">Log Out</asp:LinkButton>
                </td>
            </tr>
        </table>
        <div align="center">
        <table class="auto-style15">
            <tr>
                <td class="style4">
                    Course Name:</td>
                <td class="auto-style1">
                    <asp:TextBox ID="TextBoxCourseName" runat="server" placeholder="EX: ENGLISH" Width="173px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorCourseName" 
                        runat="server" ControlToValidate="TextBoxCourseName" 
                        ErrorMessage="*Please Fill The Field" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style17">
                    Class:</td>
                <td class="auto-style18">
                    <asp:DropDownList ID="DropDownListClass" runat="server" Width="180px">
                        <asp:ListItem>--Select--</asp:ListItem>
                        <asp:ListItem Value="6">Class-6</asp:ListItem>
                        <asp:ListItem Value="7">Class-7</asp:ListItem>
                        <asp:ListItem Value="8">Class-8</asp:ListItem>
                        <asp:ListItem Value="9">Class-9</asp:ListItem>
                        <asp:ListItem Value="10">Class-10</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style19">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="DropDownListClass" ErrorMessage="*Select Class" ForeColor="Red" InitialValue="--Select--"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style4">
                    Course Teacher</td>
                <td class="auto-style1">
                    <asp:DropDownList ID="DropDownListTeacher" runat="server" Width="180px">
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorCourseName1" 
                        runat="server" ControlToValidate="DropDownListTeacher" 
                        ErrorMessage="*Please Fill The Field" ForeColor="Red" InitialValue="--Select--"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style4">
                    <asp:LinkButton ID="LinkButton3" runat="server" CausesValidation="False" OnClick="LinkButton3_Click">Course Id</asp:LinkButton>
                </td>
                <td class="auto-style1">
                    <asp:TextBox ID="TextBoxCourseId" runat="server" Width="173px" ReadOnly="True"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorCourseName0" 
                        runat="server" ControlToValidate="TextBoxCourseId" 
                        ErrorMessage="*Please Fill The Field" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style4">
                    Class Timing </td>
                <td class="auto-style1">
                    <asp:DropDownList ID="DropDownListDuration" runat="server" Width="180px">
                        <asp:ListItem>8:00 AM - 9:00 AM</asp:ListItem>
                        <asp:ListItem>9:00 AM - 10:00 AM</asp:ListItem>
                        <asp:ListItem>10:00 AM - 11:00 AM</asp:ListItem>
                        <asp:ListItem>11:00 AM - 12:00 PM</asp:ListItem>
                        <asp:ListItem>12:00 PM - 1:00 PM</asp:ListItem>
                        <asp:ListItem>1:00 PM - 2:00 PM</asp:ListItem>
                        <asp:ListItem>2:00 PM - 3:00 PM</asp:ListItem>
                        <asp:ListItem>3:00 PM - 4:00 PM</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorCourseName2" 
                        runat="server" ControlToValidate="DropDownListDuration" 
                        ErrorMessage="*Please Fill The Field" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td class="auto-style1">
                    <asp:Button ID="Button1" runat="server" Text="Add Course" OnClick="Button1_Click" Width="180px" />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    </div>
    </div>
    </form>
</body>
</html>

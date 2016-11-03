<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddTeacher.aspx.cs" Inherits="SchoolManagementSystem.AddTeacher" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            text-align: center;
            width: 319px;
        }
        .auto-style3 {
            width: 296px;
        }
        .auto-style4 {
            text-align: right;
        }
        .auto-style5 {
            width: 291px;
        }
        .auto-style6 {
            text-align: right;
            width: 296px;
        }
        .auto-style7 {
            width: 291px;
            text-align: right;
        }
        .auto-style8 {
            font-size: xx-large;
            color: #663300;
        }
        .auto-style9 {
            text-align: center;
        }
    </style>
</head>
<body bgcolor ="#cccccc">
    <form id="form1" runat="server">
    <div>
     <div class="auto-style9">
            <span class="auto-style8">School Management System<br />
            <br />
            </span><br />
        </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style3">
                    <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click" CausesValidation="False">Back</asp:LinkButton>
                </td>
                <td class="auto-style2">Techer Registration Form</td>
                <td class="auto-style4">
                    <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" CausesValidation="False">Log Out</asp:LinkButton>
                </td>
            </tr>
        </table>
    
    </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style6">Name</td>
                <td class="auto-style5">
                    <asp:TextBox ID="TextBoxName" runat="server" Width="285px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBoxName" Display="Dynamic" ErrorMessage="*Required Field" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">Address</td>
                <td class="auto-style5">
                    <asp:TextBox ID="TextBoxAddress" runat="server" Width="285px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBoxAddress" Display="Dynamic" ErrorMessage="*Required Field" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">Phone</td>
                <td class="auto-style5">
                    <asp:TextBox ID="TextBoxPhone" runat="server" placeholder="Ex: 01740966056" Width="285px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBoxPhone" Display="Dynamic" ErrorMessage="*Required Field" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBoxPhone" Display="Dynamic" ErrorMessage="*Invalid Phone No" ForeColor="Red" ValidationExpression="^[+]?([\d]{0,3})?[\(\.\-\s]?([\d]{3})[\)\.\-\s]*([\d]{3})[\.\-\s]?([\d]{4})$"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">Email</td>
                <td class="auto-style5">
                    <asp:TextBox ID="TextBoxEmail" runat="server" placeholder="abc@example.com" Width="285px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBoxEmail" Display="Dynamic" ErrorMessage="*Required Field" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBoxEmail" Display="Dynamic" ErrorMessage="*Invalid Email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">Joining Date</td>
                <td class="auto-style5">
                    <asp:TextBox ID="TextBoxJoiningDate" runat="server" placeholder="DD-MM-YYYY" Width="285px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBoxJoiningDate" Display="Dynamic" ErrorMessage="*Required Field" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:LinkButton ID="LinkButton4" runat="server" CausesValidation="False" OnClick="LinkButton4_Click">Today</asp:LinkButton>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">Username</td>
                <td class="auto-style5">
                    <asp:TextBox ID="TextBoxUsername" runat="server" Width="285px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBoxUsername" Display="Dynamic" ErrorMessage="*Required Field" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">Password</td>
                <td class="auto-style5">
                    <asp:TextBox ID="TextBoxPassword" runat="server" Width="285px" TextMode="Password"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBoxPassword" Display="Dynamic" ErrorMessage="*Required Field" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">Confirm Password</td>
                <td class="auto-style5">
                    <asp:TextBox ID="TextBoxConfirmPassword" runat="server" Width="285px" TextMode="Password"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBoxConfirmPassword" Display="Dynamic" ErrorMessage="*Required Field" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBoxPassword" ControlToValidate="TextBoxConfirmPassword" Display="Dynamic" ErrorMessage="Password Doesn't Match" ForeColor="Red"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <asp:LinkButton ID="LinkButton3" runat="server" CausesValidation="False" OnClick="LinkButton3_Click">Teacher Id</asp:LinkButton>
                </td>
                <td class="auto-style7">
                    <asp:TextBox ID="TextBoxId" runat="server" Width="285px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="TextBoxId" Display="Dynamic" ErrorMessage="*Required Field" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style7">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Confirm" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ConfirmPassword.aspx.cs" Inherits="School.ConfirmPassword" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
            height: 124px;
        }
        .style2
        {
            width: 394px;
        }
        .style3
        {
            width: 244px;
        }
        .style4
        {
            width: 137px;
        }
        .style5
        {
            width: 244px;
            height: 26px;
            text-align: right;
        }
        .style6
        {
            width: 394px;
            height: 26px;
        }
        .style7
        {
            width: 137px;
            height: 26px;
        }
        .style8
        {
            width: 244px;
            text-align: right;
        }
    </style>
</head>
<body bgcolor ="#cccccc">
    <form id="form1" runat="server">
    <div>
    
        <table class="style1">
             
            <tr>
                <td class="style3">
                    &nbsp;</td>
                <td class="style2">
                    Change Password</td>
                <td class="style4">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style8">
                    Username</td>
                <td class="style2">
                    <asp:TextBox ID="TextBoxUsername" runat="server" ReadOnly="True"></asp:TextBox>
                </td>
                <td class="style4">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style8">
                    Old Password:</td>
                <td class="style2">
                    <asp:TextBox ID="TextBoxOldPassword" runat="server" OnTextChanged="TextBoxOldPassword_TextChanged"></asp:TextBox>
                    <asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorOldPassword" 
                        runat="server" ControlToValidate="TextBoxOldPassword" 
                        ErrorMessage="*Please Fill the Filled" ForeColor="#996600"></asp:RequiredFieldValidator>
                </td>
                <td class="style4">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style8">
                    New Password:</td>
                <td class="style2">
                    <asp:TextBox ID="TextBoxNewPassword" TextMode="Password" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorNewPassword" 
                        runat="server" ControlToValidate="TextBoxNewPassword" 
                        ErrorMessage="*Please Fill The Filled" ForeColor="#996600"></asp:RequiredFieldValidator>
                </td>
                <td class="style4">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style5">
                    Confirm New Password:</td>
                <td class="style6">
                    <asp:TextBox ID="TextBoxConfirmNewPassword" TextMode="Password" runat="server" Height="16px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorConfirmNewPassword" 
                        runat="server" ControlToValidate="TextBoxConfirmNewPassword" Display="Dynamic" 
                        ErrorMessage="*Please Fill The Field" ForeColor="#996600"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" 
                        ControlToCompare="TextBoxNewPassword" 
                        ControlToValidate="TextBoxConfirmNewPassword" Display="Dynamic" 
                        ErrorMessage="*Use Same Input" ForeColor="#996600"></asp:CompareValidator>
                    <br />
                </td>
                <td class="style7">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style3">
                    &nbsp;</td>
                <td class="style2">
                    <asp:Button ID="ButtonSubmit" runat="server" Text="Submit" Width="80px" OnClick="ButtonSubmit_Click" />
                </td>
                <td class="style4">
                    &nbsp;</td>
            </tr>
           
        </table>
    
    </div>
    </form>
</body>
</html>

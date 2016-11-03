<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="SchoolManagementSystem.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 381px;
            
            height: 159px;
          
        }
        .auto-style5 {
            height: 23px;
            text-align: center;
            align-content: center;
        }
        .auto-style10 {
            width: 116px;
            text-align: right;
        }
        .auto-style11 {
            width: 132px;
        }
        .auto-style12 {
            width: 116px;
        }
        .auto-style13 {
            font-size: xx-large;
            color: #663300;
        }
        .auto-style14 {
            text-align: center;
        }
        .auto-style15 {
            width: 116px;
            text-align: right;
            height: 26px;
        }
        .auto-style16 {
            width: 132px;
            height: 26px;
        }
        .auto-style17 {
            width: 116px;
            height: 37px;
        }
        .auto-style18 {
            width: 132px;
            height: 37px;
        }
    </style>
</head>
<body bgcolor ="#cccccc">
    <form id="form1" runat="server">
    <div>
    
        <div class="auto-style14">
            <span class="auto-style13">School Management System</span><br />
        </div>
    
        <table class="auto-style1" align ="center">
             <tr>
                <td class="auto-style5" colspan="2">&nbsp;</td>
            </tr>
             <tr>
                <td class="auto-style5" colspan="2">Login With your Username &amp; Password<br />
                 </td>
            </tr>
             <tr>
                <td class="auto-style5" colspan="2">
                    <asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label>
                 </td>
            </tr>
            <tr>
                <td class="auto-style10">Username</td>
                <td class="auto-style11">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style15">Password</td>
                <td class="auto-style16">
                    <asp:TextBox ID="TextBox2"  TextMode="Password" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style17"></td>
                <td class="auto-style18">
                    <asp:Button ID="Button1" runat="server" Text="Login" Width="123px" OnClick="Button1_Click" Height="33px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style12">&nbsp;</td>
                <td class="auto-style11">
                    &nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>

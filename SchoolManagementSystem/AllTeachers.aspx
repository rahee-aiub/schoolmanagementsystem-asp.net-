﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AllTeachers.aspx.cs" Inherits="SchoolManagementSystem.AllTeachers" %>

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
            width: 219px;
        }
        .auto-style3 {
            width: 361px;
        }
        .auto-style4 {
            text-align: right;
        }
        .auto-style5 {
            width: 251px;
        }
        .auto-style6 {
            width: 459px;
        }
        .auto-style7 {
            margin-right: 39px;
        }
        .auto-style8 {
            color: #663300;
            font-size: xx-large;
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
                    <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">Back</asp:LinkButton>
                </td>
                <td class="auto-style2">All Teachers Information</td>
                <td class="auto-style4">
                    <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Log Out</asp:LinkButton>
                </td>
            </tr>
        </table>
        <br />
        <table class="auto-style1">
            <tr>
                <td class="auto-style5">
                    <asp:Button ID="ButtonConfirm" runat="server" OnClick="ButtonConfirm_Click" Text="Confirm" />
                    <asp:Button ID="ButtonUndo" runat="server" OnClick="ButtonUndo_Click" Text="Undo" />
                </td>
                <td class="auto-style6">
                    <asp:Label ID="LabelMessage" runat="server"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <br />
    
    </div>
        <asp:GridView ID="GridViewTeacher" runat="server" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" AutoGenerateDeleteButton="True" AutoGenerateEditButton="True" DataKeyNames="Id" OnRowCancelingEdit="GridViewTeacher_RowCancelingEdit" OnRowDeleting="GridViewTeacher_RowDeleting" OnRowEditing="GridViewTeacher_RowEditing" OnRowUpdating="GridViewTeacher_RowUpdating" CssClass="auto-style7" Width="100%">
            <AlternatingRowStyle BackColor="PaleGoldenrod" />
            <FooterStyle BackColor="Tan" />
            <HeaderStyle BackColor="Tan" Font-Bold="True" />
            <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
            <SortedAscendingCellStyle BackColor="#FAFAE7" />
            <SortedAscendingHeaderStyle BackColor="#DAC09E" />
            <SortedDescendingCellStyle BackColor="#E1DB9C" />
            <SortedDescendingHeaderStyle BackColor="#C2A47B" />
        </asp:GridView>
    </form>
</body>
</html>

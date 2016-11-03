<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewCourse.aspx.cs" Inherits="SchoolManagementSystem.ViewCourse" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            text-align: right;
        }
        .auto-style4 {
            width: 446px;
        }
        .auto-style6 {
            width: 93px;
        }
        .auto-style7 {
            font-size: xx-large;
            color: #663300;
        }
        .auto-style8 {
            text-align: center;
        }
        .auto-style11 {
            width: 550px;
            text-align: right;
            height: 30px;
        }
        .auto-style12 {
            text-align: left;
            width: 110px;
            height: 30px;
        }
        .auto-style13 {
            width: 550px;
            text-align: right;
            height: 23px;
        }
        .auto-style14 {
            text-align: left;
            height: 23px;
            width: 110px;
        }
        .auto-style15 {
            width: 38%;
            height: 3px;
        }
        </style>
    <script>
        function confirmation() {
            if (confirm("Are you sure you want to delete?"))
                return true;
            else return false;
        }

    </script>
           
        </head>
<body bgcolor ="#cccccc">
    
         <div class="auto-style8">
            <span class="auto-style7">School Management System</span><br />
        </div>
    <div align ="center">
    <form id="form1" runat="server">
        <br />
        <table class="auto-style1">
            <tr>
                <td class="auto-style6">
                    <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" OnClick="LinkButton1_Click">Back</asp:LinkButton>
                </td>
                <td class="auto-style4">
                    <asp:LinkButton ID="LinkButtonAddNewCourses" runat="server" OnClick="LinkButtonAddNewCourses_Click">Add New Courses</asp:LinkButton>
                </td>
                <td class="auto-style2">
                    <asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" OnClick="LinkButton2_Click">Log Out</asp:LinkButton>
                </td>
            </tr>
        </table>
    <div>
    
        <br />
    
    </div>
        <asp:GridView ID="GridView1" runat="server" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None" Width="50%">
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
        <table class="auto-style15" align ="center">
            <tr>
                <td class="auto-style13">
                    </td>
                <td class="auto-style14">
                    </td>
            </tr>
            <tr>
                <td class="auto-style11">
                    <asp:DropDownList ID="DropDownList1" runat="server">
                    </asp:DropDownList>
                </td>
                <td class="auto-style12">
                    <asp:Button ID="ButtonDeleteCourse" runat="server" OnClick="ButtonDeleteCourse_Click" OnClientClick="return confirmation();" Text="Delete Course" />
                </td>
            </tr>
        </table>

    </form>
        </div>

    <div>
        
    </div>
</body>
</html>

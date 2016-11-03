<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminHome.aspx.cs" Inherits="SchoolManagementSystem.AdminHome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style3 {
            text-align: center;
           
        }
        .auto-style6 {
            font-size: large;
            width: 900px;
        }
        .auto-style7 {
            text-align: right;
            height: 24px;
        }
        .auto-style10 {
            text-align: center;
            width: 114px;
        }
        .auto-style15 {
            text-align: center;
            width: 114px;
            height: 47px;
        }
        .auto-style17 {
            text-align: center;
            width: 162px;
            height: 47px;
        }
        .auto-style20 {
            width: 80px;
            height: 60px;
        }
        .auto-style24 {
            text-align: center;
            width: 121px;
            height: 47px;
        }
        .auto-style25 {
            text-align: center;
            width: 121px;
        }
        .auto-style28 {
            text-align: center;
            width: 162px;
        }
        .auto-style31 {
            text-align: center;
            width: 125px;
            height: 47px;
        }
        .auto-style32 {
            text-align: center;
            width: 125px;
        }
        .auto-style33 {
            text-align: center;
            width: 128px;
            height: 47px;
        }
        .auto-style34 {
            text-align: center;
            width: 128px;
        }
        .auto-style35 {
            text-align: center;
            width: 129px;
            height: 47px;
        }
        .auto-style36 {
            text-align: center;
            width: 129px;
        }
        .auto-style37 {
            color: #663300;
            font-size: xx-large;
        }
    </style>
</head>
<body bgcolor ="#cccccc">
     
    <form id="form1" runat="server">
        <p class="auto-style3">
            <span class="auto-style37">School Management System</span><br />
            Logged in as <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>&nbsp;</p>
    <div>
    
        <table class="auto-style1" style="height: 26px">
            <tr>
                <td class="auto-style7" colspan="6">
                    <asp:LinkButton ID="LinkButton2" runat="server" CssClass="auto-style6" OnClick="LinkButton2_Click" >Log Out</asp:LinkButton>
                </td>
            </tr>
            <tr>
                <td class="auto-style7" colspan="6">
                    <asp:LinkButton ID="LinkButton7" runat="server" OnClick="LinkButton7_Click">Admin Id Control</asp:LinkButton>
                </td>
            </tr>
            <tr>
                <td class="auto-style24"><img alt="teacb" class="auto-style20" src="Img/teacher-512.png" />
                    </td>
                <td class="auto-style15">
                    <img alt="" class="auto-style20" src="Img/add%20c.png" /></td>
                <td class="auto-style31">
                    <img alt="" class="auto-style20" src="Img/CoursesIcon.png" /></td>
                <td class="auto-style17">
                    <img alt="Allstudent" class="auto-style20" src="Img/AllStudentsIcon.png" /></td>
                <td class="auto-style33">
                    <img alt="" class="auto-style20" src="Img/Add%20Student%20Icon.png" /></td>
                <td class="auto-style35">
                    <img alt="" class="auto-style20" src="Img/Add%20Student%20Icon.png" /></td>
            </tr>
            <tr>
                <td class="auto-style25">
                    <asp:LinkButton ID="LinkButton5" runat="server" OnClick="LinkButton5_Click">All Teachers</asp:LinkButton>
                </td>
                <td class="auto-style10">

                    <asp:LinkButton ID="LinkButton6" runat="server" OnClick="LinkButton6_Click">Add Course</asp:LinkButton>

                </td>
                <td class="auto-style32">

                    <asp:LinkButton ID="LinkButtonViewAllCourses" runat="server" CausesValidation="False" PostBackUrl="~/ViewCourse.aspx">View All Courses</asp:LinkButton>

                </td>
                <td class="auto-style28">
                    <asp:LinkButton ID="LinkButton4" runat="server" OnClick="LinkButton4_Click">All Students</asp:LinkButton>
                </td>
                <td class="auto-style34">
                    <asp:LinkButton ID="LinkButton3" runat="server" OnClick="LinkButton3_Click">Add New Teacher</asp:LinkButton>
                </td>
                <td class="auto-style36">
    
        <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" CausesValidation="False" CssClass="auto-style6">Add New Student</asp:LinkButton>
    
                </td>
            </tr>
            </table>
    
    </div>
        
        <p>
            Search
            <asp:TextBox ID="TextBoxSearch" placeholder="Student Name or Id" runat="server"></asp:TextBox>
            <asp:Button ID="ButtonGo" runat="server" OnClick="ButtonGo_Click" Text="Go" />
&nbsp;<asp:Label ID="LabelStatus" runat="server"></asp:Label>
        </p>
        <p>
            <asp:GridView ID="GridView1" runat="server" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None" Width="100%">
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
        </p>
       
    </form>
</body>
</html>

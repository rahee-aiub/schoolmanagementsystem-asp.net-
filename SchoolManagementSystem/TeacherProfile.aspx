<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TeacherProfile.aspx.cs" Inherits="SchoolManagementSystem.TeacherProfile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 95%;
        }
        .auto-style6 {
            text-align: right;
        }
        .auto-style7 {
            width: 75px;
            text-align: right;
            height: 26px;
        }
        .auto-style9 {
            width: 241px;
        }
        .auto-style13 {
            text-align: justify;
            width: 75px;
        }
        .auto-style14 {
            width: 75px;
        }
        .auto-style15 {
            width: 239px;
            height: 26px;
            text-align: left;
        }
        .auto-style16 {
            width: 239px;
            text-align: left;
        }
        .auto-style18 {
            width: 100%;
        }
        .auto-style20 {
            width: 526px;
            text-align: center;
        }
        .auto-style22 {
            text-align: left;
            font-size: x-large;
        }
        .auto-style23 {
            text-align: right;
            width: 75px;
        }
        .auto-style24 {
            margin-top: 0px;
        }
        .auto-style25 {
            width: 100%;
            text-align: center;
            font-size: xx-large;
        }
        .auto-style26 {
            font-size: x-large;
        }
        .auto-style27 {
            text-align: justify;
            width: 75px;
            color: #663300;
        }
        .auto-style28 {
            width: 174px;
        }
    </style>
</head>
<body bgcolor ="#cccccc">
    <form id="form1" runat="server">
        <div class="auto-style25">
            <span class="auto-style27">School Management System<br />
            </span><br />
        </div>
    <div class="auto-style6">
     
        User
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        <br />
        <table class="auto-style18">
            <tr>
                <td class="auto-style28">&nbsp;</td>
                <td class="auto-style20"><span class="auto-style26">Welcome </span>
                    <asp:Label ID="Label2" runat="server" CssClass="auto-style26"></asp:Label>
                    </td>
                <td>
        <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Log Out</asp:LinkButton>
    
                </td>
            </tr>
            <tr>
                <td colspan="3">
            <asp:Button ID="Button1" runat="server" Text="Change Password" OnClick="Button1_Click" Width="128px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style22" colspan="3">Your Personal Informations</td>
            </tr>
        </table>
    
    </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style7">Name</td>
                <td class="auto-style15">
                    <asp:TextBox ID="TextBoxName" runat="server" ReadOnly="True"></asp:TextBox>
                </td>
                <td class="auto-style9">
                    <asp:DropDownList ID="DropDownList1" runat="server" Height="25px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Width="80px">
                        <asp:ListItem Value="6">Class-6</asp:ListItem>
                        <asp:ListItem Value="7">Class-7</asp:ListItem>
                        <asp:ListItem Value="8">Class-8</asp:ListItem>
                        <asp:ListItem Value="9">Class-9</asp:ListItem>
                        <asp:ListItem Value="10">Class-10</asp:ListItem>
                    </asp:DropDownList>
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="View Students" />
                    &nbsp;<asp:Label ID="LabelNoStudent" runat="server" ForeColor="#FF9900"></asp:Label>
                &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style23">Address</td>
                <td class="auto-style16">
                    <asp:TextBox ID="TextBoxAddress" runat="server" ReadOnly="True"></asp:TextBox>
                </td>
                <td class="auto-style9" rowspan="8">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" CssClass="auto-style24" ForeColor="Black" GridLines="None" Width="325px">
                        <AlternatingRowStyle BackColor="PaleGoldenrod" />
                        <Columns>
                            <asp:BoundField DataField="Name" HeaderText="Name" />
                            <asp:BoundField DataField="Id" HeaderText="Id" />
                            <asp:BoundField DataField="Class" HeaderText="Class" />
                        </Columns>
                        <FooterStyle BackColor="Tan" />
                        <HeaderStyle BackColor="Tan" Font-Bold="True" />
                        <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                        <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                        <SortedAscendingCellStyle BackColor="#FAFAE7" />
                        <SortedAscendingHeaderStyle BackColor="#DAC09E" />
                        <SortedDescendingCellStyle BackColor="#E1DB9C" />
                        <SortedDescendingHeaderStyle BackColor="#C2A47B" />
                    </asp:GridView>
                </td>
            </tr>
            <tr>
                <td class="auto-style23">Phone</td>
                <td class="auto-style16">
                    <asp:TextBox ID="TextBoxPhone" runat="server" ReadOnly="True"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">Email</td>
                <td class="auto-style15">
                    <asp:TextBox ID="TextBoxEmail" runat="server" ReadOnly="True"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style23">JoiningDate</td>
                <td class="auto-style16">
                    <asp:TextBox ID="TextBoxJoiningDate" runat="server" ReadOnly="True"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">Username</td>
                <td class="auto-style15">
                    <asp:TextBox ID="TextBoxUsername" runat="server" ReadOnly="True"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">Id</td>
                <td class="auto-style15">
                    <asp:TextBox ID="TextBoxId" runat="server" ReadOnly="True"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style16">
                    <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Edit" />
                    <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Save" />
                </td>
            </tr>
            <tr>
                <td class="auto-style14"></td>
                <td class="auto-style16">
                    &nbsp;</td>
            </tr>
        </table>
        <p>
            <asp:Button ID="ButtonMyCourses" runat="server" OnClick="ButtonMyCourses_Click" Text="My Courses" />
            <asp:Label ID="LabelMyCourse" runat="server" ForeColor="#FF9900"></asp:Label>
        </p>
        <p>
            <asp:GridView ID="GridViewMyCourses" runat="server" AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None">
                <AlternatingRowStyle BackColor="PaleGoldenrod" />
                <Columns>
                    <asp:BoundField DataField="CourseName" HeaderText="Course Name" />
                    <asp:BoundField DataField="Class" HeaderText="Class" />
                    <asp:BoundField DataField="Duration" HeaderText="Time" />
                </Columns>
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

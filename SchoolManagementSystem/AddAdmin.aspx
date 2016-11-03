<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddAdmin.aspx.cs" Inherits="SchoolManagementSystem.AddAdmin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 50%;
           
        }
        .auto-style2 {
            width: 162px;
            height: 30px;
        }
        .auto-style3 {
            width: 162px;
            text-align: right;
        }
        .auto-style4 {
            width: 132px;
        }
        .auto-style5 {
            width: 162px;
            text-align: right;
            height: 26px;
        }
        .auto-style6 {
            width: 132px;
            height: 26px;
        }
        .auto-style7 {
            height: 26px;
            width: 129px;
        }
        .auto-style8 {
            text-align: center;
            
        }
        .auto-style9 {
            text-align: right;
        }
        .auto-style10 {
            text-align: left;
        }
        .auto-style11 {
            width: 129px;
        }
        .auto-style12 {
            width: 132px;
            height: 30px;
        }
        .auto-style13 {
            width: 129px;
            height: 30px;
        }
        .auto-style14 {
            width: 4px;
            height: 300px;
            position: absolute;
            left: 40%;
            top: 20%;
        }
    </style>
    <script>
        function confirmation() {
            if (confirm("Are you sure to delete your Account?"))
                return true;
            else return false;
        }

    </script>
</head>
<body bgcolor ="#cccccc">
    <form id="form1" runat="server">
    <div>
    
        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" OnClick="LinkButton1_Click">Back</asp:LinkButton>
    
    </div>

         <div class="auto-style9">
             <br />
             <div class="auto-style10">
                
                 <asp:Button ID="ButtonDeleteAccount" runat="server" Text="Delete My Account" CausesValidation="False"  OnClientClick="return confirmation();" OnClick="Button2_Click" />
                  <br />
                  <asp:Button ID="ButtonViewAllAdmins" runat="server" Text="View All Admins" CausesValidation="False" OnClick="ButtonViewAllAdmins_Click" Width="99px" />
                
                 <asp:Button ID="Button2" runat="server" CausesValidation="False" OnClick="Button2_Click1" Text="Hide" />
                
             </div>
             <div class="auto-style8" style="float:left; width:40%;>
                 
                
                             <div class="auto-style8">
                 
                
                             <asp:GridView ID="GridViewAdmin" runat="server" Width="174px" AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None">
                                 <AlternatingRowStyle BackColor="PaleGoldenrod" />
                                 <Columns>
                                     <asp:BoundField DataField="Username" HeaderText="Admin Id" />
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

                             </div>

          <div style='float:left;margin-left:4%;'>
		<hr class="auto-style14"/></div></div>
             </div >

             <table class="auto-style1" align="Right">
                 <tr>
                     <td class="auto-style8" colspan="3">Add New Addmin <br />
                     </td>
                 </tr>
                 <tr>
                     <td class="auto-style5">Username</td>
                     <td class="auto-style6">
    <asp:TextBox ID="TextBoxUsername" runat="server" placeholder ="Username"></asp:TextBox>
                     </td>
                     <td class="auto-style7">
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBoxUsername" Display="Dynamic" ErrorMessage="*Required" ForeColor="Red"></asp:RequiredFieldValidator>
                     </td>
                 </tr>
                 <tr>
                     <td class="auto-style5">Password</td>
                     <td class="auto-style6">
             <asp:TextBox ID="TextBoxPassword" runat="server"  placeholder ="Password" TextMode="Password"></asp:TextBox>
                     </td>
                     <td class="auto-style7">
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBoxPassword" Display="Dynamic" ErrorMessage="*Required" ForeColor="Red"></asp:RequiredFieldValidator>
                     </td>
                 </tr>
                 <tr>
                     <td class="auto-style3">Confirm Password</td>
                     <td class="auto-style4">
             <asp:TextBox ID="TextBoxConfirmPassword" runat="server"  placeholder ="Confirm Password" TextMode="Password"></asp:TextBox>
                     </td>
                     <td class="auto-style11">
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBoxConfirmPassword" Display="Dynamic" ErrorMessage="*Required" ForeColor="Red"></asp:RequiredFieldValidator>
                         <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBoxPassword" ControlToValidate="TextBoxConfirmPassword" Display="Dynamic" ErrorMessage="Password Does not Match" ForeColor="Red"></asp:CompareValidator>
                     </td>
                 </tr>
                 <tr>
                     <td class="auto-style2"></td>
                     <td class="auto-style12">
             <asp:Button ID="Button1" runat="server" Text="Confirm" Width="127px" OnClick="Button1_Click" />
    
                     </td>
                     <td class="auto-style13">
                         </td>
                 </tr>
             </table>
    
    </div>
        <div>

        </div>
    </form>
    <div>
    <div style='float:left;margin-left:4%;'>
		</div>
    </div>
</body>
</html>

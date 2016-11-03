<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Demo.aspx.cs" Inherits="SchoolManagementSystem.Demo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            float: left;
            width: 36%;
        }
        .auto-style2 {
            float: left;
            width: 56%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
            <div>
            <div style="width:100%;"> <!-- Main Div -->
        Header
        <div class="auto-style1">
        Left  <!-- Set Div As your requirement -->
        </div>
        <div style="margin-left:10px solid blue;" class="auto-style2">
        Right  <!-- Set Div As your requirement -->
        </div>
       
        </div>
    </div>
    </form>
</body>
</html>

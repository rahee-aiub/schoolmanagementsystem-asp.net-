<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="SchoolManagementSystem.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            color: #660033;
            font-size: xx-large;
        }

        .myButton {
	        -moz-box-shadow:inset 0px 1px 0px 0px #ffffff;
	        -webkit-box-shadow:inset 0px 1px 0px 0px #ffffff;
	        box-shadow:inset 0px 1px 0px 0px #ffffff;
	        background:-webkit-gradient(linear, left top, left bottom, color-stop(0.05, #ededed), color-stop(1, #dfdfdf));
	        background:-moz-linear-gradient(top, #ededed 5%, #dfdfdf 100%);
	        background:-webkit-linear-gradient(top, #ededed 5%, #dfdfdf 100%);
	        background:-o-linear-gradient(top, #ededed 5%, #dfdfdf 100%);
	        background:-ms-linear-gradient(top, #ededed 5%, #dfdfdf 100%);
	        background:linear-gradient(to bottom, #ededed 5%, #dfdfdf 100%);
	        filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#ededed', endColorstr='#dfdfdf',GradientType=0);
	        background-color:#ededed;
	        -moz-border-radius:6px;
	        -webkit-border-radius:6px;
	        border-radius:6px;
	        border:1px solid #dcdcdc;
	        display:inline-block;
	        cursor:pointer;
	        color:#777777;
	        font-family:Arial;
	        font-size:15px;
	        font-weight:bold;
	        padding:6px 24px;
	        text-decoration:none;
	        text-shadow:0px 1px 0px #ffffff;
        }
        .myButton:hover {
	        background:-webkit-gradient(linear, left top, left bottom, color-stop(0.05, #dfdfdf), color-stop(1, #ededed));
	        background:-moz-linear-gradient(top, #dfdfdf 5%, #ededed 100%);
	        background:-webkit-linear-gradient(top, #dfdfdf 5%, #ededed 100%);
	        background:-o-linear-gradient(top, #dfdfdf 5%, #ededed 100%);
	        background:-ms-linear-gradient(top, #dfdfdf 5%, #ededed 100%);
	        background:linear-gradient(to bottom, #dfdfdf 5%, #ededed 100%);
	        filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#dfdfdf', endColorstr='#ededed',GradientType=0);
	        background-color:#dfdfdf;
        }
        .myButton:active {
	        position:relative;
	        top:1px;
        }

        .auto-style3 {
            color: #000066;
            font-size: large;
        }

        .auto-style4 {
            background-color: #CCCCCC;
        }

        </style>
</head>
<body bgcolor ="#cccccc">
    <form id="form1" runat="server">
    <div class="auto-style1">
    
        <span class="auto-style2"><strong>ABC INTERNATIONAL SCHOOL<br />
        </strong></span>
    
        <span class="auto-style3"><em>The Scholar&#39;s Arena<br />
        </em></span><br />
    
    </div>
        <div class="auto-style1">
                             
                        <asp:Button ID="ButtonHome" class="myButton" runat="server" Text="Home" Width="19%" OnClick="ButtonHome_Click"/>
                        <asp:Button ID="ButtonAboutUs" class="myButton" runat="server" Text="About Us" Width="19%" OnClick="ButtonAboutUs_Click"/>
                        <asp:Button ID="ButtonNotice" class="myButton" runat="server" Text="Notices" Width="19%" OnClick="ButtonAdmission_Click"/>
                        <asp:Button ID="ButtonContactUs" class="myButton" runat="server" Text="Contact Us" Width="19%" OnClick="ButtonContactUs_Click"/>
                        <asp:Button ID="ButtonLogin" class="myButton" runat="server" Text="Login" Width="19%" OnClick="ButtonLogin_Click"/>
                  
        </div>
        <div>

            <asp:MultiView ID="MultiView1" ActiveViewIndex="0" runat="server">
               
                <asp:View ID="ViewHome" runat="server">
                    <asp:Label ID="Label1" runat="server" Text="Home"></asp:Label>
                </asp:View>
                <asp:View ID="ViewAboutUs" runat="server">
                    <br class="auto-style4" />
                    <p class="auto-style4" style="box-sizing: border-box; padding: 0px; font-family: montserrat; font-weight: normal; font-size: 0.9375rem; line-height: 1.4; text-rendering: optimizeLegibility; color: rgb(34, 34, 34); font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px;">
                        Ann Willis Richards, the 45th Governor of Texas, was one of the most important women in American history. The first woman elected County Commissioner in Travis County and Treasurer of the State of Texas, Richards rose to national prominence and celebrity with her memorable keynote address to the 1988 Democratic National Convention.</p>
                    <p class="auto-style4" style="box-sizing: border-box; padding: 0px; font-family: montserrat; font-weight: normal; font-size: 0.9375rem; line-height: 1.4; text-rendering: optimizeLegibility; color: rgb(34, 34, 34); font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px;">
                        Born during the depths of the Depression in 1933, Richards grew up with big dreams in a small Texas town. She always believed that education was the ticket to opportunity and equality. Richards graduated from Baylor University and began her career teaching social studies at Fulmore Junior High School in Austin. She said that teaching was the hardest work she had ever done.</p>
                    <p class="auto-style4" style="box-sizing: border-box; padding: 0px; font-family: montserrat; font-weight: normal; font-size: 0.9375rem; line-height: 1.4; text-rendering: optimizeLegibility; color: rgb(34, 34, 34); font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px;">
                        As Governor of Texas, Richards appointed record numbers of women and minorities to state boards and agencies, attracted new business to Texas, passed important ethics reform legislation and is credited with resolving crises in the state’s public schools and prison system.</p>
                    <p class="auto-style4" style="box-sizing: border-box; padding: 0px; font-family: montserrat; font-weight: normal; font-size: 0.9375rem; line-height: 1.4; text-rendering: optimizeLegibility; color: rgb(34, 34, 34); font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px;">
                        Following her career in elected office, Richards became senior advisor at Public Strategies, a consulting firm, where she helped companies develop and implement their public agendas. She maintained a busy national and international speaking schedule and served the nation as a member of the Council on Foreign Affairs.</p>
                    <p class="auto-style4" style="box-sizing: border-box; padding: 0px; font-family: montserrat; font-weight: normal; font-size: 0.9375rem; line-height: 1.4; text-rendering: optimizeLegibility; color: rgb(34, 34, 34); font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px;">
                        A public servant all of her life, Richards also served on numerous boards of philanthropic, educational and public interest organizations, including: the Aspen Institute, Brandeis University, the Foundation for Women’s Resources, the Peres Center for Peace, the Harvard University JFK School Center for Public Leadership, the Robert J. Milano Graduate School of Management and Urban Policy at The New School, and Save the Children.</p>
                    <p style="box-sizing: border-box; margin: 0px 0px 1.25rem; padding: 0px; font-family: montserrat; font-weight: normal; font-size: 0.9375rem; line-height: 1.4; text-rendering: optimizeLegibility; color: rgb(34, 34, 34); font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);">
                        <span class="auto-style4">She co-authored two books: a memoir entitled&nbsp;</span><em style="box-sizing: border-box; font-style: italic; line-height: inherit;"><span class="auto-style4">Straight from the Heart: My Life in Politics and Other Places</span></em><span class="auto-style4">, and&nbsp;</span><em style="box-sizing: border-box; font-style: italic; line-height: inherit;"><span class="auto-style4">I’m Not Slowing Down: Winning My Battle with Osteoporosis</span></em><span class="auto-style4">, the story of her efforts to combat osteoporosis and educate women on how to overcome the disease.</span></p>
                    <p class="auto-style4" style="box-sizing: border-box; padding: 0px; font-family: montserrat; font-weight: normal; font-size: 0.9375rem; line-height: 1.4; text-rendering: optimizeLegibility; color: rgb(34, 34, 34); font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px;">
                        Richards was an ardent feminist and throughout her career dedicated herself to breaking down barriers for women to fully participate in career and community. She used her own successes to create opportunities for women and to educate and encourage women everywhere to become leaders.</p>
                    <p class="auto-style4" style="box-sizing: border-box; padding: 0px; font-family: montserrat; font-weight: normal; font-size: 0.9375rem; line-height: 1.4; text-rendering: optimizeLegibility; color: rgb(34, 34, 34); font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px;">
                        At the time of her death in September 2006, Richards was actively involved in planning the Ann Richards School for Young Women Leaders. She visited other successful single-gender schools and urged that the best practices of these schools be used to create academic, leadership and wellness programs in the school that bears her name. Ann’s legacy of empowering girls and women lives on through the faculty, staff and students of the Ann Richards School for Young Women Leaders.</p>
                    <br class="auto-style4" />
                </asp:View>
                <asp:View ID="ViewAdmission" runat="server">
                    <asp:Label ID="Label3" runat="server" Text="Notices"></asp:Label>
                </asp:View>
                <asp:View ID="ViewContactUs" runat="server">
                    <asp:Label ID="Label4" runat="server" Text="ContactUs"></asp:Label>
                </asp:View>
            </asp:MultiView>

        </div>
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="OptMyCare.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Home Page</title>
    <link rel="stylesheet" href="Stylesheets/LoginPage_Stylesheet.css" />
</head>
<body>
    <form id="form1" runat="server" style ="background-color : gray;">
        <section style="height: 140px; background-color: gray;">
            <div style="width: 40%;">
                <asp:Image ImageUrl="~/Images/OptMyCare_Heading_1.png" Width="200px" runat="server"></asp:Image>
            </div>
        </section>
        <div style="margin-top: -5%; margin-left: 27.5%;">
            <table>
                <tr>
                    <td>
                        <asp:Label Text="OptMyCare" CssClass="HeadingLabelStylesheet" runat="server" ForeColor="FloralWhite"></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
        <div style="margin-top: -6.5%; margin-left: 40%;">
            <ul>
                <li><a>Regions</a></li>
                <li><a>Risk algorithm</a></li>
                <li><a>Contact us</a></li>
            </ul>
        </div>
        <div>
            <asp:ImageButton ImageUrl ="~/Images/Create_Account.jpg" CssClass ="createaccount_imagestyle" runat ="server" OnClick ="CreateNewAccount_Click" />
        </div>
        <div>
            <ul>
                <li><a href="OurMission.aspx">Our Mission</a></li>
                <li><a href="Background.aspx">Background</a></li>
                <li><a href="Patient.aspx">My Care</a></li>
                <li><a href="Payer.aspx">Payer/Insurer</a></li>
                <li><a href="People.aspx">People</a></li>
                <li><a href="Provider.aspx">Providers</a></li>
            </ul>
        </div>
        <div>
            <section class="homepage_imagestyle">
                <asp:Image ImageUrl ="~/Images/Patient_Connecting.png" CssClass ="patientconnecting_style" OnClick ="btnPeopleConnecting_Click" runat ="server" />
                <asp:Image ImageUrl ="~/Images/learn_more_1.png" CssClass ="learnmore_style" runat ="server" />
            </section>
        </div>
    </form>
</body>
</html>

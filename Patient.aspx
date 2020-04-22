<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Patient.aspx.cs" Inherits="OptMyCare.Patient" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="Stylesheets/LoginPage_Stylesheet.css" />
</head>
<body>
    <form id="form1" runat="server">
        <section style="height: 140px; background-color: gray;">
            <div style="width: 40%;">
                <asp:Image ImageUrl="~/Images/OptMyCare_Heading_1.png" Width="200px" runat="server"></asp:Image>
            </div>
        </section>
        <div style="margin-top: -5%; margin-left: 27.5%;">
            <table>
                <tr>
                    <td>
                        <asp:Label Text="Patient" CssClass="HeadingLabelStylesheet" runat="server" ForeColor="FloralWhite"></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
        <div style="margin-top: -5%; margin-left: 40%;">
            <ul>
                <li><a>Regions</a></li>
                <li><a>Risk algorithm</a></li>
                <li><a>Contact us</a></li>
            </ul>
        </div>
        <div style="margin-top: 5%;">
            <ul>
                <li><a href="OurMission.aspx">Our Mission</a></li>
                <li><a href="Background.aspx">Background</a></li>
                <li><a href="Patient.aspx">My Care</a></li>
                <li><a href="Payer.aspx">Payer/Insurer</a></li>
                <li><a href="People.aspx">People</a></li>
                <li><a href="Provider.aspx">Providers</a></li>
            </ul>
        </div>
        <div style="margin-top: 112px; border: 1px solid Black; width: 58.6%; background-color: lightskyblue; margin-left : 10%;">
            <table>
                <tr>
                    <td>The patients receives up to date digital information, including lab data, medical<br />
                        imaging, medical records and healthcare information in a quest to allow patients<br />
                        to be better educated and take charge of their health                        
                    </td>
                    <td>
                        <asp:Image runat ="server" ImageUrl ="~/Images/patient.png" CssClass ="subimage_style" />
                    </td>
                </tr>
                <tr style="margin-top: 2%">
                    <td>
                        <asp:Button ID="btnReturnBackToHome" runat="server" Text="Return to homepage" CssClass="button_style" OnClick="btnReturnBackToHomePage_Click" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>

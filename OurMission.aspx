<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OurMission.aspx.cs" Inherits="OptMyCare.OurMission" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Our Mission</title>
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
                        <asp:Label Text="Mission" CssClass="HeadingLabelStylesheet" runat="server" ForeColor="FloralWhite"></asp:Label>
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
        <div style ="margin-top : 112px; border : 1px solid Black; width : 58.6%; background-color : lightskyblue; margin-left : 10%;">
            <table>
                <tr>
                    <td>
                        OMC is a digital information sharing platform that gathers, disseminates, collates and analyzes healthcare information for the patient, <br /> provider and payer via simple Apps <br /><br />
                        The information allows the patient to have up to date medical information(labs, medical imaging, records), the provider to have direct <br /> feedback from the patient and the payer/insurer to be aware of both
                        subtle and radical changes in the patient's status <br /> <br />The shared data will be processed and analyzed by proprietary algorithms, Artificial Intelligence(AI) and Machine Learning(ML) to <br /> better inform  
                        the overall progress and allow patients to be empowered with the best information, providers with the most useful follow <br />up from their parents and payers to receive accurate and timely data to make prudent business 
                        decisions that align their best interests<br />with those of the patient and the provider.
                    </td>
                </tr>
                <tr style ="margin-top : 2%">
                    <td>
                        <asp:Button ID ="btnReturnBackToHome" runat ="server" Text ="Return to homepage" CssClass ="button_style"  OnClick ="btnReturnBackToHomePage_Click" /> 
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>

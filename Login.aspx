<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="OptMyCare.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <link rel ="stylesheet" href ="Stylesheets/LoginPage_Stylesheet.css" />
    <style>
        @import url('https://fonts.googleapis.com/css?family=Bitter|Crete+Round|Pacifico');
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <section class ="section_1">
            <div class="container">
                <div class="inner2">
                    <h3>Sign in</h3>

                    <asp:TextBox ID="txturname" placeholder="Username" runat="server"></asp:TextBox>
                    <asp:TextBox ID="txtpasswd" placeholder="Password" TextMode="Password" runat="server">
                    </asp:TextBox>
                    <asp:Button ID="Button1" runat="server" CssClass="btn" Text="Sign In" OnClick ="button1_click" />
                    <asp:Label ID ="lblInvalidLogin" runat ="server" Visible ="false" CssClass ="invalidlogin_label_style" ></asp:Label>
                </div>
            </div>
        </section>
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NewAccount.aspx.cs" Inherits="OptMyCare.NewAccount" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>New Account</title>
    <link rel="stylesheet" href="Stylesheets/NewAccount_StyleSheet.css" />
    <script src="jquery-1.2.6.js" type="text/javascript"></script>
    <script type="text/javascript">
        function ValidateTextBox(source, args) {
            var is_valid = $("#txtUserName").val() != "";
            $("#txtUserName").css("background-color", is_valid ? "white" : "red");
            args.IsValid = is_valid;

            var is_valid = $("#txtPassword").val() != "";
            $("#txtPassword").css("background-color", is_valid ? "white" : "red");
            args.IsValid = is_valid;
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <section style="height: 105px; background-color: gray;">
            <div style="width: 40%;">
                <asp:Image ImageUrl="~/Images/OptMyCare_Heading_1.png" Width="200px" runat="server"></asp:Image>
            </div>
        </section>
        <div style="margin-top: -5%; margin-left: 47%;">
            <table>
                <tr>
                    <td>
                        <asp:Label Text="OptMyCare" CssClass="HeadingLabelStylesheet" runat="server" ForeColor="FloralWhite"></asp:Label>
                    </td>
                    <td>
                        <asp:ImageButton runat="server" ImageUrl="~/Images/HomePage.png" CssClass="newaccount_imagestyle" CausesValidation ="false" OnClick="HomePage_Click" />
                    </td>
                </tr>
            </table>
        </div>
        <div class="newaccount_container">
            <h3>New Account</h3>
            <table>
                <tr>
                    <td>
                        <asp:TextBox ID="txturname" placeholder="Username" runat="server" CssClass="newaccount_username_textstyle"></asp:TextBox></td>
                    <td>
                        <asp:RequiredFieldValidator ID="reqtxtName" CssClass="required_field_validator" ControlToValidate="txturname" ErrorMessage="*" ToolTip="Please enter username !" runat="server" />
                    </td>
                    <td>
                        <asp:RegularExpressionValidator ID="reguexptxtUserName" CssClass="required_field_validator" runat="server" ControlToValidate="txturname" ValidationExpression="[a-zA-Z0-9_]*$" ErrorMessage="*" ToolTip="Please enter valid UserName" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:TextBox ID="txtpasswd" placeholder="Password" TextMode="Password" runat="server" CssClass="newaccount_password_textstyle"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="reqtxtpassword" CssClass="passwordrequired_field_validator" ControlToValidate="txtpasswd" ErrorMessage="*" ToolTip="Please enter Password !" runat="server" />
                    </td>
                    <td>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" CssClass="passwordrequired_field_validator" runat="server" ControlToValidate="txtpasswd" ValidationExpression="^(?=.*[A-Za-z])(?=.*\d)(?=.*[$@$!%*#?&])[A-Za-z\d$@$!%*#?&]{8,}$" ErrorMessage="*" ToolTip="Please enter valid Password" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:TextBox ID="txtConfirmPassword" placeholder="Confirm Password" TextMode="Password" runat="server" CssClass="newaccount_confirmpassword_textstyle"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="reqConfirmPassword" CssClass="passwordrequired_field_validator" ControlToValidate="txtConfirmPassword" ErrorMessage="*" ToolTip="Please enter Confirm Password !" runat="server" />
                    </td>
                    <td>
                        <asp:CompareValidator ControlToValidate="txtConfirmPassword" ControlToCompare="txtpasswd" runat="server" ToolTip="Confirm Password should match with Password!" ErrorMessage="*" CssClass="passwordrequired_field_validator"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="Button1" runat="server" CssClass="btn" Text="Update" OnClick ="btnUpdate_Click" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblInvalidLogin" runat="server" Visible="false" CssClass="invalidlogin_label_style"></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Regester.aspx.cs" Inherits="BOOKMEBUS.Regester" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <link href="Styl/StyleLogin.css" rel="stylesheet" />
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register</title>
</head>

<body>

    <form id="form1" runat="server">

        <div class="imgcontainer">
            <img src="Images/img_avatar2.png" style="height: 98px; width: 90px" alt="Avatar" />
        </div>
        <div class="container">
            <label for="fullname">Full Name:</label>
            <asp:TextBox ID="txtFullName" runat="server" placeholder="Enter Full Name"></asp:TextBox><br>

            <label for="email">Email:</label>
            <asp:TextBox ID="txtEmail" runat="server" placeholder="Enter Email"></asp:TextBox><br>

            <label for="password">Password:</label>
            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" placeholder="Enter Password"></asp:TextBox><br>

            <label for="confirmPassword">Confirm Password:</label>
            <asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password" placeholder="Confirm Password"></asp:TextBox><br>

            <label for="phone">Phone Number:</label>
            <asp:TextBox ID="txtPhone" runat="server" placeholder="Enter Phone Number"></asp:TextBox><br>

            <asp:Button ID="btnRegister" runat="server" Text="Register" OnClick="btnRegister_Click" /><br>
            <asp:Label ID="lblError" runat="server" ForeColor="Red"></asp:Label>
        </div>
        <div class="container" style="background-color:#f1f1f1; text-align: right;">
            Already have an account? <a href="Login.aspx">Login</a>
        </div>

    </form>

</body>

</html>

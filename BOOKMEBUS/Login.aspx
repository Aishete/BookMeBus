<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="BOOKMEBUS.Login" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <link href="Styl/StyleLogin.css" rel="stylesheet" />
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Assignment Login Form</title>
</head>

<body>

    <form id="form1" runat="server">

        <div class="imgcontainer">
            <img src="Images/img_avatar2.png" style="height: 98px; width: 90px" alt="Avatar" />
        </div>
        <div class="container">
            <label for="email">Enter Email :</label>
            <asp:TextBox ID="txtEmail" runat="server" placeholder="Enter Email"></asp:TextBox><br>
            <label for="password">Enter Password</label>
            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" placeholder="Enter Password"></asp:TextBox><br>
            <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" /><br>
            <label>
                <asp:CheckBox ID="chkRememberMe" runat="server" Text="Remember me" Checked="true" />
            </label>
            <asp:Label ID="lblError" runat="server" ForeColor="Red"></asp:Label>
        </div>
        <div class="container" style="background-color:#f1f1f1; text-align: right;">
            Create <a href="Regester.aspx">Account?</a>
        </div>

    </form>

</body>

</html>


<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="checkout.aspx.cs" Inherits="BOOKMEBUS.checkout" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Checkout</title>
    <link href="Styl/styleCheckout.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h2>Checkout</h2>
            <table>
                <tr>
                    <td><asp:Label ID="lblFullName" runat="server" Text="Full Name: "></asp:Label></td>
                    <td><asp:TextBox ID="txtFullName" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td><asp:Label ID="lblEmail" runat="server" Text="Email: "></asp:Label></td>
                    <td><asp:TextBox ID="txtEmail" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td><asp:Label ID="lblPhone" runat="server" Text="Phone: "></asp:Label></td>
                    <td><asp:TextBox ID="txtPhone" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td><asp:Label ID="lblAddress" runat="server" Text="Address: "></asp:Label></td>
                    <td><asp:TextBox ID="txtAddress" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td><asp:Label ID="lblCity" runat="server" Text="City: "></asp:Label></td>
                    <td><asp:TextBox ID="txtCity" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td><asp:Label ID="lblState" runat="server" Text="State: "></asp:Label></td>
                    <td><asp:TextBox ID="txtState" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td><asp:Label ID="lblZipCode" runat="server" Text="Zip Code: "></asp:Label></td>
                    <td><asp:TextBox ID="txtZipCode" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td><asp:Label ID="lblCreditCardNumber" runat="server" Text="Credit Card Number: "></asp:Label></td>
                    <td><asp:TextBox ID="txtCreditCardNumber" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td><asp:Label ID="lblExpirationDate" runat="server" Text="Expiration Date (MM/YY): "></asp:Label></td>
                    <td><asp:TextBox ID="txtExpirationDate" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td><asp:Label ID="lblCVV" runat="server" Text="CVV: "></asp:Label></td>
                    <td><asp:TextBox ID="txtCVV" runat="server"></asp:TextBox></td>
                </tr>
            </table>
            <asp:Button ID="btnSubmit" runat="server" CssClass="button" Text="Submit" OnClick="btnSubmit_Click" />
            <asp:Button ID="btnCancel" runat="server" CssClass="button" Text="Cancel" OnClick="btnCancel_Click" />
        </div>
    </form>
</body>
</html>

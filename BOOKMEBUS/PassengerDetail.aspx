<%@ Page Title="Passenger Details" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="PassengerDetail.aspx.cs" Inherits="BOOKMEBUS.PassengerDetail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <script type="text/javascript">
        function GetConfirmation() {
            var reply = confirm("Are you sure you want to delete this?");
            return reply;
        }
    </script>

    <div class="container">
        <h2>Passenger Detail</h2>
        <table>
            <tr>
                <td class="auto-style1"><asp:Label ID="Label1" runat="server" Text="Id: "></asp:Label></td>
                <td><asp:TextBox ID="txtid" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td class="auto-style1"><asp:Label ID="Label2" runat="server" Text="Name: "></asp:Label></td>
                <td><asp:TextBox ID="txtname" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td class="auto-style1"><asp:Label ID="Label3" runat="server" Text="Gender: "></asp:Label></td>
                <td><asp:TextBox ID="txtgender" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td class="auto-style1"><asp:Label ID="Label4" runat="server" Text="Phone: "></asp:Label></td>
                <td><asp:TextBox ID="txtphone" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td class="auto-style1"><asp:Label ID="Label6" runat="server" Text="Email: "></asp:Label></td>
                <td><asp:TextBox ID="txtemail" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td class="auto-style1"><asp:Label ID="Label7" runat="server" Text="Confirm Email: "></asp:Label></td>
                <td><asp:TextBox ID="txtconfirmemail" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td class="auto-style1"><asp:Label ID="Label8" runat="server" Text="Nationality: "></asp:Label></td>
                <td><asp:TextBox ID="txtnationality" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td class="auto-style1"><asp:Label ID="Label9" runat="server" Text="Seat: "></asp:Label></td>
                <td><asp:TextBox ID="txtseat" runat="server"></asp:TextBox></td>
            </tr>
        </table>
        <asp:Button ID="btnadd" runat="server" CssClass="button" Text="Add New" OnClick="btnadd_Click" />
        <asp:Button ID="btnsearch" runat="server" CssClass="button" Text="Search" />
        <asp:Button ID="btnupdate" runat="server" CssClass="button" Text="Update" OnClick="btnupdate_Click" />
        <asp:Button ID="btndelete" runat="server" CssClass="button" OnClientClick="return GetConfirmation();" Text="Delete" OnClick="btndelete_Click" />
        <asp:Button ID="btnclear" runat="server" CssClass="button" Text="Clear" OnClick="btnclear_Click" />
        <br /><br />
        <asp:ListView ID="listView" runat="server" AutoGenerateColumns="false" ShowFooter="true" OnItemCommand="listView_ItemCommand">
            <LayoutTemplate>
                <table id="Table1" runat="server" border="1" cellpadding="3" cellspacing="0">
                    <tr runat="server" style="background-color: #336699; color: white">
                        <th>Id</th>
                        <th>Name</th>
                        <th>Gender</th>
                        <th>Phone</th>
                        <th>Email</th>
                        <th>Confirm Email</th>
                        <th>Nationality</th>
                        <th>Seat</th>
                        <th>Action</th>
                    </tr>
                    <tr id="itemPlaceholder" runat="server"></tr>
                </table>
            </LayoutTemplate>
            <ItemTemplate>
                <tr class='<%# Convert.ToBoolean(Container.DataItemIndex % 2) ? "EvenRowColor" : "OddRowColor" %>'>
                    <td><asp:Label ID="Id" runat="server" Text='<%# Eval("pasId") %>' /></td>
                    <td><asp:Label ID="Name" runat="server" Text='<%# Eval("pasName") %>'></asp:Label></td>
                    <td><asp:Label ID="Gender" runat="server" Text='<%# Eval("pasGender") %>'></asp:Label></td>
                    <td><asp:Label ID="Phone" runat="server" Text='<%# Eval("pasPhone") %>'></asp:Label></td>
                    <td><asp:Label ID="Email" runat="server" Text='<%# Eval("pasEmail") %>'></asp:Label></td>
                    <td><asp:Label ID="ConfirmEmail" runat="server" Text='<%# Eval("pasConfirmEmail") %>'></asp:Label></td>
                    <td><asp:Label ID="Nationality" runat="server" Text='<%# Eval("pasNationality") %>'></asp:Label></td>
                    <td><asp:Label ID="Seat" runat="server" Text='<%# Eval("pasSeat") %>'></asp:Label></td>
                    <td><asp:LinkButton ID="btnedit" runat="server" CommandArgument='<%# Eval("pasId") %>' CommandName="SelectedItem">Edit</asp:LinkButton></td>
                </tr>
            </ItemTemplate>
        </asp:ListView>
    </div>
</asp:Content>

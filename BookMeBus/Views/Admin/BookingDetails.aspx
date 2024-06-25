<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="BookingDetails.aspx.cs" Inherits="BookMeBus.Views.Admin.BookingDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script type="text/javascript">
        $(document).ready(function () {
            updateSelectedSeats();
            $('input[type="checkbox"]').change(function () {
                updateSelectedSeats();
            });

            function updateSelectedSeats() {
                var selectedSeats = [];
                var totalSeats = 0;

                $('input[type="checkbox"]:checked').each(function () {
                    selectedSeats.push($(this).val());
                    totalSeats++;
                });

                $('#<%= txtSelectedSeat.ClientID %>').val(selectedSeats.join(', '));
                $('#<%= txtTotalSeats.ClientID %>').val(totalSeats);
            }
        });
    </script>
    <div>
        <h2>Seat Selection</h2>
        <asp:CheckBox ID="chkSeat1" runat="server" Text="Seat 1" /><br />
        <asp:CheckBox ID="chkSeat2" runat="server" Text="Seat 2" /><br />
        <asp:CheckBox ID="chkSeat3" runat="server" Text="Seat 3" /><br />
        <asp:CheckBox ID="chkSeat4" runat="server" Text="Seat 4" /><br />
        <asp:CheckBox ID="chkSeat5" runat="server" Text="Seat 5" /><br />

        <h3>Selected Seat: <asp:TextBox ID="txtSelectedSeat" runat="server" ReadOnly="true" /></h3>
        <h3>Total Seats: <asp:TextBox ID="txtTotalSeats" runat="server" ReadOnly="true" /></h3>

        <hr />
        <h2>Passenger Details</h2>
        <asp:Label ID="lblNationality1" runat="server" Text="Nationality: "></asp:Label>
        <asp:TextBox ID="txtNationality1" runat="server"></asp:TextBox>&nbsp;
        <asp:Label ID="lblFullName1" runat="server" Text="Full Name: "></asp:Label>
        <asp:TextBox ID="txtFullName1" runat="server"></asp:TextBox>&nbsp;
        <asp:Label ID="lblGender1" runat="server" Text="Gender: "></asp:Label>
        <asp:DropDownList ID="ddlGender1" runat="server">
            <asp:ListItem Text="Male" Value="Male"></asp:ListItem>
            <asp:ListItem Text="Female" Value="Female"></asp:ListItem>
        </asp:DropDownList><br />
        <hr />
        <h2>Contact Details</h2>
        <asp:Label ID="lblPhoneNumber" runat="server" Text="Phone Number: "></asp:Label>
        <asp:TextBox ID="txtPhoneNumber" runat="server"></asp:TextBox>&nbsp;
        <asp:Label ID="lblEmail" runat="server" Text="Email: "></asp:Label>
        <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>&nbsp;
        <asp:Label ID="lblConfirmEmail" runat="server" Text="Confirm Email: "></asp:Label>
        <asp:TextBox ID="txtConfirmEmail" runat="server"></asp:TextBox><br />

        <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
    </div>
</asp:Content>

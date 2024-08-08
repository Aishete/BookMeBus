<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="SearchTicket.aspx.cs" Inherits="BOOKMEBUS.SearchTicket" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
   
        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
        <script src="https://code.jquery.com/ui/1.13.1/jquery-ui.min.js"></script>
        <script>
            $(function () {
                $(".datepicker").datepicker({ dateFormat: 'yy-mm-dd' });
            });

            function switchOriginDestination() {
                var origin = $('#<%= ddlOrigin.ClientID %>').val();
                var destination = $('#<%= ddlDestination.ClientID %>').val();
                
                $('#<%= ddlOrigin.ClientID %>').val(destination);
                $('#<%= ddlDestination.ClientID %>').val(origin);
            }
        </script>
    <h2>Search Bus Tickets</h2>
    <asp:Label ID="Label1" runat="server" Text="Origin: "></asp:Label>
    <asp:DropDownList ID="ddlOrigin" runat="server"></asp:DropDownList>
    <asp:Button ID="btnSwitch" runat="server" Text="Switch" OnClientClick="switchOriginDestination(); return false;" />
    <asp:Label ID="lblDestination" runat="server" Text="Destination: "></asp:Label>
    <asp:DropDownList ID="ddlDestination" runat="server"></asp:DropDownList>
    <asp:Label ID="lblDepartureDate" runat="server" Text="Departure Date: "></asp:Label>
    <asp:TextBox ID="txtDepartureDate" runat="server" CssClass="datepicker" OnTextChanged="txtDepartureDate_TextChanged"></asp:TextBox>
    <asp:Button ID="btnSearch" runat="server" Text="Search" OnClick="btnSearch_Click" />
    <br />
    <br />
    <asp:ListView ID="lvRoutes" runat="server">
        <ItemTemplate>
            <tr>
                <td><%# Eval("BusNumber") %></td>
                <td><%# Eval("Origin") %></td>
                <td><%# Eval("Destination") %></td>
                <td><%# Eval("DepartureDate", "{0:yyyy-MM-dd}") %></td>
                <td><%# Eval("DepartureTime", "{0:hh\\:mm}") %></td>
                <td><%# Eval("ArrivalTime", "{0:hh\\:mm}") %></td>
                <td>
                    <asp:Button ID="btnBuy" runat="server" Text="Buy Ticket" CommandName="BuyTicket" 
                    CommandArgument='<%# Eval("RouteID") %>' PostBackUrl='<%# "~/PassengerDetail.aspx?RouteID=" + Eval("RouteID") %>' />
                </td>
            </tr>
        </ItemTemplate>
        <LayoutTemplate>
            <table border="1">
                <tr>
                    <th>Bus Number</th>
                    <th>Origin</th>
                    <th>Destination</th>
                    <th>Departure Date</th>
                    <th>Departure Time</th>
                    <th>Arrival Time</th>
                    <th>Actions</th>
                </tr>
                <tbody>
                    <asp:PlaceHolder ID="itemPlaceholder" runat="server"></asp:PlaceHolder>
                </tbody>
            </table>
        </LayoutTemplate>
    </asp:ListView>
</asp:Content>

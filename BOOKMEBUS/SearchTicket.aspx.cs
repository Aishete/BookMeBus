using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BOOKMEBUS
{
    public partial class SearchTicket : System.Web.UI.Page
    {

        private string connectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                PopulateDropDownLists();
            }
        }

        private void PopulateDropDownLists()
        {
            string connectionString = "Data Source=DESKTOP-63T3P23;Initial Catalog=BookingTicketDB;Integrated Security=True;";
            using (SqlConnection cnn = new SqlConnection(connectionString))
            {
                try
                {
                    cnn.Open();

                    // Populate Origin DropDownList
                    string query = "SELECT DISTINCT Origin FROM tblRoutes";
                    SqlDataAdapter da = new SqlDataAdapter(query, cnn);
                    DataTable dt = new DataTable();
                    da.Fill(dt);

                    ddlOrigin.DataSource = dt;
                    ddlOrigin.DataTextField = "Origin";
                    ddlOrigin.DataValueField = "Origin";
                    ddlOrigin.DataBind();
                    ddlOrigin.Items.Insert(0, new ListItem("Select Origin", ""));

                    // Populate Destination DropDownList
                    query = "SELECT DISTINCT Destination FROM tblRoutes";
                    da = new SqlDataAdapter(query, cnn);
                    dt = new DataTable();
                    da.Fill(dt);

                    ddlDestination.DataSource = dt;
                    ddlDestination.DataTextField = "Destination";
                    ddlDestination.DataValueField = "Destination";
                    ddlDestination.DataBind();
                    ddlDestination.Items.Insert(0, new ListItem("Select Destination", ""));
                }
                catch (Exception ex)
                {
                    Response.Write("An error occurred while populating drop-down lists: " + ex.Message);
                }
            }
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            string connectionString = "Data Source=DESKTOP-63T3P23;Initial Catalog=BookingTicketDB;Integrated Security=True;";
            string origin = ddlOrigin.SelectedValue;
            string destination = ddlDestination.SelectedValue;
            string departureDate = txtDepartureDate.Text;

            if (string.IsNullOrEmpty(origin) || string.IsNullOrEmpty(destination) || string.IsNullOrEmpty(departureDate))
            {
                // Handle the case where the user has not selected a valid origin, destination, or date.
                return;
            }

            using (SqlConnection cnn = new SqlConnection(connectionString))
            {
                try
                {
                    cnn.Open();

                    string query = "SELECT * FROM tblRoutes WHERE Origin = @Origin AND Destination = @Destination AND DepartureDate = @DepartureDate";
                    SqlCommand cmd = new SqlCommand(query, cnn);
                    cmd.Parameters.AddWithValue("@Origin", origin);
                    cmd.Parameters.AddWithValue("@Destination", destination);
                    cmd.Parameters.AddWithValue("@DepartureDate", departureDate);

                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    DataTable dt = new DataTable();
                    da.Fill(dt);

                    lvRoutes.DataSource = dt;
                    lvRoutes.DataBind();
                }
                catch (Exception ex)
                {
                    Response.Write("An error occurred while searching for routes: " + ex.Message);
                }
            }
        }

        protected void lvRoutes_ItemCommand(object sender, ListViewCommandEventArgs e)
        {
            if (e.CommandName == "BuyTicket")
            {
                int routeID = Convert.ToInt32(e.CommandArgument);
                Response.Redirect("~/PassengerDetail.aspx?RouteID=" + routeID);
            }
        }

        protected void txtDepartureDate_TextChanged(object sender, EventArgs e)
        {

        }
    }
}
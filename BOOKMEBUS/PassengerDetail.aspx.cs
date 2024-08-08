using nmessagebox;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BOOKMEBUS
{
    public partial class PassengerDetail : System.Web.UI.Page
    {
        private const string connectionString = "Data Source=DESKTOP-63T3P23;Initial Catalog=BookingTicketDB;Integrated Security=True;";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                AddDatatolv();
            }
        }

        protected void AddDatatolv()
        {

            MessageBox obj = new MessageBox();

            using (SqlConnection cnn = new SqlConnection(connectionString))
            {
                try
                {
                    string sql = "SELECT * FROM Passengers";
                    SqlCommand command = new SqlCommand(sql, cnn);
                    cnn.Open();
                    SqlDataReader sqlReader = command.ExecuteReader();

                    if (sqlReader.HasRows)
                    {
                        listView.DataSource = sqlReader;
                        listView.DataBind();
                    }
                    else
                    {
                        obj.MsgBox("No rows found.", this.Page, this);
                    }

                    sqlReader.Close();
                }
                catch (Exception ex)
                {
                    obj.MsgBox("Error: " + ex.Message, this.Page, this);
                }
            }
        }

        protected void btnadd_Click(object sender, EventArgs e)
        {
            try
            {
                AddDatatoDb();
                AddDatatolv();
            }
            catch (Exception ex)
            {
                MessageBox obj = new MessageBox();
                obj.MsgBox("Error: " + ex.Message, this.Page, this);
            }
        }

        protected void AddDatatoDb()
        {

            MessageBox obj = new MessageBox();

            using (SqlConnection cnn = new SqlConnection(connectionString))
            {
                try
                {
                    string sql = "INSERT INTO Passengers (pasName, pasGender, pasPhone, pasEmail, pasConfirmEmail, pasNationality, pasSeat) " +
                                 "VALUES (@Name, @Gender, @Phone, @Email, @ConfirmEmail, @Nationality, @Seat)";

                    SqlCommand command = new SqlCommand(sql, cnn);
                    command.Parameters.AddWithValue("@Name", txtname.Text);
                    command.Parameters.AddWithValue("@Gender", txtgender.Text);
                    command.Parameters.AddWithValue("@Phone", txtphone.Text);
                    command.Parameters.AddWithValue("@Email", txtemail.Text);
                    command.Parameters.AddWithValue("@ConfirmEmail", txtconfirmemail.Text);
                    command.Parameters.AddWithValue("@Nationality", txtnationality.Text);
                    command.Parameters.AddWithValue("@Seat", txtseat.Text);

                    cnn.Open();
                    command.ExecuteNonQuery();
                    obj.MsgBox("One record is added into Database", this.Page, this);
                }
                catch (Exception ex)
                {
                    obj.MsgBox("Error: " + ex.Message, this.Page, this);
                }
            }
        }

        protected void listView_ItemCommand(object sender, ListViewCommandEventArgs e)
        {
            MessageBox obj = new MessageBox();

            if (e.CommandName == "SelectedItem")
            {
                try
                {
                    int curid = Convert.ToInt32(e.CommandArgument);
                    Label lname = (Label)e.Item.FindControl("Name");
                    Label lgender = (Label)e.Item.FindControl("Gender");
                    Label lphone = (Label)e.Item.FindControl("Phone");
                    Label lemail = (Label)e.Item.FindControl("Email");
                    Label lconfirmemail = (Label)e.Item.FindControl("ConfirmEmail");
                    Label lnationality = (Label)e.Item.FindControl("Nationality");
                    Label lseat = (Label)e.Item.FindControl("Seat");

                    txtid.Text = curid.ToString();
                    txtname.Text = lname.Text;
                    txtgender.Text = lgender.Text;
                    txtphone.Text = lphone.Text;
                    txtemail.Text = lemail.Text;
                    txtconfirmemail.Text = lconfirmemail.Text;
                    txtnationality.Text = lnationality.Text;
                    txtseat.Text = lseat.Text;

                    txtid.Enabled = false;
                }
                catch (Exception ex)
                {
                    obj.MsgBox("Error: " + ex.Message, this.Page, this);
                }
            }
        }

        protected void btnclear_Click(object sender, EventArgs e)
        {
            ClearFormTextBox();
            txtid.Enabled = true;
        }

        protected void btnupdate_Click(object sender, EventArgs e)
        {
            try
            {
                updatedb();
                AddDatatolv();
            }
            catch (Exception ex)
            {
                MessageBox obj = new MessageBox();
                obj.MsgBox("Error: " + ex.Message, this.Page, this);
            }
        }

        protected void updatedb()
        {
            MessageBox obj = new MessageBox();

            using (SqlConnection cnn = new SqlConnection(connectionString))
            {
                try
                {
                    string sql = "UPDATE Passengers SET pasName = @Name, pasGender = @Gender, pasPhone = @Phone, " +
                                 "pasEmail = @Email, pasConfirmEmail = @ConfirmEmail, pasNationality = @Nationality, " +
                                 "pasSeat = @Seat WHERE pasId = @Id";

                    SqlCommand command = new SqlCommand(sql, cnn);
                    command.Parameters.AddWithValue("@Name", txtname.Text);
                    command.Parameters.AddWithValue("@Gender", txtgender.Text);
                    command.Parameters.AddWithValue("@Phone", txtphone.Text);
                    command.Parameters.AddWithValue("@Email", txtemail.Text);
                    command.Parameters.AddWithValue("@ConfirmEmail", txtconfirmemail.Text);
                    command.Parameters.AddWithValue("@Nationality", txtnationality.Text);
                    command.Parameters.AddWithValue("@Seat", txtseat.Text);
                    command.Parameters.AddWithValue("@Id", txtid.Text);

                    cnn.Open();
                    command.ExecuteNonQuery();
                    obj.MsgBox("One record is updated in Database", this.Page, this);
                }
                catch (Exception ex)
                {
                    obj.MsgBox("Error: " + ex.Message, this.Page, this);
                }
            }
        }

        private void ClearFormTextBox()
        {
            txtid.Text = "";
            txtname.Text = "";
            txtgender.Text = "";
            txtphone.Text = "";
            txtemail.Text = "";
            txtconfirmemail.Text = "";
            txtnationality.Text = "";
            txtseat.Text = "";
        }

        protected void btndelete_Click(object sender, EventArgs e)
        {

        }
    }
}
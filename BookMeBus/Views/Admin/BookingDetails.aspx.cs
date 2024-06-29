using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BookMeBus.Views.Admin
{
    public partial class BookingDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Setting value attributes for the checkboxes
                chkSeat1.Attributes["value"] = "1";
                chkSeat2.Attributes["value"] = "2";
                chkSeat3.Attributes["value"] = "3";
                chkSeat4.Attributes["value"] = "4";
                chkSeat5.Attributes["value"] = "5";
            }

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {

        }

        protected void txtSelectedSeat_TextChanged(object sender, EventArgs e)
        {

        }
    }
}
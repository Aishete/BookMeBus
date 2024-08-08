using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;

namespace nmessagebox
{
    public class MessageBox
    {
        //calling :  ob.MsgBox("Value: " + item, this.Page, this);
        public void MsgBox(String ex, Page pg, Object obj)
        {
            string s = 
             "<SCRIPT language='javascript'>" +
             "alert('" + ex.Replace("\r\n", "\\n").Replace("'", "") + "'); " +
             "" +
             "</SCRIPT>";
            Type cstype = obj.GetType();
            ClientScriptManager cs = pg.ClientScript;
            cs.RegisterClientScriptBlock(cstype, s, s.ToString());
        }
    }
}
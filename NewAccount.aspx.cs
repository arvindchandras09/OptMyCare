using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OptMyCare
{
    public partial class NewAccount : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            txturname.Focus();
        }

        protected void HomePage_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("/Home.aspx");
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            String user_name = txturname.Text.ToString();
            String password = txtpasswd.Text.ToString();
        }
    }
}
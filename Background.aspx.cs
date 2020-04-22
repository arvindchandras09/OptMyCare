using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OptMyCare
{
    public partial class Background : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnReturnBackToHomePage_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Home.aspx");
        }
    }
}
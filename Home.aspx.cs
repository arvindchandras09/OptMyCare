﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OptMyCare
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnPeopleConnecting_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("/Patient.aspx");
        }

        protected void CreateNewAccount_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("/NewAccount.aspx");
        }
    }
}
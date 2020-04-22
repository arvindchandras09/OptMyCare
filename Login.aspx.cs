using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OptMyCare
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            txturname.Focus();
        }

        protected void button1_click(object sender, EventArgs e)
        {
            DataSet dsUserExists = new DataSet("TimeRanges");

            SqlConnection conn = new SqlConnection(ConfigurationManager.AppSettings["myConnectionString"]);
            SqlCommand sqlComm = new SqlCommand("[sp_IsUserExists]", conn);
            sqlComm.Parameters.AddWithValue("@user_name", txturname.Text.ToString());
            sqlComm.Parameters.AddWithValue("@password", txtpasswd.Text.ToString());

            sqlComm.CommandType = CommandType.StoredProcedure;

            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = sqlComm;

            da.Fill(dsUserExists);
            Cache["login_details"] = dsUserExists;
            if (dsUserExists.Tables[0].Rows.Count > 0)
            {
                DataSet dataSet = ((DataSet)Cache["login_details"]).Copy();
                Int32 login_type = Convert.ToInt32(dsUserExists.Tables[0].Rows[0]["login_type"]);
                if (login_type == 2)
                {
                    Response.Redirect("Home.aspx");
                }
                else
                {
                    
                }
            }
            else
            {
                lblInvalidLogin.Visible = true;
                lblInvalidLogin.Text = "Invalid Login";
            }
        }
    }
}
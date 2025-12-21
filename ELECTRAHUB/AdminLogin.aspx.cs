using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ELECTRAHUB
{
    public partial class AdminLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string user = txtUsername.Text.Trim();
            string pass = txtPassword.Text.Trim();
            if (user == "admin" && pass == "admin123")
            {
                Response.Redirect("AdminDashboard.aspx");
            }
            else
            {
                Lblmsg.Text = "Invalid Credentials";
            }
        }
    }
}
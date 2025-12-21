using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ELECTRAHUB
{
    public partial class Info : System.Web.UI.Page
    {
        MySqlConnection con = new MySqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["CONNAME"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                L2.Text = Session["VoterCardNumber"].ToString();
                string query = "SELECT * FROM candidate_info";
                MySqlCommand cmd = new MySqlCommand(query, con);
                MySqlDataAdapter DA = new MySqlDataAdapter(cmd);
                DataSet DS = new DataSet();
                DA.Fill(DS);
                GridView1.DataSource = DS;
                GridView1.DataBind();

            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Session["CandidateName"] = GridView1.SelectedRow.Cells[1].Text;
            Session["PartyName"] = GridView1.SelectedRow.Cells[3].Text;

            Response.Redirect("VoteConfirmation.aspx");
        }
    }
}
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
    public partial class Result : System.Web.UI.Page
    {
        MySqlConnection con = new MySqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["CONNAME"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
            string query = "SELECT candidatename,partyname,count(candidatename) as  totalvotes FROM voting_info group by candidatename, partyname";
            MySqlCommand cmd = new MySqlCommand(query, con);
            MySqlDataAdapter DA = new MySqlDataAdapter(cmd);
            DataSet DS = new DataSet();
            DA.Fill(DS);
            GridView1.DataSource = DS;
            GridView1.DataBind();
        }

       
        }
    }

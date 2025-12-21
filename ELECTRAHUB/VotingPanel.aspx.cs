using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using MySql.Data.MySqlClient;

namespace ELECTRAHUB
{
    public partial class VotingPanel : System.Web.UI.Page
    {
        MySqlConnection con = new MySqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["CONNAME"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {

          

        }


        protected void btnVerify_Click(object sender, EventArgs e)
        {
            try
            {

                string VoterCardNumber = txtVoterNo.Text.Trim();
                string VoterID = txtVoterID.Text.Trim();

                if (string.IsNullOrEmpty(VoterID) || string.IsNullOrEmpty(VoterCardNumber))
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Please enter all details!');", true);
                    return;
                }
                con.Open();
                string checkVote = "SELECT * FROM voting_info WHERE VoterCardNumber=@VoterCardNumber ";
                MySqlCommand cmd = new MySqlCommand(checkVote, con);
                cmd.Parameters.AddWithValue("@VoterCardNumber", VoterCardNumber);
                MySqlDataReader dr = cmd.ExecuteReader();

                if (dr.HasRows)
                {

                    dr.Close();
                    con.Close();

                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('You have already voted!');", true);
                    return;

                }
                else
                {
                    dr.Close();
                    string query = "SELECT * FROM voter_info WHERE VoterID=@VoterID AND VoterCardNumber=@VoterCardNumber";
                    MySqlCommand cmd2 = new MySqlCommand(query, con);
                    cmd2.Parameters.AddWithValue("@VoterID", VoterID);
                    cmd2.Parameters.AddWithValue("@VoterCardNumber", VoterCardNumber);

                    MySqlDataReader dr2 = cmd2.ExecuteReader();
                    if (dr2.HasRows==false)
                    {
                        dr2.Close();
                        con.Close();
                        ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Invalid ID or VoterCardNumber!');", true);
                        return;
                    }
                    dr2.Close();
                    con.Close();

                    Session["VoterID"] = VoterID;
                    Session["VoterCardNumber"] = VoterCardNumber;
                    Response.Redirect("Info.aspx");

                }
            }
            catch (Exception ex)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", $"alert('Error: {ex.Message}');", true);
            }
        }

        
    }
}
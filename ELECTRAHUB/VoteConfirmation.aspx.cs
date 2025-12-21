using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using MySql.Data.MySqlClient;

namespace ELECTRAHUB
{
    public partial class VoteConfirmation : System.Web.UI.Page
    {
        MySqlConnection con = new MySqlConnection(
         ConfigurationManager.ConnectionStrings["CONNAME"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                InsertVoteData();
            }

        }
        private void InsertVoteData()
        {
      
                // Example: values stored in Session during voting
                string voterCard = Session["VoterCardNumber"].ToString();
                string candidate = Session["CandidateName"].ToString();
                string party = Session["PartyName"].ToString();
                string voteDate = DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss");


                con.Open();

                string query = @"INSERT INTO voting_info  (VoterCardNumber, CandidateName, PartyName, VoteDate)  VALUES (@voter, @candidate, @party, @voteDate)";
                using (MySqlConnection con = new MySqlConnection(
                  ConfigurationManager.ConnectionStrings["CONNAME"].ConnectionString))
                {

                    MySqlCommand cmd = new MySqlCommand(query, con);
                    { 
                    cmd.Parameters.AddWithValue("@voter", voterCard);
                    cmd.Parameters.AddWithValue("@candidate", candidate);
                    cmd.Parameters.AddWithValue("@party", party);
                    cmd.Parameters.AddWithValue("@voteDate", voteDate);
                    con.Open();
                    cmd.ExecuteNonQuery();

                }
            }
        }
        }
    }

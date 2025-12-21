using Org.BouncyCastle.Tsp;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ELECTRAHUB
{
    public partial class Candidatelist : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnVote_Click(object sender, EventArgs e)
        {
            Response.Write(Session["VOTERID"].ToString());
            string VID = Session["VOTERID"].ToString();

            Response.Redirect("VoteConfirmation.aspx");
        }
    }
}
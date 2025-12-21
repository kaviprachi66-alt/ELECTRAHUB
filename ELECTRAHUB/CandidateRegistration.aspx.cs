using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;

namespace ELECTRAHUB
{
    public partial class CandidateRegistration : System.Web.UI.Page
    {
        MySqlConnection CONN = new MySqlConnection();
    
        protected void Page_Load(object sender, EventArgs e)
        {
            string AA = ConfigurationManager.ConnectionStrings["CONNAME"].ConnectionString;
            CONN = new MySqlConnection(AA);
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if(txtName.Text== "")
            {
                Response.Write("<script>alert('Enter Name')<Script>");
                return;
            }
            if (txtContact.Text == "")
            {
                Response.Write("<script>alert('Enter Contact No')</script>");
                return;
            }
            string PPATH = Server.MapPath("~/images/") + fuPartySymbol.FileName;
            string FPATH = ("~/Images/") + fuPartySymbol.FileName;
            string PPATH1 = Server.MapPath("~/images/") + fuCandidateImage.FileName;
            string FPATH1 = ("~/Images/") + fuCandidateImage.FileName;
            CONN.Open();
            MySqlCommand CMD = new MySqlCommand();
            CMD.CommandText = "Insert into candidate_info(Name,Age,Gender,PartyName,Constituency,Contact,Address,PartySymbol,CandidateImage) values('" + txtName.Text + "','" + txtAge.Text + "','" + ddlGender.SelectedItem + "','" + DropDownList1.SelectedItem + "','" + txtConstituency.Text + "','" + txtContact.Text + "','" + txtAddress.Text + "','" + FPATH + "','" + FPATH1 + "')";
            CMD.Connection = CONN;
            CMD.ExecuteNonQuery();
            CONN.Close();
            fuPartySymbol.SaveAs(PPATH);
            fuCandidateImage.SaveAs(PPATH1);
            txtName.Text = "";
            txtContact.Text = "";
            Response.Write("<script>alert('Record Inserted')</script>");
        }

       
    }
}
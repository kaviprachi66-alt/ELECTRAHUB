using System;
using System.Collections;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using MySql.Data.MySqlClient;
namespace ELECTRAHUB
{
    public partial class VoteRegistration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            // Date of Birth se age calculate karna
            DateTime dob;
            if (!DateTime.TryParse(txtDOB.Text, out dob))
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Please enter a valid Date of Birth');", true);
                return;
            }

            int age = DateTime.Now.Year - dob.Year;
            if (DateTime.Now.DayOfYear < dob.DayOfYear)
                age--;

            if (age < 18)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('You must be at least 18 years old to register as a voter.');", true);
                return;
           
        }

        // Voter Card Number auto generate
        string VoterCardNumber = "VTR" + DateTime.Now.Ticks.ToString().Substring(10);

        // Database connection
        string connStr = ConfigurationManager.ConnectionStrings["CONNAME"].ConnectionString;
            using (MySqlConnection con = new MySqlConnection(connStr))
            {
                string query = @"INSERT INTO voter_info 
             (VoterCardNumber, ElectorsName, DOB, Gender, FatherName, Nationality, Contact, State, Address, Verified)
                             VALUES 
             (@VoterCardNumber, @ElectorsName, @DOB, @Gender, @FatherName, @Nationality, @Contact, @State, @Address, @Verified )";
             using (MySqlCommand cmd = new MySqlCommand(query, con))
                {
                    cmd.Parameters.AddWithValue("@VoterCardNumber", VoterCardNumber);
                    cmd.Parameters.AddWithValue("@ElectorsName", txtElectorName.Text.Trim());
                    cmd.Parameters.AddWithValue("@DOB", dob);
                    cmd.Parameters.AddWithValue("@Gender", ddlGender.SelectedValue);
                    cmd.Parameters.AddWithValue("@FatherName", txtFather.Text.Trim());
                    cmd.Parameters.AddWithValue("@Nationality", ddlNationality.SelectedValue);
                    cmd.Parameters.AddWithValue("@Contact", txtContact.Text.Trim());
                    cmd.Parameters.AddWithValue("@State", ddlState.SelectedValue);
                    cmd.Parameters.AddWithValue("@Address", txtAddress.Text.Trim());
                            cmd.Parameters.AddWithValue("@Verified", false);

                    con.Open();
                    int rows = cmd.ExecuteNonQuery();
    con.Close();

                    if (rows > 0)
                    {
                        ClientScript.RegisterStartupScript(this.GetType(), "alert",
                            $"alert('Registration Successful! Your Voter Card Number is: {VoterCardNumber}');", true);
    }
                    else
                    {
                        ClientScript.RegisterStartupScript(this.GetType(), "alert",
                            "alert('Registration failed. Please try again.');", true);
    }
}
}
    }
}
}
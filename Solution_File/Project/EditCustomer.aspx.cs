using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Project
{
    public partial class EditCustomer : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            SqlConnection con = new SqlConnection(cs);
                var cmd = new SqlCommand("insert into Customers values (@customername, @phonenumber, @dob, @gender, @address, @email, @city)", con);
                cmd.Parameters.AddWithValue("@customername", name.Text);
                cmd.Parameters.AddWithValue("@phonenumber", phonenumber.Text);
                cmd.Parameters.AddWithValue("@dob", dob.Text);
                cmd.Parameters.AddWithValue("@gender", ddlgender.SelectedValue);
                cmd.Parameters.AddWithValue("@address", address.Text);
                cmd.Parameters.AddWithValue("@email", email.Text);
                cmd.Parameters.AddWithValue("@city", city.Text);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();

                lblmgs.Visible = true;
                lblmgs.Text = "Your Data has been saved Successfuly";

           
        }
    }
}


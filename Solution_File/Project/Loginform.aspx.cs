using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString);
        protected void login_Click(object sender, EventArgs e)
        {

            if (isvalid())
            {
                using (con)
                {
                    using (SqlCommand cmd = new SqlCommand("sp_loginverify", con))
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.AddWithValue("@username", username.Text.Trim());
                        cmd.Parameters.AddWithValue("@password", password.Text.Trim());

                        con.Open();
                        SqlDataReader sdr = cmd.ExecuteReader();
                        if (sdr.Read())
                        {
                            this.Visible = false;
                            Response.Redirect("Defaultpage.aspx");
                        }
                        else
                        {
                            Label1.Text = "Invalid login";
                        }
                    }

                }
            }

        }

        private bool isvalid()
        {
            if (username.Text.Trim() == string.Empty)
            {
                Label1.Text = "User Name is Require";
                username.Focus();
                return false;
            }
            if (password.Text.Trim() == string.Empty)
            {
                Label1.Text = "Password is required";
                password.Focus();
                return false;
            }
            return true;
        }
    }

}

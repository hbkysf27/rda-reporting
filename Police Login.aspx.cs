using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RDA
{
    public partial class Police_Login : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["rdacon"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            checktxt();
        }


        void login()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * from InsRdaPol_tbl where userID='" + txtid.Text.Trim() + "'AND pwd='" + txtpwd.Text.Trim() + "';", con);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        Response.Write("<script>alert('Login Successful');</script>");

                        Session["username"] = dr.GetValue(6).ToString();
                        Session["fullname"] = dr.GetValue(0).ToString();
                        Session["role"] = "Police";
                        Session["status"] = dr.GetValue(8).ToString();
                    }
                    Response.Redirect("Police.aspx");
                }
                else
                {
                    Response.Write("<script>alert('Invalid Credentials');</script>");
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('Exception Occured " + ex + "');</script>");
            }
        }

        void checktxt()
        {
            if (txtid.Text == "" || txtpwd.Text == "")
            {
                Response.Write("<script>alert('Please Enter Required Fields');</script>");
            }
            else
            {
                login();
            }
        }
    }
}
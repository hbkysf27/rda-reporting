using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data.SqlClient;
using System.Data;

namespace RDA
{
    
    public partial class Driver_Profile : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["rdacon"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            getdriverbyid();
        }

        //upddate account
        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        //delete account
        protected void Button2_Click(object sender, EventArgs e)
        {

        }

        protected void Button3_Click(object sender, EventArgs e)
        {

        }




        void getdriverbyid()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * from driver_acc where userID='" + Session["username"].ToString() + "';", con);
                
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                GridView1.DataSource = dt;
                GridView1.DataBind();
                
                             
                
               
                 
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('Exception Occured " + ex + "');</script>");
            }



        }



    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

namespace RDA
{

    public partial class User_Signup : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["rdacon"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        //signup button click event
        protected void Button1_Click(object sender, EventArgs e)
        {

            if (checkmemberexist())
            {
                Response.Write("<script>alert('User Already Exists with the Same ID, Try new ID');</script>");
            }
            else
            {
                signupnewuser();
            }
           
        }




        //user defined method
        bool checkmemberexist()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();

                }
                SqlCommand cmd = new SqlCommand("SELECT * from driver_reg_tbl where userID='"+txtuserid.Text.Trim()+"';", con);

                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                if(dt.Rows.Count>=1)
                {
                    return true;

                }
                else
                {
                    return false;
                }

               
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
                return false;
            }
            
        }





        //user defined method

        void signupnewuser()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();

                }
                SqlCommand cmd = new SqlCommand("INSERT INTO driver_reg_tbl (fullname,dob,phone,email,nic,insurance_num,veh_reg_num,userID,pwd,acc_status) VALUES(@fullname,@dob,@phone,@email,@nic,@insurance_num,@veh_reg_num,@userID,@pwd,@acc_status)", con);

                cmd.Parameters.AddWithValue("@fullname", txtfname.Text.Trim());
                cmd.Parameters.AddWithValue("@dob", txtdob.Text.Trim());
                cmd.Parameters.AddWithValue("@phone", txtphone.Text.Trim());
                cmd.Parameters.AddWithValue("@email", txtemail.Text.Trim());
                cmd.Parameters.AddWithValue("@nic", txtnic.Text.Trim());
                cmd.Parameters.AddWithValue("@insurance_num", txtinsurance.Text.Trim());
                cmd.Parameters.AddWithValue("@veh_reg_num", txtvehreg.Text.Trim());
                cmd.Parameters.AddWithValue("@userID", txtinsurance.Text.Trim());
                cmd.Parameters.AddWithValue("@pwd", txtpwd.Text.Trim());
                cmd.Parameters.AddWithValue("@acc_status", "Pending");

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Sign-Up Successfull, Go to User Login to Access Your Account');</script>");
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }




    }
}
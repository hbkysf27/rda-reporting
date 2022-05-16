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
    public partial class Create_Authorities_Acc : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["rdacon"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
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
                    SqlCommand cmd = new SqlCommand("SELECT * from InsRdaPol_tbl where userID='" + txtid.Text.Trim() + "';", con);

                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    DataTable dt = new DataTable();
                    da.Fill(dt);

                    if (dt.Rows.Count >= 1)
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
                    SqlCommand cmd = new SqlCommand("INSERT INTO InsRdaPol_tbl (fullname,dob,phone,email,nic,acc_type,userID,pwd,acc_status) VALUES(@fullname,@dob,@phone,@email,@nic,@acc_type,@userID,@pwd,@acc_status)", con);

                    cmd.Parameters.AddWithValue("@fullname", txtfname.Text.Trim());
                    cmd.Parameters.AddWithValue("@dob", txtdob.Text.Trim());
                    cmd.Parameters.AddWithValue("@phone", txtphone.Text.Trim());
                    cmd.Parameters.AddWithValue("@email", txtemail.Text.Trim());
                    cmd.Parameters.AddWithValue("@nic", txtnic.Text.Trim());
                    cmd.Parameters.AddWithValue("@acc_type",acctype.SelectedItem.Value);
                    cmd.Parameters.AddWithValue("@userID", txtid.Text.Trim());
                    cmd.Parameters.AddWithValue("@pwd", txtpwd.Text.Trim());
                    cmd.Parameters.AddWithValue("@acc_status", "Pending");

                    cmd.ExecuteNonQuery();
                    con.Close();
                    Response.Write("<script>alert('Sign-Up Successfull, Go to User Login to Access Your Account');</script>");
                    Response.Redirect("Authority Login.aspx");
                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('" + ex.Message + "');</script>");
                }
            }
        }
    }
}

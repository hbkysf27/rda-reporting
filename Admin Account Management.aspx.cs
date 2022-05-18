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
    public partial class Admin_Account_Management : System.Web.UI.Page

    {
        string strcon = ConfigurationManager.ConnectionStrings["rdacon"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataBind();
        }
        //go button
        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            getuserbyid();
        }
        //active button
        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            updateMemberStatusByID("Active");
        }
        //pending button
        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            updateMemberStatusByID("Pending");
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            updateMemberStatusByID("Deactive");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            deleteuserbyid();
        }



        // user defined function

        bool checkifuserexists()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * from driver_acc where userID='" + txtid.Text.Trim() + "';", con);
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

        void deleteuserbyid()
        {
            if (checkifuserexists())
            {
                try
                {
                    SqlConnection con = new SqlConnection(strcon);
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();
                    }

                    SqlCommand cmd = new SqlCommand("DELETE from driver_acc WHERE userID='" + txtid.Text.Trim() + "'", con);

                    cmd.ExecuteNonQuery();
                    con.Close();
                    Response.Write("<script>alert('User Deleted Successfully');</script>");
                    clearForm();
                    GridView1.DataBind();

                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('" + ex.Message + "');</script>");
                }

            }
            else
            {
                Response.Write("<script>alert('Invalid User ID');</script>");
            }
        }



        //user defined function
        void getuserbyid()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * from driver_acc where userID='" + txtid.Text.Trim() + "'", con);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        txtname.Text = dr.GetValue(0).ToString();
                        txtstatus.Text = dr.GetValue(9).ToString();
                        txtdob.Text = dr.GetValue(1).ToString();
                        txtphone.Text = dr.GetValue(2).ToString();
                        txtemail.Text = dr.GetValue(3).ToString();


                    }

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
        void updateMemberStatusByID(string status)
        {
            if (checkifuserexists())
            {
                try
                {
                    SqlConnection con = new SqlConnection(strcon);
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();

                    }
                    SqlCommand cmd = new SqlCommand("UPDATE driver_acc SET acc_status='" + status + "' WHERE userID='" + txtid.Text.Trim() + "'", con);
                    cmd.ExecuteNonQuery();
                    con.Close();
                    GridView1.DataBind();
                    Response.Write("<script>alert('User Account Status Updated');</script>");
                    clearForm();


                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('" + ex.Message + "');</script>");
                }
            }
            else
            {
                Response.Write("<script>alert('Invalid User ID');</script>");
            }

        }

        void clearForm()
        {
            txtid.Text = "";
            txtname.Text = "";
            txtstatus.Text = "";
            txtdob.Text = "";
            txtphone.Text = "";
            txtemail.Text = "";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            checkinputs();
        }




        void checkinputs()
        {
            if (ctxtdob.Text == "" || ctxtemail.Text == "" || ctxtfname.Text == "" || ctxtnic.Text == "" || ctxtuname.Text == "" || ctxtpwd.Text == "" || ctxtphone.Text == "")
            {
                Response.Write("<script>alert('Please Fill out this form Completely');</script>");
            }
            else
            {
                fsign();
            }

            void fsign()
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

            bool checkmemberexist()
            {
                try
                {
                    SqlConnection con = new SqlConnection(strcon);
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();

                    }
                    SqlCommand cmd = new SqlCommand("SELECT * from InsRdaPol_tbl where userID='" + ctxtuname.Text.Trim() + "';", con);

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

                    cmd.Parameters.AddWithValue("@fullname", ctxtfname.Text.Trim());
                    cmd.Parameters.AddWithValue("@dob", ctxtdob.Text.Trim());
                    cmd.Parameters.AddWithValue("@phone", ctxtphone.Text.Trim());
                    cmd.Parameters.AddWithValue("@email", ctxtemail.Text.Trim());
                    cmd.Parameters.AddWithValue("@nic", ctxtnic.Text.Trim());
                    cmd.Parameters.AddWithValue("@acc_type", acctype.SelectedItem.Value);
                    cmd.Parameters.AddWithValue("@userID", ctxtuname.Text.Trim());
                    cmd.Parameters.AddWithValue("@pwd", ctxtpwd.Text.Trim());
                    cmd.Parameters.AddWithValue("@acc_status", "Pending");

                    cmd.ExecuteNonQuery();
                    con.Close();
                    Response.Write("<script>alert('Sign-Up Successfull, Go to User Login to Access Your Account');</script>");
                    clearfields();

                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('" + ex.Message + "');</script>");
                }
            }
        }
        void clearfields()
        {

            ctxtdob.Text = "";
            ctxtemail.Text = "";
            ctxtfname.Text = "";
            ctxtuname.Text = "";
            ctxtnic.Text = "";
            ctxtphone.Text = "";
            ctxtpwd.Text = "";
        }














    }
       
    }


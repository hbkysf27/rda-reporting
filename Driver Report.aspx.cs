using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RDA
{
    public partial class Driver_Report : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["rdacon"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            createreport();
        }
        void createreport()
        {
            try
            {


                SqlConnection con = new SqlConnection(strcon);

                string filepath = "~/Report_images/accreport.jpg";
                string filename = Path.GetFileName(FileUpload1.PostedFile.FileName);
                FileUpload1.SaveAs(Server.MapPath("Report_images/" + filename));
                filepath = "~/Report_images/" + filename;

                if (con.State == ConnectionState.Closed)
                {
                    con.Open();

                }
                SqlCommand cmd = new SqlCommand("INSERT INTO driver_report (userID,acc_img_link,cause,veh_type,acc_descr,langitude,longitude,province,report_status) VALUES(@userID,@acc_img_link,@cause,@veh_type,@acc_descr,@langitude,@longitude,@province,@report_status)", con);

                cmd.Parameters.AddWithValue("@userID", txtid.Text.Trim());
                cmd.Parameters.AddWithValue("@acc_img_link", filepath);
                cmd.Parameters.AddWithValue("@cause", txtcause.Text.Trim());
                cmd.Parameters.AddWithValue("@veh_type", dropdownvehtype.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@acc_descr", txtaccdescr.Text.Trim());
                cmd.Parameters.AddWithValue("@langitude", txtlang.Text.Trim());
                cmd.Parameters.AddWithValue("@longitude", txtlong.Text.Trim());
                cmd.Parameters.AddWithValue("@province", dropdownprovince.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@report_status", "Pending");

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Report Created Successfully');</script>");
                cleartext();

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
        void cleartext()
        {
            txtlong.Text = "";
            txtlang.Text = "";
            txtid.Text = "";
            txtcause.Text = "";
            txtaccdescr.Text = "";
        }



        protected void deleteacc_Click(object sender, EventArgs e)
        {
            deletedriver();
        }

        void deletedriver()
        {
            if (checkifdriverexists())
            {
                try
                {
                    SqlConnection con = new SqlConnection(strcon);
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();
                    }

                    SqlCommand cmd = new SqlCommand("DELETE from driver_acc WHERE userID='" + id.Text.Trim() + "'", con);

                    cmd.ExecuteNonQuery();
                    con.Close();



                    flogout();
                    Response.Redirect("Home.aspx");



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

        bool checkifdriverexists()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * from driver_acc where userID='" + id.Text.Trim() + "';", con);
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

        protected void primary_Click(object sender, EventArgs e)
        {
            getdriverbyid();
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
                SqlCommand cmd = new SqlCommand("SELECT * from driver_acc where userID='" + id.Text.Trim() + "'", con);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        updname.Text = dr.GetValue(0).ToString();
                        updins.Text = dr.GetValue(5).ToString();
                        updreg.Text = dr.GetValue(6).ToString();
                        updpwd.Text = dr.GetValue(8).ToString();
                        updemail.Text = dr.GetValue(3).ToString();


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
        void flogout()
        {
            Response.Write("<script>alert('User Deleted Successfully');</script>");
            Session.Abandon();
            Session.Remove("username");
            Session.Remove("fullname");
            Response.Redirect("Home.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            updatedriverbyid();

        }



        void updatedriverbyid()
        {
            if (checkifdriverexists())
            {

                try
                {
                    SqlConnection con = new SqlConnection(strcon);
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();
                    }
                    SqlCommand cmd = new SqlCommand("UPDATE driver_acc SET fullname=@fullname, insurance_num=@insurance_num, veh_reg_num=@veh_reg_num, pwd=@pwd, email=@email WHERE userID='" + id.Text.Trim() + "'", con);

                    
                    cmd.Parameters.AddWithValue("@fullname", updname.Text.Trim());
                    cmd.Parameters.AddWithValue("@insurance_num", updins.Text.Trim());
                    cmd.Parameters.AddWithValue("@veh_reg_num", updreg.Text.Trim());
                    cmd.Parameters.AddWithValue("@pwd", updpwd.Text.Trim());
                    cmd.Parameters.AddWithValue("@email", updemail.Text.Trim());


                    cmd.ExecuteNonQuery();
                    con.Close();
                    Response.Write("<script>alert('User Account Updated Successfully');</script>");
                    cleartext();


                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('" + ex.Message + "');</script>");
                }


            }
            else
            {
                Response.Write("<script>alert('Driver already Exists');</script>");
            }
        }




    }

}
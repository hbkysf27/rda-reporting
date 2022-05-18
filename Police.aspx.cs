using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.DataVisualization.Charting;

namespace RDA
{
    public partial class Police : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["rdacon"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataBind();
            
        }

        protected void deleterep_Click(object sender, EventArgs e)
        {
            deletereport();
        }

        bool checkifuserexists()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * from driver_report where userID='" + txtid.Text.Trim() + "';", con);
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

        void deletereport()
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

                    SqlCommand cmd = new SqlCommand("DELETE from driver_report WHERE userID='" + txtid.Text.Trim() + "'", con);

                    cmd.ExecuteNonQuery();
                    con.Close();
                    Response.Write("<script>alert('Report Deleted / Declined Successfully');</script>");
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
                SqlCommand cmd = new SqlCommand("SELECT * from driver_report where userID='" + txtid.Text.Trim() + "'", con);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        txtid.Text = dr.GetValue(0).ToString();
                        txtvehtype.Text = dr.GetValue(3).ToString();
                        txtstatus.Text = dr.GetValue(8).ToString();
                        txtprovince.Text = dr.GetValue(7).ToString();
                        txtlang.Text = dr.GetValue(2).ToString();
                        txtlong.Text = dr.GetValue(4).ToString();
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
        void updatereportstatus(string status)
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
                    SqlCommand cmd = new SqlCommand("UPDATE driver_report SET report_status='" + status + "' WHERE userID='" + txtid.Text.Trim() + "'", con);
                    cmd.ExecuteNonQuery();
                    GridView1.DataBind();
                    Response.Write("<script>alert('Report Status Updated');</script>");
                    clearForm();
                    con.Close();


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
            txtprovince.Text = "";
            txtstatus.Text = "";
            txtlang.Text = "";
            txtlong.Text = "";
            txtvehtype.Text = "";
        }

        protected void success_Click(object sender, EventArgs e)
        {
            updatereportstatus("Report Accepted");
        }

        protected void warning_Click(object sender, EventArgs e)
        {
            updatereportstatus("Report On Pending");
        }

        protected void danger_Click(object sender, EventArgs e)
        {
            updatereportstatus("Report Declined");
        }

        protected void primary_Click(object sender, EventArgs e)
        {
            getuserbyid();
        }

        protected void Chart1_Load(object sender, EventArgs e)
        {

        }


        



    }
}
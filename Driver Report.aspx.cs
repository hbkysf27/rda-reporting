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
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();

                }
                SqlCommand cmd = new SqlCommand("INSERT INTO driver_report (userID,acc_img_link,cause,veh_type,acc_descr,langitude,longitude,province,report_status) VALUES(@userID,@acc_img_link,@cause,@veh_type,@acc_descr,@langitude,@longitude,@province,@report_status)", con);

                cmd.Parameters.AddWithValue("@userID", txtid.Text.Trim());
                cmd.Parameters.AddWithValue("@acc_img_link", FileUpload1);
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
    }
}

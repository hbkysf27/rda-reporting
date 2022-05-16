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
    public partial class Authority_Login : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["rdacon"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {




        
          try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlDataAdapter sda=new SqlDataAdapter("SELECT * from InsRdaPol_tbl where userID='" + txtid.Text.Trim() + "'AND pwd='" + txtpwd.Text.Trim() + "' AND acc_type='"+acctype.SelectedItem.ToString()+"';", con);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                
                if (dt.Rows.Count>0)
                {
                    Response.Write("<script>alert('you are logged in as" + dt.Rows[6][5] + "')</script>");
                    if(acctype.SelectedIndex==0)
                    {
                        Server.Transfer("Police.aspx");
                    }
                    else if(acctype.SelectedIndex==1)
                    {
                        Server.Transfer("Insurance.aspx");
                    }
                    else if(acctype.SelectedIndex==2)
                    {
                        Server.Transfer("RDA.aspx");
                    }
                }
                else
                {
                    Response.Write("<script>alert('Invalid Credentials');</script>");
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('"+ex.ToString()+"');</script>");
            }
        }
    }
}
        
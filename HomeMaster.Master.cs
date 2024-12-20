﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RDA
{
    public partial class HomeMaster : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session["role"]==null)
                {
                    userlogin.Visible = true;
                    signup.Visible = true;
                    logout.Visible = false;
                    hellouser.Visible = false;
                    LinkButton6.Visible = true;//master page login button
                    LinkButton11.Visible = false;//police authority button
                    LinkButton12.Visible = false;//insurance authority button
                    LinkButton8.Visible = false;//rda authoritybutton
                    LinkButton10.Visible = false;//useracc management
                }
                else if(Session["role"].Equals("driver"))
                {
                    userlogin.Visible = false;
                    signup.Visible = false;
                    logout.Visible = true;
                    hellouser.Visible = true;
                    hellouser.Text ="Hello "+ Session["fullname"].ToString();
                    LinkButton6.Visible = true;//master page login button
                    LinkButton11.Visible = false;//police authority button
                    LinkButton12.Visible = false;//insurance authority button
                    LinkButton8.Visible = false;//rda authoritybutton
                    LinkButton10.Visible = false;//useracc management
                }

                else if (Session["role"].Equals("admin"))
                {
                    userlogin.Visible = false;
                    signup.Visible = false;
                    logout.Visible = true;
                    hellouser.Visible = true;
                    hellouser.Text = "Hello Admin".ToString();
                    LinkButton6.Visible = false;//master page login button
                    LinkButton11.Visible = true;//police authority button
                    LinkButton12.Visible = true;//insurance authority button
                    LinkButton8.Visible = true;//rda authoritybutton
                    LinkButton10.Visible = true;//useracc management
                }

                else if (Session["role"].Equals("Police"))
                {
                    userlogin.Visible = false;
                    signup.Visible = false;
                    logout.Visible = true;
                    hellouser.Visible = false;
                    hellouser.Visible = false;
                    LinkButton6.Visible = false;//master page login button
                    LinkButton11.Visible = false;//police authority button
                    LinkButton12.Visible = true;//insurance authority button
                    LinkButton8.Visible = true;//rda authoritybutton
                    LinkButton10.Visible = true;//useracc management
                    idrda.Visible = false;
                    idinsurance.Visible = false;
                    idpolice.Visible = true;
                }

                else if (Session["role"].Equals("Insurance"))
                {
                    userlogin.Visible = false;
                    signup.Visible = false;
                    logout.Visible = true;
                    hellouser.Visible = true;
                    hellouser.Visible = false;
                    LinkButton6.Visible = false;//master page login button
                    LinkButton11.Visible = true;//police authority button
                    LinkButton12.Visible = false;//insurance authority button
                    LinkButton8.Visible = true;//rda authoritybutton
                    LinkButton10.Visible = true;//useracc management
                    idrda.Visible = false;
                    idinsurance.Visible = true;
                    idpolice.Visible = false;
                }

                else if (Session["role"].Equals("RDA"))
                {
                    userlogin.Visible = false;
                    signup.Visible = false;
                    logout.Visible = true;
                    hellouser.Visible = true;
                    hellouser.Visible=false;
                    LinkButton6.Visible = false;//master page login button
                    LinkButton11.Visible = true;//police authority button
                    LinkButton12.Visible = true;//insurance authority button
                    LinkButton8.Visible = false;//rda authoritybutton
                    LinkButton10.Visible = true;//useracc management
                    idrda.Visible = true;
                    idinsurance.Visible = false;
                    idpolice.Visible = false;
                }



            }
            catch(Exception ex)
            {
                Response.Write(ex.ToString());
            }

        }

        protected void LinkButton9_Click(object sender, EventArgs e)
        {
            Response.Redirect("Driver Signup.aspx");
        }

        protected void LinkButton6_Click(object sender, EventArgs e)
        {
            Response.Redirect("Master Admin Login.aspx");
        }

        protected void LinkButton10_Click(object sender, EventArgs e)
        {
            Response.Redirect("Admin Account Management.aspx");
        }

        protected void LinkButton11_Click(object sender, EventArgs e)
        {
            Response.Redirect("Police Login.aspx");
        }

        protected void LinkButton12_Click(object sender, EventArgs e)
        {
            Response.Redirect("Insurance Login.aspx");
        }

        protected void LinkButton8_Click(object sender, EventArgs e)
        {
            Response.Redirect("RDA Login.aspx");
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Driver Login.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Driver Signup.aspx");
        }

        //logout button click event
        protected void logout_Click(object sender, EventArgs e)
        {
            Session["username"] = "";
            Session["fullname"] = "";
            Session["role"] = "";
            Session["status"] = "";



            userlogin.Visible = true;
            signup.Visible = true;
            logout.Visible = false;
            hellouser.Visible = false;
            LinkButton6.Visible = true;//master page login button
            LinkButton11.Visible = false;//police authority button
            LinkButton12.Visible = false;//insurance authority button
            LinkButton8.Visible = false;//rda authoritybutton
            LinkButton10.Visible = false;//useracc management
            idinsurance.Visible = false;
            idpolice.Visible = false;
            idrda.Visible = false;

            Response.Redirect("Home.aspx");
        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            Response.Redirect("View Accident.aspx");
        }

        protected void hellouser_Click(object sender, EventArgs e)
        {
            Response.Redirect("Driver Report.aspx");
        }

        protected void idpolice_Click(object sender, EventArgs e)
        {
            Response.Redirect("Police.aspx");
        }

        protected void idrda_Click(object sender, EventArgs e)
        {
            Response.Redirect("RDA.aspx");
        }

        protected void idinsurance_Click(object sender, EventArgs e)
        {
            Response.Redirect("Insurance.aspx");
        }
    }
}
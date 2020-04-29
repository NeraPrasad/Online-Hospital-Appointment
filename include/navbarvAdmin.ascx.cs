﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class include_navbar : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["AdminName"] != null)
        {
            lblHello.Text = Session["AdminName"].ToString();
            btnlogout.Visible = true;
            
        }

      
    }

    protected void btnlogout_Click(object sender, EventArgs e)
    {
        Session.RemoveAll();

        Response.Redirect("~/index.aspx");

        
    }
}
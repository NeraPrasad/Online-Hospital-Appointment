using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using MySql.Data.MySqlClient;
using System.Configuration;

public partial class include_navbar : System.Web.UI.UserControl
{
    MySqlCommand cmd = new MySqlCommand();
    MySqlConnection con = new MySqlConnection();
    MySqlDataAdapter sda = new MySqlDataAdapter();
    DataSet ds = new DataSet();



    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["UserName"] != null)
        {
            lblHello.Text = Session["UserName"].ToString();
            
            btnlogin.Visible = false;
            btnlogout.Visible = true;
            btnProfile.Visible = false;
            btnSingIn.Visible = false;
            HyperlinkApp.Visible = true;
            HyperlinkFeedBack.Visible = true;
            HyperlinkLogin.Visible = true;
            HyperlinkManual.Visible = false;
        }

        else
        {
            lblHello.Text = "Hello Visitor, Welcome!!";
            btnlogin.Visible = true;
            btnlogout.Visible = false;
            btnProfile.Visible = false;
            btnSingIn.Visible = true;
            HyperlinkApp.Visible = false;
            HyperlinkFeedBack.Visible = false;
            HyperlinkLogin.Visible = false;
            HyperlinkManual.Visible = true;
        }
    }
    protected void btnlogout_Click(object sender, EventArgs e)
    {
        Session.RemoveAll();
        Response.Redirect("~/index.aspx");
    }
    protected void btnlogin_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/reg/LoginUser.aspx");
    }

    protected void btnProfile_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/reg/ManageUserProfile.aspx");
    }
    protected void btnProfile_Click1(object sender, EventArgs e)
    {
       
        Response.Redirect("~/user/ManageUserProfile.aspx");
    }
    protected void btnSingIn_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/reg/RegisterUser.aspx");
    }
}
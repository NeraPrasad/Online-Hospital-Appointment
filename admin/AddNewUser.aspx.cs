using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using MySql.Data.MySqlClient;
using System.IO;

public partial class admin_CheckAppointment : System.Web.UI.Page
{
    string cs = "server=localhost;userid=root;password=;database=hospitaldb";

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            GVbind();
        }
    }

    void GVbind()
    {
        DataTable dtbl = new DataTable();

        MySqlConnection con = new MySqlConnection(cs);

        con.Open();
        MySqlDataAdapter sqlDa = new MySqlDataAdapter("SELECT * FROM hospitaldb.usertable", con);
        sqlDa.Fill(dtbl);

        GVAddUserNew.DataSource = dtbl;
        GVAddUserNew.DataBind();

    }
    protected void btnInsert_Click(object sender, EventArgs e)
    {
        if (checkemail() == true)
        {
            lblalreademsg.Text = "Email Already Registered";
            txtEmail.BackColor = System.Drawing.Color.PaleGreen;


        }
        else
        {
            try
            {

                string query = "INSERT INTO hospitaldb.usertable (UserName, UserMobile, UserEmail, UserHomeTown,UserPassword) VALUES ('" + txtName.Text + "','" + txtMobile.Text + "','" + txtEmail.Text + "','" + txtHomeTown.Text + "','" + txtPassword.Text + "')";

                MySqlConnection con = new MySqlConnection(cs);
                con.Open();

                MySqlCommand cmd = new MySqlCommand();

                cmd.CommandText = query;
                cmd.Connection = con;
                cmd.ExecuteNonQuery();

                con.Close();

                txtPassword.Text = "";
                txtName.Text = "";
                txtMobile.Text = "";
                txtHomeTown.Text = "";
                txtEmail.Text = "";

                GVbind();
            }

            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }

            finally
            {
                Response.Write("<script LANGUAGE='JavaScript' >alert('Add New User Succssfull')</script>");
            }
        }
    }
    private Boolean checkemail()
    {
        Boolean emailavailable = false;
        String mycon = "server=localhost;userid=root;password=;database=hospitaldb";
        String myquery = "Select * from hospitaldb.usertable where UserEmail='" + txtEmail.Text + "'";
        MySqlConnection con = new MySqlConnection(mycon);
        MySqlCommand cmd = new MySqlCommand();
        cmd.CommandText = myquery;
        cmd.Connection = con;
        MySqlDataAdapter da = new MySqlDataAdapter();
        da.SelectCommand = cmd;
        DataSet ds = new DataSet();
        da.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {
            emailavailable = true;

        }
        con.Close();

        return emailavailable;
    }

}
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
        MySqlDataAdapter sqlDa = new MySqlDataAdapter("SELECT * FROM hospitaldb.news", con);
        sqlDa.Fill(dtbl);

        GVnewsPost.DataSource = dtbl;
        GVnewsPost.DataBind();

    }




    protected void btnAddNew_Click(object sender, EventArgs e)
    {
        try
        {
            

            string query = "INSERT INTO hospitaldb.news (newsTitle) VALUES ('" + txttitle.Text + "')";

            MySqlConnection con = new MySqlConnection(cs);
            con.Open();

            MySqlCommand cmd = new MySqlCommand();

            cmd.CommandText = query;
            cmd.Connection = con;
            cmd.ExecuteNonQuery();

            con.Close();

            
            txttitle.Text = "";
            GVbind();
        

            Response.Write("<script LANGUAGE='JavaScript' >alert('Add News Succssfull')</script>");
        }

        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }

      
    }
    
}
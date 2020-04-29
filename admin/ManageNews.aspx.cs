using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using MySql.Data.MySqlClient;
using System.Configuration;

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
        MySqlDataAdapter sqlDa = new MySqlDataAdapter("SELECT idnews, newsTitle FROM hospitaldb.news", con);
        sqlDa.Fill(dtbl);

        GVNewNews.DataSource = dtbl;
        GVNewNews.DataBind();

    }

 
    


    protected void GVNewNews_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        int idnews = Convert.ToInt32(GVNewNews.DataKeys[e.RowIndex].Value.ToString());
        string newsTitle = ((TextBox)GVNewNews.Rows[e.RowIndex].Cells[1].Controls[0]).Text;
      
  

        using (MySqlConnection con = new MySqlConnection(cs))
        {
            con.Open();
            MySqlCommand cmd = new MySqlCommand("UPDATE hospitaldb.news SET newsTitle='" + newsTitle + "' WHERE idnews='" + idnews + "' ", con);

            int t = cmd.ExecuteNonQuery();
            if (t > 0)
            {
                Response.Write("<script> alert('Data has Updated') </script>");
                GVNewNews.EditIndex = -1;
                GVbind();
            }
        }
    }
    protected void GVNewNews_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GVNewNews.EditIndex = -1;
        GVbind();
    }
    protected void GVNewNews_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        int idnews = Convert.ToInt32(GVNewNews.DataKeys[e.RowIndex].Value.ToString());

        using (MySqlConnection con = new MySqlConnection(cs))
        {
            con.Open();

            MySqlCommand cmd = new MySqlCommand("DELETE FROM hospitaldb.news WHERE idnews='" + idnews + "' ", con);

            cmd.ExecuteNonQuery();



            GVbind();
            Response.Write("<script> alert('Data has Delect') </script>");
        }
    }
    protected void GVNewNews_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GVNewNews.EditIndex = e.NewEditIndex;
        GVbind();
    }
}
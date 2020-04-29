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
        MySqlDataAdapter sqlDa = new MySqlDataAdapter("SELECT * FROM hospitaldb.usertable", con);
        sqlDa.Fill(dtbl);

        GVAddUserNew.DataSource = dtbl;
        GVAddUserNew.DataBind();

    }

    protected void GVAddUserNew_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GVAddUserNew.EditIndex = e.NewEditIndex;
        GVbind();
    }
    protected void GVAddUserNew_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        int idUser = Convert.ToInt32(GVAddUserNew.DataKeys[e.RowIndex].Value.ToString());
        string UserName = ((TextBox)GVAddUserNew.Rows[e.RowIndex].Cells[1].Controls[0]).Text;
        string UserMobile = ((TextBox)GVAddUserNew.Rows[e.RowIndex].Cells[2].Controls[0]).Text;
        string UserEmail = ((TextBox)GVAddUserNew.Rows[e.RowIndex].Cells[3].Controls[0]).Text;
        string UserHomeTown = ((TextBox)GVAddUserNew.Rows[e.RowIndex].Cells[4].Controls[0]).Text;
        string UserPassword = ((TextBox)GVAddUserNew.Rows[e.RowIndex].Cells[5].Controls[0]).Text;
        
        
        

        using (MySqlConnection con = new MySqlConnection(cs))
        {
            con.Open();
            MySqlCommand cmd = new MySqlCommand("UPDATE hospitaldb.usertable SET UserName='" + UserName + "', UserMobile='" + UserMobile + "', UserEmail='" + UserEmail + "', UserHomeTown='" + UserHomeTown + "', UserPassword='" + UserPassword + "' WHERE idUser='" + idUser + "' ", con);

            int t = cmd.ExecuteNonQuery();
            if (t > 0)
            {
                Response.Write("<script> alert('Data has Updated') </script>");
                GVAddUserNew.EditIndex = -1;
                GVbind();
            }
        }
    }
    protected void GVAddUserNew_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GVAddUserNew.EditIndex = -1;
        GVbind();
    }
    protected void GVAddUserNew_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        int idUser = Convert.ToInt32(GVAddUserNew.DataKeys[e.RowIndex].Value.ToString());

        using (MySqlConnection con = new MySqlConnection(cs))
        {
            con.Open();

            MySqlCommand cmd = new MySqlCommand("DELETE FROM hospitaldb.usertable WHERE idUser='" + idUser + "' ", con);

            cmd.ExecuteNonQuery();



            GVbind();
            Response.Write("<script> alert('Data has Delect') </script>");
        }
    }
}
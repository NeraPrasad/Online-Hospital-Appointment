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
        MySqlDataAdapter sqlDa = new MySqlDataAdapter("SELECT * FROM hospitaldb.scheduleapp", con);
        sqlDa.Fill(dtbl);

        GVAddSchedule.DataSource = dtbl;
        GVAddSchedule.DataBind();

    }


    protected void GVAddSchedule_RowEditing1(object sender, GridViewEditEventArgs e)
    {
        GVAddSchedule.EditIndex = e.NewEditIndex;
        GVbind();
    }
    protected void GVAddSchedule_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        int idSchedule = Convert.ToInt32(GVAddSchedule.DataKeys[e.RowIndex].Value.ToString());
        string doctorName = ((TextBox)GVAddSchedule.Rows[e.RowIndex].Cells[1].Controls[0]).Text;
        string monday = ((TextBox)GVAddSchedule.Rows[e.RowIndex].Cells[2].Controls[0]).Text;
        string tuesday = ((TextBox)GVAddSchedule.Rows[e.RowIndex].Cells[3].Controls[0]).Text;
        string wedneday = ((TextBox)GVAddSchedule.Rows[e.RowIndex].Cells[4].Controls[0]).Text;
        string thursday = ((TextBox)GVAddSchedule.Rows[e.RowIndex].Cells[5].Controls[0]).Text;
        string friday = ((TextBox)GVAddSchedule.Rows[e.RowIndex].Cells[6].Controls[0]).Text;
        string saturday = ((TextBox)GVAddSchedule.Rows[e.RowIndex].Cells[7].Controls[0]).Text;
        string sunday = ((TextBox)GVAddSchedule.Rows[e.RowIndex].Cells[8].Controls[0]).Text;

        using (MySqlConnection con = new MySqlConnection(cs))
        {
            con.Open();
            MySqlCommand cmd = new MySqlCommand("UPDATE hospitaldb.scheduleapp SET doctorName ='" + doctorName + "', monday ='" + monday + "', tuesday ='" + tuesday + "', wedneday ='" + wedneday + "', thursday ='" + thursday + "', friday='" + friday + "', saturday ='" + saturday + "', sunday='" + sunday + "' WHERE idSchedule='" + idSchedule + "' ", con);

            int t = cmd.ExecuteNonQuery();
            if (t > 0)
            {
                Response.Write("<script> alert('Data has Updated') </script>");
                GVAddSchedule.EditIndex = -1;
                GVbind();
            }
        }
    }
    protected void GVAddSchedule_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GVAddSchedule.EditIndex = -1;
        GVbind();
    }
    protected void GVAddSchedule_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        int idSchedule = Convert.ToInt32(GVAddSchedule.DataKeys[e.RowIndex].Value.ToString());

        using (MySqlConnection con = new MySqlConnection(cs))
        {
            con.Open();

            MySqlCommand cmd = new MySqlCommand("DELETE FROM hospitaldb.scheduleapp WHERE idSchedule='" + idSchedule + "' ", con);

            cmd.ExecuteNonQuery();

            GVbind();
            Response.Write("<script> alert('Data has Delect') </script>");
        }
    }
}
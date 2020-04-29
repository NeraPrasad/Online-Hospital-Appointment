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
            DocName();
            
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
    void DocName()
    {
        MySqlConnection con = new MySqlConnection(cs);
        MySqlCommand cmd = new MySqlCommand();

        con.Open();
        cmd = con.CreateCommand();
        cmd.CommandText = "SELECT DoctorName FROM hospitaldb.doctortable";

        using (var reder = cmd.ExecuteReader())
        {
            while(reder.Read())
            {
                DDLDOC.Items.Add(reder.GetString("DoctorName"));
            }
        }
        con.Close();
    }

    protected void btnInsert_Click(object sender, EventArgs e)
    {
        try
        {

            string query = "INSERT INTO hospitaldb.scheduleapp (doctorName,  monday, tuesday, wedneday, thursday, friday, saturday, sunday) VALUES ('" + DDLDOC.Text + "','" + txtmonday.Text + "','" + txttuesday.Text + "','" + txtwedneday.Text + "','" + txtthursday.Text + "','" + txtfriday.Text + "','" + txtsaturday.Text + "', '" + txtsunday.Text + "')";

            MySqlConnection con = new MySqlConnection(cs);
            con.Open();

            MySqlCommand cmd = new MySqlCommand();

            cmd.CommandText = query;
            cmd.Connection = con;
            cmd.ExecuteNonQuery();

            con.Close();

            txtfriday.Text = "";
            txtmonday.Text = "";
            txtsaturday.Text = "";
            txtsunday.Text = "";
            txtthursday.Text = "";
            txttuesday.Text = "";
            txtwedneday.Text = "";

            GVbind();

        }

        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }

        finally
        {
            Response.Write("<script LANGUAGE='JavaScript' >alert('Add Schedul Succssfull')</script>");
        }
    }
}
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
    MySqlCommand cmd = new MySqlCommand();
    MySqlConnection con = new MySqlConnection();
    MySqlDataAdapter sda = new MySqlDataAdapter();
    DataSet ds = new DataSet();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["DoctorUserID"] == null)
        {
            Response.Redirect("~/doctor/ManageDoctorsProfile.aspx");

        }
        GVbind();
        DocName();
        con.ConnectionString = "server=localhost;userid=root;password=;database=hospitaldb";
        con.Open();
 
    }

    void GVbind()
    {
        DataTable dtbl = new DataTable();

        MySqlConnection con = new MySqlConnection(cs);

        con.Open();
        MySqlDataAdapter sqlDa = new MySqlDataAdapter("SELECT * FROM hospitaldb.feedback", con);
        sqlDa.Fill(dtbl);

        GVFeedBack.DataSource = dtbl;
        GVFeedBack.DataBind();

    }

    void DocName()
    {
        string cs = "server=localhost;userid=root;password=;database=hospitaldb";
        MySqlConnection con = new MySqlConnection(cs);
        MySqlCommand cmd = new MySqlCommand();

        con.Open();
        cmd = con.CreateCommand();
        cmd.CommandText = "SELECT DoctorName FROM hospitaldb.doctortable";

        using (var reder = cmd.ExecuteReader())
        {
            while (reder.Read())
            {
                DDLDoctor.Items.Add(reder.GetString("DoctorName"));
            }
        }
        con.Close();
    }




    protected void btnsrh_Click(object sender, EventArgs e)
    {
        string CDocotrName = DDLDoctor.Text;

        MySqlConnection con = new MySqlConnection(cs);

        con.Open();

        MySqlCommand cmd = new MySqlCommand();

        string query = "SELECT * FROM hospitaldb.feedback WHERE CDocotrName='" + @CDocotrName + "' ";
        cmd.CommandText = query;
        cmd.Connection = con;

        cmd.Parameters.AddWithValue("@CDocotrName", CDocotrName);

        DataTable dl = new DataTable();

        MySqlDataAdapter da = new MySqlDataAdapter(cmd);

        da.Fill(dl);
        con.Close();
        GVFeedBack.DataSource = dl;
        GVFeedBack.DataBind();
    }
}
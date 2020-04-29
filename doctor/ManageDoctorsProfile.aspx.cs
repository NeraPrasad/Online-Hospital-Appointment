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
    MySqlCommand cmd = new MySqlCommand();
    MySqlConnection con = new MySqlConnection();
    MySqlDataAdapter sda = new MySqlDataAdapter();
    DataSet ds = new DataSet();
    string cs = "server=localhost;userid=root;password=;database=hospitaldb";

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["DoctorUserID"] == null)
        {
            Response.Redirect("~/doctor/ManageDoctorsProfile.aspx");

        }

        con.ConnectionString = "server=localhost;userid=root;password=;database=hospitaldb";
        con.Open();
        showdata();

        
    }

  

    public void showdata()
    {
        cmd.CommandText = "SELECT * FROM hospitaldb.doctortable WHERE DoctorUserID= '" + Session["DoctorUserID"] + "'";
        cmd.Connection = con;
        sda.SelectCommand = cmd;
        sda.Fill(ds, "doctortable");

        lblDocuid.Text = ds.Tables[0].Rows[0]["DoctorUserID"].ToString();

        lblDocfee.Text = ds.Tables[0].Rows[0]["DoctorFees"].ToString();
        lblDocgen.Text = ds.Tables[0].Rows[0]["DoctorGender"].ToString();
        lblDochos.Text = ds.Tables[0].Rows[0]["DoctorHospital"].ToString();
        lblDocSpec.Text = ds.Tables[0].Rows[0]["DoctorSpeciality"].ToString();
        lblDoctorName.Text = ds.Tables[0].Rows[0]["DoctorName"].ToString();

    }

   
}
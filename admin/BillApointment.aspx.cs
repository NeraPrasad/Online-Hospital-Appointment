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
      
            GVbind();
            DocName();
     
    }

    void GVbind()
    {
        DataTable dtbl = new DataTable();

        MySqlConnection con = new MySqlConnection(cs);

        con.Open();
        MySqlDataAdapter sqlDa = new MySqlDataAdapter("SELECT * FROM hospitaldb.billtbl", con);
        sqlDa.Fill(dtbl);

        GVBill.DataSource = dtbl;
        GVBill.DataBind();

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
            while (reder.Read())
            {
                ddlDoctor.Items.Add(reder.GetString("DoctorName"));
            }
        }
        con.Close();
    }

    protected void btnInsert_Click(object sender, EventArgs e)
    {
        try
        {

            string query = "INSERT INTO hospitaldb.billtbl (PatientName, PatientMobile, PatientEmail, DoctorName,BillType,AdditonalBill,HopitalCharg ) VALUES ('" + txtPName.Text + "','" + txtMobile.Text + "','" + txtEmail.Text + "','" + ddlDoctor.Text + "','" + ddlbilltype.Text + "','" + txtaddCharge.Text + "','" + txtHospitalCharge.Text + "')";

            MySqlConnection con = new MySqlConnection(cs);
            con.Open();

            MySqlCommand cmd = new MySqlCommand();

            cmd.CommandText = query;
            cmd.Connection = con;
            cmd.ExecuteNonQuery();


            con.Close();

            txtEmail.Text = "";
            txtMobile.Text = "";
            txtPName.Text = "";
            txtEmail.Text = "";
            txtHospitalCharge.Text = "";
            txtaddCharge.Text = "";

            this.ddlbilltype.ClearSelection();
            this.ddlDoctor.ClearSelection();
            
        }

        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }

        finally
        {
            Response.Write("<script LANGUAGE='JavaScript' >alert('Add Bill Succssfull')</script>");
        }
    }
}
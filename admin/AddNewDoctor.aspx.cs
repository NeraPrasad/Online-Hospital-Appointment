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
    MySqlConnection con = new MySqlConnection();
    
    protected void Page_Load(object sender, EventArgs e)
    {
        con.ConnectionString = "server=localhost;userid=root;password=;database=hospitaldb";
        con.Open();

        if (!IsPostBack)
        {
            GVbind();
       
        }
    }

    void GVbind()
    {
        DataTable dtbl = new DataTable();

       
        MySqlDataAdapter sqlDa = new MySqlDataAdapter("SELECT * FROM hospitaldb.doctortable", con);
        sqlDa.Fill(dtbl);

        GVAddDocNew.DataSource = dtbl;
        GVAddDocNew.DataBind();

    }

    

    protected void btnAddNew_Click(object sender, EventArgs e)
    {
        if (checkemail() == true)
        {
            lblalreademsg.Text = "Doctor ID Already Registered";
            txtDoctorID.BackColor = System.Drawing.Color.PaleGreen;


        }
        else
        {
            try
            {

                FUImeage.SaveAs(Server.MapPath("~/DoctorImages/") + Path.GetFileName(FUImeage.FileName));
                String link = "DoctorImages/" + Path.GetFileName(FUImeage.FileName);


                MySqlCommand cmd = new MySqlCommand("INSERT INTO hospitaldb.doctortable" + " (DoctorName, DoctorSpeciality, DoctorHospital, DoctorFees,DoctorImage, DoctorGender, DoctorUserID, DoctorPassword) VALUES (@DoctorName, @DoctorSpeciality, @DoctorHospital, @DoctorFees,@DoctorImage, @DoctorGender, @DoctorUserID, @DoctorPassword)", con);

                cmd.Parameters.AddWithValue("@DoctorName", txtName.Text);
                cmd.Parameters.AddWithValue("@DoctorSpeciality", txtSpeciality.Text);
                cmd.Parameters.AddWithValue("@DoctorHospital", txtHospital.Text);
                cmd.Parameters.AddWithValue("@DoctorFees", txtFees.Text);
                cmd.Parameters.AddWithValue("@DoctorImage", link);
                cmd.Parameters.AddWithValue("@DoctorGender", DDLGender.Text);
                cmd.Parameters.AddWithValue("@DoctorUserID", txtDoctorID.Text);
                cmd.Parameters.AddWithValue("@DoctorPassword", txtDoctorPass.Text);


                cmd.ExecuteNonQuery();



                txtDoctorID.Text = "";
                txtDoctorPass.Text = "";
                txtFees.Text = "";
                txtHospital.Text = "";
                txtName.Text = "";
                txtSpeciality.Text = "";
                DDLGender.ClearSelection();

                GVbind();

            }

            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }

            finally
            {
                Response.Write("<script LANGUAGE='JavaScript' >alert('Add New Doctor Succssfull')</script>");
            }

        }
        
    }

    private Boolean checkemail()
    {
        Boolean emailavailable = false;
        String mycon = "server=localhost;userid=root;password=;database=hospitaldb";
        String myquery = "Select * from hospitaldb.doctortable where DoctorUserID='" + txtDoctorID.Text + "'";
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
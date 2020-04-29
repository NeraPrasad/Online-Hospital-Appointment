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
        

        if(!IsPostBack)
        {
            GVbind();
        }
    }

    void GVbind()
    {
        DataTable dtbl = new DataTable();

        MySqlConnection con = new MySqlConnection(cs); 
        
        con.Open();
        MySqlDataAdapter sqlDa = new MySqlDataAdapter("SELECT * FROM hospitaldb.doctortable", con);
        sqlDa.Fill(dtbl);

        GVAddDocNew.DataSource = dtbl;
        GVAddDocNew.DataBind();

    }



    protected void GVAddDocNew_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GVAddDocNew.EditIndex = e.NewEditIndex;
        GVbind();
    }


    protected void GVAddDocNew_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {

        int idDoctor = Convert.ToInt32(GVAddDocNew.DataKeys[e.RowIndex].Value.ToString());
        string DoctorName = ((TextBox)GVAddDocNew.Rows[e.RowIndex].Cells[1].Controls[0]).Text;
        string DoctorSpeciality = ((TextBox)GVAddDocNew.Rows[e.RowIndex].Cells[2].Controls[0]).Text;
        string DoctorHospital = ((TextBox)GVAddDocNew.Rows[e.RowIndex].Cells[3].Controls[0]).Text;
        string DoctorFees = ((TextBox)GVAddDocNew.Rows[e.RowIndex].Cells[4].Controls[0]).Text;
        
        string DoctorGender = ((TextBox)GVAddDocNew.Rows[e.RowIndex].Cells[5].Controls[0]).Text;
        string DoctorUserID = ((TextBox)GVAddDocNew.Rows[e.RowIndex].Cells[6].Controls[0]).Text;
        string DoctorPassword = ((TextBox)GVAddDocNew.Rows[e.RowIndex].Cells[7].Controls[0]).Text;

        using(MySqlConnection con = new MySqlConnection(cs))
        {
            con.Open();
            MySqlCommand cmd = new MySqlCommand("UPDATE hospitaldb.doctortable SET DoctorName='" + DoctorName + "', DoctorSpeciality='" + DoctorSpeciality + "', DoctorHospital='" + DoctorHospital + "', DoctorFees='" + DoctorFees + "', DoctorGender='" + DoctorGender + "', DoctorUserID='" + DoctorUserID + "',  DoctorPassword='" + DoctorPassword + "' WHERE idDoctor='" + idDoctor + "' ", con);

            int t = cmd.ExecuteNonQuery();
            if (t > 0)
            {
                Response.Write("<script> alert('Data has Updated') </script>");
                GVAddDocNew.EditIndex = -1;
                GVbind();
            }
        }
    }
    protected void GVAddDocNew_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GVAddDocNew.EditIndex = -1;
        GVbind();
    }
    protected void GVAddDocNew_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        int idDoctor = Convert.ToInt32(GVAddDocNew.DataKeys[e.RowIndex].Value.ToString());

        using (MySqlConnection con = new MySqlConnection(cs))
        {
            con.Open();

            MySqlCommand cmd = new MySqlCommand("DELETE FROM hospitaldb.doctortable WHERE idDoctor='" + idDoctor + "' ", con);

            cmd.ExecuteNonQuery();
            
               
            
                GVbind();
                Response.Write("<script> alert('Data has Delect') </script>");
        }
    }
    protected void btnSearch_Click(object sender, EventArgs e)
    {

     

    }
    protected void btnRefresh_Click(object sender, EventArgs e)
    {
      
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using MySql.Data.MySqlClient;
using System.Configuration;

using System.Net.Mail;
using System.Net;

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

    void DocName()
    {
        MySqlConnection con = new MySqlConnection(cs);
        MySqlCommand cmd = new MySqlCommand();

        con.Open();
        cmd = con.CreateCommand();
        cmd.CommandText = "SELECT  DoctorName FROM hospitaldb.doctortable";

        using (var reder = cmd.ExecuteReader())
        {
            while (reder.Read())
            {
                DDlDoctor.Items.Add(reder.GetString("DoctorName"));
            }
        }
        con.Close();
    }
    void GVbind()
    {
        DataTable dtbl = new DataTable();

        MySqlConnection con = new MySqlConnection(cs);

        con.Open();
        MySqlDataAdapter sqlDa = new MySqlDataAdapter("SELECT * FROM hospitaldb.appointment", con);

        sqlDa.Fill(dtbl);

        GVCheckAppoinment.DataSource = dtbl;
        GVCheckAppoinment.DataBind();

    }
    protected void GVCheckAppoinment_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GVCheckAppoinment.EditIndex = -1;
        GVbind();
    }
    protected void GVCheckAppoinment_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GVCheckAppoinment.EditIndex = e.NewEditIndex;
        GVbind();
    }


    protected void GVCheckAppoinment_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {

        int idappointment = Convert.ToInt32(GVCheckAppoinment.DataKeys[e.RowIndex].Value.ToString());
        string patientName = ((TextBox)GVCheckAppoinment.Rows[e.RowIndex].Cells[1].Controls[0]).Text;
        string mobileNumber = ((TextBox)GVCheckAppoinment.Rows[e.RowIndex].Cells[2].Controls[0]).Text;
        string email = ((TextBox)GVCheckAppoinment.Rows[e.RowIndex].Cells[3].Controls[0]).Text;
        string address = ((TextBox)GVCheckAppoinment.Rows[e.RowIndex].Cells[4].Controls[0]).Text;
        string doctor = ((TextBox)GVCheckAppoinment.Rows[e.RowIndex].Cells[5].Controls[0]).Text;

        using (MySqlConnection con = new MySqlConnection(cs))
        {
            con.Open();
            MySqlCommand cmd = new MySqlCommand("UPDATE hospitaldb.appointment SET patientName='" + patientName + "', mobileNumber='" + mobileNumber + "', email='" + email + "', address='" + address + "', doctor='" + doctor + "' WHERE idappointment='" + idappointment + "' ", con);

            int t = cmd.ExecuteNonQuery();
            if (t > 0)
            {
                Response.Write("<script> alert('Data has Updated') </script>");
                GVCheckAppoinment.EditIndex = -1;
                GVbind();
            }
        }
    }
    protected void GVCheckAppoinment_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        int idappointment = Convert.ToInt32(GVCheckAppoinment.DataKeys[e.RowIndex].Value.ToString());

        using (MySqlConnection con = new MySqlConnection(cs))
        {
            con.Open();

            MySqlCommand cmd = new MySqlCommand("DELETE FROM hospitaldb.appointment WHERE idappointment='" + idappointment + "' ", con);

            cmd.ExecuteNonQuery();



            GVbind();
            Response.Write("<script> alert('Data has Delect') </script>");
        }
    }
    protected void GVCheckAppoinment_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if(e.Row.RowType == DataControlRowType.DataRow)
        {
            MySqlConnection con = new MySqlConnection(cs);
            con.Open();

            var dropdown = (DropDownList)e.Row.FindControl("DDLNumber");

            string query = "SELECT channelNumber FROM hospitaldb.additional";

            MySqlCommand cmd = new MySqlCommand(query, con);
            MySqlDataAdapter sda = new MySqlDataAdapter(cmd);
            DataTable dt = new DataTable();

            sda.Fill(dt);

            con.Close();

            dropdown.DataSource = dt;
            dropdown.DataTextField = "channelNumber";
            dropdown.DataValueField = "channelNumber";
            dropdown.DataBind();

            dropdown.Items.Insert(0, new ListItem("-- Select Number --", "0"));
        }
    }
    protected void GVCheckAppoinment_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Sms")
        {
            int crow;
            crow = Convert.ToInt32(e.CommandArgument.ToString());
            string v = GVCheckAppoinment.Rows[crow].Cells[2].Text;



        }
        if (e.CommandName == "Email")
        {

            
            int crow;

            crow = Convert.ToInt32(e.CommandArgument.ToString());
            string EmailAddress = GVCheckAppoinment.Rows[crow].Cells[3].Text;

            string PatientName = GVCheckAppoinment.Rows[crow].Cells[1].Text;

            SmtpClient smtp = new SmtpClient();
            smtp.Host = "smtp.gmail.com";
            smtp.Port = 587;
            smtp.Credentials = new System.Net.NetworkCredential("youremail@gmail.com", "userpassword");
            smtp.EnableSsl = true;
            MailMessage msg = new MailMessage();
            msg.Subject = "Hello " + PatientName + "  Thanks for Your Appointment. ";
            msg.Body = "Hi, Thanks For Your Appointment at Royal Hospital (Anuradhapura), We will Provide Appoinment number. Thanks";
            string toaddress = EmailAddress;
            msg.To.Add(toaddress);
            string fromaddress = "Royal Hospital PVT <royalhospital@gmail.com>";
            msg.From = new MailAddress(fromaddress);
            try
            {
                smtp.Send(msg);
                Response.Write("<script> alert('Email Is Send') </script>");

            }
            catch
            {
                throw;
            }

        }
    }
    protected void btnsrh_Click(object sender, EventArgs e)
    {
        string Doctor = DDlDoctor.Text;

        MySqlConnection con = new MySqlConnection(cs);

        con.Open();

        MySqlCommand cmd = new MySqlCommand();

        string query = "SELECT * FROM hospitaldb.appointment WHERE Doctor='"+ @Doctor +"' ";
        cmd.CommandText = query;
        cmd.Connection = con;

        cmd.Parameters.AddWithValue("@Doctor", Doctor);

        DataTable dl = new DataTable();

        MySqlDataAdapter da = new MySqlDataAdapter(cmd);

        da.Fill(dl);
        con.Close();
        GVCheckAppoinment.DataSource = dl;
        GVCheckAppoinment.DataBind();



    }

    protected void btnRefesh_Click(object sender, EventArgs e)
    {
        GVbind();
    }
}

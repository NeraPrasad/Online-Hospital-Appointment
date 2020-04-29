using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


using System.Data;
using MySql.Data.MySqlClient;
using System.Configuration;

public partial class admin_Dashboard : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        countUser();
        countDoctor();
        countApp();
        countfeed();
    }

    void countUser()
    {
        string cs = "server=localhost;userid=root;password=;database=hospitaldb";
        MySqlConnection con = new MySqlConnection(cs);
        con.Open();
        MySqlCommand cmd = new MySqlCommand("select count(idUser) from hospitaldb.usertable", con);

        MySqlDataReader reader = cmd.ExecuteReader();
        while (reader.Read())
        {
            int profit = reader.GetInt32(0);
            lblCountUser.Text = profit.ToString();
        }
        con.Close();

    }

    void countDoctor()
    {
        string cs = "server=localhost;userid=root;password=;database=hospitaldb";
        MySqlConnection con = new MySqlConnection(cs);
        con.Open();
        MySqlCommand cmd = new MySqlCommand("select count(idDoctor) from hospitaldb.doctortable", con);

        MySqlDataReader reader = cmd.ExecuteReader();
        while (reader.Read())
        {
            int profit = reader.GetInt32(0);
            lblCountDoc.Text = profit.ToString();
        }
        con.Close();

    }

    void countApp()
    {
        string cs = "server=localhost;userid=root;password=;database=hospitaldb";
        MySqlConnection con = new MySqlConnection(cs);
        con.Open();
        MySqlCommand cmd = new MySqlCommand("select count(idappointment) from hospitaldb.appointment", con);

        MySqlDataReader reader = cmd.ExecuteReader();
        while (reader.Read())
        {
            int profit = reader.GetInt32(0);
            lblcountApp.Text = profit.ToString();
        }
        con.Close();

    }

    void countfeed()
    {
        string cs = "server=localhost;userid=root;password=;database=hospitaldb";
        MySqlConnection con = new MySqlConnection(cs);
        con.Open();
        MySqlCommand cmd = new MySqlCommand("select count(ID) from hospitaldb.feedback", con);

        MySqlDataReader reader = cmd.ExecuteReader();
        while (reader.Read())
        {
            int profit = reader.GetInt32(0);
            lblCountFeed.Text = profit.ToString();
        }
        con.Close();

    }
}
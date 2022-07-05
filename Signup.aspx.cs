using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
public partial class Signup : System.Web.UI.Page
{
    SqlConnection con;
    SqlDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection(ConfigurationManager.ConnectionStrings["sqlcon"].ConnectionString);
        con.Open();

        SqlCommand cmd = new SqlCommand("SELECT * FROM state", con);

        dr = cmd.ExecuteReader();
        ddlState.DataSource = dr;
        ddlState.DataTextField = "state_name";
        ddlState.DataValueField = "state_id";
        ddlState.DataBind();
        dr.Close();

        cmd = new SqlCommand("SELECT * FROM city", con);
        dr = cmd.ExecuteReader();
        ListItem l = new ListItem("--Select--","");
        l.Attributes.Add("data-state","0");
        ddlCity.Items.Add(l);
        while(dr.Read()){
            ListItem li = new ListItem(dr.GetString(2),dr.GetInt32(0).ToString());
            li.Attributes.Add("data-state",dr.GetInt32(1).ToString());
            ddlCity.Items.Add(li);
        }
        dr.Close();


    }
    protected void signup(object sender, EventArgs e)
    {
        String fullName = fn.Text;
        String lastName = ln.Text;
        String gender = "";
        if (male.Checked)
        {
            gender = "" + male.Text;
        }
        else
        {
            gender = "" + female.Text;
        }
        String cont = contact.Text;
        String mail = email.Text;
        String state = ddlState.Text;
        String city = ddlCity.Text;
        String pin = pincode.Text;
        String uname = username.Text;
        String pass = password.Text;

        //Response.Write(fullName);
        //Response.Write(lastName);
        //Response.Write(gender);
        //Response.Write(cont);
        //Response.Write(mail);
        //Response.Write(state);
        //Response.Write(city);
        //Response.Write(pin);
        //Response.Write(uname);
        //Response.Write(pass);

        //Response.End();
        String insertStudent = "insert into student values(@std_fname,@std_lname,@std_gender,@std_contact,@std_email,@std_state,@std_city,@std_pin,@std_username,@std_password)";
        SqlCommand cmd = new SqlCommand(insertStudent, con);
        cmd.Parameters.AddWithValue("@std_fname",fullName);
        cmd.Parameters.AddWithValue("@std_lname", lastName);
        cmd.Parameters.AddWithValue("@std_gender", gender);
        cmd.Parameters.AddWithValue("@std_contact", cont);
        cmd.Parameters.AddWithValue("@std_email", mail);
        cmd.Parameters.AddWithValue("@std_state", state);
        cmd.Parameters.AddWithValue("@std_city", city);
        cmd.Parameters.AddWithValue("@std_pin", pin);
        cmd.Parameters.AddWithValue("@std_username",uname);
        cmd.Parameters.AddWithValue("@std_password",pass);
        int res = cmd.ExecuteNonQuery();
        if (res > 0)
        {
            Response.Write("Data Inserted");
        }
        else
        {
            Response.Write("Data not Inserted");
        }
    }
}
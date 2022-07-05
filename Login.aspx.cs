using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

public partial class Login : System.Web.UI.Page
{
    SqlConnection con;
    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection(ConfigurationManager.ConnectionStrings["sqlcon"].ConnectionString);
        con.Open();
    }
    protected void login(object sender, EventArgs e)
    {
        String uname = username.Text;
        String pass = password.Text;
        String msg;

        SqlCommand cmd = new SqlCommand("SELECT * FROM student WHERE std_username = '" + uname + "'", con);
        SqlDataReader reader = cmd.ExecuteReader();
        if (reader.Read())
        {
            String student_username = reader["std_username"].ToString().Trim();
            String student_password = reader["std_password"].ToString().Trim();
            if (uname == student_username)
            {
                if (pass == student_password)
                {
                    msg = "Login Successfull";
                    Session["std_id"] = reader.GetInt32(0);
                    Response.Redirect("default.aspx");
                }
                else
                {
                    msg = "password incorrect";
                    Response.Redirect("login.aspx");
                }
            }
            else
            {
                msg = "username and password both incorrect!";
                Response.Redirect("login.aspx");
            }
        }

    }
}
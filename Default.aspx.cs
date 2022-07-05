using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class _Default : System.Web.UI.Page
{
    SqlConnection con;
    SqlDataAdapter da;
    SqlCommand cmd;
    SqlDataReader dr;
    public String ed_state = "";
    public String ed_city = "";
    protected void Page_Load(object sender, EventArgs e)
    {
       if (Session["std_id"] == null)
       {
           Response.Redirect("Login.aspx");
       }
       else
       {
           con = new SqlConnection(ConfigurationManager.ConnectionStrings["sqlcon"].ConnectionString);
           con.Open();
       }
       if (!IsPostBack)
       {
           bind();
       }
    }
    public void bind()
    {
        String sid = Session["std_id"].ToString();
        String qry = "select * from student, city, state where std_id = " + sid + " and std_city = city_id and city_state = state_id";

        da = new SqlDataAdapter(qry, con);

        DataSet ds = new DataSet();
        da.Fill(ds);

        gv_details.DataSource = ds;
        gv_details.DataBind();
    }
    protected void gv_details_RowEditing(object sender, GridViewEditEventArgs e)
    {
        gv_details.EditIndex = e.NewEditIndex;
        bind();

        GridViewRow row = gv_details.Rows[gv_details.EditIndex];

        DropDownList ddl_state = (DropDownList)row.FindControl("ddl_state");
        DropDownList ddl_city = (DropDownList)row.FindControl("ddl_city");

        cmd = new SqlCommand("SELECT * FROM state", con);
        dr = cmd.ExecuteReader();
        ddl_state.Items.Add(new ListItem("--Select--", ""));
        while (dr.Read())
        {
            ListItem li = new ListItem(dr.GetString(1), dr.GetInt32(0).ToString());
            ddl_state.Items.Add(li);
        }
        dr.Close();


        cmd = new SqlCommand("SELECT * FROM city", con);
        dr = cmd.ExecuteReader();

        ListItem l = new ListItem("--Select--", "");
        l.Attributes.Add("data-state", "0");
        ddl_city.Items.Add(l);
        while (dr.Read())
        {
            ListItem li = new ListItem(dr.GetString(2), dr.GetInt32(0).ToString());
            li.Attributes.Add("data-state", dr.GetInt32(1).ToString());
            ddl_city.Items.Add(li);
        }
        dr.Close();

        ed_state = ddl_state.ClientID;
        ed_city = ddl_city.ClientID;


    }
}
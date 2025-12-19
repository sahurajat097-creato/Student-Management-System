using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ViewUser : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection("data source=RAJAT\\SQLEXPRESS;initial catalog=rajatdb;integrated security=sspi");

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string qry = "SELECT sid, name, grade, city FROM Student";
            SqlCommand cmd = new SqlCommand(qry, cn);

            cn.Open();
            SqlDataReader dr = cmd.ExecuteReader();

            GridView123.DataSource = dr;
            GridView123.DataBind();

            cn.Close();
        }

    }

    protected void btnid_Click(object sender, EventArgs e)
    {

        if (string.IsNullOrWhiteSpace(tbid.Text))
        {
            lblmsg.Text = "Please enter ID";
            lblmsg.ForeColor = System.Drawing.Color.Red;
            return;
        }

        try
        {
            int id = Convert.ToInt32(tbid.Text);

            string qry = "SELECT * FROM Student WHERE sid = @sid";

            SqlCommand cmd = new SqlCommand(qry, cn);
            cmd.Parameters.AddWithValue("@sid", id);

            cn.Open();
            SqlDataReader dr = cmd.ExecuteReader();

            if (dr.HasRows)
            {
                GridView123.DataSource = dr;
                GridView123.DataBind();
                lblmsg.Text = $"Showing details for ID: {id}";
                lblmsg.ForeColor = System.Drawing.Color.Green;
            }
            else
            {
                lblmsg.Text = "Invalid ID";
                lblmsg.ForeColor = System.Drawing.Color.Red;
            }
        }
        catch (Exception ex)
        {
            lblmsg.Text = ex.Message;
        }
        finally
        {
            cn.Close();
        }
    }

    protected void btnexit_Click(object sender, EventArgs e)
    {
        Response.Redirect("Registration.aspx");
    }
}
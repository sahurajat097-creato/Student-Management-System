using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnLogin_Click(object sender, EventArgs e)
    {
        SqlConnection cn = new SqlConnection("data source=RAJAT\\SQLEXPRESS;initial catalog=rajatdb;integrated security=sspi");
        try
        {
            cn.Open();

            string qry = "SELECT * FROM Admins WHERE AdminName=@name AND AdminPass=@pass";
            SqlCommand cmd = new SqlCommand(qry, cn);

            cmd.Parameters.AddWithValue("@name", txtName.Text);
            cmd.Parameters.AddWithValue("@pass", txtPass.Text);

            SqlDataReader dr = cmd.ExecuteReader();

            if (dr.Read())
            {
                Session["AdminName"] = txtName.Text;
                Response.Redirect("Menu.aspx");
            }
            else
            {
                lblMsg.Text = "Invalid Login!";
            }
        }
        catch (Exception ex)
        {
            lblMsg.Text = ex.Message;
        }
        finally
        {
            cn.Close();
        }
    }

}

using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnLogin_Click(object sender, EventArgs e)
    {
        string user = txtUser.Text;
        string pass = txtPass.Text;

        SqlConnection cn = new SqlConnection("data source=RAJAT\\SQLEXPRESS;initial catalog=rajatdb;integrated security=sspi");

        cn.Open();

        string query = "SELECT COUNT(*) FROM Users WHERE Username=@u AND Password=@p";

        SqlCommand cmd = new SqlCommand(query, cn);
        cmd.Parameters.AddWithValue("@u", user);
        cmd.Parameters.AddWithValue("@p", pass);

        int count = Convert.ToInt32(cmd.ExecuteScalar());

        if (count == 1)
        {
            Session["username"] = user;

            // redirect to home page
            Response.Redirect("ViewUser.aspx");
        }
        else
        {
            lblMsg.Text = "Invalid username or password.";
        }
    }
}
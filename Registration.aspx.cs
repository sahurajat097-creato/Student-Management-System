using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Registration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
    }

    protected void btnRegister_Click(object sender, EventArgs e)
    {
        try
        {

            if (Page.IsValid)
            {
                string user = txtUser.Text;
                string pass = txtPass.Text;
                if (!String.IsNullOrWhiteSpace(txtUser.Text))
                {
                    if (!String.IsNullOrWhiteSpace(txtPass.Text))
                    {
                        SqlConnection cn = new SqlConnection("data source=RAJAT\\SQLEXPRESS;initial catalog=rajatdb;integrated security=sspi");

                        cn.Open();

                        string query = "INSERT INTO Users (Username, Password) VALUES (@u, @p)";
                        SqlCommand cmd = new SqlCommand(query, cn);

                        cmd.Parameters.AddWithValue("@u", user);
                        cmd.Parameters.AddWithValue("@p", pass);

                        int rows = cmd.ExecuteNonQuery();

                        if (rows > 0)
                        {
                            // store session
                            Session["username"] = user;

                            
                            Response.Redirect("User.aspx");
                        }
                        else
                        {
                            lblMsg.Text = "Error while registering.";
                        }
                    }
                    else
                    {
                        lblMsg.Text = "Enter the password";
                    }
                }

                else
                {
                    lblMsg.Text = "Enter the username";
                }


            }
            else
            {
                lblMsg.Text = "Please fix validation errors.";
            }
        }
        catch (Exception a)
        {
            lblMsg.Text = a.Message;
        }
    }
    protected void btnadminlogin_Click(object sender, EventArgs e)
    {
        Response.Redirect("Admin.aspx");
    }

    
    protected void btnlogin_Click(object sender, EventArgs e)
    {
        Response.Redirect("user.aspx");
    }
}
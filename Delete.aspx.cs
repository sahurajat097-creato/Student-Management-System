using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Delete : System.Web.UI.Page
{

    SqlConnection cn = new SqlConnection("data source=RAJAT\\SQLEXPRESS;initial catalog=rajatdb;integrated security=sspi");
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btndelete_Click(object sender, EventArgs e)
    {
        try
        {
            int sid = Convert.ToInt32(tbsid.Text);

            //CHECKS ID IS PRESENT OR NOT
            string delqry = $"select count(*) from student where sid={sid}";
            cn.Open();
            SqlCommand cmd1 = new SqlCommand(delqry, cn);

            int option = Convert.ToInt32(cmd1.ExecuteScalar());

            if (option > 0)
            {
                // IF ID IS PRESENT-->IT DELETES THE RECORD
                String deleteqry = $"delete Student where sid={sid}";
                SqlCommand cmd = new SqlCommand(deleteqry, cn);
                lblmsg.Text = "deleted Success";
                lblmsg.ForeColor = System.Drawing.Color.Green;
                cmd.ExecuteNonQuery();
            }
            else
            {
                lblmsg.Text = "ERROR!Student id not found Enter valid SID ";
                lblmsg.ForeColor = System.Drawing.Color.Red;
            }
        }
        catch (Exception e1)
        {
            lblmsg.Text = "Error! " + e1.Message;
            lblmsg.ForeColor = System.Drawing.Color.Red;

        }
        finally
        {
            cn.Close();
        }




    }

    protected void btndeleteall_Click(object sender, EventArgs e)
    {
        string alldel = $"delete Student";
        SqlCommand cmd = new SqlCommand(alldel, cn);
        cn.Open();
        cmd.ExecuteNonQuery();
        cn.Close();
    }

    protected void btnexit_Click(object sender, EventArgs e)
    {
        Response.Redirect("Menu.aspx");
    }
}
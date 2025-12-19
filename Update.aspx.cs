using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Update : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection("data source=RAJAT\\SQLEXPRESS;initial catalog=rajatdb;integrated security=sspi");
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        try
        {
            int sid = Convert.ToInt32(txtSID.Text);
            string name = Convert.ToString(txtName.Text);
            int grade = Convert.ToInt32(txtGrade.Text);
            string city = Convert.ToString(txtCity.Text);

            if (sid > 0) //validate sid>0
            {
                if (!String.IsNullOrWhiteSpace(name))
                {
                    if (!String.IsNullOrWhiteSpace(city))
                    {

                        String qry = $"update Student set name = '{name}', grade = {grade}, city = '{city}' where sid = {sid}";
                        SqlCommand cmd = new SqlCommand(qry, cn);
                        cn.Open();
                        int rows = cmd.ExecuteNonQuery();

                        if (rows > 0)
                        {
                            lblmsg.Text = "Your Details Saved Success";
                            lblmsg.ForeColor = System.Drawing.Color.Green;
                        }
                        else
                        {
                            lblmsg.Text = "ERROR-student not found with this sid";
                            lblmsg.ForeColor = System.Drawing.Color.Red;
                        }
                    }
                    else
                    {
                        lbl2.Text = "!ERROR-City can't be empty";
                        lbl2.ForeColor = System.Drawing.Color.Red;
                    }
                    

                   
                }
                else
                {
                    lbl2.Text = "!ERROR-Name can't be empty";
                    lbl2.ForeColor = System.Drawing.Color.Red;
                }

            }
            else
            {
                //  Response.Redirect("Insert.aspx");
                lbl1.Text = "!!ERROR-Enter sid >0";
                lbl1.ForeColor = System.Drawing.Color.Red;

            }
        }
        catch (FormatException fe) // if users enter invalid age/id
        {
            Response.Write(fe.Message);
            lbl1.Text = "Invalid id or grade";
            lbl1.ForeColor = System.Drawing.Color.Red;


        }

        catch (Exception e1)
        {
            Response.Write(e1.Message);

        }
        finally
        {
            cn.Close();

            
        }


    }

    protected void btnExit_Click(object sender, EventArgs e)
    {
        Response.Redirect("Menu.aspx");
    }
}
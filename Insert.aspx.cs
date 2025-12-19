using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Insert : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection("data source=RAJAT\\SQLEXPRESS;initial catalog=rajatdb;integrated security=sspi");

    protected void Page_Load(object sender, EventArgs e)
    {


    }

    protected void btninsert_Click(object sender, EventArgs e)
    {
        try
        {
            int sid = Convert.ToInt32(txtSID.Text);
            string name = Convert.ToString(txtName.Text);
            int grade = Convert.ToInt32(txtGrade.Text);
            string city = Convert.ToString(txtCity.Text);

            if (sid > 0) //validate id>0
            {
                if (grade >= 1 && grade <= 10)
                {

                    if (!String.IsNullOrWhiteSpace(name))
                    {
                        if (!String.IsNullOrWhiteSpace(city))
                        {

                            String qry = $"insert into student values({sid},'{name}',{grade},'{city}')";
                            SqlCommand cmd = new SqlCommand(qry, cn);
                            cn.Open();
                            cmd.ExecuteNonQuery();
                            lblmsg.Text = "Your Details Saved Success";
                            lblmsg.ForeColor = System.Drawing.Color.Green;
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
                    lbl1.Text = "!!ERROR-Grade should be between 1 to 10";
                }

            }
            else
            {
                //  Response.Redirect("Insert.aspx");
                lbl1.Text = "!!ERROR-Enter id >0";
                lbl1.ForeColor = System.Drawing.Color.Red;

            }

        }

        catch (FormatException fe) // if users enter invalid grade/id
        {
            lbl1.Text = fe.Message;

            lbl1.ForeColor = System.Drawing.Color.Red;


        }
        catch (SqlException e1)//database erros (duplicate values,invalid column)
        {
            lbl1.Text = e1.Message;
            lbl1.Text="id already exist use different";
        }
        catch (Exception e1)
        {
            lbl1.Text = e1.Message;

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
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Feedback : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button_Sub_Click(object sender, EventArgs e)
    {
        try
        {
 
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["AdminConnectionString"].ConnectionString);
            conn.Open();
            string insertQuerry = "insert into FeedBack (CustomerName, VehicleNo, PhoneNo, Subject, Satisfaction, Description) values(@cname, @vnum, @pno, @sub, @satis, @des)";
            SqlCommand com = new SqlCommand(insertQuerry, conn);

            com.Parameters.AddWithValue("@cname", TextBox_Uname.Text);
            com.Parameters.AddWithValue("@vnum", TextBox_Vid.Text);
            com.Parameters.AddWithValue("@pno", TextBox_Pno.Text);
            com.Parameters.AddWithValue("@sub", TextBox_Sub.Text);
            com.Parameters.AddWithValue("@satis", DropDownList_Sat.SelectedItem.ToString());
            com.Parameters.AddWithValue("@des", TextBox_Descr.Text);
            com.ExecuteNonQuery();
            {
                Label_U1.Visible = true;
                Label_U1.Text = "Thanks for your views";
            }
            
            conn.Close();
        }

        catch (Exception ex)
        {
            Response.Write("Error" + ex.ToString());
        }
    }
    protected void Button_C_Click(object sender, EventArgs e)
    {
        Response.Redirect("CustomerHome.aspx");
    }

}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class AdminLogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button_Log_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["AdminConnectionString"].ConnectionString);
        conn.Open();
        string checkuser = "select count(*) from admin where UserName='" + TextBox_Uname.Text + "'";
        SqlCommand com = new SqlCommand(checkuser, conn);
        int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
        conn.Close();
        if (temp == 1)
        {
            conn.Open();
            string checkPasswordQuery = "select Password from Admin where UserName ='" + TextBox_Uname.Text + "'";
            SqlCommand passConn = new SqlCommand(checkPasswordQuery, conn);
            string password = passConn.ExecuteScalar().ToString().Replace(" ", "");
            conn.Close();
            if (password == TextBox_Pass.Text)
            {
                Session["New"] = TextBox_Uname.Text;
                Response.Redirect("AdminHome.aspx");
            }
            else
            {
                Response.Write("Password is not correct");
            }

        }

        else
        {
            Response.Write("User Name is not correct");

        }
    }
}
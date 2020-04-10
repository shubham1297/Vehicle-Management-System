using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class ChangePassword : System.Web.UI.Page
{
    SqlConnection con = null;
    SqlCommand cmd = null;
    String cs = "Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\Auto Lube.mdf;Integrated Security=True;Connect Timeout=30;User Instance=True";
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button_U_Click(object sender, EventArgs e)
    {
        try
        {
            con = new SqlConnection(cs);
            con.Open();
            string cb = "update UserData set Password = '" + TextBox_NewPass.Text + "' where UserName= '" + TextBox_Uname.Text + "'";
            cmd = new SqlCommand(cb);
            cmd.Connection = con;
            cmd.ExecuteReader();
            con.Close();
            {
                Label_U1.Visible = true;
                Label_U1.Text = "Password has been changed successfully";
            }
            Button_U.Enabled = true;
            TextBox_Uname.Text = "";
            TextBox_OPass.Text = "";
            TextBox_NewPass.Text = "";
            TextBox_CPass.Text = "";
        }
        catch (Exception ex)
        {
            Response.Write("Error" + ex.ToString());
        }
    }
}
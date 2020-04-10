using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

public partial class ViewUsers : System.Web.UI.Page
{
    SqlConnection con = null;
    SqlCommand cmd = null;
    String cs = "Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\Auto Lube.mdf;Integrated Security=True;Connect Timeout=30;User Instance=True";
    
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button_Del_Click(object sender, EventArgs e)
    {
        try
        {

            int RowsAffected = 0;
            con = new SqlConnection(cs);
            con.Open();
            string cq = "delete from UserData where UserName=@uname;";
            cmd = new SqlCommand(cq);
            cmd.Connection = con;
            cmd.Parameters.Add(new SqlParameter("@uname", System.Data.SqlDbType.VarChar, 20, "UserName"));
            cmd.Parameters["@uname"].Value = DropDownList_VID.SelectedItem.ToString();
            RowsAffected = cmd.ExecuteNonQuery();

            if (RowsAffected > 0)
            {
                Label_U1.Visible = true;
                Label_U1.Text = "Deleted sucessfully";
            }
            else
            {
                Label_U1.Visible = false;
                Label_U1.Text = "Not Deleted";
            }
            con.Close();

        }
        catch (Exception ex)
        {

            Label_U1.Visible = true;
            Label_U1.Text = "There is no data to delete" + ex.ToString();
        }
    }
    protected void Button_Ref_Click(object sender, EventArgs e)
    {
        Response.Redirect("ViewUsers.aspx");
    }
}
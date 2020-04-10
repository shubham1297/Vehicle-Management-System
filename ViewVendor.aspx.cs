using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class ViewVendor : System.Web.UI.Page
{
    SqlConnection con = null;
    SqlCommand cmd = null;
    string cs = ConfigurationManager.ConnectionStrings["AdminConnectionString"].ConnectionString;

    protected void Page_Load(object sender, EventArgs e)
    {
        Label_U1.Visible = false;
    }
    protected void Button_Del_Click(object sender, EventArgs e)
    {
        try
        {

            int RowsAffected = 0;
            con = new SqlConnection(cs);
            con.Open();
            string cq = "delete from AddVendor where VID=@vid;";
            cmd = new SqlCommand(cq);
            cmd.Connection = con;
            cmd.Parameters.Add(new SqlParameter("@vid", System.Data.SqlDbType.VarChar, 20, "VID"));
            cmd.Parameters["@vid"].Value = DropDownList_VID.SelectedItem.ToString();
            RowsAffected = cmd.ExecuteNonQuery();

            if (RowsAffected > 0)
            {
                Label_U1.Visible = true;
                Label_U1.Text = "Deleted successfully...! Click refresh button to view";
            }
           
            else
            {
                Label_U1.Visible = true;
                Label_U1.Text = "No record found";
            }
            
            con.Close();
        }
        catch (Exception ex)
        {
            Label_U1.Visible = true;
            Label_U1.Text = "No record found";
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("ViewVendor.aspx");
    }
    
}
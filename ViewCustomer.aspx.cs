using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

public partial class ViewCustomer : System.Web.UI.Page
{
    SqlConnection con = null;
    SqlCommand cmd = null;
    string cs = ConfigurationManager.ConnectionStrings["AdminConnectionString"].ConnectionString;    
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button_D_Click(object sender, EventArgs e)
    {
        try
        {

            int RowsAffected = 0;
            con = new SqlConnection(cs);
            con.Open();
            string cq = "delete from AddCustomer where VehicleNo=@vnum;";
            cmd = new SqlCommand(cq);
            cmd.Connection = con;
            cmd.Parameters.Add(new SqlParameter("@vnum", System.Data.SqlDbType.VarChar, 20, "VehicleNo"));
            cmd.Parameters["@vnum"].Value = DropDownList_CID.SelectedItem.ToString();
            RowsAffected = cmd.ExecuteNonQuery();

            if (RowsAffected > 0)
            {
                Label_U1.Visible = true;
                Label_U1.Text = "Deleted sucessfully...! Click refresh button to view";
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
            Label_U1.Text = "There is no data to delete";
        }
    }
    protected void Button_C_Click(object sender, EventArgs e)
    {
        Response.Redirect("AddCustomer.aspx");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("ViewCustomer.aspx");
    }
}
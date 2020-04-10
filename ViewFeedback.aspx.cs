using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class ViewFeedback : System.Web.UI.Page
{
    SqlConnection con = null;
    SqlCommand cmd = null;
    String cs = ConfigurationManager.ConnectionStrings["AdminConnectionString"].ConnectionString;
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
            string cq = "delete from Feedback where VehicleNo=@vnum;";
            cmd = new SqlCommand(cq);
            cmd.Connection = con;
            cmd.Parameters.Add(new SqlParameter("@vnum", System.Data.SqlDbType.VarChar, 20, "VehicleNo"));
            cmd.Parameters["@vnum"].Value = DropDownListID.SelectedItem.ToString();
            RowsAffected = cmd.ExecuteNonQuery();

            if (RowsAffected > 0)
            {
                Label_U1.Visible = true;
                Label_U1.Text = "Deleted sucessfully...! Please click refresh button to view";
            }
            else
            {
                Label_U1.Visible = true;
                Label_U1.Text = "Not Deleted";
            }

            con.Close();

        }
        catch (Exception ex)
        {
            Response.Write("Error" + ex.ToString());
        }
    }
    protected void Button_C_Click(object sender, EventArgs e)
    {
        Response.Redirect("AdminHome.aspx");
    }
    protected void Button_V_Click(object sender, EventArgs e)
    {
        Response.Redirect("ViewFeedback.aspx");
    }
}
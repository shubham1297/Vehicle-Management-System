using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

public partial class _Default : System.Web.UI.Page
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
            string cq = "delete from AddRoute where VehicleNo=@vnum;";
            cmd = new SqlCommand(cq);
            cmd.Connection = con;
            cmd.Parameters.Add(new SqlParameter("@vnum", System.Data.SqlDbType.VarChar, 20, "VehicleNo"));
            cmd.Parameters["@vnum"].Value = DropDownList_CID.SelectedItem.ToString();
            RowsAffected = cmd.ExecuteNonQuery();

            if (RowsAffected > 0)
            {
                Label_U1.Visible = true;
                Label_U1.Text = "Vehicle deleted sucessfully";
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
            Label_U1.Text = "There is no data to delete";
        }
    }
    protected void Button_Ref_Click(object sender, EventArgs e)
    {
        Response.Redirect("ViewRoute.aspx");
    }
}
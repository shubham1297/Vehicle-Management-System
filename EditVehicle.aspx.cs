using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Drawing;
using System.Data;
using System.Web.Security;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.Configuration;

public partial class EditVehicle : System.Web.UI.Page
{
    string cs = ConfigurationManager.ConnectionStrings["AdminConnectionString"].ConnectionString;
    SqlConnection con = null;
    SqlCommand cmd = null;
    private SqlConnection convar;
    private SqlCommand comvar;
    private SqlDataReader reader;

    protected void Page_Load(object sender, EventArgs e)
    {
        Button_U.Enabled = false;
        convar = new SqlConnection(ConfigurationManager.ConnectionStrings["AdminConnectionString"].ConnectionString);
        convar.Open();
        Label_U1.Visible = false;
        if (!IsPostBack)
        {

            filldata();
        }
        TextBox_CID.Enabled = false;
        TextBox_Vid.Enabled = false;
        TextBox_Vclr.Enabled = false;
        TextBox_Vmod.Enabled = false;
        TextBox_Cname.Enabled = false;
        TextBox_Add.Enabled = false;
        DropDownList_Vtype.Enabled = false;
        TextBox_Date.Enabled = false;
    }
    private void filldata()
    {
        comvar = new SqlCommand("select CID from AddVehicle", convar);
        if (convar.State == System.Data.ConnectionState.Closed)
        {
            convar.Open();
        }
        reader = comvar.ExecuteReader();
        DropDownListE.Items.Clear();
        while (reader.Read())
        {
            DropDownListE.Items.Add(reader[0].ToString());
        }
        comvar.Dispose();
        reader.Close();
    }
      protected void Button_C_Click(object sender, EventArgs e)
    {
        Response.Redirect("AdminHome.aspx");
    }
    protected void Button_U_Click(object sender, EventArgs e)
    {
        try
        {
            con = new SqlConnection(cs);
            con.Open();
            string cb = "update AddVehicle set CID = '" + TextBox_CID.Text + "',VehicleNo= '" + TextBox_Vid.Text + "',VehicleColor= '" + TextBox_Vclr.Text + "',CustomerName= '" + TextBox_Cname.Text + "',Location= '" + TextBox_Add.Text + "', Date='" + TextBox_Date.Text + "' where CID= '" + TextBox_CID.Text + "'";
            cmd = new SqlCommand(cb);
            cmd.Connection = con;
            cmd.ExecuteReader();
            con.Close();
            {
                Label_U1.Visible = true;
                Label_U1.Text = "Updated successfully";
            }
            Button_U.Enabled = false;
            TextBox_CID.Enabled = false;
            TextBox_Vid.Enabled = false;
            TextBox_Vclr.Enabled = false;
            TextBox_Vmod.Enabled = false;
            TextBox_Cname.Enabled = false;
            TextBox_Add.Enabled = false;
            TextBox_Date.Enabled = false;
        }
        catch (Exception ex)
        {
            Response.Write("Error" + ex.ToString());
        }
    }
    protected void Button_E_Click1(object sender, EventArgs e)
    {
        Button_U.Enabled = true;
        TextBox_Vid.Enabled = true;
        TextBox_Vclr.Enabled = true;
        TextBox_Vmod.Enabled = true;
        TextBox_Cname.Enabled = true;
        TextBox_Add.Enabled = true;
        TextBox_Date.Enabled = true;
    }
    protected void DropDownListE_SelectedIndexChanged1(object sender, EventArgs e)
    {
        Label_U1.Text = "";
        comvar = new SqlCommand("select CID, VehicleNo, VehicleColor, VehicleModel, CustomerName, Location, Date from AddVehicle where CID=" + (DropDownListE.SelectedItem.Value), convar);
        reader = comvar.ExecuteReader();
        reader.Read();
        TextBox_CID.Text = reader[0] + "";
        TextBox_Vid.Text = reader[1] + "";
        TextBox_Vclr.Text = reader[2] + "";
        TextBox_Vmod.Text = reader[3] + "";
        TextBox_Cname.Text = reader[4] + "";
        TextBox_Add.Text = reader[5] + "";
        TextBox_Date.Text = reader[6] + "";

        comvar.Dispose();
        reader.Close();
    }
    protected void ButtonV_Click(object sender, EventArgs e)
    {
        Response.Redirect("ViewVehicle.aspx");
    }
}
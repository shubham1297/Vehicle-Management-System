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

public partial class EditVendor : System.Web.UI.Page
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

        TextBox_VID.Enabled = false;
        TextBox_Vname.Enabled = false;
        TextBox_Pno.Enabled = false;
        TextBox_Email.Enabled = false;
        TextBox_Org.Enabled = false;
        DropDownList_Gender.Enabled = false;
        TextBox_Add.Enabled = false;
        TextBox_Date.Enabled = false;
    }
    private void filldata()
    {
        comvar = new SqlCommand("select VID from AddVendor", convar);
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
    protected void Button_U_Click1(object sender, EventArgs e)
    {
        try
        {
            con = new SqlConnection(cs);
            con.Open();
            string cb = "update AddVendor set VendorName = '" + TextBox_Vname.Text + "',PhoneNo= '" + TextBox_Pno.Text + "', Gender= '" + DropDownList_Gender.Text + "',EmailAddress= '" + TextBox_Email.Text + "',ProductSupply= '" + DropDownList_Psupply.Text + "',Address= '" + TextBox_Add.Text + "',Organization= '" + TextBox_Org.Text + "', Date='" + TextBox_Date.Text + "' where VID= '" + TextBox_VID.Text + "'";
            cmd = new SqlCommand(cb);
            cmd.Connection = con;
            cmd.ExecuteReader();
            con.Close();
            {
                Label_U1.Visible = true;
                Label_U1.Text = "Updated successfully";
            }
            Button_U.Enabled = false;
            TextBox_Vname.Enabled = false;
            TextBox_Pno.Enabled = false;
            TextBox_Email.Enabled = false;
            DropDownList_Gender.Enabled = false;
            DropDownList_Psupply.Enabled = false;
            TextBox_Add.Enabled = false;
            TextBox_Org.Enabled = false;
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
        TextBox_Vname.Enabled = true;
        TextBox_Pno.Enabled = true;
        TextBox_Email.Enabled = true;
        TextBox_Org.Enabled = true;
        DropDownList_Gender.Enabled = true;
        DropDownList_Psupply.Enabled = true;
        TextBox_Add.Enabled = true;
        TextBox_Date.Enabled = true;
    }

    protected void DropDownListE_SelectedIndexChanged1(object sender, EventArgs e)
    {
        Label_U1.Text = "";
        comvar = new SqlCommand("select VID, VendorName, PhoneNo, EmailAddress, Gender, ProductSupply, Address, Organization, Date from AddVendor where VID=" + (DropDownListE.SelectedItem.Value), convar);
        reader = comvar.ExecuteReader();
        reader.Read();
        TextBox_VID.Text = reader[0] + "";
        TextBox_Vname.Text = reader[1] + "";
        TextBox_Pno.Text = reader[2] + "";
        TextBox_Email.Text = reader[3] + "";
        TextBox_Org.Text = reader[4] + "";
        DropDownList_Gender.SelectedItem.Value = reader[5] + "";
        DropDownList_Psupply.SelectedItem.Value = reader[6] + "";
        TextBox_Add.Text = reader[7] + "";
        TextBox_Date.Text = reader[8] + "";
        comvar.Dispose();
        reader.Close();
    }
    protected void Button_C_Click(object sender, EventArgs e)
    {

    }
}
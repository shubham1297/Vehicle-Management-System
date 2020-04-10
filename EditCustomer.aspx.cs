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

public partial class EditCustomer : System.Web.UI.Page
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
        Label1.Visible = false;
        if (!IsPostBack)
        {
            filldata();
        }
        TextBox_CID.Enabled = false;
        TextBox_Cname.Enabled = false;
        TextBox_Vid.Enabled = false;
        TextBox_Pno.Enabled = false;
        TextBox_Email.Enabled = false;
        DropDownList_Gender.Enabled = false;
        DropDownList_Vtype.Enabled = false;
        TextBox_Date.Enabled = false;
        TextBox_Add.Enabled = false;
    }

    private void filldata()
    {
        comvar = new SqlCommand("select CID from AddCustomer", convar);
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

    protected void Button_U_Click(object sender, EventArgs e)
    {
        try
        {
            con = new SqlConnection(cs);
            con.Open();
            string cb = "update AddCustomer set CustomerName = '" + TextBox_Cname.Text + "',VehicleNo= '" + TextBox_Vid.Text + "',PhoneNo= '" + TextBox_Pno.Text + "',EmailAddress= '" + TextBox_Email.Text + "',Gender= '" + DropDownList_Gender.Text + "',Date= '" + TextBox_Date.Text + "',VehicleType= '" + DropDownList_Vtype.Text + "', Address='" + TextBox_Add.Text + "' where CID='" + TextBox_CID.Text + "'";
            cmd = new SqlCommand(cb);
            cmd.Connection = con;
            cmd.ExecuteReader();
            con.Close();
            {
                Label1.Visible = true;
                Label1.Text = "Updated successfully";
            }
            Button_U.Enabled = false;
            TextBox_Cname.Enabled = false;
            TextBox_Vid.Enabled = false;
            TextBox_Pno.Enabled = false;
            TextBox_Email.Enabled = false;
            DropDownList_Gender.Enabled = false;
            TextBox_Date.Enabled = false;
            DropDownList_Vtype.Enabled = false;
            TextBox_Add.Enabled = false;
        }
        catch (Exception ex)
        {
            Response.Write("Error" + ex.ToString());
        }
    }
    protected void Button_E_Click(object sender, EventArgs e)
    {
    //    TextBoxID.Enabled = true;
        Button_U.Enabled = true;
        TextBox_Cname.Enabled = true;
            TextBox_Vid.Enabled = true;
            TextBox_Pno.Enabled = true;
            TextBox_Email.Enabled = true;
            DropDownList_Gender.Enabled = true;
            TextBox_Date.Enabled = true;
            DropDownList_Vtype.Enabled = true;
            TextBox_Add.Enabled = true;
    }
    protected void DropDownListE_SelectedIndexChanged(object sender, EventArgs e)
    {
        Label1.Text = "";
        comvar = new SqlCommand("select CID, CustomerName, VehicleNo, PhoneNo, EmailAddress, Gender, Date, VehicleType, Address from AddCustomer where CID='" + (DropDownListE.SelectedItem.Value)+"'", convar);
        reader = comvar.ExecuteReader();
        reader.Read();
        TextBox_CID.Text = reader[0] + "";
        TextBox_Cname.Text = reader[1] + "";
        TextBox_Vid.Text = reader[2] + "";
        TextBox_Pno.Text = reader[3] + "";
        TextBox_Email.Text = reader[4] + "";
        DropDownList_Gender.SelectedItem.Value = reader[5] + "";
        DropDownList_Vtype.SelectedItem.Value = reader[6] + "";
        TextBox_Date.Text = reader[7] + "";
        TextBox_Add.Text = reader[8] + "";

        comvar.Dispose();
        reader.Close();
    }
}
    
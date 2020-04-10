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


public partial class AddCustomer : System.Web.UI.Page
{
    string cs = ConfigurationManager.ConnectionStrings["AdminConnectionString"].ConnectionString;
    string str;
    SqlCommand com;
    int count;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            autogenerated();

        }
        if (!IsPostBack)
        {
            TextBox_Date.Text = DateTime.Today.ToShortDateString();
            TextBox_Date.Enabled = false;
        }

        if (IsPostBack)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["AdminConnectionString"].ConnectionString);
            conn.Open();
            string checkuser = "select count(*) from [AddCustomer] where VehicleNo ='" + TextBox_Vid.Text + "'";
            SqlCommand com = new SqlCommand(checkuser, conn);
            int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
            if (temp != 0)
            {
                Label1.Visible = true;
                Label1.Text = "Vehicle No. " + TextBox_Vid.Text + "'s Customer is already exists";
                TextBox_Vid.Text = "";
            }
            else
            {
                Label1.Text = "";
            }

            conn.Close();
        }
     }
          void autogenerated()
    {
        SqlConnection con = new SqlConnection(cs);
        str = "select ISNULL(MAX(CID), 0) AS Maximum from AddCustomer";
        com = new SqlCommand(str, con);
        con.Open();
        count = Convert.ToInt16(com.ExecuteScalar()) + 1;
        TextBox_CID.Text = count.ToString();
        TextBox_CID.Enabled = false;
        con.Close();
    }

    protected void Button_Add_Click(object sender, EventArgs e)
    {
        try
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["AdminConnectionString"].ConnectionString);
            conn.Open();
            string insertQuerry = "insert into AddCustomer (CID, CustomerName, PhoneNo, VehicleNo, Gender, Address, Date, EmailAddress, VehicleType) values(@cid, @cname, @pnum, @vnum, @gender, @address, @date, @email, @vtype)";
            SqlCommand com = new SqlCommand(insertQuerry, conn);

            com.Parameters.AddWithValue("@cid", TextBox_CID.Text);
            com.Parameters.AddWithValue("@cname", TextBox_Cname.Text);
            com.Parameters.AddWithValue("@pnum", TextBox_Pno.Text);
            com.Parameters.AddWithValue("@vnum", TextBox_Vid.Text);
            com.Parameters.AddWithValue("@gender", DropDownList_Gender.SelectedItem.ToString());
            com.Parameters.AddWithValue("@address", TextBox_Add.Text);
            com.Parameters.AddWithValue("@date", TextBox_Date.Text);
            com.Parameters.AddWithValue("@vtype", DropDownList_Vtype.SelectedItem.ToString());
            com.Parameters.AddWithValue("@email", TextBox_Email.Text);

            com.ExecuteNonQuery();
            {
                Label2.Visible = true;
                Label2.Text = "Customer added successfully";
            }
            TextBox_CID.Text = "";
            TextBox_Cname.Text = "";
            TextBox_Pno.Text = "";
            TextBox_Vid.Text = "";
            DropDownList_Gender.Items.Clear();
            TextBox_Add.Text = "";
            TextBox_Email.Text = "";
            autogenerated();
            conn.Close();
        }

        catch (Exception ex)
        {
            Response.Write("Error" + ex.ToString());
        }
    }
    protected void Button_C_Click(object sender, EventArgs e)
    {
        Response.Write("AdminHome");
    }
}

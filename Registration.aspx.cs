using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;


public partial class Registration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["AdminConnectionString"].ConnectionString);
            conn.Open();
            string checkuser = "select count(*) from [AddUser] where UserName ='" + TextBox_Uname.Text + "'";
            SqlCommand com = new SqlCommand(checkuser, conn);
            int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
            if (temp != 0)
            {
                Label1.Visible = true;
                Label1.Text = "User '" + TextBox_Uname.Text + "' is already exists";
                TextBox_Uname.Text = "";
            }
            else
            {
                Label1.Visible = true;
                Label1.Text = "User is available";
            }

            conn.Close();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            Guid newGUID = Guid.NewGuid();
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["AdminConnectionString"].ConnectionString);
            conn.Open();
            string insertQuerry = "insert into AddUser (UserName, EmailAddress, PhoneNo, VehicleNo, Gender, Password, City, Address) values(@ID, @Uname, @email, @Pno, @Vid, @gen, @Pass, @city, @Add)";
            SqlCommand com = new SqlCommand(insertQuerry, conn);

            com.Parameters.AddWithValue("@ID", newGUID.ToString());
            com.Parameters.AddWithValue("@Uname", TextBox_Uname.Text);
            com.Parameters.AddWithValue("@email", TextBox_Email.Text);
            com.Parameters.AddWithValue("@Pno", TextBox_Pno.Text);
            com.Parameters.AddWithValue("@Vid", TextBox_Vid.Text);
            com.Parameters.AddWithValue("@gen", DropDownList_Gender.SelectedItem.ToString());
            com.Parameters.AddWithValue("@Pass", TextBox_Pass.Text);
            com.Parameters.AddWithValue("@city", DropDownList_City.SelectedItem.ToString());
            com.Parameters.AddWithValue("@Add", TextBox_Add.Text);

            com.ExecuteNonQuery();
            {
                Response.Redirect("AdminHome.aspx");
            }
            
            conn.Close();
        }

        catch (Exception ex)
        {
            Response.Write("Error" + ex.ToString());
        }
    }
}
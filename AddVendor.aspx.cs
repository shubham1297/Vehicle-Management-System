﻿using System;
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

public partial class AddVendor : System.Web.UI.Page
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
    }
    void autogenerated()
    {
        SqlConnection con = new SqlConnection(cs);
        str = "select ISNULL(MAX(VID), 0) AS Maximum from AddVendor";
        com = new SqlCommand(str, con);
        con.Open();
        count = Convert.ToInt16(com.ExecuteScalar()) + 1;

        TextBox_VID.Text = count.ToString();
        TextBox_VID.Enabled = false;
        con.Close();
    }

    protected void Button_add_Click(object sender, EventArgs e)
    {
         try
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["AdminConnectionString"].ConnectionString);
            conn.Open();
            string insertQuerry = "insert into AddVendor (VID, VendorName, EmailAddress, PhoneNo, Gender, ProductSupply, Organization, Address, Date) values(@vid, @vname, @email, @pnum, @gender, @psupply, @organization, @address, @date)";
            SqlCommand com = new SqlCommand(insertQuerry, conn);

            com.Parameters.AddWithValue("@vid", TextBox_VID.Text);
            com.Parameters.AddWithValue("@vname", TextBox_Vname.Text);
            com.Parameters.AddWithValue("@email", TextBox_Email.Text);
            com.Parameters.AddWithValue("@pnum", TextBox_Pno.Text);
            com.Parameters.AddWithValue("@gender", DropDownList_Gender.SelectedItem.ToString());
            com.Parameters.AddWithValue("@psupply", DropDownList_Psupply.SelectedItem.ToString());
            com.Parameters.AddWithValue("@organization", TextBox_Org.Text);
            com.Parameters.AddWithValue("@address", TextBox_Add.Text);
            com.Parameters.AddWithValue("@date", TextBox_Date.Text);
            com.ExecuteNonQuery();
            {
                Label_U1.Visible = true;
                Label_U1.Text = "Added successfully";
            }
            TextBox_VID.Text = "";
            TextBox_Vname.Text = "";
            TextBox_Email.Text = "";
            TextBox_Pno.Text = "";
            TextBox_Org.Text = "";
            TextBox_Add.Text = "";
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
        Response.Redirect("AdminHome.aspx");
    }
}
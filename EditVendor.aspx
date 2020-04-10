<%@ Page Language="C#" AutoEventWireup="true" CodeFile="EditVendor.aspx.cs" Inherits="EditVendor" MasterPageFile ="~/AdminMaster.master"%>


<asp:Content ID="Content1" runat="server" 
    contentplaceholderid="ContentPlaceHolder2">
    <table class="style1">
        <tr>
            <td style="width: 145px">
                &nbsp;</td>
            <td style="font-size: x-large; color: #006600; width: 286px">
                <strong>Edit Vendor Record</strong></td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 145px">
                &nbsp;</td>
            <td style="width: 286px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 145px">
                <b>Vendor ID:</b></td>
            <td style="width: 286px">
                <asp:TextBox ID="TextBox_VID" runat="server" Width="240px" 
                    BackColor="#EAE8E3"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox_VID" ErrorMessage="Please Enter Vendor ID" 
                    style="color: #FF0000"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 145px">
                <b>Vendor Name:</b></td>
            <td style="width: 286px">
                <asp:TextBox ID="TextBox_Vname" runat="server" Width="240px" 
                    BackColor="#EAE8E3"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBox_Vname" ErrorMessage="Please Enter Vendor Name" 
                    style="color: #FF0000"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 145px">
                <b>Email Address:</b></td>
            <td style="width: 286px">
                <asp:TextBox ID="TextBox_Email" runat="server" Width="240px" 
                    BackColor="#EAE8E3"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="TextBox_Email" ErrorMessage="Please Enter Email Address." 
                    style="color: #FF0000"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 145px">
                <b>Phone No:</b></td>
            <td style="width: 286px">
                <asp:TextBox ID="TextBox_Pno" runat="server" Width="240px" BackColor="#EAE8E3"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="TextBox_Pno" ErrorMessage="Please Enter Phone No" 
                    style="color: #FF0000"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 145px">
                <b>Gender:</b></td>
            <td style="width: 286px">
                <asp:DropDownList ID="DropDownList_Gender" runat="server" Width="240px" 
                    BackColor="#EAE8E3">
                    <asp:ListItem>Select Your Gender </asp:ListItem>
                    <asp:ListItem Value="1">Male</asp:ListItem>
                    <asp:ListItem Value="2">Female</asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                    ControlToValidate="DropDownList_Gender" CssClass="style5" 
                    ErrorMessage="Select Your Gender" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 145px">
                <b>Product Supply:</b></td>
            <td style="width: 286px">
                <asp:DropDownList ID="DropDownList_Psupply" runat="server" Width="240px" 
                    BackColor="#EAE8E3">
                    <asp:ListItem>Select The Product Supply </asp:ListItem>
                    <asp:ListItem Value="1">Honda Engine Oil</asp:ListItem>
                    <asp:ListItem Value="2">Zik Engine Oil</asp:ListItem>
                    <asp:ListItem Value="3">Total Engine Oil</asp:ListItem>
                    <asp:ListItem Value="4">Shell Engine Oil</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="DropDownList_Psupply" CssClass="style5" 
                    ErrorMessage="Select The Product Supply" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 145px">
                <b>Organization:</b></td>
            <td style="width: 286px">
                <asp:TextBox ID="TextBox_Org" runat="server" Width="240px" 
                    BackColor="#EAE8E3"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                    ControlToValidate="TextBox_Org" 
                    ErrorMessage="Please Enter the Employeed Organization" style="color: #FF0000"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 145px">
                <b>Date Joined:</b></td>
            <td style="width: 286px">
                <asp:TextBox ID="TextBox_Date" runat="server" Width="240px" 
                    BackColor="#EAE8E3"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                    ControlToValidate="TextBox_Date" CssClass="style5" 
                    ErrorMessage="Enter Join Date" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 145px">
                <b>Address:</b></td>
            <td style="width: 286px">
                <asp:TextBox ID="TextBox_Add" runat="server" Width="240px" Height="70px" 
                    TextMode="MultiLine" BackColor="#EAE8E3" BorderColor="White"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                    ControlToValidate="TextBox_Add" CssClass="style5" 
                    ErrorMessage="Please Enter the Address " ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 145px">
                &nbsp;</td>
            <td style="width: 286px">
                <asp:Label ID="Label_U1" runat="server" ForeColor="#006600" Text="Label"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="DropDownListE" runat="server" AutoPostBack="True" 
                    BackColor="#EAE8E3" 
                    onselectedindexchanged="DropDownListE_SelectedIndexChanged1" Width="240px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td style="width: 145px">
                &nbsp;</td>
            <td style="width: 286px">
                <asp:Button ID="Button_U" runat="server" onclick="Button_U_Click1" 
                    style="font-weight: 700" Text="Update" Width="85px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button_C" runat="server" CausesValidation="False" 
                    onclick="Button_C_Click" PostBackUrl="~/AddVendor.aspx" 
                    style="font-weight: 700" Text="Close" Width="85px" />
            </td>
            <td>
                <asp:Button ID="Button_E" runat="server" onclick="Button_E_Click1" 
                    style="font-weight: 700" Text="Edit" Width="85px" />
            </td>
        </tr>
        <tr>
            <td style="width: 145px">
                &nbsp;</td>
            <td style="width: 286px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 145px">
                &nbsp;</td>
            <td style="width: 286px">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT * FROM [AddVendor]"></asp:SqlDataSource>
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>




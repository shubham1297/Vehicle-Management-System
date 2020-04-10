<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddVehicle.aspx.cs" Inherits="AddVehicle" MasterPageFile ="~/AdminMaster.master"%>

<asp:Content ID="Content1" runat="server" 
    contentplaceholderid="ContentPlaceHolder2">
    <table class="style1">
        <tr>
            <td style="width: 145px">
                <b></b>
            </td>
            <td style="font-size: x-large; color: #006600; width: 315px">
                <strong>Add Vehicle Record</strong></td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 145px">
                &nbsp;</td>
            <td style="width: 315px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 145px">
                <b>ID:</b></td>
            <td style="width: 315px">
                <asp:TextBox ID="TextBox_CID" runat="server" Width="240px" 
                    BackColor="#EAE8E3"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                    ControlToValidate="TextBox_CID" 
                    ErrorMessage="Please Enter an ID for Vehicle" style="color: #FF0000"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 145px">
                <b>Vehicle Number:</b></td>
            <td style="width: 315px">
                <asp:TextBox ID="TextBox_Vid" runat="server" Width="240px" BackColor="#EAE8E3"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="TextBox_Vid" CssClass="style5" 
                    ErrorMessage="Vehicle Number is Required" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 145px">
                <b>Vehicle Colour:</b></td>
            <td style="width: 315px">
                <asp:TextBox ID="TextBox_Vclr" runat="server" Width="240px" 
                    BackColor="#EAE8E3"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="TextBox_Vclr" CssClass="style5" 
                    ErrorMessage="Vehicle Color is Required" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 145px">
                <b>Vehicle Model:</b></td>
            <td style="width: 315px">
                <asp:TextBox ID="TextBox_Vmod" runat="server" Width="240px" 
                    BackColor="#EAE8E3"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="TextBox_Vmod" CssClass="style5" 
                    ErrorMessage="Vehicle Model is Required" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 145px">
                <b>Vehicle Type:</b></td>
            <td style="width: 315px">
                <asp:DropDownList ID="DropDownList_Vtype" runat="server" Width="240px" 
                    BackColor="#EAE8E3">
                    <asp:ListItem Value="Select Vehicle Type">Select Vehicle Type </asp:ListItem>
                    <asp:ListItem Value="1">Mini Bus</asp:ListItem>
                    <asp:ListItem Value="2">Classic Bus</asp:ListItem>
                    <asp:ListItem Value="2">Semi Delux Bus</asp:ListItem>
                    <asp:ListItem Value="2">Delux Bus</asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                    ControlToValidate="DropDownList_Vtype" CssClass="style5" 
                    ErrorMessage="Select Your Vehicle Type" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 145px">
                <b>Driver Name:</b></td>
            <td style="width: 315px">
                <asp:TextBox ID="TextBox_Cname" runat="server" Width="240px" 
                    BackColor="#EAE8E3"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox_Cname" CssClass="style5" 
                    ErrorMessage="Customer Name is Required" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 145px">
                <b>Date:</b></td>
            <td style="width: 315px">
                <asp:TextBox ID="TextBox_Date" runat="server" Width="240px" 
                    BackColor="#EAE8E3"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                    ControlToValidate="TextBox_Date" CssClass="style5" 
                    ErrorMessage="Enter Join Date" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 145px">
                <b>Location:</b></td>
            <td style="width: 315px">
                <asp:TextBox ID="TextBox_Add" runat="server" Width="240px" Height="70px" 
                    TextMode="MultiLine" BackColor="#EAE8E3" BorderColor="White"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                    ControlToValidate="TextBox_Add" CssClass="style5" 
                    ErrorMessage="Address Is Required" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 145px">
                <b></b>
                <asp:Label ID="Label_U1" runat="server" ForeColor="#006600" Text="Label1" 
                    Visible="False"></asp:Label>
            </td>
            <td style="width: 315px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 145px">
                <b></b>
            </td>
            <td style="width: 315px">
                <asp:Button ID="Button_Add" runat="server" onclick="Button_Add_Click" 
                    style="font-weight: 700" Text="Add" Width="85px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button_View" runat="server" CausesValidation="False" 
                    onclick="Button_V_Click" style="font-weight: 700" Text="View" Width="85px" />
&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" CausesValidation="False" 
                    PostBackUrl="~/EditVehicle.aspx" style="font-weight: 700" Text="Update" 
                    Width="85px" />
            </td>
            <td>
                <asp:Button ID="Button_C" runat="server" CausesValidation="False" 
                    PostBackUrl="~/AdminHome.aspx" style="font-weight: 700" Text="Close" 
                    Width="85px" />
            </td>
        </tr>
        <tr>
            <td style="width: 145px">
                <b></b>
            </td>
            <td style="width: 315px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 145px">
                <b></b>
            </td>
            <td style="width: 315px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>



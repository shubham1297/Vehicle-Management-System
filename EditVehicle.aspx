<%@ Page Language="C#" AutoEventWireup="true" CodeFile="EditVehicle.aspx.cs" Inherits="EditVehicle" MasterPageFile ="~/AdminMaster.master"%>


<asp:Content ID="Content1" runat="server" 
    contentplaceholderid="ContentPlaceHolder2">
    <table class="style1">
        <tr>
            <td style="width: 140px">
                &nbsp;</td>
            <td style="font-size: x-large; color: #006600; width: 292px">
                <strong>Edit Vehicles Record</strong></td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 140px">
                &nbsp;</td>
            <td style="width: 292px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 140px">
                <b>ID:</b></td>
            <td style="width: 292px">
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
            <td style="width: 140px">
                <b>Vehicle Number:</b></td>
            <td style="width: 292px">
                <asp:TextBox ID="TextBox_Vid" runat="server" Width="240px" BackColor="#EAE8E3"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="TextBox_Vid" CssClass="style5" 
                    ErrorMessage="Vehicle Number is Required" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 140px">
                <b>Vehicle Colour:</b></td>
            <td style="width: 292px">
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
            <td style="width: 140px">
                <b>Vehicle Model:</b></td>
            <td style="width: 292px">
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
            <td style="width: 140px">
                <b>Vehicle Type:</b></td>
            <td style="width: 292px">
                <asp:DropDownList ID="DropDownList_Vtype" runat="server" Width="240px" 
                    BackColor="#EAE8E3">
                    <asp:ListItem Value="Select Vehicle Type">Select Vehicle Type </asp:ListItem>
                    <asp:ListItem Value="1">Motor Bike</asp:ListItem>
                    <asp:ListItem Value="2">Motor Car</asp:ListItem>
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
            <td style="width: 140px">
                <b>Customer Name:</b></td>
            <td style="width: 292px">
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
            <td style="width: 140px">
                <b>Date:</b></td>
            <td style="width: 292px">
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
            <td style="width: 140px">
                <b>Location:</b></td>
            <td style="width: 292px">
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
            <td style="width: 140px">
                <asp:Label ID="Label_U1" runat="server" ForeColor="#006600" Text="Label1" 
                    Visible="False"></asp:Label>
            </td>
            <td style="width: 292px">
                &nbsp;</td>
            <td>
                <asp:DropDownList ID="DropDownListE" runat="server" AutoPostBack="True" 
                    BackColor="#EAE8E3" 
                    onselectedindexchanged="DropDownListE_SelectedIndexChanged1" Width="240px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td style="width: 140px">
                &nbsp;</td>
            <td style="width: 292px">
                <asp:Button ID="Button_U" runat="server" onclick="Button_U_Click" 
                    style="font-weight: 700" Text="Update" Width="85px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button_C" runat="server" CausesValidation="False" 
                    onclick="Button_C_Click" PostBackUrl="~/AddVehicle.aspx" 
                    style="font-weight: 700" Text="Close" Width="85px" />
            </td>
            <td>
                <asp:Button ID="Button_E" runat="server" onclick="Button_E_Click1" 
                    style="font-weight: 700" Text="Edit" Width="85px" />
            </td>
        </tr>
        <tr>
            <td style="width: 140px">
                &nbsp;</td>
            <td style="width: 292px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 140px">
                &nbsp;</td>
            <td style="width: 292px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>




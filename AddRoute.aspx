<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.master" AutoEventWireup="true" CodeFile="AddRoute.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" runat="server" 
    contentplaceholderid="ContentPlaceHolder2">
    <table class="style1">
        <tr>
            <td style="width: 145px">
                <b></b>
            </td>
            <td style="font-size: x-large; color: #006600; width: 315px">
                <strong>Add Route Record</strong></td>
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
                <b>RID:</b></td>
            <td style="width: 315px">
                <asp:TextBox ID="TextBox_RID" runat="server" Width="240px" 
                    BackColor="#EAE8E3"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                    ControlToValidate="TextBox_RID" 
                    ErrorMessage="Please Enter an ID for Vehicle" style="color: #FF0000"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 145px">
                <b>Vehicle Number:</b></td>
            <td style="width: 315px">
                <asp:TextBox ID="TextBox_Vno" runat="server" Width="240px" BackColor="#EAE8E3"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="TextBox_Vno" CssClass="style5" 
                    ErrorMessage="Vehicle Number is Required" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 145px">
                <b>Vehicle Driver:</b></td>
            <td style="width: 315px">
                <asp:TextBox ID="TextBox_Vd" runat="server" Width="240px" BackColor="#EAE8E3"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                    ControlToValidate="TextBox_Vd" CssClass="style5" 
                    ErrorMessage="Vehicle Number is Required" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 145px">
                <b>Starting Point:</b></td>
            <td style="width: 315px">
                <asp:TextBox ID="TextBox_Sp" runat="server" Width="240px" 
                    BackColor="#EAE8E3"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="TextBox_Sp" CssClass="style5" 
                    ErrorMessage="Vehicle Color is Required" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 145px">
                <b>Destination:</b></td>
            <td style="width: 315px">
                <asp:TextBox ID="TextBox_D" runat="server" Width="240px" 
                    BackColor="#EAE8E3"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="TextBox_D" CssClass="style5" 
                    ErrorMessage="Vehicle Model is Required" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 145px">
                <b>Departure Time:</b></td>
            <td style="width: 315px">
                <asp:TextBox ID="TextBox_Dt" runat="server" Width="240px" BackColor="#EAE8E3"></asp:TextBox>
            </td>
            <td>
       
            </td>
        </tr>
        <tr>
            <td style="width: 145px">
                <b>Arrival Time:</b></td>
            <td style="width: 315px">
                <asp:TextBox ID="TextBox_At" runat="server" Width="240px" 
                    BackColor="#EAE8E3"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox_At" CssClass="style5" 
                    ErrorMessage="Customer Name is Required" ForeColor="Red"></asp:RequiredFieldValidator>
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



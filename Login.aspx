<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" MasterPageFile="~/MasterPage.master"%>



<asp:Content ID="Content1" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">
    <table class="style1">
        <tr>
            <td style="width: 151px">
                &nbsp;</td>
            <td style="font-size: x-large; color: #006600; width: 342px">
                <strong>User Login</strong></td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 151px">
                &nbsp;</td>
            <td style="width: 342px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 151px">
                <asp:Label ID="Label1" runat="server" Text="User Name:" 
                    style="font-weight: 700"></asp:Label>
            </td>
            <td style="width: 342px">
                <asp:TextBox ID="TextBox_Uname" runat="server" Width="240px" 
                    BackColor="#EAE8E3"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox_Uname" ErrorMessage="Please Enter a User Name" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 151px">
                <asp:Label ID="Label2" runat="server" Text="Password:" style="font-weight: 700"></asp:Label>
            </td>
            <td style="width: 342px">
                <asp:TextBox ID="TextBox_Pass" runat="server" TextMode="Password" Width="240px" 
                    BackColor="#EAE8E3"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBox_Pass" ErrorMessage="Please Enter a Password" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 151px">
                &nbsp;</td>
            <td style="width: 342px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 151px">
                &nbsp;</td>
            <td style="width: 342px">
                <asp:Button ID="Button_Log" runat="server" onclick="Button_Log_Click" 
                    style="font-weight: 700" Text="Login" Width="85px" />
                &nbsp;&nbsp;&nbsp;<asp:HyperLink ID="HyperLink1" runat="server" 
                    NavigateUrl="~/Registration.aspx">New User Registration</asp:HyperLink>
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>





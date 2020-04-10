<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminLogin.aspx.cs" Inherits="AdminLogin" MasterPageFile="~/MasterPage.master"%>


<asp:Content ID="Content1" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">
    <table class="style1">
        <tr>
            <td class="style3" style="width: 121px">
                &nbsp;</td>
            <td class="style2" 
                
                
                style="font-size: x-large; color: #006600; font-weight: 700; text-align: center; width: 293px;">
                Admin Login</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3" style="width: 121px">
                &nbsp;</td>
            <td class="style2" style="width: 293px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3" style="width: 121px">
                <asp:Label ID="Label1" runat="server" Text="User Name:" 
                    style="font-weight: 700"></asp:Label>
            </td>
            <td class="style2" style="width: 293px">
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
            <td class="style3" style="width: 121px">
                <asp:Label ID="Label2" runat="server" Text="Password:" style="font-weight: 700"></asp:Label>
            </td>
            <td class="style2" style="width: 293px">
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
            <td class="style3" style="width: 121px">
                &nbsp;</td>
            <td class="style2" style="width: 293px">
                &nbsp;&nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3" style="width: 121px">
                &nbsp;</td>
            <td class="style2" style="text-align: left; width: 293px;">
                <asp:Button ID="Button_Log" runat="server" onclick="Button_Log_Click" 
                    style="font-weight: 700" Text="Login" Width="85px" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button_C" runat="server" PostBackUrl="~/Main.aspx" 
                    style="font-weight: 700" Text="Cancel" Width="85px" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>




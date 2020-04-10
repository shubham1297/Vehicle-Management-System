<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ChangePassword.aspx.cs" Inherits="ChangePassword" MasterPageFile ="~/CustomerMaster.master"%>


<asp:Content ID="Content1" runat="server" 
    contentplaceholderid="ContentPlaceHolder2">
    <table class="style1">
        <tr>
            <td style="width: 135px">
                <b></b>
            </td>
            <td style="font-size: x-large; color: #006600; width: 278px">
                <strong>Change Password</strong></td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 135px">
                <b></b>
            </td>
            <td style="width: 278px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 135px">
                <b>User Name:</b></td>
            <td style="width: 278px">
                <asp:TextBox ID="TextBox_Uname" runat="server" Width="240px" 
                    BackColor="#EAE8E3"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox_Uname" CssClass="style5" 
                    ErrorMessage="User Name is Required" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 135px">
                <b>Old Password:</b></td>
            <td style="width: 278px">
                <asp:TextBox ID="TextBox_OPass" runat="server" TextMode="Password" Width="240px" 
                    BackColor="#EAE8E3"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="TextBox_OPass" CssClass="style5" 
                    ErrorMessage="Please Enter Old Password" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 135px">
                <b>New Password:</b></td>
            <td style="width: 278px">
                <asp:TextBox ID="TextBox_NewPass" runat="server" TextMode="Password" Width="240px" 
                    BackColor="#EAE8E3"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                    ControlToValidate="TextBox_NewPass" CssClass="style5" 
                    ErrorMessage="Please Enter New Password Here" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 135px">
                <b>Confirm Password:</b></td>
            <td style="width: 278px">
                <asp:TextBox ID="TextBox_CPass" runat="server" TextMode="Password" Width="240px" 
                    BackColor="#EAE8E3"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                    ControlToValidate="TextBox_CPass" CssClass="style5" 
                    ErrorMessage="Please Re-Enter Password Here." ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToCompare="TextBox_NewPass" ControlToValidate="TextBox_CPass" 
                    ErrorMessage="Both Passwords Must Be Same" ForeColor="Red"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 135px">
                <b></b>
                <asp:Label ID="Label_U1" runat="server" style="color: #006600" Text="Label" 
                    Visible="False"></asp:Label>
            </td>
            <td style="width: 278px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 135px">
                <b></b>
            </td>
            <td style="width: 278px">
                <asp:Button ID="Button_U" runat="server" onclick="Button_U_Click" 
                    style="font-weight: 700" Text="Change" Width="85px" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 135px">
                <b></b>
            </td>
            <td style="width: 278px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 135px">
                <b></b>
            </td>
            <td style="width: 278px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>




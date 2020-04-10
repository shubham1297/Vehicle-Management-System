<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddVendor.aspx.cs" Inherits="AddVendor" MasterpageFile ="~/AdminMaster.master"%>




<asp:Content ID="Content1" runat="server" 
    contentplaceholderid="ContentPlaceHolder2">
    <table class="style1">
        <tr>
            <td style="width: 112px">
                <b></b>
            </td>
            <td style="font-weight: 700; font-size: x-large; color: #006600; width: 295px">
                Add Driver Record</td>
            <td style="width: 276px; color: #FF0000">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 112px">
                &nbsp;</td>
            <td style="width: 295px">
                &nbsp;</td>
            <td style="width: 276px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 112px">
                <b>Vendor ID:</b></td>
            <td style="width: 295px">
                <asp:TextBox ID="TextBox_VID" runat="server" Width="240px" 
                    BackColor="#EAE8E3"></asp:TextBox>
            </td>
            <td style="width: 276px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox_VID" ErrorMessage="Please Enter Driver ID" 
                    style="color: #FF0000"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 112px">
                <b>Driver Name:</b></td>
            <td style="width: 295px">
                <asp:TextBox ID="TextBox_Vname" runat="server" Width="240px" 
                    BackColor="#EAE8E3"></asp:TextBox>
            </td>
            <td style="width: 276px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBox_Vname" ErrorMessage="Please Enter Driver Name" 
                    style="color: #FF0000"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 112px">
                <b>Email Address</b></td>
            <td style="width: 295px">
                <asp:TextBox ID="TextBox_Email" runat="server" Width="240px" 
                    BackColor="#EAE8E3"></asp:TextBox>
            </td>
            <td style="width: 276px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="TextBox_Email" ErrorMessage="Please Enter Email Address." 
                    style="color: #FF0000"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="TextBox_Email" ErrorMessage="Email Should Be Valid" 
                    style="color: #FF0000" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 112px">
                <b>Phone No:</b></td>
            <td style="width: 295px">
                <asp:TextBox ID="TextBox_Pno" runat="server" Width="240px" BackColor="#EAE8E3"></asp:TextBox>
            </td>
            <td style="width: 276px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="TextBox_Pno" ErrorMessage="Please Enter Phone No" 
                    style="color: #FF0000"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 112px">
                <b>Gender:</b></td>
            <td style="width: 295px">
                <asp:DropDownList ID="DropDownList_Gender" runat="server" Width="240px" 
                    BackColor="#EAE8E3">
                    <asp:ListItem>Select Your Gender </asp:ListItem>
                    <asp:ListItem Value="1">Male</asp:ListItem>
                    <asp:ListItem Value="2">Female</asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                </asp:DropDownList>
            </td>
            <td style="width: 276px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                    ControlToValidate="DropDownList_Gender" CssClass="style5" 
                    ErrorMessage="Select Your Gender" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 112px">
                <b>Bus Alloted:</b></td>
            <td style="width: 295px">
                <asp:DropDownList ID="DropDownList_Psupply" runat="server" Width="240px" 
                    BackColor="#EAE8E3">
                    <asp:ListItem>Select The Bus Type </asp:ListItem>
                    <asp:ListItem Value="1">Mini Bus</asp:ListItem>
                    <asp:ListItem Value="2">Classic Bus</asp:ListItem>
                    <asp:ListItem Value="3">Semi Delux Bus</asp:ListItem>
                    <asp:ListItem Value="4">Delux Bus</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td style="width: 276px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="DropDownList_Psupply" CssClass="style5" 
                    ErrorMessage="Select Bus Alloted" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 112px">
                <b>Hired Organization:</b></td>
            <td style="width: 295px">
                <asp:TextBox ID="TextBox_Org" runat="server" Width="240px" 
                    BackColor="#EAE8E3"></asp:TextBox>
            </td>
            <td style="width: 276px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                    ControlToValidate="TextBox_Org" 
                    ErrorMessage="Please Enter the Employeed Organization" style="color: #FF0000"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 112px">
                <b>Date Joined:</b></td>
            <td style="width: 295px">
                <asp:TextBox ID="TextBox_Date" runat="server" Width="240px" 
                    BackColor="#EAE8E3"></asp:TextBox>
            </td>
            <td style="width: 276px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                    ControlToValidate="TextBox_Date" CssClass="style5" 
                    ErrorMessage="Enter Join Date" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 112px; height: 23px">
                <b>Address:</b></td>
            <td style="height: 23px; width: 295px">
                <asp:TextBox ID="TextBox_Add" runat="server" Width="240px" Height="70px" 
                    TextMode="MultiLine" BackColor="#EAE8E3" BorderColor="White"></asp:TextBox>
            </td>
            <td style="height: 23px; width: 276px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                    ControlToValidate="TextBox_Add" CssClass="style5" 
                    ErrorMessage="Please Enter the Address " ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 112px">
                <asp:Label ID="Label_U1" runat="server" ForeColor="#006600" Text="Label" 
                    Visible="False"></asp:Label>
            </td>
            <td style="width: 295px">
                &nbsp;</td>
            <td style="width: 276px; color: #FF0000">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 112px">
                &nbsp;</td>
            <td style="width: 295px">
                <asp:Button ID="Button_Add" runat="server" onclick="Button_add_Click" 
                    style="font-weight: 700" Text="Add" Width="85px" />
&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button_View" runat="server" CausesValidation="False" 
                    PostBackUrl="~/ViewVendor.aspx" style="font-weight: 700" Text="View" 
                    Width="85px" />
&nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" CausesValidation="False" 
                    PostBackUrl="~/EditVendor.aspx" style="font-weight: 700" Text="Update" 
                    Width="85px" />
            </td>
            <td style="width: 276px; color: #FF0000">
                &nbsp;&nbsp;
                <asp:Button ID="Button_C" runat="server" CausesValidation="False" 
                    onclick="Button_C_Click" PostBackUrl="~/AdminHome.aspx" 
                    style="font-weight: 700" Text="Close" Width="85px" />
            </td>
        </tr>
        <tr>
            <td style="width: 112px">
                &nbsp;</td>
            <td style="width: 295px">
                &nbsp;</td>
            <td style="width: 276px; color: #FF0000">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 112px">
                &nbsp;</td>
            <td style="width: 295px">
                &nbsp;</td>
            <td style="width: 276px; color: #FF0000">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>






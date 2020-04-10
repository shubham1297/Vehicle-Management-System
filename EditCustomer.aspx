<%@ Page Language="C#" AutoEventWireup="true" CodeFile="EditCustomer.aspx.cs" Inherits="EditCustomer" MasterpageFile ="~/AdminMaster.master"%>

<asp:Content ID="Content1" runat="server" 
    contentplaceholderid="ContentPlaceHolder2">
    <table class="style1">
        <tr>
            <td style="width: 121px">
                &nbsp;</td>
            <td style="width: 311px; font-size: x-large; color: #006600;">
                <strong>Edit Customer Record</strong></td>
            <td style="color: #FF0000">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 121px">
                &nbsp;</td>
            <td style="width: 311px">
                &nbsp;</td>
            <td style="color: #FF0000">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 121px">
                <b>Customer ID:</b></td>
            <td style="width: 311px">
                <asp:TextBox ID="TextBox_CID" runat="server" Width="240px" 
                    BackColor="#EAE8E3"></asp:TextBox>
            </td>
            <td style="color: #FF0000">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="TextBox_CID" ErrorMessage="Please Enter an ID for Customer"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 121px">
                <b>Customer Name:</b></td>
            <td style="width: 311px">
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
            <td style="width: 121px">
                <b>Vehicle Number:</b></td>
            <td style="width: 311px">
                <asp:TextBox ID="TextBox_Vid" runat="server" Width="240px" BackColor="#EAE8E3"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="TextBox_Vid" CssClass="style5" 
                    ErrorMessage="Vehicle Number is Required" ForeColor="Red"></asp:RequiredFieldValidator>
            &nbsp;&nbsp;&nbsp; 
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 121px">
                <b>Phone Number:</b></td>
            <td style="width: 311px">
                <asp:TextBox ID="TextBox_Pno" runat="server" Width="240px" BackColor="#EAE8E3"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="TextBox_Pno" CssClass="style5" 
                    ErrorMessage="Phone Number is Required" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 121px">
                <b>Email Address:</b></td>
            <td style="width: 311px">
                <asp:TextBox ID="TextBox_Email" runat="server" Width="240px" 
                    BackColor="#EAE8E3"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBox_Email" CssClass="style5" 
                    ErrorMessage="Email Address is Required." ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 121px">
                <b>Gender:</b></td>
            <td style="width: 311px">
                <asp:DropDownList ID="DropDownList_Gender" runat="server" Width="240px" 
                    BackColor="#EAE8E3">
                    <asp:ListItem>Select Your Gender </asp:ListItem>
                    <asp:ListItem Value="1">Male</asp:ListItem>
                    <asp:ListItem Value="2">Female</asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="DropDownList_Gender" CssClass="style5" 
                    ErrorMessage="Select Your Gender" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 121px">
                <strong>Date Joined:</strong></td>
            <td style="width: 311px">
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
            <td style="width: 121px">
                <b>Vehicle Type:</b></td>
            <td style="width: 311px">
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
            <td style="width: 121px">
                <b>Address:</b></td>
            <td style="width: 311px">
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
            <td style="width: 121px">
                &nbsp;</td>
            <td style="width: 311px">
                &nbsp;</td>
            <td>
                Select an ID to Update...!</td>
        </tr>
        <tr>
            <td style="width: 121px">
                <asp:Label ID="Label1" runat="server" style="color: #006600" Text="Label" 
                    Visible="False"></asp:Label>
            </td>
            <td style="width: 311px">
                &nbsp;</td>
            <td>
                <asp:DropDownList ID="DropDownListE" runat="server" AutoPostBack="True" 
                    BackColor="#EAE8E3" onselectedindexchanged="DropDownListE_SelectedIndexChanged" 
                    Width="240px">
                    <asp:ListItem>Select</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td style="width: 121px">
                &nbsp;</td>
            <td style="width: 311px">
                <asp:Button ID="Button_U" runat="server" onclick="Button_U_Click" 
                    style="font-weight: 700" Text="Update" Width="85px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button_C" runat="server" CausesValidation="False" 
                    PostBackUrl="~/AddCustomer.aspx" style="font-weight: 700" Text="Close" 
                    Width="85px" />
            </td>
            <td>
                <asp:Button ID="Button_E" runat="server" CausesValidation="False" 
                    onclick="Button_E_Click" style="font-weight: 700" Text="Edit" Width="85px" />
            </td>
        </tr>
    </table>
</asp:Content>



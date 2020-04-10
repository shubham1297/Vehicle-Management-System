<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Registration" MasterPageFile="~/MasterPage.master"%>


<asp:Content ID="Content1" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">
    <table class="style1">
        <tr>
            <td style="width: 131px">
                &nbsp;</td>
            <td style="color: #006600; font-size: x-large; font-family: 'Times New Roman'; width: 357px">
                <strong>User Feedback Form</strong></td>
            <td style="width: 351px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 131px">
                &nbsp;</td>
            <td style="width: 357px">
                &nbsp;</td>
            <td style="width: 351px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 131px">
                <strong>User Name:</strong></td>
            <td style="width: 357px">
                <asp:TextBox ID="TextBox_Uname" runat="server" Width="240px" 
                    BackColor="#EAE8E3"></asp:TextBox>
            </td>
            <td style="width: 351px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox_Uname" CssClass="style5" 
                    ErrorMessage="User Name is Required" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp; 
                <asp:Label ID="Label1" runat="server" style="color: #006600" Text="Label" 
                    Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 131px">
                <strong>Email Address:</strong></td>
            <td style="width: 357px">
                <asp:TextBox ID="TextBox_Email" runat="server" Width="240px" 
                    BackColor="#EAE8E3"></asp:TextBox>
            </td>
            <td style="width: 351px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBox_Email" CssClass="style5" 
                    ErrorMessage="Email Address is Required." ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="TextBox_Email" ErrorMessage="Email ID Should be Valid" 
                    ForeColor="Red" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 131px">
                <strong>Phone Number:</strong></td>
            <td style="width: 357px">
                <asp:TextBox ID="TextBox_Pno" runat="server" Width="240px" BackColor="#EAE8E3"></asp:TextBox>
            </td>
            <td style="width: 351px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="TextBox_Pno" CssClass="style5" 
                    ErrorMessage="Phone Number is Required" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 131px">
                <strong>Vehicle Number:</strong></td>
            <td style="width: 357px">
                <asp:TextBox ID="TextBox_Vid" runat="server" Width="240px" BackColor="#EAE8E3"></asp:TextBox>
            </td>
            <td style="width: 351px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="TextBox_Vid" CssClass="style5" 
                    ErrorMessage="Vehicle Number is Required" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 131px">
                <strong>Gender:</strong></td>
            <td style="width: 357px">
                <asp:DropDownList ID="DropDownList_Gender" runat="server" Width="240px" 
                    BackColor="#EAE8E3">
                    <asp:ListItem>I am a ................................</asp:ListItem>
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                </asp:DropDownList>
            </td>
            <td style="width: 351px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="DropDownList_Gender" CssClass="style5" 
                    ErrorMessage="Select Your Gender" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 131px">
                <strong>Password:</strong></td>
            <td style="width: 357px">
                <asp:TextBox ID="TextBox_Pass" runat="server" TextMode="Password" Width="240px" 
                    BackColor="#EAE8E3"></asp:TextBox>
            </td>
            <td style="width: 351px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="TextBox_Pass" CssClass="style5" 
                    ErrorMessage="Seven Character Password Required" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 131px">
                <strong>Confirm Password:</strong></td>
            <td style="width: 357px">
                <asp:TextBox ID="TextBox_CPass" runat="server" TextMode="Password" 
                    Width="240px" BackColor="#EAE8E3"></asp:TextBox>
            </td>
            <td style="width: 351px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                    ControlToValidate="TextBox_CPass" CssClass="style5" 
                    ErrorMessage="Re-Enter Your Password." ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToCompare="TextBox_Pass" ControlToValidate="TextBox_CPass" 
                    ErrorMessage="Both Passwords Must be Same" ForeColor="Red"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 131px">
                <strong>City:</strong></td>
            <td style="width: 357px">
                <asp:DropDownList ID="DropDownList_City" runat="server" Width="240px" 
                    BackColor="#EAE8E3">
                    <asp:ListItem>Select Your City</asp:ListItem>
                    <asp:ListItem>Delhi</asp:ListItem>
                    <asp:ListItem>Mumbai</asp:ListItem>
                    <asp:ListItem>Chandigarh</asp:ListItem>
                    <asp:ListItem>Kolkata</asp:ListItem>
                    <asp:ListItem>Chennai</asp:ListItem>
                    <asp:ListItem>Pune</asp:ListItem>
                    <asp:ListItem>banglore</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td style="width: 351px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                    ControlToValidate="DropDownList_City" CssClass="style5" 
                    ErrorMessage="Select Your City" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 131px">
                <strong>Feedback:</strong></td>
            <td style="width: 357px">
                <asp:TextBox ID="TextBox_Add" runat="server" Width="240px" Height="70px" 
                    TextMode="MultiLine" BackColor="#EAE8E3" BorderColor="White"></asp:TextBox>
            </td>
            <td style="width: 351px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                    ControlToValidate="TextBox_Add" CssClass="style5" 
                    ErrorMessage="Feedback Is Required" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 131px">
                &nbsp;</td>
            <td style="width: 357px">
                &nbsp;</td>
            <td style="width: 351px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 131px">
                &nbsp;</td>
            <td style="width: 357px">
                <asp:Button ID="Button1" runat="server" style="font-weight: 700" Text="Submit" 
                    Width="85px" onclick="Button1_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <input id="Reset1" style="width: 85px; font-weight: 700" type="reset" 
                    value="Reset" /></td>
            <td style="width: 351px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 131px">
                &nbsp;</td>
            <td style="width: 357px">
                &nbsp;</td>
            <td style="width: 351px">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>




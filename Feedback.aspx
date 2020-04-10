<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Feedback.aspx.cs" Inherits="Feedback" MasterPageFile ="~/CustomerMaster.master"%>

<asp:Content ID="Content1" runat="server" 
    contentplaceholderid="ContentPlaceHolder2">
    <table class="style1">
        <tr>
            <td style="width: 148px">
                <b></b>
            </td>
            <td style="font-size: x-large; color: #006600; width: 316px">
                <strong>Give Feedback Here</strong></td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 148px">
                <b></b>
            </td>
            <td style="width: 316px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 148px">
                <b>Customer Name:</b></td>
            <td style="width: 316px">
                <asp:TextBox ID="TextBox_Uname" runat="server" Width="240px" 
                    BackColor="#EAE8E3"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                    ControlToValidate="TextBox_Uname" ErrorMessage="Please Enter Your Name" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 148px">
                <b>
                <asp:Label ID="LabelVN" runat="server" Text="Vehicle Number:"></asp:Label>
                </b>
            </td>
            <td style="width: 316px">
                <asp:TextBox ID="TextBox_Vid" runat="server" Width="240px" 
                    BackColor="#EAE8E3"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                    ControlToValidate="TextBox_Vid" ErrorMessage="Please Enter Your Vehicle No" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 148px">
                <b>Phone Number:</b></td>
            <td style="width: 316px">
                <asp:TextBox ID="TextBox_Pno" runat="server" Width="240px" 
                    BackColor="#EAE8E3"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                    ControlToValidate="TextBox_Pno" ErrorMessage="Please Enter Your Phone No" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 148px">
                <b>
                <asp:Label ID="Label7" runat="server" Text="Subject:"></asp:Label>
                </b>
            </td>
            <td style="width: 316px">
                <asp:TextBox ID="TextBox_Sub" runat="server" Width="240px" 
                    BackColor="#EAE8E3"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                    ControlToValidate="TextBox_Sub" ErrorMessage="Please Enter Subject Here" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 148px">
                <b>
                <asp:Label ID="Label4" runat="server" Text="Service Satisfaction:"></asp:Label>
                </b>
            </td>
            <td style="width: 316px">
                <asp:DropDownList ID="DropDownList_Sat" runat="server" BackColor="#EAE8E3" 
                    Width="240px">
                    <asp:ListItem>Select</asp:ListItem>
                    <asp:ListItem>Excellent</asp:ListItem>
                    <asp:ListItem>Good</asp:ListItem>
                    <asp:ListItem>Fair</asp:ListItem>
                    <asp:ListItem>Poor</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                    ControlToValidate="DropDownList_Sat" 
                    ErrorMessage="Please Select Satisfaction Level" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 148px">
                <b>
                <asp:Label ID="Label_Det" runat="server" Text="Description:"></asp:Label>
                </b>
            </td>
            <td style="width: 316px">
                <asp:TextBox ID="TextBox_Descr" runat="server" Width="240px" 
                    BackColor="#EAE8E3" Height="78px" TextMode="MultiLine"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="TextBox_Descr" 
                    ErrorMessage="Please Enter Details Of Description" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 148px">
                <b></b>
            </td>
            <td style="width: 316px">
                <asp:Label ID="Label_U1" runat="server" ForeColor="#006600" Text="Label1" 
                    Visible="False"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 148px">
                <b></b>
            </td>
            <td style="width: 316px">
                <asp:Button ID="Button_Sub" runat="server" onclick="Button_Sub_Click" 
                    style="font-weight: 700" Text="Submit" Width="85px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button_C" runat="server" CausesValidation="False" 
                    onclick="Button_C_Click" style="text-align: left; font-weight: 700;" 
                    Text="Close" Width="85px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <input id="Reset1" style="width: 80px; font-weight: 700" type="reset" 
                    value="Reset" /></td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 148px">
                <b></b>
            </td>
            <td style="width: 316px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>



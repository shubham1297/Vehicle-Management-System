<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ViewVendor.aspx.cs" Inherits="ViewVendor" MasterpageFile ="~/AdminMaster.master"%>




<asp:Content ID="Content1" runat="server" 
    contentplaceholderid="ContentPlaceHolder2">
    <table class="style1">
    <tr>
        <td>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <strong><span style="font-size: x-large; color: #006600">View Driver Records</span></strong>&nbsp;</td>
    </tr>
    <tr>
        <td>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="VID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" >
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="VID" HeaderText="VID" ReadOnly="True" SortExpression="VID" />
                    <asp:BoundField DataField="VendorName" HeaderText="VendorName" SortExpression="VendorName" />
                    <asp:BoundField DataField="EmailAddress" HeaderText="EmailAddress" SortExpression="EmailAddress" />
                    <asp:BoundField DataField="PhoneNo" HeaderText="PhoneNo" SortExpression="PhoneNo" />
                    <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                    <asp:BoundField DataField="Organization" HeaderText="Organization" SortExpression="Organization" />
                    <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                </Columns>
                <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                <SortedAscendingCellStyle BackColor="#FDF5AC" />
                <SortedAscendingHeaderStyle BackColor="#4D0000" />
                <SortedDescendingCellStyle BackColor="#FCF6C0" />
                <SortedDescendingHeaderStyle BackColor="#820000" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:AdminConnectionString %>" 
                SelectCommand="SELECT [VID], [VendorName], [EmailAddress], [PhoneNo], [Gender], [Organization], [Address] FROM [AddVendor]">
            </asp:SqlDataSource>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label_U1" runat="server" ForeColor="#006600" Text="Label"></asp:Label>
        </td>
    </tr>
    <tr>
        <td>
            <table class="style1">
                <tr>
                    <td style="width: 235px">
                        Select Vendor ID to delete Record:</td>
                    <td style="width: 244px">
                        <asp:DropDownList ID="DropDownList_VID" runat="server" 
                            DataSourceID="SqlDataSource1" DataTextField="VID" DataValueField="VID" 
                            Width="240px">
                            <asp:ListItem>Select</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 235px">
                        &nbsp;</td>
                    <td style="width: 244px">
                        <asp:Button ID="Button_Del" runat="server" CausesValidation="False" 
                            onclick="Button_Del_Click" style="font-weight: 700" Text="Delete" Width="85px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button1" runat="server" CausesValidation="False" 
                            onclick="Button1_Click" style="font-weight: 700" Text="Refresh" Width="85px" />
                    </td>
                    <td>
                        <asp:Button ID="Button_Close" runat="server" CausesValidation="False" 
                            PostBackUrl="~/AddVendor.aspx" style="font-weight: 700" Text="Close" 
                            Width="85px" />
                    </td>
                </tr>
            </table>
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
    </tr>
</table>
</asp:Content>






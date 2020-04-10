<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ViewFeedback.aspx.cs" Inherits="ViewFeedback" MasterpageFile ="~/AdminMaster.master"%>


<asp:Content ID="Content1" runat="server" 
    contentplaceholderid="ContentPlaceHolder2">
    <table class="style1">
        <tr>
            <td colspan="3">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <strong><span style="font-size: x-large; color: #006600">Customer Feedback</span></strong>&nbsp;</td>
        </tr>
        <tr>
            <td colspan="3">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="3">
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                    AllowSorting="True" AutoGenerateColumns="False" BackColor="#DEBA84" 
                    BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
                    CellSpacing="2" DataSourceID="SqlDataSource1">
                    <Columns>
                        <asp:BoundField DataField="Customername" HeaderText="Customername" 
                            SortExpression="Customername" />
                        <asp:BoundField DataField="VehicleNo" HeaderText="VehicleNo" 
                            SortExpression="VehicleNo" />
                        <asp:BoundField DataField="PhoneNo" HeaderText="PhoneNo" 
                            SortExpression="PhoneNo" />
                        <asp:BoundField DataField="Subject" HeaderText="Subject" 
                            SortExpression="Subject" />
                        <asp:BoundField DataField="Description" HeaderText="Description" 
                            SortExpression="Description" />
                        <asp:BoundField DataField="Satisfaction" HeaderText="Satisfaction" 
                            SortExpression="Satisfaction" />
                    </Columns>
                    <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                    <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                    <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                    <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                    <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#FFF1D4" />
                    <SortedAscendingHeaderStyle BackColor="#B95C30" />
                    <SortedDescendingCellStyle BackColor="#F1E5CE" />
                    <SortedDescendingHeaderStyle BackColor="#93451F" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:AdminConnectionString %>" 
                    SelectCommand="SELECT * FROM [Feedback]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td style="width: 297px">
                &nbsp;</td>
            <td style="width: 335px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 297px">
                <asp:Label ID="Label_U1" runat="server" ForeColor="#006600" 
                    Text="Select A Vehicle Number To Delete Record:" style="font-weight: 700"></asp:Label>
            </td>
            <td style="width: 335px">
                <asp:DropDownList ID="DropDownListID" runat="server" AutoPostBack="True" 
                    BackColor="#DDDDDD" DataSourceID="SqlDataSource1" DataTextField="VehicleNo" 
                    DataValueField="VehicleNo" Width="240px">
                </asp:DropDownList>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 297px">
                &nbsp;</td>
            <td style="width: 335px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 297px">
                &nbsp;</td>
            <td style="width: 335px">
                <asp:Button ID="Button_D" runat="server" onclick="Button_D_Click" 
                    style="font-weight: 700" Text="Delete" Width="85px" />
&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button_V" runat="server" CausesValidation="False" 
                    onclick="Button_V_Click" style="font-weight: 700" Text="Refresh" Width="85px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button_C" runat="server" onclick="Button_C_Click" 
                    style="font-weight: 700" Text="Close" Width="85px" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>




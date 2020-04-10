<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ViewCustomer.aspx.cs" Inherits="ViewCustomer" MasterPageFile ="~/AdminMaster.master"%>


<asp:Content ID="Content1" runat="server" 
    contentplaceholderid="ContentPlaceHolder2">
    <table class="style1">
        <tr>
            <td>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <strong><span style="font-size: x-large; color: #006600">Customer Records&nbsp;</span></strong></td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                    AllowSorting="True" AutoGenerateColumns="False" BackColor="#DEBA84" 
                    BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
                    CellSpacing="2" DataSourceID="SqlDataSource1">
                    <Columns>
                        <asp:BoundField DataField="CID" HeaderText="CID" SortExpression="CID" />
                        <asp:BoundField DataField="CustomerName" HeaderText="CustomerName" 
                            SortExpression="CustomerName" />
                        <asp:BoundField DataField="VehicleNo" HeaderText="VehicleNo" 
                            SortExpression="VehicleNo" />
                        <asp:BoundField DataField="PhoneNo" HeaderText="PhoneNo" 
                            SortExpression="PhoneNo" />
                        <asp:BoundField DataField="EmailAddress" HeaderText="EmailAddress" 
                            SortExpression="EmailAddress" />
                        <asp:BoundField DataField="Address" HeaderText="Address" 
                            SortExpression="Address" />
                        <asp:BoundField DataField="VehicleType" HeaderText="VehicleType" 
                            SortExpression="VehicleType" />
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
                    SelectCommand="SELECT [CID], [CustomerName], [VehicleNo], [PhoneNo], [EmailAddress], [Address], [VehicleType] FROM [AddCustomer]">
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <table class="style1">
                    <tr>
                        <td style="width: 250px">
                            <asp:Label ID="LabelId" runat="server" 
                                Text="Select a vehicle number to delete record:"></asp:Label>
                        </td>
                        <td style="width: 245px">
                            <asp:DropDownList ID="DropDownList_CID" runat="server" AutoPostBack="True" 
                                DataSourceID="SqlDataSource1" DataTextField="VehicleNo" DataValueField="CID" 
                                style="text-align: center" Width="240px">
                                <asp:ListItem>Select</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label_U1" runat="server" ForeColor="#006600" Text="Label1" 
                    Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <table class="style1">
                    <tr>
                        <td style="width: 232px">
                            <asp:Button ID="Button_D" runat="server" onclick="Button_D_Click" 
                                style="font-weight: 700" Text="Delete" Width="85px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="Button1" runat="server" CausesValidation="False" 
                                onclick="Button1_Click" style="font-weight: 700" Text="Refresh" Width="85px" />
                        </td>
                        <td>
                            <asp:Button ID="Button_C" runat="server" CausesValidation="False" 
                                onclick="Button_C_Click" style="font-weight: 700" Text="Close" Width="85px" />
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>




<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ViewVehicle.aspx.cs" Inherits="ViewVehicle" MasterPageFile ="~/AdminMaster.master"%>


<asp:Content ID="Content1" runat="server" 
    contentplaceholderid="ContentPlaceHolder2">
    <table class="style1">
        <tr>
            <td>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <strong><span style="font-size: x-large; color: #006600">View Vehicles Record&nbsp;</span></strong></td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                    AllowSorting="True" AutoGenerateColumns="False" BackColor="#DEBA84" 
                    BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
                    CellSpacing="2" DataSourceID="SqlDataSource1">
                    <Columns>
                        <asp:BoundField DataField="VehicleNo" HeaderText="VehicleNo" 
                            SortExpression="VehicleNo" />
                        <asp:BoundField DataField="VehicleColor" HeaderText="VehicleColor" 
                            SortExpression="VehicleColor" />
                        <asp:BoundField DataField="VehicleModel" HeaderText="VehicleModel" 
                            SortExpression="VehicleModel" />
                        <asp:BoundField DataField="VehicleType" HeaderText="VehicleType" 
                            SortExpression="VehicleType" />
                        <asp:BoundField DataField="CustomerName" HeaderText="CustomerName" 
                            SortExpression="CustomerName" />
                        <asp:BoundField DataField="Location" HeaderText="Location" 
                            SortExpression="Location" />
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
                    SelectCommand="SELECT [VehicleNo], [VehicleColor], [VehicleModel], [VehicleType], [customerName], [Location] FROM [addVehicle]">
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
                        <td style="width: 245px">
                            <asp:Label ID="Label_D" runat="server" style="font-weight: 700" 
                                Text="Select ID to Delete Vehicle Record:"></asp:Label>
&nbsp;</td>
                        <td style="width: 245px">
                            <asp:DropDownList ID="DropDownList_CID" runat="server" 
                                DataSourceID="SqlDataSource1" DataTextField="VehicleNo" 
                                DataValueField="VehicleNo" Width="240px">
                            </asp:DropDownList>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 245px">
                            <asp:Label ID="Label_U1" runat="server" ForeColor="#006600" Text="Label1" 
                                Visible="False"></asp:Label>
                        </td>
                        <td style="width: 245px">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 245px">
                            &nbsp;</td>
                        <td style="width: 245px">
                            <asp:Button ID="Button_Del" runat="server" CausesValidation="False" 
                                onclick="Button_Del_Click" style="font-weight: 700" Text="Delete" Width="85px" />
&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="Button_Ref" runat="server" CausesValidation="False" 
                                onclick="Button_Ref_Click" PostBackUrl="~/ViewVehicle.aspx" Text="Refresh" 
                                Width="85px" style="font-weight: 700" />
                        </td>
                        <td>
                            <asp:Button ID="Button_Close" runat="server" CausesValidation="False" 
                                PostBackUrl="~/AddVehicle.aspx" style="font-weight: 700" Text="Close" 
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




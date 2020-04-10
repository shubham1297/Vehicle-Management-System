<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.master" AutoEventWireup="true" CodeFile="ViewRoute.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" runat="server" 
    contentplaceholderid="ContentPlaceHolder2">
    <table class="style1">
        <tr>
            <td>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <strong><span style="font-size: x-large; color: #006600">View Route Record&nbsp;</span></strong></td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                    AllowSorting="True" AutoGenerateColumns="False" BackColor="#DEBA84" 
                    BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
                    CellSpacing="2" DataSourceID="SqlDataSource1">
                    <Columns>
                        <asp:BoundField DataField="Driver" HeaderText="Driver" 
                            SortExpression="Driver" />
                        <asp:BoundField DataField="RouteStart" HeaderText="RouteStart" 
                            SortExpression="RouteStart" />
                        <asp:BoundField DataField="RouteDestination" HeaderText="RouteDestination" 
                            SortExpression="RouteDestination" />
                        <asp:BoundField DataField="DepartureTime" HeaderText="DepartureTime" 
                            SortExpression="DepartureTime" />
                        <asp:BoundField DataField="ArrivalTime" HeaderText="ArrivalTime" 
                            SortExpression="ArrivalTime" />
                        <asp:BoundField DataField="VehicleNo" HeaderText="VehicleNo" 
                            SortExpression="VehicleNo" />
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
                    SelectCommand="SELECT [Driver], [RouteStart], [RouteDestination], [DepartureTime], [ArrivalTime], [VehicleNo] FROM [AddRoute]">
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




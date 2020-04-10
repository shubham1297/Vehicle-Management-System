<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ViewUsers.aspx.cs" Inherits="ViewUsers" MasterPageFile="~/AdminMaster.master"%>




<asp:Content ID="Content1" runat="server" 
    contentplaceholderid="ContentPlaceHolder2">
    <table class="style1">
        <tr>
            <td>
                <table class="style1">
                    <tr>
                        <td style="width: 180px">
                            &nbsp;</td>
                        <td style="color: #006600; font-size: x-large; width: 321px">
                            <strong>View User Information</strong></td>
                        <td>
                            &nbsp;</td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                    AllowSorting="True" AutoGenerateColumns="False" CellPadding="3" 
                    DataSourceID="SqlDataSource1" 
                    Width="614px" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" 
                    BorderWidth="1px" CellSpacing="2">
                    <Columns>
                        <asp:BoundField DataField="UserName" HeaderText="UserName" 
                            SortExpression="UserName" />
                        <asp:BoundField DataField="EmailAddress" HeaderText="EmailAddress" 
                            SortExpression="EmailAddress" />
                        <asp:BoundField DataField="PhoneNo" HeaderText="PhoneNo" 
                            SortExpression="PhoneNo" />
                        <asp:BoundField DataField="VehicleNo" HeaderText="VehicleNo" 
                            SortExpression="VehicleNo" />
                        <asp:BoundField DataField="Gender" HeaderText="Gender" 
                            SortExpression="Gender" />
                        <asp:BoundField DataField="Password" HeaderText="Password" 
                            SortExpression="Password" />
                        <asp:BoundField DataField="City" HeaderText="City" 
                            SortExpression="City" />
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
                </td>
        </tr>
        <tr>
            <td>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    
                    SelectCommand="SELECT [UserName], [EmailAddress], [PhoneNo], [VehicleNo], [Gender], [ID], [Password], [City] FROM [UserData]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td>
                <table class="style1">
                    <tr>
                        <td style="width: 297px">
                            Please select a vehicle no to delete record:</td>
                        <td style="width: 244px">
                            <asp:DropDownList ID="DropDownList_VID" runat="server" Width="240px" 
                                AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="UserName" 
                                DataValueField="UserName">
                            </asp:DropDownList>
                        </td>
                        <td>
                            <asp:Label ID="Label_U1" runat="server" style="color: #006600; font-weight: 700" 
                                Text="Label" Visible="False"></asp:Label>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td>
                <table class="style1">
                    <tr>
                        <td style="width: 249px">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="Button_Del" runat="server" onclick="Button_Del_Click" 
                                style="font-weight: 700" Text="Delete" Width="85px" />
                            &nbsp;</td>
                        <td>
&nbsp;<asp:Button ID="Button_Ref" runat="server" style="font-weight: 700" Text="Refresh" Width="85px" 
                                onclick="Button_Ref_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="Button_Close" runat="server" style="font-weight: 700" 
                                Text="Close" Width="85px" PostBackUrl="~/AdminHome.aspx" />
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>






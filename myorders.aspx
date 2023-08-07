<%@ Page Language="C#" MasterPageFile="~/sitemaster.master" AutoEventWireup="true" CodeFile="myorders.aspx.cs" Inherits="myorders" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table style="width:100%;">
        <tr>
            <td align="center">
                <asp:Label ID="Label1" runat="server" BorderStyle="Groove" 
                    Text="your order as bellow:::::"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="center">
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                    AllowSorting="True" AutoGenerateColumns="False" BackColor="White" 
                    BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
                    DataSourceID="SqlDataSource1" GridLines="Vertical">
                    <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                        <asp:BoundField DataField="address" HeaderText="address" 
                            SortExpression="address" />
                        <asp:BoundField DataField="pincode" HeaderText="pincode" 
                            SortExpression="pincode" />
                        <asp:BoundField DataField="payment" HeaderText="payment" 
                            SortExpression="payment" />
                        <asp:BoundField DataField="typeofproduct" HeaderText="typeofproduct" 
                            SortExpression="typeofproduct" />
                        <asp:BoundField DataField="productname" HeaderText="productname" 
                            SortExpression="productname" />
                        <asp:BoundField DataField="productprice" HeaderText="productprice" 
                            SortExpression="productprice" />
                        <asp:BoundField DataField="productsize" HeaderText="productsize" 
                            SortExpression="productsize" />
                    </Columns>
                    <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                    <AlternatingRowStyle BackColor="#DCDCDC" />
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td align="center">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT * FROM [buynow]"></asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>


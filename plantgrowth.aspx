<%@ Page Language="C#" MasterPageFile="~/sitemaster.master" AutoEventWireup="true" CodeFile="plantgrowth.aspx.cs" Inherits="plantgrowth" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <br />
    plant growth(છોડ વ્રુધ્હિ)<asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" 
        RepeatColumns="3" 
        onitemcommand="DataList1_ItemCommand" CellPadding="4" ForeColor="#333333">
        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <ItemTemplate>
            productID:
            <asp:Label ID="productIDLabel" runat="server" Text='<%# Eval("productID") %>' />
            <br />
            &nbsp;<asp:ImageButton ID="ImageButton1" runat="server" 
                ImageUrl='<%# Eval("productimage") %>' Width="250px" 
                CommandArgument='<%#Eval("productID")%>' CommandName="showdetails" />
            <br />
            productname:
            <asp:Label ID="productnameLabel" runat="server" 
                Text='<%# Eval("productname") %>' />
            <br />
            productsize:
            <asp:Label ID="productsizeLabel" runat="server" 
                Text='<%# Eval("productsize") %>' />
            <br />
            productprice:
            <asp:Label ID="productpriceLabel" runat="server" 
                Text='<%# Eval("productprice") %>' />
            <br />
            <br />
        </ItemTemplate>
        <AlternatingItemStyle BackColor="White" />
        <ItemStyle BackColor="#E3EAEB" />
        <SelectedItemStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
    </asp:DataList>
    <br />
    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT [productID], [productimage], [productname], [productsize], [productprice] FROM [plantgrowth]">
    </asp:SqlDataSource>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>


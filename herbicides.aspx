<%@ Page Language="C#" MasterPageFile="~/sitemaster.master" AutoEventWireup="true" CodeFile="herbicides.aspx.cs" Inherits="herbicides" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <br />
    herbicides(વનસ્પતિ નાશક)<asp:DataList ID="DataList1" runat="server" 
        DataSourceID="SqlDataSource1" RepeatColumns="3" onitemcommand="DataList1_ItemCommand" 
        onselectedindexchanged="DataList1_SelectedIndexChanged" CellPadding="4" 
        ForeColor="#333333">
        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <ItemTemplate>
            <asp:Label ID="Label1" runat="server" Text="productID:-"></asp:Label>
            &nbsp;
            <asp:Label ID="Label2" runat="server" Text='<%# Eval("productId") %>'></asp:Label>
            <br />
            <br />
            <asp:ImageButton ID="ImageButton1" runat="server" 
                ImageUrl='<%# Eval("productimage") %>' Width="250px" 
                CommandArgument='<%# Eval("productID")%>' CommandName="showdetails" />
            <br />
            <br />
            <asp:Label ID="Label3" runat="server" Text="product Name:-"></asp:Label>
            &nbsp;
            <asp:Label ID="Label4" runat="server" Text='<%# Eval("productname") %>'></asp:Label>
            <br />
            <asp:Label ID="Label5" runat="server" Text="product Size:-"></asp:Label>
            &nbsp;&nbsp;
            <asp:Label ID="Label6" runat="server" Text='<%# Eval("productsize") %>'></asp:Label>
            <br />
            <asp:Label ID="Label7" runat="server" Text="product Price"></asp:Label>
            :-&nbsp;
            <asp:Label ID="Label8" runat="server" Text='<%# Eval("productsize") %>'></asp:Label>
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
        SelectCommand="SELECT [productId], [productimage], [productname], [productprice], [productsize] FROM [herbicides]">
    </asp:SqlDataSource>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>


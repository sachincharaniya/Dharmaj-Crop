<%@ Page Language="C#" MasterPageFile="~/sitemaster.master" AutoEventWireup="true" CodeFile="insecticides1.aspx.cs" Inherits="insecticides1" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" 
        onitemcommand="DataList1_ItemCommand" CellPadding="4" ForeColor="#333333">
        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <ItemTemplate>
             ProductID:-<asp:Label ID="Label1" runat="server" Text='<%# Eval("productID") %>'></asp:Label>
            <br />
            <asp:Image ID="Image2" runat="server" ImageUrl='<%# Eval("productimage") %>' 
                Width="250px" />
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Text="productname;-"></asp:Label>
            <asp:Label ID="Label3" runat="server" Text='<%# Eval("productname") %>'></asp:Label>
            <br />
            <asp:Label ID="Label4" runat="server" Text="productsize"></asp:Label>
            :-&nbsp;&nbsp;
            <asp:Label ID="Label5" runat="server" Text='<%# Eval("productsize") %>'></asp:Label>
            <br />
            <asp:Label ID="Label6" runat="server" Text="productprice"></asp:Label>
            :-
            <asp:Label ID="Label7" runat="server" Text='<%# Eval("productprice") %>'></asp:Label>
             <br />
             <asp:ImageButton ID="ImageButton1" runat="server" Height="50px" 
                 ImageUrl="~/images/project1/buy now3.jpg" PostBackUrl="~/buynow.aspx" 
                 Width="150px" />
             <br />
            <br />
            <asp:Label ID="Label8" runat="server" Text="productDetails:-"></asp:Label>
            <br />
            <br />
            &nbsp;<asp:Label ID="Label9" runat="server" Text='<%# Eval("productdescription") %>'></asp:Label>
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
        SelectCommand="SELECT * FROM [insectides] WHERE ([productID] = @productID)">
        <SelectParameters>
            <asp:QueryStringParameter Name="productID" QueryStringField="id" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>


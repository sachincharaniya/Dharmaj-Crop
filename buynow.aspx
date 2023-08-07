<%@ Page Language="C#" MasterPageFile="~/sitemaster.master" AutoEventWireup="true" CodeFile="buynow.aspx.cs" Inherits="buynow" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table style="width:100%;" bgcolor="#999966">
        <tr>
            <td align="center" colspan="2">
                <asp:Image ID="Image2" runat="server" Height="66px" 
                    ImageUrl="~/images/project1/buy now2.png" style="margin-left: 0px" 
                    Width="216px" />
            </td>
        </tr>
        <tr>
            <td align="center">
                <asp:Label ID="lbl_name" runat="server" Text="name"></asp:Label>
            </td>
            <td align="left">
                <asp:TextBox ID="txt_name" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txt_name" ErrorMessage="please enter name of customer"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="center">
                <asp:Label ID="lbl_address" runat="server" Text="address"></asp:Label>
            </td>
            <td align="left">
                <asp:TextBox ID="txt_address" runat="server" TextMode="MultiLine"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txt_address" ErrorMessage="enter valid address"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="center">
                <asp:Label ID="lbl_pincode" runat="server" Text="pin code"></asp:Label>
            </td>
            <td align="left">
                <asp:TextBox ID="txt_pincode" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="txt_pincode" ErrorMessage="zip code like 362265" 
                    ValidationExpression="\d{6}"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td align="center">
                <asp:Label ID="Label1" runat="server" Text="payment"></asp:Label>
            </td>
            <td align="left">
                <asp:TextBox ID="txt_payment" runat="server" Enabled="False">Cash on Delevery</asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="center">
                <asp:Label ID="Label2" runat="server" Text="typeOfProduct"></asp:Label>
            </td>
            <td align="left">
                <asp:DropDownList ID="ddl_typeofprod" runat="server" 
                    onselectedindexchanged="ddl_typeofprod_SelectedIndexChanged" 
                    AutoPostBack="True">
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="ddl_typeofprod" ErrorMessage="please select type of product"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="center">
                <asp:Label ID="Label3" runat="server" Text="productName"></asp:Label>
            </td>
            <td align="left">
                <asp:DropDownList ID="ddl_nameofprod" runat="server" AutoPostBack="True" 
                    onselectedindexchanged="ddl_nameofprod_SelectedIndexChanged">
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="ddl_nameofprod" ErrorMessage="select name of product"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="center">
                <asp:Label ID="Label4" runat="server" Text="productPrice"></asp:Label>
            </td>
            <td align="left">
                <asp:DropDownList ID="ddl_price" runat="server" AutoPostBack="True" 
                    Enabled="False">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td align="center">
                <asp:Label ID="Label5" runat="server" Text="productSize"></asp:Label>
            </td>
            <td align="left">
                <asp:DropDownList ID="ddl_productsize" runat="server">
                    <asp:ListItem>250 ml/g</asp:ListItem>
                    <asp:ListItem>500 ml/g</asp:ListItem>
                    <asp:ListItem>1 ltr/kg</asp:ListItem>
                    <asp:ListItem>5 ltr/kg</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="ddl_productsize" 
                    ErrorMessage="select size as per you require"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="center">
                &nbsp;</td>
            <td align="left">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" Text="Place Your Order" 
                    onclick="Button1_Click" />
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>


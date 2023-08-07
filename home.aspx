<%@ Page Language="C#" MasterPageFile="~/sitemaster.master" AutoEventWireup="true" CodeFile="home.aspx.cs" Inherits="home" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table style="width:100%;">
        <tr>
            <td align="left" bgcolor="#CC00FF">
                &nbsp;&nbsp;
                <asp:Label ID="Label11" runat="server"></asp:Label>
            </td>
            <td align="right" bgcolor="#66FFFF">
                &nbsp;<asp:HyperLink ID="HyperLink1" runat="server" 
                    NavigateUrl="~/myorders.aspx">MY ORDERS.</asp:HyperLink>
                &nbsp;&nbsp;&nbsp;&nbsp;
                </td>
            <td align="right" bgcolor="#CC6699">
                <asp:Button ID="btn_logout" runat="server" onclick="btn_logout_Click1" 
                    Text="Log Out" />
                </td>
        </tr>
        <tr>
            <td align="center" colspan="3" bgcolor="#99CCFF">
                <asp:Label ID="lbl_Products" runat="server" BorderStyle="Double" 
                    Text="Products" BackColor="#FFFF99"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="center" colspan="3" bgcolor="#999966">
&nbsp;<asp:Label ID="Label1" runat="server" Font-Underline="True" 
                    Text="Products as per type and usability"></asp:Label>
                <br />
                <br />
                <asp:Button ID="btn_inseticides" runat="server" Text="inseticides(જંતુનાશક)" 
                    Height="50px" PostBackUrl="~/insectidies.aspx" Width="550px" />
                <br />
                <br />
                <asp:Button ID="btn_fungicides" runat="server" Text="Fungicides(ફૂગ રક્સક)" Height="50px" 
                    PostBackUrl="~/fungicides.aspx" Width="550px" />
                <br />
                <br />
                <asp:Button ID="btn_Herbicides" runat="server" Text="herbicides(વનસ્પતિ નાશક)" Height="50px" 
                    PostBackUrl="~/herbicides.aspx" Width="550px" />
                <br />
                <br />
                <asp:Button ID="btn_plantgrowth" runat="server" Text="plant growth(છોડ વ્રુધ્હિ)" 
                    Height="50px" PostBackUrl="~/plantgrowth.aspx" Width="550px" />
                <br />
                <br />
                <asp:Button ID="btn_microfertilizer" runat="server" Text="micro Fertilizer(સુસ્ક્મ ખાતર)" 
                    Height="50px" PostBackUrl="~/microfertilizer.aspx" Width="550px" />
            </td>
        </tr>
        <tr>
            <td align="left" colspan="3">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>


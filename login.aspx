<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
</head>
<body bgcolor="#999966">
    <form id="form1" runat="server">
    <div>
    
        <table style="width:100%;">
            <tr>
                <td align="center" colspan="2" style="margin-left: 40px">
                    <asp:Label ID="Label1" runat="server" BackColor="#CCCCFF" BorderStyle="Inset" 
                        Font-Size="33pt" Height="50px" Text="LOG IN TO CROP GUARD" Width="550px"></asp:Label>
                    <br />
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td align="right" style="margin-left: 120px">
                    <asp:Label ID="lbl_username" runat="server" Text="user name"></asp:Label>
&nbsp;
                </td>
                <td align="left" style="margin-left: 80px">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txt_username" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="right" style="margin-left: 120px">
                    <asp:Label ID="lbl_password" runat="server" Text="password"></asp:Label>
                    <br />
                    <br />
&nbsp;
                </td>
                <td align="left" style="margin-left: 120px">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txt_password" runat="server"></asp:TextBox>
                    <br />
                </td>
            </tr>
            <tr>
                <td align="left" style="margin-left: 160px">
                    <asp:Label ID="Label2" runat="server"></asp:Label>
                </td>
                <td align="left" style="margin-left: 120px">
&nbsp;
                    <asp:Button ID="btn_login" runat="server" onclick="btn_login_Click" 
                        Text="LOG IN" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btn_signin" runat="server" PostBackUrl="~/register.aspx" 
                        Text="SIGN UP" ToolTip="go to register" />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>

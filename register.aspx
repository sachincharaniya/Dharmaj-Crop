<%@ Page Language="C#" AutoEventWireup="true" CodeFile="register.aspx.cs" Inherits="register" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
    <style type="text/css">
        .style1
        {
            width: 180px;
        }
        .style2
        {
            height: 49px;
        }
        .style3
        {
            height: 49px;
        }
    </style>
</head>
<body bgcolor="#999966">
    <form id="form1" runat="server">
    <div><div align="left">
    
        <asp:Label ID="Label1" runat="server" BorderStyle="Ridge" Font-Size="X-Large" 
            Text="REGISTER TO CROP GUARD" ForeColor="#000066" BackColor="#CCCCFF" 
            BorderColor="#FF0066"></asp:Label>
        <br />
        <table style="width:100%;">
            <tr>
                <td class="style1">
                    <br />
                    <asp:Label ID="lbl_UserName" runat="server" Text="UserName"></asp:Label>
                    <br />
                </td>
                <td>
                    <asp:TextBox ID="txt_UserName" runat="server" Height="16px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="req_UserName" runat="server" 
                        ControlToValidate="txt_UserName" ErrorMessage="enter user name"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    <br />
                    <asp:Label ID="lbl_Password" runat="server" Text="Password"></asp:Label>
                    <br />
                </td>
                <td>
                    <asp:TextBox ID="txt_Password" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="req_Password" runat="server" 
                        ControlToValidate="txt_Password" ErrorMessage="enter password"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="reg_Password" runat="server" 
                        ErrorMessage="Password between 5 to 15 characters" 
                        ControlToValidate="txt_Password" ValidationExpression="\S{5,15}"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    <br />
                    <asp:Label ID="lbl_ConfirmPassword" runat="server" Text="Confirm Password"></asp:Label>
                    <br />
                </td>
                <td>
                    <asp:TextBox ID="txt_ConfirmPassword" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="req_ConfirmPassword" runat="server" 
                        ErrorMessage="re-enter password (same)" 
                        ControlToValidate="txt_ConfirmPassword"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="cmp_ConfirmPassword" runat="server" 
                        ErrorMessage="Password don't match" ControlToCompare="txt_Password" 
                        ControlToValidate="txt_ConfirmPassword"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    <br />
                    <asp:Label ID="lbl_Mobile" runat="server" Text="Mobile"></asp:Label>
                    <br />
                </td>
                <td>
                    <asp:TextBox ID="txt_Mobile" runat="server"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="reg_Mobile" runat="server" 
                        ControlToValidate="txt_Mobile" ErrorMessage="enter mobile no of 10 digit" 
                        ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    <br />
                    <asp:Label ID="lbl_EMail" runat="server" Text="E-Mail"></asp:Label>
                    <br />
                </td>
                <td>
                    <asp:TextBox ID="txt_EMail" runat="server"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="reg_Email" runat="server" 
                        ControlToValidate="txt_EMail" 
                        ErrorMessage="enter email like bharat123@gmail.com" 
                        ValidationExpression="\S+@\S+\.\S+"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    <br />
                    <asp:Label ID="lbl_Address" runat="server" Text="Address"></asp:Label>
                    <br />
                </td>
                <td>
                    <asp:TextBox ID="txt_Address" runat="server" TextMode="MultiLine" Height="39px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="req_Address" runat="server" 
                        ControlToValidate="txt_Address" ErrorMessage="enter yor address"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <br />
                    <asp:Label ID="lbl_Pincode" runat="server" Text="Pincode"></asp:Label>
                    <br />
                </td>
                <td class="style3">
                    <asp:TextBox ID="txt_Pincode" runat="server"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="reg_PinCode" runat="server" 
                        ControlToValidate="txt_Pincode" ErrorMessage="enter pin code in 6 digit" 
                        ValidationExpression="\d{6}"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Label ID="lbl_Gender" runat="server" Text="Gender"></asp:Label>
                </td>
                <td class="style3">
                    <asp:RadioButton ID="rb_Male" runat="server" Checked="True" GroupName="a1" 
                        Text="Male" />
                    <asp:RadioButton ID="rb_Female" runat="server" GroupName="a1" Text="Female" />
                </td>
            </tr>
            <tr>
                <td class="style2" colspan="2" align="left">
                    <asp:CheckBox ID="CheckBox1" runat="server" Checked="True" Enabled="False" 
                        Text="Terms &amp; Conditions" />
&nbsp;</td>
            </tr>
            <tr>
                <td class="style2" colspan="2" align="left">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btn_submit" runat="server" Text="Submit" 
                        onclick="btn_submit_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btn_reset" runat="server" Text="Reset" 
                        onclick="btn_reset_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btn_logingo" runat="server" Text="go to login" />
                </td>
            </tr>
        </table>
    
    </div>
    
    </div>
    </form>
</body>
</html>

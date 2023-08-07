using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;
using System.Web.Configuration;

public partial class register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn_submit_Click(object sender, EventArgs e)
    {
        string x = @"Data Source=.\SQLEXPRESS;AttachDbFilename=D:\project\Dharmaj Crop\App_Data\Database.mdf;Integrated Security=True;User Instance=True";
        SqlConnection con = new SqlConnection(x);
        con.Open();
        string sql = "insert into register values(@username,  @password, @mobile, @email, @address, @pincode, @gender)";
        SqlCommand cmd = new SqlCommand(sql, con);
        cmd.Parameters.AddWithValue("@username", txt_UserName.Text);
        cmd.Parameters.AddWithValue("@password", txt_Password.Text);
        cmd.Parameters.AddWithValue("@mobile", txt_Mobile.Text);
        cmd.Parameters.AddWithValue("@email", txt_EMail.Text);
        cmd.Parameters.AddWithValue("@address", txt_Address.Text);
        cmd.Parameters.AddWithValue("@pincode", txt_Pincode.Text);
        string gender;
        if (rb_Male.Checked == true)
            gender = "M";
        else
            gender = "F";
        cmd.Parameters.AddWithValue("@gender", gender);
        int ans = cmd.ExecuteNonQuery();
        if (ans > 0)
            Response.Write("<p>Details of<u><b>" + txt_UserName.Text + "</b></u> Added to database");
        else
            Response.Write("<p>Problwm wirh inserting record:::");
        con.Close();
    }
    protected void btn_reset_Click(object sender, EventArgs e)
    {
        txt_UserName.Text = "";
        txt_Pincode.Text = "";
        txt_Password.Text = "";
        txt_Mobile.Text = "";
        txt_EMail.Text = "";
        txt_ConfirmPassword.Text = "";
        txt_Address.Text = "";
        rb_Male.Checked = true;
    }
}

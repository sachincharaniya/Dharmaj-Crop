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

public partial class login : System.Web.UI.Page
{
    SqlCommand cmd=new SqlCommand();
    SqlConnection con=new SqlConnection();
    SqlDataAdapter sdao=new SqlDataAdapter();
    DataSet ds=new DataSet();
    protected void Page_Load(object sender, EventArgs e)
    {
        con.ConnectionString = @"Data Source=.\SQLEXPRESS;AttachDbFilename=D:\project\Dharmaj Crop\App_Data\Database.mdf;Integrated Security=True;User Instance=True";
        con.Open();
    }
    protected void btn_login_Click(object sender, EventArgs e)
    {
        cmd.CommandText="select *from register where username='"+txt_username.Text+"'and password='"+txt_password.Text+"'";
        cmd.Connection=con;
        sdao.SelectCommand=cmd;
        sdao.Fill(ds,"register");
        string username = txt_username.Text;
        if (ds.Tables[0].Rows.Count > 0)
            Response.Redirect("home.aspx");
        else
            Label2.Text = "DATA IS WRONG:";
    }
}

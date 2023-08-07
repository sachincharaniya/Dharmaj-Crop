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

public partial class home : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] == null)
        {
            Label11.Text = "WELCOME";
        }
        else
        {
            Label11.Text = "WELCOME" + Session["username"].ToString();
        }
    }
    protected void btn_logout_Click1(object sender, EventArgs e)
    {
        Response.Redirect("login.aspx");
    }
}

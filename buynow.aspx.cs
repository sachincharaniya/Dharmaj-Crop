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

public partial class buynow : System.Web.UI.Page
{
public void add_default_type_name_price()
{
            ddl_typeofprod.Items.Add("insectides");
            ddl_typeofprod.Items.Add("fungicides");
            ddl_typeofprod.Items.Add("herbicides");
            ddl_typeofprod.Items.Add("plant growth");
            ddl_typeofprod.Items.Add("microfertilizer");
            ddl_typeofprod.SelectedIndex=0;
            ddl_nameofprod.Items.Add("Dharwep");
            ddl_nameofprod.Items.Add("Manidhar");
            ddl_nameofprod.Items.Add("Vivadhar");
            ddl_nameofprod.Items.Add("Yomex");
            ddl_nameofprod.Items.Add("Otala");
            ddl_nameofprod.Items.Add("Lokhandi");
            ddl_nameofprod.Items.Add("Lington");
            ddl_nameofprod.Items.Add("Lankar");
            ddl_nameofprod.Items.Add("Dastan");
            ddl_nameofprod.Items.Add("Bulava");
            ddl_nameofprod.Items.Add("Bhavarth");
            ddl_price.Items.Add("500");
            ddl_price.SelectedIndex = 0;
            ddl_nameofprod.SelectedIndex = 0;
}
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack == false)
        {
            add_default_type_name_price();
        }
    }
    protected void ddl_typeofprod_SelectedIndexChanged(object sender, EventArgs e)
    {
        ddl_nameofprod.Items.Clear();
        if (ddl_typeofprod.SelectedValue == "insectides")
        {
            ddl_nameofprod.Items.Add("Dharwep");
            ddl_nameofprod.Items.Add("Manidhar");
            ddl_nameofprod.Items.Add("Vivadhar");
            ddl_nameofprod.Items.Add("Yomex");
            ddl_nameofprod.Items.Add("Otala");
            ddl_nameofprod.Items.Add("Lokhandi");
            ddl_nameofprod.Items.Add("Lington");
            ddl_nameofprod.Items.Add("Lankar");
            ddl_nameofprod.Items.Add("Dastan");
            ddl_nameofprod.Items.Add("Bulava");
            ddl_nameofprod.Items.Add("Bhavarth");
            ddl_nameofprod.SelectedIndex = 0;
            
        }
        else if (ddl_typeofprod.SelectedValue == "fungicides")
        {
            ddl_nameofprod.Items.Add("Lorkomo");
            ddl_nameofprod.Items.Add("Lokraj");
            ddl_nameofprod.Items.Add("Sajjag");
            ddl_nameofprod.Items.Add("Vanchak");
            ddl_nameofprod.Items.Add("Sanjog");
            ddl_nameofprod.Items.Add("Navpal");
            ddl_nameofprod.Items.Add("Lahooti");
            ddl_nameofprod.Items.Add("Kaviraj");
            ddl_nameofprod.Items.Add("Dharmento");
            ddl_nameofprod.SelectedIndex = 0;
        }
        else if (ddl_typeofprod.SelectedValue == "herbicides")
        {
            ddl_nameofprod.Items.Add("Dharmix");
            ddl_nameofprod.Items.Add("Renbord");
            ddl_nameofprod.Items.Add("Lowaak");
            ddl_nameofprod.Items.Add("Padkar");
            ddl_nameofprod.Items.Add("Suffer 90 fertilizer");
            ddl_nameofprod.Items.Add("Spankido");
            ddl_nameofprod.Items.Add("Mohak");
            ddl_nameofprod.Items.Add("Kawayat");
            ddl_nameofprod.Items.Add("Dharolik");
            ddl_nameofprod.Items.Add("Atmaj");
            ddl_nameofprod.SelectedIndex = 0;
        }
        else if (ddl_typeofprod.SelectedValue == "plant growth")
        {
            ddl_nameofprod.Items.Add("Amptor");
            ddl_nameofprod.Items.Add("Dharbon");
            ddl_nameofprod.Items.Add("Greentoka");
            ddl_nameofprod.Items.Add("Rujuta");
            ddl_nameofprod.Items.Add("Stabilizerplant");
            ddl_nameofprod.SelectedIndex = 0;
        }
        else if (ddl_typeofprod.SelectedValue == "microfertilizer")
        {
            ddl_nameofprod.Items.Add("Suffer90wdg");
            ddl_nameofprod.Items.Add("Thandaj");
            ddl_nameofprod.Items.Add("Aakuko");
            ddl_nameofprod.SelectedIndex = 0;
        }
        
    }
    protected void ddl_nameofprod_SelectedIndexChanged(object sender, EventArgs e)
    {
        ddl_price.Items.Clear();
        if (ddl_nameofprod.SelectedValue == "Dharwep")
        {
            ddl_price.Items.Add("500");
            ddl_price.SelectedIndex = 0;
        }
        else if (ddl_nameofprod.SelectedValue == "Manidhar")
        {
            ddl_price.Items.Add("450");
            ddl_price.SelectedIndex = 0;
        }
        else if (ddl_nameofprod.SelectedValue == "Vivadhar")
        {
            ddl_price.Items.Add("400");
            ddl_price.SelectedIndex = 0;
        }
        else if (ddl_nameofprod.SelectedValue == "Yomex")
        {
            ddl_price.Items.Add("700");
            ddl_price.SelectedIndex = 0;
        }
        else if (ddl_nameofprod.SelectedValue == "Otala")
        {
            ddl_price.Items.Add("680");
            ddl_price.SelectedIndex = 0;
        }
        else if (ddl_nameofprod.SelectedValue == "Lokhandi")
        {
            ddl_price.Items.Add("900");
            ddl_price.SelectedIndex = 0;
        }
        else if (ddl_nameofprod.SelectedValue == "Lington")
        {
            ddl_price.Items.Add("750");
            ddl_price.SelectedIndex = 0;
        }
        else if (ddl_nameofprod.SelectedValue == "Lankar")
        {
            ddl_price.Items.Add("550");
            ddl_price.SelectedIndex = 0;
        }
        else if (ddl_nameofprod.SelectedValue == "Dastan")
        {
            ddl_price.Items.Add("750");
            ddl_price.SelectedIndex = 0;
        }
        else if (ddl_nameofprod.SelectedValue == "Bulava")
        {
            ddl_price.Items.Add("800");
            ddl_price.SelectedIndex = 0;
        }
        else if (ddl_nameofprod.SelectedValue == "Bhavarth")
        {
            ddl_price.Items.Add("850");
            ddl_price.SelectedIndex = 0;
        }
        else if (ddl_nameofprod.SelectedValue == "Lorkomo")
        {
            ddl_price.Items.Add("600");
            ddl_price.SelectedIndex = 0;
        }
        else if (ddl_nameofprod.SelectedValue == "Lokraj")
        {
            ddl_price.Items.Add("450");
            ddl_price.SelectedIndex = 0;
        }
        else if (ddl_nameofprod.SelectedValue == "Sajjag")
        {
            ddl_price.Items.Add("400");
            ddl_price.SelectedIndex = 0;
        }
        else if (ddl_nameofprod.SelectedValue == "Vanchak")
        {
            ddl_price.Items.Add("480");
            ddl_price.SelectedIndex = 0;
        }
        else if (ddl_nameofprod.SelectedValue == "Sanjog")
        {
            ddl_price.Items.Add("900");
            ddl_price.SelectedIndex = 0;
        }
        else if (ddl_nameofprod.SelectedValue == "Navpal")
        {
            ddl_price.Items.Add("600");
            ddl_price.SelectedIndex = 0;
        }
        else if (ddl_nameofprod.SelectedValue == "Lahooti")
        {
            ddl_price.Items.Add("400");
            ddl_price.SelectedIndex = 0;
        }
        else if (ddl_nameofprod.SelectedValue == "Kaviraj")
        {
            ddl_price.Items.Add("1000");
            ddl_price.SelectedIndex = 0;
        }
        else if (ddl_nameofprod.SelectedValue == "Dharmento")
        {
            ddl_price.Items.Add("960");
            ddl_price.SelectedIndex = 0;
        }
        else if (ddl_nameofprod.SelectedValue == "Dharmix")
        {
            ddl_price.Items.Add("350");
            ddl_price.SelectedIndex = 0;
        }
        else if (ddl_nameofprod.SelectedValue == "Renbord")
        {
            ddl_price.Items.Add("450");
            ddl_price.SelectedIndex = 0;
        }
        else if (ddl_nameofprod.SelectedValue == "Lowaak")
        {
            ddl_price.Items.Add("610");
            ddl_price.SelectedIndex = 0;
        }
        else if (ddl_nameofprod.SelectedValue == "Padkar")
        {
            ddl_price.Items.Add("409");
            ddl_price.SelectedIndex = 0;
        }
        else if (ddl_nameofprod.SelectedValue == "suffer 90 fertilizer")
        {
            ddl_price.Items.Add("480");
            ddl_price.SelectedIndex = 0;
        }
        else if (ddl_nameofprod.SelectedValue == "Spankido")
        {
            ddl_price.Items.Add("580");
            ddl_price.SelectedIndex = 0;
        }
        else if (ddl_nameofprod.SelectedValue == "Mohak")
        {
            ddl_price.Items.Add("300");
            ddl_price.SelectedIndex = 0;
        }
        else if (ddl_nameofprod.SelectedValue == "Kawayat")
        {
            ddl_price.Items.Add("499");
            ddl_price.SelectedIndex = 0;
        }
        else if (ddl_nameofprod.SelectedValue == "Dharolik")
        {
            ddl_price.Items.Add("599");
            ddl_price.SelectedIndex = 0;
        }
        else if (ddl_nameofprod.SelectedValue == "Atmaj")
        {
            ddl_price.Items.Add("699");
            ddl_price.SelectedIndex = 0;
        }
        else if (ddl_nameofprod.SelectedValue == "Amptor")
        {
            ddl_price.Items.Add("500");
            ddl_price.SelectedIndex = 0;
        }
        else if (ddl_nameofprod.SelectedValue == "Dharbon")
        {
            ddl_price.Items.Add("390");
            ddl_price.SelectedIndex = 0;
        }
        else if (ddl_nameofprod.SelectedValue == "Greentoka")
        {
            ddl_price.Items.Add("430");
            ddl_price.SelectedIndex = 0;
        }
        else if (ddl_nameofprod.SelectedValue == "Rujuta")
        {
            ddl_price.Items.Add("400");
            ddl_price.SelectedIndex = 0;
        }
        else if (ddl_nameofprod.SelectedValue == "Stabilizerplant")
        {
            ddl_price.Items.Add("380");
            ddl_price.SelectedIndex = 0;
        }
        else if (ddl_nameofprod.SelectedValue == "Suffer90wdg")
        {
            ddl_price.Items.Add("580");
            ddl_price.SelectedIndex = 0;
        }
        else if (ddl_nameofprod.SelectedValue == "Thandaj")
        {
            ddl_price.Items.Add("450");
            ddl_price.SelectedIndex = 0;
        }
        else if (ddl_nameofprod.SelectedValue == "Aakuko")
        {
            ddl_price.Items.Add("360");
            ddl_price.SelectedIndex = 0;
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string x = @"Data Source=.\SQLEXPRESS;AttachDbFilename=D:\project\Dharmaj Crop\App_Data\Database.mdf;Integrated Security=True;User Instance=True";
        SqlConnection con = new SqlConnection(x);
        con.Open();
        string sql = "insert into buynow values(@name,  @address, @pincode, @payment, @typeofproduct, @productname, @productprice,@productsize)";
        SqlCommand cmd = new SqlCommand(sql, con);
        cmd.Parameters.AddWithValue("@name", txt_name.Text);
        cmd.Parameters.AddWithValue("@address", txt_address.Text);
        cmd.Parameters.AddWithValue("@pincode", txt_pincode.Text);
        cmd.Parameters.AddWithValue("@payment", txt_payment.Text);
        cmd.Parameters.AddWithValue("typeofproduct", ddl_typeofprod.Text);
        cmd.Parameters.AddWithValue("@productname", ddl_nameofprod.Text);
        cmd.Parameters.AddWithValue("@productprice", ddl_price.Text);
        cmd.Parameters.AddWithValue("@productsize", ddl_productsize.Text);
        int ans = cmd.ExecuteNonQuery();
        if (ans > 0)
            Response.Write("<p>order of<u><b>" + ddl_nameofprod.Text + "</b></u> is Accepted by dharmaj (product dehlever in 4 or 5 working days)");
        else
            Response.Write("<p>Problwm wirh buying methodd:::");
        con.Close();
    }
}

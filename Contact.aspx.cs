using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class User_Contact : System.Web.UI.Page
{

    SqlConnection con = new SqlConnection("persist security info=false; integrated security=sspi; data source=GAURU\\SQLEXPRESS; initial catalog=User");
    SqlCommand cmd;
    SqlDataAdapter da;
    DataTable dt;
    SqlDataReader dr;
    DataSet ds;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void TextBox4_TextChanged(object sender, EventArgs e)
    {

    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
    protected void TextBox3_TextChanged(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        con.Open();


        if (txt_name.Text == "" || txt_em.Text == "" || txt_mo.Text == "" || txt_massage.Text == "")
        {
            string script = "alert(\" Please Enter All Information...\")";
            ScriptManager.RegisterStartupScript(this, GetType(), "servercontrolscript", script, true);

        }

        else
        {
            cmd = new SqlCommand("insert into tbl_cont values('" + txt_name.Text + "','" + txt_em.Text + "'," + txt_mo.Text + ",'" + txt_massage + "')");
            cmd.Connection = con;
            dr = cmd.ExecuteReader();

            String script = "alert(\" We Will Contact You As Soon As Possible !!!!\")";
            ScriptManager.RegisterStartupScript(this, GetType(), "servercontrolscript", script, true);
        }
    }
    protected void txt_name_TextChanged(object sender, EventArgs e)
    {

    }
}
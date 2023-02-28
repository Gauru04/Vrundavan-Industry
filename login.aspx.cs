using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class User_login : System.Web.UI.Page
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
    protected void btn_log_Click(object sender, EventArgs e)
    {
        con.Open();
        cmd = new SqlCommand("select uname,pass from tbl_reg where uname ='" + txt_name.Text + "' and  pass= '" +txt_pass.Text + "'", con);
        cmd.Connection=con;
        dr=cmd.ExecuteReader();
        
            if(dr.HasRows)
            {
                Session["uname"] = txt_name.Text;
                Response.Redirect("Sales.aspx");

            }
            else
            {
                string script = "alert(\" Please Enter Valid User Name And Password !!\")";
            ScriptManager.RegisterStartupScript(this, GetType(), "servercontrolscript", script, true);
            }

            con.Close();

        
    }
}
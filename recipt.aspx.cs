using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class User_recipt : System.Web.UI.Page
{

    SqlConnection con = new SqlConnection("persist security info=false; integrated security=sspi; data source=GAURU\\SQLEXPRESS; initial catalog=User");
    SqlCommand cmd;
    SqlDataAdapter da;
    DataTable dt;
    SqlDataReader dr;
    DataSet ds;
    protected void Page_Load(object sender, EventArgs e)
    {
        lbl1.Text = Session["uname"].ToString();
        lbl3.Text = Session["total"].ToString();
        con.Open();
        cmd = new SqlCommand("select address from tbl_reg where uname ='" + lbl1.Text + "'", con);
        dr = cmd.ExecuteReader();
      

        dr.Read();
        lbl2.Text = dr["address"].ToString();  
        
        con.Close();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
       
    }
}
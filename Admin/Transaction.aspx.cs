using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Admin_Transaction : System.Web.UI.Page
{

    SqlConnection con = new SqlConnection("persist security info=false; integrated security=sspi; data source=GAURU\\SQLEXPRESS; initial catalog=User");
    SqlCommand cmd;
    SqlDataAdapter da;
    DataTable dt;
    SqlDataReader dr;
    DataSet ds;
    protected void Page_Load(object sender, EventArgs e)
    {
        cmd = new SqlCommand("select  *from tbl_reg where uname ='" + lbl_id.Text + "'", con);
        dr = cmd.ExecuteReader();


        dr.Read();
        lbl2.Text = dr["address"].ToString();

        con.Close();
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class Admin_Dashboard : System.Web.UI.Page
{

    SqlConnection con = new SqlConnection("persist security info=false; integrated security=sspi; data source=GAURU\\SQLEXPRESS; initial catalog=Admin");
    SqlCommand cmd;
    SqlDataAdapter da;
    DataTable dt;
    SqlDataReader dr;
    DataSet ds;
    protected void Page_Load(object sender, EventArgs e)
    {

         con.Open();
        cmd=new SqlCommand("select max(ID) from tbl_user",con);
        dr = cmd.ExecuteReader();
        if(dr.Read())
        {
            if(dr.IsDBNull(0))
            {
                lbl_us.Text = "0";
            }
            else
            {
                lbl_us.Text = (Convert.ToInt32(dr[0])).ToString();
            }
        }

        con.Close();


        con.Open();
        cmd = new SqlCommand("select max(P_id) from tbl_pur", con);
        dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            if (dr.IsDBNull(0))
            {
                lbl_pur.Text = "0";
            }
            else
            {
                lbl_pur.Text = (Convert.ToInt32(dr[0])).ToString();
            }
        }

        con.Close();


        con.Open();
        cmd = new SqlCommand("select max(S_id) from tbl_sup", con);
        dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            if (dr.IsDBNull(0))
            {
                lbl_sup.Text = "0";
            }
            else
            {
                lbl_sup.Text = (Convert.ToInt32(dr[0])).ToString();
            }
        }

        con.Close();


        con.Open();
        cmd = new SqlCommand("select max(P_id) from tbl_pro", con);
        dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            if (dr.IsDBNull(0))
            {
                lbl_pro.Text = "0";
            }
            else
            {
                lbl_pro.Text = (Convert.ToInt32(dr[0])).ToString();
            }
        }

        con.Close();
    }

    }

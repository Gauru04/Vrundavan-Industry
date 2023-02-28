using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class User_register : System.Web.UI.Page
{

    SqlConnection con = new SqlConnection("persist security info=false; integrated security=sspi; data source=GAURU\\SQLEXPRESS; initial catalog=User");
    SqlCommand cmd;
    SqlDataAdapter da;
    DataTable dt;
    SqlDataReader dr;
    DataSet ds;
    protected void Page_Load(object sender, EventArgs e)
    {
        btn_add.Visible = true;
        btn_save.Visible = false;
        btn_del.Visible = false;
    }
    protected void btn_add_Click(object sender, EventArgs e)
    {

        btn_add.Visible = false;

        btn_save.Visible = true;
        btn_del.Visible = true;
        con.Open();
        try
        {
            cmd = new SqlCommand("select max(id) from tbl_reg" + txt_id.Text, con);

            dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                if (dr.IsDBNull(0))
                {
                    txt_id.Text = "1";
                }
                else
                {
                    txt_id.Text = (Convert.ToInt32(dr[0]) + 1).ToString();
                }
            }
            dr.Close();
        }
        catch
        {
            string script = "alert(\" Error.....\")";
            ScriptManager.RegisterStartupScript(this, GetType(), "servercontrolscript", script, true);
        }
        con.Close();
    }
    protected void btn_save_Click(object sender, EventArgs e)
    {

        con.Open();


        if (txt_id.Text == "" || txt_name.Text == "" || txt_uname.Text == "" || txt_pass.Text == "" || txt_em.Text == "" || txt_add.Text == "" || txt_con.Text == "")
        {
            string script = "alert(\" Please Enter All Information...\")";
            ScriptManager.RegisterStartupScript(this, GetType(), "servercontrolscript", script, true);

        }

        else
        {
            cmd = new SqlCommand("insert into tbl_reg values(" + txt_id.Text + ",'" + txt_name.Text + "','" + txt_uname.Text + "','" + txt_pass.Text + "','" + txt_em.Text + "','" + txt_add.Text + "','" + txt_con.Text + "')");
            cmd.Connection = con;
            dr = cmd.ExecuteReader();

            String script = "alert(\"Record Saved Suceessfully....\")";
            ScriptManager.RegisterStartupScript(this, GetType(), "servercontrolscript", script, true);
        }
    }
    protected void btn_del_Click(object sender, EventArgs e)
    {

        txt_id.Text = "";
        txt_name.Text = "";
        txt_con.Text = "";
        txt_add.Text = "";
        txt_em.Text = "";
        txt_uname.Text = "";
        txt_pass.Text = "";

        btn_add.Visible = true;

        btn_save.Visible = false;
       
        btn_del.Visible = false;
    }
}


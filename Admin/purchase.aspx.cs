
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Admin_purchase : System.Web.UI.Page
{

    SqlConnection con = new SqlConnection("persist security info=false; integrated security=sspi; data source=GAURU\\SQLEXPRESS; initial catalog=Admin");
    SqlCommand cmd;
    SqlDataAdapter da;
    DataTable dt;
    SqlDataReader dr;
    DataSet ds;
    protected void Page_Load(object sender, EventArgs e)
    {
        btn_add.Visible = true;
        btn_save.Visible = false;
        btn_can.Visible = false;
        btn_del.Visible = false;
        
        if (!IsPostBack)
        {
            sup_dropdown();
            prod_dropdown();
        }

    }
    void sup_dropdown()
    {
        SqlDataAdapter da = new SqlDataAdapter("select * from tbl_sup", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        ddl1.DataSource = dt;
        ddl1.DataBind();
        ddl1.DataTextField = "S_name";

        ddl1.DataBind();


        ddl1.Items.Insert(0, new ListItem("---------------------select------------", "NA"));
    }
    void prod_dropdown()
    {

        SqlDataAdapter da = new SqlDataAdapter("select * from tbl_pro", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        dd2.DataSource = dt;
        dd2.DataBind();

        dd2.DataTextField = "P_name";
        dd2.DataBind();


        dd2.Items.Insert(0, new ListItem("---------------------select------------", "NA"));

    }
    protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }
    protected void btn_add_Click(object sender, EventArgs e)
    {
        btn_add.Visible = false;

        btn_save.Visible = true;
        btn_can.Visible = true;
        btn_del.Visible = true;
        con.Open();
        try
        {
            cmd = new SqlCommand("select max(P_id) from tbl_pur" + txt_id.Text, con);

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
    protected void btn_can_Click(object sender, EventArgs e)
    {
        txt_id.Text = " ";


        btn_add.Visible = true;
        btn_save.Visible = false;
        btn_can.Visible = false;
    }
    protected void btn_save_Click(object sender, EventArgs e)
    {
        con.Open();

        try
        {

            if (txt_id.Text == "" || ddl1.Text == "" || dd2.Text == "" || txt_q.Text == "" || txt_rate.Text == "" || txt_tot.Text == "")
            {

                String script1 = "alert(\"Errorr....\")";
                ScriptManager.RegisterStartupScript(this, GetType(), "servercontrolscript", script1, true);
            }

            else
            {
                cmd = new SqlCommand("insert into tbl_pur values(" + txt_id.Text + ",'" + ddl1.Text + "','" + dd2.Text + "','" + txt_q.Text + "','" + txt_rate.Text + "','" + txt_tot.Text + "')");
                cmd.Connection = con;
                dr = cmd.ExecuteReader();


                con.Close();
            }

            con.Open();

            cmd = new SqlCommand("update tbl_sup set bal = bal+  " + txt_tot.Text + " where S_name='" + ddl1.Text + "'", con);
            dr = cmd.ExecuteReader();

            con.Close();

            con.Open();
            cmd = new SqlCommand("update tbl_pro set Stock = Stock+  " + txt_q.Text + " where P_name='" + dd2.Text + "'", con);
            dr = cmd.ExecuteReader();



            String script = "alert(\"Record Saved Suceessfully....\")";
            ScriptManager.RegisterStartupScript(this, GetType(), "servercontrolscript", script, true);

        }
        catch
        {
            String script = "alert(\"Error....\")";
            ScriptManager.RegisterStartupScript(this, GetType(), "servercontrolscript", script, true);
        }
        con.Close();
    }
    protected void txt_rate_TextChanged(object sender, EventArgs e)
    {
        int a = Convert.ToInt32(txt_q.Text);
        int b = Convert.ToInt32(txt_rate.Text);

        int c = a * b;

        txt_tot.Text = Convert.ToString(c);

        btn_add.Visible = false;
        btn_save.Visible = true;
        btn_can.Visible = true;
        btn_del.Visible = true;

    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        con.Open();

        GridViewRow gr = GridView1.SelectedRow;

        txt_id.Text = gr.Cells[1].Text;
        ddl1.Text = gr.Cells[2].Text;

        dd2.Text = gr.Cells[3].Text;

        txt_q.Text = gr.Cells[4].Text;

        txt_rate.Text = gr.Cells[5].Text;

        txt_tot.Text = gr.Cells[6].Text;


        con.Close();


        btn_add.Visible = false;
        btn_can.Visible = true;
        btn_del.Visible = true;
        btn_save.Visible = false;
    }
    protected void btn_del_Click(object sender, EventArgs e)
    {
        con.Open();

        try
        {

            cmd = new SqlCommand("delete from tbl_pur where P_id=" + txt_id.Text, con);
            dr = cmd.ExecuteReader();

            String script = "alert(\"Record Deleted Successfully.....\");";
            ScriptManager.RegisterStartupScript(this, GetType(), "Servercontrolscript", script, true);

            btn_add.Visible = true;

            btn_can.Visible = false;

            btn_del.Visible = false; btn_save.Visible = false;



            GridView1.DataBind();
        }

        catch
        {
            String script = "alert(\"Error....\")";
            ScriptManager.RegisterStartupScript(this, GetType(), "servercontrolscript", script, true);
        }

    }
}
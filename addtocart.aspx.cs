using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class User_addtocart : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("persist security info=false; integrated security=sspi; data source=GAURU\\SQLEXPRESS; initial catalog=User");
    SqlCommand cmd;
    SqlDataAdapter da;
    DataTable dt;
    SqlDataReader dr;
    DataSet ds;

    protected void Page_Load(object sender, EventArgs e)
    {

           
 

         if (!IsPostBack)
        {
            DataTable dt = new DataTable();
            DataRow dr;
           dt.Columns.Add("sno");
            dt.Columns.Add("p_id");
            dt.Columns.Add("p_name");
             dt.Columns.Add("p_dis");
            dt.Columns.Add("p_price");
            dt.Columns.Add("image");
            //dt.Columns.Add("p_stock");
            Session["data"] = dt;
           

            if (Request.QueryString["p_id"] != null)
            {
                if (Session["Buyitems"] == null)
                {

                    dr = dt.NewRow();
                    String mycon = "Data Source=GAURU\\SQLEXPRESS;Initial Catalog=Admin; Integrated Security=True";
                    SqlConnection scon = new SqlConnection(mycon);
                    String myquery = "select * from tbl_pro where p_id=" + Request.QueryString["p_id"];
                    SqlCommand cmd = new SqlCommand();
                    cmd.CommandText = myquery;
                    cmd.Connection = scon;
                    SqlDataAdapter da = new SqlDataAdapter();
                    da.SelectCommand = cmd;
                    DataSet ds = new DataSet();
                    da.Fill(ds);
                    
                    dr["sno"] = "1";
                    dr["p_id"] = ds.Tables[0].Rows[0]["p_id"].ToString();
                    dr["p_name"] = ds.Tables[0].Rows[0]["p_name"].ToString();
                    dr["p_dis"]= ds.Tables[0].Rows[0]["p_dis"].ToString();
                    dr["p_price"] = ds.Tables[0].Rows[0]["p_price"].ToString();
                    
                    dr["image"] = ds.Tables[0].Rows[0]["image"].ToString();
                    //   dr["p_stock"] = ds.Tables[0].Rows[0]["p_stock"].ToString();
                    dt.Rows.Add(dr);

                    GridView1.DataSource = dt;
                    GridView1.DataBind();
                    Session["buyitems"] = dt;

                    Int32 grandtotal = 0;
                    foreach (GridViewRow row in GridView1.Rows)
                    {

                        grandtotal = grandtotal + Convert.ToInt32(row.Cells[4].Text); //Where Cells is the column. Just changed the index of cells
                    }

                   // Response.Redirect("addtocart.aspx");
                    GridView1.FooterRow.Cells[3].Text = "Total";
                    GridView1.FooterRow.Cells[4].Text = grandtotal.ToString();
                    lbl_total.Text = GridView1.FooterRow.Cells[3].Text = grandtotal.ToString();

                   
                }
                else
                {

                    dt = (DataTable)Session["buyitems"];
                    int sr;
                    sr = dt.Rows.Count;

                    dr = dt.NewRow();
                    String mycon = "Data Source=GAURU\\SQLEXPRESS;Initial Catalog=Admin; Integrated Security=True";
                    SqlConnection scon = new SqlConnection(mycon);
                    String myquery = "select * from tbl_pro where p_id=" + Request.QueryString["p_id"];
                    SqlCommand cmd = new SqlCommand();
                    cmd.CommandText = myquery;
                    cmd.Connection = scon;
                    SqlDataAdapter da = new SqlDataAdapter();
                    da.SelectCommand = cmd;
                    DataSet ds = new DataSet();
                    da.Fill(ds);

                    dr["sno"] = sr+1;
                    dr["p_id"] = ds.Tables[0].Rows[0]["p_id"].ToString();
                    dr["p_name"] = ds.Tables[0].Rows[0]["p_name"].ToString();
                    dr["p_dis"]= ds.Tables[0].Rows[0]["p_dis"].ToString();
                    dr["p_price"] = ds.Tables[0].Rows[0]["p_price"].ToString();
                    dr["image"] = ds.Tables[0].Rows[0]["image"].ToString();
                    //dr["p_stock"] = ds.Tables[0].Rows[0]["p_stock"].ToString();
                    dt.Rows.Add(dr);

                    GridView1.DataSource = dt;
                    GridView1.DataBind();
                    Session["buyitems"] = dt;
                    //Response.Redirect("addtocart.aspx");

                    Int32 grandtotal = 0;
                    foreach (GridViewRow row in GridView1.Rows)
                    {

                        grandtotal = grandtotal + Convert.ToInt32(row.Cells[4].Text); //Where Cells is the column. Just changed the index of cells
                    }

                    GridView1.FooterRow.Cells[3].Text = "Total";
                    GridView1.FooterRow.Cells[4].Text = grandtotal.ToString();
                  lbl_total.Text = GridView1.FooterRow.Cells[3].Text = grandtotal.ToString();

                   Session["total"] = lbl_total.Text;
                    
 
                }
            }

            else
            {
                dt = (DataTable)Session["buyitems"];
                GridView1.DataSource = dt;
                GridView1.DataBind();

               

            }

            
        }

        





    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("checkout.aspx");
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class User_Sales : System.Web.UI.Page
{

    SqlConnection con = new SqlConnection("persist security info=false; integrated security=sspi; data source=GAURU\\SQLEXPRESS; initial catalog=User");
    SqlCommand cmd;
    SqlDataAdapter da;
    DataTable dt;
    SqlDataReader dr;
    DataSet ds;
    protected void Page_Load(object sender, EventArgs e)
    {
       if (lbl_add.Text == "")
        {
            Response.Redirect("login.aspx");
        }
        else
        {



            Session["addproduct"] = "false";
            DataTable dt = new DataTable();
            dt = (DataTable)Session["buyitems"];
            if (dt != null)
            {
                lbl_item_count.Text = dt.Rows.Count.ToString();

            }
            else
            {
                lbl_item_count.Text = "0";
            }

            lbl_add.Text = Session["uname"].ToString();
        }
    }
    protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void ImageButton1_Command(object sender, CommandEventArgs e)
    {
        Response.Redirect("addtocart.aspx?p_id=" + e.CommandArgument.ToString());
    }
}
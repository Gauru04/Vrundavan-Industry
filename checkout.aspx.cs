using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User_checkout : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {
        

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (txt_card.Text == "" || txt_cvc.Text == " "|| txt_cname.Text == "")
        {
            string script = "alert(\" Please Enter All Information...\")";
            ScriptManager.RegisterStartupScript(this, GetType(), "servercontrolscript", script, true);

        }

        else
        {

            Response.Redirect("recipt.aspx");
        }
    }
}
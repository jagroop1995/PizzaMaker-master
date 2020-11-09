using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PizzaMaker
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnMessage_Click(object sender, EventArgs e)
        {
            if (txtEmail.Text.Equals("admin@gmail.com") && txtPassword.Text.Equals("admin"))
            {
                Response.Redirect("Dashboard.aspx");
            }
            else {
                reslt.InnerHtml = "fill correct User Name or Password ";
            }
        }
    }
}
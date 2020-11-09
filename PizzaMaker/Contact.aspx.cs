using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PizzaMaker
{
    public partial class Contact : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnMessage_Click(object sender, EventArgs e)
        {
            Database.DataConnection data = new Database.DataConnection();
            String qry = "insert into DataContact(Name,Email,Message) values ('"+txtName.Text+"','"+txtEmail.Text+"','"+txtMessg.Text+"')";
            data.Insert_contact(qry);
            reslt.InnerHtml = "Thanks for the Feed Back!";

        }
    }
}
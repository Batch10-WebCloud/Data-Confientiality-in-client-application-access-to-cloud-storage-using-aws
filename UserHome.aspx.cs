using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CloudWebStorage
{
    public partial class UserHome : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Username"] != null)
            {
                lblSuccess.Text = "Login Success,Welcome to Storage & Retrival Area" +  Session["Username"].ToString();
            }
            else
            {
                Response.Redirect("~/SignIn.aspx");
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Upload and Download.aspx");
        }

        protected void btnlogout_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/signIn.aspx");
        }
    }
}
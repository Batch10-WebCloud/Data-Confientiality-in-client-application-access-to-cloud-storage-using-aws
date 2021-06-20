using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace CloudWebStorage
{
    public partial class SignIn : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                if (Request.Cookies["UNAME"] != null && Request.Cookies["UPWD"] != null)
                {
                    txtUsername.Text = Request.Cookies["UNAME"].Value;
                    txtPass.Text = Request.Cookies["UPWD"].Value;
                    CheckBox1.Checked = true;
                }
            }
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["CloudWebStorageDB"].ConnectionString);
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("Select *from tb1Users where Username=@username and Password=@pwd", con);
                cmd.Parameters.AddWithValue("@username",txtUsername.Text);

                cmd.Parameters.AddWithValue("@pwd", txtPass.Text);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                lblError.Visible = true;
                if (dt.Rows.Count != 0)
                {
                    if (CheckBox1.Checked)
                    {
                        Response.Cookies["UNAME"].Value = txtUsername.Text;
                        Response.Cookies["UPWD"].Value = txtPass.Text;

                        Response.Cookies["UNAME"].Expires = DateTime.Now.AddDays(0);
                        Response.Cookies["UPWD"].Expires = DateTime.Now.AddDays(0);
                    }
                    else
                    {
                        Response.Cookies["UNAME"].Expires = DateTime.Now.AddDays(-1);
                        Response.Cookies["UPWD"].Expires = DateTime.Now.AddDays(-1);
                    }
                    Session["Username"] = txtUsername.Text;
                    Response.Redirect("~/UserHome.aspx");
                }
                else
                {
                    lblError.Text = "Invalid Username and password";
                }
                //Response.Write("<script> alert('Login Successfully done'); </script>");
                clr();
                con.Close();

                //lb1Msg.Text = "Registration Successfully done";
                //lb1Msg.ForeColor = System.Drawing.Color.Green;

            }
        }

        private void clr()
        {
            txtPass.Text = string.Empty;
            txtUsername.Text = string.Empty;
            txtUsername.Focus();
        }
    }
}
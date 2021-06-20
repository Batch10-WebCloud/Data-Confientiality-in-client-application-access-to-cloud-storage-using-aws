using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;


namespace CloudWebStorage
{
    public partial class Upload_and_Download : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)
            {
                FileUpload1.PostedFile.SaveAs(Server.MapPath("~/DataStorage/") + FileUpload1.FileName);
            }

            DataTable dt = new DataTable();
            dt.Columns.Add("File", typeof(string));
            dt.Columns.Add("Size", typeof(string));
            dt.Columns.Add("Type", typeof(string));

            foreach (string strFile in Directory.GetFiles(Server.MapPath("~/DataStorage/")))
            {
                FileInfo fi = new FileInfo(strFile);

                dt.Rows.Add(fi.Name, fi.Length, GetFileTypeByExtension(fi.Extension));
            }

            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        private string GetFileTypeByExtension(string extension)
        {
            switch (extension.ToLower())
            {
                case ".doc":
                case ".docx":
                    return "Microsoft Word Document";
                case ".xlsx":
                case ".xls":
                    return "Microsoft Excel Document";
                case ".txt":
                    return "Text Document";
                case ".jpg":
                case ".png":
                    return "Image";
                default:
                    return "Unknown";

            }
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            
                Response.Clear();
                Response.ContentType = "application/octect-stream";
                Response.AppendHeader("Content-Disposition", "filename=" + e.CommandArgument);
                Response.TransmitFile(Server.MapPath("~/DataStorage/") + e.CommandArgument);
                Response.End();
            
        }

        protected void btnlogout2_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/SignIn.aspx");
        }
    }
}
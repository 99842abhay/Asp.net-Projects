using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StateManagementProject
{
    public partial class CookiesDemoPage2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void cid_Click(object sender, EventArgs e)
        {
            if(Request.Cookies["pid"] !=null)
            {
                string pid = Request.Cookies["pid"].Value;
                Response.Write("<h3 style='color:orange;'>");
                Response.Write("Product ID: " + pid);
                Response.Write("</h3>");
            }
            else
            {
                Response.Write("<h3 style='color:red;'>");
                Response.Write("Product ID does not exist / expired ");
                Response.Write("</h3>");
            }
        }

        protected void cname_Click(object sender, EventArgs e)
        {
            if (Request.Cookies["pname"] != null)
            {
                string pname = Request.Cookies["pname"].Value;
                Response.Write("<h3 style='color:orange;'>");
                Response.Write("Product Name: " + pname);
                Response.Write("</h3>");
            }
            else
            {
                Response.Write("<h3 style='color:red;'>");
                Response.Write("Product Name does not exist / expired ");
                Response.Write("</h3>");
            }
        }

        protected void cprice_Click(object sender, EventArgs e)
        {
            if (Request.Cookies["pprice"] != null)
            {
                string pprice = Request.Cookies["pprice"].Value;
                Response.Write("<h3 style='color:orange;'>");
                Response.Write("Product price: " + pprice);
                Response.Write("</h3>");
            }
            else
            {
                Response.Write("<h3 style='color:red;'>");
                Response.Write("Product ID does not exist / expired ");
                Response.Write("</h3>");
            }
        }

        protected void call_Click(object sender, EventArgs e)
        {
            Response.Write("<h3 style='color:maroon;'>");
            for(int i=0; i<Request.Cookies.Count;i++)
            {
                Response.Write(Request.Cookies[i].Name);
                Response.Write(" : ");
                Response.Write(Request.Cookies[i].Value);
                Response.Write("<br/>");
              
            }
            Response.Write("</h3>");
        }
    }
}
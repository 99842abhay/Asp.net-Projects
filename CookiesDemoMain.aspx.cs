using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StateManagementProject
{
    public partial class CookiesDemoMain : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            HttpCookie id = new HttpCookie("pid");
            HttpCookie name = new HttpCookie("pname");
            HttpCookie price = new HttpCookie("pprice");

            id.Value = txtid.Text;
            name.Value = txtname.Text;
            price.Value = txtprice.Text;


            Response.Cookies.Add(id);
            Response.Cookies.Add(name);
            Response.Cookies.Add(price);

            Response.Redirect("CookiesDemoPage2.aspx");

        }
    }
}
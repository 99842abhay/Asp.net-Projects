using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StateManagementProject
{
    public partial class Session1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCreateSession_Click(object sender, EventArgs e)
        {
            Employee emp = new Employee();
            emp.empID = Convert.ToInt32(txtId.Text);
            emp.name = txtName.Text;
            emp.salary = Convert.ToSingle(txtSalary.Text);

            Session["emp"] = emp;
            Response.Write("<h3 style='color:orange;'>");
            Response.Write("Session Object Creates");
            Response.Write("</h3>");

        }

        protected void btnRedirect_Click(object sender, EventArgs e)
        {
            Response.Redirect("Session2.aspx");
        }
    }
}
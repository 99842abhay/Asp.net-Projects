using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

namespace DatabaseConnectivityProject
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        SqlConnection con;
        SqlDataAdapter adp;
        DataSet ds;

        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection();

            con.ConnectionString = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;

            string query = "select * from Student";

            adp = new SqlDataAdapter(query, con);

            ds = new DataSet();

            adp.Fill(ds, "Student");

            DataTable dt = ds.Tables[0];

            GridView1.DataSource = dt;

            GridView1.DataBind();

        }
    }
}
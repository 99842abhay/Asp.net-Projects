using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

namespace DatabaseConnectivityProject
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        SqlDataReader sdr;

        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection();

            con.ConnectionString = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;

            con.Open();

            string query = "select * from Student";

            cmd = new SqlCommand(query, con);

            sdr = cmd.ExecuteReader();

            GridView1.DataSource = sdr;

            GridView1.DataBind();
        }
    }
}
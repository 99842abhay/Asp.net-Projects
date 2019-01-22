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
    public partial class WebForm4 : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        SqlDataReader sdr;
        protected void Page_Load(object sender, EventArgs e)
        {
            display();
        }

        public void display()
        {
            con = new SqlConnection();

            con.ConnectionString = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;

            con.Open();

            string query = "select * from Student";

            cmd = new SqlCommand(query, con);

            sdr = cmd.ExecuteReader();

            GridView1.DataSource = sdr;

            GridView1.DataBind();
            sdr.Close();
        }

        protected void btnInsert_Click(object sender, EventArgs e)
        {
           // string q = "insert into Student values(@Id,@Name,@Father,@Mobile)";
            cmd = new SqlCommand("InsertStudent", con);

            cmd.CommandType = System.Data.CommandType.StoredProcedure;

            cmd.Parameters.AddWithValue("@Id", Convert.ToInt32(TextBox1.Text));
            cmd.Parameters.AddWithValue("@Name", TextBox2.Text);
            cmd.Parameters.AddWithValue("@Father", TextBox3.Text);
            cmd.Parameters.AddWithValue("@Mobile", Convert.ToInt32(TextBox4.Text));

            int i = cmd.ExecuteNonQuery();

            Response.Write(i + "Inserted row");

            display();
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            // string q = "update Student set Name = @Name where Id = @Id";

             cmd = new SqlCommand("UpdateStudent", con);

            cmd.CommandType = System.Data.CommandType.StoredProcedure;

            cmd.Parameters.AddWithValue("@Id", Convert.ToInt32(TextBox1.Text));
            cmd.Parameters.AddWithValue("@Name", TextBox2.Text);

            int i = cmd.ExecuteNonQuery();

            Response.Write(i + " Row Update");

            display();
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            // string q = "delete from Student where Id = @Id";

            cmd = new SqlCommand("DeleteStudent", con);

            cmd.CommandType = System.Data.CommandType.StoredProcedure;

            cmd.Parameters.AddWithValue("@Id", Convert.ToInt32(TextBox1.Text));

            int i = cmd.ExecuteNonQuery();

            Response.Write(i + " Row deleted");

            display();
        }
    }
}
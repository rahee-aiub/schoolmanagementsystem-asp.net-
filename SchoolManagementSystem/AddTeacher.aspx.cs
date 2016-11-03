using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SchoolManagementSystem
{
    public partial class AddTeacher : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["USERNAME"] == null)
            {
                Response.Redirect("~/Login.aspx");
            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Session["USERNAME"] = null;
            Response.Redirect("~/Login.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string connStr = ConfigurationManager.ConnectionStrings["DBS"].ConnectionString;
            SqlConnection conn = new SqlConnection(connStr);
            conn.Open();
            string sql = "SELECT * FROM Teacher";
            SqlDataAdapter adapter = new SqlDataAdapter(sql, conn);
            SqlCommandBuilder builder = new SqlCommandBuilder(adapter);
            DataSet ds = new DataSet();
            adapter.Fill(ds, "Teacher");
            DataRow dr = ds.Tables["Teacher"].NewRow();

            dr["Name"] = TextBoxName.Text;
            dr["Id"] = TextBoxId.Text;
            dr["Address"] = TextBoxAddress.Text;
            dr["Username"] = TextBoxUsername.Text;
            dr["Password"] = TextBoxPassword.Text;
            dr["Phone"] = TextBoxPhone.Text;
            dr["JoiningDate"] = TextBoxJoiningDate.Text;
            dr["Email"] = TextBoxEmail.Text;
           

            ds.Tables["Teacher"].Rows.Add(dr);
            adapter.Update(ds.Tables["Teacher"]);
            Response.Redirect("~/AdminHome.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/AdminHome.aspx");
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Random generator = new Random();
            int r = generator.Next(1000, 10000);
            TextBoxId.Text = "2016-" + Convert.ToString(r);
        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            DateTime date = DateTime.Now;
            TextBoxJoiningDate.Text = date.ToString("dd/MM/yyyy");
        }
    }
}
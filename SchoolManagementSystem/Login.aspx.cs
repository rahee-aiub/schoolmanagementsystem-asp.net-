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
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["DBS"].ConnectionString);
            string CheckUser = "Select * from Teacher where Username ='" + TextBox1.Text + "' and Password = '" + TextBox2.Text + "'";
            string CheckAdmin = "Select * from Admin where Username ='" + TextBox1.Text + "' and Password = '" + TextBox2.Text + "'";
            SqlDataAdapter adapter = new SqlDataAdapter(CheckUser, conn);
            SqlDataAdapter adapter2 = new SqlDataAdapter(CheckAdmin, conn);
            DataTable dt = new DataTable();
            DataTable dt2 = new DataTable();

            adapter.Fill(dt);
            adapter2.Fill(dt2);

            // string val = dt.Rows[0]["Id"].ToString();
            //  Response.Write(val);

            if (dt2.Rows.Count == 1)
            {
                Session["USERNAME"] = TextBox1.Text;
                Response.Redirect("~/AdminHome.aspx");

            }

            else if (dt.Rows.Count == 1)
            {
                String t1 = (String)dt.Rows[0]["Name"];
                String t2 = (String)dt.Rows[0]["Id"];
                Session["NAME"] = t1;
                Session["TEACHERID"] = t2;
                Session["USERNAME"] = TextBox1.Text;
                Response.Redirect("~/TeacherProfile.aspx");
            }
            else
            {
                Label1.Text = "Invalid Username or Password !!";
            }
        }
    }
}
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
    public partial class AdminHome : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
          
                if (Session["USERNAME"] == null)
                {
                    //---------------Admin verification is not done------------
                   // if (Session["USERNAME"].ToString() != "admin")
                        Response.Redirect("~/Login.aspx");
                }

                Label1.Text = Session["USERNAME"].ToString();
            
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/StudentAdmission.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Session["USERNAME"] = null;
            Response.Redirect("~/Login.aspx");
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/AddTeacher.aspx");
        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/AllStudentInfo.aspx");
        }

        protected void LinkButton5_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/AllTeachers.aspx");
        }

        protected void LinkButton6_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/AddCourse.aspx");
        }

        protected void ButtonGo_Click(object sender, EventArgs e)
        {
            string connStr = ConfigurationManager.ConnectionStrings["DBS"].ConnectionString;
            SqlConnection conn = new SqlConnection(connStr);

            string sql = "SELECT * FROM StudentInfo where Name like '" + TextBoxSearch.Text + "%' or Id like '" + TextBoxSearch.Text + "%'";
           
            SqlDataAdapter adapter = new SqlDataAdapter(sql, conn);
            DataSet ds = new DataSet();
            DataTable dt = new DataTable();
            adapter.Fill(dt);

            adapter.Fill(ds, "StudentInfo");

            foreach (DataRow row in dt.Rows)
            {
                LabelStatus.Text = "";

                string value = row[0].ToString();

                GridView1.Visible = true;

                GridView1.DataSource = ds;
                GridView1.DataBind();
               
            }

          
            if (dt.Rows.Count == 0)
            {
                LabelStatus.Text = "No Student Found";
                GridView1.Visible = false;
            }

           
        }

        protected void LinkButton7_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/AddAdmin.aspx");
        }
    }
}
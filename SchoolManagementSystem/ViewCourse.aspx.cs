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
    public partial class ViewCourse : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["USERNAME"] == null)
            {
                Response.Redirect("~/Login.aspx");
            }
            else
            {
                string connStr = ConfigurationManager.ConnectionStrings["DBS"].ConnectionString;
                SqlConnection conn = new SqlConnection(connStr);

                string sql = "SELECT * FROM CourseInfo";
                SqlDataAdapter adapter = new SqlDataAdapter(sql, conn);
                SqlCommandBuilder builder = new SqlCommandBuilder(adapter);
                DataSet ds = new DataSet();
                adapter.Fill(ds, "CourseInfo");

                GridView1.DataSource = ds.Tables["CourseInfo"];
                GridView1.DataBind();

                DropDownList1.DataSource = ds.Tables["CourseInfo"];
                DropDownList1.DataTextField = "CourseId";
                DropDownList1.DataValueField = "CourseId";
                DropDownList1.DataBind();
            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/AdminHome.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Login.aspx");
        }

        protected void ButtonDeleteCourse_Click(object sender, EventArgs e)
        {
            ButtonDeleteCourse.Attributes.Add("onclick", "if(confirm('Are you sure to delete?')){}else{return false}");

           
            string connStr = ConfigurationManager.ConnectionStrings["DBS"].ConnectionString;
            SqlConnection conn = new SqlConnection(connStr);
            conn.Open();

            string sql = "DELETE FROM CourseInfo WHERE CourseId = '"+DropDownList1.SelectedValue.ToString()+"'; ";     
            SqlCommand command = new SqlCommand(sql, conn);          
            command.ExecuteNonQuery();

            conn.Close();
            Response.Redirect("~/ViewCourse.aspx");
        }

        protected void LinkButtonAddNewCourses_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/AddCourse.aspx");
        }

       
    }
}
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace School
{
    public partial class AddCourse : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["USERNAME"] == null)
            {
                Response.Redirect("~/Login.aspx");
            }
            else
            {
                if (!IsPostBack)
                {
                    LoadhTeacher();
                }
            }
        }

        private void LoadhTeacher()
        {
            string connStr = ConfigurationManager.ConnectionStrings["DBS"].ConnectionString;
            SqlConnection conn = new SqlConnection(connStr);

            string sql = "SELECT * FROM Teacher";
            SqlDataAdapter adapter = new SqlDataAdapter(sql, conn);
            SqlCommandBuilder builder = new SqlCommandBuilder(adapter);
            DataSet ds = new DataSet();
            adapter.Fill(ds, "Teacher");
            DropDownListTeacher.DataSource = ds.Tables["Teacher"];
            DropDownListTeacher.DataTextField = "Name";
            DropDownListTeacher.DataValueField = "Id";
            DropDownListTeacher.DataBind();
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/AdminHome.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Session["USERNAME"] = null;
            Response.Redirect("~/Login.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                string connStr = ConfigurationManager.ConnectionStrings["DBS"].ConnectionString;
                SqlConnection conn = new SqlConnection(connStr);
                conn.Open();
                string sql = "SELECT * FROM CourseInfo";
                SqlDataAdapter adapter = new SqlDataAdapter(sql, conn);
                SqlCommandBuilder builder = new SqlCommandBuilder(adapter);
                DataSet ds = new DataSet();
                adapter.Fill(ds, "CourseInfo");
                DataRow dr = ds.Tables["CourseInfo"].NewRow();



                dr["CourseName"] = TextBoxCourseName.Text;
                dr["Class"] = DropDownListClass.Text;
                dr["CourseId"] = TextBoxCourseId.Text;
                dr["AssignedTeacher"] = DropDownListTeacher.SelectedItem.ToString();
                dr["TeacherId"] = DropDownListTeacher.SelectedValue.ToString();
                dr["Duration"] = DropDownListDuration.SelectedValue.ToString();

                ds.Tables["CourseInfo"].Rows.Add(dr);
                adapter.Update(ds.Tables["CourseInfo"]);

                Response.Redirect("~/ViewCourse.aspx");
            }
            catch(Exception ex)
            {

                string message = "Allready Has This Class!! You can not assing Same Class twice";
                System.Text.StringBuilder sb = new System.Text.StringBuilder();
                sb.Append("<script type = 'text/javascript'>");
                sb.Append("window.onload=function(){");
                sb.Append("alert('");
                sb.Append(message);
                sb.Append("')};");
                sb.Append("</script>");
                ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", sb.ToString());

            }
        }

        private void CourseIdGenerate()
        {
            string courseid = TextBoxCourseName.Text + '-' + DropDownListClass.SelectedItem.Text;

            TextBoxCourseId.Text = courseid;
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            CourseIdGenerate();
        }
    }
}
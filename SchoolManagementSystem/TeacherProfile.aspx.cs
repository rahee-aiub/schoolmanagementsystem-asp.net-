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
    public partial class TeacherProfile : System.Web.UI.Page
    {
        private object ds;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["USERNAME"] != null)
                LoadPage();
            else
                Response.Redirect("~/Login.aspx");
        }

        private void LoadPage()
        {
            Label2.Text = Session["NAME"].ToString();
            string connStr = ConfigurationManager.ConnectionStrings["DBS"].ConnectionString;
            SqlConnection conn = new SqlConnection(connStr);
            conn.Open();

            SqlDataReader myReader = null;
            SqlCommand command = new SqlCommand("select * from Teacher where Username = '" + Session["USERNAME"].ToString() + "' ", conn);

            myReader = command.ExecuteReader();

            while (myReader.Read())
            {
                TextBoxName.Text = (myReader["Name"].ToString());
                TextBoxAddress.Text = (myReader["Address"].ToString());
                TextBoxPhone.Text = (myReader["Phone"].ToString());
                TextBoxEmail.Text = (myReader["Email"].ToString());
                TextBoxJoiningDate.Text = (myReader["JoiningDate"].ToString());
                TextBoxUsername.Text = (myReader["Username"].ToString());
                //TextBoxPassword.Text = (myReader["Password"].ToString());
                TextBoxId.Text = (myReader["Id"].ToString());

            }
            Label1.Text = Session["USERNAME"].ToString();

           
            //---------------DropDownList Value should come from database-------------
           /* string sql = "SELECT * FROM StudentInfo";
            SqlDataAdapter adapter = new SqlDataAdapter(sql, conn);
            SqlCommandBuilder builder = new SqlCommandBuilder(adapter);
            DataSet ds = new DataSet();
            adapter.Fill(ds, "StudentInfo");
            DropDownList1.DataSource = ds.Tables["StudentInfo"];
            DropDownList1.DataTextField = "Name";
            DropDownList1.DataValueField = "Id";
            DropDownList1.DataBind();*/
        }


       

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Session["USERNAME"] = null;
            Response.Redirect("~/Login.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/ConfirmPassword.aspx");
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
           
        }

        private void LoadData()
        {
            string connStr = ConfigurationManager.ConnectionStrings["DBS"].ConnectionString;
            SqlConnection conn = new SqlConnection(connStr);
            conn.Open();


          

            SqlDataAdapter adapter = new SqlDataAdapter("select * from StudentInfo where Class = '" + DropDownList1.SelectedValue + "' ", conn);
            SqlCommandBuilder builder = new SqlCommandBuilder(adapter);
            DataSet ds = new DataSet();

            adapter.Fill(ds, "StudentInfo");
            if (ds.Tables[0].Rows.Count == 0)
            {
                LabelNoStudent.Text = "No Students Found";
                GridView1.Visible = false;
            }
            else
            {
                LabelNoStudent.Text = "";
                GridView1.DataSource = ds;
                GridView1.DataBind();
                GridView1.Visible = true;
            }
            
        }

        protected void Button2_Click1(object sender, EventArgs e)
        {
            LoadData();
        }

        protected void ButtonMyCourses_Click(object sender, EventArgs e)
        {
            string connStr = ConfigurationManager.ConnectionStrings["DBS"].ConnectionString;
            SqlConnection conn = new SqlConnection(connStr);

            string sql = "SELECT * FROM CourseInfo where TeacherId = '"+Session["TEACHERID"].ToString()+"'";
            SqlDataAdapter adapter = new SqlDataAdapter(sql, conn);
            SqlCommandBuilder builder = new SqlCommandBuilder(adapter);
            DataSet ds = new DataSet();
            adapter.Fill(ds, "CourseInfo");
            if (ds.Tables[0].Rows.Count == 0)
            {
                LabelMyCourse.Text = "You Have No Assigned Courses";
            }
            GridViewMyCourses.DataSource = ds;
            GridViewMyCourses.DataBind();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            LoadData();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            TextBoxPhone.ReadOnly = false;
            TextBoxAddress.ReadOnly = false;
            TextBoxEmail.ReadOnly = false;

            TextBoxPhone.Text = "";
            TextBoxAddress.Text = "";
            TextBoxEmail.Text = "";
           
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
           
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["DBS"].ConnectionString);
            conn.Open();
            //string CheckUser = "Select * from Teacher";
            //SqlCommand comm = new SqlCommand(CheckUser,conn);
            
           // SqlDataAdapter adapter = new SqlDataAdapter(CheckUser, conn);
            //DataTable dt = new DataTable();

            //DataRow dr = dt.Rows[0];
            //adapter.Fill(dt);
            //string val = dt.Rows[0]["Id"].ToString();

            //SqlCommand ss = new SqlCommand("UPDATE Teacher SET Phone = " + TextBoxPhone.Text + ", Address = " + TextBoxAddress.Text + ", Email = " + TextBoxEmail.Text + " Where Id = " + Session["TEACHERID"].ToString() + "", conn);

            string query = "UPDATE Teacher SET Address = @Address,Email=@Email,Phone = @Phone where Id = @ID ";
            SqlCommand cmd = new SqlCommand(query, conn);
            cmd.Parameters.AddWithValue("@ID", Session["TEACHERID"].ToString());
            cmd.Parameters.AddWithValue("@Phone", TextBoxPhone.Text);
            cmd.Parameters.AddWithValue("@Email", TextBoxEmail.Text);
            cmd.Parameters.AddWithValue("@Address", TextBoxAddress.Text);
           
           // cmd.Connection.Open();
            try
            {
                cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                throw new Exception("Error " + ex.Message);
            }
           // ss.ExecuteNonQuery();

            conn.Close();

            TextBoxPhone.ReadOnly = true;
            TextBoxAddress.ReadOnly = true;
            TextBoxEmail.ReadOnly = true;

            // Response.Redirect("~/TeacherProfile.aspx");
           
           

        }
    }
}
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
    public partial class StudentAdmission : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["USERNAME"] == null)
            {
                Response.Redirect("~/Login.aspx");
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {



            string connStr = ConfigurationManager.ConnectionStrings["DBS"].ConnectionString;
            SqlConnection conn = new SqlConnection(connStr);
            conn.Open();
            string sql = "SELECT * FROM StudentInfo";
            SqlDataAdapter adapter = new SqlDataAdapter(sql, conn);
            SqlCommandBuilder builder = new SqlCommandBuilder(adapter);
            DataSet ds = new DataSet();
            adapter.Fill(ds, "StudentInfo");
            DataRow dr = ds.Tables["StudentInfo"].NewRow();

          

            dr["Name"] = TextBoxName.Text;
            dr["Id"] = TextBoxStudentId.Text;
            dr["Address"] = TextBoxAddress.Text;
            dr["FatherName"] = TextBoxFatherName.Text;
            dr["MotherName"] = TextBoxMotherName.Text;
            dr["Phone"] = TextBoxGurdianPhone.Text;
            dr["Class"] = DropDownList1.SelectedValue.ToString();
            dr["DOB"] = TextBoxDOB.Text;
            dr["AdmissionDate"] = TextBoxAdmissionDate.Text;

            ds.Tables["StudentInfo"].Rows.Add(dr);
            adapter.Update(ds.Tables["StudentInfo"]);
            Response.Redirect("~/AllStudentInfo.aspx");



        }

     

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/AdminHome.aspx");
        }

        protected void ImageButtonCalender_Click(object sender, ImageClickEventArgs e)
        {
            Calendar1.Visible = !Calendar1.Visible;
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            TextBoxDOB.Text = Calendar1.SelectedDate.ToString("dd/MM/yyyy");
            Calendar1.Visible = false;
        }

        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {
            Calendar2.Visible = !Calendar2.Visible;
        }

        protected void Calendar2_SelectionChanged(object sender, EventArgs e)
        {
            TextBoxAdmissionDate.Text = Calendar2.SelectedDate.ToString("dd/MM/yyyy");
            Calendar2.Visible = false;
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Session["USERNAME"] = null;
            Response.Redirect("~/Login.aspx");
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Random generator = new Random();
            int r = generator.Next(10000, 100000);
            TextBoxStudentId.Text = "16-"+Convert.ToString(r)+"-"+DropDownList1.SelectedValue;
        }
    }
}
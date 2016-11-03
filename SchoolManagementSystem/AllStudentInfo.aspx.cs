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
    public partial class AllStudentInfo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            // LoadDataFromDatabase();
           
           if (!IsPostBack)
            {
                if (Cache["DATASET"] == null)
                {
                    this.LoadDataFromDatabase();
                }
                else
                {
                    this.LoadDataFromCache();
                }
            }
            
          

        }
        private void LoadDataFromDatabase()
        {
            string connStr = ConfigurationManager.ConnectionStrings["DBS"].ConnectionString;
            SqlConnection conn = new SqlConnection(connStr);

            string sql = "SELECT * FROM StudentInfo";
            SqlDataAdapter adapter = new SqlDataAdapter(sql, conn);
            SqlCommandBuilder builder = new SqlCommandBuilder(adapter);
            DataSet ds = new DataSet();
            adapter.Fill(ds, "StudentInfo");
            ds.Tables["StudentInfo"].PrimaryKey = new DataColumn[] { ds.Tables["StudentInfo"].Columns["Id"] };
            Cache["DATASET"] = ds;
            Cache["ADAPTER"] = adapter;


            GridView1.DataSource = ds.Tables["StudentInfo"];
            GridView1.DataBind();
           
        }
        private void LoadDataFromCache()
        {
            DataSet ds = (DataSet)Cache["DATASET"];
            GridView1.DataSource = ds.Tables["StudentInfo"];
            GridView1.DataBind();
            
        }
        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Login.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/AdminHome.aspx");
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
           
            DataSet ds = (DataSet)Cache["DATASET"];
            DataRow dr = ds.Tables["StudentInfo"].Rows.Find(e.Keys["Id"]);
            dr.Delete();

            Cache["DATASET"] = ds;
            this.LoadDataFromCache();


        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            this.LoadDataFromCache();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            DataSet ds = (DataSet)Cache["DATASET"];
            DataRow dr = ds.Tables["StudentInfo"].Rows.Find(e.Keys["Id"]);


            dr["Name"] = e.NewValues["Name"];
            dr["Address"] = e.NewValues["Address"];
            dr["FatherName"] = e.NewValues["FatherName"];
            dr["MotherName"] = e.NewValues["MotherName"];
            dr["Phone"] = e.NewValues["Phone"];
            dr["Class"] = e.NewValues["Class"];
            dr["DOB"] = e.NewValues["DOB"];
            dr["AdmissionDate"] = e.NewValues["AdmissionDate"];

            Cache["DATASET"] = ds;
            GridView1.EditIndex = -1;
            this.LoadDataFromCache();

        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            this.LoadDataFromCache();
        }

        protected void ButtonUndo_Click(object sender, EventArgs e)
        {
            DataSet ds = (DataSet)Cache["DATASET"];
            if (ds.HasChanges())
            {
                ds.RejectChanges();
                LabelMessage.Text = "Undo successfull";
                this.LoadDataFromCache();
            }
            else
            {
                LabelMessage.Text = "Nothing to be undone";
            }
        }

        protected void ButtonConfirm_Click(object sender, EventArgs e)
        {
            DataSet ds = (DataSet)Cache["DATASET"];
            SqlDataAdapter adapter = (SqlDataAdapter)Cache["ADAPTER"];
            adapter.Update(ds.Tables["StudentInfo"]);
            LabelMessage.Text = "Changes saved permanently";
        }

        protected void LinkButton5_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/AllTeachers.aspx");
        }
    }
}
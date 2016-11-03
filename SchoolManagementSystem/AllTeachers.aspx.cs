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
    public partial class AllTeachers : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["USERNAME"] == null)
            {
                Response.Redirect("~/Login.aspx");
            }

            if (!IsPostBack)
            {
                if (Cache["TEACHERDATASET"] == null)
                {
                    this.LoadDataFromDatabase();
                }
                else
                {
                    this.LoadDataFromCache();
                }
            }

        }
        private void LoadDataFromCache()
        {
            DataSet ds = (DataSet)Cache["TEACHERDATASET"];
            GridViewTeacher.DataSource = ds.Tables["Teacher"];
            GridViewTeacher.DataBind();
            GridViewTeacher.Visible = true;

        }
        private void LoadDataFromDatabase()
        {
            string connStr = ConfigurationManager.ConnectionStrings["DBS"].ConnectionString;
            SqlConnection conn = new SqlConnection(connStr);

            string sql = "SELECT * FROM Teacher";
            SqlDataAdapter adapter = new SqlDataAdapter(sql, conn);
            SqlCommandBuilder builder = new SqlCommandBuilder(adapter);
            DataSet ds = new DataSet();
            adapter.Fill(ds, "Teacher");
            ds.Tables["Teacher"].PrimaryKey = new DataColumn[] { ds.Tables["Teacher"].Columns["Id"] };
            Cache["TEACHERDATASET"] = ds;
            Cache["ADAPTER2"] = adapter;


            GridViewTeacher.DataSource = ds.Tables["Teacher"];
            GridViewTeacher.DataBind();
            GridViewTeacher.Visible = true;
           
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GridViewTeacher_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            DataSet ds = (DataSet)Cache["TEACHERDATASET"];
            DataRow dr = ds.Tables["Teacher"].Rows.Find(e.Keys["Id"]);
            dr.Delete();

            Cache["TEACHERDATASET"] = ds;
            this.LoadDataFromCache();
        }

        protected void GridViewTeacher_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridViewTeacher.EditIndex = e.NewEditIndex;
            this.LoadDataFromCache();
        }

        protected void GridViewTeacher_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            DataSet ds = (DataSet)Cache["TEACHERDATASET"];
            DataRow dr = ds.Tables["Teacher"].Rows.Find(e.Keys["Id"]);


            dr["Name"] = e.NewValues["Name"];
            dr["Address"] = e.NewValues["Address"];
            dr["Email"] = e.NewValues["Email"];
            dr["Password"] = e.NewValues["Password"];
            dr["Phone"] = e.NewValues["Phone"];
            dr["Username"] = e.NewValues["Username"];
           
            

            Cache["TEACHERDATASET"] = ds;
            GridViewTeacher.EditIndex = -1;
            this.LoadDataFromCache();
        }

        protected void GridViewTeacher_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridViewTeacher.EditIndex = -1;
            this.LoadDataFromCache();
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Session["USERNAME"] = null;
            Response.Redirect("~/Login.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/AdminHome.aspx");
        }

        protected void ButtonConfirm_Click(object sender, EventArgs e)
        {
            DataSet ds = (DataSet)Cache["TEACHERDATASET"];
            SqlDataAdapter adapter = (SqlDataAdapter)Cache["ADAPTER2"];
            adapter.Update(ds.Tables["Teacher"]);
            LabelMessage.Text = "Changes saved permanently";
        }

        protected void ButtonUndo_Click(object sender, EventArgs e)
        {
            DataSet ds = (DataSet)Cache["TEACHERDATASET"];
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

       
    }
}
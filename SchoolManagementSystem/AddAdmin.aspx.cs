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
    public partial class AddAdmin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["USERNAME"] == null)
            {
                Response.Redirect("~/Login.aspx");
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {


                string connStr = ConfigurationManager.ConnectionStrings["DBS"].ConnectionString;
                SqlConnection conn = new SqlConnection(connStr);
                conn.Open();
                SqlCommand com = new SqlCommand("INSERT INTO Admin VALUES('" + TextBoxUsername.Text + "','" + TextBoxPassword.Text + "') ", conn);
                com.ExecuteNonQuery();
                conn.Close();

                AlertMessage();

                //Response.Redirect("~/AdminHome.aspx");
            }
            catch (Exception ex)
            {
                string message = "Username Already Used";
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

        private void AlertMessage()
        {
            string message = "Congratulation..!!! A new admin has added";
            System.Text.StringBuilder sb = new System.Text.StringBuilder();
            sb.Append("<script type = 'text/javascript'>");
            sb.Append("window.onload=function(){");
            sb.Append("alert('");
            sb.Append(message);
            sb.Append("')};");
            sb.Append("</script>");
            ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", sb.ToString());
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/AdminHome.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string connStr = ConfigurationManager.ConnectionStrings["DBS"].ConnectionString;
            SqlConnection conn = new SqlConnection(connStr);
            conn.Open();
            SqlCommand com = new SqlCommand("DELETE From Admin where Username='"+Session["USERNAME"].ToString()+"'", conn);
            com.ExecuteNonQuery();
            conn.Close();
            Response.Redirect("~/Login.aspx");
        }

        protected void ButtonViewAllAdmins_Click(object sender, EventArgs e)
        {
            string connStr = ConfigurationManager.ConnectionStrings["DBS"].ConnectionString;
            SqlConnection conn = new SqlConnection(connStr);

            string sql = "SELECT * FROM Admin";
            SqlDataAdapter adapter = new SqlDataAdapter(sql, conn);
            SqlCommandBuilder builder = new SqlCommandBuilder(adapter);
            DataSet ds = new DataSet();
            adapter.Fill(ds, "Admin");
            GridViewAdmin.Visible = true;
            GridViewAdmin.DataSource = ds.Tables["Admin"];
            GridViewAdmin.DataBind();
        }

        protected void Button2_Click1(object sender, EventArgs e)
        {
            GridViewAdmin.Visible = false;
        }
    }
}